-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018-09-27 16:03:41
-- 服务器版本： 5.7.19-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zbblog`
--

-- --------------------------------------------------------

--
-- 表的结构 `biz_article`
--

CREATE TABLE IF NOT EXISTS `biz_article` (
  `id` int(11) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '文章标题',
  `user_id` varchar(20) DEFAULT NULL COMMENT '用户ID',
  `author` varchar(50) DEFAULT NULL COMMENT '作者',
  `cover_image` varchar(255) DEFAULT NULL COMMENT '文章封面图片',
  `qrcode_path` varchar(255) DEFAULT NULL COMMENT '文章专属二维码地址',
  `is_markdown` tinyint(1) unsigned DEFAULT '1',
  `content` longtext COMMENT '文章内容',
  `content_md` longtext COMMENT 'markdown版的文章内容',
  `top` tinyint(1) unsigned DEFAULT '0' COMMENT '是否置顶',
  `category_id` int(11) unsigned DEFAULT NULL COMMENT '类型',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '状态',
  `recommended` tinyint(1) unsigned DEFAULT '0' COMMENT '是否推荐',
  `slider` tinyint(1) unsigned DEFAULT '0' COMMENT '是否轮播',
  `slider_img` varchar(255) DEFAULT NULL COMMENT '轮播图地址',
  `original` tinyint(1) unsigned DEFAULT '1' COMMENT '是否原创',
  `description` varchar(300) DEFAULT NULL COMMENT '文章简介，最多200字',
  `keywords` varchar(200) DEFAULT NULL COMMENT '文章关键字，优化搜索',
  `comment` tinyint(1) unsigned DEFAULT '1' COMMENT '是否开启评论',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `biz_article`
--

INSERT INTO `biz_article` (`id`, `title`, `user_id`, `author`, `cover_image`, `qrcode_path`, `is_markdown`, `content`, `content_md`, `top`, `category_id`, `status`, `recommended`, `slider`, `slider_img`, `original`, `description`, `keywords`, `comment`, `create_time`, `update_time`) VALUES
(1, 'zb-shiro开源springboot+mybatis+shiro+redis整合项目', '1000002030234569', '郑其锋', 'http://cdn.nbclass.com/img/blog/4042fca985835dd6180dd212bb77969d.jpg', NULL, 1, '<h1 id="zb-shiro">zb-shiro</h1>\r\n<h4 id="-">项目介绍</h4>\r\n<p>项目git地址：<a href="https://gitee.com/supperzh/zb-shiro">https://gitee.com/supperzh/zb-shiro</a><br>Springboot + shiro权限管理。最精简的shiro上手项目。<br>基于Spring Boot、Shiro、MyBatis、Redis、thymeleaf等框架，前端使用adminlte模板。<br>包含：用户管理、角色管理、角色管理、在线用户管理等模块。<br>可以加<a href="http://shang.qq.com/wpa/qunwpa?idkey=dad3420aea2111ee98653f703f61bc504bfcd6dd85d1766a344523d7e353ad43">QQ群130512958</a>交流技术！</p>\r\n<p>项目预览：<a href="http://www.nbclass.com/index">www.nbclass.com/index</a><br>    音乐：<a href="http://music.nbclass.com">music.nbclass.com</a><br>    账号：admin 密码：123456<br>另有springmvc版权限后台项目（可切换redis配置和本地缓存配置，加群，不常更新）<a href="https://gitee.com/supperzh/zqf-shiro">git地址</a></p>\r\n<p><strong>如果喜欢，请多多分享！！多多Star！！</strong></p>\r\n<p><img src="https://img.shields.io/badge/JDK-1.8-green.svg" alt="JDK">  <img src="https://img.shields.io/badge/Maven-3.3.9-green.svg" alt="Maven">  <img src="https://img.shields.io/badge/MySQL-5.6.24-green.svg" alt="MySQL">  <img src="https://img.shields.io/badge/Redis-3.0.503-green.svg" alt="Redis">  <a href="https://gitee.com/supperzh/zb-shiro/blob/master/LICENSE"><img src="https://img.shields.io/badge/license-MIT-yellow.svg" alt="license"></a></p>\r\n<h4 id="-">使用说明</h4>\r\n<ol>\r\n<li>使用IDE导入本项目</li>\r\n<li>新建数据库<code>CREATE DATABASE zb-shiro;</code></li>\r\n<li>导入数据库<code>docs/db/shiro.sql</code></li>\r\n<li>修改(<code>resources/application.yml</code>)配置文件<ol>\r\n<li>数据库链接属性(可搜索<code>datasource</code>或定位到L.15) </li>\r\n<li>redis配置(可搜索<code>redis</code>或定位到L.28)</li>\r\n</ol>\r\n</li>\r\n<li>运行项目(三种方式)<ol>\r\n<li>项目根目录下执行<code>mvn -X clean package -Dmaven.test.skip=true</code>编译打包，然后执行<code>java -jar zb-shiro/target/zb-shiro.jar</code></li>\r\n<li>项目根目录下执行<code>mvn springboot:run</code></li>\r\n<li>直接运行<code>ShiroBootApplication.java</code></li>\r\n</ol>\r\n</li>\r\n<li>浏览器访问<code>http://localhost:8081</code></li>\r\n</ol>\r\n<p><strong>用户密码</strong></p>\r\n<p> 账号：admin 密码：123456</p>\r\n<h4 id="-">其他开源项目</h4>\r\n<p><a href="https://gitee.com/supperzh/zplayer">zplayer音乐播放器</a></p>\r\n<h4 id="-">图片预览</h4>\r\n<p><img src="https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/workdest.png?v=1.0" alt="首页"><br>什么？你没看错，前端模板有很棒的主题风格切换功能！<br/><br><img src="https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/control.png?v=1.0" alt="主题切换"><br><img src="https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/userlist.png?v=1.0" alt="用户管理"><br><img src="https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/rolelist.png?v=1.0" alt="角色管理"><br><img src="https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/assignpermission.png?v=1.0" alt="角色分配资源"><br><img src="https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/permissionlist.png?v=1.0" alt="资源管理"></p>\r\n', '# zb-shiro\r\n\r\n#### 项目介绍\r\n项目git地址：https://gitee.com/supperzh/zb-shiro\r\nSpringboot + shiro权限管理。最精简的shiro上手项目。\r\n基于Spring Boot、Shiro、MyBatis、Redis、thymeleaf等框架，前端使用adminlte模板。\r\n包含：用户管理、角色管理、角色管理、在线用户管理等模块。\r\n可以加[QQ群130512958](http://shang.qq.com/wpa/qunwpa?idkey=dad3420aea2111ee98653f703f61bc504bfcd6dd85d1766a344523d7e353ad43)交流技术！\r\n\r\n项目预览：[www.nbclass.com/index](http://www.nbclass.com/index)\r\n    音乐：[music.nbclass.com](http://music.nbclass.com)\r\n	账号：admin 密码：123456\r\n另有springmvc版权限后台项目（可切换redis配置和本地缓存配置，加群，不常更新）[git地址](https://gitee.com/supperzh/zqf-shiro)\r\n\r\n**如果喜欢，请多多分享！！多多Star！！**\r\n\r\n![JDK](https://img.shields.io/badge/JDK-1.8-green.svg)  ![Maven](https://img.shields.io/badge/Maven-3.3.9-green.svg)  ![MySQL](https://img.shields.io/badge/MySQL-5.6.24-green.svg)  ![Redis](https://img.shields.io/badge/Redis-3.0.503-green.svg)  [![license](https://img.shields.io/badge/license-MIT-yellow.svg)](https://gitee.com/supperzh/zb-shiro/blob/master/LICENSE)\r\n\r\n#### 使用说明\r\n\r\n1. 使用IDE导入本项目\r\n2. 新建数据库`CREATE DATABASE zb-shiro;`\r\n3. 导入数据库`docs/db/shiro.sql`\r\n4. 修改(`resources/application.yml`)配置文件\r\n   1. 数据库链接属性(可搜索`datasource`或定位到L.15) \r\n   2. redis配置(可搜索`redis`或定位到L.28)\r\n5. 运行项目(三种方式)\r\n   1. 项目根目录下执行`mvn -X clean package -Dmaven.test.skip=true`编译打包，然后执行`java -jar zb-shiro/target/zb-shiro.jar`\r\n   2. 项目根目录下执行`mvn springboot:run`\r\n   3. 直接运行`ShiroBootApplication.java`\r\n6. 浏览器访问`http://localhost:8081`\r\n\r\n**用户密码**\r\n\r\n 账号：admin 密码：123456\r\n\r\n\r\n\r\n\r\n#### 其他开源项目\r\n\r\n[zplayer音乐播放器](https://gitee.com/supperzh/zplayer)\r\n\r\n\r\n#### 图片预览\r\n\r\n![首页](https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/workdest.png?v=1.0)\r\n什么？你没看错，前端模板有很棒的主题风格切换功能！<br/>\r\n![主题切换](https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/control.png?v=1.0)\r\n![用户管理](https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/userlist.png?v=1.0)\r\n![角色管理](https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/rolelist.png?v=1.0)\r\n![角色分配资源](https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/assignpermission.png?v=1.0)\r\n![资源管理](https://gitee.com/supperzh/zb-shiro/raw/master/docs/img/permissionlist.png?v=1.0)', 1, 2, 1, 1, 0, 'http://cdn.nbclass.com/img/blog/19424e4d076b1304f251c53809a671ad.jpg', 1, 'Springboot + shiro权限管理。最精简的shiro上手项目。\r\n基于Spring Boot、Shiro、MyBatis、Redis、thymeleaf等框架，前端使用adminlte模板。\r\n包含：用户管理、角色管理、角色管理、在线用户管理等模块。', NULL, 1, '2018-08-02 12:43:59', '2018-08-02 12:43:59'),
(2, '珍惜幸福，莫负今朝', '1', '郑其锋', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3174188109,3342547861&fm=27&gp=0.jpg', NULL, 1, '<p>珍惜幸福，莫负今朝</p>\r\n<p>　　文/管淑平</p>\r\n<p>　　许多事情，大抵如此，当你拥有的时候不知道它的弥足珍贵，而当你失去了过后却又总是怀念不已。花有重开日，人无再少年。为人者一世，颇为短暂，能迎来今日，当万分知足。过日子也是一样，当以平常心生情味，珍惜幸福，莫负今朝。</p>\r\n<p>　　人生最大的快乐不在于占有什么，而在于追求什么样的过程。</p>\r\n<p>　　在我们的人生旅途中，总会有得失相伴，悲喜相依。而我们也终是在磕磕绊绊里独自成长，终是在风风雨雨里学会历练。四时有更替，季节有轮回，严冬过后暖春必到。常怀乐观之心，总能够发现光明所在，正如耐得住繁华见真淳，守得住云开见月明。幸福就在路上，只要我们有耐心，早晚有一天，我们也会发现。</p>\r\n<p>　　弥尔顿说：“心灵建造了天国，也建造了地狱。”人之一生，背负的东西太多太多。荣华富贵，功名利禄，都是我们想要的，我们若一个也放不下，日久天长，追求的东西多了，我们早晚也会被压得喘不过气来。轻装前行，探索心灵，或许在旅途中我们就能轻轻松松地找寻到我们真正想要守护的东西。有的时候，我们身后拥有的东西多了，我们的思想也自然会跟着变得复杂。天堂和地狱的距离，有时仅是一念，洒脱的人自然放得开，踌躇的人总是被物欲烦着心。删繁就简，潇潇洒洒地活出自己的灿烂人生，在独一无二的人生轨迹里，我用诗意，用文字点缀着每一个平凡而真实的日子，心中觉得已然足够，繁华过后，淡然自来，平凡的日子也是美好的。</p>\r\n<p>　　乐观处世、张弛有度，生活自然充满情趣，有滋也有味。生活在这个世界上，你要为衣、食、住、行去奔忙，你要和各种各样的人打交道，你要应付各种各样的事情。挫折常有，苦难常有，面对充满变数的人生，我们唯一能做的，便是改变我们自己的心态，心有阳光，自然乐观有活力，心是温暖的，又何惧千里冰封与万里雪飘？</p>\r\n<p>　　泰戈尔曾说：“世界之路并没有铺满鲜花，每一步都有荆棘，但是你必须走过那条荆棘路，愉快，微笑！”我们的人生，又何尝不需要这样的人生态度？一路上披荆斩棘，一路上却又总是磕磕绊绊，无风无雨不人生我是知道的，跨过沿途的千沟万壑，也终会迎来前方的康庄大道。心中有希望，也自然会义无反顾地走下去，即使前方山高路太远，我仍然相信苦尽甜会来，相信雨后天自晴，到那时幸福也会不期而遇。</p>\r\n<p>　　幸福就在路上，藏在每一个平凡的日子里。可惜人在年轻的时候，总是太执着，追求了目标，却又忽视了过程中的曼妙风景，在时间的流逝里颇为无奈和烦忧。其实，天下本无事，庸人自扰之。过分地追求结果的完美，只会使得过程变得空洞而乏味，而结果也未必能如你所愿。人生自是有风云得失无常，而能够迎来今日的我们是多么的幸福。昨天已经过去，明天又尚未到来，只有今天是最为真实的。“水去日日流，花落知多少。万事立业在今日，莫待明朝悔今朝！”古语流传千古，是教训也是警醒。</p>\r\n<p>　　若为草木，当欣欣以向荣；若为溪水，当涓涓而始流。人生在世，不如意者十之八九，内心常怀乐观，一切不愉之事也自然会迎刃而解。在内心修篱种菊，总比刻意避开车马喧嚣要更为宁静。结果无望，也不叹息，心有阳光，山河明媚，这一程山水，风景无穷，乐享过程，自得心安。</p>\r\n<p>　　人生犹似一盘无解玲珑棋，与其苦苦思索无解的结局，倒不如好好享受这“下棋”中的快乐。虽深知人生如棋，一着不慎，全盘皆输。是的，人生如棋局，总是充满着变数，人生这场棋，有着太多的未知性，我们只能尽量地走好每一小步，在扑朔迷离中，找寻着希望和生机。或许前一秒你还处于山重水复疑无路的状态，转而后一秒自然而然就迎来柳暗花明又一村的境界，这便是人生棋局的魅力。话语里，本无多大玄机，只觉得，踏踏实实地经营人生，便已经是快乐无限了，不忧昨日，也不期明日，只是安静地充实着今日，潇洒地过着最为真实的自己，已然幸福满满。</p>\r\n<p>　　古希腊诗人荷马曾说过：“过去的事已经过去，过去的事无法弥补。”泰戈尔在《飞鸟集》中这样写道：“只管走过去，不要逗留着去采了花朵来保存，因为一路上，花朵也会继续开放的。”的确，昨日的阳光不再美，昨日的风雨不再大，昨日的光景也移不到今日的画册，不念过去，不畏将来，自己的人生终是自己做主，纵使是风雨阳光也要潇潇洒洒走一回。</p>\r\n<p>　　每一天，凡来尘往，只道寻常。情未老，梦如旧，纵然生活很平凡，也要内心淡雅。柴米油盐酱醋茶的日子也会过得如琴棋书画诗酒花般典雅，只要你内心宁静安然，就连手中的锅碗瓢盆也能够碰撞出诗意的格调。每个人的生活都是五味杂陈的组合，正如咸有咸的妙，淡有淡的美，五味杂陈里，丰盈的终是自己最为纯粹的灵魂，丰盈的终是自己那颗热爱生命，热爱生活的心。以真心换来的幸福感受也是最为牢固的，就像患难之中才能见真情，用真心换来的幸福体验恰如涓涓流水，无声无息里滋润着柔婉的心灵。</p>\r\n<p>　　“若生命是一朵花就应该自然地绽放，散发一缕芬芳于人间；若生命是一棵草就应该自然地生长，不因是一棵草而自悲自叹；若生命是一只蝶，何不翩翩起舞？”梁晓声笔下的生命皆有一份怡然自得、超然洒脱的情致。芸芸众生，既不是翻江倒海的蛟龙，也不是独霸一方的雄狮，我们在苦海里颠簸，我们在丛林里避险，平凡得好似海中的一滴水，好似林中的一片叶。而生命却不因平凡而卑微，人生百态，各有各的容颜，各有各的价值，纵使平凡，也要灿烂绽放！</p>\r\n<p>　　不得不说时光总是太匆匆，伫立于回忆的门槛，只能遥望，而我们却再也回不到最初的原点。没有什么过不去，只是再也回不去。季节是留不住的，是那飞花细雨的优柔；岁月是逃不掉的，是那难以忘却的扑朔与迷离。生活这一首绵长深远的诗歌，有过婉转，也有过曲折，人生的步履，有深有浅，岁月的痕迹，有过成功也有过失败。经年后，再回首，一切都是美好如昔。</p>\r\n<p>　　海子说：“面朝大海，春暖花开。”而我觉得不负今朝，自会幸福美好。不埋怨岁月苍老，不执迷爱恨情仇，也不贪恋功名利禄，任我两袖一挥，也能有清风明月，任我洒脱一笑，也能有无限山河。</p>\r\n<p>　　归去来兮，尘埃落定，日子这般美好，而人最是安然，择一处净土，辟一方诗意，修身或是修心，写文或是听曲，也都是不错的选择。我只愿岁月静好，时光如旧，我只愿珍惜幸福美好，莫负今朝。</p>\r\n<p>　　花有重开日，人无再少年，生活之美，藏匿于每一个平凡的日子，珍惜幸福，莫负今朝，你我需要用心对待。　　</p>\r\n<p>　　文章落笔于2017年08月21日</p>\r\n<p>　　文章原创作者：管淑平</p>\r\n', '珍惜幸福，莫负今朝\r\n\r\n　　文/管淑平\r\n\r\n　　许多事情，大抵如此，当你拥有的时候不知道它的弥足珍贵，而当你失去了过后却又总是怀念不已。花有重开日，人无再少年。为人者一世，颇为短暂，能迎来今日，当万分知足。过日子也是一样，当以平常心生情味，珍惜幸福，莫负今朝。\r\n\r\n　　人生最大的快乐不在于占有什么，而在于追求什么样的过程。\r\n\r\n　　在我们的人生旅途中，总会有得失相伴，悲喜相依。而我们也终是在磕磕绊绊里独自成长，终是在风风雨雨里学会历练。四时有更替，季节有轮回，严冬过后暖春必到。常怀乐观之心，总能够发现光明所在，正如耐得住繁华见真淳，守得住云开见月明。幸福就在路上，只要我们有耐心，早晚有一天，我们也会发现。\r\n\r\n　　弥尔顿说：“心灵建造了天国，也建造了地狱。”人之一生，背负的东西太多太多。荣华富贵，功名利禄，都是我们想要的，我们若一个也放不下，日久天长，追求的东西多了，我们早晚也会被压得喘不过气来。轻装前行，探索心灵，或许在旅途中我们就能轻轻松松地找寻到我们真正想要守护的东西。有的时候，我们身后拥有的东西多了，我们的思想也自然会跟着变得复杂。天堂和地狱的距离，有时仅是一念，洒脱的人自然放得开，踌躇的人总是被物欲烦着心。删繁就简，潇潇洒洒地活出自己的灿烂人生，在独一无二的人生轨迹里，我用诗意，用文字点缀着每一个平凡而真实的日子，心中觉得已然足够，繁华过后，淡然自来，平凡的日子也是美好的。\r\n\r\n　　乐观处世、张弛有度，生活自然充满情趣，有滋也有味。生活在这个世界上，你要为衣、食、住、行去奔忙，你要和各种各样的人打交道，你要应付各种各样的事情。挫折常有，苦难常有，面对充满变数的人生，我们唯一能做的，便是改变我们自己的心态，心有阳光，自然乐观有活力，心是温暖的，又何惧千里冰封与万里雪飘？\r\n\r\n　　泰戈尔曾说：“世界之路并没有铺满鲜花，每一步都有荆棘，但是你必须走过那条荆棘路，愉快，微笑！”我们的人生，又何尝不需要这样的人生态度？一路上披荆斩棘，一路上却又总是磕磕绊绊，无风无雨不人生我是知道的，跨过沿途的千沟万壑，也终会迎来前方的康庄大道。心中有希望，也自然会义无反顾地走下去，即使前方山高路太远，我仍然相信苦尽甜会来，相信雨后天自晴，到那时幸福也会不期而遇。\r\n\r\n　　幸福就在路上，藏在每一个平凡的日子里。可惜人在年轻的时候，总是太执着，追求了目标，却又忽视了过程中的曼妙风景，在时间的流逝里颇为无奈和烦忧。其实，天下本无事，庸人自扰之。过分地追求结果的完美，只会使得过程变得空洞而乏味，而结果也未必能如你所愿。人生自是有风云得失无常，而能够迎来今日的我们是多么的幸福。昨天已经过去，明天又尚未到来，只有今天是最为真实的。“水去日日流，花落知多少。万事立业在今日，莫待明朝悔今朝！”古语流传千古，是教训也是警醒。\r\n\r\n　　若为草木，当欣欣以向荣；若为溪水，当涓涓而始流。人生在世，不如意者十之八九，内心常怀乐观，一切不愉之事也自然会迎刃而解。在内心修篱种菊，总比刻意避开车马喧嚣要更为宁静。结果无望，也不叹息，心有阳光，山河明媚，这一程山水，风景无穷，乐享过程，自得心安。\r\n\r\n　　人生犹似一盘无解玲珑棋，与其苦苦思索无解的结局，倒不如好好享受这“下棋”中的快乐。虽深知人生如棋，一着不慎，全盘皆输。是的，人生如棋局，总是充满着变数，人生这场棋，有着太多的未知性，我们只能尽量地走好每一小步，在扑朔迷离中，找寻着希望和生机。或许前一秒你还处于山重水复疑无路的状态，转而后一秒自然而然就迎来柳暗花明又一村的境界，这便是人生棋局的魅力。话语里，本无多大玄机，只觉得，踏踏实实地经营人生，便已经是快乐无限了，不忧昨日，也不期明日，只是安静地充实着今日，潇洒地过着最为真实的自己，已然幸福满满。\r\n\r\n　　古希腊诗人荷马曾说过：“过去的事已经过去，过去的事无法弥补。”泰戈尔在《飞鸟集》中这样写道：“只管走过去，不要逗留着去采了花朵来保存，因为一路上，花朵也会继续开放的。”的确，昨日的阳光不再美，昨日的风雨不再大，昨日的光景也移不到今日的画册，不念过去，不畏将来，自己的人生终是自己做主，纵使是风雨阳光也要潇潇洒洒走一回。\r\n\r\n　　每一天，凡来尘往，只道寻常。情未老，梦如旧，纵然生活很平凡，也要内心淡雅。柴米油盐酱醋茶的日子也会过得如琴棋书画诗酒花般典雅，只要你内心宁静安然，就连手中的锅碗瓢盆也能够碰撞出诗意的格调。每个人的生活都是五味杂陈的组合，正如咸有咸的妙，淡有淡的美，五味杂陈里，丰盈的终是自己最为纯粹的灵魂，丰盈的终是自己那颗热爱生命，热爱生活的心。以真心换来的幸福感受也是最为牢固的，就像患难之中才能见真情，用真心换来的幸福体验恰如涓涓流水，无声无息里滋润着柔婉的心灵。\r\n\r\n　　“若生命是一朵花就应该自然地绽放，散发一缕芬芳于人间；若生命是一棵草就应该自然地生长，不因是一棵草而自悲自叹；若生命是一只蝶，何不翩翩起舞？”梁晓声笔下的生命皆有一份怡然自得、超然洒脱的情致。芸芸众生，既不是翻江倒海的蛟龙，也不是独霸一方的雄狮，我们在苦海里颠簸，我们在丛林里避险，平凡得好似海中的一滴水，好似林中的一片叶。而生命却不因平凡而卑微，人生百态，各有各的容颜，各有各的价值，纵使平凡，也要灿烂绽放！\r\n\r\n　　不得不说时光总是太匆匆，伫立于回忆的门槛，只能遥望，而我们却再也回不到最初的原点。没有什么过不去，只是再也回不去。季节是留不住的，是那飞花细雨的优柔；岁月是逃不掉的，是那难以忘却的扑朔与迷离。生活这一首绵长深远的诗歌，有过婉转，也有过曲折，人生的步履，有深有浅，岁月的痕迹，有过成功也有过失败。经年后，再回首，一切都是美好如昔。\r\n\r\n　　海子说：“面朝大海，春暖花开。”而我觉得不负今朝，自会幸福美好。不埋怨岁月苍老，不执迷爱恨情仇，也不贪恋功名利禄，任我两袖一挥，也能有清风明月，任我洒脱一笑，也能有无限山河。\r\n\r\n　　归去来兮，尘埃落定，日子这般美好，而人最是安然，择一处净土，辟一方诗意，修身或是修心，写文或是听曲，也都是不错的选择。我只愿岁月静好，时光如旧，我只愿珍惜幸福美好，莫负今朝。\r\n\r\n　　花有重开日，人无再少年，生活之美，藏匿于每一个平凡的日子，珍惜幸福，莫负今朝，你我需要用心对待。　　\r\n\r\n　　文章落笔于2017年08月21日\r\n\r\n　　文章原创作者：管淑平', 1, 4, 1, 0, 0, '', 0, '珍惜幸福，莫负今朝', NULL, 1, '2018-09-26 12:09:07', '2018-09-26 12:09:07'),
(3, '开启MySQL远程访问权限', '1', '郑其锋', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1537945298631&di=a3de216d98150542a8a90aae617b7332&imgtype=jpg&src=http%3A%2F%2Fimg4.imgtn.bdimg.com%2Fit%2Fu%3D1421471404%2C1366921536%26fm%3D214%26gp%3D0.jpg', NULL, 1, '<h3 id="-mysql-">开启MySQL远程访问权限 允许远程连接</h3>\r\n<hr>\r\n<p>1、登陆mysql数据库    </p>\r\n<pre><code><span class="hljs-attribute">mysql</span> -u root -p\r\n</code></pre><p>   查看user表</p>\r\n<pre><code> mysql&gt; use mysql;\r\n Database changed\r\n mysql&gt; select host,user,password from user;\r\n +--------------+------+-------------------------------------------+\r\n <span class="hljs-params">| host         |</span> user <span class="hljs-params">| password                                  |</span>\r\n +--------------+------+-------------------------------------------+\r\n <span class="hljs-params">| localhost    |</span> root <span class="hljs-params">| *A731AEBFB621E354CD41BAF207D884A609E81F5E |</span>\r\n <span class="hljs-params">| 192.168.1.1 |</span> root <span class="hljs-params">| *A731AEBFB621E354CD41BAF207D884A609E81F5E |</span>\r\n +--------------+------+-------------------------------------------+\r\n <span class="hljs-number">2</span> rows <span class="hljs-keyword">in</span> set (<span class="hljs-number">0</span>.<span class="hljs-number">00</span> sec)\r\n</code></pre><hr>\r\n<p> 可以看到在user表中已创建的root用户。host字段表示登录的主机，其值可以用IP，也可用主机名，</p>\r\n<ul>\r\n<li>有时想用本地IP登录，那么可以将以上的Host值改为自己的Ip即可。</li>\r\n</ul>\r\n<p>2、实现远程连接(授权法)</p>\r\n<p>   将host字段的值改为%就表示在任何客户端机器上能以root用户登录到mysql服务器，建议在开发时设为%。   </p>\r\n<pre><code><span class="hljs-keyword">update</span> <span class="hljs-keyword">user</span> <span class="hljs-keyword">set</span> host = ’%’ <span class="hljs-keyword">where</span> <span class="hljs-keyword">user</span> = ’root’;\r\n</code></pre><p>   将权限改为ALL PRIVILEGES</p>\r\n<pre><code>mysql&gt; use mysql;\r\nDatabase changed\r\nmysql&gt; grant all privileges  on *.* to root@<span class="hljs-string">''%''</span> identified by <span class="hljs-string">"password"</span>;\r\nQuery OK, <span class="hljs-number">0</span> rows affected (<span class="hljs-number">0</span>.<span class="hljs-number">00</span> sec)\r\n\r\nmysql&gt; flush privileges;\r\nQuery OK, <span class="hljs-number">0</span> rows affected (<span class="hljs-number">0</span>.<span class="hljs-number">00</span> sec)\r\n\r\nmysql&gt; select host,user,password from user;\r\n+--------------+------+-------------------------------------------+\r\n<span class="hljs-params">| host         |</span> user <span class="hljs-params">| password                                  |</span>\r\n+--------------+------+-------------------------------------------+\r\n<span class="hljs-params">| localhost    |</span> root <span class="hljs-params">| *A731AEBFB621E354CD41BAF207D884A609E81F5E |</span>\r\n<span class="hljs-params">| 192.168.1.1 |</span> root <span class="hljs-params">| *A731AEBFB621E354CD41BAF207D884A609E81F5E |</span>\r\n<span class="hljs-params">| %            |</span> root <span class="hljs-params">| *A731AEBFB621E354CD41BAF207D884A609E81F5E |</span>\r\n+--------------+------+-------------------------------------------+\r\n<span class="hljs-number">3</span> rows <span class="hljs-keyword">in</span> set (<span class="hljs-number">0</span>.<span class="hljs-number">00</span> sec)\r\n</code></pre><p>这样机器就可以以用户名root密码root远程访问该机器上的MySql.</p>\r\n<p>3、实现远程连接（改表法）</p>\r\n<pre><code><span class="hljs-keyword">use</span> mysql;\r\n\r\n<span class="hljs-keyword">update</span> <span class="hljs-keyword">user</span> <span class="hljs-keyword">set</span> host = <span class="hljs-string">''%''</span> <span class="hljs-keyword">where</span> <span class="hljs-keyword">user</span> = <span class="hljs-string">''root''</span>;\r\n</code></pre><p>这样在远端就可以通过root用户访问Mysql.</p>\r\n', '### 开启MySQL远程访问权限 允许远程连接\r\n-----\r\n\r\n1、登陆mysql数据库    \r\n\r\n    mysql -u root -p\r\n\r\n   查看user表\r\n   \r\n	 mysql> use mysql;\r\n	 Database changed\r\n     mysql> select host,user,password from user;\r\n     +--------------+------+-------------------------------------------+\r\n     | host         | user | password                                  |\r\n     +--------------+------+-------------------------------------------+\r\n     | localhost    | root | *A731AEBFB621E354CD41BAF207D884A609E81F5E |\r\n     | 192.168.1.1 | root | *A731AEBFB621E354CD41BAF207D884A609E81F5E |\r\n     +--------------+------+-------------------------------------------+\r\n     2 rows in set (0.00 sec)\r\n	 \r\n-----\r\n\r\n 可以看到在user表中已创建的root用户。host字段表示登录的主机，其值可以用IP，也可用主机名，\r\n\r\n* 有时想用本地IP登录，那么可以将以上的Host值改为自己的Ip即可。\r\n\r\n2、实现远程连接(授权法)\r\n\r\n   将host字段的值改为%就表示在任何客户端机器上能以root用户登录到mysql服务器，建议在开发时设为%。   \r\n   \r\n	update user set host = ’%’ where user = ’root’;\r\n\r\n   将权限改为ALL PRIVILEGES\r\n\r\n	mysql> use mysql;\r\n	Database changed\r\n	mysql> grant all privileges  on *.* to root@''%'' identified by "password";\r\n    Query OK, 0 rows affected (0.00 sec)\r\n\r\n	mysql> flush privileges;\r\n	Query OK, 0 rows affected (0.00 sec)\r\n\r\n	mysql> select host,user,password from user;\r\n	+--------------+------+-------------------------------------------+\r\n	| host         | user | password                                  |\r\n	+--------------+------+-------------------------------------------+\r\n	| localhost    | root | *A731AEBFB621E354CD41BAF207D884A609E81F5E |\r\n	| 192.168.1.1 | root | *A731AEBFB621E354CD41BAF207D884A609E81F5E |\r\n	| %            | root | *A731AEBFB621E354CD41BAF207D884A609E81F5E |\r\n	+--------------+------+-------------------------------------------+\r\n	3 rows in set (0.00 sec)\r\n\r\n这样机器就可以以用户名root密码root远程访问该机器上的MySql.\r\n\r\n3、实现远程连接（改表法）\r\n\r\n	use mysql;\r\n\r\n	update user set host = ''%'' where user = ''root'';\r\n\r\n这样在远端就可以通过root用户访问Mysql.', 1, 2, 1, 1, 0, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1537945298631&di=a3de216d98150542a8a90aae617b7332&imgtype=jpg&src=http%3A%2F%2Fimg4.imgtn.bdimg.com%2Fit%2Fu%3D1421471404%2C1366921536%26fm%3D214%26gp%3D0.jpg', 0, '开启MySQL远程访问权限', NULL, 1, '2018-09-26 12:14:25', '2018-09-26 12:14:25'),
(4, 'IDEA一些简单实用设置', '1', '郑其锋', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2908832736,1830213404&fm=26&gp=0.jpg', NULL, 1, '<ul>\r\n<li><h5 id="-1-"><em>1. 窗口复位</em></h5>\r\n  <img src="https://github.com/JAA1995/test/blob/master/9.png?raw=true" alt="复位窗口"></li>\r\n</ul>\r\n', '* ##### *1. 窗口复位*\r\n	![复位窗口](https://github.com/JAA1995/test/blob/master/9.png?raw=true)', 0, 3, 1, 1, 0, '', 1, 'IDEA一些简单实用设置', NULL, 0, '2018-09-26 13:30:29', '2018-09-26 13:30:29'),
(5, 'github提交时出现 push declined due to email privacy restrictions', '1', '郑其锋', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=438783028,4249689305&fm=27&gp=0.jpg', NULL, 1, '<pre><code>github提交时会出现<span class="hljs-keyword">push</span> declined due to email privacy restrictions\r\n</code></pre><hr>\r\n<p>   <img src="https://upload-images.jianshu.io/upload_images/5711105-e914c34ed568da3d.JPG?imageMogr2/auto-orient/strip%7CimageView2/2/w/736/format/webp" alt=""></p>\r\n<hr>\r\n<pre><code>可以通过以下方式解决问题，进入我的github主页点击Settings\r\n</code></pre><hr>\r\n<p> <img src="https://upload-images.jianshu.io/upload_images/5711105-3b2546e8ec2704c2.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/283/format/webp" alt=""></p>\r\n<hr>\r\n<pre><code>然后点击左边的Email,可以找到红圈所示的前面的复选框，取消掉即可，也就是不打勾状态。之后就可以发现可以正常<span class="hljs-keyword">push</span>\r\n</code></pre><hr>\r\n<p>   <img src="https://upload-images.jianshu.io/upload_images/5711105-b03327af99f989e5.JPG?imageMogr2/auto-orient/strip%7CimageView2/2/w/1000/format/webp" alt=""></p>\r\n<hr>\r\n', '```\r\ngithub提交时会出现push declined due to email privacy restrictions\r\n```\r\n\r\n-----\r\n\r\n   ![](https://upload-images.jianshu.io/upload_images/5711105-e914c34ed568da3d.JPG?imageMogr2/auto-orient/strip%7CimageView2/2/w/736/format/webp)\r\n   \r\n-----\r\n```\r\n可以通过以下方式解决问题，进入我的github主页点击Settings\r\n```\r\n\r\n-----\r\n ![](https://upload-images.jianshu.io/upload_images/5711105-3b2546e8ec2704c2.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/283/format/webp)\r\n \r\n-----\r\n\r\n```\r\n然后点击左边的Email,可以找到红圈所示的前面的复选框，取消掉即可，也就是不打勾状态。之后就可以发现可以正常push\r\n```\r\n\r\n-----\r\n   ![](https://upload-images.jianshu.io/upload_images/5711105-b03327af99f989e5.JPG?imageMogr2/auto-orient/strip%7CimageView2/2/w/1000/format/webp)\r\n   \r\n-----\r\n', 0, 5, 1, 1, 0, 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=438783028,4249689305&fm=27&gp=0.jpg', 1, 'Git 之路的一些问题', NULL, 1, '2018-09-27 00:31:41', '2018-09-27 00:31:41'),
(6, 'Git 本地提交项目到远程仓库', '1', '郑其锋', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3887608255,908401438&fm=27&gp=0.jpg', NULL, 1, '<pre><code>首先电脑安装 &gt; &gt; Git Bash\r\n</code></pre><p><img src="https://github.com/JAA1995/test/blob/master/8.png?raw=true" alt=""></p>\r\n<hr>\r\n<pre><code> 在需要提交远程仓库的文件夹，右击鼠标，点击  &gt; &gt; Git Bash Here 首先输入\r\n</code></pre><pre><code><span class="hljs-attribute">git</span> init\r\n</code></pre><p><img src="https://github.com/JAA1995/test/blob/master/1.png?raw=true" alt=""></p>\r\n<hr>\r\n<pre><code>git <span class="hljs-keyword">add</span> .  （将改动添加到暂存区）\r\n</code></pre><p><img src="https://github.com/JAA1995/test/blob/master/2.png?raw=true" alt=""></p>\r\n<hr>\r\n<pre><code><span class="hljs-attribute">git</span> commit -m <span class="hljs-string">"第一次提交"</span>   (注意填写中文时注意符号格式，必须是英文格式)\r\n</code></pre><p><img src="https://github.com/JAA1995/test/blob/master/3.png?raw=true" alt="这是个错误的格式"></p>\r\n<p><img src="https://github.com/JAA1995/test/blob/master/4.png?raw=true" alt=""></p>\r\n<hr>\r\n<pre><code>git remote <span class="hljs-keyword">add</span> origin https:<span class="hljs-comment">//github.com/·····（本地与你的远程仓库绑定，前提你要先创建好）</span>\r\n</code></pre><p><img src="https://github.com/JAA1995/test/blob/master/5.png?raw=true" alt=""></p>\r\n<hr>\r\n<pre><code><span class="hljs-attribute">git</span> push -u origin master   ( 将本地更改推送到远程master分支)\r\n</code></pre><p><img src="https://github.com/JAA1995/test/blob/master/6.png?raw=true" alt=""></p>\r\n<hr>\r\n<pre><code>登录Git 创建仓库\r\n</code></pre><p><img src="https://github.com/JAA1995/test/blob/master/7.png?raw=true" alt=""></p>\r\n<hr>\r\n<pre><code>如果在github的remote上已经有了文件，会出现错误。此时应当先pull一下，即：\r\n</code></pre><pre><code><span class="hljs-attribute">git</span> pull origin master\r\n</code></pre><pre><code>然后再进行\r\n</code></pre><pre><code><span class="hljs-attribute">git</span> push origin master\r\n</code></pre><p>----------------------------------------------------华丽的分割线----------------------------------------------------</p>\r\n', '```\r\n首先电脑安装 > > Git Bash\r\n```\r\n![](https://github.com/JAA1995/test/blob/master/8.png?raw=true)\r\n\r\n-----\r\n\r\n\r\n```\r\n 在需要提交远程仓库的文件夹，右击鼠标，点击  > > Git Bash Here 首先输入\r\n```\r\n	git init\r\n![](https://github.com/JAA1995/test/blob/master/1.png?raw=true)\r\n\r\n-----\r\n\r\n\r\n\r\n    git add .  （将改动添加到暂存区）\r\n![](https://github.com/JAA1995/test/blob/master/2.png?raw=true)\r\n\r\n-----\r\n\r\n\r\n\r\n	git commit -m "第一次提交"   (注意填写中文时注意符号格式，必须是英文格式)\r\n![这是个错误的格式](https://github.com/JAA1995/test/blob/master/3.png?raw=true)\r\n\r\n![](https://github.com/JAA1995/test/blob/master/4.png?raw=true)\r\n\r\n-----\r\n\r\n\r\n\r\n	git remote add origin https://github.com/·····（本地与你的远程仓库绑定，前提你要先创建好）\r\n![](https://github.com/JAA1995/test/blob/master/5.png?raw=true)\r\n\r\n-----\r\n\r\n\r\n\r\n	git push -u origin master   ( 将本地更改推送到远程master分支)\r\n![](https://github.com/JAA1995/test/blob/master/6.png?raw=true)\r\n\r\n-----\r\n\r\n\r\n	\r\n	登录Git 创建仓库\r\n![](https://github.com/JAA1995/test/blob/master/7.png?raw=true)\r\n\r\n-----\r\n\r\n\r\n	\r\n```\r\n如果在github的remote上已经有了文件，会出现错误。此时应当先pull一下，即：\r\n```\r\n	git pull origin master\r\n```\r\n然后再进行\r\n```\r\n	git push origin master\r\n\r\n----------------------------------------------------华丽的分割线----------------------------------------------------', 0, 2, 1, 0, 0, '', 1, 'Git的一些骚操作', NULL, 1, '2018-09-27 08:37:12', '2018-09-27 08:37:12'),
(7, 'github上传时出现error: src refspec master does not match any解决办法', '1', '郑其锋', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3887608255,908401438&fm=27&gp=0.jpg', NULL, 1, '<blockquote>\r\n<p>原因分析：</p>\r\n<p>引起该错误的原因是，目录中没有文件，空目录是不能提交上去的</p>\r\n</blockquote>\r\n<hr>\r\n<pre><code>解决办法\r\n</code></pre><pre><code>touch README\r\ngit add README\r\ngit <span class="hljs-keyword">commit</span> -m <span class="hljs-string">"提交说明"</span>\r\ngit push -u origin <span class="hljs-keyword">master</span>\r\n</code></pre><p><a href="http://www.open-open.com/lib/view/open1366080269265.html">参考链接</a></p>\r\n', '> 原因分析：\r\n> \r\n> 引起该错误的原因是，目录中没有文件，空目录是不能提交上去的\r\n\r\n-----\r\n```\r\n解决办法\r\n```\r\n	touch README\r\n	git add README\r\n	git commit -m "提交说明"\r\n	git push -u origin master\r\n	\r\n[参考链接](http://www.open-open.com/lib/view/open1366080269265.html)', 0, 5, 1, 0, 0, '', 1, 'Git 的一些坑', NULL, 1, '2018-09-27 09:01:14', '2018-09-27 09:01:14'),
(8, '开心一刻', '1', '郑其锋', 'https://i1.go2yd.com/image.php?url=0K8h0hAzOr', NULL, 1, '<hr>\r\n<h4 id="1-">1. 遛二哈，内急，去公园上厕所。 我家二哈听话，我让它在蹲位门外等我。好了之后，我一摸口袋惊呼：没纸了！我的纸巾放在二哈身上的小包包里。于是我开门叫二哈进来，我拿纸。我出去后，打扫厕所的大爷一脸鄙夷：你没纸我有，你叫狗进去干嘛？</h4>\r\n<hr>\r\n<p><img src="https://i1.go2yd.com/image.php?url=0K8h0hAzOr" alt=""></p>\r\n<hr>\r\n<h4 id="2-8-7-">2.一天，8个朋友聚在一起吃饭，席间上了一道红烧熊掌，朋友们相互推让，谁也不好意思先吃。这时候不知谁把灯关了，然后就听到一声惨叫，大家打开灯一看，只见熊掌上有一只手，手上插了7把叉子！</h4>\r\n<h4 id="3-10-">3.年轻人：大师，我这几天为自己定了一个小目标，该目标为……（省略10分钟），可是我老是达不到，我现在情绪很低落，到底怎么办？老者：你把外面那颗苹果树上的苹果给我取一颗下来。年轻人于是跑到苹果树下，奋力跳起来，终于在十分钟后拿到了苹果。年轻人：大师，我明白了，您是想跟我说目标就要像摘取这颗苹果一样，需要将目标放在需要努力追求才能得到的地方吗？我想清楚了，谢谢大师！大师：（操起扫把打到年轻人的头上）打死你个龟孙，说你的疑惑就说了十分钟，让你摘一个苹果也要那么久，弄得我快渴了！</h4>\r\n<p><img src="https://i1.go2yd.com/image.php?url=0K8h0hGLUv" alt=""></p>\r\n<hr>\r\n<h4 id="4-">4.二货女友刚学了驾照，然后迫不及待买了新车。然后她把车尾贴满了实习和新手驾驶。今天回家告诉我说：“贴的多就是好用，后面的车都离的老远了，马路就跟自己家的一样，想怎么开就怎么开。”</h4>\r\n<hr>\r\n<h4 id="5-">5.办公室一大姐穿了一条很时髦的裙子来上班，看的姐姐我都没心情上班了。于是我走了过去对大姐说：“你真的太会打扮，我一直也想买一条来着。大姐悠悠的告诉我，这是我十几二十年前的裙子了，刚从尘封多年的箱子里解开封印。大姐你真幽默，别逗我了。</h4>\r\n<hr>\r\n<p><img src="https://i1.go2yd.com/image.php?url=0K8h0hrHf3" alt=""></p>\r\n<hr>\r\n<h4 id="6-">6.小偷死后见到了上帝，上帝说：你不能进天堂 ，因为你偷窃过，虽然是为了给你的妻子治病。小偷说：下地狱我不怕，我想知道我的妻子在哪里？上帝说： 她在地狱……小偷愤怒的说： 为什么 ？我的妻子是那么好的人？她为什么下地狱？上帝说：她问我你死后在哪里 她要跟你在一起。 她说 有你的地方 才是 天堂！她才幸福！！！</h4>\r\n<hr>\r\n<h4 id="7-">7.女同事来例假没带纸，拿了经理桌上的，没想到居然……总经理回来就怒了，说：那卷纸下面压了张银行卡，是老子的私房卡，女同事：…………</h4>\r\n<hr>\r\n', '\r\n\r\n-----\r\n\r\n#### 	1. 遛二哈，内急，去公园上厕所。 我家二哈听话，我让它在蹲位门外等我。好了之后，我一摸口袋惊呼：没纸了！我的纸巾放在二哈身上的小包包里。于是我开门叫二哈进来，我拿纸。我出去后，打扫厕所的大爷一脸鄙夷：你没纸我有，你叫狗进去干嘛？\r\n\r\n-----\r\n\r\n\r\n![](https://i1.go2yd.com/image.php?url=0K8h0hAzOr)\r\n\r\n-----\r\n\r\n\r\n####   2.一天，8个朋友聚在一起吃饭，席间上了一道红烧熊掌，朋友们相互推让，谁也不好意思先吃。这时候不知谁把灯关了，然后就听到一声惨叫，大家打开灯一看，只见熊掌上有一只手，手上插了7把叉子！\r\n####   3.年轻人：大师，我这几天为自己定了一个小目标，该目标为……（省略10分钟），可是我老是达不到，我现在情绪很低落，到底怎么办？老者：你把外面那颗苹果树上的苹果给我取一颗下来。年轻人于是跑到苹果树下，奋力跳起来，终于在十分钟后拿到了苹果。年轻人：大师，我明白了，您是想跟我说目标就要像摘取这颗苹果一样，需要将目标放在需要努力追求才能得到的地方吗？我想清楚了，谢谢大师！大师：（操起扫把打到年轻人的头上）打死你个龟孙，说你的疑惑就说了十分钟，让你摘一个苹果也要那么久，弄得我快渴了！\r\n![](https://i1.go2yd.com/image.php?url=0K8h0hGLUv)\r\n\r\n-----\r\n\r\n#### 4.二货女友刚学了驾照，然后迫不及待买了新车。然后她把车尾贴满了实习和新手驾驶。今天回家告诉我说：“贴的多就是好用，后面的车都离的老远了，马路就跟自己家的一样，想怎么开就怎么开。”\r\n\r\n-----\r\n\r\n\r\n\r\n#### 5.办公室一大姐穿了一条很时髦的裙子来上班，看的姐姐我都没心情上班了。于是我走了过去对大姐说：“你真的太会打扮，我一直也想买一条来着。大姐悠悠的告诉我，这是我十几二十年前的裙子了，刚从尘封多年的箱子里解开封印。大姐你真幽默，别逗我了。\r\n\r\n-----\r\n\r\n![](https://i1.go2yd.com/image.php?url=0K8h0hrHf3)\r\n\r\n-----\r\n\r\n#### 6.小偷死后见到了上帝，上帝说：你不能进天堂 ，因为你偷窃过，虽然是为了给你的妻子治病。小偷说：下地狱我不怕，我想知道我的妻子在哪里？上帝说： 她在地狱……小偷愤怒的说： 为什么 ？我的妻子是那么好的人？她为什么下地狱？上帝说：她问我你死后在哪里 她要跟你在一起。 她说 有你的地方 才是 天堂！她才幸福！！！\r\n\r\n-----\r\n\r\n\r\n\r\n#### 7.女同事来例假没带纸，拿了经理桌上的，没想到居然……总经理回来就怒了，说：那卷纸下面压了张银行卡，是老子的私房卡，女同事：…………\r\n\r\n-----\r\n\r\n', 0, 4, 1, 0, 0, '', 0, '开心一笑', NULL, 0, '2018-09-27 14:06:16', '2018-09-27 14:06:16');

-- --------------------------------------------------------

--
-- 表的结构 `biz_article_look`
--

CREATE TABLE IF NOT EXISTS `biz_article_look` (
  `id` int(20) unsigned NOT NULL,
  `article_id` int(20) unsigned NOT NULL COMMENT '文章ID',
  `user_id` varchar(20) DEFAULT NULL COMMENT '已登录用户ID',
  `user_ip` varchar(50) DEFAULT NULL COMMENT '用户IP',
  `look_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '浏览时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `biz_article_look`
--

INSERT INTO `biz_article_look` (`id`, `article_id`, `user_id`, `user_ip`, `look_time`, `create_time`, `update_time`) VALUES
(1, 1, NULL, '0:0:0:0:0:0:0:1', '2018-09-13 23:30:25', '2018-09-13 23:30:25', '2018-09-13 23:30:25'),
(2, 1, NULL, '0:0:0:0:0:0:0:1', '2018-09-19 16:56:59', '2018-09-19 16:56:59', '2018-09-19 16:56:59'),
(3, 1, NULL, '0:0:0:0:0:0:0:1', '2018-09-20 00:52:15', '2018-09-20 00:52:15', '2018-09-20 00:52:15'),
(4, 3, NULL, '192.168.114.1', '2018-09-26 12:14:42', '2018-09-26 12:14:42', '2018-09-26 12:14:42'),
(5, 1, NULL, '192.168.114.1', '2018-09-26 12:16:16', '2018-09-26 12:16:16', '2018-09-26 12:16:16'),
(6, 4, NULL, '192.168.114.1', '2018-09-26 13:30:34', '2018-09-26 13:30:34', '2018-09-26 13:30:34'),
(7, 3, NULL, '192.168.114.1', '2018-09-26 13:50:24', '2018-09-26 13:50:24', '2018-09-26 13:50:24'),
(8, 3, NULL, '192.168.114.1', '2018-09-26 15:00:08', '2018-09-26 15:00:08', '2018-09-26 15:00:08'),
(9, 4, NULL, '192.168.114.1', '2018-09-26 15:01:47', '2018-09-26 15:01:47', '2018-09-26 15:01:47'),
(10, 5, NULL, '192.168.114.1', '2018-09-27 00:31:49', '2018-09-27 00:31:49', '2018-09-27 00:31:49'),
(11, 5, NULL, '192.168.114.1', '2018-09-27 08:37:15', '2018-09-27 08:37:15', '2018-09-27 08:37:15'),
(12, 6, NULL, '192.168.114.1', '2018-09-27 08:37:58', '2018-09-27 08:37:58', '2018-09-27 08:37:58'),
(13, 1, NULL, '112.32.82.89', '2018-09-27 13:52:50', '2018-09-27 13:52:50', '2018-09-27 13:52:50'),
(14, 3, NULL, '112.32.82.89', '2018-09-27 15:40:56', '2018-09-27 15:40:56', '2018-09-27 15:40:56'),
(15, 1, NULL, '112.32.82.89', '2018-09-27 15:41:03', '2018-09-27 15:41:03', '2018-09-27 15:41:03');

-- --------------------------------------------------------

--
-- 表的结构 `biz_article_tags`
--

CREATE TABLE IF NOT EXISTS `biz_article_tags` (
  `id` int(11) unsigned NOT NULL,
  `tag_id` int(11) unsigned NOT NULL COMMENT '标签表主键',
  `article_id` int(11) unsigned NOT NULL COMMENT '文章ID',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `biz_article_tags`
--

INSERT INTO `biz_article_tags` (`id`, `tag_id`, `article_id`, `create_time`, `update_time`) VALUES
(11, 2, 1, '2018-09-26 12:16:57', '2018-09-26 12:16:57'),
(12, 3, 1, '2018-09-26 12:16:57', '2018-09-26 12:16:57'),
(13, 4, 1, '2018-09-26 12:16:57', '2018-09-26 12:16:57'),
(14, 2, 3, '2018-09-26 12:17:07', '2018-09-26 12:17:07'),
(29, 6, 6, '2018-09-27 09:08:51', '2018-09-27 09:08:51'),
(30, 6, 7, '2018-09-27 09:13:15', '2018-09-27 09:13:15'),
(34, 2, 4, '2018-09-27 13:48:10', '2018-09-27 13:48:10'),
(35, 5, 8, '2018-09-27 14:06:16', '2018-09-27 14:06:16'),
(36, 2, 5, '2018-09-27 15:30:23', '2018-09-27 15:30:23'),
(37, 5, 2, '2018-09-27 15:42:20', '2018-09-27 15:42:20');

-- --------------------------------------------------------

--
-- 表的结构 `biz_category`
--

CREATE TABLE IF NOT EXISTS `biz_category` (
  `id` int(11) unsigned NOT NULL,
  `pid` int(11) unsigned DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '文章类型名',
  `description` varchar(200) DEFAULT NULL COMMENT '类型介绍',
  `sort` int(10) DEFAULT NULL COMMENT '排序',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '是否可用',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `biz_category`
--

INSERT INTO `biz_category` (`id`, `pid`, `name`, `description`, `sort`, `icon`, `status`, `create_time`, `update_time`) VALUES
(1, 0, '前端技术', '主要收集、整理的基础前端类文章，包括JS、jQuery和CSS等Web开发所需的基础的文章总结', 1, 'fa fa-css3', 1, '2018-01-14 21:34:54', '2018-07-25 17:57:50'),
(2, 0, '后端技术', '网站中记录的后端类文章，包括Java、SSM、MySQL和其他在日常工作学习中所用的后端技术', 2, 'fa fa-coffee', 1, '2018-01-14 21:34:57', '2018-01-14 21:34:57'),
(3, 0, '其他文章', '记录网站建设以及日常工作、学习中的闲言碎语', 5, 'fa fa-folder-open-o', 1, '2018-01-20 22:28:03', '2018-09-27 09:12:54'),
(4, 0, '生活记', '记录个人生活等文章', 3, NULL, 1, '2018-08-02 11:20:26', '2018-08-02 11:21:01'),
(5, 0, '版本控制', '版本控制系统  Git svn 等', 4, NULL, 1, '2018-09-27 09:11:52', '2018-09-27 09:12:03');

-- --------------------------------------------------------

--
-- 表的结构 `biz_comment`
--

CREATE TABLE IF NOT EXISTS `biz_comment` (
  `id` int(20) unsigned NOT NULL,
  `sid` int(20) DEFAULT NULL COMMENT '被评论的文章或者页面的ID(-1:留言板)',
  `user_id` varchar(20) DEFAULT NULL COMMENT '评论人的ID',
  `pid` int(20) unsigned DEFAULT NULL COMMENT '父级评论的id',
  `qq` varchar(13) DEFAULT NULL COMMENT '评论人的QQ（未登录用户）',
  `nickname` varchar(13) DEFAULT NULL COMMENT '评论人的昵称（未登录用户）',
  `avatar` varchar(255) DEFAULT NULL COMMENT '评论人的头像地址',
  `email` varchar(100) DEFAULT NULL COMMENT '评论人的邮箱地址（未登录用户）',
  `url` varchar(200) DEFAULT NULL COMMENT '评论人的网站地址（未登录用户）',
  `status` tinyint(1) DEFAULT '0' COMMENT '评论的状态',
  `ip` varchar(64) DEFAULT NULL COMMENT '评论时的ip',
  `lng` varchar(50) DEFAULT NULL COMMENT '经度',
  `lat` varchar(50) DEFAULT NULL COMMENT '纬度',
  `address` varchar(100) DEFAULT NULL COMMENT '评论时的地址',
  `os` varchar(64) DEFAULT NULL COMMENT '评论时的系统类型',
  `os_short_name` varchar(10) DEFAULT NULL COMMENT '评论时的系统的简称',
  `browser` varchar(64) DEFAULT NULL COMMENT '评论时的浏览器类型',
  `browser_short_name` varchar(10) DEFAULT NULL COMMENT '评论时的浏览器的简称',
  `content` varchar(2000) DEFAULT NULL COMMENT '评论的内容',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注（审核不通过时添加）',
  `support` int(10) unsigned DEFAULT '0' COMMENT '支持（赞）',
  `oppose` int(10) unsigned DEFAULT '0' COMMENT '反对（踩）',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `biz_comment`
--

INSERT INTO `biz_comment` (`id`, `sid`, `user_id`, `pid`, `qq`, `nickname`, `avatar`, `email`, `url`, `status`, `ip`, `lng`, `lat`, `address`, `os`, `os_short_name`, `browser`, `browser_short_name`, `content`, `remark`, `support`, `oppose`, `create_time`, `update_time`) VALUES
(1, 1, NULL, NULL, '523179414', '郑其锋', 'http://q1.qlogo.cn/g?b=qq&nk=523179414&s=100', '', NULL, 1, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>测试评论</p>', NULL, 0, 0, '2018-09-13 23:30:56', '2018-09-13 23:30:56'),
(2, 1, '1', 1, NULL, '郑其锋', 'http://cdn.nbclass.com/blog/img/person.jpg', '888@qq.com', NULL, 1, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>测试回复评论~</p>\r\n', NULL, 0, 0, '2018-09-13 23:31:37', '2018-09-13 23:31:37'),
(3, 1, NULL, NULL, '123456', '腾讯视频', 'http://q1.qlogo.cn/g?b=qq&nk=123456&s=100', '', NULL, 0, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>第三方</p>', NULL, 0, 0, '2018-09-20 00:52:21', '2018-09-20 00:52:21'),
(4, -1, NULL, NULL, '12345678', '腾讯视频', 'http://q1.qlogo.cn/g?b=qq&nk=12345678&s=100', '', NULL, 0, '0:0:0:0:0:0:0:1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>士大夫</p>', NULL, 0, 0, '2018-09-20 00:52:37', '2018-09-20 00:52:37');

-- --------------------------------------------------------

--
-- 表的结构 `biz_link`
--

CREATE TABLE IF NOT EXISTS `biz_link` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '链接名',
  `url` varchar(200) NOT NULL COMMENT '链接地址',
  `description` varchar(300) DEFAULT NULL COMMENT '链接介绍',
  `email` varchar(100) DEFAULT NULL COMMENT '友链站长邮箱',
  `qq` varchar(50) DEFAULT NULL COMMENT '友链站长qq',
  `status` int(1) unsigned DEFAULT NULL COMMENT '状态',
  `origin` int(1) DEFAULT NULL COMMENT '1-管理员添加 2-自助申请',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `biz_link`
--

INSERT INTO `biz_link` (`id`, `name`, `url`, `description`, `email`, `qq`, `status`, `origin`, `remark`, `create_time`, `update_time`) VALUES
(1, '智博客', 'http://www.nbclass.com', 'Just do it！', '523179414@qq.com', '523179414', 1, 1, '', '2018-09-13 23:24:25', '2018-09-13 23:24:25');

-- --------------------------------------------------------

--
-- 表的结构 `biz_love`
--

CREATE TABLE IF NOT EXISTS `biz_love` (
  `id` int(11) unsigned NOT NULL,
  `biz_id` int(11) unsigned NOT NULL COMMENT '业务ID',
  `biz_type` tinyint(1) DEFAULT NULL COMMENT '业务类型：1.文章，2.评论',
  `user_id` varchar(20) DEFAULT NULL COMMENT '已登录用户ID',
  `user_ip` varchar(50) DEFAULT NULL COMMENT '用户IP',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `biz_love`
--

INSERT INTO `biz_love` (`id`, `biz_id`, `biz_type`, `user_id`, `user_ip`, `status`, `create_time`, `update_time`) VALUES
(1, 1, 1, NULL, '0:0:0:0:0:0:0:1', 1, '2018-09-13 23:31:53', '2018-09-13 23:31:53'),
(3, 3, 1, NULL, '192.168.114.1', 1, '2018-09-26 13:53:36', '2018-09-26 13:53:36'),
(4, 5, 1, NULL, '192.168.114.1', 1, '2018-09-27 00:31:55', '2018-09-27 00:31:55');

-- --------------------------------------------------------

--
-- 表的结构 `biz_site_info`
--

CREATE TABLE IF NOT EXISTS `biz_site_info` (
  `id` int(11) NOT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site_desc` varchar(255) DEFAULT NULL,
  `site_pic` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `biz_site_info`
--

INSERT INTO `biz_site_info` (`id`, `site_name`, `site_desc`, `site_pic`, `create_time`, `update_time`) VALUES
(1, 'NBCLASS | 智博客', '90后少年，热爱写bug，热爱编程，热爱学习，分享一些个人项目经验，共同学习，少走弯路。Just do it！', 'http://cdn.nbclass.com/blog/img/person.jpg', '2018-07-22 22:13:26', '2018-07-22 22:13:29');

-- --------------------------------------------------------

--
-- 表的结构 `biz_tags`
--

CREATE TABLE IF NOT EXISTS `biz_tags` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '书签名',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `biz_tags`
--

INSERT INTO `biz_tags` (`id`, `name`, `description`, `create_time`, `update_time`) VALUES
(1, 'Linux', '111', '2018-01-14 21:35:31', '2018-07-25 18:53:34'),
(2, 'Java', '222', '2018-01-14 21:35:45', '2018-07-25 18:53:38'),
(3, 'Spring', NULL, '2018-01-14 21:35:52', '2018-01-14 21:35:52'),
(4, 'Spring Boot', NULL, '2018-01-14 21:36:01', '2018-01-14 21:36:01'),
(5, '其他', '其他', '2018-07-25 18:55:06', '2018-07-25 18:55:06'),
(6, 'Git', '------', '2018-09-27 08:06:47', '2018-09-27 08:06:59');

-- --------------------------------------------------------

--
-- 表的结构 `biz_theme`
--

CREATE TABLE IF NOT EXISTS `biz_theme` (
  `id` int(11) NOT NULL COMMENT 'id主键',
  `name` varchar(50) DEFAULT NULL COMMENT '主题名（路径前缀）',
  `description` varchar(255) DEFAULT NULL COMMENT '主题描述',
  `img` varchar(255) DEFAULT NULL COMMENT '主题预览图url',
  `status` tinyint(1) DEFAULT NULL COMMENT '0-未启用 1-启用',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `biz_theme`
--

INSERT INTO `biz_theme` (`id`, `name`, `description`, `img`, `status`, `create_time`, `update_time`) VALUES
(1, 'zblog', 'zblog官方主题', 'https://gitee.com/supperzh/zb-blog/raw/master/docs/img/blog-index.png?v=1.0', 1, '2018-09-19 15:50:45', '2018-09-19 15:50:45'),
(2, 'lblogone', 'lblogone', 'https://gitee.com/supperzh/zb-blog/raw/master/docs/img/lblogone.png?v=1.0', 0, '2018-09-19 16:35:02', '2018-09-19 16:35:02');

-- --------------------------------------------------------

--
-- 表的结构 `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `id` int(11) NOT NULL,
  `permission_id` varchar(20) NOT NULL COMMENT '权限id',
  `name` varchar(100) NOT NULL COMMENT '权限名称',
  `description` varchar(255) DEFAULT NULL COMMENT '权限描述',
  `url` varchar(255) DEFAULT NULL COMMENT '权限访问路径',
  `perms` varchar(255) DEFAULT NULL COMMENT '权限标识',
  `parent_id` int(11) DEFAULT NULL COMMENT '父级权限id',
  `type` int(1) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `order_num` int(3) DEFAULT '0' COMMENT '排序',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `status` int(1) NOT NULL COMMENT '状态：1有效；2删除',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `permission`
--

INSERT INTO `permission` (`id`, `permission_id`, `name`, `description`, `url`, `perms`, `parent_id`, `type`, `order_num`, `icon`, `status`, `create_time`, `update_time`) VALUES
(1, '1', '工作台', '工作台', '/workdest', 'workdest', 0, 1, 1, 'fa fa-home', 1, '2017-09-27 21:22:02', '2018-02-27 10:53:14'),
(2, '2', '权限管理', '权限管理', NULL, NULL, 0, 0, 4, 'fa fa-th-list', 1, '2017-07-13 15:04:42', '2018-09-13 23:49:48'),
(3, '201', '用户管理', '用户管理', '/users', 'users', 2, 1, 1, 'fa fa-circle-o', 1, '2017-07-13 15:05:47', '2018-02-27 10:53:14'),
(4, '20101', '列表查询', '用户列表查询', '/user/list', 'user:list', 3, 2, 0, NULL, 1, '2017-07-13 15:09:24', '2017-10-09 05:38:29'),
(5, '20102', '新增', '新增用户', '/user/add', 'user:add', 3, 2, 0, NULL, 1, '2017-07-13 15:06:50', '2018-02-28 17:58:46'),
(6, '20103', '编辑', '编辑用户', '/user/edit', 'user:edit', 3, 2, 0, NULL, 1, '2017-07-13 15:08:03', '2018-02-27 10:53:14'),
(7, '20104', '删除', '删除用户', '/user/delete', 'user:delete', 3, 2, 0, NULL, 1, '2017-07-13 15:08:42', '2018-02-27 10:53:14'),
(8, '20105', '批量删除', '批量删除用户', '/user/batch/delete', 'user:batchDelete', 3, 2, 0, '', 1, '2018-07-11 01:53:09', '2018-07-11 01:53:09'),
(9, '20106', '分配角色', '分配角色', '/user/assign/role', 'user:assignRole', 3, 2, 0, NULL, 1, '2017-07-13 15:09:24', '2017-10-09 05:38:29'),
(10, '202', '角色管理', '角色管理', '/roles', 'roles', 2, 1, 2, 'fa fa-circle-o', 1, '2017-07-17 14:39:09', '2018-02-27 10:53:14'),
(11, '20201', '列表查询', '角色列表查询', '/role/list', 'role:list', 10, 2, 0, NULL, 1, '2017-10-10 15:31:36', '2018-02-27 10:53:14'),
(12, '20202', '新增', '新增角色', '/role/add', 'role:add', 10, 2, 0, NULL, 1, '2017-07-17 14:39:46', '2018-02-27 10:53:14'),
(13, '20203', '编辑', '编辑角色', '/role/edit', 'role:edit', 10, 2, 0, NULL, 1, '2017-07-17 14:40:15', '2018-02-27 10:53:14'),
(14, '20204', '删除', '删除角色', '/role/delete', 'role:delete', 10, 2, 0, NULL, 1, '2017-07-17 14:40:57', '2018-02-27 10:53:14'),
(15, '20205', '批量删除', '批量删除角色', '/role/batch/delete', 'role:batchDelete', 10, 2, 0, '', 1, '2018-07-10 22:20:43', '2018-07-10 22:20:43'),
(16, '20206', '分配权限', '分配权限', '/role/assign/permission', 'role:assignPerms', 10, 2, 0, NULL, 1, '2017-09-26 07:33:05', '2018-02-27 10:53:14'),
(17, '203', '资源管理', '资源管理', '/permissions', 'permissions', 2, 1, 3, 'fa fa-circle-o', 1, '2017-09-26 07:33:51', '2018-02-27 10:53:14'),
(18, '20301', '列表查询', '资源列表', '/permission/list', 'permission:list', 17, 2, 0, NULL, 1, '2018-07-12 16:25:28', '2018-07-12 16:25:33'),
(19, '20302', '新增', '新增资源', '/permission/add', 'permission:add', 17, 2, 0, NULL, 1, '2017-09-26 08:06:58', '2018-02-27 10:53:14'),
(20, '20303', '编辑', '编辑资源', '/permission/edit', 'permission:edit', 17, 2, 0, NULL, 1, '2017-09-27 21:29:04', '2018-02-27 10:53:14'),
(21, '20304', '删除', '删除资源', '/permission/delete', 'permission:delete', 17, 2, 0, NULL, 1, '2017-09-27 21:29:50', '2018-02-27 10:53:14'),
(22, '3', '运维管理', '运维管理', NULL, NULL, 0, 0, 7, 'fa fa-th-list', 1, '2018-07-06 15:19:26', '2018-09-12 17:08:55'),
(23, '301', '数据监控', '数据监控', '/database/monitoring', 'database', 22, 1, 1, 'fa fa-circle-o', 1, '2018-07-06 15:19:55', '2018-07-06 15:19:55'),
(24, '4', '系统管理', '系统管理', NULL, NULL, 0, 0, 5, 'fa fa-th-list', 1, '2018-07-06 15:20:38', '2018-07-24 15:42:28'),
(25, '401', '在线用户', '在线用户', '/online/users', 'onlineUsers', 24, 1, 1, 'fa fa-circle-o', 1, '2018-07-06 15:21:00', '2018-07-24 14:58:22'),
(32, '1000001992372345', '在线用户查询', '在线用户查询', '/online/user/list', 'onlineUser:list', 25, 2, 0, '', 1, '2018-07-24 15:02:23', '2018-07-24 15:02:23'),
(33, '1000002083579304', '踢出用户', '踢出用户', '/online/user/kickout', 'onlineUser:kickout', 25, 2, 0, '', 1, '2018-07-24 15:03:16', '2018-07-24 15:03:16'),
(34, '1000000171409776', '批量踢出', '批量踢出', '/online/user/batch/kickout', 'onlineUser:batchKickout', 25, 2, 0, '', 1, '2018-07-24 15:04:09', '2018-07-24 15:04:09'),
(35, '1000000863853891', '网站管理', '网站管理', NULL, NULL, 0, 0, 3, 'fa fa-th-list', 1, '2018-07-24 15:44:23', '2018-09-13 23:50:02'),
(36, '1000001264798222', '基础信息', '基础设置', '/siteinfo', 'siteinfo', 35, 1, 1, 'fa fa-circle-o', 1, '2018-07-24 15:48:13', '2018-07-24 17:43:39'),
(37, '1000000432183856', '保存', '基础设置-保存', '/siteinfo/save', 'siteinfo:save', 36, 2, 0, '', 1, '2018-07-24 15:49:12', '2018-07-24 15:49:12'),
(38, '1000001792841328', '系统公告', '系统公告', '/notifies', 'notifies', 35, 1, 2, 'fa fa-circle-o', 0, '2018-07-24 23:40:45', '2018-09-13 12:34:18'),
(39, '1000001351219537', '查询', '系统公告-查询', '/notify/list', 'notify:list', 38, 2, 0, '', 0, '2018-07-24 23:41:30', '2018-09-13 12:33:19'),
(40, '1000000791685519', '新增', '系统公告-新增', '/notify/add', 'notify:add', 38, 2, 0, '', 0, '2018-07-24 23:42:20', '2018-09-13 12:33:26'),
(42, '1000001531648485', '编辑', '系统公告-编辑', '/notify/edit', 'notify:edit', 38, 2, 0, '', 0, '2018-07-24 23:44:39', '2018-09-13 12:33:52'),
(43, '1000001548165826', '删除', '系统公告-删除', '/notify/delete', 'notify:delete', 38, 2, 0, '', 0, '2018-07-24 23:45:27', '2018-09-13 12:33:57'),
(44, '1000001530229707', '批量删除', '批量删除公告', '/notify/batch/delete', 'notify:batchDelete', 38, 2, 0, '', 0, '2018-07-24 23:46:25', '2018-09-13 12:34:02'),
(45, '1000000237721285', '友链管理', '友情链接', '/links', 'links', 35, 1, 3, 'fa fa-circle-o', 1, '2018-07-25 11:05:49', '2018-07-25 11:07:03'),
(46, '1000001238193773', '查询', '友链-查询', '/link/list', 'link:list', 45, 2, 0, '', 1, '2018-07-25 11:06:44', '2018-07-25 11:06:44'),
(47, '1000001305005793', '新增', '友链-新增', '/link/add', 'link:add', 45, 2, 0, '', 1, '2018-07-25 11:07:46', '2018-07-25 11:07:46'),
(48, '1000001679037501', '编辑', '友链-编辑', '/link/edit', 'link:edit', 45, 2, 0, '', 1, '2018-07-25 11:08:21', '2018-07-25 11:08:21'),
(49, '1000001011730177', '删除', '友链-删除', '/link/delete', 'link:delete', 45, 2, 0, '', 1, '2018-07-25 11:08:53', '2018-07-25 11:08:53'),
(50, '1000001312374743', '批量删除', '友链-批量删除', '/link/batch/delete', 'link:batchDelete', 45, 2, 0, '', 1, '2018-07-25 11:09:40', '2018-07-25 11:09:40'),
(51, '1000001507480127', '审核', '友链-审核', '/link/audit', 'link:audit', 45, 2, 0, '', 1, '2018-07-25 11:42:28', '2018-07-25 11:42:28'),
(52, '1000000602555213', '文章管理', '文章管理', NULL, NULL, 0, 0, 2, 'fa fa-th-list', 1, '2018-07-25 17:43:12', '2018-09-13 23:49:55'),
(53, '1000001729104792', '分类管理', '分类管理', '/categories', 'categories', 52, 1, 3, 'fa fa-circle-o', 1, '2018-07-25 17:43:50', '2018-07-29 21:46:52'),
(54, '1000000015836901', '新增', '新增分类', '/category/add', 'category:add', 53, 2, 0, '', 1, '2018-07-25 17:44:28', '2018-07-25 17:44:28'),
(55, '1000001439189167', '编辑', '编辑分类', '/category/edit', 'category:edit', 53, 2, 0, '', 1, '2018-07-25 17:44:52', '2018-07-25 17:44:52'),
(56, '1000001647995753', '删除', '删除分类', '/category/delete', 'category:delete', 53, 2, 0, '', 1, '2018-07-25 17:45:28', '2018-07-25 17:45:28'),
(58, '1000000841419865', '查询', '分类查询', '/category/list', 'category:list', 53, 2, 0, '', 1, '2018-07-25 17:49:43', '2018-07-25 17:49:43'),
(59, '1000000976625379', '标签管理', '标签管理', '/tags', 'tags', 52, 1, 4, 'fa fa-circle-o', 1, '2018-07-25 18:50:47', '2018-07-29 21:47:01'),
(60, '1000002127467055', '查询', '查询标签列表', '/tag/list', 'tag:list', 59, 2, 0, '', 1, '2018-07-25 18:51:20', '2018-07-25 18:51:20'),
(61, '1000001458372033', '新增', '新增标签', '/tag/add', 'tag:add', 59, 2, 0, '', 1, '2018-07-25 18:51:42', '2018-07-25 18:51:42'),
(62, '1000001832967209', '编辑', '编辑标签', '/tag/edit', 'tag:edit', 59, 2, 0, '', 1, '2018-07-25 18:52:17', '2018-07-25 18:52:17'),
(63, '1000000754923037', '删除', '删除标签', '/tag/delete', 'tag:delete', 59, 2, 0, '', 1, '2018-07-25 18:52:40', '2018-07-25 18:52:40'),
(64, '1000000759248744', '批量删除', '批量删除标签', '/tag/batch/delete', 'tag:batchDelete', 59, 2, 0, '', 1, '2018-07-25 18:53:14', '2018-07-25 18:53:14'),
(65, '1000001038456544', '文章列表', '文章列表', '/articles', 'articles', 52, 1, 2, 'fa fa-circle-o', 1, '2018-07-29 20:20:23', '2018-07-29 21:46:44'),
(66, '1000000686545782', '查询', '查询文章', '/article/list', 'article:list', 65, 2, 0, '', 1, '2018-07-29 20:20:54', '2018-07-29 20:20:54'),
(67, '1000001642272578', '新增', '新增文章', '/article/add', 'article:add', 65, 2, 0, '', 1, '2018-07-29 20:21:21', '2018-07-29 20:21:21'),
(68, '1000000804049447', '编辑', '编辑文章', '/article/edit', 'article:edit', 65, 2, 0, '', 1, '2018-07-29 20:21:50', '2018-07-29 20:21:50'),
(69, '1000000488864959', '删除', '删除文章', '/article/delete', 'article:delete', 65, 2, 0, '', 1, '2018-07-29 20:23:27', '2018-07-29 20:23:27'),
(70, '1000000512435306', '批量删除', '批量删除文章', '/article/batch/delete', 'article:batchDelete', 65, 2, 0, '', 1, '2018-07-29 20:23:49', '2018-07-29 20:23:49'),
(71, '1000000899091444', '发布文章', '写文章', '/article/add', 'article:add', 52, 1, 1, 'fa fa-circle-o', 1, '2018-07-29 20:39:49', '2018-07-29 21:46:33'),
(72, '1000000224901858', '评论管理', '评论管理', '/comments', 'comments', 35, 1, 4, 'fa fa-circle-o', 1, '2018-08-10 09:44:41', '2018-09-19 15:44:13'),
(73, '1000001579533936', '查询', '查询', '/comment/list', 'comment:list', 72, 2, 0, '', 1, '2018-08-10 09:46:54', '2018-08-10 09:46:54'),
(74, '1000000663968031', '审核', '审核评论', '/comment/audit', 'comment:audit', 72, 2, 0, '', 1, '2018-08-10 09:57:11', '2018-08-10 09:57:11'),
(75, '1000000322655547', '回复', '回复评论', '/comment/reply', 'comment:audit', 72, 2, 0, '', 1, '2018-08-10 10:04:28', '2018-08-10 10:04:28'),
(76, '1000001419287014', '删除', '删除评论', '/comment/delete', 'comment:delete', 72, 2, 0, '', 1, '2018-08-10 10:06:27', '2018-08-10 10:06:27'),
(77, '1000002075182223', '批量删除', '批量删除评论', '/comment/batch/delete', 'comment:batchDelete', 72, 2, 0, '', 1, '2018-08-10 10:07:57', '2018-08-10 10:07:57'),
(78, '1000000587822241', '上传管理', '上传管理', '', '', 0, 0, 6, 'fa fa-th-list', 1, '2018-09-12 17:08:41', '2018-09-12 17:08:41'),
(79, '1000000493635111', '云存储配置', '云存储配置', '/upload/config', 'upload:config', 78, 1, 1, 'fa fa-circle-o', 1, '2018-09-12 17:10:09', '2018-09-12 17:10:09'),
(80, '1000000318760332', '保存', '保存云存储配置', '/upload/saveConfig', 'upload:saveConfig', 79, 2, 0, '', 1, '2018-09-12 17:10:42', '2018-09-12 17:10:42'),
(81, '1000000919723998', '主题管理', '主题管理', '/themes', 'themes', 35, 1, 2, 'fa fa-circle-o', 1, '2018-09-19 15:43:50', '2018-09-19 15:43:50'),
(82, '1000000784272506', '查询', '主题列表', '/theme/list', 'theme:list', 81, 2, 0, '', 1, '2018-09-19 15:44:50', '2018-09-19 15:44:50'),
(83, '1000000215201942', '新增', '新增主题', '/theme/add', 'theme:add', 81, 2, 0, '', 1, '2018-09-19 15:45:34', '2018-09-19 15:45:34'),
(84, '1000001065007557', '启用', '启用主题', '/theme/use', 'theme:use', 81, 2, 0, '', 1, '2018-09-19 15:46:28', '2018-09-19 15:46:28'),
(85, '1000000431577803', '删除', '删除主题', '/theme/delete', 'theme:delete', 81, 2, 0, '', 1, '2018-09-19 15:48:06', '2018-09-19 15:48:06'),
(86, '1000000207002458', '批量删除', '批量删除主题', 'theme/batch/delete', 'theme:batchDelete', 81, 2, 0, '', 1, '2018-09-19 15:48:39', '2018-09-19 15:48:39'),
(87, '1000002051091207', '编辑', '编辑主题', '/theme/edit', 'theme:edit', 81, 2, 0, '', 1, '2018-09-19 15:54:34', '2018-09-19 15:54:34');

-- --------------------------------------------------------

--
-- 表的结构 `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL,
  `role_id` varchar(20) NOT NULL COMMENT '角色id',
  `name` varchar(50) NOT NULL COMMENT '角色名称',
  `description` varchar(255) DEFAULT NULL COMMENT '角色描述',
  `status` int(1) NOT NULL COMMENT '状态：1有效；2删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `role`
--

INSERT INTO `role` (`id`, `role_id`, `name`, `description`, `status`, `create_time`, `update_time`) VALUES
(1, '1', '超级管理员', '超级管理员', 1, '2017-06-28 20:30:05', '2017-06-28 20:30:10'),
(2, '2', '管理员', '管理员', 1, '2017-06-30 23:35:19', '2017-10-11 09:32:33'),
(3, '3', '普通用户', '普通用户', 1, '2017-06-30 23:35:44', '2018-07-13 11:44:06'),
(4, '4', '数据库管理员', '数据库管理员', 1, '2017-07-12 11:50:22', '2017-10-09 17:38:02');

-- --------------------------------------------------------

--
-- 表的结构 `role_permission`
--

CREATE TABLE IF NOT EXISTS `role_permission` (
  `id` int(11) NOT NULL,
  `role_id` varchar(20) NOT NULL COMMENT '角色id',
  `permission_id` varchar(20) NOT NULL COMMENT '权限id'
) ENGINE=InnoDB AUTO_INCREMENT=1843 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `role_permission`
--

INSERT INTO `role_permission` (`id`, `role_id`, `permission_id`) VALUES
(1770, '1', '1'),
(1771, '1', '1000000602555213'),
(1772, '1', '1000000899091444'),
(1773, '1', '1000001038456544'),
(1774, '1', '1000000686545782'),
(1775, '1', '1000001642272578'),
(1776, '1', '1000000804049447'),
(1777, '1', '1000000488864959'),
(1778, '1', '1000000512435306'),
(1779, '1', '1000001729104792'),
(1780, '1', '1000000015836901'),
(1781, '1', '1000001439189167'),
(1782, '1', '1000001647995753'),
(1783, '1', '1000000841419865'),
(1784, '1', '1000000976625379'),
(1785, '1', '1000002127467055'),
(1786, '1', '1000001458372033'),
(1787, '1', '1000001832967209'),
(1788, '1', '1000000754923037'),
(1789, '1', '1000000759248744'),
(1790, '1', '1000000863853891'),
(1791, '1', '1000001264798222'),
(1792, '1', '1000000432183856'),
(1793, '1', '1000000919723998'),
(1794, '1', '1000000784272506'),
(1795, '1', '1000000215201942'),
(1796, '1', '1000001065007557'),
(1797, '1', '1000000431577803'),
(1798, '1', '1000000207002458'),
(1799, '1', '1000002051091207'),
(1800, '1', '1000000237721285'),
(1801, '1', '1000001238193773'),
(1802, '1', '1000001305005793'),
(1803, '1', '1000001679037501'),
(1804, '1', '1000001011730177'),
(1805, '1', '1000001312374743'),
(1806, '1', '1000001507480127'),
(1807, '1', '1000000224901858'),
(1808, '1', '1000001579533936'),
(1809, '1', '1000000663968031'),
(1810, '1', '1000000322655547'),
(1811, '1', '1000001419287014'),
(1812, '1', '1000002075182223'),
(1813, '1', '2'),
(1814, '1', '201'),
(1815, '1', '20101'),
(1816, '1', '20102'),
(1817, '1', '20103'),
(1818, '1', '20104'),
(1819, '1', '20105'),
(1820, '1', '20106'),
(1821, '1', '202'),
(1822, '1', '20201'),
(1823, '1', '20202'),
(1824, '1', '20203'),
(1825, '1', '20204'),
(1826, '1', '20205'),
(1827, '1', '20206'),
(1828, '1', '203'),
(1829, '1', '20301'),
(1830, '1', '20302'),
(1831, '1', '20303'),
(1832, '1', '20304'),
(1833, '1', '4'),
(1834, '1', '401'),
(1835, '1', '1000001992372345'),
(1836, '1', '1000002083579304'),
(1837, '1', '1000000171409776'),
(1838, '1', '1000000587822241'),
(1839, '1', '1000000493635111'),
(1840, '1', '1000000318760332'),
(1841, '1', '3'),
(1842, '1', '301');

-- --------------------------------------------------------

--
-- 表的结构 `sys_config`
--

CREATE TABLE IF NOT EXISTS `sys_config` (
  `id` bigint(20) NOT NULL,
  `sys_key` varchar(50) DEFAULT NULL COMMENT 'key',
  `sys_value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='系统配置信息表';

--
-- 转存表中的数据 `sys_config`
--

INSERT INTO `sys_config` (`id`, `sys_key`, `sys_value`, `status`, `remark`) VALUES
(1, 'CLOUD_STORAGE_CONFIG', '{"type":1,"qiniuDomain":"http://cdn.nbclass.com","qiniuPrefix":"img/blog","qiniuAccessKey":"dGKQzLej_0__Xd9kElc7IK-FLWwyGPBBXFT-hBka","qiniuSecretKey":"8sZZbdmEDS4yVx0DCj7lGxIFJqaPc-y-_-DD1bkk","qiniuBucketName":"blog","aliyunDomain":"","aliyunPrefix":"","aliyunEndPoint":"","aliyunAccessKeyId":"","aliyunAccessKeySecret":"","aliyunBucketName":"","qcloudDomain":"","qcloudPrefix":"","qcloudSecretId":"","qcloudSecretKey":"","qcloudBucketName":"","qcloudRegion":""}', 1, '云存储配置信息'),
(2, 'SITE_NAME', 'NBCLASS | 智博客', 1, '网站名称'),
(3, 'SITE_DESC', '90后少年，热爱写bug，热爱编程，热爱学习，分享一些个人项目经验，共同学习，少走弯路。Just do it！', 1, '网站描述'),
(4, 'SITE_PIC', 'http://cdn.nbclass.com/blog/img/person.jpg', 1, '网站头像');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `user_id` varchar(20) NOT NULL COMMENT '用户id',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL,
  `salt` varchar(128) DEFAULT NULL COMMENT '加密盐值',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(50) DEFAULT NULL COMMENT '联系方式',
  `sex` int(255) DEFAULT NULL COMMENT '年龄：1男2女',
  `age` int(3) DEFAULT NULL COMMENT '年龄',
  `img` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `status` int(1) NOT NULL COMMENT '用户状态：1有效; 2删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `user_id`, `username`, `password`, `salt`, `nickname`, `email`, `phone`, `sex`, `age`, `img`, `status`, `create_time`, `update_time`, `last_login_time`) VALUES
(1, '1', 'admin', '872359cc44c637cc73b7cd55c06d95e4', '8cd50474d2a3c1e88298e91df8bf6f1c', '江安安', 'jiang_work1021@foxmail.com', '15720514373', 1, 25, 'http://cdn.nbclass.com/blog/img/person.jpg', 1, '2018-05-23 21:22:06', '2018-09-26 16:45:48', '2018-09-27 15:47:32');

-- --------------------------------------------------------

--
-- 表的结构 `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(11) NOT NULL,
  `user_id` varchar(20) NOT NULL COMMENT '用户id',
  `role_id` varchar(20) NOT NULL COMMENT '角色id'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`) VALUES
(1, '1', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biz_article`
--
ALTER TABLE `biz_article`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `biz_article_look`
--
ALTER TABLE `biz_article_look`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `biz_article_tags`
--
ALTER TABLE `biz_article_tags`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `biz_category`
--
ALTER TABLE `biz_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `biz_comment`
--
ALTER TABLE `biz_comment`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `biz_link`
--
ALTER TABLE `biz_link`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `biz_love`
--
ALTER TABLE `biz_love`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `biz_site_info`
--
ALTER TABLE `biz_site_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biz_tags`
--
ALTER TABLE `biz_tags`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `biz_theme`
--
ALTER TABLE `biz_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_config`
--
ALTER TABLE `sys_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`sys_key`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`,`user_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biz_article`
--
ALTER TABLE `biz_article`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `biz_article_look`
--
ALTER TABLE `biz_article_look`
  MODIFY `id` int(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `biz_article_tags`
--
ALTER TABLE `biz_article_tags`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `biz_category`
--
ALTER TABLE `biz_category`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `biz_comment`
--
ALTER TABLE `biz_comment`
  MODIFY `id` int(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `biz_link`
--
ALTER TABLE `biz_link`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `biz_love`
--
ALTER TABLE `biz_love`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `biz_site_info`
--
ALTER TABLE `biz_site_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `biz_tags`
--
ALTER TABLE `biz_tags`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `biz_theme`
--
ALTER TABLE `biz_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id主键',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1843;
--
-- AUTO_INCREMENT for table `sys_config`
--
ALTER TABLE `sys_config`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
