-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssma582q
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ssma582q`
--

/*!40000 DROP DATABASE IF EXISTS `ssma582q`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssma582q` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssma582q`;

--
-- Table structure for table `changdileixing`
--

DROP TABLE IF EXISTS `changdileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changdileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `changdileixing` varchar(200) NOT NULL COMMENT '场地类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `changdileixing` (`changdileixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1645409453687 DEFAULT CHARSET=utf8 COMMENT='场地类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changdileixing`
--

LOCK TABLES `changdileixing` WRITE;
/*!40000 ALTER TABLE `changdileixing` DISABLE KEYS */;
INSERT INTO `changdileixing` VALUES (21,'2022-02-20 09:26:26','篮球'),(22,'2022-02-20 09:26:26','羽毛球'),(23,'2022-02-20 09:26:26','乒乓球'),(24,'2022-02-20 09:26:26','足球'),(25,'2022-02-20 09:26:26','橄榄球'),(26,'2022-02-20 09:26:26','排球'),(1645409453686,'2022-02-21 02:10:52','网球');
/*!40000 ALTER TABLE `changdileixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changdishiyong`
--

DROP TABLE IF EXISTS `changdishiyong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changdishiyong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `changdimingcheng` varchar(200) DEFAULT NULL COMMENT '场地名称',
  `changdileixing` varchar(200) DEFAULT NULL COMMENT '场地类型',
  `yajin` int(11) DEFAULT NULL COMMENT '押金',
  `shijianchangci` datetime DEFAULT NULL COMMENT '时间场次',
  `shiyongshijian` datetime DEFAULT NULL COMMENT '使用时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1645408868735 DEFAULT CHARSET=utf8 COMMENT='场地使用';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changdishiyong`
--

LOCK TABLES `changdishiyong` WRITE;
/*!40000 ALTER TABLE `changdishiyong` DISABLE KEYS */;
INSERT INTO `changdishiyong` VALUES (51,'2022-02-20 09:26:26','预约编号1','场地名称1','场地类型1',1,'2022-02-20 17:26:26','2022-02-20 17:26:26','账号1','姓名1','13823888881','是','',1),(52,'2022-02-20 09:26:26','预约编号2','场地名称2','场地类型2',2,'2022-02-20 17:26:26','2022-02-20 17:26:26','账号2','姓名2','13823888882','是','',2),(53,'2022-02-20 09:26:26','预约编号3','场地名称3','场地类型3',3,'2022-02-20 17:26:26','2022-02-20 17:26:26','账号3','姓名3','13823888883','是','',3),(54,'2022-02-20 09:26:26','预约编号4','场地名称4','场地类型4',4,'2022-02-20 17:26:26','2022-02-20 17:26:26','账号4','姓名4','13823888884','是','',4),(55,'2022-02-20 09:26:26','预约编号5','场地名称5','场地类型5',5,'2022-02-20 17:26:26','2022-02-20 17:26:26','账号5','姓名5','13823888885','是','',5),(56,'2022-02-20 09:26:26','预约编号6','场地名称6','场地类型6',6,'2022-02-20 17:26:26','2022-02-20 17:26:26','账号6','姓名6','13823888886','是','',6),(1645408868734,'2022-02-21 02:01:08','1645408704694','场地名称5','羽毛球',5,'2022-02-21 09:58:24','2022-02-21 10:01:02','11','依依','13823813811','是','',1645408653755);
/*!40000 ALTER TABLE `changdishiyong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changdixinxi`
--

DROP TABLE IF EXISTS `changdixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changdixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `changdimingcheng` varchar(200) NOT NULL COMMENT '场地名称',
  `changdileixing` varchar(200) NOT NULL COMMENT '场地类型',
  `changditupian` varchar(200) DEFAULT NULL COMMENT '场地图片',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `yajin` int(11) NOT NULL COMMENT '押金',
  `changdixiangqing` longtext COMMENT '场地详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1645409526116 DEFAULT CHARSET=utf8 COMMENT='场地信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changdixinxi`
--

LOCK TABLES `changdixinxi` WRITE;
/*!40000 ALTER TABLE `changdixinxi` DISABLE KEYS */;
INSERT INTO `changdixinxi` VALUES (31,'2022-02-20 09:26:26','场地名称1','篮球','upload/changdixinxi_changditupian1.jpg','空场地',1,'<p>场地详情1</p>'),(32,'2022-02-20 09:26:26','场地名称2','排球','upload/changdixinxi_changditupian2.jpg','空场地',2,'<p>场地详情2</p>'),(33,'2022-02-20 09:26:26','场地名称3','橄榄球','upload/changdixinxi_changditupian3.jpg','已预约',3,'<p>场地详情3</p>'),(34,'2022-02-20 09:26:26','场地名称4','足球','upload/changdixinxi_changditupian4.jpg','已预约',4,'<p>场地详情4</p>'),(35,'2022-02-20 09:26:26','场地名称5','羽毛球','upload/changdixinxi_changditupian5.jpg','空场地',5,'<p>场地详情5</p>'),(36,'2022-02-20 09:26:26','场地名称6','乒乓球','upload/changdixinxi_changditupian6.jpg','已预约',6,'<p>场地详情6</p>'),(1645409526115,'2022-02-21 02:12:05','1号网球场','网球','upload/1645409511526.jpg','空场地',11,'<p>双方的太过于后瑟夫认同感和的人功夫二十多个他</p>');
/*!40000 ALTER TABLE `changdixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/1645409623208.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusschangdixinxi`
--

DROP TABLE IF EXISTS `discusschangdixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusschangdixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1645409233471 DEFAULT CHARSET=utf8 COMMENT='场地信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusschangdixinxi`
--

LOCK TABLES `discusschangdixinxi` WRITE;
/*!40000 ALTER TABLE `discusschangdixinxi` DISABLE KEYS */;
INSERT INTO `discusschangdixinxi` VALUES (101,'2022-02-20 09:26:27',1,1,'用户名1','评论内容1','回复内容1'),(102,'2022-02-20 09:26:27',2,2,'用户名2','评论内容2','回复内容2'),(103,'2022-02-20 09:26:27',3,3,'用户名3','评论内容3','回复内容3'),(104,'2022-02-20 09:26:27',4,4,'用户名4','评论内容4','回复内容4'),(105,'2022-02-20 09:26:27',5,5,'用户名5','评论内容5','回复内容5'),(106,'2022-02-20 09:26:27',6,6,'用户名6','评论内容6','回复内容6'),(1645409233470,'2022-02-21 02:07:12',35,1645408653755,'11','成都好吧那你回家手电筒付给乙方','');
/*!40000 ALTER TABLE `discusschangdixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='场地公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2022-02-20 09:26:26','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(93,'2022-02-20 09:26:27','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(94,'2022-02-20 09:26:27','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(95,'2022-02-20 09:26:27','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quxiaoshenqing`
--

DROP TABLE IF EXISTS `quxiaoshenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quxiaoshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `changdimingcheng` varchar(200) DEFAULT NULL COMMENT '场地名称',
  `changdileixing` varchar(200) DEFAULT NULL COMMENT '场地类型',
  `yajin` int(11) DEFAULT NULL COMMENT '押金',
  `shijianchangci` datetime DEFAULT NULL COMMENT '时间场次',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1645408882204 DEFAULT CHARSET=utf8 COMMENT='取消申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quxiaoshenqing`
--

LOCK TABLES `quxiaoshenqing` WRITE;
/*!40000 ALTER TABLE `quxiaoshenqing` DISABLE KEYS */;
INSERT INTO `quxiaoshenqing` VALUES (61,'2022-02-20 09:26:26','预约编号1','场地名称1','场地类型1',1,'2022-02-20 17:26:26','2022-02-20 17:26:26','账号1','姓名1','13823888881','是','',1),(62,'2022-02-20 09:26:26','预约编号2','场地名称2','场地类型2',2,'2022-02-20 17:26:26','2022-02-20 17:26:26','账号2','姓名2','13823888882','是','',2),(63,'2022-02-20 09:26:26','预约编号3','场地名称3','场地类型3',3,'2022-02-20 17:26:26','2022-02-20 17:26:26','账号3','姓名3','13823888883','是','',3),(64,'2022-02-20 09:26:26','预约编号4','场地名称4','场地类型4',4,'2022-02-20 17:26:26','2022-02-20 17:26:26','账号4','姓名4','13823888884','是','',4),(65,'2022-02-20 09:26:26','预约编号5','场地名称5','场地类型5',5,'2022-02-20 17:26:26','2022-02-20 17:26:26','账号5','姓名5','13823888885','是','',5),(66,'2022-02-20 09:26:26','预约编号6','场地名称6','场地类型6',6,'2022-02-20 17:26:26','2022-02-20 17:26:26','账号6','姓名6','13823888886','是','',6),(1645408882203,'2022-02-21 02:01:21','1645408720731','场地名称1','篮球',1,'2022-02-21 14:58:40','2022-02-21 10:01:15','11','依依','13823813811','是','已取消',1645408653755);
/*!40000 ALTER TABLE `quxiaoshenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1645408704242 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1645408704241,'2022-02-21 01:58:23',1645408653755,35,'changdixinxi','场地名称5','upload/changdixinxi_changditupian5.jpg','1',NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'账号1','yonghu','用户','olcvk38749xua2ci77263u66s9gq50p2','2022-02-21 01:42:43','2022-02-21 02:52:38'),(2,1,'abo','users','管理员','g8ciwh4pqkzy5dtseiotjjphcrws5wiy','2022-02-21 01:46:54','2022-02-21 03:09:56'),(3,1645408653755,'11','yonghu','用户','6tlwidgjj9uoxqi950ek9ltz62yds0gy','2022-02-21 01:57:39','2022-02-21 03:06:12');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuihuiyajin`
--

DROP TABLE IF EXISTS `tuihuiyajin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuihuiyajin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `changdimingcheng` varchar(200) DEFAULT NULL COMMENT '场地名称',
  `changdileixing` varchar(200) DEFAULT NULL COMMENT '场地类型',
  `yajin` int(11) DEFAULT NULL COMMENT '押金',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `tuihuishijian` datetime DEFAULT NULL COMMENT '退回时间',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1645409592140 DEFAULT CHARSET=utf8 COMMENT='退回押金';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuihuiyajin`
--

LOCK TABLES `tuihuiyajin` WRITE;
/*!40000 ALTER TABLE `tuihuiyajin` DISABLE KEYS */;
INSERT INTO `tuihuiyajin` VALUES (71,'2022-02-20 09:26:26','预约编号1','场地名称1','场地类型1',1,'账号1','姓名1','13823888881','2022-02-20 17:26:26',1),(72,'2022-02-20 09:26:26','预约编号2','场地名称2','场地类型2',2,'账号2','姓名2','13823888882','2022-02-20 17:26:26',2),(73,'2022-02-20 09:26:26','预约编号3','场地名称3','场地类型3',3,'账号3','姓名3','13823888883','2022-02-20 17:26:26',3),(74,'2022-02-20 09:26:26','预约编号4','场地名称4','场地类型4',4,'账号4','姓名4','13823888884','2022-02-20 17:26:26',4),(75,'2022-02-20 09:26:26','预约编号5','场地名称5','场地类型5',5,'账号5','姓名5','13823888885','2022-02-20 17:26:26',5),(76,'2022-02-20 09:26:26','预约编号6','场地名称6','场地类型6',6,'账号6','姓名6','13823888886','2022-02-20 17:26:26',6),(1645409566294,'2022-02-21 02:12:45','1645408704694','场地名称5','羽毛球',5,'11','依依','13823813811','2022-02-21 10:12:40',1645408653755),(1645409592139,'2022-02-21 02:13:11','1645408720731','场地名称1','篮球',1,'11','依依','13823813811','2022-02-21 10:13:07',1645408653755);
/*!40000 ALTER TABLE `tuihuiyajin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-02-20 09:26:27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wodeyuyue`
--

DROP TABLE IF EXISTS `wodeyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wodeyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `changdimingcheng` varchar(200) DEFAULT NULL COMMENT '场地名称',
  `changdileixing` varchar(200) DEFAULT NULL COMMENT '场地类型',
  `yajin` int(11) DEFAULT NULL COMMENT '押金',
  `shijianchangci` datetime DEFAULT NULL COMMENT '时间场次',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1645408732848 DEFAULT CHARSET=utf8 COMMENT='我的预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wodeyuyue`
--

LOCK TABLES `wodeyuyue` WRITE;
/*!40000 ALTER TABLE `wodeyuyue` DISABLE KEYS */;
INSERT INTO `wodeyuyue` VALUES (41,'2022-02-20 09:26:26','1111111111','场地名称1','场地类型1',1,'2022-02-20 17:26:26','2022-02-20 17:26:26','账号1','姓名1','13823888881','未支付',1),(42,'2022-02-20 09:26:26','2222222222','场地名称2','场地类型2',2,'2022-02-20 17:26:26','2022-02-20 17:26:26','账号2','姓名2','13823888882','未支付',2),(43,'2022-02-20 09:26:26','3333333333','场地名称3','场地类型3',3,'2022-02-20 17:26:26','2022-02-20 17:26:26','账号3','姓名3','13823888883','未支付',3),(44,'2022-02-20 09:26:26','4444444444','场地名称4','场地类型4',4,'2022-02-20 17:26:26','2022-02-20 17:26:26','账号4','姓名4','13823888884','未支付',4),(45,'2022-02-20 09:26:26','5555555555','场地名称5','场地类型5',5,'2022-02-20 17:26:26','2022-02-20 17:26:26','账号5','姓名5','13823888885','未支付',5),(46,'2022-02-20 09:26:26','6666666666','场地名称6','场地类型6',6,'2022-02-20 17:26:26','2022-02-20 17:26:26','账号6','姓名6','13823888886','未支付',6),(1645408714744,'2022-02-21 01:58:33','1645408704694','场地名称5','羽毛球',5,'2022-02-21 09:58:24','2022-02-21 09:58:24','11','依依','13823813811','已支付',1645408653755),(1645408732847,'2022-02-21 01:58:52','1645408720731','场地名称1','篮球',1,'2022-02-21 14:58:40','2022-02-21 09:58:40','11','依依','13823813811','已支付',1645408653755);
/*!40000 ALTER TABLE `wodeyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `dianhua` varchar(200) NOT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1645408653756 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-02-20 09:26:26','账号1','姓名1','123456','upload/yonghu_touxiang1.jpg','男',1,'13823888881'),(12,'2022-02-20 09:26:26','账号2','姓名2','123456','upload/yonghu_touxiang2.jpg','男',2,'13823888882'),(13,'2022-02-20 09:26:26','账号3','姓名3','123456','upload/yonghu_touxiang3.jpg','男',3,'13823888883'),(14,'2022-02-20 09:26:26','账号4','姓名4','123456','upload/yonghu_touxiang4.jpg','男',4,'13823888884'),(15,'2022-02-20 09:26:26','账号5','姓名5','123456','upload/yonghu_touxiang5.jpg','女',5,'13823888885'),(16,'2022-02-20 09:26:26','账号6','姓名6','123456','upload/yonghu_touxiang6.jpg','男',6,'13823888886'),(1645408653755,'2022-02-21 01:57:33','11','依依','11','upload/1645408894818.png','女',26,'13823813811');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-27 11:28:47
