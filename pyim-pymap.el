;;; pyim-pymap.el --- Pinyin map used by pyim  -*- lexical-binding: t; -*-

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

;; 这个文件源自：[[http://git.savannah.gnu.org/cgit/emacs.git/tree/leim/MISC-DIC/pinyin.map][pinyin.map]]
;; 这个文件是 pyim 内部使用的 "拼音-汉字" 对照表，
;; 这个对照表用来实现拼音查询功能，即，查询某个汉字对应的拼音代码。

;; 注意： 这个文件 *不用于* 输入法自定义词库！！！


;;; Code:
;; * 代码                                                                 :code:
(defvar pyim-pymap
  '(("a" "阿啊呵腌嗄锕吖")
    ("ai" "爱哀挨碍埃癌艾唉矮哎皑蔼隘暧霭捱嗳瑷嫒锿嗌砹")
    ("an" "安案按暗岸俺谙黯鞍氨庵桉鹌胺铵揞犴埯")
    ("ang" "昂肮盎")
    ("ao" "奥澳傲熬敖凹袄懊坳嗷拗鏖骜鳌翱岙廒遨獒聱媪螯鏊")
    ("ba" "把八吧巴爸罢拔叭芭霸靶扒疤跋坝笆耙粑灞茇菝魃岜捌钯鲅")
    ("bai" "百白败摆伯拜柏呗掰捭佰稗")
    ("ban" "办半版般班板伴搬扮斑颁瓣拌扳绊阪坂瘢钣舨癍")
    ("bang" "帮邦棒膀榜傍绑磅谤浜梆镑蚌蒡")
    ("bao" "报保包暴宝抱薄胞爆鲍饱堡曝刨褒豹雹苞葆褓孢煲鸨龅趵")
    ("bei" "被北备背悲辈杯倍贝碑卑蓓惫悖狈呗焙鹎孛邶陂埤碚褙鐾鞴萆钡")
    ("ben" "本奔笨苯夯畚贲锛坌")
    ("beng" "崩甭绷蹦迸甏泵嘣蚌")
    ("bi" "比必笔毕币避闭鼻彼逼壁臂弊碧鄙毙蔽庇匕璧敝陛弼篦婢愎痹妣濞铋裨俾髀萆薜哔狴庳秕滗舭毖吡嬖蓖贲畀荸埤筚箅芘襞跸荜")
    ("bian" "编便边变遍辩辨贬鞭辫扁卞砭苄匾汴蝙笾碥窆褊弁鳊忭煸缏")
    ("biao" "表标彪镖膘骠镳裱杓飙瘭髟飚婊飑鳔")
    ("bie" "别憋瘪蹩鳖")
    ("bin" "宾滨彬斌鬓缤殡濒槟摈膑傧玢豳髌镔")
    ("bing" "并病兵冰饼丙柄秉炳禀邴摒")
    ("bo" "波播博伯勃薄拨泊柏剥玻驳卜脖搏膊饽簸掰舶跛礴菠帛铂钵渤檗钹擘箔趵孛鹁踣亳啵")
    ("bu" "不部布步补捕怖卜簿哺埔卟埠钸逋醭晡瓿钚")
    ("ca" "擦嚓礤")
    ("cai" "才采菜财材彩裁猜蔡踩睬")
    ("can" "参餐残惨灿惭掺蚕璨孱骖黪粲")
    ("cang" "藏苍仓沧舱伧")
    ("cao" "草操曹糙嘈槽螬艚漕")
    ("ce" "策测侧厕册恻")
    ("cen" "参岑涔")
    ("ceng" "曾层蹭噌")
    ("cha" "查察差茶插刹叉诧茬碴喳岔嚓衩杈楂槎檫镲搽锸猹馇汊姹")
    ("chai" "差柴拆豺钗侪虿瘥")
    ("chan" "产颤缠禅蝉馋铲搀阐掺潺忏蟾婵谄谗廛孱澶冁躔蒇骣觇镡羼")
    ("chang" "长场常唱厂尝昌肠偿畅倡倘敞怅娼猖嫦伥氅徜昶鲳阊菖苌鬯惝")
    ("chao" "超朝潮炒吵抄嘲钞绰巢晁焯怊耖")
    ("che" "车彻撤扯澈掣坼砗")
    ("chen" "称陈沉晨尘臣趁衬辰郴谶琛忱嗔伧抻谌宸榇龀碜")
    ("cheng" "成城程称承诚盛乘呈撑惩澄秤瞠橙噌逞铛丞骋埕枨塍铖裎酲柽蛏")
    ("chi" "吃持迟尺赤斥池痴齿驰耻翅匙侈哧嗤啻弛蚩炽笞敕叱饬踟鸱褫豉坻墀茌篪傺媸螭彳眵魑瘛")
    ("chong" "重冲充崇虫宠憧忡艟茺舂铳")
    ("chou" "抽愁仇丑筹臭酬绸踌瞅惆畴稠雠俦帱瘳")
    ("chu" "出处除初楚触储础厨畜躇橱雏矗怵锄杵搐绌黜褚蜍蹰刍滁楮憷亍樗")
    ("chuai" "揣啜踹嘬膪搋")
    ("chuan" "传穿川船串喘舛遄舡巛氚椽钏")
    ("chuang" "创窗床闯幢疮怆")
    ("chui" "吹垂炊锤捶陲槌棰")
    ("chun" "春纯唇蠢醇淳椿鹑蝽莼")
    ("chuo" "绰戳啜辍踔龊")
    ("ci" "此次词差刺辞慈磁赐瓷兹茨雌祠疵呲鹚糍茈")
    ("cong" "从匆聪丛葱囱琮淙枞苁骢璁")
    ("cou" "凑楱辏腠")
    ("cu" "促粗簇醋卒猝蹴蹙徂殂蔟酢")
    ("cuan" "攒窜篡蹿撺镩汆爨")
    ("cui" "脆粹催摧崔萃翠瘁悴璀隹淬毳榱啐")
    ("cun" "存村寸忖皴")
    ("cuo" "错措搓挫撮磋蹉矬嵯脞痤瘥鹾厝锉")
    ("da" "大打达答搭瘩嗒沓耷褡鞑笪靼怛妲哒疸")
    ("dai" "代带待戴袋呆贷逮歹殆黛怠玳岱迨傣呔骀绐埭甙")
    ("dan" "但单担弹淡旦蛋胆诞丹耽惮眈啖澹掸殚箪瘅赕疸聃氮萏郸儋")
    ("dang" "当党荡档挡裆铛宕凼菪谠砀")
    ("dao" "到道导倒岛刀悼盗蹈捣祷叨稻忉帱氘纛")
    ("de" "的得德锝")
    ("deng" "等登灯邓凳瞪蹬噔磴戥镫簦嶝")
    ("di" "地第提底低帝弟敌抵递滴迪蒂堤笛缔涤嘀诋谛狄邸睇嫡翟砥娣棣荻羝坻柢觌骶氐绨镝碲籴")
    ("dia" "嗲")
    ("dian" "点电店典颠甸淀垫殿滇奠惦掂碘癫巅踮佃玷簟阽坫靛钿癜丶")
    ("diao" "调掉吊雕刁钓凋叼貂碉铫铞鲷")
    ("die" "爹跌叠迭碟谍蝶喋佚踮牒耋蹀堞瓞揲垤鲽")
    ("ding" "定订顶丁盯钉鼎叮町铤腚酊仃锭疔啶玎碇耵")
    ("diu" "丢铥")
    ("dong" "动东懂冬洞冻董栋咚恫侗氡硐鸫岽垌峒胨胴")
    ("dou" "都斗豆抖逗兜陡窦蔸蚪篼痘")
    ("du" "都读度独毒督渡肚杜睹堵赌妒嘟渎笃牍镀犊黩髑椟芏蠹")
    ("duan" "断段短端锻缎煅椴簖")
    ("dui" "对队堆兑碓憝怼镦")
    ("dun" "顿盾吨敦蹲钝炖遁盹沌囤墩趸镦礅砘")
    ("duo" "多夺朵躲舵堕踱咄跺哆剁惰垛驮掇铎裰哚缍沲柁")
    ("e" "额俄恶饿哦鹅扼愕遏噩娥峨呃厄鄂讹婀蛾轭颚鳄锷谔屙锇阏垩腭苊鹗萼莪")
    ("ei" "诶")
    ("en" "恩摁蒽")
    ("er" "而二儿尔耳迩饵洱鸸珥铒鲕贰佴")
    ("fa" "发法罚乏伐阀砝筏垡珐")
    ("fan" "反饭犯翻范凡烦返番贩繁泛帆藩幡梵樊燔蕃畈钒蘩矾蹯")
    ("fang" "方放房访防仿芳妨纺彷坊肪舫钫鲂邡枋")
    ("fei" "非费飞废肥啡沸菲肺匪诽腓扉吠霏绯妃斐翡蜚痱淝悱鲱篚芾狒镄榧")
    ("fen" "分份纷奋愤粉氛芬坟焚粪忿吩汾棼鼢玢酚偾瀵鲼")
    ("feng" "风封丰峰疯锋逢奉缝凤讽冯蜂枫烽俸砜唪酆葑沣")
    ("fo" "佛")
    ("fou" "否缶")
    ("fu" "夫府服复父负副福富付妇附佛幅伏符赴腐浮扶腹抚覆肤赋弗傅辅拂甫俯斧缚咐脯袱俘敷阜芙釜孚腑匐孵辐涪讣氟桴蜉芾苻茯莩菔幞怫拊滏黼艴麸绂绋趺祓砩黻罘蚨跗蝠呋凫郛稃驸赙馥蝮鲋鳆")
    ("ga" "咖尬嘎噶轧伽旮钆尕尜")
    ("gai" "改该概盖丐钙赅溉垓陔戤")
    ("gan" "感干敢赶甘肝杆尴赣橄竿秆擀坩苷柑泔矸澉疳酐淦绀旰")
    ("gang" "刚港钢岗纲缸扛杠冈肛罡戆筻")
    ("gao" "高告稿搞糕膏皋羔睾槁藁缟篙镐诰槔杲郜锆")
    ("ge" "个革各歌格哥戈隔葛割阁胳搁疙咯鸽嗝骼颌屹搿膈镉纥袼仡鬲塥圪哿舸铬硌虼")
    ("gei" "给")
    ("gen" "根跟亘艮哏茛")
    ("geng" "更耿耕颈庚羹梗哽赓鲠埂绠")
    ("gong" "工公共供功攻宫贡恭巩躬龚弓拱肱汞蚣珙觥")
    ("gou" "够购构狗沟勾苟钩觏篝垢佝岣诟鞲笱枸遘媾缑彀")
    ("gu" "故古顾股鼓姑骨固孤谷估雇辜咕沽箍菇汩轱锢蛊梏鸪毂鹄臌瞽罟钴觚鹘菰蛄嘏诂崮酤牿牯痼鲴")
    ("gua" "挂瓜刮寡呱褂卦剐鸹栝胍诖")
    ("guai" "怪乖拐掴")
    ("guan" "关观管官馆惯冠贯罐灌棺莞倌纶掼盥涫鳏鹳")
    ("guang" "广光逛犷咣胱桄")
    ("gui" "规归贵鬼桂跪柜轨瑰诡刽龟硅闺皈傀癸圭晷簋妫鲑匦庋宄炔刿桧炅鳜")
    ("gun" "滚棍鲧绲磙辊衮")
    ("guo" "国过果锅郭裹帼蝈聒馘掴埚虢呙崞猓椁蜾")
    ("ha" "哈蛤铪")
    ("hai" "还海孩害嘿咳亥骇骸嗨胲醢氦")
    ("han" "汉喊含寒汗韩憾涵函翰撼罕旱捍酣悍憨晗瀚鼾顸阚焊蚶焓颔菡撖邗邯")
    ("hang" "行航巷杭夯沆颃绗珩")
    ("hao" "好号毫豪浩耗皓嚎昊郝壕蒿貉灏镐嗥嚆薅濠蚝颢")
    ("he" "和何合河喝赫核吓贺盒呵禾荷鹤壑阂褐诃涸阖嗬貉曷颌劾盍纥蚵翮菏")
    ("hei" "黑嘿嗨")
    ("hen" "很恨狠痕")
    ("heng" "横衡恒哼亨蘅珩桁")
    ("hong" "红轰洪鸿哄宏虹弘烘泓闳薨讧蕻訇黉荭")
    ("hou" "后候後厚侯喉吼猴逅糇骺堠瘊篌鲎")
    ("hu" "乎护呼胡户湖忽互糊虎壶狐沪惚浒唬葫弧蝴囫瑚斛祜猢鹄醐戽扈唿笏琥滹鹕轷烀冱岵怙鹘槲觳瓠鹱煳")
    ("hua" "话华化花划画滑哗桦猾砉铧骅")
    ("huai" "怀坏徊淮槐踝")
    ("huan" "欢换还环缓患幻唤宦焕痪寰鬟涣浣奂桓缳豢锾郇萑圜洹擐獾漶逭鲩")
    ("huang" "黄皇荒晃慌煌惶恍谎璜徨簧凰幌潢蝗蟥遑隍肓磺癀湟篁鳇")
    ("hui" "会回汇挥辉灰惠毁悔恢慧绘徽讳贿徊晦秽诲诙晖彗麾烩荟卉茴喙蛔恚洄珲蕙哕咴浍虺缋桧隳蟪")
    ("hun" "婚混魂昏浑馄荤诨溷阍珲")
    ("huo" "和或活火获货伙祸惑霍豁夥锪耠劐钬攉藿嚯镬蠖")
    ("ji" "几给己机记及计即基济辑级极寄际技集纪击奇急激继既积籍鸡吉挤迹季寂绩疾饥祭缉忌剂圾姬矶肌嫉讥藉叽脊冀稽妓棘骥畸蓟汲悸岌伎笈跻瘠亟诘暨霁羁稷偈戟嵇楫唧鲫髻荠箕觊蒺畿虮齑殛墼佶掎芨丌麂蕺咭嵴芰笄哜洎乩戢屐剞跽玑鲚赍犄")
    ("jia" "家加价假架甲佳驾夹嫁嘉贾稼茄佼挟颊皎侥枷珈戛迦伽浃痂胛笳荚葭钾镓嘏郏挢岬徼湫敫袈瘕恝铗袷蛱跏")
    ("jian" "见间件建简坚监减渐检健兼剑艰肩键荐尖鉴剪践奸捡箭舰拣贱溅煎俭槛碱歼缄茧笺柬谏蹇僭涧菅謇硷睑锏饯毽鲣鞯蒹搛谫囝湔缣枧戬戋犍裥笕翦趼楗牮鹣腱踺")
    ("jiang" "将讲强江奖降蒋疆酱姜浆僵匠犟缰绛桨耩礓洚豇茳糨")
    ("jiao" "教交觉校叫较角脚焦骄郊轿搅嚼胶缴绞饺椒矫娇佼狡浇跤姣窖剿侥皎蕉酵礁鲛徼湫敫僬鹪峤蛟铰艽茭挢噍醮")
    ("jie" "界解接结节街姐阶介借戒杰届皆捷截洁揭劫竭藉睫诫嗟拮孑碣秸诘桀芥偈颉讦疖疥婕羯鲒蚧骱喈")
    ("jin" "进今金近尽仅紧禁劲津斤谨锦筋晋巾浸襟瑾矜靳缙烬噤觐馑堇衿荩廑妗卺赆槿")
    ("jing" "经京精境警竟静惊景敬睛镜竞净井径晶荆兢颈憬靖鲸泾阱儆旌痉迳茎胫腈菁粳獍肼弪婧刭靓")
    ("jiong" "窘炯迥扃炅")
    ("jiu" "就九究酒久旧救纠揪疚舅韭赳鸠灸咎啾臼鹫阄僦厩玖柩桕鬏")
    ("ju" "局据居句举具剧巨聚拒俱距惧菊拘矩桔驹鞠咀沮瞿锯炬飓趄掬踽踞遽橘倨疽龃屦犋裾钜苴雎鞫椐讵苣锔狙榘莒枸榉窭醵琚")
    ("juan" "捐卷倦眷娟隽绢鹃涓镌锩鄄狷桊蠲")
    ("jue" "觉绝决脚嚼掘诀崛爵抉倔獗嗟厥蹶攫谲矍撅噱孓橛噘珏桷劂爝镢蕨觖")
    ("jun" "军均君俊峻钧隽筠菌郡骏竣麇皲捃浚")
    ("ka" "卡咖喀咔佧胩")
    ("kai" "开慨凯铠揩楷恺垲蒈锎剀锴忾")
    ("kan" "看刊侃堪砍坎槛勘瞰龛阚莰戡")
    ("kang" "抗康慷扛炕亢糠伉闶钪")
    ("kao" "考靠铐烤拷犒栲尻")
    ("ke" "可克科客刻课颗渴柯呵棵恪咳苛磕壳坷嗑瞌轲稞疴蝌溘髁钶窠颏珂岢骒缂氪锞蚵")
    ("ken" "肯恳啃垦龈裉")
    ("keng" "坑吭铿")
    ("kong" "空恐控孔倥崆箜")
    ("kou" "口扣抠寇叩蔻眍芤筘")
    ("ku" "苦哭库裤酷枯窟骷刳堀喾绔")
    ("kua" "夸跨垮挎胯侉")
    ("kuai" "会快块筷脍蒯哙侩狯浍郐")
    ("kuan" "款宽髋")
    ("kuang" "况狂矿框旷眶筐匡哐邝诓夼诳圹纩贶")
    ("kui" "亏愧溃窥魁馈睽盔逵葵奎匮傀喟聩岿馗夔篑喹悝暌隗蒉蝰愦揆跬")
    ("kun" "困昆捆坤鲲悃髡锟醌阃琨")
    ("kuo" "括阔扩廓栝蛞")
    ("la" "拉啦辣腊喇垃蜡剌邋旯瘌砬")
    ("lai" "来赖莱睐癞籁徕涞赉铼崃濑")
    ("lan" "兰蓝栏烂懒览滥拦篮揽澜榄婪缆斓岚阑褴镧罱谰漤")
    ("lang" "浪狼朗郎廊琅螂榔啷莨锒稂阆蒗")
    ("lao" "老劳牢捞姥佬潦唠烙酪涝崂痨醪铹栳铑耢")
    ("le" "了乐勒肋叻泐鳓仂")
    ("lei" "类泪累雷蕾垒磊擂肋儡羸诔镭嘞檑嫘缧酹耒")
    ("leng" "冷愣楞棱塄")
    ("li" "里理力利立李历离例礼丽励黎厉璃莉哩笠粒俐漓栗狸梨隶吏沥篱厘犁雳罹莅戾鲤俚砺藜俪蜊黧郦痢枥逦娌詈骊荔鳢喱鹂嫠蠡鬲鲡悝坜苈砾藓呖唳猁溧澧栎轹蓠傈缡疠疬蛎锂篥粝跞醴")
    ("lia" "俩")
    ("lian" "联连脸练恋怜莲廉炼帘链敛涟镰殓琏楝裢裣蠊鲢濂臁潋蔹奁")
    ("liang" "两量良亮辆梁俩凉粮谅粱晾踉莨墚魉椋靓")
    ("liao" "了料聊疗辽僚廖寥镣潦撩撂缭燎寮嘹钌獠鹩蓼尥")
    ("lie" "列烈裂劣猎咧趔冽洌捩埒躐鬣")
    ("lin" "林临邻琳淋霖麟凛吝鳞磷躏赁嶙辚檩遴粼蔺懔瞵啉膦廪")
    ("ling" "领令另灵零龄凌玲铃陵岭拎伶聆囹棱菱翎苓瓴棂绫呤柃鲮酃泠羚蛉")
    ("liu" "六留流陆刘溜柳碌瘤榴浏硫琉遛馏镏骝绺锍旒熘鎏鹨")
    ("long" "龙隆笼胧拢咙聋垄珑窿陇癃茏栊泷垅砻")
    ("lou" "楼陋漏搂喽篓偻娄髅蝼镂蒌嵝耧瘘")
    ("lu" "路陆录卢露鲁炉鹿碌庐芦噜颅禄辘卤虏麓泸赂漉戮簏轳鹭掳潞鲈撸栌垆胪蓼渌鸬逯璐辂橹镥舻氇")
    ("lv" "律旅绿率虑履屡侣缕驴吕榈滤捋铝褛闾膂氯稆")
    ("luan" "乱卵峦挛孪栾銮娈滦鸾脔")
    ("lue" "略掠锊")
    ("lun" "论轮伦沦仑抡囵纶")
    ("luo" "落罗络洛逻裸骆萝螺锣箩摞烙捋珞骡猡镙椤倮蠃荦瘰泺漯脶硌雒")
    ("m" "呒")
    ("ma" "马吗妈码麻骂嘛抹玛蚂蟆唛杩犸嬷")
    ("mai" "买卖麦埋迈脉霾劢荬")
    ("man" "满慢漫曼蛮馒瞒蔓颟谩墁幔螨鞔鳗缦熳镘")
    ("mang" "忙茫盲芒氓莽蟒邙漭硭")
    ("mao" "毛冒猫贸矛帽貌茅茂髦卯耄瑁锚懋袤铆峁牦蟊泖昴茆旄蝥瞀")
    ("me" "么麽")
    ("mei" "没美每妹眉梅媒枚魅煤昧霉玫媚寐糜袂酶莓嵋楣湄猸镅浼鹛镁")
    ("men" "们门闷扪懑焖钔")
    ("meng" "梦蒙猛盟朦孟萌勐懵檬蠓瞢甍礞蜢虻艋艨锰")
    ("mi" "密米秘迷弥谜觅眯蜜靡咪谧泌糜汨宓麋醚弭敉芈祢脒幂縻嘧蘼猕糸")
    ("mian" "面免棉眠缅绵勉腼冕娩湎沔眄黾渑")
    ("miao" "妙描秒庙苗渺瞄藐缪淼缈喵眇邈鹋杪")
    ("mie" "灭蔑篾咩乜蠛")
    ("min" "民敏悯闽泯珉皿抿闵苠岷缗玟愍黾鳘")
    ("ming" "名明命鸣铭冥茗溟酩瞑暝螟")
    ("miu" "谬缪")
    ("mo" "默莫模麽末磨摸摩寞漠墨抹魔陌嘿沫膜蓦蘑茉馍摹貉谟嫫秣镆殁瘼耱貊貘")
    ("mou" "某谋眸缪鍪哞侔蛑")
    ("mu" "目母木幕姆慕牧墓募暮牟亩穆睦拇沐牡仫坶苜毪钼")
    ("n" "嗯唔")
    ("na" "那拿呢哪纳娜呐捺钠镎肭衲")
    ("nai" "乃奶奈耐氖艿鼐佴萘柰")
    ("nan" "难南男楠喃囡囝腩蝻赧")
    ("nang" "囊囔馕攮曩")
    ("nao" "脑闹恼挠瑙淖呶猱铙孬硇蛲垴")
    ("ne" "呢讷")
    ("nei" "内馁")
    ("nen" "嫩恁")
    ("neng" "能")
    ("ng" "嗯唔")
    ("ni" "你呢尼泥逆倪匿拟腻妮霓昵溺旎睨鲵坭猊怩伲祢慝铌")
    ("nian" "年念廿粘碾捻蔫撵拈黏鲶鲇辇埝")
    ("niang" "娘酿")
    ("niao" "鸟尿袅嬲茑脲")
    ("nie" "捏涅聂孽蹑嗫啮镊镍乜陧颞臬蘖")
    ("nin" "您恁")
    ("ning" "宁凝拧泞咛狞柠佞聍苎甯")
    ("niu" "牛纽扭妞钮拗忸狃")
    ("nong" "农弄浓侬哝脓")
    ("nou" "耨")
    ("nu" "怒努奴弩驽胬孥")
    ("nv" "女钕恧衄")
    ("nuan" "暖")
    ("nue" "虐疟")
    ("nuo" "诺挪懦糯喏搦傩锘")
    ("o" "哦噢喔")
    ("ou" "欧偶殴呕鸥讴瓯藕沤耦怄")
    ("pa" "怕爬帕扒趴啪琶葩耙杷钯筢")
    ("pai" "派排牌拍徘湃俳蒎哌")
    ("pan" "判盘盼叛畔潘攀拚蹒磐爿蟠襻袢泮")
    ("pang" "旁庞胖乓膀磅彷螃滂耪逄")
    ("pao" "跑炮抛泡袍刨咆狍疱脬庖匏")
    ("pei" "配陪培佩赔沛裴呸胚醅锫辔帔旆霈")
    ("pen" "盆喷湓")
    ("peng" "朋鹏碰彭捧棚蓬膨烹抨篷砰澎怦堋蟛嘭硼")
    ("pi" "批否皮屁披疲辟啤脾匹僻劈譬坯痞癖琵毗霹噼媲郫裨纰丕鼙圮蚍蜱貔陂陴砒仳埤擗吡庀邳疋芘枇罴淠铍甓睥")
    ("pian" "便片篇偏骗翩扁犏谝蹁骈缏胼")
    ("piao" "票漂飘瓢嫖瞟骠嘌剽螵缥莩殍")
    ("pie" "撇瞥氕丿苤")
    ("pin" "品贫拼频聘拚姘嫔榀颦牝")
    ("ping" "平评瓶凭萍乒屏苹坪枰娉俜鲆")
    ("po" "破迫颇婆坡泊泼魄粕珀叵攴钷笸钋陂泺鄱皤")
    ("pou" "剖裒掊")
    ("pu" "普铺扑朴谱浦葡蒲仆脯瀑菩溥匍璞噗圃埔氆镨蹼镤濮莆")
    ("qi" "起其期气七奇妻企器汽棋齐旗弃启骑欺歧岂戚凄泣契琪乞祈漆迄脐栖沏祺崎祁琦蹊砌憩淇汔亟绮讫嘁岐萋俟杞芪荠耆槭颀芑屺欹桤綮萁蛴蜞綦鳍麒蕲柒亓骐葺畦圻碛")
    ("qia" "恰洽掐伽袷葜髂")
    ("qian" "前钱千签欠牵浅潜迁谦遣歉纤嵌乾谴铅虔钳骞倩堑黔掮悭芊缱愆荨芡阡佥搴褰肷钎仟犍钤岍箝鬈扦慊椠")
    ("qiang" "强枪墙抢腔呛锵跄羌蔷戕襁樯炝蜣嫱锖戗羟镪")
    ("qiao" "桥悄乔巧侨瞧敲翘俏窍峭锹撬跷憔樵鞘橇诮愀谯荞峤缲硗鞒劁")
    ("qie" "切且窃怯茄趄妾砌惬伽锲挈郄箧慊")
    ("qin" "亲钦琴侵秦勤芹擒寝覃沁禽噙揿檎锓芩嗪螓衾廑溱吣")
    ("qing" "情请青清轻晴庆倾卿擎顷氢罄蜻磬謦苘圊檠黥鲭氰箐綮")
    ("qiong" "穷琼穹茕邛蛩筇跫銎")
    ("qiu" "求球秋邱囚丘酋蚯裘俅虬鳅逑遒赇泅楸犰湫蝤巯鼽糗")
    ("qu" "去取区曲趣屈趋驱渠躯娶觑瞿岖戌蛐衢蛆癯麴阒祛磲鸲诎蠼劬蕖蘧龋苣黢璩氍朐")
    ("quan" "全权圈劝泉券拳犬诠颧蜷绻荃铨痊鬈辁悛畎醛筌")
    ("que" "却确缺雀瘸榷鹊阕阙炔悫")
    ("qun" "群裙逡麇")
    ("ran" "然染燃冉髯苒蚺")
    ("rang" "让嚷攘壤瓤穰禳")
    ("rao" "扰绕饶娆桡荛")
    ("re" "热惹喏")
    ("ren" "人任认忍仁韧刃纫饪壬仞稔葚荏妊轫衽")
    ("reng" "仍扔")
    ("ri" "日")
    ("rong" "容荣融蓉溶绒熔榕戎嵘茸冗肜蝾狨")
    ("rou" "肉柔揉蹂鞣糅")
    ("ru" "如入辱儒乳汝褥嚅茹濡蠕孺缛襦颥薷蓐洳溽铷")
    ("ruan" "软阮朊")
    ("rui" "瑞锐芮睿蕤枘蕊蚋")
    ("run" "润闰")
    ("ruo" "若弱偌箬")
    ("sa" "洒撒萨卅仨飒挲脎")
    ("sai" "赛塞腮噻鳃")
    ("san" "三散伞叁毵馓糁霰")
    ("sang" "丧桑嗓搡磉颡")
    ("sao" "扫骚嫂梢臊搔缲缫鳋埽瘙")
    ("se" "色塞涩瑟啬铯穑")
    ("sen" "森")
    ("seng" "僧")
    ("sha" "杀沙啥傻厦刹纱莎煞砂霎嗄挲歃鲨唼痧裟铩")
    ("shai" "晒筛酾")
    ("shan" "山善闪衫删煽扇陕珊杉擅掺膳栅讪跚汕姗赡潸缮嬗掸膻骟芟埏剡钐鄯舢苫髟疝蟮鳝")
    ("shang" "上商伤尚赏殇裳晌觞熵墒绱垧")
    ("shao" "少绍烧稍勺哨邵梢捎韶苕鞘潲劭杓芍蛸筲艄")
    ("she" "社设舍涉射摄舌蛇奢赦慑佘赊麝畲厍滠歙猞")
    ("shei" "谁")
    ("shen" "什身深神参甚申审沈伸慎渗绅肾呻婶莘蜃葚娠渖矧诜砷糁谂椹胂哂")
    ("sheng" "生声省胜升圣盛剩牲绳甥笙渑眚嵊晟")
    ("shi" "是时十事实使世市识始士师诗式失史视示食室势试石释施适氏驶饰尸拾逝湿誓狮嗜蚀嘘屎侍匙峙仕恃柿轼矢噬拭虱弑蓍埘莳炻谥鲥豕贳铈螫舐筮鲺酾")
    ("shou" "手受收首授守售瘦寿兽狩绶艏")
    ("shu" "书数术属输树述熟束署殊舒叔鼠疏淑抒薯梳暑竖蜀恕墅孰漱枢俞赎黍蔬曙倏庶戍塾澍姝纾秫毹殳疋菽丨沭摅腧")
    ("shua" "刷耍唰")
    ("shuai" "率衰摔甩帅蟀")
    ("shuan" "涮栓拴闩")
    ("shuang" "双爽霜孀泷")
    ("shui" "水谁税睡")
    ("shun" "顺舜瞬吮")
    ("shuo" "说朔硕烁铄妁蒴槊搠")
    ("si" "四死思斯司似私丝寺撕肆厮嘶伺饲嗣祀巳驷鸶俟汜泗厶兕蛳咝姒澌缌耜笥锶")
    ("song" "送松宋诵耸颂讼悚怂忪淞菘崧嵩凇竦")
    ("sou" "搜艘嗽擞馊薮嗾叟嗖溲飕锼瞍螋")
    ("su" "苏诉速素俗肃宿塑稣溯酥粟簌夙嗉谡僳愫涑蔌觫")
    ("suan" "算酸蒜狻")
    ("sui" "岁随虽碎遂祟隧髓邃穗隋绥睢荽燧谇眭濉")
    ("sun" "孙损笋荪狲飧榫隼")
    ("suo" "所索缩锁琐梭嗦唆挲娑睃唢嗍蓑羧桫")
    ("ta" "他她它踏塔塌榻嗒蹋沓遢挞鳎闼铊趿漯溻獭")
    ("tai" "太台态泰抬胎汰苔呔鲐邰薹酞骀炱跆肽钛")
    ("tan" "谈探弹坦叹坛摊贪滩毯谭潭瘫炭覃痰忐坍袒碳澹檀昙镡郯锬钽")
    ("tang" "堂唐汤躺糖趟倘烫淌膛塘棠搪溏螳瑭樘螗铴醣镗耥饧傥帑羰")
    ("tao" "讨套逃涛掏陶桃淘滔萄焘啕韬饕洮绦鼗")
    ("te" "特忑忒慝铽")
    ("tei" "忒")
    ("teng" "腾疼藤誊滕")
    ("ti" "体提题替踢梯啼涕蹄剔剃惕屉嚏悌醍缇鹈锑荑倜绨逖裼")
    ("tian" "天田填甜添腆舔恬钿阗畋忝殄掭")
    ("tiao" "条调跳挑迢眺鲦佻苕窕髫粜笤龆祧蜩")
    ("tie" "铁贴帖餮萜")
    ("ting" "听停庭厅挺亭婷廷艇町霆汀铤蜓莛梃葶烃")
    ("tong" "同通统痛童彤筒铜桶捅桐瞳佟恸酮恫侗砼嗵仝垌茼峒潼")
    ("tou" "头投偷透钭骰")
    ("tu" "土突图途徒屠涂吐兔秃凸荼酴钍菟堍")
    ("tuan" "团湍抟疃彖")
    ("tui" "推退腿褪颓蜕忒煺")
    ("tun" "吞屯饨褪臀囤豚暾氽")
    ("tuo" "托脱拖妥拓陀驼唾椭砣驮沱跎坨鸵乇鼍橐佗庹铊酡柁柝箨")
    ("wa" "瓦挖袜娃哇凹娲蛙洼佤腽")
    ("wai" "外歪崴")
    ("wan" "万完晚湾玩碗弯挽顽腕婉惋宛丸蜿莞畹剜豌皖纨琬脘烷芄菀绾")
    ("wang" "望王往网忘亡汪旺枉妄惘罔尢辋魍")
    ("wei" "为位未委维味围卫威微伟谓唯危慰尾违魏玮蔚伪畏胃喂炜韦惟巍纬萎娓苇尉帷渭猥偎薇痿猬逶帏韪煨鲔桅潍隈圩囗诿隗崴洧葳嵬闱沩涠艉軎")
    ("wen" "文问闻温稳吻纹蚊雯紊瘟汶刎阌璺")
    ("weng" "翁瓮嗡蓊蕹")
    ("wo" "我握窝卧渥沃涡斡蜗幄喔倭挝莴肟硪龌")
    ("wu" "无五物务武午舞於误恶吴屋伍悟吾污乌雾侮捂巫毋呜诬勿梧坞戊兀唔晤芜鹜钨妩痦鹉忤寤骛邬牾鼯圬浯仵阢芴庑婺怃杌焐蜈迕鋈")
    ("xi" "西系息希喜席习细戏吸洗惜稀悉析夕牺袭昔熙兮溪隙嘻锡晰媳樨熄膝郗犀禧曦奚羲蹊唏淅嬉皙汐徙茜玺熹烯翕蟋屣檄浠僖穸蜥隰觋螅铣菥葸蓰舾矽粞硒醯欷鼷歙饩阋禊舄")
    ("xia" "下夏吓峡厦侠狭霞瞎暇虾唬辖遐匣黠瑕呷狎柙硖瘕罅")
    ("xian" "现先显线险限县鲜献闲宪陷贤仙嫌咸羡掀弦纤娴衔馅涎舷腺跣暹岘猃蚬筅跹莶锨鹇痫铣氙祆籼冼藓酰苋燹霰")
    ("xiang" "想相向象香乡像响项享降箱详祥巷厢湘橡翔镶飨襄饷骧葙庠鲞芗缃蟓")
    ("xiao" "小笑校消效晓销潇肖萧孝宵削嚣啸逍硝霄淆哮枭骁箫筱哓枵绡魈蛸崤")
    ("xie" "些写谢协鞋携斜泄胁歇谐邪械屑卸挟懈泻亵蟹偕邂榭撷楔瀣蝎颉勰薤燮躞缬獬绁廨榍渫")
    ("xin" "心新信欣辛薪馨鑫芯衅昕忻锌歆镡囟")
    ("xing" "行性形兴星型姓幸刑醒腥杏悻惺邢猩荇擤荥饧硎陉")
    ("xiong" "雄兄胸凶熊匈汹芎")
    ("xiu" "修休秀袖宿臭羞绣朽锈嗅咻貅髹馐庥鸺岫溴")
    ("xu" "许续需须徐序虚绪吁蓄叙畜嘘恤絮浒墟旭婿栩戌诩胥酗煦砉盱糈醑顼勖洫溆圩蓿")
    ("xuan" "选宣旋悬券喧轩玄炫渲绚眩萱漩暄璇谖铉儇痃泫煊楦癣碹揎镟")
    ("xue" "学血雪削穴谑靴薛踅噱泶鳕")
    ("xun" "寻询训迅讯巡逊循旬熏勋驯荤殉醺巽徇埙荀峋洵薰汛郇曛窨恂獯浔鲟蕈浚")
    ("ya" "亚压雅牙呀押涯讶鸦哑鸭崖丫芽衙轧痖睚娅蚜伢疋岈琊垭揠迓桠氩砑")
    ("yan" "眼言严演研烟验延沿掩颜厌炎燕阎宴盐咽岩雁焰艳焉淹衍阉奄谚俨檐蜒彦腌焱晏唁妍砚嫣胭湮筵堰赝餍鼹芫偃魇闫崦厣剡恹阏兖郾琰罨鄢谳滟阽鼽酽菸")
    ("yang" "样洋阳央杨养扬仰羊痒漾泱氧鸯秧殃恙疡烊佯鞅怏徉炀蛘")
    ("yao" "要摇药耀遥邀腰姚咬尧谣瑶窑夭肴妖吆钥侥杳窈鹞曜舀铫幺爻徭繇鳐珧轺崾")
    ("ye" "也业夜爷叶野页液耶咽曳拽揶噎烨冶椰掖腋谒邺靥晔铘")
    ("yi" "一以意已义议医易衣艺依译移异益亦亿疑遗忆宜椅伊仪谊抑翼矣役艾乙溢毅蛇裔逸姨夷轶怡蚁弈倚翌颐疫绎彝咦佚奕熠贻漪诣迤弋懿呓驿咿揖旖屹痍薏噫镒刈沂臆缢邑胰猗羿钇舣劓仡酏佾埸诒圯荑壹挹嶷饴嗌峄怿悒铱欹殪黟苡肄镱瘗癔翊蜴眙翳燱")
    ("yin" "因音引印银隐饮阴姻瘾吟寅殷淫茵荫尹蚓垠喑湮胤鄞氤霪圻铟狺吲夤堙龈洇茚窨")
    ("ying" "应英影营迎硬映赢盈颖鹰婴蝇樱莹荧膺萤萦莺罂瀛楹缨颍嬴鹦瑛茔嘤璎荥撄郢瘿蓥滢潆媵")
    ("yo" "哟唷")
    ("yong" "用永拥勇涌踊泳庸佣咏俑雍恿甬臃邕镛痈壅鳙饔喁墉蛹慵")
    ("you" "有又由友游右油优邮幽尤忧犹悠幼诱佑黝攸呦酉柚鱿莠囿鼬铀卣猷牖铕疣蚰蝣釉蝤繇莜侑莸宥蚴尢")
    ("yu" "于与语育余遇狱雨於欲预予鱼玉愈域誉吁宇寓豫愚舆粥郁喻羽娱裕愉禹浴馀御逾渔渝俞萸瑜隅驭迂揄圄谕榆屿淤毓虞禺谀妪腴峪竽芋妤臾欤龉觎盂昱煜熨燠窬蝓嵛狳伛俣舁圉庾菀蓣饫阈鬻瘐窳雩瘀纡聿钰鹆鹬蜮")
    ("yuan" "员元原院远愿园源圆怨缘援冤袁渊苑猿鸳辕垣媛沅橼芫爰螈鼋眢圜鸢箢塬垸掾瑗")
    ("yue" "月乐越约阅跃曰悦岳粤钥刖瀹栎樾龠钺")
    ("yun" "运云允韵晕孕匀蕴酝筠芸耘陨纭殒愠氲狁熨郓恽昀韫郧")
    ("za" "杂扎砸咋咂匝拶")
    ("zai" "在再载灾仔宰哉栽崽甾")
    ("zan" "咱赞暂攒簪糌瓒拶昝趱錾")
    ("zang" "藏脏葬赃臧锗奘驵")
    ("zao" "早造遭糟澡灶躁噪凿枣皂燥蚤藻缲唣")
    ("ze" "则责泽择咋啧仄迮笮箦舴帻赜昃")
    ("zei" "贼")
    ("zen" "怎谮")
    ("zeng" "增赠憎缯罾甑锃")
    ("zha" "炸扎咋诈乍眨渣札栅轧闸榨喳揸柞楂哳吒铡砟齄咤痄蚱")
    ("zhai" "摘债宅窄斋寨翟砦瘵")
    ("zhan" "战展站占沾斩辗粘盏崭瞻绽蘸湛詹毡栈谵搌旃")
    ("zhang" "长张章丈掌涨帐障账胀仗杖彰璋蟑樟瘴漳嶂鄣獐仉幛嫜")
    ("zhao" "着找照招朝赵召罩兆昭肇沼诏钊啁棹笊")
    ("zhe" "这着者折哲浙遮辙辄谪蔗蛰褶鹧锗磔摺蜇赭柘")
    ("zhen" "真阵镇震针珍圳振诊枕斟贞侦赈甄臻箴疹砧桢缜畛轸胗稹祯浈溱蓁椹榛朕鸩")
    ("zheng" "政正证整争征挣郑症睁徵蒸怔筝拯铮峥狰诤鲭钲帧")
    ("zhi" "之只知至制直治指支志职致值织纸止质执智置址枝秩植旨滞徵帜稚挚汁掷殖芝吱肢脂峙侄窒蜘趾炙痔咫芷栉枳踯桎帙栀祉轾贽痣豸卮轵埴陟郅黹忮彘骘酯摭絷跖膣雉鸷胝蛭踬祗觯")
    ("zhong" "中种重众终钟忠衷肿仲锺踵盅冢忪舯螽")
    ("zhou" "周州洲粥舟皱骤轴宙咒昼肘帚胄纣诌绉妯碡啁荮籀繇酎")
    ("zhu" "主住注助著逐诸朱驻珠祝猪筑竹煮嘱柱烛铸株瞩蛛伫拄贮洙诛褚铢箸蛀茱炷躅竺杼翥渚潴麈槠橥苎侏瘃疰邾舳")
    ("zhua" "抓爪")
    ("zhuai" "拽嘬")
    ("zhuan" "传专转赚撰砖篆啭馔颛")
    ("zhuang" "装状壮庄撞妆幢桩奘僮戆")
    ("zhui" "追坠缀锥赘隹椎惴骓缒")
    ("zhun" "准谆窀肫")
    ("zhuo" "着桌捉卓琢灼酌拙浊濯茁啄斫镯涿焯浞倬禚诼擢")
    ("zi" "子自字资咨紫滋仔姿吱兹孜梓渍籽姊恣滓谘龇秭呲辎锱眦笫髭淄茈觜訾缁耔鲻嵫赀孳粢趑")
    ("zong" "总宗纵踪综棕粽鬃偬腙枞")
    ("zou" "走奏邹揍驺鲰诹陬鄹")
    ("zu" "组足族祖租阻卒诅俎镞菹")
    ("zuan" "赚钻攥纂躜缵")
    ("zui" "最罪嘴醉咀觜蕞")
    ("zun" "尊遵樽鳟撙")
    ("zuo" "作做坐座左昨琢佐凿撮柞嘬怍胙唑笮阼祚酢"))
  "拼音汉字对照表，第一个元素为拼音，第二个元素为拼音对应的汉字组成的字符串。")

(defvar pyim-pymap-commonly-used-cchar
  (cl-remove-if-not
   (lambda (char)
     (string-match-p "\\cc" char))
   (split-string "
的一国在人了有中是年和大业不为发会工经上地市要个产这出行作生家以
成到日民来我部对进多全建他公开们场展时理新方主企资实学报制政济用
同于法高长现本月定化加动合品重关机分力自外者区能设后就等体下万元
社过前面农也得与说之员而务利电文事可种总改三各好金第司其从平代当
天水提商十管内小技位目起海所立已通入量子问度北保心还科委都术使明
着次将增基名向门应里美由规今题记点计去强两些表系办教正条最达特革
收二期并程厂如道际及西口京华任调性导组东路活广意比投决交统党南安
此领结营项情解议义山先车然价放世间因共院步物界集把持无但城相书村
求治取原处府研质信四运县军件育局干队团又造形级标联专少费效据手施
权江近深更认果格几看没职服台式益想数单样只被亿老受优常销志战流很
接乡头给至难观指创证织论别五协变风批见究支那查张精林每转划准做需
传争税构具百或才积势举必型易视快李参回引镇首推思完消值该走装众责
备州供包副极整确知贸己环话反身选亚么带采王策真女谈严斯况色打德告
仅它气料神率识劳境源青护列兴许户马港则节款拉直案股光较河花根布线
土克再群医清速律她族历非感占续师何影功负验望财类货约艺售连纪按讯
史示象养获石食抓富模始住赛客越闻央席坚份士热限米银息校均房周游千
失八检足配存九命尔即防钱评复考依断范础油照段落访未额双让切须儿便
空往你层低奖注黄英承远版维算破铁乐边初满病响药助致善突爱容香称购
届余素请白宣健牌促培竞巴稳继紧字困刘旅声超随例担友号显却监材且春
居适除红半买充陈火搞图阳六察试太什执片古七球修尽控讲排粮武预亲挥
卖审措荣洲卫希店良属险曾围域令站苏龙念罗吨器汇康减习演普田班待星
飞写矿轻扩言章汽靠毛终仍景置底福止离泽波兰核降训逐票菜座献钢眼损
宁像苦印融独湖早予夫编换欧努著顾征升态套介送某斗状画留航派室临兵
补宝略黑综云差纳密贫剧犯阿击遇岁阶烈督吃丰馆招害官树听庭另沙私针
胜贷网愿托缺园假酒音巨既判输讨测读洋括筑欢刚庆久陆找楼激晚绝压故
互签汉草木亩短绍迎吸警藏疗贵纷授登探索湾宏录申诉秀序顺死卡歌午孩
桥喜川邓扬津温船库订练候退违否彩棉帮拿罪币角召灾妇杨奋绩虽煤免笔
够永圳停奥鲜朝吴岛觉移尼急博贯拥束左细舞幅语俄奇般简拍脑债固威券
追筹刻映繁伟甚饭右彻烟沿街血冲洪植誉刊玉厅救潮迅伍怎付倍顿述播励
斤乎纸振旧障鼓艰呼吉男绿尚夏亏季松哈祖典韩遍夜轮板抗摄杂皮贡借幕
罚伤岸扶乱曲脱践危澳童散味叶累谢孙邮雄兼微呢谁惠偿署择染答块徐鱼
赞课盛延瑞怀堂驻零辆齐胡途封似润守毕坦母雨败朱污趋械纺租灵拓残含
握跨衣储瓦蒙鉴析竟骨档秘禁赵宾异伊智钟键辉跃冷倒庄毒仪哪涉泛宗鹏
归岗雷礼尤休泰疾肥珠叫牛宜抵挂寻父攻佳塞架符裁虑肉启丽露鲁秋昌估
射册若宽厚盾硬末轨饮勤茶诗郑冠涨篇泥唱纯坡熟浙晓抢丝锦载笑勇杰患
乌坐雪戏背塔翻沈遗聚渠哥享迹森辽衡掌牧附操赶览野盟殊仁错萨夺梅误
词董潜卷矛腐亮冒盖旗井凡震峰坏倾距壮惊盘梁摆径忠冰峡丹避珍乘刑扎
透迫箱莫跑穿祝乏厦渐软询折浪朋敢诚弱疑邀沉端床络疆缩脚甘贴勒荒唐
静缓侵句尊塑肃怕耕痛援劣伙挑洗暴冬龄乔餐肯廉跟阵伐悉忘闭奔恢宋泉
杯渡吗奉婚赴恩盐掉洁亡洛聘蔬混摩抽鸡剂胆麦谋雅废贺羊阔唯捐返隆穷
辛猪帐饰郭颁灯绕诸伴顶祥谓恶番敏旦劲缴麻屋跳码鞋扣迈忙趣盈棋勃敬
辑摊旺纠炼梦偏渔牙侨黎赔裕宫谷概稿柱弹殖秩凭拨幸洞伪沟姓遭涌陶迁
诺拔畅忧胞丁蓄贝舍腾杀煌圆伦横薄畜毫豪弟呈佛邦您墨徽惯循蓝烧触陕
拖伯盲宪净卢炭籍秦粉妻爆欣释玩俊欠蛋猛迪苗暂貌遵锡楚桂昆杜皇醒燃
凤截铺液撤胶慢杭虚辞曼毅咨俗糖忽芳姐耗妈谊浦频阻允宅窗默胀弃倡灭
甲症埃滨赏莱拒淡坛陵绘虎竹赢锋篮迷纽轿贩递娘圈挖炉替幼乃郊颇戴滑
徒崇涛焦凝墙吧炎刀玻寿履圣昨酸朗媒桑铜仲亦诞揭纵漫愈辟赠旱奶泳枪
骗虫池镜浓拆艾扫娱钻碍寒迟邻曹盗穆豆赚晨浩彭耳瓜扭脸燕摇寄仿炮晋
泪欲饱壁锁刷柬诊磨捕寨滚膨孔添帝辖炸旨吁址驶抱嘉拜扰袋佩阴辈锅赖
剩押怪浮枚栏毁柳恐敦孟旁仓岩伸岭耐懂捷璃溪暖纤汗疫巧旋侧冶陪鸣瓶
纲挤旬舆喝陷缘稻饲滩隔慰朴隐灌拟偷闲赫恰慧蒋闹邹牵柴刺滞彰俱勘填
琛尝贾搬淮奏荷滋覆役秒踏巩摸荡辅惜柜肖颗搏氏姑弄姜君舒兑宇割哲摘
钦逃漠忆敌宿啊凌耀闯阅贪赤汪悲抑瓷冯厉粗菲琴堡斌掘稀衰驾雕牢氛驱
妥悄郎巡臣羽灰癌颖姆漏袭贤鸟暗茂孤惩榜袁桌卓傅剑堆兆狠轰拳妹绒裂
潘兄洽叹涵贿侯岚熊绪阁尾碑尖腿涂栽坝犹铸肩闪诱辩芬睡奠伏妙乙绸廷
夕恒梯赁霞攀枝译描湘磁吕硕爸肝峻葡衷搭唤薪挺逝狗蔡宴蓬撞铝牲舰胁
崛桃斜丧烂屏砖墓详逾函跌抚插戈凉啤脉滥赋柏堤腰泊寺尘蒂削仙踪冻汤
睛艳荐劫框廊惑页拼堪携丈乳挪谱舶埔遥菌塘氧晶洒株颜虹岳胸忍甜匹瞩
懈爷丛莲叙鸿逢抬嘴弘炒喷吊窝衔吹霸仔垦胎慎脏歧疏悠慕漂杆萍舟吐玲
凯戒盼偶盆慨弊箭茅衫罐串辐腹钩碰昂酬晰姿彼锻飘嫁竣缝蹈悬紫浅缆喊
昔驰湿剪侦坑姚魏扑挣焕皆狂泡骤堵膜禽锐芝帽擅沪晤婆埋劝碗玛顷鸭娃
豫匆魂哭庞亭屡逼尺撒鹿讼弥坊碎缔霍壤萄铃稍丘肿烦苹庙雇汛孝辰吞汰
怨酿耶咱欺丢琼棚披渴屈弗疲帕昭盒仰萧牺撑抛鼠纱翼兹骑糊契铭淘顽撰
乒淑妆窑柔姻苍谨卿灿栋敲窃菊郁催眉邱揽鼎韦肤娜俏呀拚寸爬悟尿罢圭
葬聪沃肠厕慈恋绵橡圾垃翁粤脂歹憾阐甸巷蜂轴艘垄衬阜惨冀幽厘崭筋寓
迄渗碘碧赌袖奈崔悦捞剥孕逆婴脆缅艇谭笼儒粒诈遣垂磋卸帜枣幢淀帆蛇
宰殿猎叔夹帅沧魅俩牟钓葛罕渤汕溢擦袱嫩桶殷酷呆卧暑骄幻囊掀醉牡饼
扇蒸赣俭椅枢彦樊吾仗彬砂绳巾喀勋愁碱谦壳轧潭浆挽邢啥焊钞烤廖猫狱
腔喻御蕴坎魔刮瘤茫竭莉链淫愤纹咸睐睹裤夸滴雾搜拘龚凶茨傲鞍鹤蚀颈
翠卉汁冈狮隧弯胃沛募琳疼蚕泼磷捧炳绣朵涯掏奎聂孜韵浑翔魄掩斥敞腊
愧粘丑溉斑啦柯谐烯禄浴涝鬼薛瘦挡昏鹅湛逻虾沂辱叉鼻厨鲍鞭辣潇乓肺
尹颂邵澜桐鹰妨闽屠畏翰塌亟寂赂犬聊暨垫泄漆旭蕾坪涤挫佐瞄拦硫棒杏
爽碳畔熙襄祸乾淹臂莎辜阎庸砍捉勾垒衍坤噪毯倪扮铅遏哀愉瑶咬嫌闸恳
齿杠怒兽浇肇鄂溶哄棵盯梨灶屯狭陋啡浸淋濒脊戚勉膏氨墅沸挨蔓抄芒秉
刹饶厢咖魁骚缚遂恨跻螺辨菇帷凰椒汝瞬淄舱馈桩炬誓卜麟岂兔眠泵拐肚
匪芦匈霉蜜荆雁窄秧枯仆嘱壶谅哨肌贬叠稽岐沫肆醇菱彪躺摔膀甫逊凑渊
喂藤砸悔杉霜厄忌桔筒丙臭拾芜禹丸蟹嘛俞翅尸澄骂睦馨郝贮陌钧轩赃笋
歉逸歪巍萃崖窟踢锣萎庐剖籽甩饥苑恼渣痕莞硅晴巢瘫缠隶筛穴昼埠宠肢
饿仑逮兢趟糕妮邪抹俑萌匠扔酱葱礁掺雀髓悼挚蔚枫庚伞侃僵捆蒜溜傻蔗
谜斋蝶沾闷驳耿槽黔吓肾芽栗朽荫榆皖曰徊奴迭僻蓉靖氟滔羡愚尧俺徘罩
磊镑舌曙纶粪匙钉佼扯踊躲猴纬咽酝挠宛瑰歇抒茧穗祭鑫趁痴裙猜耘碌锈
晒潍弦稼狼拢梧芯眷哑宙厌逛谴邯呵蜡寥钥耸媳熏蚁惕颠娟亨吟蒲梭瞻渝
喉遮慌夷韶焰尉珊胖蕉粹裹琦秽侠奸挝绑曝棍婉镶熬傍燥氯骆晃鸽疯琢聋
瑟暇绥禅溃腺垮阀撼煮佣滕淤蹲栖硝睁荟荧抖坟芭臻锭晖倦倘喘邑锤惧荔
毗觅矮恭钙氮缸瞧颤萝佑怡瘾寡烹摧棠缪雏韧喇兜坯坷贞仇缉帘竖糟猖懒
凿洼喧谣驼烫锌椰崩沥汾磅霖棘扛彗矩瞒陇绎诫斐卵铮钾宵簿秤畴斧擂剔
躁冤讳寅焚漳鳖哺耻僧琅粟怖咏蜀淳柑缕烁氢蔽琪泣阮镀殴虞虐炊搁诀掠
坠屿髦酋躯吵遐寞仕稚僚楠矶筝彝叮熔槐潢芹郸匾咋玄裔陡哗怜襟刃脾嵌
拱慷痪跋孚峪钊滇苟晕墩膝羞乍腻詹讶敷肴莹衢柿朔袜枕烘匀歼泻樱吻翟
堰苯隙娇獗汲蛙斩靡沁乞姨翩沼嘎畸矫骏薯绚窜藻矗皂楷腕篷徇耽娼犁榻
茄棕汹峨蹄昧奢涩灼踩粥拣旷簇溯攒沓呕梳搅砌纫渭澡撕漓葆辍肪祁鞠蛮
捏诵娣岱瀑啸裸鸦瑛躬舜忱豹纂恤惟赐俯犀媚嫂嗓蚊茬驭缀皱凳钮蚂姬扒
嫖跪凹揣尬沦尴豁玫殡淌叭唇啃裘卑琐矢拯忡勿盎茵椎脖拂骅葫迢薇龟绞
眶沐傣浊舅叛浚窘栓酶笛泌榄惹铲碟捡恪酯滤匿酵砚贼匮熠鳞麓镁氓苇廓
巫踵竿蘑翘梓贻鳗帼冉泓狐涟崎窍瑜讽逗铎掷璀泗浏陲醋苛攘璧瀚哩暮矣
蚌悖扼漯烛蝴屑墟俘侣庇陀煎秸弓捣譬炜炯拌扁彤锚禾侮秆绮嚣樟咐枉窦
桦寇哉狸耍馒驹隋冕疮咄妄峙娄溥腑钠栩糙滦呐鲻娶祺刨褒橙茹谎抉慑媛
橄戎迩雯璨雍惶扳桢霓账梗炕裴韬杖痹缤沽燎煞删辙爵缭劈烨槌媲凛莆颅
锯膳澎坞瓣婷絮酌涡唁秃禺膊棣芸忻炽榨篆憨戍圩爹蹊饪胺贱睫蝇惫拇赈
泾盏弧剿硒毓皓菏灸湄炙祠荻捍嚼朦屹紊藜驴寝兮隘祈榕臧蝉绢瞎闵鳌娥
藉娅烽楂摒凄凸熄孵叩渎胳匡袍卒怠桓莽倩泸藕陨辗骋峭冥饺亢圃颐擒铵
鳄簧愣璜钰拙瘠靳隽罹岑镭榴恕毋囤汀绽窖筷擎猿诲碾夭筐邃藩诬芙胚哇
垣胧帖殉毙壑绰憋亥涅屁璞缮侍倚稠棺棱葵诣笨橱寰郡垢徕眺胰谆窥霄栉
舸蹦坂瞪珲釉跤挟侄肘嘲刁缎嚷痒敛祛绅孰痫闺椿噶恍伶峦酥萦苎癫涪锲
蜚拎嵩昊娴涣烙璋笃囚祯篱讴舷纭锄巅卦摹眸柄踞焉辄褚褐湃夙堕岔惦疚
谍奕羚帧澈濮捎漾吼锰趴菩簸仃渲札谙咕桨咀郴咳呜蛟拧莘驯庵弼逞蹬姥
撂镍晏疡爪骥楞钳懋寐淇琉杞菠铨翌靶侗瑙馅丐痊娓侈苓聆睿偌釜噬曦燮
哟瑾瞿璇拮憬鹊勺憧嗜啼檐柚呱渍镌妃溺鸥粕沱榭隅毡禧瞅鲸淆阪茁渺瞥
茜瘟礴伺谛锹蔼虔莺迸磕赡泱栈甄镐抠嬉诿甬绊饵谬梢颍揪琶褥佟腥辊溅
琵鄯拴喃笙酰粱卤芮膛斓潼鸵侥讷婿吆羁嗣蜒栅疙拷戳镛芷钛蜿铀夯摞雌
酣荼蝎锥姊瓢祀玺弛犷哦茸鱿绷茎惋亘珑莓掂迥鲤殃瘩叨螃奄腈疟沭钨昕
膺涿糠氰揉狩檀悍缫哮衙瑚潞谤搀洱涓袤痰乖冗芋甭骸幌涮俨敖槛狄牒恺
雹赎庶熨蛛佰蓦鄱煽腌黯疤倔剌斡诽锵筱妍掖铿脐捅弈邸湟眯赦拄啪玮轶
蛾麋炫赊靴箔菁撬裳戌缨蝗撇奚瀛噩怯蓓匕咚瞰佬泞扉皋晾麒姗跚瘀鄙猕
拭鲟祷脯砺驿陛瘁搓舵汞哼胫珀邬磺馏馍铢诧涧吏苔潺邳烷囿斟滁殆酚狡
孺恬沅铬湍啧囱蒿鹃柠漱胥妖洙珂茉蹒圻鬓搂葩佘渥诙袒捂瞠妓铐澧袂馁
汐匣逍谚窒蔑糯汶壹岖盔嘘迂嘀锢讥吭抨屎獭褪咫稷迦檬塬蠢蓟咎皿驮俐
坍惭垛鹭鸾蹴撩诠恙臃遨睬踌浒搪郧竺翡宦冽憩萱拽卞槟躇蘸肋呛濡酮眨
撮矸垸蛀黛涸脓徙撷曳峥渚镖钴骊袅磐掣沌埂嘿琏楣豚诡悸麝煦矾羲唉溧
呻覃兖吱惰羹钝枸姣颓铣梆骇淅孢叱谧泯谟恃薹筵鏖栾鹜哽掬辘茗瓯绛筠
铤袄殚梵挎遴榈蜕癣垠厮幄偕焱攥裨炖旮旯蔺骡娩伫猝窿虏屉缜咒筏骼璐
剃涕猗淼侬阙嗅鸳嘈霏珩沮捺硼荃驷漩嘻眩掰伽脍婪煜鹄壕崂翎痞兀婺鸯
楹咤徜嫉篓烃铂咪掐匝杼蕃箍荤砾嘶皑宕荪哎汴貂邡淦蕙弩堑惬偃徉箴赘
啻凋穹酗憎芥唾闫晔苞昶甙笺吝蕊鳝衅猩薰昱趾淞坳怅翱汩琥岌阑粼羌霆
篡塾酉裱韭唠廿闰攸黝蛤厥荞瑕柘祚疵愕蕨牦飨疹嗷癖芪漕隍徨逵泠嵘嗡
岫岷擞陂颊咔卯婶椭惘歙幺臆叽缰睽勐暄弋痔秭煲琮嘟犊玖怦丕溴罂瓮丞
惮癜晦攫镰镯柞舫铆蹼妩熹铱褂丫笆妒噢噙琬冼荀蟾捶嗒町嫣肮皎旖恣钚
砥吩茯馥钎甥嗦蜗浔谒辫亳彷珏咯淖妊佤玷嘹崴於辕贲扈伎旎孽耙娠戊冢
跷砷焘羔圪耄钼悻荥唑稞邝莅杷醛嗽唆拗碴馋胱琨茏糜懦骞蜘嚓怵抡唢腆
涎灏臼墒暹椽牍钒猾榔懵枇樵锶籼箫漪帚钵赓捻郅儋烬锂剽锑鄢鄞臾喳胄
耋阱笠瓴啬杳萤莠嶂浜傩遒轼睢倜矽仉唬旌酪腼罄嬗畲祟桅悴讹憔龋嵊绶
邕忖箩咆晌愫猷帛麾莒觑吮蟋庥懊阂蒯阡腮潸晟蟀臀罔骁崽绉粽忿肛蠡遛
蜓煊蚜坻滹銮悯鼐撵噼忐湮侏粳矍铄坨铉盂锗阖溟俟忑赝鬃敝宸哆靓揩瘸
鲅篝氦嚎浃缙飚锷癸柩蛎濂榷鲨钡盹鲫诘诩迤桎遁尕梏楫赳飒锃雉怆痼劾
痢喽霹昙畹胭佚狈瘪姹吠铧谏雳咙畦荠娑褶忏惚痉橘漉诏呗晁惆砀馄戟峁
昵拈蠕虱洵鹦蛹铛挛倏澍濉钅噜咛俳磬蜷霎肽砼聿怔砭谌箕蹶孪蔷糅挞饨
惴禀淙哒枷楝闾蜻嗖淬垩矜郗蚤嫦喋镉饯髋潦镂簌偎鹉岙踱诃籁宓膘飙涞
耆荏渑豌琰俎绌埭幡赅锆崮碣珞腋滢蓖伉馗聩幔锨蓥鹑砝酩枰鞘苋粑蹭倌
犟俪嶙砻嵋滂葺苒枭翊婀飓阚喟傈藐蜃怂稣亵诒蜇岜霁瞌沏卅舀鹌俸嵇蟒
汨砰鞣唏陉佯恿竽瘴祉焙诋濠螂叻垅谩朐稔芍瞳惺萸盅啄眈偻爿蟠炔垭噎
蛰擘锏茭悌喔谑峋妪恽韫褓镳饽杈戛鸠萋襁榫霭苄跺杲嗨珉哌娆孀恸缄夔
佗饷苷郜鼾颌訇谲溘咧褛逄颦洮逶嫡蠹碓烩醴栎鎏瓤伢蔫怿甾摈畈镣螨秣
搔盱痍搐蹉佃绂疽骝霾悚缃懿咂奘轱邗蚝瘘醚湎瞑掮羟仨砣郢砧鳟跛踝轲
窠郦踉躏戮篾骐鳍蹂郯跎倭诅鄄褴阆缈嗯妞沤跄箐苕窕楔饴峄腴圄谕揍踹
罡佝颔觊篑鲢綦妾镗啕蚬窈揖眙蟑诛钗绯讣睾媾嗬祜镢囹苜坭蛐髯搡叟蹋
觎捱碉呋罘荚鹫岿寮扪焖狞鳅嗄嗤擀痂嗟颉蚧儆锴龛嗑锟俚枥懑讫橇嗪虬
跆骧陟灞恻涔酐鸪牯钜萘鲶缥曜蚓诤埕墀麸蝠蛊遑厩趄沔耦疱匍揿蚯讪唰
舔呷蓿鹧膑刍耷鞑裆趸孑鲲绫埝嘭舢鸢螯吡蝙疸匐桁铠羸鲈囵唛仫庖劭郓
骜粲峒腓鹳鳜蚶囫茴峤蟆蘖癯纾僳皙隰缬馐谪捭汊碜塍艮睑狍苫篦蜍锉沣
诰晗喙麂謇蹇觐啾踽邈壬燧娲猥歆镒茔昝赭狰孳哧舛噔鹗蚣逅洹腱锒纰蛆
蕤姝邰纣嘣钹衩婵孱蹿鲷萼椁浣镓遽赉趔蕲剜邂仡氤獐幛俾铋嗔茌氡诂豢
桧畿倥捋仞忒疃浯蜈榛偬稗菖鲳厝踮叼痱貉玑婕琚疴掳钤垧氵黠跹怏揄氲
铡濯芾笈崆钕菽隼傥仝囗芗埙簪暧桉镝蚪蜉藁笳菅龃喹橹抿啮蹑逖唔樨巽
揶黟訾钣嵯凼恫掇剁珙沆噱揆耒铌泅疝葳隗滟龉钺殒蒡觇黜澹酊垡奂珈濑
馕馊嚏痿岘氩茱滓焯抻豉敕掸碲靛摁淝鳏盥皈鲑颢犄翦铰椐胯屺邛庹猬蓊
骛浠桠胤鸩痣蛭噌杵啜靼啶煅枋觥毂刽蝈蘅芨戬醮疖忾骷洌呤荦觞谡瀣蝣
糌倬碚蹙痘砘绀虢蕻肓蛔唧桀蝌侩棂樯挈轫巳崧蓑藓鳕瑗帙馔豺痤郇殓髅
轳逯嗫戕嚅蛳琊嘤疣蚱钯钿碇咣毽迳喱逦廪邙囡匏扦亻咝凇纨涠庠溆醺炀
烊肄龈谀锱瘢枞皴贰晷闳斛屐讦婧苣蔻绺渌瑁螟叵颀穑膻羧螳绦誊蜥楦恂
靥咿翳瓒枳啭樽嫒婊搽铒跗凫菡篁髻裾栲癞蓼氖孬喏砒姘衽缛嵬挹缢慵呦
箸蹩槎榇舂嗲胴谔岢圹娌潋蛉酃鲵鲇娉亓碛芊忪谇笤韪勰呓俣圜愠仄炷毖
筚伧棰磴滏篙肱笕堇馑荩榘哐傀崃罱痨儡鹂檩垴仵檄芎阉刈壅馀庾妯躅獒
阊笞饬钏硐椴泔硌鹘鳇豇狙戡莨啉辇臬殇舐黍薮眭佻嗵煨莴蚴妤瘐擢蛏蹰
龊辏绐氘骶莪珐缟聒讧岬胛桷谰戾撸鸬雒嘧囔铍骈掊茕噻铯柁艉龌硖罅魇
酽咦嶷羿轸趵荸薜踟玳啖蔸槁鲛疥砬唳弭曩黏镊泮霈淠柒颧瘙痧辋郄燹泫
郾鹞钇殪痈甑踯翥婢檗柽啐菪嶝腭嗝剐笏蟥戢阄噘撅尻贶辚蜢颞忸胼阕竦
焐揠邺鳙啁稹徵诌隹舨哔卟伥苌鹚箪缍锇蝮诟洄浍诨犍硷噤垲郐椤嫫伲脲
殍噗溱箬厍钽钍恹鬻爰砦蓁胝颛褙鳊邴铖镫腚钭颚鲂悱狒佶偈堀绔醪坜疠
椋犸暝佞哝瞟荨芩逡溽裟挲抟暾崦芫荑薏莸欤栀斫镞嗳鸨跸骠俦谠簟棼驸
掼倨橛犒邋耧蝼虻铙郫汔诮楸阒绻叁臊钐腧闩菘阗忝橐翕阋踅窨鹬鼋樾錾
吒旃弁侪坼蚩嘬糍骢氐呃榧玢绋蚨钆岣菰罟嘏埚绗嚯藿笄袈羯肼暌啷蒗蜊
獠鬣熳黾乜镆怩驽旆髂仟芡谯恁鳃艄莳艏趿遢鲐醍僮氽刎芴喑墉昀箦鄣摺
钲贽缵鏊锛瓿廛瘳亍遄褡垌椟酆砩桴赙坩臌曷跽湫榉黧猁钌镏缦殁赧埤悭
缱衾鲭铩猞眚铈谥耜飕饕餮骰乇绾鹇鲞爻蜴镱铟莜祗濞镔逋谄谶酲茺樗憷
莼撺柢阏砜垓旰妫衮嗥郏鞯徼孓钪侉夼跬铼嫘蟊茆睨怄蹁谝嘌綮嫱筇犰穰
铷筲哂炻豕秫笥涑铊帏闱鋈舾屣狎哓噫璎铕宥阈豸辎趑龇捌秕荜愎窆镲谗
踔苁酢呔聃镦屙鲱鬲膈铪醐獾鲩虺葭牮礓苴讵颏裉诳栌氇镙哞柰袢帔睥苤
嫔笸氆佥箧跫蚋鲥扌狲桫溏铽殄脘洧肟绡咻洫癔洇嵛磔胗肫赀眦吖瑷埯畚
妣飑豳髌砗铳楮蔟毳锝堞疔葑缶菔疳彀胍磙顸薅翮猢怙蒺廑妗髁醌粝魉旒
蝥缗衲呸醅芘蚍圮榀萁苘逑诎劬蕖朊剡蟮椹饣酞帑葶菟魍庑葸氙谖鞅狺夤
嬴瘿饔雩鹆橼赜潴骓缁诹怍杓艹檫媸氚呲殂矬笪迨纛簦玎苊轭匚鼢呒缑诖
炅鲧唿戽鬟恚袷瘕枧洚桕雎蠲剀诓瘌镧铑鳓蓠呖跞裢裣埒捩鲮熘嵝瘰镘脒
腩筢耪辔牝嘁蛴戗蛩巯悫葚熵绱蛸螫毹妁纟嗾鳎绨粜菀沩鼯牾螅顼泶蕈鼹
繇苡悒廴吲喁卣牖笮舴罾棹鸷碡锕嗌媪龅甏箅傧啵鹁晡氅魑篪怛籴礅蒽珥
钫绠觚鸹涫颃篌锪蠖乩咭赍嵴铗湔槿赆僦皲佧箜蒉缧酹嘞疬臁膦泷蒌泺荬
颟旄泖镅蠓冖幂耱襻鼙攵炝愀蘧氍犭禳桡糁馓酾槊狻锬羰鼗鹈畋髫萜堍璺
怃崤囟睚痖菸餍徭瘗唷圉蜮砟谵澶朕摭轵诼笫廒聱庳髀笾龀裎雠蝽腠妲刂
铥黩怼沲蘩趺苻拊阝鲋戆纥哏鲠笱瞽庋簋刿掴猓蚵槲觳萑癀蟪钬虮掎鲣囝
裥踺茳糨鹪狷麇芤刳愦髡悃缡鲡鳢奁墚尥柃胪镥脔杩劢墁玟蝻呶搦湓罴蜱
俜鲆皤镨槭镪黢洳枘芟埏渖筮殳飧溻饧樘醣酡圬粞觋莶霰榍薤髹曛疋迓衤
欹佾埸霪茚鼬伛瘵骣畛卮轾彘觯锺邾槠谘嵫髭蕞犴鞴畀滗煸褊冫孛羼耖褫
彳艟辶茈璁爨榱萏坫鸫篼簖裰哚蹯瀵怫陔筻廾蛄绲崞蜾盍荭黉糇骺後鲎煳
鹕冱瓠逭漶耠镬齑殛鲚跏蛱搛缣鹣僬噍衿缂喾狯纩栝蛞稂塄嫠詈蠊鹩躐鹨
簏膂脶嬷昴瞀浼艨祢縻蘼芈糸宀眄鹋杪咩愍麽瘼鍪硇猱茑脬蟛貔仳犏钋芑
葜愆锓蠼筌鬈蚺荛埽潲诜埘弑嗍蒴鸶缌澌姒蔌睃缇梃彖鼍芄隈鲔硪忤痦欷
僖醯鼷跣枵忄擤勖痃碹谳轺铘圯纡窬窳饫蓣瀹趱驵缯揸笊絷跖舯螽籀舳粢
驺陬阼揞菝魃癍鹎坌狴萆嬖襞碥髟鳔醭螬馇虿瘥惝怊鸱螭瘛帱徂汆脞瘅忉
羝睇瓞鲽岽胨芏佴燔偾稃郛莩幞澉槔袼搿茛鞲觏酤牿鲴宄匦呙馘焓瘊虍岵
鹱咴隳缋溷夥剞洎恝蒹谫僭艽挢敫卺冂扃锔窭锩觖劂氪骒哙悝蝰诔苈篥娈
瞵锍栊癃舻辂稆猡蛑甍艋敉眇蠛侔镎肭艿蛲疒陧衄锘堋庀擗甓螵钷攴桤褰
凵肷锖鞒吣黥俅蝤璩悛辁肜颡谂礻摅汜溲嗉荽闼骀炱螗耥裼铫莛亠箨蕹迕
杌寤穸饩舄禊猃绁渫廨獬硎荇鸺貅糈揎镟獯讠厣罨蛘鳐崾舣媵尢蚰侑狳螈
龠昃痄搌浈埴夂黹酎橥丶缒窀菹锿砹茇勹邶鐾舭忭缏灬瘭踣钸礤骖黪艚锸
猹镡躔蒇冁鬯屮枨眵傺搋巛舡楱镩鹾戥觌阽铞垤揲蹀耵髑憝鸸鲕篚镄鲼唪
祓艴黻黼鳆尜戤塥哿虼遘桄丨胲醢撖嚆薨堠烀轷锾缳擐哕阍劐攉丌墼蕺彐
芰哜戋趼楗耩喈卩鲒骱刭弪獍鬏鞫犋屦醵桊爝捃胩锎蒈莰闶钶锞眍筘阃漤
铹栳耢仂泐檑轹蔹懔垆锊倮蠃鞔硭漭猸鹛钔瞢礞喵苠鳘貊貘毪坶攮猊嬲肀
聍甯狃耨孥胬恧蒎锫陴氕丿裒镤蜞岍搴箝慊椠蜣硗劁缲檎螓圊檠謦銎赇鼽
糗麴鸲磲畎狨蝾薷襦颥蓐脎毵磉鳋唼歃彡骟滠矧胂蓍鲺贳搠厶兕锼螋瞍觫
赕铴瑭慝掭祧龆蜩鲦茼酴煺柝腽軎阌阢诶菥蓰柙祆筅葙蟓魈躞砉醑儇岈砑
珧酏劓堙撄潆舁蝓燠眢箢掾刖狁拶唣迮帻谮哳齄膪嫜忮骘膣踬荮瘃麈疰丬
浞禚觜耔腙鄹鲰躜撙胙省啰瞭乂丏夬匜厾玕玙抔抃㧐芼旸吽牤沚沨纴玡玭
玠玥玦拤劼拃㧟茓茀杻旻昉呣䏝炘㤘祎祇垱挦剋柈𠳐眊峣郤饸饹疭竑闿羑
浕恓牁姮珰珣琤栟彧眬鸮䥽盉俵俶訚烜浥牂骎琇捯埵捽堉棻梿棁晞唵崚秾
鸻馃阇焗惇郿欸琫琯揳塆靰靸椪雱睄嗞嵖嵎铻媭鲀颎焜湜湲湉愔祾翚瑄蒟
楯跶跐嗐锜鹐亶瘆滫滃滪窣璈叆摽榖靺靿僰豨䁖嘡嘚箓魆粿熥嫚奭鋆瞋颙
踒𥻗熜潟褟璟璠璘縠嚄螠䦃镚镠膙獴赟澥窸璪鞡鞬罽鳀鞨鞧藠蹚鹮霨蹽蹾
齁㸆巉镴臜瓘镵齉卬𠙶毌邘圢伋冮氿汈氾讱扞圲圫芃朳朸𨙸邨屼屾辿伣伈
癿甪邠汋䜣讻孖玒玓玘玚刬坉扽坋扺㧑毐芣苉芠𫇭杕杙杄杧尪尨轪𫐄坒旴
旵㕮岠呇冏觃伾㑇伭佖佁飏汧汫𣲘𣲗沄沘汭㳇沇忳忺祃诇邲诐屃岊䢺妧妘
𨚕纮驲𫘜纻𫘝纼玤玞玱邽邿坥坰坬坽弆䢼𦭜茋苧苾枅㭎枍矼矻匼旿昇昄昒
昈咉咇咍岨岞峂㟃囷钖牥垈侁侹佸佺㑊侂佽侘郈舠郃攽肸狉狝饳忞炌炆泙
沺泂泜泃泇峃祋祊𫍣鸤弢弨陑陎乸妭姈叕䌹𫠊㛃玶珇珅珋玹珌玿韨垚垯垙
垍耇垎垟垞挓垵垏荖荁荙茽荄荓𦰡㭕柷柊枹栐柖郚剅䴓迺厖砆砄耏奓䶮昺
𪾢昽盷咡咺昳昣昤昫昡咥昪虷虸哃峘峏峛𪨰峗峧帡钘𫓧秬俫俙俍垕衎弇侴
鸧䏡胠𦙶胈胣朏飐訄饻庤疢炣炟㶲洭洘洓洿㳚泚浉洸洑洢洈洺洨浐㳘洴洣
恔宬扂袆祏祐祕叚陞娀姞姱姤姶姽枲绖骃𫄧骉珪珛珹玼珖𪟝珽珦珫珒珢珕
珝埗垾垺埆垿埌埇茝鄀莝䓖莙栻梠栴梴栒𫠆砵砠砫硁翃郪𨐈辀剕哢晅晊唝
哱冔晐畖蚄蚆𫑡崁峿𪨶崄帨崀甡倻倴脩倕倞倓倧衃虒舥鸰朓虓鱽峱𫗧勍竘
羖羓烠烔烶烻涍浡浭浬涄涢涐浰浟浛浲涘悈悢宧窅窊窎扅扆袪袗袯隺堲疍
𨺙烝砮㛚翀翂剟𫄨绤骍䂮琎珸珵琄琈琀珺堎堐埼埫堌晢掞埪壸㙍萚莿䓫勚
䓬菂菍菼萣䓨菉䓛梼梽桲梾桯梣梌桹敔硔硙硚硊硍勔䴕龁逴啫翈㫰晙畤跂
蛃蚲啴䎃崟崒崌崡铏𫓯𫟹𫟼铚牻笯偰偡偭偲偁㿠鄅偓徛衒舲鸼悆鄃瓻䝙脟
䏲鱾猇猄𠅤庱庼痓䴔竫堃羕焆烺焌淏淟淜淴淯湴涴㥄惛惔悰惙寁𫍯裈祲𫍲
谞弸弶隃婞娵婼媖婳婍婌婫婤婘婠𫘦绹𫟅骕𫘧絜珷琲琡琟琔琭堾堼揕㙘堧
喆堨塅𪣻𡎚惎萳靬葴鄚蓇萩蒐葰葎鄑葖蒄萹棤棽棫椓椑鹀椆棓棬棪椀甦酦
奡皕詟𫐐辌棐龂牚睎晫晪晱𧿹畯斝喤崶嵁嵅崿嵚翙𫖮圌圐赑赒𨱇𫓶犇颋稌
筀筜筥傃傉翛傒傕畬𫖯脿腘䐃腒鲃猰𫛭猯㺄馉凓鄗廋廆鄌遆旐焞欻𣸣溚溁
湝渰㴔渟溠渼溇湣湑溞愐愃敩棨扊祼婻媆媞㛹媓媂媄矞𫘨缊缐骙瑃瑓瑅瑆
䴖瑖瑝瑔瑀𤧛瑳瑂嶅瑑髢堽赪摛塝搒蒱蒨蓏蔀蓢蓂蒻楪榃榅楒楩椸楙歅碃
碏碈䃅硿鄠辒𫐓䣘暕鹍㬊暅跱蜐蜎嵲赗𫓹锳锧稑稙䅟筼筶筦筤僇艅谼貆腨
腯鲉鲊鲌䲟鲏雊猺飔觟𦝼馌裛鄘鹒鄜麀阘𫔶煁煃煴煋煟煓溍溹滆滉溦溵漷
滧滘滍愭慥慆塱𫌀禋禔禘禒鹔𫖳嫄媱勠戣𫘪𫘬缞耤瑧𫞩瑨瑱瑢斠摏墕墈墐
墘摴𡐓𪤗靽鞁蔈蔊榰榑槚𣗋槜疐酺碶䃎碨𥔲𫚖䴗鹖㬎幖嶍圙𨱏锽镃馝鹙箖
劄僔僎槃㙦𫚕鲖鲗鲘鲙𩽾夐飗凘廙鲝鄫熇漹漖潩漼漴㽏漈漋漻慬㮾褕禛隩
嫕嫭嫪㻬麹璆漦叇墣墦墡薁蕰蔃鼒槱鹝磏殣慭霅暵暲暶踦䗖蝘蝲噇噂噀罶
嶲嶓㠇嶟嶒镈镋镕皞皛䴘艎鹟𩾃鲪鲬觭鹠鹡鹢熛潖潵㵐澂澛瑬潽潾潏憭憕
戭褯禤𫍽嫽遹璥璲璒憙薳黇蕗薢橞橑橦觱磡𥕢磜豮𫟦𫠜虤暿曌曈㬚蹅踶䗛
疁㠓幪𪩘嶦𨱑馞穄篯簉衠盦螣縢鲯鲹𫗴亸羱糒燋熻燊燚燏濩濋澪澽澴澭澼
憺嬛翯𫄷璱𤩽璬璮髽擿薿薸櫆檞醨繄磹磻瞫蹐蟏㘎𫔍𨱔𫔎矰穙穜穟簕簃儦
魋斶谿䲠鲾鲿鳁鳂鳈鳉䗪襕襚螱嬬嬥𦈡𫄸瓀釐鬶爇鞳鞮藟藦藨鹲黡礌𥖨蹢
蹜蟫䗴嚚髃镮酂馧簠簝簰鼫鼩皦臑䲢鳑鳒鹯癗𦒍旞翷䎖瀔瀍瀌襜䴙嚭㰀鬷
蠋翾儳儴𩾌鳚鳛麑麖彟嬿鬒蘘欂甗𨟠巇酅髎犨𨭉㸌爔瀱瀼襫孅骦耰𤫉瓖鬘
趯罍鼱鳠鳡鳣爟爚灈韂糵礵鹴皭龢鳤亹籥𫚭玃醾齇觿" ""))
  "常用汉字")

;; * Footer
(provide 'pyim-pymap)

;;; pyim-pymap.el ends here
