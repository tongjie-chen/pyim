;;; pyim-dhashcache --- uses hash table to cache and search dictionaries   -*- lexical-binding: t; -*-

;; * Header
;; Copyright (C) 2015-2020 Free Software Foundation, Inc.

;; Author: Feng Shu <tumashu@163.com>
;; Maintainer: Feng Shu <tumashu@163.com>
;; URL: https://github.com/tumashu/pyim
;; Keywords: convenience, Chinese, pinyin, input-method

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; * 说明文档                                                              :doc:
;; 这个文件为词典建立散列表(Hash Table)结构缓存,提供基于散列表的辞典搜索算法.
;; 搜索速度极快,消耗内存较多.
;;
;; 可以 (setq pyim-dcache-backend 'pyim-dhashcache) 然后重启输入法启用此引擎

;;; Code:
;; * 代码                                                                 :code:
(require 'cl-lib)
(require 'async nil t)
(require 'pyim-common)
(require 'pyim-pymap)
(require 'pyim-dcache)
(require 'pyim-scheme)

(defvar pyim-dhashcache-code2word nil)
(defvar pyim-dhashcache-code2word-md5 nil)
(defvar pyim-dhashcache-word2code nil)
(defvar pyim-dhashcache-iword2count nil)
(defvar pyim-dhashcache-shortcode2word nil)
(defvar pyim-dhashcache-icode2word nil)
(defvar pyim-dhashcache-ishortcode2word nil)
(defvar pyim-dhashcache-update-shortcode2word-p nil)
(defvar pyim-dhashcache-update-ishortcode2word-p nil)
(defvar pyim-dhashcache-update-icode2word-p nil)
(defvar pyim-dhashcache-update-code2word-running-p nil)

(defun pyim-dhashcache-sort-words (words-list &optional iword2count)
  "对 WORDS-LIST 排序，词频大的排在前面.

如果 IWORD2COUNT 为 nil, 排序将使用 `pyim-dhashcache-iword2count'
中记录的词频信息"
  (let ((iword2count (or iword2count pyim-dhashcache-iword2count)))
    (sort words-list
          (lambda (a b)
            (> (or (gethash a iword2count) 0)
               (or (gethash b iword2count) 0))))))

(defun pyim-dhashcache-get-shortcodes (code)
  "获取 CODE 所有的 shortcodes.

比如：wubi/aaaa -> (wubi/aaa wubi/aa)

注意事项：这个函数目前只用于五笔等型码输入法，不用于拼音输入法，
因为拼音输入法词库太大，这样处理之后，会生成一个特别大的哈希表，
占用太多内存资源，拼音输入法使用 ishortcode 机制。"
  (when (and (pyim-string-match-p "/" code)
             (not (pyim-string-match-p "-" code)))
    (let* ((x (split-string code "/"))
           (prefix (concat (nth 0 x) "/"))
           (code1 (nth 1 x))
           (n (length code1))
           results)
      (dotimes (i n)
        (when (> i 1)
          (push (concat prefix (substring code1 0 i)) results)))
      results)))

(defun pyim-dhashcache-get-ishortcodes (code)
  "获取CODE 所有的简写 ishortcodes.

比如: ni-hao -> (n-h)

注意事项：这个函数用于全拼输入法。"
  (when (and (> (length code) 0)
             (not (pyim-string-match-p "/" code))
             (not (pyim-string-match-p "[^a-z-]" code)))
    (list (mapconcat
           (lambda (x)
             (substring x 0 1))
           (split-string code "-") "-"))))

(defun pyim-dhashcache-async-inject-variables ()
  "pyim's async-inject-variables."
  (list (async-inject-variables "^load-path$")
        (async-inject-variables "^exec-path$")
        (async-inject-variables "^pyim-.+?directory$")))

(defun pyim-dhashcache-update-ishortcode2word (&optional force)
  "读取 ‘pyim-dhashcache-icode2word’ 中的词库，创建 *简拼* 缓存，然后加载这个缓存.

如果 FORCE 为真，强制加载缓存。"
  (interactive)
  (when (or force (not pyim-dhashcache-update-ishortcode2word-p))
    ;; NOTE: 这个变量按理说应该在回调函数里面设置，但 async 在某些情况下会卡死，
    ;; 这个变量无法设置为 t, 导致后续产生大量的 emacs 进程，极其影响性能。
    (setq pyim-dhashcache-update-ishortcode2word-p t)
    (async-start
     `(lambda ()
        ,@(pyim-dhashcache-async-inject-variables)
        (require 'pyim-dhashcache)
        (pyim-dcache-init-variable pyim-dhashcache-icode2word)
        (pyim-dcache-init-variable pyim-dhashcache-iword2count)
        (pyim-dcache-save-variable
         'pyim-dhashcache-ishortcode2word
         (pyim-dhashcache-update-ishortcode2word-1
          pyim-dhashcache-icode2word
          pyim-dhashcache-iword2count)))
     (lambda (_)
       (pyim-dcache-reload-variable pyim-dhashcache-ishortcode2word)))))

(defun pyim-dhashcache-update-ishortcode2word-1 (icode2word iword2count)
  "`pyim-dhashcache-update-ishortcode2word' 内部函数."
  (let ((ishortcode2word (make-hash-table :test #'equal)))
    (maphash
     (lambda (key value)
       (dolist (newkey (pyim-dhashcache-get-ishortcodes key))
         (puthash newkey
                  (delete-dups
                   `(,@(gethash newkey ishortcode2word)
                     ,@value))
                  ishortcode2word)))
     icode2word)
    (maphash
     (lambda (key value)
       (puthash key (pyim-dhashcache-sort-words value iword2count)
                ishortcode2word))
     ishortcode2word)
    ishortcode2word))

(defun pyim-dhashcache-update-shortcode2word (&optional force)
  "使用 `pyim-dhashcache-code2word' 中的词条，创建简写 code 词库缓存并加载.

如果 FORCE 为真，强制运行。"
  (interactive)
  (when (or force (not pyim-dhashcache-update-shortcode2word-p))
    ;; NOTE: 这个变量按理说应该在回调函数里面设置，但 async 在某些情况下会卡死，
    ;; 这个变量无法设置为 t, 导致后续产生大量的 emacs 进程，极其影响性能。
    (setq pyim-dhashcache-update-shortcode2word-p t)
    (async-start
     `(lambda ()
        ,@(pyim-dhashcache-async-inject-variables)
        (require 'pyim-dhashcache)
        (pyim-dcache-init-variable pyim-dhashcache-code2word)
        (pyim-dcache-init-variable pyim-dhashcache-iword2count)
        (pyim-dcache-save-variable
         'pyim-dhashcache-shortcode2word
         (pyim-dhashcache-update-shortcode2word-1
          pyim-dhashcache-code2word
          pyim-dhashcache-iword2count)))
     (lambda (_)
       (pyim-dcache-reload-variable pyim-dhashcache-shortcode2word)))))

(defun pyim-dhashcache-update-shortcode2word-1 (code2word iword2count)
  "`pyim-dhashcache-update-shortcode2word' 的内部函数"
  (let ((shortcode2word (make-hash-table :test #'equal)))
    (maphash
     (lambda (key value)
       (dolist (x (pyim-dhashcache-get-shortcodes key))
         (puthash x
                  (mapcar
                   (lambda (word)
                     ;; 这个地方的代码用于实现五笔 code 自动提示功能，
                     ;; 比如输入 'aa' 后得到选词框：
                     ;; ----------------------
                     ;; | 1. 莁aa 2.匶wv ... |
                     ;; ----------------------
                     (if (get-text-property 0 :comment word)
                         word
                       (propertize word :comment (substring key (length x)))))
                   (delete-dups `(,@(gethash x shortcode2word) ,@value)))
                  shortcode2word)))
     code2word)
    (maphash
     (lambda (key value)
       (puthash key (pyim-dhashcache-sort-words value iword2count)
                shortcode2word))
     shortcode2word)
    shortcode2word))

(defun pyim-dhashcache-get-path (variable)
  "获取保存 VARIABLE 取值的文件的路径."
  (when (symbolp variable)
    (concat (file-name-as-directory pyim-dcache-directory)
            (symbol-name variable))))

(defun pyim-dhashcache-generate-dcache-file (dict-files dcache-file)
  "读取词库文件列表：DICT-FILES, 生成一个词库缓冲文件 DCACHE-FILE.

pyim 使用的词库文件是简单的文本文件，编码 *强制* 为 'utf-8-unix,
其结构类似：

  ni-bu-hao 你不好
  ni-hao  你好 妮好 你豪

第一个空白字符之前的内容为 code，空白字符之后为中文词条列表。词库
*不处理* 中文标点符号。"
  (let ((hashtable (make-hash-table :size 1000000 :test #'equal)))
    (dolist (file dict-files)
      (with-temp-buffer
        (let ((coding-system-for-read 'utf-8-unix))
          (insert-file-contents file))
        (goto-char (point-min))
        (forward-line 1)
        (while (not (eobp))
          (let* ((content (pyim-dline-parse))
                 (code (car content))
                 (words (cdr content)))
            (when (and code words)
              (puthash code
                       (delete-dups `(,@(gethash code hashtable) ,@words))
                       hashtable)))
          (forward-line 1))))
    (pyim-dcache-save-value-to-file hashtable dcache-file)
    hashtable))

(defun pyim-dhashcache-generate-word2code-dcache-file (dcache file)
  "从 DCACHE 生成一个 word -> code 的反向查询表.
DCACHE 是一个 code -> words 的 hashtable.
并将生成的表保存到 FILE 中."
  (when (hash-table-p dcache)
    (let ((hashtable (make-hash-table :size 1000000 :test #'equal)))
      (maphash
       (lambda (code words)
         (unless (pyim-string-match-p "-" code)
           (dolist (word words)
             (let ((value (gethash word hashtable)))
               (puthash word
                        (if value
                            `(,code ,@value)
                          (list code))
                        hashtable)))))
       dcache)
      (pyim-dcache-save-value-to-file hashtable file))))

(defun pyim-dhashcache-update-code2word (dict-files dicts-md5 &optional force)
  "读取并加载词库.

读取 `pyim-dicts' 和 `pyim-extra-dicts' 里面的词库文件，生成对应的
词库缓冲文件，然后加载词库缓存。

如果 FORCE 为真，强制加载。"
  (interactive)
  (let* ((code2word-file (pyim-dhashcache-get-path 'pyim-dhashcache-code2word))
         (word2code-file (pyim-dhashcache-get-path 'pyim-dhashcache-word2code))
         (code2word-md5-file (pyim-dhashcache-get-path 'pyim-dhashcache-code2word-md5)))
    (when (or force (and (not (equal dicts-md5 (pyim-dcache-get-value-from-file code2word-md5-file)))
                         (not pyim-dhashcache-update-code2word-running-p)))
      (setq pyim-dhashcache-update-code2word-running-p t)
      ;; use hashtable
      (async-start
       `(lambda ()
          ,@(pyim-dhashcache-async-inject-variables)
          (require 'pyim-dhashcache)
          (let ((dcache (pyim-dhashcache-generate-dcache-file ',dict-files ,code2word-file)))
            (pyim-dhashcache-generate-word2code-dcache-file dcache ,word2code-file))
          (pyim-dcache-save-value-to-file ',dicts-md5 ,code2word-md5-file))
       (lambda (_)
         (pyim-dcache-reload-variable pyim-dhashcache-code2word)
         (pyim-dcache-reload-variable pyim-dhashcache-word2code)
         (pyim-dhashcache-update-shortcode2word force)
         (setq pyim-dhashcache-update-code2word-running-p nil))))))

(defun pyim-dhashcache-export (dcache file &optional confirm)
  "将一个 pyim DCACHE 导出为文件 FILE.

如果 CONFIRM 为 non-nil，文件存在时将会提示用户是否覆盖，
默认为覆盖模式"
  (with-temp-buffer
    (insert ";;; -*- coding: utf-8-unix -*-\n")
    (maphash
     (lambda (key value)
       (let ((value (cl-remove-if
                     (lambda (x)
                       ;; 如果某个词条的 text 属性 :noexport 设置为 t, 在导出的
                       ;; 时候自动忽略这个词条。
                       (and (stringp x)
                            (get-text-property 0 :noexport x)))
                     (if (listp value)
                         value
                       (list value)))))
         (when value
           (insert (format "%s %s\n" key (mapconcat #'identity value " "))))))
     dcache)
    (pyim-dcache-write-file file confirm)))

(defun pyim-dhashcache-get (code &optional from)
  "从 FROM 对应的 dcaches 中搜索 CODE, 得到对应的词条.

当词库文件加载完成后，pyim 就可以用这个函数从词库缓存中搜索某个
code 对应的中文词条了。

如果 FROM 为 nil, 则默认搜索 `pyim-dhashcache-icode2word' 和
`pyim-dhashcache-code2word' 两个 dcache."
  (let* ((caches (mapcar (lambda (x)
                           (intern (concat "pyim-dhashcache-" (symbol-name x))))
                         (or (and from
                                  (if (listp from)
                                      from
                                    (list from)))
                             '(icode2word code2word))))
         result)
    (dolist (cache caches)
      (let* ((cache (ignore-errors (symbol-value cache)))
             (value (and cache (gethash code cache))))
        (when value
          (setq result (append result value)))))
    result))

(defun pyim-dhashcache-update-icode2word (&optional force)
  "对 personal 缓存中的词条进行排序，加载排序后的结果.

在这个过程中使用了 `pyim-dhashcache-iword2count' 中记录的词频信息。
如果 FORCE 为真，强制排序。"
  (interactive)
  (when (or force (not pyim-dhashcache-update-icode2word-p))
    ;; NOTE: 这个变量按理说应该在回调函数里面设置，但 async 在某些情况下会卡死，
    ;; 这个变量无法设置为 t, 导致后续产生大量的 emacs 进程，极其影响性能。
    (setq pyim-dhashcache-update-icode2word-p t)
    (async-start
     `(lambda ()
        ,@(pyim-dhashcache-async-inject-variables)
        (require 'pyim-dhashcache)
        (pyim-dcache-init-variable pyim-dhashcache-icode2word)
        (pyim-dcache-init-variable pyim-dhashcache-iword2count)
        (maphash
         (lambda (key value)
           (puthash key (pyim-dhashcache-sort-words value pyim-dhashcache-iword2count)
                    pyim-dhashcache-icode2word))
         pyim-dhashcache-icode2word)
        (pyim-dcache-save-variable
         'pyim-dhashcache-icode2word
         pyim-dhashcache-icode2word)
        nil)
     (lambda (_)
       (pyim-dcache-reload-variable pyim-dhashcache-icode2word)
       (pyim-dhashcache-update-ishortcode2word force)))))

(defun pyim-dhashcache-upgrade-icode2word ()
  "升级 icode2word 缓存。"
  (let ((delete-old-key-p (yes-or-no-p "Delete old key after upgrade? "))
        (ruler-list (delete-dups
                     (remove nil
                             (mapcar
                              (lambda (scheme)
                                (let ((code-prefix (plist-get (cdr scheme) :code-prefix))
                                      (code-prefix-history (plist-get (cdr scheme) :code-prefix-history)))
                                  (when code-prefix-history
                                    (cons code-prefix-history code-prefix))))
                              pyim-schemes)))))
    (dolist (ruler ruler-list)
      (let ((old-prefix-list (car ruler))
            (new-prefix (cdr ruler)))
        (dolist (old-prefix old-prefix-list)
          (maphash
           (lambda (key _value)
             (when (string-prefix-p old-prefix key)
               (let* ((key-words (gethash key pyim-dhashcache-icode2word))
                      (new-key (concat new-prefix (string-remove-prefix old-prefix key)))
                      (new-key-words (gethash new-key pyim-dhashcache-icode2word))
                      (merged-value (delete-dups `(,@new-key-words ,@key-words))))
                 (puthash new-key merged-value pyim-dhashcache-icode2word)
                 (message "PYIM icode2word upgrade: %S %S -> %S %S" key key-words new-key merged-value)
                 (when delete-old-key-p
                   (remhash key pyim-dhashcache-icode2word)
                   (message "PYIM icode2word upgrade: %S has been deleted." key)))))
           pyim-dhashcache-icode2word))))))

(defun pyim-dhashcache-update-personal-words (&optional force)
  (pyim-dhashcache-update-icode2word force))

(defun pyim-dhashcache-init-variables ()
  "初始化 dcache 缓存相关变量."
  (when (and (not pyim-dhashcache-icode2word)
             pyim-dcache-directory
             (file-directory-p pyim-dcache-directory)
             (directory-files pyim-dcache-directory nil "-backup-"))
    (message "PYIM: 在 %S 目录中发现备份文件的存在，可能是词库缓存文件损坏导致，请抓紧检查处理！！！"
             pyim-dcache-directory))
  (pyim-dcache-init-variable pyim-dhashcache-iword2count)
  (pyim-dcache-init-variable pyim-dhashcache-code2word)
  (pyim-dcache-init-variable pyim-dhashcache-word2code)
  (pyim-dcache-init-variable pyim-dhashcache-shortcode2word)
  (pyim-dcache-init-variable pyim-dhashcache-icode2word)
  (pyim-dcache-init-variable pyim-dhashcache-ishortcode2word))

(defun pyim-dhashcache-save-personal-dcache-to-file ()
  ;; 用户选择过的词
  (pyim-dcache-save-variable
   'pyim-dhashcache-icode2word
   pyim-dhashcache-icode2word 0.8)
  ;; 词频
  (pyim-dcache-save-variable
   'pyim-dhashcache-iword2count
   pyim-dhashcache-iword2count 0.8))

(defmacro pyim-dhashcache-put (cache code &rest body)
  "将 BODY 的返回值保存到 CACHE 对应的 CODE 中。

注意事项：这个宏是一个指代宏，其中 orig-value 在这个宏中有特殊含
义，代表原来 code 对应的取值。"
  (declare (indent 0))
  (let ((key (make-symbol "key"))
        (table (make-symbol "table"))
        (new-value (make-symbol "new-value")))
    `(let* ((,key ,code)
            (,table ,cache)
            (orig-value (gethash ,key ,table))
            ,new-value)
       (setq ,new-value (progn ,@body))
       (puthash ,key ,new-value ,table))))

(defun pyim-dhashcache-update-iword2count (word &optional wordcount-handler)
  "保存词频到缓存."
  (pyim-dhashcache-put
    pyim-dhashcache-iword2count word
    (cond
     ((functionp wordcount-handler)
      (funcall wordcount-handler (or orig-value 0)))
     ((numberp wordcount-handler)
      wordcount-handler)
     (t (or orig-value 0)))))

(defun pyim-dhashcache-delete-word (word)
  "将中文词条 WORD 从个人词库中删除"
  (maphash
   (lambda (key value)
     (when (member word value)
       (let ((new-value (remove word value)))
         (if new-value
             (puthash key new-value pyim-dhashcache-icode2word)
           (remhash key pyim-dhashcache-icode2word)))))
   pyim-dhashcache-icode2word)
  (remhash word pyim-dhashcache-iword2count))

(defun pyim-dhashcache-insert-word-into-icode2word (word code prepend)
  "将词条 WORD 插入到 icode2word 词库缓存 CODE 键对应的位置.

默认 WORD 放到已有词条的最后，如果 PREPEND 为 non-nil, WORD 将放
到已有词条的最前面。"
  (pyim-dhashcache-put
    pyim-dhashcache-icode2word code
    (if prepend
        `(,word ,@(remove word orig-value))
      `(,@(remove word orig-value) ,word))))

(defun pyim-dhashcache-insert-word-into-ishortcode2word (word code prepend)
  "将词条 WORD 插入到 ishortcode2word 词库缓存 CODE 首字母字符串对应的位置.

默认 WORD 放到已有词条的最后，如果 PREPEND 为 non-nil, WORD 将放
到已有词条的最前面。"
  (dolist (newcode (pyim-dhashcache-get-ishortcodes code))
    (pyim-dhashcache-put
      pyim-dhashcache-ishortcode2word
      newcode
      (if prepend
          `(,word ,@(remove word orig-value))
        `(,@(remove word orig-value) ,word)))))

(defun pyim-dhashcache-search-word-code (string)
  (gethash string pyim-dhashcache-word2code))

(defun pyim-dhashcache-export-personal-words (file &optional confirm)
  "导出个人词库到 FILE."
  (pyim-dhashcache-export pyim-dhashcache-icode2word file confirm))

(defun pyim-dhashcache-export-words-and-counts (file &optional confirm)
  (with-temp-buffer
    (insert ";;; -*- coding: utf-8-unix -*-\n")
    (maphash
     (lambda (key value)
       (insert (format "%s %s\n" key value)))
     pyim-dhashcache-iword2count)
    ;; 在默认情况下，用户选择过的词生成的缓存中存在的词条，
    ;; `pyim-dhashcache-iword2count' 中也一定存在，但如果用户
    ;; 使用了特殊的方式给用户选择过的词生成的缓存中添加了
    ;; 词条，那么就需要将这些词条也导出，且设置词频为 0
    (maphash
     (lambda (_ words)
       (dolist (word words)
         (unless (gethash word pyim-dhashcache-iword2count)
           (insert (format "%s %s\n" word 0)))))
     pyim-dhashcache-icode2word)
    (pyim-dcache-write-file file confirm)))

;; * Footer

(provide 'pyim-dhashcache)
;;; pyim-dhashcache.el ends here
