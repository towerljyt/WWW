-- MySQL dump 10.13  Distrib 5.6.35, for Win64 (x86_64)
--
-- Host: localhost    Database: ohc
-- ------------------------------------------------------
-- Server version	5.6.35-log

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
-- Table structure for table `ds_access`
--

DROP TABLE IF EXISTS `ds_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=20 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_access`
--

LOCK TABLES `ds_access` WRITE;
/*!40000 ALTER TABLE `ds_access` DISABLE KEYS */;
INSERT INTO `ds_access` VALUES (5,1,1,NULL),(5,7,2,NULL),(5,16,3,NULL),(5,17,2,NULL),(5,18,3,NULL),(5,19,3,NULL),(5,20,3,NULL),(5,21,3,NULL),(5,1,1,NULL),(5,7,2,NULL),(5,16,3,NULL),(5,17,2,NULL),(5,18,3,NULL),(5,19,3,NULL),(5,20,3,NULL),(5,21,3,NULL);
/*!40000 ALTER TABLE `ds_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_ad`
--

DROP TABLE IF EXISTS `ds_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_ad` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `unit` decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `time` smallint(5) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `level` varchar(20) NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_ad`
--

LOCK TABLES `ds_ad` WRITE;
/*!40000 ALTER TABLE `ds_ad` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_adpoint`
--

DROP TABLE IF EXISTS `ds_adpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_adpoint` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member` varchar(20) NOT NULL,
  `money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00',
  `info` mediumtext NOT NULL,
  `time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_adpoint`
--

LOCK TABLES `ds_adpoint` WRITE;
/*!40000 ALTER TABLE `ds_adpoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_adpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_announce`
--

DROP TABLE IF EXISTS `ds_announce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_announce` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(60) NOT NULL DEFAULT '' COMMENT '公告标题',
  `content` text NOT NULL COMMENT '公告内容',
  `operator` varchar(45) NOT NULL DEFAULT '' COMMENT '发布人',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `edittime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `viewer` varchar(10) NOT NULL DEFAULT 'all' COMMENT '查看权限 all:所有人  member:会员  center:报单中心 ',
  `tid` int(10) unsigned NOT NULL COMMENT '公告类别ID',
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=755 ROW_FORMAT=DYNAMIC COMMENT='公告信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_announce`
--

LOCK TABLES `ds_announce` WRITE;
/*!40000 ALTER TABLE `ds_announce` DISABLE KEYS */;
INSERT INTO `ds_announce` VALUES (22,'六级提成加矿机奖励制度','<table style=\"width:100%;background-color:#FF9900;\" cellpadding=\"2\" cellspacing=\"0\" border=\"1\" bordercolor=\"#000000\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center;\">\r\n				等级<br />\r\n			</td>\r\n			<td style=\"text-align:center;\">\r\n				直推(人）\r\n			</td>\r\n			<td style=\"text-align:center;\">\r\n				团队(算率）<br />\r\n			</td>\r\n			<td>\r\n				算率提成（收益）\r\n			</td>\r\n			<td>\r\n				四月活动矿机奖励\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				一级矿机\r\n			</td>\r\n			<td>\r\n				0-4\r\n			</td>\r\n			<td>\r\n				1-49\r\n			</td>\r\n			<td>\r\n				一级直推5%\r\n			</td>\r\n			<td>\r\n				实名送微矿一台（产11币）\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				二级旷工\r\n			</td>\r\n			<td>\r\n				10\r\n			</td>\r\n			<td>\r\n				100(5g)\r\n			</td>\r\n			<td>\r\n				二级+0.5%\r\n			</td>\r\n			<td>\r\n				加送微矿一台（产11币）\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				三级旷工\r\n			</td>\r\n			<td>\r\n				30\r\n			</td>\r\n			<td>\r\n				300(30g)\r\n			</td>\r\n			<td>\r\n				三级+0.4%\r\n			</td>\r\n			<td>\r\n				加送小矿一台（产120币）\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				四级旷工\r\n			</td>\r\n			<td>\r\n				80\r\n			</td>\r\n			<td>\r\n				1000(100g)\r\n			</td>\r\n			<td>\r\n				四级+0.3%\r\n			</td>\r\n			<td>\r\n				加送中矿一台（产1300币）\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				五级旷工\r\n			</td>\r\n			<td>\r\n				150\r\n			</td>\r\n			<td>\r\n				3000(300g)\r\n			</td>\r\n			<td>\r\n				五级+0.2%\r\n			</td>\r\n			<td>\r\n				加送大矿一台（产6800币）\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				六级旷工CEO\r\n			</td>\r\n			<td>\r\n				300\r\n			</td>\r\n			<td>\r\n				5000(500g)\r\n			</td>\r\n			<td>\r\n				六级+0.1%\r\n			</td>\r\n			<td>\r\n				加送超大矿一台（产14000币）\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />\r\n<br />','admin',1523364303,1523500085,'all',7),(23,'在线客服+群交流','在线客服QQ：2070116475&nbsp; &nbsp; &nbsp;QQ一群：748412984&nbsp; &nbsp; &nbsp;QQ二群：748943473&nbsp; &nbsp;QQ三群：748426026&nbsp;<br />\r\n注：请勿重复添加多个群，需进微信群或认筹的会员请添加微信<span>：</span><span>OHC2018</span>','admin',1523428145,1523449686,'all',7),(24,'认筹价需知','<table style=\"width:100%;background-color:#FF9900;\" cellpadding=\"2\" cellspacing=\"0\" border=\"1\" bordercolor=\"#000000\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				认筹开始时间\r\n			</td>\r\n			<td>\r\n				2018年4月19日\r\n			</td>\r\n			<td>\r\n				全网总发\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				1美元=6.5元人民币<span style=\"background-color:#FF9900;\">固定比例</span> \r\n			</td>\r\n			<td>\r\n				开盘统一认筹价0.14美元=0.91元\r\n			</td>\r\n			<td>\r\n				<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<span style=\"background-color:#FF9900;\">小型矿机100.OHC</span> \r\n			</td>\r\n			<td>\r\n				91元/台限10台/人\r\n			</td>\r\n			<td>\r\n				1000台\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<span style=\"background-color:#FF9900;\">中型矿机1000.OHC</span> \r\n			</td>\r\n			<td>\r\n				910元/台限8台/人\r\n			</td>\r\n			<td>\r\n				100台\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<span style=\"background-color:#FF9900;\">大型矿机5000.OHC</span> \r\n			</td>\r\n			<td>\r\n				4550元/台限5台/人\r\n			</td>\r\n			<td>\r\n				10台\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<span style=\"background-color:#FF9900;\">超大矿机10000.OHC</span> \r\n			</td>\r\n			<td>\r\n				9100元/台限3台/人\r\n			</td>\r\n			<td>\r\n				5台\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<span id=\"__kindeditor_bookmark_end_3__\"></span><span style=\"background-color:#FF9900;\">巨型矿机5</span><span style=\"background-color:#FF9900;\">0</span><span style=\"background-color:#FF9900;\">000.OHC</span><br />\r\n			</td>\r\n			<td>\r\n				45500/台限1台/人<span id=\"__kindeditor_bookmark_start_2__\"></span> \r\n			</td>\r\n			<td>\r\n				1台\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				认筹添加客服微信\r\n			</td>\r\n			<td>\r\n				OHC2018\r\n			</td>\r\n			<td>\r\n				永不破发\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />','admin',1523431168,1523438223,'all',3);
/*!40000 ALTER TABLE `ds_announce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_announce_click`
--

DROP TABLE IF EXISTS `ds_announce_click`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_announce_click` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65303 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_announce_click`
--

LOCK TABLES `ds_announce_click` WRITE;
/*!40000 ALTER TABLE `ds_announce_click` DISABLE KEYS */;
INSERT INTO `ds_announce_click` VALUES (65277,4,22),(65278,3,22),(65279,9,22),(65280,7,22),(65281,5,22),(65282,2,22),(65283,4,23),(65284,4,24),(65285,9,24),(65286,9,23),(65287,7,24),(65288,7,23),(65289,5,24),(65290,5,23),(65291,11,24),(65292,11,23),(65293,11,22),(65294,6,24),(65295,6,23),(65296,6,22),(65297,13,24),(65298,13,23),(65299,13,22),(65300,1,24),(65301,1,23),(65302,1,22);
/*!40000 ALTER TABLE `ds_announce_click` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_announcetype`
--

DROP TABLE IF EXISTS `ds_announcetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_announcetype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '类别ID',
  `name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=24 ROW_FORMAT=DYNAMIC COMMENT='公告类别';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_announcetype`
--

LOCK TABLES `ds_announcetype` WRITE;
/*!40000 ALTER TABLE `ds_announcetype` DISABLE KEYS */;
INSERT INTO `ds_announcetype` VALUES (3,'公司公告'),(7,'帮助中心'),(10,'通知');
/*!40000 ALTER TABLE `ds_announcetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_business`
--

DROP TABLE IF EXISTS `ds_business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_business` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `seller` varchar(255) DEFAULT NULL COMMENT '卖方编号',
  `buyer` varchar(255) DEFAULT NULL COMMENT '买方编号',
  `qty` decimal(15,2) DEFAULT NULL COMMENT '金额',
  `receivableid` varchar(255) DEFAULT NULL COMMENT '收款账号的编号',
  `addtime` int(10) DEFAULT NULL COMMENT '发起时间',
  `paytime` int(10) DEFAULT NULL COMMENT '支付时间',
  `donetime` int(10) DEFAULT NULL COMMENT '完成时间',
  `status` varchar(20) DEFAULT NULL COMMENT '状态',
  `desc` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='金币买卖记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_business`
--

LOCK TABLES `ds_business` WRITE;
/*!40000 ALTER TABLE `ds_business` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_ceng`
--

DROP TABLE IF EXISTS `ds_ceng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_ceng` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ceng` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_ceng`
--

LOCK TABLES `ds_ceng` WRITE;
/*!40000 ALTER TABLE `ds_ceng` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_ceng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_country`
--

DROP TABLE IF EXISTS `ds_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `abbr` varchar(100) DEFAULT NULL COMMENT '英文缩写',
  `cninfo` varchar(200) DEFAULT NULL COMMENT '中文名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_country`
--

LOCK TABLES `ds_country` WRITE;
/*!40000 ALTER TABLE `ds_country` DISABLE KEYS */;
INSERT INTO `ds_country` VALUES (1,'AL','阿尔巴尼亚'),(2,'DZ','阿尔及利亚'),(3,'AF','阿富汗'),(4,'AR','阿根廷'),(5,'AE','阿拉伯联合酋长国'),(6,'AW','阿鲁巴'),(7,'OM','阿曼'),(8,'AZ','阿塞拜疆'),(9,'EG','埃及'),(10,'ET','埃塞俄比亚'),(11,'IE','爱尔兰'),(12,'EE','爱沙尼亚'),(13,'AD','安道尔'),(14,'AO','安哥拉'),(15,'AI','安圭拉岛'),(16,'AG','安提瓜和巴布达'),(17,'AT','奥地利'),(18,'AX','奥兰岛'),(19,'AU','澳大利亚'),(20,'MO','澳门特别行政区'),(21,'BB','巴巴多斯'),(22,'PG','巴布亚新几内亚'),(23,'BS','巴哈马'),(24,'PK','巴基斯坦'),(25,'PY','巴拉圭'),(26,'PS','巴勒斯坦民族权力机构'),(27,'BH','巴林'),(28,'PA','巴拿马'),(29,'BR','巴西'),(30,'BY','白俄罗斯'),(31,'BM','百慕大群岛'),(32,'BG','保加利亚'),(33,'MP','北马里亚纳群岛'),(34,'BJ','贝宁'),(35,'BE','比利时'),(36,'IS','冰岛'),(37,'PR','波多黎各'),(38,'PL','波兰'),(39,'BA','波斯尼亚和黑塞哥维那'),(40,'BO','玻利维亚'),(41,'BZ','伯利兹'),(42,'BW','博茨瓦纳'),(43,'BQ','博内尔'),(44,'BT','不丹'),(45,'BF','布基纳法索'),(46,'BI','布隆迪'),(47,'BV','布韦岛'),(48,'KP','朝鲜'),(49,'GQ','赤道几内亚'),(50,'DK','丹麦'),(51,'DE','德国'),(52,'TL','东帝汶'),(53,'TG','多哥'),(54,'DO','多米尼加共和国'),(55,'DM','多米尼克'),(56,'RU','俄罗斯'),(57,'EC','厄瓜多尔'),(58,'ER','厄立特里亚'),(59,'FR','法国'),(60,'FO','法罗群岛'),(61,'PF','法属波利尼西亚'),(62,'GF','法属圭亚那'),(63,'TF','法属南极地区'),(64,'VA','梵蒂冈城'),(65,'PH','菲律宾'),(66,'FJ','斐济群岛'),(67,'FI','芬兰'),(68,'CV','佛得角'),(69,'FK','福克兰群岛(马尔维纳斯群岛)'),(70,'GM','冈比亚'),(71,'CD','刚果(DRC)'),(72,'CG','刚果共和国'),(73,'CO','哥伦比亚'),(74,'CR','哥斯达黎加'),(75,'GG','格恩西岛'),(76,'GD','格林纳达'),(77,'GL','格陵兰'),(78,'GE','格鲁吉亚'),(79,'CU','古巴'),(80,'GP','瓜德罗普岛'),(81,'GU','关岛'),(82,'GY','圭亚那'),(83,'KZ','哈萨克斯坦'),(84,'HT','海地'),(85,'KR','韩国'),(86,'NL','荷兰'),(87,'HM','赫德和麦克唐纳群岛'),(88,'ME','黑山共和国'),(89,'HN','洪都拉斯'),(90,'KI','基里巴斯'),(91,'DJ','吉布提'),(92,'KG','吉尔吉斯斯坦'),(93,'GN','几内亚'),(94,'GW','几内亚比绍'),(95,'CA','加拿大'),(96,'GH','加纳'),(97,'GA','加蓬'),(98,'KH','柬埔寨'),(99,'CZ','捷克共和国'),(100,'ZW','津巴布韦'),(101,'CM','喀麦隆'),(102,'QA','卡塔尔'),(103,'KY','开曼群岛'),(104,'CC','科科斯群岛(基灵群岛)'),(105,'KM','科摩罗联盟'),(106,'CI','科特迪瓦共和国'),(107,'KW','科威特'),(108,'HR','克罗地亚'),(109,'KE','肯尼亚'),(110,'CK','库可群岛'),(111,'CW','库拉索'),(112,'LV','拉脱维亚'),(113,'LS','莱索托'),(114,'LA','老挝'),(115,'LB','黎巴嫩'),(116,'LT','立陶宛'),(117,'LR','利比里亚'),(118,'LY','利比亚'),(119,'LI','列支敦士登'),(120,'RE','留尼汪岛'),(121,'LU','卢森堡'),(122,'RW','卢旺达'),(123,'RO','罗马尼亚'),(124,'MG','马达加斯加'),(125,'IM','马恩岛'),(126,'MV','马尔代夫'),(127,'MT','马耳他'),(128,'MW','马拉维'),(129,'MY','马来西亚'),(130,'ML','马里'),(131,'MK','马其顿, 前南斯拉夫共和国'),(132,'MH','马绍尔群岛'),(133,'MQ','马提尼克岛'),(134,'YT','马约特岛'),(135,'MU','毛里求斯'),(136,'MR','毛利塔尼亚'),(137,'US','美国'),(138,'AS','美属萨摩亚'),(139,'UM','美属外岛'),(140,'VI','美属维尔京群岛'),(141,'MN','蒙古'),(142,'MS','蒙特塞拉特'),(143,'BD','孟加拉国'),(144,'PE','秘鲁'),(145,'FM','密克罗尼西亚'),(146,'MM','缅甸'),(147,'MD','摩尔多瓦'),(148,'MA','摩洛哥'),(149,'MC','摩纳哥'),(150,'MZ','莫桑比克'),(151,'MX','墨西哥'),(152,'NA','纳米比亚'),(153,'ZA','南非'),(154,'AQ','南极洲'),(155,'GS','南乔治亚和南德桑威奇群岛'),(156,'NR','瑙鲁'),(157,'NP','尼泊尔'),(158,'NI','尼加拉瓜'),(159,'NE','尼日尔'),(160,'NG','尼日利亚'),(161,'NU','纽埃'),(162,'NO','挪威'),(163,'NF','诺福克岛'),(164,'PW','帕劳群岛'),(165,'PN','皮特凯恩群岛'),(166,'PT','葡萄牙'),(167,'JP','日本'),(168,'SE','瑞典'),(169,'CH','瑞士'),(170,'SV','萨尔瓦多'),(171,'WS','萨摩亚'),(172,'RS','塞尔维亚共和国'),(173,'SL','塞拉利昂'),(174,'SN','塞内加尔'),(175,'CY','塞浦路斯'),(176,'SC','塞舌尔'),(177,'XS','沙巴岛'),(178,'SA','沙特阿拉伯'),(179,'BL','圣巴泰勒米岛'),(180,'CX','圣诞岛'),(181,'ST','圣多美和普林西比'),(182,'SH','圣赫勒拿岛'),(183,'KN','圣基茨和尼维斯'),(184,'LC','圣卢西亚'),(185,'MF','法属圣马丁岛'),(186,'SX','荷属圣马丁岛'),(187,'SM','圣马力诺'),(188,'PM','圣皮埃尔岛和密克隆岛'),(189,'VC','圣文森特和格林纳丁斯'),(190,'XE','圣尤斯特歇斯岛'),(191,'LK','斯里兰卡'),(192,'SK','斯洛伐克'),(193,'SI','斯洛文尼亚'),(194,'SZ','斯威士兰'),(195,'SD','苏丹'),(196,'SR','苏里南'),(197,'SB','所罗门群岛'),(198,'SO','索马里'),(199,'TJ','塔吉克斯坦'),(200,'TW','台湾'),(201,'TH','泰国'),(202,'TZ','坦桑尼亚'),(203,'TO','汤加'),(204,'TC','特克斯和凯科斯群岛'),(205,'TT','特立尼达和多巴哥'),(206,'TN','突尼斯'),(207,'TV','图瓦卢'),(208,'TR','土耳其'),(209,'TM','土库曼斯坦'),(210,'TK','托克劳'),(211,'WF','瓦利斯和富图纳'),(212,'VU','瓦努阿图'),(213,'GT','危地马拉'),(214,'VG','维尔京群岛(英属)'),(215,'VE','委内瑞拉'),(216,'BN','文莱'),(217,'UG','乌干达'),(218,'UA','乌克兰'),(219,'UY','乌拉圭'),(220,'UZ','乌兹别克斯坦'),(221,'ES','西班牙'),(222,'GR','希腊'),(223,'HK','香港特别行政区'),(224,'SG','新加坡'),(225,'NC','新喀里多尼亚'),(226,'NZ','新西兰'),(227,'HU','匈牙利'),(228,'SY','叙利亚'),(229,'JM','牙买加'),(230,'AM','亚美尼亚'),(231,'SJ','扬马延岛'),(232,'YE','也门'),(233,'IQ','伊拉克'),(234,'IR','伊朗'),(235,'IL','以色列'),(236,'IT','意大利'),(237,'IN','印度'),(238,'ID','印度尼西亚'),(239,'UK','英国'),(240,'IO','英属印度洋领地'),(241,'JO','约旦'),(242,'VN','越南'),(243,'ZM','赞比亚'),(244,'JE','泽西'),(245,'TD','乍得'),(246,'GI','直布罗陀'),(247,'CL','智利'),(248,'CF','中非共和国'),(249,'CN','中国');
/*!40000 ALTER TABLE `ds_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_date`
--

DROP TABLE IF EXISTS `ds_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_date` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_date`
--

LOCK TABLES `ds_date` WRITE;
/*!40000 ALTER TABLE `ds_date` DISABLE KEYS */;
INSERT INTO `ds_date` VALUES (1,'1522312401','0.09'),(2,'1522325006','0.02'),(3,'1522325254','0.05'),(4,'1523354005','0.14'),(5,'1523436000','0.14'),(6,'1523436246','0.14');
/*!40000 ALTER TABLE `ds_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_emoneydetail`
--

DROP TABLE IF EXISTS `ds_emoneydetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_emoneydetail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member` varchar(20) NOT NULL,
  `mode` varchar(10) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `charge` decimal(10,2) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `account` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `operatetime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_emoneydetail`
--

LOCK TABLES `ds_emoneydetail` WRITE;
/*!40000 ALTER TABLE `ds_emoneydetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_emoneydetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_guarantee`
--

DROP TABLE IF EXISTS `ds_guarantee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_guarantee` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `seller` varchar(255) DEFAULT NULL COMMENT '卖出会员编号',
  `buyer` varchar(255) DEFAULT NULL COMMENT '买入会员编号',
  `qty` decimal(15,2) DEFAULT NULL COMMENT '金币数量',
  `receivableid` varchar(255) DEFAULT NULL COMMENT '卖家收款信息',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `donetime` int(11) DEFAULT NULL COMMENT '完成时间',
  `paytime` int(11) DEFAULT NULL COMMENT '支付时间',
  `status` varchar(255) DEFAULT NULL COMMENT '交易状态',
  `sellmsg` varchar(500) DEFAULT NULL COMMENT '卖家留言信息',
  `buymsg` varchar(500) DEFAULT NULL COMMENT '买家留言信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='担保交易';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_guarantee`
--

LOCK TABLES `ds_guarantee` WRITE;
/*!40000 ALTER TABLE `ds_guarantee` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_guarantee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_jiangjin`
--

DROP TABLE IF EXISTS `ds_jiangjin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_jiangjin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `member` varchar(255) DEFAULT '' COMMENT '会员编号',
  `adds` decimal(12,2) unsigned DEFAULT '0.00' COMMENT '添加',
  `addtime` int(10) DEFAULT '0' COMMENT '操作时间',
  `desc` varchar(255) DEFAULT '' COMMENT '说明',
  PRIMARY KEY (`id`),
  KEY `member` (`member`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=68 ROW_FORMAT=DYNAMIC COMMENT='明细';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_jiangjin`
--

LOCK TABLES `ds_jiangjin` WRITE;
/*!40000 ALTER TABLE `ds_jiangjin` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_jiangjin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_jiaoyi`
--

DROP TABLE IF EXISTS `ds_jiaoyi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_jiaoyi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `selluser` varchar(50) CHARACTER SET utf8 NOT NULL,
  `buyuser` varchar(50) CHARACTER SET utf8 NOT NULL,
  `selltime` int(11) unsigned NOT NULL,
  `buytime` int(11) unsigned NOT NULL,
  `jinbi` decimal(11,2) unsigned NOT NULL DEFAULT '0.00',
  `jinzhongzi` decimal(11,0) NOT NULL DEFAULT '0',
  `unit` decimal(11,2) unsigned NOT NULL DEFAULT '0.00',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_jiaoyi`
--

LOCK TABLES `ds_jiaoyi` WRITE;
/*!40000 ALTER TABLE `ds_jiaoyi` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_jiaoyi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_jijin`
--

DROP TABLE IF EXISTS `ds_jijin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_jijin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lun` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_jijin`
--

LOCK TABLES `ds_jijin` WRITE;
/*!40000 ALTER TABLE `ds_jijin` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_jijin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_jinbidetail`
--

DROP TABLE IF EXISTS `ds_jinbidetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_jinbidetail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `jid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `member` varchar(255) DEFAULT '' COMMENT '会员编号',
  `adds` decimal(15,5) unsigned DEFAULT '0.00000' COMMENT '添加',
  `reduce` decimal(15,5) unsigned DEFAULT '0.00000' COMMENT '减少',
  `balance` decimal(15,5) unsigned DEFAULT '0.00000' COMMENT '余额',
  `addtime` int(10) DEFAULT '0' COMMENT '操作时间',
  `statustime` int(11) unsigned NOT NULL DEFAULT '0',
  `desc` varchar(255) DEFAULT '' COMMENT '说明',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `member` (`member`),
  KEY `jid` (`jid`),
  KEY `addtime` (`addtime`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=68 ROW_FORMAT=DYNAMIC COMMENT='金币明细';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_jinbidetail`
--

LOCK TABLES `ds_jinbidetail` WRITE;
/*!40000 ALTER TABLE `ds_jinbidetail` DISABLE KEYS */;
INSERT INTO `ds_jinbidetail` VALUES (1,2,1,'13880088008',0.02113,0.00000,4.31398,1522262751,0,'矿机结算收益',1),(2,1,1,'13880088008',0.24722,0.00000,4.56120,1522262756,0,'矿机结算收益',1),(3,2,1,'13880088008',0.03251,0.00000,4.59371,1522270412,0,'矿机结算收益',1),(4,1,1,'13880088008',0.35458,0.00000,4.94829,1522270415,0,'矿机结算收益',1),(5,2,1,'13880088008',0.07660,0.00000,5.02489,1522288461,0,'矿机结算收益',1),(6,1,1,'13880088008',0.83565,0.00000,5.86054,1522288465,0,'矿机结算收益',1),(7,0,0,'13880088008',0.00000,1.25000,4.61054,1522312299,0,'交易市场下单扣除',1),(8,0,0,'18352553273',1.00000,0.00000,1.00000,1522312401,0,'交易订单完成获得',1),(9,2,1,'13880088008',0.10662,0.00000,4.71716,1522313584,0,'矿机结算收益',1),(10,0,0,'13880088008',0.00000,1.25000,3.46716,1522324713,0,'交易市场下单扣除',1),(11,0,0,'18352553273',1.00000,0.00000,2.00000,1522325006,0,'交易订单完成获得',1),(12,0,0,'13880088008',0.00000,1.25000,2.21716,1522325191,0,' 卖出挂单',1),(13,0,0,'18352553273',1.00000,0.00000,3.00000,1522325254,0,'交易订单完成获得',1),(14,3,1,'18352553273',0.08609,0.00000,3.08609,1522330376,0,'矿机结算收益',1),(15,0,2,'13880088008',0.00430,0.00000,2.22146,1522330376,0,'1/2',1),(16,1,1,'13880088008',24.87060,0.00000,27.09206,1522825670,0,'矿机结算收益',1),(17,2,1,'13880088008',2.17322,0.00000,29.26529,1522825674,0,'矿机结算收益',1),(18,4,1,'15361820876',0.04447,0.00000,0.04447,1523254135,0,'矿机结算收益',1),(19,0,2,'13880088008',0.00222,0.00000,29.26751,1523254135,0,'1/3',1),(20,4,1,'15361820876',0.05559,0.00000,0.10006,1523267235,0,'矿机结算收益',1),(21,0,2,'13880088008',0.00278,0.00000,29.27029,1523267235,0,'1/3',1),(22,5,1,'15361820876',0.57560,0.00000,0.67566,1523267239,0,'矿机结算收益',1),(23,0,2,'13880088008',0.02878,0.00000,29.29907,1523267239,0,'1/3',1),(24,0,0,'15361820876',0.00000,6.50000,6.17566,1523353831,0,'交易市场下单扣除',1),(25,0,0,'18929333693',5.00000,0.00000,17.00000,1523354005,0,'交易订单完成获得',1),(26,6,1,'18929333693',0.06837,0.00000,17.06837,1523369336,0,'矿机结算收益',1),(27,0,2,'15361820876',0.00342,0.00000,6.17908,1523369337,0,'1/4',1),(28,0,2,'13880088008',0.00034,0.00000,29.29941,1523369337,0,'2/4',1),(29,0,0,'18688285829',0.00000,1.28000,10.72000,1523435923,0,'交易市场下单扣除',1),(30,0,0,'13128712507',0.00000,6.40000,5.60000,1523435925,0,' 卖出挂单',1),(31,0,0,'15970020304',1.00000,0.00000,13.00000,1523436000,0,'交易订单完成获得',1),(32,0,0,'15970020304',5.00000,0.00000,18.00000,1523436246,0,'交易订单完成获得',1),(33,0,0,'13926787502',0.00000,10.00000,2.00000,1523452553,0,'购买微型云矿机',1),(34,6,1,'18929333693',0.53485,0.00000,17.60321,1523495365,0,'矿机结算收益',1),(35,0,2,'15361820876',0.02674,0.00000,6.20582,1523495365,0,'1/4',1),(36,0,2,'13880088008',0.00267,0.00000,29.30209,1523495365,0,'2/4',1),(37,15,1,'15058128401',4.98566,0.00000,5004.98566,1525787417,0,'矿机结算收益',1),(38,0,2,'15361820876',0.24928,0.00000,5006.45511,1525787417,0,'1/13',1),(39,0,2,'13880088008',0.02493,0.00000,29.32701,1525787417,0,'2/13',1),(40,0,0,'13880088008',0.00000,10.00000,19.32701,1560254839,0,'购买微型云矿机',1),(41,0,0,'13880088008',0.00000,12.00000,7.32701,1560254881,0,' 卖出挂单',1),(42,0,5,'13880088008',20.00000,0.00000,27.32701,1560255119,0,'充值',1),(43,2,1,'13880088008',8.58992,0.00000,35.91694,1560255567,0,'矿机结算收益',1),(44,1,1,'13880088008',93.69195,0.00000,129.60888,1560255567,0,'矿机结算收益',1),(45,0,0,'13880088008',0.00000,100.00000,29.60888,1560255665,0,'购买小型云矿机',1),(46,0,0,'13880088008',0.00000,10.00000,19.60888,1560255677,0,'购买微型云矿机',1),(47,0,0,'13880088008',0.00000,10.00000,9.60888,1560255684,0,'购买微型云矿机',1);
/*!40000 ALTER TABLE `ds_jinbidetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_jinzhongzidetail`
--

DROP TABLE IF EXISTS `ds_jinzhongzidetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_jinzhongzidetail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  `member` varchar(255) DEFAULT '' COMMENT '会员编号',
  `adds` decimal(11,2) DEFAULT '0.00' COMMENT '添加',
  `reduce` decimal(11,2) DEFAULT '0.00' COMMENT '减少',
  `balance` decimal(11,2) DEFAULT '0.00' COMMENT '余额',
  `addtime` int(11) DEFAULT '0' COMMENT '添加时间',
  `desc` varchar(255) DEFAULT '' COMMENT '说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=60 ROW_FORMAT=DYNAMIC COMMENT='金种子明细';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_jinzhongzidetail`
--

LOCK TABLES `ds_jinzhongzidetail` WRITE;
/*!40000 ALTER TABLE `ds_jinzhongzidetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_jinzhongzidetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_jorder`
--

DROP TABLE IF EXISTS `ds_jorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_jorder` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `member` varchar(50) NOT NULL,
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `ymoney` decimal(11,2) unsigned NOT NULL DEFAULT '0.00',
  `time` int(11) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `realname` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `post` varchar(20) NOT NULL,
  `ostatus` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `time` (`time`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_jorder`
--

LOCK TABLES `ds_jorder` WRITE;
/*!40000 ALTER TABLE `ds_jorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_jorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_jyl`
--

DROP TABLE IF EXISTS `ds_jyl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_jyl` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_jyl`
--

LOCK TABLES `ds_jyl` WRITE;
/*!40000 ALTER TABLE `ds_jyl` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_jyl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_log`
--

DROP TABLE IF EXISTS `ds_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `logaccount` varchar(45) NOT NULL DEFAULT '' COMMENT '操作对应的账号',
  `logip` varchar(100) NOT NULL DEFAULT '' COMMENT '操作者IP',
  `logdesc` varchar(200) NOT NULL DEFAULT '' COMMENT '操作描述',
  `logtype` varchar(10) NOT NULL DEFAULT '' COMMENT '日志类型: member:会员日志 admin:管理员日志',
  `logiplocal` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `logtype` (`logtype`)
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=68 ROW_FORMAT=DYNAMIC COMMENT='系统操作日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_log`
--

LOCK TABLES `ds_log` WRITE;
/*!40000 ALTER TABLE `ds_log` DISABLE KEYS */;
INSERT INTO `ds_log` VALUES (1,1520582711,'','171.44.189.115','备份数据库','admin','湖北省电信'),(2,1520582721,'','171.44.189.115','下载备份文件','admin','湖北省电信'),(3,1520582761,'','171.44.189.115','备份数据库','admin','湖北省电信'),(4,1522176475,'admin','36.149.142.109','管理员[admin]登录','admin','中国移动'),(5,1522177515,'','36.149.142.109','会员登出','member','中国移动'),(6,1522177813,'','36.149.142.109','会员登出','member','中国移动'),(7,1522177839,'','36.149.142.109','会员登出','member','中国移动'),(8,1522205631,'admin','36.149.142.109','管理员[admin]登录','admin','中国移动'),(9,1522229084,'','36.149.142.109','会员登出','member','中国移动'),(10,1522238998,'','36.149.142.109','会员登出','member','中国移动'),(11,1522241862,'','117.136.66.104','会员登出','member','中国移动'),(12,1522251533,'admin','36.149.142.109','管理员[admin]登录','admin','中国移动'),(13,1522252068,'admin','36.149.142.109','管理员admin登出','admin','中国移动'),(14,1522252115,'','36.149.142.109','会员登出','member','中国移动'),(15,1522252131,'admin','36.149.142.109','管理员[admin]登录','admin','中国移动'),(16,1522252183,'admin','36.149.142.109','管理员[admin]登录','admin','中国移动'),(17,1522252208,'','36.149.142.109','编辑ID为1的管理员','admin','中国移动'),(18,1522252227,'','36.149.142.109','修改ID为5的角色','admin','中国移动'),(19,1522252249,'admin','36.149.142.109','管理员admin登出','admin','中国移动'),(20,1522252300,'','36.149.142.109','管理员登出','admin','中国移动'),(21,1522252308,'admin','36.149.142.109','管理员[admin]登录','admin','中国移动'),(22,1522252341,'','36.149.142.109','添加了一个新用户','admin','中国移动'),(23,1522252347,'admin','36.149.142.109','管理员admin登出','admin','中国移动'),(24,1522252362,'admin88','36.149.142.109','管理员[admin88]登录','admin','中国移动'),(25,1522252373,'admin88','36.149.142.109','管理员admin88登出','admin','中国移动'),(26,1522252380,'admin','36.149.142.109','管理员[admin]登录','admin','中国移动'),(27,1522252432,'','36.149.142.109','修改权限ID5','admin','中国移动'),(28,1522252437,'admin','36.149.142.109','管理员admin登出','admin','中国移动'),(29,1522252446,'admin88','36.149.142.109','管理员[admin88]登录','admin','中国移动'),(30,1522252479,'admin88','36.149.142.109','管理员admin88登出','admin','中国移动'),(31,1522252487,'admin','36.149.142.109','管理员[admin]登录','admin','中国移动'),(32,1522252506,'','36.149.142.109','修改权限ID5','admin','中国移动'),(33,1522252509,'admin','36.149.142.109','管理员admin登出','admin','中国移动'),(34,1522252530,'admin88','36.149.142.109','管理员[admin88]登录','admin','中国移动'),(35,1522252543,'admin88','36.149.142.109','管理员admin88登出','admin','中国移动'),(36,1522252550,'admin','36.149.142.109','管理员[admin]登录','admin','中国移动'),(37,1522252593,'','36.149.142.109','修改权限ID5','admin','中国移动'),(38,1522252605,'admin','36.149.142.109','管理员admin登出','admin','中国移动'),(39,1522252613,'admin88','36.149.142.109','管理员[admin88]登录','admin','中国移动'),(40,1522252636,'admin88','36.149.142.109','管理员admin88登出','admin','中国移动'),(41,1522252643,'admin','36.149.142.109','管理员[admin]登录','admin','中国移动'),(42,1522252664,'','36.149.142.109','修改权限ID5','admin','中国移动'),(43,1522252669,'admin','36.149.142.109','管理员admin登出','admin','中国移动'),(44,1522252676,'admin','36.149.142.109','管理员[admin]登录','admin','中国移动'),(45,1522252683,'admin','36.149.142.109','管理员admin登出','admin','中国移动'),(46,1522252691,'admin88','36.149.142.109','管理员[admin88]登录','admin','中国移动'),(47,1522252728,'admin88','36.149.142.109','管理员admin88登出','admin','中国移动'),(48,1522252735,'admin','36.149.142.109','管理员[admin]登录','admin','中国移动'),(49,1522252765,'','36.149.142.109','修改权限ID5','admin','中国移动'),(50,1522252772,'admin','36.149.142.109','管理员admin登出','admin','中国移动'),(51,1522252784,'admin88','36.149.142.109','管理员[admin88]登录','admin','中国移动'),(52,1522252798,'admin88','36.149.142.109','管理员admin88登出','admin','中国移动'),(53,1522252830,'admin','36.149.142.109','管理员[admin]登录','admin','中国移动'),(54,1522253112,'18327630680','36.149.142.109','修改ID为1的会员组','admin','中国移动'),(55,1522253127,'18327630680','36.149.142.109','修改ID为1的会员组','admin','中国移动'),(56,1522253139,'18327630680','36.149.142.109','修改ID为2的会员组','admin','中国移动'),(57,1522253150,'18327630680','36.149.142.109','修改ID为3的会员组','admin','中国移动'),(58,1522253161,'18327630680','36.149.142.109','修改ID为4的会员组','admin','中国移动'),(59,1522253173,'18327630680','36.149.142.109','修改ID为5的会员组','admin','中国移动'),(60,1522253191,'18327630680','36.149.142.109','修改ID为6的会员组','admin','中国移动'),(61,1522253557,'13880088008','36.149.142.109','删除一个商品','admin','中国移动'),(62,1522254386,'','36.149.142.109','会员登出','member','中国移动'),(63,1522257766,'13880088008','36.149.142.109','修改ID为2的会员组','admin','中国移动'),(64,1522266269,'admin','36.149.142.109','管理员[admin]登录','admin','中国移动'),(65,1522269911,'','36.149.142.109','会员登出','member','中国移动'),(66,1522287935,'','36.149.142.109','会员登出','member','中国移动'),(67,1522296684,'admin','36.149.142.109','管理员[admin]登录','admin','中国移动'),(68,1522296712,'13880088008','36.149.142.109','发布公告','admin','中国移动'),(69,1522301378,'13880088008','36.149.142.109','修改ID为2的会员组','admin','中国移动'),(70,1522301407,'13880088008','36.149.142.109','修改ID为2的会员组','admin','中国移动'),(71,1522301444,'13880088008','36.149.142.109','修改ID为3的会员组','admin','中国移动'),(72,1522301483,'13880088008','36.149.142.109','修改ID为3的会员组','admin','中国移动'),(73,1522302509,'13880088008','36.149.142.109','修改ID为3的会员组','admin','中国移动'),(74,1522302539,'13880088008','36.149.142.109','修改ID为3的会员组','admin','中国移动'),(75,1522302577,'13880088008','36.149.142.109','修改ID为3的会员组','admin','中国移动'),(76,1522308136,'','36.149.142.109','会员登出','member','中国移动'),(77,1522308448,'','36.149.142.109','会员登出','member','中国移动'),(78,1522310140,'','36.149.142.109','会员登出','member','中国移动'),(79,1522313620,'13880088008','36.149.142.109','删除公告','admin','中国移动'),(80,1522313625,'13880088008','36.149.142.109','删除公告','admin','中国移动'),(81,1522313631,'13880088008','36.149.142.109','删除公告','admin','中国移动'),(82,1522313636,'13880088008','36.149.142.109','删除公告','admin','中国移动'),(83,1522313642,'13880088008','36.149.142.109','删除公告','admin','中国移动'),(84,1522313647,'13880088008','36.149.142.109','删除公告','admin','中国移动'),(85,1522313666,'13880088008','36.149.142.109','删除公告','admin','中国移动'),(86,1522313716,'13880088008','36.149.142.109','删除公告','admin','中国移动'),(87,1522313722,'13880088008','36.149.142.109','删除公告','admin','中国移动'),(88,1522313727,'13880088008','36.149.142.109','删除公告','admin','中国移动'),(89,1522313733,'13880088008','36.149.142.109','删除公告','admin','中国移动'),(90,1522313739,'13880088008','36.149.142.109','删除公告','admin','中国移动'),(91,1522313746,'13880088008','36.149.142.109','删除公告','admin','中国移动'),(92,1522313751,'13880088008','36.149.142.109','删除公告','admin','中国移动'),(93,1522313766,'13880088008','36.149.142.109','修改公告','admin','中国移动'),(94,1522313802,'13880088008','36.149.142.109','发布公告','admin','中国移动'),(95,1522313847,'13880088008','36.149.142.109','修改公告','admin','中国移动'),(96,1522314003,'admin','36.149.142.109','管理员admin登出','admin','中国移动'),(97,1522314012,'admin','36.149.142.109','管理员[admin]登录','admin','中国移动'),(98,1522314074,'13880088008','36.149.142.109','修改ID为3的会员组','admin','中国移动'),(99,1522321360,'admin','223.104.106.138','管理员[admin]登录','admin','中国移动'),(100,1522325691,'','36.149.142.109','会员登出','member','中国移动'),(101,1522325748,'admin','113.81.2.100','管理员[admin]登录','admin','广东省惠州市电信'),(102,1522334620,'admin','111.77.227.237','管理员[admin]登录','admin','江西省宜春市电信'),(103,1522568550,'','36.149.205.209','会员登出','member','中国移动'),(104,1522810722,'admin','39.72.16.164','管理员[admin]登录','admin','山东省联通'),(105,1522811937,'admin','36.149.76.152','管理员[admin]登录','admin','中国移动'),(106,1523241502,'admin','59.33.231.57','管理员[admin]登录','admin','广东省惠州市电信ADSL'),(107,1523243045,'','59.33.231.57','会员登出','member','广东省惠州市电信ADSL'),(108,1523253512,'admin','59.33.231.57','管理员[admin]登录','admin','广东省惠州市电信ADSL'),(109,1523256180,'','59.33.231.57','修改ID为3商品分类','admin','广东省惠州市电信ADSL'),(110,1523257018,'admin','221.178.182.27','管理员[admin]登录','admin','江苏省移动'),(111,1523260467,'admin','218.205.17.204','管理员admin登出','admin','江苏省无锡市移动'),(112,1523260482,'','36.149.76.109','会员登出','member','中国移动'),(113,1523260550,'','218.205.17.204','管理员登出','admin','江苏省无锡市移动'),(114,1523260557,'admin','221.178.182.98','管理员[admin]登录','admin','江苏省移动'),(115,1523260704,'','59.33.231.57','会员登出','member','广东省惠州市电信ADSL'),(116,1523262822,'admin','59.33.231.57','管理员[admin]登录','admin','广东省惠州市电信ADSL'),(117,1523265944,'','59.33.231.57','会员登出','member','广东省惠州市电信ADSL'),(118,1523266947,'','36.149.76.109','会员登出','member','中国移动'),(119,1523275144,'','221.178.182.160','会员登出','member','江苏省移动'),(120,1523278272,'','221.178.182.160','会员登出','member','江苏省移动'),(121,1523346233,'admin','183.131.162.242','管理员[admin]登录','admin','浙江省温州市电信'),(122,1523346244,'admin','113.81.3.54','管理员[admin]登录','admin','广东省惠州市电信'),(123,1523346477,'','113.81.3.54','会员登出','member','广东省惠州市电信'),(124,1523348816,'admin','183.131.162.247','管理员[admin]登录','admin','浙江省温州市电信'),(125,1523349984,'admin','113.81.3.54','管理员[admin]登录','admin','广东省惠州市电信'),(126,1523351120,'','113.81.3.54','会员登出','member','广东省惠州市电信'),(127,1523352134,'admin','183.131.162.241','管理员[admin]登录','admin','浙江省温州市电信'),(128,1523353376,'','113.81.3.54','会员登出','member','广东省惠州市电信'),(129,1523353556,'admin','183.131.162.247','管理员[admin]登录','admin','浙江省温州市电信'),(130,1523353580,'','113.81.3.54','会员登出','member','广东省惠州市电信'),(131,1523353798,'','113.81.3.54','会员登出','member','广东省惠州市电信'),(132,1523353869,'','113.81.3.54','会员登出','member','广东省惠州市电信'),(133,1523353963,'','113.81.3.54','会员登出','member','广东省惠州市电信'),(134,1523355317,'','113.81.3.54','会员登出','member','广东省惠州市电信'),(135,1523355660,'','113.81.3.54','会员登出','member','广东省惠州市电信'),(136,1523360398,'','113.81.1.92','删除公告','admin','广东省惠州市电信'),(137,1523360425,'','113.81.1.92','修改公告','admin','广东省惠州市电信'),(138,1523360449,'','113.81.1.92','修改公告','admin','广东省惠州市电信'),(139,1523360488,'','113.81.1.92','删除公告','admin','广东省惠州市电信'),(140,1523360562,'','113.81.1.92','删除留言','admin','广东省惠州市电信'),(141,1523360595,'','113.81.1.92','删除留言','admin','广东省惠州市电信'),(142,1523360600,'','113.81.1.92','删除留言','admin','广东省惠州市电信'),(143,1523360610,'','113.81.1.92','删除留言','admin','广东省惠州市电信'),(144,1523360661,'','113.81.1.92','修改了一个公告类别','admin','广东省惠州市电信'),(145,1523360707,'','113.81.1.92','删除公告类别','admin','广东省惠州市电信'),(146,1523360954,'','113.81.1.92','会员登出','member','广东省惠州市电信'),(147,1523361211,'','113.81.1.92','会员登出','member','广东省惠州市电信'),(148,1523361299,'','113.81.1.92','修改ID为2的会员组','admin','广东省惠州市电信'),(149,1523361347,'','113.81.1.92','修改ID为3的会员组','admin','广东省惠州市电信'),(150,1523361369,'','113.81.1.92','修改ID为2的会员组','admin','广东省惠州市电信'),(151,1523361566,'','113.81.1.92','修改ID为4的会员组','admin','广东省惠州市电信'),(152,1523361608,'','113.81.1.92','修改ID为3的会员组','admin','广东省惠州市电信'),(153,1523361647,'','113.81.1.92','修改ID为2的会员组','admin','广东省惠州市电信'),(154,1523361671,'','113.81.1.92','修改ID为1的会员组','admin','广东省惠州市电信'),(155,1523361765,'','113.81.1.92','修改ID为5的会员组','admin','广东省惠州市电信'),(156,1523361849,'','113.81.1.92','修改ID为6的会员组','admin','广东省惠州市电信'),(157,1523361906,'','113.81.1.92','修改ID为6的会员组','admin','广东省惠州市电信'),(158,1523364112,'','113.81.1.92','修改ID为4的会员组','admin','广东省惠州市电信'),(159,1523364156,'','113.81.1.92','修改ID为5的会员组','admin','广东省惠州市电信'),(160,1523364186,'','113.81.1.92','修改ID为6的会员组','admin','广东省惠州市电信'),(161,1523365245,'','113.81.1.92','发布公告','admin','广东省惠州市电信'),(162,1523365489,'','113.81.1.92','修改ID为6的会员组','admin','广东省惠州市电信'),(163,1523365508,'','113.81.1.92','修改ID为2的会员组','admin','广东省惠州市电信'),(164,1523365537,'','113.81.1.92','修改公告','admin','广东省惠州市电信'),(165,1523367385,'','113.81.1.92','会员登出','member','广东省惠州市电信'),(166,1523367523,'','113.81.1.92','会员登出','member','广东省惠州市电信'),(167,1523368745,'','113.81.1.92','修改公告','admin','广东省惠州市电信'),(168,1523369675,'','113.81.1.92','修改公告','admin','广东省惠州市电信'),(169,1523410385,'admin','113.81.1.92','管理员[admin]登录','admin','广东省惠州市电信'),(170,1523410574,'','113.81.1.92','编辑ID为2的管理员','admin','广东省惠州市电信'),(171,1523410763,'admin88','113.81.1.92','管理员[admin88]登录','admin','广东省惠州市电信'),(172,1523411567,'','113.81.1.92','修改公告','admin','广东省惠州市电信'),(173,1523411706,'','113.81.1.92','修改公告','admin','广东省惠州市电信'),(174,1523413478,'','113.81.1.92','修改权限ID5','admin','广东省惠州市电信'),(175,1523415395,'admin','113.81.1.92','管理员admin登出','admin','广东省惠州市电信'),(176,1523415414,'admin88','113.81.1.92','管理员[admin88]登录','admin','广东省惠州市电信'),(177,1523415475,'admin88','113.81.1.92','管理员admin88登出','admin','广东省惠州市电信'),(178,1523415502,'admin','113.81.1.92','管理员[admin]登录','admin','广东省惠州市电信'),(179,1523415611,'','113.81.1.92','修改权限ID5','admin','广东省惠州市电信'),(180,1523415619,'admin','113.81.1.92','管理员admin登出','admin','广东省惠州市电信'),(181,1523415657,'admin88','113.81.1.92','管理员[admin88]登录','admin','广东省惠州市电信'),(182,1523415695,'admin88','113.81.1.92','管理员admin88登出','admin','广东省惠州市电信'),(183,1523415705,'admin','113.81.1.92','管理员[admin]登录','admin','广东省惠州市电信'),(184,1523415834,'','113.81.1.92','修改权限ID5','admin','广东省惠州市电信'),(185,1523415876,'admin','113.81.1.92','管理员admin登出','admin','广东省惠州市电信'),(186,1523415918,'admin88','113.81.1.92','管理员[admin88]登录','admin','广东省惠州市电信'),(187,1523416255,'admin88','113.81.1.92','管理员admin88登出','admin','广东省惠州市电信'),(188,1523416268,'admin','113.81.1.92','管理员[admin]登录','admin','广东省惠州市电信'),(189,1523416309,'','113.81.1.92','修改权限ID5','admin','广东省惠州市电信'),(190,1523416367,'','113.81.1.92','添加了一个新用户','admin','广东省惠州市电信'),(191,1523416456,'','113.81.1.92','删除了ID为2的用户','admin','广东省惠州市电信'),(192,1523416490,'','113.81.1.92','添加了一个新用户','admin','广东省惠州市电信'),(193,1523416527,'admin','113.81.1.92','管理员admin登出','admin','广东省惠州市电信'),(194,1523416550,'admin88','113.81.1.92','管理员[admin88]登录','admin','广东省惠州市电信'),(195,1523416564,'admin88','113.81.1.92','管理员admin88登出','admin','广东省惠州市电信'),(196,1523416579,'admin','113.81.1.92','管理员[admin]登录','admin','广东省惠州市电信'),(197,1523416592,'','113.81.1.92','删除了ID为4的用户','admin','广东省惠州市电信'),(198,1523416602,'','113.81.1.92','编辑ID为3的管理员','admin','广东省惠州市电信'),(199,1523416609,'admin','113.81.1.92','管理员admin登出','admin','广东省惠州市电信'),(200,1523416630,'admin888','113.81.1.92','管理员[admin888]登录','admin','广东省惠州市电信'),(201,1523416653,'admin888','113.81.1.92','管理员admin888登出','admin','广东省惠州市电信'),(202,1523416671,'admin','113.81.1.92','管理员[admin]登录','admin','广东省惠州市电信'),(203,1523416682,'','113.81.1.92','删除了ID为3的用户','admin','广东省惠州市电信'),(204,1523416701,'','113.81.1.92','添加了一个新用户','admin','广东省惠州市电信'),(205,1523416705,'admin','113.81.1.92','管理员admin登出','admin','广东省惠州市电信'),(206,1523416726,'admin88','113.81.1.92','管理员[admin88]登录','admin','广东省惠州市电信'),(207,1523416760,'admin88','113.81.1.92','管理员admin88登出','admin','广东省惠州市电信'),(208,1523416781,'admin88','113.81.1.92','管理员[admin88]登录','admin','广东省惠州市电信'),(209,1523416792,'admin88','113.81.1.92','管理员admin88登出','admin','广东省惠州市电信'),(210,1523416800,'admin','113.81.1.92','管理员[admin]登录','admin','广东省惠州市电信'),(211,1523416825,'','113.81.1.92','编辑ID为5的管理员','admin','广东省惠州市电信'),(212,1523416864,'','113.81.1.92','添加一个新的角色','admin','广东省惠州市电信'),(213,1523416886,'','113.81.1.92','修改权限ID6','admin','广东省惠州市电信'),(214,1523416902,'','113.81.1.92','编辑ID为5的管理员','admin','广东省惠州市电信'),(215,1523416906,'admin','113.81.1.92','管理员admin登出','admin','广东省惠州市电信'),(216,1523416923,'admin88','113.81.1.92','管理员[admin88]登录','admin','广东省惠州市电信'),(217,1523416934,'admin88','113.81.1.92','管理员admin88登出','admin','广东省惠州市电信'),(218,1523416949,'admin','113.81.1.92','管理员[admin]登录','admin','广东省惠州市电信'),(219,1523417044,'','113.81.1.92','编辑ID为5的管理员','admin','广东省惠州市电信'),(220,1523417048,'admin','113.81.1.92','管理员admin登出','admin','广东省惠州市电信'),(221,1523417065,'admin88','113.81.1.92','管理员[admin88]登录','admin','广东省惠州市电信'),(222,1523417086,'admin88','113.81.1.92','管理员admin88登出','admin','广东省惠州市电信'),(223,1523417097,'admin','113.81.1.92','管理员[admin]登录','admin','广东省惠州市电信'),(224,1523417109,'','113.81.1.92','删除ID为6的角色','admin','广东省惠州市电信'),(225,1523417153,'','113.81.1.92','修改权限ID5','admin','广东省惠州市电信'),(226,1523417159,'admin','113.81.1.92','管理员admin登出','admin','广东省惠州市电信'),(227,1523417176,'admin88','113.81.1.92','管理员[admin88]登录','admin','广东省惠州市电信'),(228,1523417238,'admin88','113.81.1.92','管理员admin88登出','admin','广东省惠州市电信'),(229,1523417254,'admin','113.81.1.92','管理员[admin]登录','admin','广东省惠州市电信'),(230,1523417356,'','113.81.1.92','修改权限ID5','admin','广东省惠州市电信'),(231,1523426913,'admin','113.81.1.92','管理员[admin]登录','admin','广东省惠州市电信'),(232,1523427137,'','113.81.1.92','修改公告','admin','广东省惠州市电信'),(233,1523427691,'','113.81.1.92','会员登出','member','广东省惠州市电信'),(234,1523428714,'','113.81.1.92','发布公告','admin','广东省惠州市电信'),(235,1523429374,'','113.81.1.92','修改公告','admin','广东省惠州市电信'),(236,1523429420,'','113.81.1.92','修改公告','admin','广东省惠州市电信'),(237,1523429446,'','113.81.1.92','修改公告','admin','广东省惠州市电信'),(238,1523430214,'','113.81.1.92','修改公告','admin','广东省惠州市电信'),(239,1523433253,'','113.81.1.92','发布公告','admin','广东省惠州市电信'),(240,1523433811,'','113.81.1.92','修改公告','admin','广东省惠州市电信'),(241,1523434495,'','113.81.1.92','修改公告','admin','广东省惠州市电信'),(242,1523435231,'admin','113.81.1.92','管理员admin登出','admin','广东省惠州市电信'),(243,1523435243,'admin','113.81.1.92','管理员[admin]登录','admin','广东省惠州市电信'),(244,1523437736,'admin88','113.81.1.92','管理员[admin88]登录','admin','广东省惠州市电信'),(245,1523437740,'admin88','113.81.1.92','管理员[admin88]登录','admin','广东省惠州市电信'),(246,1523438224,'','113.81.1.92','修改公告','admin','广东省惠州市电信'),(247,1523449625,'admin','183.25.126.68','管理员[admin]登录','admin','广东省惠州市电信'),(248,1523449627,'admin','183.25.126.68','管理员[admin]登录','admin','广东省惠州市电信'),(249,1523449688,'','183.25.126.68','修改公告','admin','广东省惠州市电信'),(250,1523452181,'','183.25.126.68','会员登出','member','广东省惠州市电信'),(251,1523452607,'admin','183.25.126.68','管理员[admin]登录','admin','广东省惠州市电信'),(252,1523452620,'','183.25.126.68','会员登出','member','广东省惠州市电信'),(253,1523456472,'','183.25.126.68','会员登出','member','广东省惠州市电信'),(254,1523495179,'','183.25.126.68','会员登出','member','广东省惠州市电信'),(255,1523497387,'admin','183.25.126.68','管理员[admin]登录','admin','广东省惠州市电信'),(256,1523497465,'admin','183.131.162.240','管理员[admin]登录','admin','浙江省温州市电信'),(257,1523498041,'','183.131.162.241','会员登出','member','浙江省温州市电信'),(258,1523498156,'','183.25.126.68','会员登出','member','广东省惠州市电信'),(259,1523500050,'','183.25.126.68','修改ID为2的会员组','admin','广东省惠州市电信'),(260,1523500086,'','183.25.126.68','修改公告','admin','广东省惠州市电信'),(261,1523513056,'admin','183.25.126.68','管理员[admin]登录','admin','广东省惠州市电信'),(262,1525782863,'admin','36.5.48.153','管理员[admin]登录','admin','安徽省合肥市电信'),(263,1525783067,'','36.5.48.153','删除了ID为5的用户','admin','安徽省合肥市电信'),(264,1525785436,'','36.5.48.153','会员登出','member','安徽省合肥市电信'),(265,1525787807,'15058128401','36.5.48.153','编辑ID为1的管理员','admin','安徽省合肥市电信'),(266,1559509031,'admin','119.181.44.46','管理员[admin]登录','admin','山东省济宁市联通'),(267,1559509358,'13880088008','119.181.44.46','编辑ID为1的管理员','admin','山东省济宁市联通'),(268,1559510361,'13880088008','119.181.44.46','删除备份文件','admin','山东省济宁市联通'),(269,1559510390,'13880088008','119.181.44.46','编辑ID为1的管理员','admin','山东省济宁市联通'),(270,1560254495,'admin','127.0.0.1','管理员[admin]登录','admin','本机地址'),(271,1560254658,'admin','127.0.0.1','编辑ID为1的管理员','admin','本机地址'),(272,1560255070,'13880088008','127.0.0.1','删除留言','admin','本机地址'),(273,1560255076,'13880088008','127.0.0.1','删除留言','admin','本机地址'),(274,1560255082,'13880088008','127.0.0.1','删除留言','admin','本机地址'),(275,1560255091,'17677135552','127.0.0.1','删除留言','admin','本机地址'),(276,1560255171,'','127.0.0.1','会员登出','member','本机地址'),(277,1560256336,'13880088008','127.0.0.1','编辑ID为1的管理员','admin','本机地址');
/*!40000 ALTER TABLE `ds_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_mailbox`
--

DROP TABLE IF EXISTS `ds_mailbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_mailbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT '' COMMENT '消息标题',
  `content` varchar(500) DEFAULT '' COMMENT '消息内容',
  `addtime` int(10) DEFAULT '0' COMMENT '添加时间',
  `isread` tinyint(4) DEFAULT '0' COMMENT '是否已读',
  `member` varchar(50) DEFAULT NULL COMMENT '接收会员编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='私人信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_mailbox`
--

LOCK TABLES `ds_mailbox` WRITE;
/*!40000 ALTER TABLE `ds_mailbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_mailbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_member`
--

DROP TABLE IF EXISTS `ds_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `ji` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fl` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '会员编号',
  `password` varchar(32) DEFAULT NULL COMMENT '一级密码',
  `password2` varchar(32) DEFAULT NULL COMMENT '二级密码',
  `regdate` int(10) DEFAULT NULL COMMENT '注册时间',
  `checkdate` int(10) DEFAULT NULL COMMENT '审核时间',
  `online_time` int(11) NOT NULL,
  `parent` varchar(255) DEFAULT NULL COMMENT '推荐人',
  `parent_id` int(11) unsigned NOT NULL,
  `ot` int(10) unsigned NOT NULL DEFAULT '0',
  `tt` int(10) unsigned NOT NULL DEFAULT '0',
  `erwei` varchar(100) NOT NULL,
  `cardpic` varchar(100) NOT NULL,
  `cardpic1` varchar(100) NOT NULL,
  `zhifubao` varchar(30) NOT NULL,
  `weixin` varchar(30) NOT NULL,
  `guoji` varchar(10) NOT NULL,
  `btcaddress` varchar(255) NOT NULL,
  `parentcount` int(11) DEFAULT '0' COMMENT '推荐人数',
  `teamgonglv` decimal(11,2) unsigned NOT NULL DEFAULT '0.00',
  `mygonglv` decimal(11,2) unsigned NOT NULL DEFAULT '0.00',
  `qjinbi` decimal(15,8) unsigned NOT NULL DEFAULT '0.00000000',
  `jinbi` decimal(15,8) unsigned DEFAULT '0.00000000' COMMENT '金币数量',
  `jinzhongzi` decimal(11,2) unsigned DEFAULT '0.00' COMMENT '金种子数量',
  `point` decimal(11,2) unsigned NOT NULL DEFAULT '0.00',
  `share` decimal(11,2) unsigned NOT NULL DEFAULT '0.00',
  `sellshare` decimal(11,2) unsigned NOT NULL DEFAULT '0.00',
  `nickname` varchar(255) DEFAULT NULL COMMENT '呢称',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `truename` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `post` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `idcard` varchar(100) NOT NULL,
  `sktype` varchar(20) NOT NULL,
  `sknumber` varchar(50) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机',
  `qq` varchar(20) DEFAULT NULL COMMENT 'QQ',
  `wuliu` varchar(255) DEFAULT NULL COMMENT '报单中心编号',
  `token` varchar(255) DEFAULT NULL COMMENT '令牌',
  `status` tinyint(4) DEFAULT '0' COMMENT '状态',
  `checkstatus` tinyint(4) NOT NULL DEFAULT '0',
  `lock` tinyint(4) DEFAULT NULL COMMENT '锁定',
  `logintime` int(10) DEFAULT '0' COMMENT '本次登录时间',
  `loginip` varchar(50) DEFAULT '' COMMENT '本次登录IP',
  `prelogintime` int(10) DEFAULT '0' COMMENT '上次登录时间',
  `preloginip` varchar(255) DEFAULT '' COMMENT '上线登录IP',
  `logincount` int(10) DEFAULT '0' COMMENT '登录总次数',
  `loginaddress` varchar(255) DEFAULT '' COMMENT '本次登录地址',
  `preloginaddress` varchar(255) DEFAULT '' COMMENT '上次登录地址',
  `isout` tinyint(1) DEFAULT '0' COMMENT '是否分红出局',
  `isbaodan` tinyint(1) DEFAULT '0' COMMENT '是否为报单中心',
  `question1` varchar(50) DEFAULT '' COMMENT '密保问题1',
  `answer1` varchar(50) DEFAULT '' COMMENT '密保答案1',
  `question2` varchar(50) DEFAULT '' COMMENT '密保问题2',
  `answer2` varchar(50) DEFAULT '' COMMENT '密保答案2',
  `question3` varchar(50) DEFAULT '' COMMENT '密保问题3',
  `answer3` varchar(50) DEFAULT '' COMMENT '密保答案3',
  `parentpath` longtext COMMENT '推荐遗传码',
  `parentlayer` int(10) DEFAULT NULL COMMENT '推荐代数',
  `gamecount` int(10) DEFAULT '0' COMMENT '游戏账号总数',
  `validgamecount` int(10) DEFAULT '0' COMMENT '有效游戏账号总数',
  `tjsum` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '推荐奖累计',
  `bdsum` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '报单奖累计',
  `fhsum` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '分红累计',
  `ldsum` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '领导奖累计',
  `glsum` decimal(15,4) DEFAULT '0.0000' COMMENT '管理奖累计',
  `zysum` decimal(15,4) DEFAULT '0.0000' COMMENT '增员奖累计',
  `fparent` varchar(50) DEFAULT NULL COMMENT '上级编号',
  `my_jd` varchar(6) DEFAULT NULL COMMENT '节点位置(原始点/左/右)',
  `left` varchar(50) DEFAULT NULL COMMENT '左节点',
  `center` varchar(50) DEFAULT NULL,
  `right` varchar(50) DEFAULT NULL COMMENT '右节点',
  `leftnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `leftpro` int(10) unsigned NOT NULL DEFAULT '0',
  `leftpeng` int(11) unsigned NOT NULL DEFAULT '0',
  `centernum` int(10) unsigned NOT NULL DEFAULT '0',
  `centerpro` int(10) unsigned NOT NULL DEFAULT '0',
  `centerpeng` int(11) unsigned NOT NULL DEFAULT '0',
  `rightnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rightpro` int(10) unsigned NOT NULL DEFAULT '0',
  `rightpeng` int(11) unsigned NOT NULL DEFAULT '0',
  `countnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `countpro` int(10) unsigned NOT NULL DEFAULT '0',
  `countpeng` int(11) unsigned NOT NULL DEFAULT '0',
  `manage_left_end` varchar(50) DEFAULT '' COMMENT '层网络最左端',
  `manage_right_end` varchar(50) DEFAULT '' COMMENT '层网络最右端',
  `manage_node_data` longtext COMMENT '网体数据',
  `manage_ceng` int(11) DEFAULT '0' COMMENT '层数',
  `acc_type` varchar(255) DEFAULT '' COMMENT '账号类型(主账号/新增账号)',
  `main_acc` varchar(255) DEFAULT '' COMMENT '如果是新增账号，需要有对应的主账号',
  `showpass1` varchar(255) DEFAULT '' COMMENT '登录密码显示',
  `showpass2` varchar(255) DEFAULT '' COMMENT '二级密码显示',
  `liyou` varchar(255) DEFAULT NULL,
  `alipay_voucher` varchar(300) DEFAULT NULL,
  `president_qq` varchar(32) DEFAULT NULL,
  `president_qqs` varchar(32) DEFAULT NULL,
  `president_wxewm` varchar(200) DEFAULT NULL,
  `president_desc` text,
  PRIMARY KEY (`id`),
  KEY `left` (`left`),
  KEY `right` (`right`),
  KEY `username` (`username`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=278 ROW_FORMAT=DYNAMIC COMMENT='会员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_member`
--

LOCK TABLES `ds_member` WRITE;
/*!40000 ALTER TABLE `ds_member` DISABLE KEYS */;
INSERT INTO `ds_member` VALUES (1,3,0,0,'13880088008','25f9e794323b453885f5181f1b624d0b','d0970714757783e6cf17b26fb8e2298f',1511146976,1511146976,1560255701,'',0,0,0,'/Public/erwei/18327630680.png','','','18327630680','','','',9,273.32,10.14,12.00000000,9.60888305,0.00,0.00,0.00,0.00,'','','欧阳燕','','','4107261998026043X','支付宝','13880088008','13880088008','','','',1,3,0,1560255299,'',1560254794,'',73,'','',0,0,'','','','','','','',0,9233,2,0.0000,0.0000,0.00,0.0000,0.0000,0.0000,'','','','','',0,0,0,0,0,0,0,0,0,0,0,0,'','','',0,'主账号','','','','','','QQ3101137965微信15220724746','①748412984②748943473③748426026','/Public/Uploads/voucher/1523361483465.png','健康生活，共建共享，新的世界，新的一切，健康才是我们一辈子最大的财富，同时我们承诺加大对健康促进和健康文化的推广，实现财富与健康双赢！！！'),(2,1,0,0,'18352553273','e10adc3949ba59abbe56e057f20f883e','158c198f858a0628cca90d211a8d7a2a',1522812439,1522812439,1523423666,'13880088008',1,0,0,'/Public/erwei/18352553273.png','/Public/Uploads/voucher/1523265459375.png','','18352553273','18352553273','','',0,0.00,0.01,0.00000000,5012.00000000,0.00,0.00,0.00,0.00,NULL,NULL,'考虑下ye kui','','','','','','18352553273',NULL,NULL,NULL,1,3,NULL,1523421424,'',1523278150,'',8,'','',0,0,'','','','','','','1|',1,0,0,0.0000,0.0000,0.00,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',NULL,0,'主账号','','','','','/Public/Uploads/voucher/1523265456715.png',NULL,NULL,NULL,NULL),(3,1,0,0,'15361820876','25d55ad283aa400af464c76d713c07ad','25d55ad283aa400af464c76d713c07ad',1523242783,1523242783,1523411715,'13880088008',1,0,0,'/Public/erwei/15361820876.png','/Public/Uploads/voucher/1523243474397.jpg','','15361820876','15361820876','','',7,0.19,0.12,0.00000000,5006.45510661,0.00,0.00,0.00,0.00,NULL,NULL,'田进军','','','','','','15361820876',NULL,NULL,NULL,1,3,NULL,1523409793,'',1523367402,'',9,'','',0,0,'','','','','','','1|',1,9,0,0.0000,0.0000,0.00,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',NULL,0,'主账号','','','','','/Public/Uploads/voucher/1523243443900.jpg',NULL,NULL,NULL,NULL),(4,1,0,0,'18929333693','25d55ad283aa400af464c76d713c07ad','25d55ad283aa400af464c76d713c07ad',1523350784,1523350784,1523498404,'15361820876',3,0,0,'/Public/erwei/18929333693.png','','','18929333693','18929333693','','',0,0.00,0.02,0.00000000,5017.60321344,0.00,0.00,0.00,0.00,NULL,NULL,'孙阳杏','','','','','','18929333693',NULL,NULL,NULL,1,3,NULL,1523498241,'',1523495293,'',18,'','',0,0,'','','','','','','1|3|',2,0,0,0.0000,0.0000,0.00,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',NULL,0,'主账号','','','','','/Public/Uploads/voucher/1523353142197.png',NULL,NULL,NULL,NULL),(5,1,0,0,'18688285829','b83f0113f0bfb3e84ac1bbd1bf57535b','d5990ae0bc7935593540901b69b95cbe',1523410161,1523410161,1523452670,'15361820876',3,0,0,'/Public/erwei/18688285829.png','','','18688285829','294817170','','',0,0.00,0.02,0.00000000,5010.72000000,0.00,0.00,0.00,0.00,'',NULL,'陈成','','','','','','18688285829',NULL,NULL,NULL,1,3,NULL,1523452650,'',1523452229,'',9,'','',0,0,'','','','','','','1|3|',2,0,0,0.0000,0.0000,0.00,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',NULL,0,'主账号','','','','','/Public/Uploads/voucher/1523410258354.png',NULL,NULL,NULL,NULL),(6,1,0,0,'13129372699','25d55ad283aa400af464c76d713c07ad','e10adc3949ba59abbe56e057f20f883e',1523410362,1523410362,1523452649,'13880088008',1,0,0,'/Public/erwei/13129372699.png','','','13129372699','weixin72761','','',0,0.00,0.02,0.00000000,5012.00000000,0.00,0.00,0.00,0.00,'',NULL,'王兴','','','','','','13129372699',NULL,NULL,NULL,1,3,NULL,1523452226,'',1523446188,'',12,'','',0,0,'','','','','','','1|',1,0,0,0.0000,0.0000,0.00,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',NULL,0,'主账号','','','','','/Public/Uploads/voucher/1523410474199.png',NULL,NULL,NULL,NULL),(7,1,0,0,'13128712507','93a9e5bb1d598a453606e890f72bd393','063581eea21032087fb92cb983055e3c',1523410393,1523410393,1523455154,'15361820876',3,0,0,'/Public/erwei/13128712507.png','','','13128712507','13128712507','','',1,0.02,0.02,0.00000000,5005.60000000,0.00,0.00,0.00,0.00,'',NULL,'谢文东','','','','','','13128712507',NULL,NULL,NULL,1,3,NULL,1523455127,'',1523455044,'',13,'','',0,0,'','','','','','','1|3|',2,1,0,0.0000,0.0000,0.00,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',NULL,0,'主账号','','','','','/Public/Uploads/voucher/1523410516308.png',NULL,NULL,NULL,NULL),(8,1,0,0,'15970020304','a812d1e72e5e11b828d2950448f9cd14','e10adc3949ba59abbe56e057f20f883e',1523410452,1523410452,1523462046,'15361820876',3,0,0,'/Public/erwei/15970020304.png','','','15970020304','pinbotuandui96','','',1,0.03,0.02,0.00000000,5018.00000000,0.00,0.00,0.00,0.00,'',NULL,'刘海','','','','','','15970020304',NULL,NULL,NULL,1,3,NULL,1523461937,'',1523435851,'',9,'','',0,0,'','','','','','','1|3|',2,1,0,0.0000,0.0000,0.00,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',NULL,0,'主账号','','','','','/Public/Uploads/voucher/1523410614947.png',NULL,NULL,NULL,NULL),(9,1,0,0,'13580271969','e807f1fcf82d132f9bb018ca6738a19f','6fb42da0e32e07b61c9f0251fe627a9c',1523410773,1523410773,1523452659,'15361820876',3,0,0,'/Public/erwei/13580271969.png','','','13580271969','13580271969','','',0,0.00,0.02,0.00000000,5012.00000000,0.00,0.00,0.00,0.00,'',NULL,'陈玲','','','','','','13580271969',NULL,NULL,NULL,1,3,NULL,1523452656,'',1523452654,'',24,'','',0,0,'','','','','','','1|3|',2,0,0,0.0000,0.0000,0.00,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',NULL,0,'主账号','','','','','/Public/Uploads/voucher/1523411225307.jpg',NULL,NULL,NULL,NULL),(10,1,0,0,'18718932277','ac7aff9d6982de2c4c10285678ba054f','325f48c0ec98581c55fbed6d902774ac',1523412327,1523412327,1523432020,'15361820876',3,0,0,'','','','18718932277','18718932277','','',0,0.00,0.02,0.00000000,5012.00000000,0.00,0.00,0.00,0.00,NULL,NULL,'刘健欣','','','','','','18718932277',NULL,NULL,NULL,1,3,NULL,1523431905,'',1523420706,'',5,'','',0,0,'','','','','','','1|3|',2,0,0,0.0000,0.0000,0.00,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',NULL,0,'主账号','','','','','/Public/Uploads/voucher/1523412482190.jpg',NULL,NULL,NULL,NULL),(11,1,0,0,'13926787502','a812d1e72e5e11b828d2950448f9cd14','e10adc3949ba59abbe56e057f20f883e',1523412353,1523412353,1523497619,'15970020304',8,0,0,'/Public/erwei/13926787502.png','','','13926787502','Alinchen88888','','',0,0.00,0.03,0.00000000,5002.00000000,0.00,0.00,0.00,0.00,NULL,NULL,'刘晨','','','','','','13926787502',NULL,NULL,NULL,1,3,NULL,1523495911,'',1523452417,'',7,'','',0,0,'','','','','','','1|3|8|',3,0,0,0.0000,0.0000,0.00,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',NULL,0,'主账号','','','','','/Public/Uploads/voucher/1523412490182.gif',NULL,NULL,NULL,NULL),(12,1,0,0,'15220724746','93a9e5bb1d598a453606e890f72bd393','063581eea21032087fb92cb983055e3c',1523437386,1523437386,1523437734,'13128712507',7,0,0,'','','','15220724746','15220724746','','',0,0.00,0.02,0.00000000,5000.00000000,0.00,0.00,0.00,0.00,NULL,NULL,'刘海彬','','','','','','15220724746',NULL,NULL,NULL,1,3,NULL,1523437408,'',0,'',1,'','',0,0,'','','','','','','1|3|7|',3,0,0,0.0000,0.0000,0.00,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',NULL,0,'主账号','','','','','/Public/Uploads/voucher/1523437636452.jpg',NULL,NULL,NULL,NULL),(13,1,0,0,'15058128401','e10adc3949ba59abbe56e057f20f883e','e10adc3949ba59abbe56e057f20f883e',1523437592,1523437592,1525787600,'15361820876',3,0,0,'/Public/erwei/15058128401.png','','','15058128401','lb3678','','',0,0.00,0.02,0.00000000,5004.98566228,0.00,0.00,0.00,0.00,'',NULL,'王斌','','','','','','15058128401',NULL,NULL,NULL,1,3,NULL,1525785836,'',1525783465,'',3,'','',0,0,'','','','','','','1|3|',2,0,0,0.0000,0.0000,0.00,0.0000,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',NULL,0,'主账号','','','','','/Public/Uploads/voucher/1523437670699.png',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ds_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_member_award_log`
--

DROP TABLE IF EXISTS `ds_member_award_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_member_award_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `send_type` tinyint(1) NOT NULL,
  `userortype_id` int(11) NOT NULL,
  `send_style` tinyint(1) NOT NULL,
  `num` int(11) NOT NULL,
  `add_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_member_award_log`
--

LOCK TABLES `ds_member_award_log` WRITE;
/*!40000 ALTER TABLE `ds_member_award_log` DISABLE KEYS */;
INSERT INTO `ds_member_award_log` VALUES (1,1,1,2,1,4,1520414450),(2,8,1,2,1,4,1520414450),(3,66,1,2,1,4,1520414450),(4,1,1,2,2,1,1520414574),(5,8,1,2,2,1,1520414574),(6,66,1,2,2,1,1520414574),(7,1,1,2,2,1,1520414676),(8,8,1,2,2,1,1520414676),(9,66,1,2,2,1,1520414676),(10,3,1,6,2,1,1520414744),(11,5,1,6,2,1,1520414744),(12,3,1,6,1,3,1520414784),(13,5,1,6,1,3,1520414784),(14,3,1,6,2,15,1520418668),(15,5,1,6,2,15,1520418668),(16,1,1,2,1,2,1522257416),(17,3,1,1,1,2,1523254806),(18,3,1,1,2,12,1523353369),(19,4,1,1,2,12,1523353369),(20,2,1,1,2,12,1523435680),(21,5,1,1,2,12,1523435680),(22,6,1,1,2,12,1523435680),(23,7,1,1,2,12,1523435680),(24,8,1,1,2,12,1523435680),(25,9,1,1,2,12,1523435680),(26,10,1,1,2,12,1523435680),(27,11,1,1,2,12,1523435680),(28,2,1,1,1,1,1525785977),(29,3,1,1,1,1,1525785977),(30,4,1,1,1,1,1525785977),(31,5,1,1,1,1,1525785977),(32,6,1,1,1,1,1525785977),(33,7,1,1,1,1,1525785977),(34,8,1,1,1,1,1525785977),(35,9,1,1,1,1,1525785977),(36,10,1,1,1,1,1525785977),(37,11,1,1,1,1,1525785977),(38,12,1,1,1,1,1525785977),(39,13,1,1,1,1,1525785977),(40,2,1,1,2,5000,1525786028),(41,3,1,1,2,5000,1525786028),(42,4,1,1,2,5000,1525786028),(43,5,1,1,2,5000,1525786028),(44,6,1,1,2,5000,1525786028),(45,7,1,1,2,5000,1525786028),(46,8,1,1,2,5000,1525786028),(47,9,1,1,2,5000,1525786028),(48,10,1,1,2,5000,1525786028),(49,11,1,1,2,5000,1525786028),(50,12,1,1,2,5000,1525786028),(51,13,1,1,2,5000,1525786028);
/*!40000 ALTER TABLE `ds_member_award_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_member_group`
--

DROP TABLE IF EXISTS `ds_member_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_member_group` (
  `groupid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` char(15) NOT NULL,
  `tjjnum` int(10) unsigned NOT NULL DEFAULT '0',
  `teamnum` int(10) unsigned NOT NULL DEFAULT '0',
  `teamsuanli` decimal(11,2) unsigned NOT NULL DEFAULT '0.00',
  `mysuanli` decimal(11,2) unsigned NOT NULL DEFAULT '0.00',
  `shouxu` decimal(11,2) unsigned NOT NULL DEFAULT '0.00',
  `ldj` decimal(11,0) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_member_group`
--

LOCK TABLES `ds_member_group` WRITE;
/*!40000 ALTER TABLE `ds_member_group` DISABLE KEYS */;
INSERT INTO `ds_member_group` VALUES (1,1,'一级矿工',0,0,0.00,10.00,0.28,1,1,1487262445),(2,2,'二级矿工',10,100,5.00,20.00,0.25,2,1,1487262481),(3,3,'三级矿工',30,300,30.00,30.00,0.20,3,1,1487262481),(4,4,'四级矿工',80,1000,100.00,50.00,0.20,4,1,1487262481),(5,5,'五级矿工',150,3000,300.00,100.00,0.20,5,1,1487262481),(6,6,'六级矿工CEO',300,5000,500.00,100.00,0.18,6,1,1487262481);
/*!40000 ALTER TABLE `ds_member_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_member_recharge`
--

DROP TABLE IF EXISTS `ds_member_recharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_member_recharge` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gbc` decimal(15,2) NOT NULL,
  `rmb` decimal(15,2) NOT NULL,
  `bili` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `pay_type` varchar(30) NOT NULL,
  `note` varchar(100) NOT NULL,
  `add_time` int(11) NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员充值表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_member_recharge`
--

LOCK TABLES `ds_member_recharge` WRITE;
/*!40000 ALTER TABLE `ds_member_recharge` DISABLE KEYS */;
INSERT INTO `ds_member_recharge` VALUES (1,'201906112010193821',1,20.00,100.00,'0.2',1,'1003','',1560255019);
/*!40000 ALTER TABLE `ds_member_recharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_message`
--

DROP TABLE IF EXISTS `ds_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(45) NOT NULL DEFAULT '' COMMENT '发件人',
  `to` varchar(45) NOT NULL DEFAULT '' COMMENT '收件人',
  `subject` varchar(200) NOT NULL DEFAULT '' COMMENT '主题',
  `content` text NOT NULL COMMENT '内容',
  `reply` text NOT NULL COMMENT '回复',
  `hasview` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否已读 0:未读 1:已读',
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发送时间',
  `writetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复时间',
  `type` varchar(255) DEFAULT NULL COMMENT '留言类型',
  `status` varchar(255) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `subject` (`subject`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='站内信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_message`
--

LOCK TABLES `ds_message` WRITE;
/*!40000 ALTER TABLE `ds_message` DISABLE KEYS */;
INSERT INTO `ds_message` VALUES (1,'13954235255','','没送我矿机啊','通过不是送两台矿机吗？','',0,1517748735,0,'','处理中'),(2,'13954235255','','没送我矿机啊','通过不是送两台矿机吗？','',0,1517748741,0,'','处理中'),(3,'17674108594','','雷达币账户激活','用户名:lmh9688\r\n微信号:17674108594   (昵称:一世逍遥)','',1,1517760034,0,'','处理中'),(4,'15768429009','','注册了雷达币','账号ntm369   微信lgc1759019871','你微信号加不上\n\n',1,1517768254,1517826618,'','已回復'),(5,'15201112198','','雷达币','许秋丽15201112198','',1,1517779267,0,'','处理中'),(6,'17671229929','','我注册了','17671229929','',1,1517789002,0,'','处理中'),(7,'15287121558','','矿机呢',' 不是说实名认证送两台吗 我怎么只有一台呢','',0,1517790046,0,'','处理中'),(8,'13954235255','','老铁矿场做了两个多月了','升级后说我的账户不存在了，又重新注册的，以前的币怎么办？','',0,1517794955,0,'','处理中'),(9,'15303200587','','取消发布信息','16个币挂出去好几天了没人要，怎么取消挂单?','',0,1517795793,0,'','处理中'),(10,'15963692809','','为啥我只有一台矿机','我认证通过了怎么还是一台矿机呢？','',0,1517799508,0,'','处理中'),(11,'13318861687','','雷达钱包','雷达帐号cd61687，微信也是cd61687，请激活和进群','',1,1517803754,0,'','处理中'),(12,'13899814888','','还我老铁矿机','你们平台到底说话算不算话，说好的还矿机怎么没反应，留言也不回，还删除留言。','',0,1517803973,0,'','处理中'),(13,'13068722555','','激活','新会员注册激活，谢谢','',1,1517813134,0,'','处理中'),(14,'18057204159','','卖不出去','为什么卖不出去','',0,1517815626,0,'','处理中'),(15,'18980371423','','雷达币','注册名:yuanman123,微信号:AK349349','',1,1517819870,0,'','处理中'),(16,'15182546593','','雷达币账户激活！','账户名:15182546593\r\n微信号:15182546593','',1,1517822544,0,'','处理中'),(17,'13308200425','','申请推广矿机','申请推广矿机\r\n','',0,1517823063,0,'','处理中'),(18,'18437793683','','申请赠送矿机','推广已经够十个人，请赠送矿机','',1,1517823084,0,'','处理中'),(19,'13761759005','','实名后看不到矿机','看不到矿机','',0,1517823982,0,'','处理中'),(20,'13909776885','','是两台矿机','尊警的客服晚上好！不是两台矿机吗？谢谢！','',1,1517828723,0,'','处理中'),(21,'13909776885','','是两台矿机','尊警的客服晚上好！不是两台矿机吗？谢谢！','',0,1517828732,0,'','处理中'),(22,'13909776885','','是两台矿机','尊警的客服晚上好！不是两台矿机吗？谢谢！','',0,1517828732,0,'','处理中'),(23,'13909776885','','是两台矿机','尊警的客服晚上好！不是两台矿机吗？谢谢！','',0,1517828732,0,'','处理中'),(24,'13909776885','','是两台矿机','尊警的客服晚上好！不是两台矿机吗？谢谢！','',0,1517828733,0,'','处理中'),(25,'13530086477','','怎么只送一台矿机？','如标题','',0,1517831910,0,'','处理中'),(26,'18437793683','','申请赠送矿机','推广已有20人申请赠送矿机','',0,1517831953,0,'','处理中'),(27,'15902414471','','绑定手机号','您好！我注册了雷达币，在绑定手机号步骤中，能收到手机验证码，提交后显示图形验证码错误，请帮助解决，谢谢！','',0,1517838503,0,'','处理中'),(28,'13830073678','','雷达币账户激活','雷达币账户激活\r\nwangxiaojun130\r\n微信WXJ_YCY','',1,1517843386,0,'','处理中'),(29,'13935172406','','雷达币账户激活','账号:messi198528\r\n微信号:458766424','',1,1517849014,0,'','处理中'),(30,'15666016946','','雷达币账户激活','18615283798\r\nli544184260','',1,1517852090,0,'','处理中'),(31,'17705693045','','我他妈笑死了，推一个死一个','我他妈笑死了，推一个死一个，还推','',1,1517853947,0,'','处理中'),(32,'15312771174','','雷达币帐户激活','用户名wlp150，微信号wlp226619','',1,1517857755,0,'','处理中'),(33,'17605211839','','我注册了','我的微信woailaopo1314laogong\r\n注册账号zgh198310','',0,1517867816,0,'','处理中'),(34,'15964001011','','怎么不给矿机','我的怎么还没有矿机','',0,1517881752,0,'','处理中'),(35,'15288690658','','激活','帮我激活谢谢','',1,1517885368,0,'','处理中'),(36,'15263656428','','注册雷达','我已经注册了雷达，账号是：306860663，微信号：yin491215','',1,1517892646,0,'','处理中'),(37,'13308200425','','领推广矿机','已有20个人了','',1,1517896940,0,'','处理中'),(38,'18248061891','','雷达币注册','雷达币用户名：15849657102\r\n微信号：15849657102','',1,1517897356,0,'','处理中'),(39,'13700302418','','请问一下','平台玩的什么数学货币','',0,1517898478,0,'','处理中'),(40,'15222221790','','雷达币激活','jeffdongjie  微信 jeffdongjie','',1,1517901766,0,'','处理中'),(41,'15228710578','','雷达币激活','账号 ly15228710578 微信 15228710578 矿机一台 ','',1,1517903589,0,'','处理中'),(42,'13571696542','','BTT','BTT邀请码不存在啊，我试了好几次','',0,1517904486,0,'','处理中'),(43,'13561521476','','雷达币账户激活','用户名youhuai16\r\n微信13561521476','',1,1517905822,0,'','处理中'),(44,'15940870785','','矿机激活','15940870785+矿机激活','',1,1517906306,0,'','处理中'),(45,'13915741715','','审核未通过','资料已提交，审核为什么未通过','',0,1517908949,0,'','处理中'),(46,'13308200425','','申请推广矿机','申请推广矿机，请审核！谢谢！','',0,1517911779,0,'','处理中'),(47,'15146329678','','我的编号8609','我注册资料完了，我购买了一个矿机，第二台矿机没有，不知道什么原因。','',0,1517917932,0,'','处理中'),(48,'18625618931','','雷达账户激活','用户名18625618931\r\n微信号18625618931','',1,1517918770,0,'','处理中'),(49,'15195753327','','认证','什么时候认证通过','',0,1517919364,0,'','处理中'),(50,'18295760425','','补领矿机','只有一个矿机，商场不能免费购买第二个','',0,1517923117,0,'','处理中'),(51,'15076785540','','客服','你好我的矿机停了怎么启动啊','',0,1517924277,0,'','处理中'),(52,'13577460086','','现在注册送两台矿机吗？','亲，现在注册送两台矿机吗？','',0,1517924708,0,'','处理中'),(53,'15040130613','','雷达币帐户激活','用户名：bnm52\r\n微信：zhaonvhaidawo','',1,1517925514,0,'','处理中'),(54,'15927132976','','我已经通过认证了，为什么只有一台矿机？','我已经通过认证了，为什么只有一台矿机？  已经认证好久了，购买也不是免费的','',0,1517927485,0,'','处理中'),(55,'13283391805','','只有一台矿机','不是说有两台矿机吗？为什么只有一台呢','',0,1517929822,0,'','处理中'),(56,'13582609963','','BTT','怎么没有注册网址链接','',1,1517933085,0,'','处理中'),(57,'18100808332','','第二台矿机怎么没有','我什么都完善通过了，怎么没有2台矿机呢？','',0,1517941555,0,'','处理中'),(58,'13883833476','','实名认证','多久审核通过送矿机','',0,1517942820,0,'','处理中'),(59,'13883833476','','矿机','怎么只有一台矿机？','',0,1517966801,0,'','处理中'),(60,'15098109673','','雷达币','注册名：kingkangbaby\r\n微信：15098109673','',1,1517968870,0,'','处理中'),(61,'15263560882','','怎么卖币？','不会卖怎么办？？','',0,1517971576,0,'','处理中'),(62,'13308200425','','申请推广矿机','申请推广矿机，请审核发放。','',0,1517977593,0,'','处理中'),(63,'13308200425','','申请推广矿机','申请推广矿机，请审核发放。','',0,1517977649,0,'','处理中'),(64,'18815734390','','虚假交易举报','客服你好，会员ID1461，手机号18757753626的用户购买我的开心币，没有给我打款反而上传假图从而达到骗人赚币的目的，请客服帮我处理一下此会员账号谢谢。','',0,1517981504,0,'','处理中'),(65,'17086956059','','怎么都没有收开心币呢？','我想卖开心币啊？怎么都没有人收的啊？','',0,1517984496,0,'','处理中'),(66,'13039312060','','更改挂单价格怎样操作','更改挂单价格怎样操作','',0,1517986163,0,'','处理中'),(67,'13039312060','','挂单多日榜上无名','挂单多日榜上无名','',0,1517986462,0,'','处理中'),(68,'13039312060','','挂单多日榜上无名编号2365   账号13039312060','挂单多日榜上无名编号2365   账号13039312060  想更改挂单价格怎样操作  谢！谢','',0,1517986593,0,'','处理中'),(69,'13039312060','','挂单多日榜上无名编号2365   账号13039312060','挂单多日榜上无名编号2365   账号13039312060  怎样更改挂单价格','',0,1517986691,0,'','处理中'),(70,'13283391805','','只有一台矿机','不是送两台矿机吗？为什么我的只有一台','',0,1517987043,0,'','处理中'),(71,'13939785327','','咨询','我认证怎么还没通过，通过了送几台矿机？','',0,1517990927,0,'','处理中'),(72,'13302131236','','交易','交易对方不付款怎么办','',0,1517993484,0,'','处理中'),(73,'15289271848','','淘金矿客注册成功','8658注册淘金矿客成功，注册手机号15289271848','',0,1517994600,0,'','处理中'),(74,'15289271848','','淘金矿客注册成功','95597淘金矿客注册成功，注册手机号15289271848，前面把UID号写错了','',0,1517994985,0,'','处理中'),(75,'15862386907','','淘金矿场注册成功','UID:88309\r\n手机：15862386907','',0,1517995312,0,'','处理中'),(76,'13760304986','','淘金矿场注册成功','95951     13760304986','',0,1517995581,0,'','处理中'),(77,'13999919848','','淘金矿场注册成功','淘金矿场UID95760，手机13999919848','',0,1517995642,0,'','处理中'),(78,'13999919848','','淘金矿场注册成功','淘金矿场UID95760，手机13999919848','',0,1517995664,0,'','处理中'),(79,'18303316246','','你准备玩吭吗','那有自己平台推广别的币子的？','',0,1517996538,0,'','处理中'),(80,'15228710578','','金矿 注册 成功 ','96451 编号  15228710578 账号','',0,1517997916,0,'','处理中'),(81,'15228710578','','金矿 注册 成功 ','96451 编号 15228710578 账号','',0,1517997999,0,'','处理中'),(82,'15065823699','','淘金矿客','96549    15065823699','',0,1517998091,0,'','处理中'),(83,'15065823699','','淘金矿场注册成功','96549    15065823699','',0,1517998185,0,'','处理中'),(84,'15983947210','','淘金矿场注册成功','手机号15983947210\r\nUID:96507','',0,1517998212,0,'','处理中'),(85,'18980371423','','淘金矿场注册成功','本人UID:96623,手机号:18980371423\r\n申请领取中型矿机\r\n\r\n','',0,1517998249,0,'','处理中'),(86,'18303281888','','请送中型矿机','15631718363手机号矿号96691','',0,1517998910,0,'','处理中'),(87,'13504400150','','淘金矿场注册成功','8724    13504400150','',0,1517999512,0,'','处理中'),(88,'13308200425','','申请推广矿机','请审核，申请推广矿机，直推总共有40个了','',0,1517999853,0,'','处理中'),(89,'18743137891','','淘金矿场注册成功','8725    18743137891','',0,1517999877,0,'','处理中'),(90,'17615815415','','淘金矿场注册成功','UID:97223\r\n手机号:18763981235','',0,1518000379,0,'','处理中'),(91,'13997731733','','淘金矿场注册成功','UID:97298\r\n手机:13997731733','',0,1518000461,0,'','处理中'),(92,'13997731733','','不是说送台挖机吗？','不是说送台挖机吗？为什么我就一台挖机？？？','',0,1518000704,0,'','处理中'),(93,'13951176962','','淘金矿场注册','在此矿场注册成工13951176962这号注册，','',0,1518000793,0,'','处理中'),(94,'15065823699','','补发矿机','应该补发一台矿机，认证完应给两台','',0,1518000866,0,'','处理中'),(95,'15228941450','','淘金矿场','lD:90122\r\n手机:15228941450','',0,1518001221,0,'','处理中'),(96,'13577671428','','淘金矿场注册成功','账号:97073手机号:13577671428\r\n淘金矿场注册成功','',0,1518001403,0,'','处理中'),(97,'13806471927','','淘金矿场注册成功','UID:96965\r\n手机:13806471927','',0,1518001818,0,'','处理中'),(98,'13951176962','','淘金矿场注册','UID97388手机13951176962注册成功','',0,1518003691,0,'','处理中'),(99,'15216924007','','玩家必看！中型矿机大放送！','已经注册了淘金矿场，注册电话号码是15216924007','',0,1518004264,0,'','处理中'),(100,'13951176962','','注册成功','97388/13951176962手机，送我中型矿机吧','',0,1518004515,0,'','处理中'),(101,'18669402271','','淘金矿厂注册成功','淘金UID:96836   手机号：18669402271','',0,1518004542,0,'','处理中'),(102,'18669402271','','淘金矿厂注册成功','淘金UID:96836   手机号：18669402271','',0,1518004561,0,'','处理中'),(103,'18955376286','','淘金矿铲注册成功','UID98713电话18955376286','',0,1518004769,0,'','处理中'),(104,'15992140169','','淘金矿场注册成功!','UID:98145\r\n手机号码:15992140169','',0,1518005050,0,'','处理中'),(105,'18602780065','','淘金矿场注册成功！','编号：8729\r\n电话：18602780065','',0,1518005113,0,'','处理中'),(106,'17674762967','','矿机我只有一台','我只有一台矿机','',0,1518005266,0,'','处理中'),(107,'18796742100','','注册成功','UID98347手机18796742100注册成功','',0,1518005427,0,'','处理中'),(108,'13483725154','','淘金矿场','UID98132\r\n13483725154','',0,1518005532,0,'','处理中'),(109,'15902414471','','淘金矿场注册成功！','申请发放矿机！注册淘金矿场的UID98172，手机15902414471','',0,1518005681,0,'','处理中'),(110,'18996796795','','淘金矿场注册成功','UID89544\r\n18996796795申请领取矿机','',0,1518005863,0,'','处理中'),(111,'17737288150','','已注册','什么时间送矿机','',0,1518006092,0,'','处理中'),(112,'18996796795','','雷达币注册成功','18996796795\r\n微信18996796795\r\n申请领矿机','',0,1518006406,0,'','处理中'),(113,'15200338713','','淘金矿场注册成功','UID98556\r\n15200338713','',0,1518006858,0,'','处理中'),(114,'15040130613','','淘金矿场注册成功','UID:98448\r\n手机：15040130613','',0,1518007132,0,'','处理中'),(115,'15216924007','','雷达币','已经注册了雷达币，用户名是：looking;绑定手机15216924007，请送矿机哦','',1,1518010320,0,'','处理中'),(116,'15200338713','','今天的公告删了不算数吗？','怎么这样呢？？？？？？？','',0,1518010402,0,'','处理中'),(117,'18780183403','','雷达币账户激活','雷达币账户激活','',1,1518018672,0,'','处理中'),(118,'15904670771','','怎么卖币','我想问一下怎么卖币','',0,1518026957,0,'','处理中'),(119,'15932525759','','要求领取矿机','已经直推超过10人','',0,1518040398,0,'','处理中'),(120,'17507280873','','雷达币账户激活','账户名:jianghong1788\r\n微信号:15629510156\r\n谢谢','',1,1518041668,0,'','处理中'),(121,'13951176962','','注册成功送矿机','坐等小矿机，恭喜发财','',0,1518047423,0,'','处理中'),(122,'13822460057','','矿机','为什么我只有一台矿机','',0,1518048578,0,'','处理中'),(123,'13756696802','','矿机问题','说是注册有2台矿机，我注册完只有一个','',0,1518052095,0,'','处理中'),(124,'13904780886','','吐槽','我在你们旧平台买过七十多个币和一台活动矿机，活动矿机平移过来了，但是真金白银买的七十多个币没了，给你们留言几次你们也置之不理。新平台到现在是一个币也不敢再买了，伤了很多原始玩家的心，现在平台成了这样，你们在反思原因吗？','',0,1518054419,0,'','处理中'),(125,'18602780065','','淘金矿场注册成功','我是8729，手机18602780065：\r\n昨天说送一台中型机还送吗？还没回复； \r\n另外说送两台，目前只一台，看公告说免费购买，但提示余额不足；\r\n运行720小时只赚一个币，好象没什么玩头吧？该如何操作呢？\r\n谢谢回复！','',0,1518054477,0,'','处理中'),(126,'15932525759','','领取直推矿机','我已经直推13人,请求领取奖励矿机','',0,1518054645,0,'','处理中'),(127,'18955376286','','淘金矿铲注册成功','UID98713电话18955376286','',0,1518069151,0,'','处理中'),(128,'17615815415','','注册激活矿机问题，','我注册后只有一台矿机，在商城购买显示余额不足，这是什么情况','',0,1518071335,0,'','处理中'),(129,'13951176962','','淘金矿场注册','送的中矿机呢','',0,1518074612,0,'','处理中'),(130,'13308200425','','？','申请了几天了都没回复，怎回事？','',0,1518075578,0,'','处理中'),(131,'13954235255','','没送我矿机啊','手动买，说账户余额不足','',0,1518077442,0,'','处理中'),(132,'13176929709','','矿机','怎么我的矿机就一台啊，不是说给两台吗','',0,1518083627,0,'','处理中'),(133,'13176929709','','矿机','有没有客服在啊','',0,1518083790,0,'','处理中'),(134,'13176929709','','矿机','不是说就一台的可以在商城自己免费再领一台吗','',0,1518083868,0,'','处理中'),(135,'18996796795','','矿机呢','什么情况啊，说送的矿机呢，不会不送吧','',0,1518097744,0,'','处理中'),(136,'18105970086','','还做开心币吗？','还做开心币吗？还在官网打广告，卧槽牛逼啊','',0,1518102931,0,'','处理中'),(137,'18852092528','','呵呵','凉了 平台挂了','',0,1518103397,0,'','处理中'),(138,'13785057328','','第二个矿机在那领','我怎么找不到免费领矿的地方','',0,1518110081,0,'','处理中'),(139,'18955554448','','为什么冻结我的币','为什么冻结我的2.6个币？','',0,1518115140,0,'','处理中'),(140,'15923120138','','申请买矿机免费的','不是说有一台矿可以免费买一台怎么不行呀','',0,1518132832,0,'','处理中'),(141,'13202310465','','领第二台矿机','拿不到第二台矿机','',0,1518177649,0,'','处理中'),(142,'18625618931','','雷达币账户激活','微信18625618931\r\n手机号18625618931','',0,1518180678,0,'','处理中'),(143,'18437793683','','申请赠送矿机','邀请人数已经够30人啦，申请赠送矿机，','',0,1518182024,0,'','处理中'),(144,'15853622366','','怎么取消交易订单呢？','就是联系不到买家的呢！就想尽快的取消交易的呢！怎么操作的呢！','',0,1518211853,0,'','处理中'),(145,'15949871110','','什么时候审核能通过？','什么时候审核能通过？','',0,1518215834,0,'','处理中'),(146,'13911314721','','雷达币注册','注册账号13911314721 微信13911314721','',0,1518220970,0,'','处理中'),(147,'15937825351','','咨询领导','领导您好：我是2018年参加的开心币，为什么只送了一台矿机，请回复，谢谢！','',0,1518222086,0,'','处理中'),(148,'15865871600','','雷达币账户激活','用户名wk56568\r\n微信号15865871600','',0,1518224047,0,'','处理中'),(149,'15076530234','','我实名认证了就一台矿机','求官方再送一台矿机，我早注册的，一直都是一台','',0,1518226066,0,'','处理中'),(150,'13946306638','','上传照片','上传支付宝截图发一个样本好吗？我的推荐人不加我。我怕上传错了。谢谢！','',0,1518227078,0,'','处理中'),(151,'13734239623','','13734239623','我已注册完，请激活','',0,1518231520,0,'','处理中'),(152,'13405383433','','请尽快审核给我另一台矿机','请尽快审核给我另一台矿机自己体验好我好安排推广，速度审核发放矿机','',0,1518232141,0,'','处理中'),(153,'15000574651','','我在注册雷达币遇到问题','注册时:种子密钥的空格里填写的内容我搞不懂？\r\n请尽快回答','',0,1518242206,0,'','处理中'),(154,'15098945313','','我','我认证了什么时候通过','',0,1518242917,0,'','处理中'),(155,'13576556851','','领矿机','注册好多天了，没矿机','',0,1518250253,0,'','处理中'),(156,'15250560270','','认证问题','认证半天了，怎么还没有审核通过？','',0,1518251825,0,'','处理中'),(157,'18259486336','','为什么还是待审核？','是什么原因？','',0,1518258411,0,'','处理中'),(158,'15000574651','','我已经注册了雷达币账号','请开通矿机，激活','',0,1518262031,0,'','处理中'),(159,'18152039924','','请问我的怎么停了','请问我的怎么停了','',0,1518266028,0,'','处理中'),(160,'18520742889','','注册雷达币','注册雷达币看不懂。怎样操作？','',0,1518267888,0,'','处理中'),(161,'15564689852','','OWO','激活矿机谢谢15564689852','',0,1518270719,0,'','处理中'),(162,'15000574651','','178团队，','我的雷达币用户名和微信号都是手机号15000574651 请送矿机和雷达币激活','',0,1518271603,0,'','处理中'),(163,'15303486100','','卖币','币也卖不掉','',0,1518273140,0,'','处理中'),(164,'15000574651','','雷达币账号激活','我已经注册认证了雷达币账号，请帮我激活，教我领比特币矿机','',0,1518275285,0,'','处理中'),(165,'15235927055','','审核到底多长时间','两天了还没审核好?','',0,1518281354,0,'','处理中'),(166,'15923556093','','领矿机','直推33人','',0,1518281399,0,'','处理中'),(167,'15923556093','','领矿机','15923556093','',0,1518281465,0,'','处理中'),(168,'15923556093','','注册实名只有一台矿机','不能免费买一台','',0,1518281927,0,'','处理中'),(169,'13734239623','','13734239623','己注册，请激活，谢谢','',0,1518284248,0,'','处理中'),(170,'15641248171','','为什么一直是审核','我的资料完全，为什么一直审核','',0,1518301065,0,'','处理中'),(171,'18606123508','','审核十分钟，怎么还在宙核中24了','还在审核中','',0,1518307367,0,'','处理中'),(172,'15330690208','','激活','认证完请激活','',0,1518308793,0,'','处理中'),(173,'13101046986','','交易问题','对方不交易','',0,1518310158,0,'','处理中'),(174,'13101046986','','交易问题','对方不交易，币也退不出来','',0,1518310428,0,'','处理中'),(175,'13028149650','','交易不平衡','卖方根本卖不出去','',0,1518321306,0,'','处理中'),(176,'15564689852','','OWO','激活矿机谢谢15564689852','',0,1518322830,0,'','处理中'),(177,'13576556851','','激活矿机','注册好久了为什么还不审核？','',0,1518326696,0,'','处理中'),(178,'13210058770','','我只有一台矿机','不是说认证了就有2台么，我认证之后只有一台，说是可以手动免费购买，我够买就显示余额不足','',0,1518332434,0,'','处理中'),(179,'15976538558','','审核要多久呀！注册两天了，怎么还没有审核通过1','审核要多久呀！注册两天了，怎么还没有审核通过1','',0,1518334175,0,'','处理中'),(180,'15976538558','','请审核','15976538558','',0,1518334199,0,'','处理中'),(181,'13775549200','','我实名认证过了 好多天怎么未通过？','已经实名认证 一直在审核中 几天了','',0,1518339817,0,'','处理中'),(182,'13875403741','','审核','请尽快实名审核，如不成我会重新上传','',0,1518340447,0,'','处理中'),(183,'13734239623','','13734239623','已注册完成，请赠矿机','',0,1518341331,0,'','处理中'),(184,'13954822258','','WOW','请给激活矿机13954822258','',0,1518348812,0,'','处理中'),(185,'18254852726','','WOW','我已实名认证请激活矿机','',0,1518350920,0,'','处理中'),(186,'15256570566','','为什么不给','牛航为什么不给钱也不联系我','',0,1518358853,0,'','处理中'),(187,'15976538558','','有客服在的吗','审核要多久？','',0,1518359168,0,'','处理中'),(188,'15235927055','','矿机问题','我的支付宝已实名认证，怎么老通不过?','',0,1518368574,0,'','处理中'),(189,'15391109156','','火爆项目','【第一项目】\r\n注册送比特币0.001，推广也送比特币\r\n注册:\r\nhttp://zh-hongyan.com/app/home_register.html?incode=w62vok\r\n登录:\r\nhttp://zh-hongyan.com\r\n大家火速注册，火速推广提币到以太钱包。过了这个村就没了。\r\n\r\n【第二项目】\r\n注册玩游戏就送币，更有虚拟土地交易，买土地坐等升值。注册就送200哈希币，每邀请一人再得200哈希币，进QQ群再空投1000哈希币，币圈大佬推荐。\r\n链接：\r\nhttp://47.93.232.116/?shareid=30401\r\n同时欢迎加入官方qq群（1,2,3群已满，请加4群693070747）\r\n\r\n【第三项目】\r\n全自动自动挖币，自动赚钱，免费，免费注册[耶][耶]\r\n【超60万人下载的首款大众区块链APP——公信宝布洛克城，挖出8种数字资产，每天躺着赚钱】\r\nhttps://blockcity.gxshares.org/#/?referUser=dQiXmGmEY0DgUn9uZGx001527&amp;v=1','',0,1518384955,0,'','处理中'),(190,'15624056335','','支付宝截图问题','好几次了老是激活不了，能提供图例吗？','',0,1518390243,0,'','处理中'),(191,'15513486548','','0WO','给我激活','',0,1518395858,0,'','处理中'),(192,'18384503593','','矿机','多久送矿机？','',0,1518397576,0,'','处理中'),(193,'18217430890','','18217430890','注册好认证了怎么还没有矿机？','',0,1518400244,0,'','处理中'),(194,'13030557776','','客服你好','能提供开心币的App吗?','',0,1518403461,0,'','处理中'),(195,'13030557776','','客服你好','能提供开心币的App吗?','',0,1518403552,0,'','处理中'),(196,'15923556093','','领矿机','直推46人','',0,1518411437,0,'','处理中'),(197,'15923556093','','官方广告注册2矿机，少了一台矿机','①最新免费挖矿项目，注册认证即送2台矿机，速度撸起来！\r\n②不要身份证，不要银行卡，不要照片！秒审送矿机！\r\n③抢人、抢钱、抢市场、抢先机、你还等什么？注册后可立马推广\r\n④做推广，6代团队矿机收益提成，有木有很美丽？\r\n⑤APP同步上线，无充值，线下场外点对点交易\r\n⑥简洁，大方，清爽，深度优化，体验试人性化设计\r\n⑦不限IP ，不限设备，目前最具市场潜力黑马挖矿项目！\r\n注册连接：http://www.owocoin.mobi/index.php/index/sem/regSem/u/7591\r\n登陆地址：http://www.owocoin.red\r\nAPP下载：http://dwz.cn/6YlBm5','',0,1518411616,0,'','处理中'),(198,'13304607465','','注册不是送两台矿机没，怎么是一台啊','麻烦给回复，我也好回复会员的','',0,1518421535,0,'','处理中'),(199,'13793964399','','赠送矿机','我昨天11号认证，可只有一台矿机','',0,1518430910,0,'','处理中'),(200,'15976538558','','为什么送一台微矿机','广告不是说送两台微矿机的吗？怎么没有送，还是自己在矿机商城自己点开一台呢！','',0,1518434013,0,'','处理中'),(201,'15017105218','','找客服','在吗 不是说审核通过就是两台矿机  我的已经通过了为什么还是一台','',0,1518434634,0,'','处理中'),(202,'15017105218','','我也审核通过  为什么只有一台矿机','希望你们回复一下是什么原因','',0,1518434743,0,'','处理中'),(203,'13537933699','','不是说认证了就有两台矿机吗','怎么我的认证了再购不了二矿机？','',0,1518453012,0,'','处理中'),(204,'13590010021','','13590010021','还是一台机？？免费卖不了。麻烦处理下。','',0,1518458272,0,'','处理中'),(205,'13659759586','','激活的自动送两矿机','贵平台说所有注册激活的矿工有送两台免费云矿机离线挖矿本号只送一台是系统问题吗？','',0,1518476395,0,'','处理中'),(206,'17530709421','','矿机问题','我只有一台矿机，应该两台的。','',0,1518479164,0,'','处理中'),(207,'18046380000','','矿机','注册认证了，没有领到矿机','',0,1518508552,0,'','处理中'),(208,'18046380000','','矿机','没有领到矿机','',0,1518512841,0,'','处理中'),(209,'17728103873','','雷达币账户激活','注册账号:a2678380036\r\n微信号:a15170778415','',0,1518519777,0,'','处理中'),(210,'13562324868','','请取消订单','对方不要请取消订单吧','',0,1518522322,0,'','处理中'),(211,'15152159218','','认证','认证提交后要多久才能通过？才能有矿机。','',0,1518561201,0,'','处理中'),(212,'13581247182','','领矿机','认证完成领两台矿机，我怎么只有一台，另一台怎么领','',0,1518561559,0,'','处理中'),(213,'18660931160','','老铁矿厂cec升级后怎么会变成开心币呢？','原先的老铁矿厂已经有很多币啦，怎么给赔偿？公告说所有实名认证的都可以领两台矿机，为什么认购不了？','',0,1518563972,0,'','处理中'),(214,'18437793683','','申请赠送矿机','推广人数已经够30人请赠送矿机吧','',0,1518570678,0,'','处理中'),(215,'18351534598','','激活矿机','个人资料请审核一下，图片不知道上传成功没有，如果没有，退回重新上传。','',0,1518576643,0,'','处理中'),(216,'13990535494','','新手注册矿机问题','目前只有手动买的一台矿机，注册怎么不送了呢？','',0,1518583608,0,'','处理中'),(217,'18307950160','','是不是倒闭了','卖了几十次没人买，倒闭了巴','',0,1518596099,0,'','处理中'),(218,'18284546266','','请送矿机','推广多人，矿机好久送','',0,1518605577,0,'','处理中'),(219,'15585286207','','矿机','你们这个平台好扯蛋，后台公布注册送2个矿机，我注册后还抓紧去推荐，实名认证后，点击我的矿机，上面只有一台，下面会员问我都不知该如何回答了，是不是骗子平台?我真无法回答。后台管理员能告诉我吗?','',0,1518606960,0,'','处理中'),(220,'15585286207','','矿机','他妈的，就连审核都这么差，老子的会员提交一天了，还没通过，这是咋回事?','',0,1518623334,0,'','处理中'),(221,'18173209836','','好怎么充值？','怎么充值？','',0,1518665642,0,'','处理中'),(222,'18277745790','','没有矿机','注册后支付宝个人信息提交待审核','',0,1518704610,0,'','处理中'),(223,'17538710800','','跟你做项目，真丢人','跟你做项目，真丢人','',0,1518709892,0,'','处理中'),(224,'18017891093','','雷达币帐户激活','帐户：lak007  徽信：liuankun520','',0,1518730193,0,'','处理中'),(225,'13704194789','','激活','13704194789，激活','',0,1518787442,0,'','处理中'),(226,'17737288150','','签到不成功','淘金矿为什么签不成到？','',0,1518825726,0,'','处理中'),(227,'18723279977','','认证通过还是一个旷机','怎么办','',0,1518831253,0,'','处理中'),(228,'13883833476','','矿机','你们的推广连接上说的送二台矿机，怎么只有一台','',0,1518949229,0,'','处理中'),(229,'15562338827','','owo激活','帐号15562338827\r\n微信号syy518998','',0,1518951808,0,'','处理中'),(230,'18743077138','','限时抢购矿机','充值多少钱，送矿机？？？','',0,1519004634,0,'','处理中'),(231,'13844606667','','什么时候能通过','这都一宿了，什么时候能审核完了','',0,1519079827,0,'','处理中'),(233,'13308200425','','申请','申请推广奖励','',0,1519117736,0,'','处理中'),(234,'15502347469','','老矿工','我买的老矿工币，就这样了，怎么说','',0,1519132680,0,'','处理中'),(235,'13331221406','','请尽快审核','上传支付宝首页验证图片已过十几个小时，仍在待审核状态，请尽快通过审核。','',1,1519161687,0,'','处理中'),(236,'13098470159','','赠送矿机','我直推21人！认证成功15人！该送我矿机了！','',0,1519232992,0,'','处理中'),(237,'13518637550','','领矿机','注册实名不是领两台矿机么，俺怎么才一台，怎么领那一台13518637550','',0,1519252549,0,'','处理中'),(238,'13381261057','','注册链接太愚蠢','注册链接无法注册','',1,1519253982,0,'','处理中'),(239,'18843253569','','编号1307','系统升级不能操作','',0,1519279071,0,'','处理中'),(240,'15837265110','','更新','你好，登录时候提示更新，更新网页提示出错了','',0,1519284289,0,'','处理中'),(241,'13951176962','','升级','打开显示要升级，可无法找到下载链接','',0,1519300879,0,'','处理中'),(242,'15895055259','','升级不了','177492没法升级','',1,1519302367,0,'','处理中'),(243,'18106029655','','链接','应用更新显示下载出错。请给我更新链接。','',1,1519307065,0,'','处理中'),(244,'18843253569','','编号1307','ID177492','',1,1519307452,0,'','处理中'),(245,'13996437867','','无法升级','提示版本太低，又无法升级','',0,1519310694,0,'','处理中'),(246,'13996437867','','无法升级','提示版本太低，又无法升级','',0,1519310740,0,'','处理中'),(250,'15395039681','','版本升级','请把我177492账号升级。谢谢','',0,1519345553,0,'','处理中'),(251,'18017891093','','软件','升级怎升不了','',1,1519359102,0,'','处理中'),(252,'17664132287','','激活','微信gaiboda账号17664132287','',0,1519376058,0,'','处理中'),(253,'17677135552','','矿机留言','我的第二台矿机呢送的怎么不见卧槽','',0,1519385939,0,'','处理中'),(254,'17609259980','','只有一台矿机','认证成功了，为啥还只有一台矿机','',0,1519490451,0,'','处理中'),(255,'13439786439','','赠矿机','没领到第二台免费矿机\r\n','',1,1519560979,0,'','处理中');
/*!40000 ALTER TABLE `ds_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_node`
--

DROP TABLE IF EXISTS `ds_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `name` (`name`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=35 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_node`
--

LOCK TABLES `ds_node` WRITE;
/*!40000 ALTER TABLE `ds_node` DISABLE KEYS */;
INSERT INTO `ds_node` VALUES (1,'systemlogined','后台应用',1,'',1,0,1),(6,'Rbac','Rbac权限控制',1,'',6,1,2),(7,'Index','后台首页',1,'',1,1,2),(10,'index','用户列表',1,'',1,6,3),(11,'role','角色列表',1,'',1,6,3),(12,'node','节点列表',1,'',1,6,3),(16,'index','后台首页',1,'',1,7,3),(17,'Member','会员管理',1,'',2,1,2),(18,'uncheck','未审核会员',1,'',1,17,3),(19,'check','会员查询',1,'',1,17,3),(20,'pw_list','团队排位图',1,'',1,17,3),(21,'shu_list','团队树形图',1,'',1,17,3),(22,'Jinbidetail','资金管理',1,'',4,1,2),(23,'index','pv明细',1,'',1,22,3),(24,'paylists','充值管理',1,'',1,22,3),(25,'emoneyWithdraw','提现管理',1,'',1,22,3),(26,'shop','商城管理',1,'',3,1,2),(27,'type_list','分类列表',1,'',1,26,3),(28,'Info','信息交流',1,'',5,1,2),(29,'announce','公告管理',1,'',1,28,3),(30,'annType','公告类别',1,'',1,28,3),(31,'msgReceive','收件箱',1,'',1,28,3),(32,'msgSend','发件箱',1,'',1,28,3),(33,'System','系统设置',1,'',7,1,2),(34,'backUp','数据备份',1,'',1,33,3),(35,'customSetting','自定义配置',1,'',1,33,3),(36,' jiangjin','奖金查询',1,'',1,22,3),(37,'member_group','会员等级',1,'',1,17,3),(38,'lists','商品列表',1,'',1,26,3),(39,'orderlist','订单列表',1,'',1,26,3),(40,'paylist','零售管理',1,'',1,22,3),(41,'jinzhongzi','重消明细',1,'',1,22,3),(42,'point','代金券明细',1,'',1,22,3),(43,'editPay','零售操作',1,'',1,22,3),(44,'editPays','充值操作',1,'',1,22,3),(45,'editEmoney','提现操作',1,'',1,22,3),(46,'editPayhandles','充值提交操作',1,'',1,22,3);
/*!40000 ALTER TABLE `ds_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_order`
--

DROP TABLE IF EXISTS `ds_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_order` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(30) DEFAULT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `project` varchar(30) DEFAULT NULL,
  `count` decimal(10,2) DEFAULT '0.00',
  `sumprice` decimal(10,2) NOT NULL,
  `addtime` varchar(30) DEFAULT NULL,
  `UG_getTime` int(11) unsigned NOT NULL DEFAULT '0',
  `zt` int(10) NOT NULL DEFAULT '0',
  `sid` int(11) DEFAULT NULL,
  `imagepath` text,
  `yxzq` varchar(60) DEFAULT NULL COMMENT '可运行时间小时',
  `lixi` varchar(60) NOT NULL DEFAULT 'NULL' COMMENT '功率',
  `kjsl` varchar(255) DEFAULT NULL COMMENT '收益每小时',
  `kjbh` varchar(255) DEFAULT NULL,
  `already_profit` decimal(15,8) NOT NULL COMMENT '已经收益',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_order`
--

LOCK TABLES `ds_order` WRITE;
/*!40000 ALTER TABLE `ds_order` DISABLE KEYS */;
INSERT INTO `ds_order` VALUES (1,'13880088008',1,'小型云矿机',0.00,100.00,'2018-03-29 01:16:56',1560255567,2,2,'/Public/Uploads/20180329/5abbbff7e0c66.png','720','0.10','0.16666667','S295741639',120.00000240),(2,'13880088008',1,'迷你云矿机',0.00,10.00,'2018-03-29 01:22:52',1560255566,2,1,'/Public/Uploads/20180329/5abbbfe8ec0af.png','720','0.01','0.01527778','S295777293',11.00000161),(3,'18352553273',2,'微型云矿机',0.00,10.00,'2018-03-29 15:54:49',1522330376,1,1,'/Public/Uploads/20180329/5abbbfe8ec0af.png','720','0.01','0.01527778','S291008945',0.08609453),(4,'15361820876',3,'微型云矿机',0.00,10.00,'2018-04-09 11:14:17',1523267235,1,1,'/Public/Uploads/20180329/5abbbfe8ec0af.png','720','0.01','0.01527778','S094365778',0.10006097),(5,'15361820876',3,'小型云矿机',0.00,100.00,'2018-04-09 14:20:06',1523267239,1,2,'/Public/Uploads/20180329/5abbbff7e0c66.png','720','0.10','0.16666667','S095480609',0.57560186),(6,'18929333693',4,'微型云矿机',0.00,10.00,'2018-04-10 17:40:26',1523495365,1,1,'/Public/Uploads/20180329/5abbbfe8ec0af.png','720','0.01','0.01527778','S105322695',0.60321344),(7,'18688285829',5,'微型云矿机',0.00,10.00,'2018-04-11 09:56:47',1523411807,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S111180755',0.00000000),(8,'13129372699',6,'微型云矿机',0.00,10.00,'2018-04-11 14:23:09',1523427789,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S112778992',0.00000000),(9,'13128712507',7,'微型云矿机',0.00,10.00,'2018-04-11 14:23:16',1523427796,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S112779636',0.00000000),(10,'15970020304',8,'微型云矿机',0.00,10.00,'2018-04-11 14:23:23',1523427803,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S112780346',0.00000000),(11,'13580271969',9,'微型云矿机',0.00,10.00,'2018-04-11 14:23:31',1523427811,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S112781159',0.00000000),(12,'18718932277',10,'微型云矿机',0.00,10.00,'2018-04-11 14:23:37',1523427817,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S112781714',0.00000000),(13,'13926787502',11,'微型云矿机',0.00,10.00,'2018-04-11 14:23:44',1523427824,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S112782464',0.00000000),(14,'15220724746',12,'微型云矿机',0.00,10.00,'2018-04-11 17:09:29',1523437769,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S113776909',0.00000000),(15,'15058128401',13,'微型云矿机',0.00,10.00,'2018-04-11 17:09:43',1525787417,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S113778362',4.98566228),(16,'13926787502',11,'微型云矿机',0.00,10.00,'2018-04-11 21:15:53',1523452553,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S115255382',0.00000000),(17,'18352553273',2,'微型云矿机',0.00,10.00,'2018-05-08 21:26:17',1525785977,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S088597782',0.00000000),(18,'15361820876',3,'微型云矿机',0.00,10.00,'2018-05-08 21:26:17',1525785977,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S088597707',0.00000000),(19,'18929333693',4,'微型云矿机',0.00,10.00,'2018-05-08 21:26:17',1525785977,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S088597709',0.00000000),(20,'18688285829',5,'微型云矿机',0.00,10.00,'2018-05-08 21:26:17',1525785977,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S088597752',0.00000000),(21,'13129372699',6,'微型云矿机',0.00,10.00,'2018-05-08 21:26:17',1525785977,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S088597798',0.00000000),(22,'13128712507',7,'微型云矿机',0.00,10.00,'2018-05-08 21:26:17',1525785977,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S088597720',0.00000000),(23,'15970020304',8,'微型云矿机',0.00,10.00,'2018-05-08 21:26:17',1525785977,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S088597768',0.00000000),(24,'13580271969',9,'微型云矿机',0.00,10.00,'2018-05-08 21:26:17',1525785977,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S088597762',0.00000000),(25,'18718932277',10,'微型云矿机',0.00,10.00,'2018-05-08 21:26:17',1525785977,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S088597772',0.00000000),(26,'13926787502',11,'微型云矿机',0.00,10.00,'2018-05-08 21:26:17',1525785977,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S088597798',0.00000000),(27,'15220724746',12,'微型云矿机',0.00,10.00,'2018-05-08 21:26:17',1525785977,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S088597791',0.00000000),(28,'15058128401',13,'微型云矿机',0.00,10.00,'2018-05-08 21:26:17',1525785977,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S088597726',0.00000000),(29,'13880088008',1,'微型云矿机',0.00,10.00,'2019-06-11 20:07:19',1560254839,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S115483901',0.00000000),(30,'13880088008',1,'小型云矿机',0.00,100.00,'2019-06-11 20:21:05',1560255665,1,2,'/Public/Uploads/20180410/5acc9cacbb4bd.jpg','1440','0.10','0.08333330','S115566598',0.00000000),(31,'13880088008',1,'微型云矿机',0.00,10.00,'2019-06-11 20:21:17',1560255677,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S115567702',0.00000000),(32,'13880088008',1,'微型云矿机',0.00,10.00,'2019-06-11 20:21:24',1560255684,1,1,'/Public/Uploads/20180410/5acc9cce80539.jpg','1440','0.01','0.00763880','S115568431',0.00000000);
/*!40000 ALTER TABLE `ds_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_paydetail`
--

DROP TABLE IF EXISTS `ds_paydetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_paydetail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member` varchar(20) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` varchar(100) NOT NULL,
  `account` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `content` varchar(100) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_paydetail`
--

LOCK TABLES `ds_paydetail` WRITE;
/*!40000 ALTER TABLE `ds_paydetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_paydetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_paydetails`
--

DROP TABLE IF EXISTS `ds_paydetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_paydetails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member` varchar(20) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` varchar(100) NOT NULL,
  `account` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_paydetails`
--

LOCK TABLES `ds_paydetails` WRITE;
/*!40000 ALTER TABLE `ds_paydetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_paydetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_pin`
--

DROP TABLE IF EXISTS `ds_pin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_pin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pin` varchar(255) DEFAULT NULL,
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) DEFAULT '',
  `sc_date` int(11) unsigned DEFAULT NULL,
  `sy_user` varchar(20) NOT NULL DEFAULT '0',
  `zt` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sy_date` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_pin`
--

LOCK TABLES `ds_pin` WRITE;
/*!40000 ALTER TABLE `ds_pin` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_pin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_pointdetail`
--

DROP TABLE IF EXISTS `ds_pointdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_pointdetail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  `member` varchar(255) DEFAULT '' COMMENT '会员编号',
  `adds` decimal(11,2) DEFAULT '0.00' COMMENT '添加',
  `reduce` decimal(11,2) DEFAULT '0.00' COMMENT '减少',
  `balance` decimal(11,2) DEFAULT '0.00' COMMENT '余额',
  `addtime` int(11) DEFAULT '0' COMMENT '添加时间',
  `desc` varchar(255) DEFAULT '' COMMENT '说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=60 ROW_FORMAT=DYNAMIC COMMENT='购物券明细';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_pointdetail`
--

LOCK TABLES `ds_pointdetail` WRITE;
/*!40000 ALTER TABLE `ds_pointdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_pointdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_ppdd`
--

DROP TABLE IF EXISTS `ds_ppdd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_ppdd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` varchar(255) DEFAULT NULL,
  `g_id` varchar(255) DEFAULT NULL,
  `jb` varchar(15) DEFAULT NULL,
  `lkb` varchar(15) DEFAULT NULL,
  `p_user` varchar(255) DEFAULT NULL,
  `g_user` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `zt` int(8) NOT NULL DEFAULT '0',
  `pic` varchar(255) DEFAULT NULL,
  `zffs1` int(8) DEFAULT NULL,
  `zffs2` int(8) DEFAULT NULL,
  `zffs3` int(8) DEFAULT NULL,
  `ts_zt` int(8) NOT NULL DEFAULT '0',
  `date_hk` datetime DEFAULT NULL,
  `pic2` varchar(255) DEFAULT NULL,
  `p_name` varchar(60) DEFAULT NULL,
  `g_name` varchar(60) DEFAULT NULL,
  `p_level` varchar(60) DEFAULT NULL,
  `g_level` varchar(60) DEFAULT NULL,
  `jydate` datetime DEFAULT NULL,
  `imagepath` varchar(255) DEFAULT NULL,
  `danjia` varchar(10) DEFAULT NULL,
  `datatype` varchar(255) DEFAULT NULL,
  `zdjyr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_ppdd`
--

LOCK TABLES `ds_ppdd` WRITE;
/*!40000 ALTER TABLE `ds_ppdd` DISABLE KEYS */;
INSERT INTO `ds_ppdd` VALUES (10,'7','8','0.7','5','13128712507','15970020304','2018-04-11 16:38:45',2,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'1','1','2018-04-11 16:42:48','/Public/Uploads/pingzheng/5acdcaa7315a3.jpeg','0.14','cslkb',''),(12,'1',NULL,'1.5','10','13880088008',NULL,'2019-06-11 20:08:01',0,NULL,NULL,NULL,NULL,0,NULL,NULL,'',NULL,'3',NULL,NULL,NULL,'0.15','cslkb','');
/*!40000 ALTER TABLE `ds_ppdd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_product`
--

DROP TABLE IF EXISTS `ds_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `title` char(255) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `stock` mediumint(9) NOT NULL DEFAULT '0',
  `gonglv` decimal(11,2) unsigned NOT NULL DEFAULT '0.00',
  `yszq` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `shouyi` decimal(15,8) unsigned NOT NULL DEFAULT '0.00000000',
  `thumb` char(255) NOT NULL DEFAULT 'pic.png',
  `content` text NOT NULL,
  `pid` int(11) NOT NULL,
  `inputtime` int(11) unsigned NOT NULL,
  `xiangou` int(11) NOT NULL COMMENT '限购',
  `is_on` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_product`
--

LOCK TABLES `ds_product` WRITE;
/*!40000 ALTER TABLE `ds_product` DISABLE KEYS */;
INSERT INTO `ds_product` VALUES (1,3,'微型云矿机',10.00,499971,0.01,1440,0.00763880,'/Public/Uploads/20180410/5acc9cce80539.jpg','<p style=\"text-indent:2em;\">\r\n	<table style=\"width:100%;background-color:#CCCCCC;\" align=\"center\" cellspacing=\"0\" cellpadding=\"2\" bordercolor=\"#666666\" border=\"1\">\r\n		<tbody>\r\n			<tr>\r\n				<td align=\"center\">\r\n					矿机类型<br />\r\n				</td>\r\n				<td align=\"center\">\r\n					微型机器<br />\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td align=\"center\">\r\n					运算周期&nbsp;&nbsp; <br />\r\n				</td>\r\n				<td align=\"center\">\r\n					1440小时<br />\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td align=\"center\">\r\n					算力<br />\r\n				</td>\r\n				<td align=\"center\">\r\n					0.1GH/S<br />\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td align=\"center\">\r\n					24H产量<br />\r\n				</td>\r\n				<td align=\"center\">\r\n					0.183OHC <br />\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td align=\"center\">\r\n					144H产量<br />\r\n				</td>\r\n				<td align=\"center\">\r\n					1.100OHC <br />\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td align=\"center\">\r\n					1440H产量<br />\r\n				</td>\r\n				<td align=\"center\">\r\n					11.00OHC <br />\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td align=\"center\">\r\n					<strong><span style=\"color:#FF9900;font-size:14px;\">合计</span></strong><br />\r\n				</td>\r\n				<td align=\"center\">\r\n					<strong><span style=\"color:#FF9900;\"><span style=\"font-size:14px;\">购买价10.OHC </span><span style=\"font-size:14px;\"></span></span></strong><br />\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</p>',0,1509817831,20,0),(2,3,'小型云矿机',100.00,499997,0.10,1440,0.08333330,'/Public/Uploads/20180410/5acc9cacbb4bd.jpg','<table style=\"width:100%;background-color:#CCCCCC;\" cellspacing=\"0\" cellpadding=\"2\" bordercolor=\"#999999\" border=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"center\">\r\n				矿机类型<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				小型机器<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				运算周期<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				1440H<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				算力<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				0.1GH/S<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				24H产量<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				1.99999OHC <br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				144H产量<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				11.999999OHC <br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				1440H产量<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				120.0000OHC <br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				<span style=\"font-size:14px;color:#FF9900;\"><strong>合计</strong></span><br />\r\n			</td>\r\n			<td align=\"center\">\r\n				<span style=\"color:#FF9900;font-size:14px;\"><strong>购买价100.OHC </strong></span><span style=\"color:#FF9900;font-size:14px;\"><strong></strong></span><br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />\r\n<br />',0,1509817897,30,0),(3,3,'中型云矿机',1000.00,500000,1.00,1440,0.90277700,'/Public/Uploads/20180410/5acc9cc0e8d01.jpg','<table style=\"width:100%;background-color:#CCCCCC;\" cellspacing=\"0\" cellpadding=\"2\" bordercolor=\"#999999\" border=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"center\">\r\n				矿机类型<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				中型机器<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				运算周期<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				1440H<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				算力<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				1GH/S<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				24H产量<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				21.6667OHC <br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				144H产量<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				130.0000OHC <br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				1440H产量<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				<p>\r\n					1300.0000OHC\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				<span style=\"color:#FF9900;font-size:14px;\"><strong>合计</strong></span><br />\r\n			</td>\r\n			<td align=\"center\">\r\n				<strong><span style=\"font-size:14px;color:#FF9900;\">购买价1000.OHC </span></strong><strong><span style=\"font-size:14px;color:#FF9900;\"></span></strong><br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />\r\n<br />',0,1509817946,100,0),(4,3,'大型云矿机',5000.00,100000,5.00,1440,4.72222200,'/Public/Uploads/20180410/5acc9d4518c39.jpg','<table style=\"width:100%;background-color:#CCCCCC;\" cellspacing=\"0\" cellpadding=\"2\" bordercolor=\"#999999\" border=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"center\">\r\n				矿机类型 <br />\r\n			</td>\r\n			<td align=\"center\">\r\n				大型云机器<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				运算周期<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				1440H<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				算力<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				5GH/S<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				24H产量<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				113.3333OHC <br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				144H产量<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				679.99999OHC <br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				1440H产量<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				6800.0000OHC <br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				<span style=\"font-size:14px;color:#FF9900;\"><strong>合计</strong></span><br />\r\n			</td>\r\n			<td align=\"center\">\r\n				<span style=\"font-size:14px;color:#FF9900;\"><strong>购买价5000.OHC </strong></span><br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />\r\n<br />',0,1509817983,10,0),(5,3,'超大型云矿机',10000.00,100000,10.00,1440,9.72222200,'/Public/Uploads/20180410/5acc9d914747f.jpg','<table style=\"width:100%;background-color:#CCCCCC;\" cellspacing=\"0\" cellpadding=\"2\" bordercolor=\"#999999\" border=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"center\">\r\n				矿机类型<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				超大型机云器<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				运算周期<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				1440H<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				算力<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				10GH/S<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				24H产量<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				233.33333OHC <br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				144H产量<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				1400.00OHC <br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				1440H产量<br />\r\n			</td>\r\n			<td align=\"center\">\r\n				14000.000OHC <br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\">\r\n				<span style=\"color:#FF9900;font-size:14px;\"><strong>合计</strong></span><br />\r\n			</td>\r\n			<td align=\"center\">\r\n				<strong><span style=\"color:#FF9900;font-size:14px;\">购买价：10000.0HC </span></strong><br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />\r\n<br />',0,1509818020,10,0),(6,3,'巨集型云矿机',50000.00,999999,50.00,1440,55.55555000,'/Public/Uploads/20180410/5acc98da23b46.jpg','<table cellspacing=\"0\" cellpadding=\"2\" bordercolor=\"#999999\" border=\"1\" style=\"width:689px;background-color:#CCCCCC;\">\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"center\" style=\"text-align:left;\">\r\n				矿机类型<br />\r\n			</td>\r\n			<td align=\"center\" style=\"text-align:left;\">\r\n				巨集型云机器<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\" style=\"text-align:left;\">\r\n				运算周期<br />\r\n			</td>\r\n			<td align=\"center\" style=\"text-align:left;\">\r\n				1440H<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\" style=\"text-align:left;\">\r\n				算力<br />\r\n			</td>\r\n			<td align=\"center\" style=\"text-align:left;\">\r\n				50GH/S<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\" style=\"text-align:left;\">\r\n				24H产量<br />\r\n			</td>\r\n			<td align=\"center\" style=\"text-align:left;\">\r\n				1333.3332OHC&nbsp;<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\" style=\"text-align:left;\">\r\n				144H产量<br />\r\n			</td>\r\n			<td align=\"center\" style=\"text-align:left;\">\r\n				7999.9992OHC&nbsp;<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\" style=\"text-align:left;\">\r\n				1440H产量<br />\r\n			</td>\r\n			<td align=\"center\" style=\"text-align:left;\">\r\n				80000.00OHC&nbsp;<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td align=\"center\" style=\"text-align:left;\">\r\n				<span style=\"color:#FF9900;font-size:14px;\"><strong>合计</strong></span><br />\r\n			</td>\r\n			<td align=\"center\">\r\n				<div style=\"text-align:left;\">\r\n					<strong><span style=\"color:#FF9900;font-size:14px;\">购买价：50000.OHC&nbsp;</span></strong> \r\n				</div>\r\n				<div style=\"text-align:left;\">\r\n					<br />\r\n				</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>',0,1523357820,10,0);
/*!40000 ALTER TABLE `ds_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_qjinbidetail`
--

DROP TABLE IF EXISTS `ds_qjinbidetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_qjinbidetail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `member` varchar(255) DEFAULT '' COMMENT '会员编号',
  `adds` decimal(12,2) unsigned DEFAULT '0.00' COMMENT '添加',
  `reduce` decimal(12,2) unsigned DEFAULT '0.00' COMMENT '减少',
  `balance` decimal(12,2) unsigned DEFAULT '0.00' COMMENT '余额',
  `addtime` int(10) DEFAULT '0' COMMENT '操作时间',
  `statustime` int(11) unsigned NOT NULL DEFAULT '0',
  `desc` varchar(255) DEFAULT '' COMMENT '说明',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `member` (`member`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=68 ROW_FORMAT=DYNAMIC COMMENT='欠钱明细';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_qjinbidetail`
--

LOCK TABLES `ds_qjinbidetail` WRITE;
/*!40000 ALTER TABLE `ds_qjinbidetail` DISABLE KEYS */;
INSERT INTO `ds_qjinbidetail` VALUES (1,0,'13880088008',1.25,0.00,1.25,1522312299,0,'交易市场下单',1),(2,0,'13880088008',0.00,1.25,0.00,1522312401,0,'交易订单完成扣除',1),(3,0,'13880088008',1.25,0.00,1.25,1522324713,0,'交易市场下单',1),(4,0,'13880088008',0.00,1.25,0.00,1522325006,0,'交易订单完成扣除',1),(5,0,'13880088008',1.25,0.00,1.25,1522325191,0,' 卖出挂单',1),(6,0,'13880088008',0.00,1.25,0.00,1522325254,0,'交易订单完成扣除',1),(7,0,'15361820876',6.50,0.00,6.50,1523353831,0,'交易市场下单',1),(8,0,'15361820876',0.00,6.50,0.00,1523354004,0,'交易订单完成扣除',1),(9,0,'18688285829',1.28,0.00,1.28,1523435923,0,'交易市场下单',1),(10,0,'13128712507',6.40,0.00,6.40,1523435925,0,' 卖出挂单',1),(11,0,'18688285829',0.00,1.28,0.00,1523436000,0,'交易订单完成扣除',1),(12,0,'13128712507',0.00,6.40,0.00,1523436246,0,'交易订单完成扣除',1),(13,0,'13880088008',12.00,0.00,12.00,1560254881,0,' 卖出挂单',1);
/*!40000 ALTER TABLE `ds_qjinbidetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_receivable`
--

DROP TABLE IF EXISTS `ds_receivable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_receivable` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member` varchar(255) DEFAULT NULL COMMENT '会员编号',
  `type` varchar(50) DEFAULT NULL COMMENT '收款方式',
  `name` varchar(255) DEFAULT NULL COMMENT '收款人姓名',
  `account` varchar(255) DEFAULT NULL COMMENT '收款人账号',
  `address` varchar(255) DEFAULT NULL COMMENT '开户行',
  `isdefault` tinyint(4) DEFAULT '0' COMMENT '是否默认',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收款账号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_receivable`
--

LOCK TABLES `ds_receivable` WRITE;
/*!40000 ALTER TABLE `ds_receivable` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_receivable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_regbd`
--

DROP TABLE IF EXISTS `ds_regbd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_regbd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `desc` varchar(100) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_regbd`
--

LOCK TABLES `ds_regbd` WRITE;
/*!40000 ALTER TABLE `ds_regbd` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_regbd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_ridate`
--

DROP TABLE IF EXISTS `ds_ridate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_ridate` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `jinkai` varchar(255) DEFAULT NULL,
  `zuoshou` varchar(255) DEFAULT NULL,
  `jrzg` varchar(255) DEFAULT NULL,
  `jrzd` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_ridate`
--

LOCK TABLES `ds_ridate` WRITE;
/*!40000 ALTER TABLE `ds_ridate` DISABLE KEYS */;
INSERT INTO `ds_ridate` VALUES (1,NULL,NULL,NULL,NULL,'1522166400'),(2,NULL,NULL,'0.09',NULL,'1522252800'),(3,NULL,NULL,NULL,NULL,'1522512000'),(4,NULL,NULL,NULL,NULL,'1522598400'),(5,NULL,NULL,NULL,NULL,'1522684800'),(6,NULL,NULL,NULL,NULL,'1522771200'),(7,NULL,NULL,NULL,NULL,'1523116800'),(8,NULL,NULL,NULL,NULL,'1523203200'),(9,NULL,NULL,'0.14',NULL,'1523289600'),(10,NULL,'0.14','0.14',NULL,'1523376000'),(11,NULL,'0.14',NULL,NULL,'1523462400'),(12,NULL,NULL,NULL,NULL,'1525708800'),(13,NULL,NULL,NULL,NULL,'1559491200'),(14,NULL,NULL,NULL,NULL,'1560182400');
/*!40000 ALTER TABLE `ds_ridate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_role`
--

DROP TABLE IF EXISTS `ds_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=32 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_role`
--

LOCK TABLES `ds_role` WRITE;
/*!40000 ALTER TABLE `ds_role` DISABLE KEYS */;
INSERT INTO `ds_role` VALUES (5,'审核员',0,1,'审核');
/*!40000 ALTER TABLE `ds_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_role_user`
--

DROP TABLE IF EXISTS `ds_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_role_user`
--

LOCK TABLES `ds_role_user` WRITE;
/*!40000 ALTER TABLE `ds_role_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_rotate`
--

DROP TABLE IF EXISTS `ds_rotate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_rotate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `pro_id` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `time` int(11) unsigned NOT NULL,
  `use` smallint(5) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_rotate`
--

LOCK TABLES `ds_rotate` WRITE;
/*!40000 ALTER TABLE `ds_rotate` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_rotate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_session`
--

DROP TABLE IF EXISTS `ds_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_session` (
  `session_id` varchar(255) NOT NULL DEFAULT '',
  `session_expire` int(11) NOT NULL,
  `session_data` blob,
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=196 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_session`
--

LOCK TABLES `ds_session` WRITE;
/*!40000 ALTER TABLE `ds_session` DISABLE KEYS */;
INSERT INTO `ds_session` VALUES ('00ncfqsp7r3gifq13vr6vbeg15',1513397075,''),('00v2sh0aaag7simvunc43ctae5',1513398142,''),('01i09rd7qts8d0ou1agfi9of24',1513398061,''),('0274n5t13uouuosrs25v6tf3l4',1513397119,''),('04deba55iclq8jqajvf7p6rct6',1513397289,''),('05dm6parlk9uh01mq6i0542653',1513397293,''),('0775oiskajdrucddjbdjm1lv96',1513397402,''),('07njifcviessuan15dd3dijir1',1513398270,''),('07pd8qthdukq147u21oq5r1ac6',1513397560,''),('085dr4nvl8dhf4l3bi8u003f40',1513397086,''),('09p4rjata5kicc15k6hs12ir65',1513397244,'mid|s:5:\"13226\";username|s:11:\"18282893502\";member|s:11:\"memberlogin\";'),('09qv7tobvkpvvrna6ormtc1gi4',1513397456,''),('09sgqla7tni1ugm43mv4co7m90',1513397386,''),('0bcp9c0vmqrnscr6g1vd509sc2',1513397087,''),('0bh1ka2ipk54jeqflt4egc7io1',1513397357,''),('0cjsjn79q74horbnvljopshtn1',1513398221,''),('0f0l7pp02j8va0jqn0r2l2j164',1513397293,''),('0factrnth6umlqod0uinkdlg32',1513397311,''),('0fk2j4f7oqk64paaoao2vg23b6',1513397682,''),('0g4n7pnb7q40rvj8ljvmj3kd52',1513397440,''),('0gvef0r9hbn049r4r3chmbsf47',1513397237,''),('0h7skadlgfchfpnssmj9oem204',1513398507,'mid|s:5:\"13645\";username|s:11:\"15879076122\";member|s:11:\"memberlogin\";'),('0i9k53v0rbef2coo84o00hopj6',1513398345,''),('0j32b69q52kmsp2o2p2a1pfth6',1513398387,'mid|s:4:\"6003\";username|s:11:\"13021668360\";member|s:11:\"memberlogin\";'),('0j57qml6arisoknk0hqevrjrp4',1513397809,''),('0jivovjja4j4op2ckl3tv06sm4',1513397260,''),('0kievk6vjotjbt8n2a3cb99es7',1513397614,''),('0kmokkb30aonv3q6fa2k6vo4v3',1513397581,''),('0lhmdk0ltbeaassetq71jt1qj4',1513397243,'mid|s:5:\"15912\";username|s:11:\"18193554245\";member|s:11:\"memberlogin\";'),('0mq5uikpa9scftvr4bmurjmua7',1513398068,''),('0n6ougq9hjollp7ktqhp9um8o5',1513398282,''),('0oodenf6fri1h8ueoi6sjkd5j0',1513398426,''),('0pd7ri2c2q4i1gb7hot4ondq40',1513398237,''),('0psbvg5r49jprf74ptk8mc2oi1',1513397828,''),('0q4hsual28fiinik0frqo6f0b7',1513397175,''),('0qbmvstkr2dnolmkchkklc2cq4',1513397372,''),('0qn2ddpkcjd33nlbh6838ibl16',1513397773,'mid|s:5:\"16473\";username|s:11:\"18381718525\";member|s:11:\"memberlogin\";'),('0qsvb5qvfc0h097oa2bon8omi5',1513398242,''),('0rr3fhv5our95g39t8iko0m8g2',1513397469,'mid|s:3:\"221\";username|s:11:\"13883580806\";member|s:11:\"memberlogin\";'),('0s3ufqquck7i0edi9bpt4p8om7',1513397389,''),('0tf2sf5s767kjk3tepeuq7gn64',1513398228,''),('0u0ud35n421h209t27b0nq4q67',1513397904,''),('0v5eto2kpmuhgmoponb5lnd8a4',1513397847,''),('0vcblu1iqkh43rqiggeg82brm4',1513398188,'mid|s:4:\"5896\";username|s:11:\"18706020411\";member|s:11:\"memberlogin\";'),('1082cd56ccq57a5a4j7l8447u2',1513397544,''),('110epuunmkvsn0ive3ndede9f1',1513397600,''),('11ddpfffal9uaap1f7bubssgo3',1513397402,''),('11olh0iverus4mrqrv8jc1qn80',1513398039,''),('1223cfv4jcoem0e9cigpd53ri5',1513398447,''),('122a9vmluhscqe2ahutuu9ttd0',1513398367,'mid|s:4:\"1420\";username|s:11:\"15885598205\";member|s:11:\"memberlogin\";'),('1436rudl52v991lp4pe210s5c0',1513397385,''),('14m46ddhsog1t174ik8bt02pn4',1513398291,''),('14n89jlj09ihj5uag3qrkq75h0',1513398202,''),('15ef1cq47uqhk25mcj34v7ibl7',1513397380,''),('15kfcnds44d33hccj3dsor4ki3',1513397341,''),('15l6tar90nsn3at0hhrfj6l585',1513397534,''),('162rep6nnl5sqrgohulbbi8s05',1513397087,''),('165grih9kd5a5u7ek4ni30psi3',1513397872,''),('16njs3esi9eg0tlvpdt5272020',1513397518,''),('18ook2vu1tv7kbprbmhjue0ri4',1513397690,''),('19o986b748s1rgl84e91fiqm62',1513397468,''),('1e1dl4nn88ht8i3e0rn3r30cu7',1513397366,''),('1geojql32jekrl1714t6u7cba1',1513397468,''),('1h3jta5ojuuvifib6fn154bb25',1513397402,''),('1hrgs51avlmh61lbm2h6stmjn2',1513397531,''),('1io26371kbl88as5tafh8f7360',1513398129,''),('1iubs2eo18akiu5al3oftmlfe5',1513398125,''),('1ivce4von0umvoe7na318pk531',1513398097,''),('1jm4b3573eigmha7tdm0q4hva4',1513398202,''),('1k0ekcbd7eq107i41c4jl27vm6',1513398100,''),('1k70ja1jfmkl3l7v9q0d6eddo1',1513397656,''),('1kntp4umbefdnmtd0h1e226oq7',1513397384,''),('1lf3m3ee7n2mordkh46723obc0',1513397369,''),('1lrtn2o0vq5n4i1bju7194ip23',1513398071,''),('1mfv5u1vepe744tn8jh3qil971',1513398023,''),('1ndkudonuktc9vppkb83kuejm7',1513397086,''),('1nqknfeoq51ks6r495lol3aro3',1513397137,''),('1on9nhj7sc6lvbotlqbf08kf97',1513397417,''),('1qchmnt6pj17cfghrqo2kqirp4',1513397612,''),('1rei2bcllvqjqo7b79o68cvsd3',1513398411,''),('1t04im6qeirfnut783f2eicbj4',1513398229,''),('1t88f2p61b7jkenah6hl8d2354',1513398409,''),('1unl96trj0nrbim5sme41gbgu5',1513398125,''),('210bbqk64dpcnkah96h2i1lpq6',1513397306,''),('22kb11abrt59eirphvhmssr3q7',1513398499,''),('230c9n92qniq56u6scn275i770',1513398295,''),('236on7a42vk4p0cl3m7boftdu3',1513398008,''),('23crpoi8j28miph64lb10kfa45',1513397270,''),('23n0dfpkhcljva3a48f9fm16s4',1513397198,''),('23ur814ov748etuutml02vru95',1513397388,''),('23vqiq1cnq2v7gb67id7ejr400',1513397568,''),('24l0sav8p78a6rrvq5cpo2l283',1513397374,''),('24qodskpj1jrucv6f16pibg9l7',1513397238,''),('24v5hek9k5de975h13b3iqt8h3',1513397301,''),('26busjq6ek8tjv89ru23mbdld4',1513397456,''),('27jsmipcul606td820d6b3bk51',1513397769,'mid|s:5:\"16199\";username|s:11:\"15004872363\";member|s:11:\"memberlogin\";'),('28sk6uadh441jufu40c8fgsof5',1513397318,''),('295v3va0bdnuobnte9nibruim3',1513397283,''),('2a7g6a3ulg40heqrjq2uk3oq76',1513398227,''),('2bqt28m8sbmv4qvpl2jbuiebq4',1513397741,''),('2c1htn15t3oscmomm7b4jmgv87',1513397627,''),('2c46nktjeuebukq70jals2t3c5',1513397292,''),('2d562dlfehoe8fh2vk826i62n5',1513397369,''),('2ddr5i5jbon6mnqj01e4cip5c6',1513397711,''),('2dpep4bt2d8n5vvd3toh8r9i90',1513397690,''),('2e4nj15ko5qfb4qb6rs31l1uu7',1513397560,''),('2eurthg4739vl5v9erdcat43r6',1513398411,''),('2fvmflp954enkvg8q3canndok6',1513398131,''),('2gsmvcp6ic4em32ptgp438q5p5',1513398499,''),('2h56u8qj0ntk5shhe9hlr0lsl2',1513398207,''),('2i2gvjuege9fv15dpkq6dd6mf2',1513397982,'mid|s:5:\"10065\";username|s:11:\"18741659450\";member|s:11:\"memberlogin\";'),('2i9et25hjjue5jkvcn4it0tlm2',1513397771,''),('2j3pou6mle3uamrn4drfnjsg95',1513398335,''),('2jjcnrhq5k6avrjaeu3imqsui0',1513398183,''),('2k75rt0efgd8f2kcjr6spgohg0',1513398124,''),('2kcf7a9h836k5fbftifdub83o7',1513397405,''),('2ki4a8745s8vn851habsectqk3',1513397993,''),('2kjib7q00k106qp0g63mcsso53',1513397181,''),('2l6bi1a64miftcjmvg64ca3c93',1513397962,''),('2lp8oquo8ntae97itvtafl1r51',1513398286,''),('2m97mhe4ku7pqr5rm6cli3cdh6',1513398098,''),('2mv6d3jgj41gknlekvqf4fo016',1513397947,''),('2odf1649j42lcl7nuv65hrk4t0',1513397632,''),('2pthgn4keo1u2de5beumhcabb5',1513398492,''),('2t3nqmrp12uvqp5gunpcrvecm0',1513397770,'mid|s:5:\"16199\";username|s:11:\"15004872363\";member|s:11:\"memberlogin\";'),('2tjjhu1evd6j0vjpqe3jhvu1l1',1513398322,''),('2u52ril6c3km9o0l17j0k8hvi0',1513397517,''),('31bhtrsoigpje739pigc7atl17',1513397366,''),('31m8k4mok1u1tt0rbj13g9sj53',1513398221,''),('328lfan8tums3v21julqh2eeg4',1513397390,''),('32jpnpb7v339mbj279014ft3r5',1513398411,''),('32jstuaiht51bbsjn8b0ehecm1',1513397477,''),('34vst7ih5bqptj7ld3t7hk4st0',1513397872,''),('362v4gl36d9hb4qdhmr34pqmc0',1513397331,''),('36o3ieu0sbpabnfogfmvcvck95',1513397322,''),('37cnsm1lknrl0od19sbprci7o7',1513397338,''),('37hdb930ftbju4t1b9ap30h190',1513397594,''),('38uvdiimvts96q2sr4lb1ppao4',1513397357,''),('3978q17p1tih9qou0g2vcqjl20',1513398392,''),('39cgppg78f8tqq3rum4lkmqr81',1513397768,'mid|s:5:\"16199\";username|s:11:\"15004872363\";member|s:11:\"memberlogin\";'),('39hi7rqmvsqr5ntqbh206ts7k4',1513398315,''),('3alssjs9veojecs2hfspe8v016',1513397292,''),('3am1lm9mim122vibau19inm3e2',1513397104,''),('3aqht91er1iult3f5t4h9n52m3',1513398187,''),('3c0kephta3hgjm1mjtnl7o21h2',1513398335,''),('3ca9bd6shup8l55bjq0hvm39q3',1513397414,''),('3edifk3nsi6gnu3n8pokksfm33',1513397198,''),('3eje52gbrlc4mesmg8csr66ha0',1513398493,''),('3eruqgfbamifgf56agevvuogo7',1513398001,''),('3ev52vhf2hnh86ifnl7qfft9v7',1513397517,''),('3fe5a0ibcloaqv8kj8c7gls4t4',1513397969,''),('3fj4vrd36it45kp04t90b79nk0',1513398467,''),('3ft29sjsfk0t4ug1juauccfuq6',1513397867,''),('3fti6r0jgnuc5fphg9v6s7eir4',1513398351,''),('3g1sdccmv64eeagsk4odhmhut4',1513397217,''),('3g3o2g88ba351cdk7p5r65p765',1513397322,''),('3hj9qcqs0vaga1bpcrgm2g64m1',1513397306,''),('3hvat0cn0cf7t695t5jdo09c43',1513397401,''),('3iqk7k4eltumdmbt5ahm6q3f77',1513397417,''),('3ji01h1hh26j3liork53bgd2m3',1513397140,'mid|s:5:\"15179\";username|s:11:\"13004879920\";member|s:11:\"memberlogin\";'),('3k32madfjr39d25ek46adk79t1',1513398206,''),('3k5e8osf8pdk8k9u7vta269kr0',1513398128,''),('3k86nrhlujv1dqvf0le2p0rfv1',1513397568,''),('3krmvj8jcgphtcv35ko8s4sqp4',1513397360,''),('3ltpmvnfmqnij71k64rhsodp57',1513397575,''),('3mc5j6qj1ea2jjrc3r5fchrk01',1513397585,''),('3msp5poa4hsqa7q092dsec14v6',1513397531,''),('3ot2cu5elkp6t3fpt3k38ntjk6',1513397692,''),('3p9gie2ie5dunmvojrht6vb1s7',1513397362,''),('3qekt8eq070607u5tl6f20f9l6',1513397875,''),('3sr0nn96k7chf1ct6uan4lkfe0',1513397450,''),('3t17jl12j9mng8tt35vtih8bs3',1513397486,''),('3tmtq5djqg87rdm3mm34t0c9b1',1513398466,''),('3tonk3kn3cs20s68qldqh4sis2',1513397380,''),('3ujianllgqifabtv1aasbfado3',1513397455,''),('3v45dl4e8iii5jija2u0p3s014',1513397386,''),('3vm3qkpp8k8e5bij86vbscd5l1',1513397381,''),('40dneebur2psrf1aftdme9tpj4',1513397680,''),('40olhjudt7vcetmjbeeg6h9da4',1513397656,''),('418702c8dh054506uh04tqfna7',1513397370,''),('41ghfspsrj2j1vbksnf81qsnp4',1513397372,''),('42japj6frch041m1v3i6mg20c4',1513397824,''),('42pt826p7vdsdc3jl73iuu1et6',1513398490,''),('43794kloo8c3dkcqbqlcrbaks5',1513397486,''),('43jrr0r628h3q4gnpvmgqafk24',1513397223,''),('445ls72rbe39gmnn7m2sdb5aj0',1513397329,''),('446isot9h1im9mb49e03seqv57',1513398318,''),('44rvt2ec6262dcftme7pv0bts1',1513398326,''),('453qqei0h2j69stge53ufem193',1513397486,''),('4694ct8spi45vegegr7lt0of16',1513397159,''),('46nqliutqrco3da7mgiqsaiof2',1513398302,''),('46p373bo0c8da0nt23dl47a1e0',1513397622,''),('471515aevk34na9u80q22s2pk6',1513398507,''),('4a9iquolpplunocmj4cnm2ku20',1513397758,'mid|s:4:\"4970\";username|s:11:\"18391089014\";member|s:11:\"memberlogin\";'),('4b6qar3h3q85jmeum5u934peq7',1513398188,''),('4b934b5lf4r5cf8u0rvne960r1',1513397981,''),('4bk7k73992odg0vklhra1clgk4',1513398129,''),('4dok1fh90u9p17nblsfoodnga4',1513397375,''),('4edr3ikpteo0eu4dpqeibpqv85',1513397715,''),('4efm3c86ktfdptilvj3ops7le1',1513397518,''),('4eg7to7gc9m5gp6oa1t7v5sk60',1513397372,''),('4fjs2saja36au6ordopncc89l3',1513397406,''),('4fq4cf88l0vo3pj0m377a27211',1513398114,''),('4jqhn6mra3nqkdv76rhvatkc84',1513398144,'mid|s:5:\"17096\";username|s:11:\"15250675180\";member|s:11:\"memberlogin\";'),('4khlvj2ekvffrf3nvcqapog011',1513397258,''),('4kn9irl4m203h4m24g5ce7dbe2',1513397439,''),('4l8ij4od1rfaf13fjitd16qob4',1513397921,''),('4lm4c8t7qnb1vf3qububn6cp84',1513397283,''),('4miidi7g9a10lh9aepldnfjta4',1513397753,''),('4nir1pqgrlct5n465t78bn43h2',1513397381,''),('4okkrg50paac4imkp4vv4vd3k3',1513397204,''),('4pnjtpeprlflm7q95034iufb92',1513398252,''),('4rfqvv2hf3sp90jqtmnam4gb46',1513397082,''),('4sjkhdaia2lvc0t84fpf9qdqf0',1513397993,''),('4teruprdbvd5im5u9t158uh4v7',1513398125,''),('4tsom6k76k3mpg9700ovvsaoj6',1513398104,'mid|s:5:\"17270\";username|s:11:\"15801421707\";member|s:11:\"memberlogin\";'),('4ucpbr94jgu77u1tpqqgdhmm22',1513398329,''),('4ukn35q6sgm7ipm6jnjk3e1q51',1513398365,''),('4vhn4h98ov1bgk11urq4b71l43',1513398055,''),('53h1lhncq4o8kvvpbb3pa0v4t5',1513398183,''),('54m1664dvpsc9bgfrl5231knt1',1513397372,''),('55mca43if9f3pj1bk11qf9ak14',1513397874,''),('56g26i348dl995g8fk58114sd2',1513398335,''),('57f3j6gcdu90bdssh045e0u8u2',1513397463,''),('57uvqufj2c8j0ceu03uaqu9su2',1513398428,''),('583egt8r80d556a8aq118g7mp0',1513397584,'mid|s:5:\"17766\";username|s:11:\"17576824984\";member|s:11:\"memberlogin\";'),('59jfb0cb25a456kv6lnk33g7p4',1513397204,''),('59prue0hu2eb8tlljcui787fh3',1513397292,''),('59q8f7fgd41d3i9qamdfoock64',1513397147,''),('5a2gpiftk6443qtid14mf8jdg1',1513397422,''),('5atjec59lffe8mehkhr3r28f87',1513397354,''),('5bs232en3nngr61lchom8v4jc2',1513397355,''),('5ckc1jvjc0fu251edega2cqsu6',1513397318,''),('5d0j79t9s1fjfnnali67ki44e3',1513397359,''),('5d3f2krufpjs8vm7kbvs82u3t4',1513398492,''),('5d51d0c0uvq17m76rbh5k518v5',1513397865,'mid|s:4:\"1900\";username|s:11:\"13854971256\";member|s:11:\"memberlogin\";'),('5djqrd91s407bfa8quvh18ff33',1513397338,''),('5eo45fbck0nevfijvo375h57b7',1513397491,''),('5fnht07mm4gh9fb1lmoosf11e5',1513398025,''),('5gfjgh6eotsadpktl3t9k4c3u2',1513397258,''),('5glblum3k26hcvuql8s9jti0p1',1513397336,''),('5i1oi8jgmv2onni9fl4ipbbod4',1513397638,''),('5i5mrucnijbf0819lhm8ng69m2',1513398392,''),('5inms47lpsq53djrmv44llj3h5',1513397769,'mid|s:5:\"16199\";username|s:11:\"15004872363\";member|s:11:\"memberlogin\";'),('5ir2bkm28e4nk3smutq9vqasr0',1513397762,''),('5j2h4ktvlnmfgqnue0u2hlngn4',1513398101,''),('5jnphqpggnrhbpeuviqnteoat6',1513398490,''),('5l45cpelirfukgvcdua6mvnp56',1513398479,''),('5mcsurfmlclsrfdql7niasrd65',1513397378,'mid|s:3:\"831\";username|s:11:\"13806736756\";member|s:11:\"memberlogin\";'),('5n422m93f2u76lrn9a18jfjsq4',1513397399,''),('5nd0itibm2t2pch14b57sutaj4',1513397373,''),('5nr17jrq6q9kv567nr3vd577g6',1513398224,''),('5oevdjuciqa26acs9oubpdau61',1513397192,''),('5otasvge5d00598p3t8r4soje2',1513397352,''),('5pj0snv2ibg6j677k4n0nm5um3',1513397398,''),('5u81jvshh9f4vc36l7cj316te2',1513397816,''),('5ubucae6pnds6tfaq2hon4lvr2',1513397393,''),('5uk9d41ra296v53oj619hhtev2',1513397682,''),('5uvnv9n414jm0lnhjefosc5i25',1513398125,''),('602u7pni678qqjr58a5mnh8oi2',1513398286,''),('610u7cai6fpsfom3gss82vvcf7',1513398441,''),('610ud75qlp0cmqio2qr4fno8f1',1513397298,''),('62h6luk98kol31v9u35vgah8o4',1513397495,''),('639o1i2kshjeo6oippbli3b9i0',1513398315,''),('644si92fdjq5pcmkb146ieco66',1513397656,''),('6493q7icfsq402tj9bbht34796',1513397368,''),('656b8f88n92fhgfl7q0mm2oo14',1513398021,''),('666s1tem2eve5atc5vrueb5c03',1513397374,''),('668jveep7dodenrfpcimb9i8e5',1513397612,''),('6768hlqn1a9onsatcas9l29b12',1513397963,'mid|s:4:\"5256\";username|s:11:\"13524363059\";member|s:11:\"memberlogin\";'),('67ipuoof4f04i6l0p1dfiq78q0',1513398468,''),('682oh23ed3k939tncdbhcuq517',1513398025,''),('697d5b360itfcbnhejbnh0dae0',1513398509,''),('69dm7r2ncrrba6f6qe1694ajg7',1513397087,''),('6a7fr7ko6l1e2vua34lrlit241',1513397286,''),('6acdl9sof8i7k6b46556r78n91',1513397695,''),('6b4emusidsj2se2lb40k0u2vk2',1513397244,''),('6btc6fi1a008bd2oipvu4eaom7',1513397317,''),('6c5nqb7ls4gs4mjgqbkof347o1',1513397454,''),('6cfj3mtvskfss19pamdnd4msu5',1513397835,''),('6cs9pnjfetckq6feirmnobg1b6',1513397190,''),('6cv8rlmnpj7e9asjba1bcucad1',1513397672,''),('6djph93bnjdqpv9u75ve4i8js7',1513397488,'mid|s:5:\"16778\";username|s:11:\"13608285832\";member|s:11:\"memberlogin\";'),('6dunhrgij6n6fd7a1k9na6uj57',1513398328,''),('6e4sa2f308vt9q92rcgje274t2',1513398308,''),('6eiqggvaf4ep8ng4beqo85df05',1513398003,''),('6foh277fk4i9oct4623rbh9qv1',1513397086,''),('6g1d3enp2dheita8n9e20t01c7',1513397769,'mid|s:5:\"16199\";username|s:11:\"15004872363\";member|s:11:\"memberlogin\";'),('6g2t64oo06doocqiiuaaf0jvj4',1513398107,''),('6gk53r9ir5h30psu9hs6moo9u1',1513398462,''),('6htrcjc1qol2mnkblo9qrv4s01',1513397090,''),('6i1a5jlmg3gdrpblt1l9tssl36',1513397101,''),('6jb647fkoq1rkcvauitvvfqhv0',1513398494,''),('6ko6s54qcpdqpbq3befjej89u2',1513397468,''),('6lkl24tp6o5db58hr6mmckbnp6',1513397362,''),('6mo488c5fu879uj1ga74n29so4',1513397190,''),('6nmbpo64nriea2enqna0rukks1',1513397766,'mid|s:5:\"16199\";username|s:11:\"15004872363\";member|s:11:\"memberlogin\";'),('6pho65hgvrsh419puitmqfvgt3',1513398495,''),('6r0i386g70dlsuaoi9n9s2f280',1513398323,''),('6rcfpr0r91jert37fhnr962kq4',1513397604,''),('6tdav4ufkmogoer9vvchr8g1j0',1513398188,''),('6u7d6c800o70dff68p5c6hpoe7',1513397351,''),('6ual3hebgklf079ja8ih62nev2',1513397244,''),('6v4ok2jde1omev4fgp5m0lt5d5',1513397731,''),('6vfkse9sd3d925fa48fgshduk7',1513397818,''),('71532ocorih1vej6ga06vuadf0',1513398462,''),('71bug2cfsrgmfbp312p4g40c07',1513398125,''),('71c83n2ppfl7nkfiriuaq03u46',1513397077,''),('71cgobujo562n4btjitb14d1i1',1513397621,''),('71hiv13d7bg2m4jp19g05h9001',1513398481,''),('747fbfts54q9ncrupspfsc72h0',1513397249,''),('74obl0n19qjptinqfcep942aj4',1513397452,''),('74qmigt2gtpajhb3vhcmiogo43',1513397352,''),('751sgf7mpe5q7m6vetgv2fpv72',1513397707,''),('75pk407hu9ijfkvpgn7ajchfu4',1513397417,''),('75rd5g6u3gsmlkja7cudvepnh6',1513398121,'mid|s:5:\"18023\";username|s:11:\"15864739891\";member|s:11:\"memberlogin\";'),('765dq7e8i0fh0bkftgbrbe0oa6',1513398460,''),('76dlgd11bmv6ppsb6ldngc5b46',1513397456,''),('76pjnea3jsqfhulmnvoij17sv0',1513397369,''),('77e3m40ln2e41188f24chldqb7',1513397844,''),('77httv307u25uhhh00askm2vm0',1513397423,''),('79ee1tbe6dhj23avk03idihke3',1513397173,''),('7ae80hpsks4mo5hm9sqmbbrpd5',1513397181,''),('7an2372o797crilsi4uh2qkm51',1513397962,''),('7avtdvuojnmjhjtiockco2mfq3',1513398100,''),('7bll9cd2i3pohpj9h2qf54luu6',1513397404,''),('7c014m05juopq6d9r6t4ulgrf6',1513398019,''),('7dd1346nc8ul92r3fpc7dvhsb1',1513397763,''),('7f9l9525nv8lguioshgle97j35',1513398411,''),('7fpnvu75js2p6k8bv8ng8k1d63',1513398357,''),('7i17ofvof11gm8hjeein5m1jb1',1513398188,''),('7i8n9akb4oisk26381thfcp593',1513397291,''),('7iapc9qn4eh0m8jk08aved2la4',1513397351,''),('7jfj8qmeq2rptdtkl7s89ltn93',1513398428,''),('7jgiavr5midb495cdullvnalp2',1513398126,''),('7jntbv8eq7hd3vs5v8e27akd22',1513397614,''),('7k4lmmva7266f6tfi0lrii91r3',1513397390,''),('7kpfjnbmsvm9vnkuofth23ptr4',1513398134,''),('7ltq3vrt2iiq4qajnopc77h5n4',1513397427,''),('7ltq83074g8c6dpuvrfkr5qrt3',1513397861,''),('7mqes19k8nkrf1r91aeccusmf0',1513397383,''),('7mv4cbfha6hpgg470pl4dqhkv0',1513397381,''),('7n2gp1vdthc8l8rf8ul2soqnt6',1513397853,''),('7pc7l1djo6qu6qdvoulfrsu6k2',1513397374,''),('7s379psoqgn9ahlbe1ktbki201',1513397868,''),('7ssseq4l4r1eco0jr1oi5k9cl7',1513397828,''),('7thdhckq9iiia88o83d05nv9t6',1513397403,''),('7tjlrl0bcuh41a95t2fjaiigc1',1513397089,''),('7u8m6ij1umrdtj1erbf5osf1r6',1513397612,''),('7vseipgqcbtoptdpjuq9pq3085',1513398456,''),('80p7lliur0d4ht2gseqn0u3d76',1513398479,''),('82980smk5duu578msgoq2r3jv6',1513397391,''),('82au4l6tcg2v3nmk7fdi5883r0',1513397856,''),('82q1gcldfj0e7m67bl0lnbcvd1',1513397401,''),('83to1o03php66jas8fpfjr6p65',1513398467,''),('841m1bspq57kdbqbcsvg43n5s2',1513397116,''),('84nvt4i4b9q8qqu7e6k8qunq55',1513398015,''),('85lcd0h54a4kpk4qaavjmag025',1513398061,''),('85mnbgvtd2ejubalnq3cs61ho6',1513398060,''),('863a8brajl0go60tb54lrf00c5',1513397244,''),('86panj7crc1qulrqgfptdl9092',1513398137,''),('892u31nqa3avn41mt5kte9sum0',1513397456,''),('8aft6ne2a4gofr5ereinckl450',1513397439,''),('8arhah0r1b1k92araf04nt8887',1513397400,''),('8brspurovr5c4dh7o18oi7h6j7',1513398033,''),('8cea5kgbbf49shniijcfpn5at7',1513397148,''),('8cf908d4tcplhdoc4rkb8fkfl7',1513397382,''),('8ct7kdkt7jkkisosmiphc1kia0',1513397518,''),('8du5op5supso3qaad9ql3ocu34',1513397594,''),('8eo6pot1v1v9ha6rkvap7red24',1513397219,''),('8fjnn6o38cbf1hkt1hdies71o0',1513397325,''),('8fps5fop6kh6htom10qtvfoak6',1513397453,''),('8frq82rftfqg32hthi0tbaj7d1',1513397767,'mid|s:5:\"16199\";username|s:11:\"15004872363\";member|s:11:\"memberlogin\";'),('8h4c9hf139c795r6dcvgsqk0b3',1513397956,''),('8hathenln9l3nm2fc4va95ifs1',1513397968,''),('8hs8vlucnkd8svgol9bpuehs54',1513397853,''),('8i0ah6mh9pvvo9e850ejj7kia5',1513398285,''),('8i2jr2u74bap1b3jm27dh3pvt3',1513398157,''),('8ik6oibtr83gm82a741taf0pa1',1513397223,''),('8iqj0mredekel9115avv1uerm2',1513397317,''),('8ivc8ppmbfjhq24dk23rmhjkl7',1513397369,''),('8jvg2rd90ghm5cqrcvg934m425',1513398205,''),('8l9qkki3fsm8mpbcch7oddl6d6',1513398394,''),('8ldb7fq4h6frrva65ibp05tms6',1513398253,''),('8n0i56adjkj1akhq07c9t429a4',1513397941,''),('8n3npvht9jdnqlvu2pgoulqs26',1513397985,''),('8n9shqge6krh8v4eq8eqddi8j6',1513397995,''),('8nhg4uj72tuj3hkf2r5gp4bk94',1513397345,''),('8o6596b3d6pcq9p9edbaf3kar5',1513398105,''),('8oli5c29p1c67bcj6juoms58s2',1513398223,''),('8orpi3omknpe5sk4f47e0th086',1513397075,''),('8puooffmh3ornisbuc0hg2tqq4',1513397667,''),('8svrpithpk70vftuu39p0tnj26',1513397767,'mid|s:5:\"16199\";username|s:11:\"15004872363\";member|s:11:\"memberlogin\";'),('8te13v7g3lhd22s1amdp6lddq6',1513397173,''),('8ucl8n96080pcqsfobk7gqhur3',1513397372,''),('8vdddm0l6j9lartmhbs5quuoa3',1513397373,''),('91gv4efavibuaa8b0qi9pbrm24',1513398474,''),('94ioe0nsokv92ud8nmhk8iuk02',1513397294,''),('94jkonse42ohhkc1g20m542ma4',1513397148,''),('95dvf1tgqcoujihk12berls0n5',1513398165,''),('95jm146dpehshjunlrg1erfse0',1513397562,''),('96kf2thtogbcko8ivtkt7fou70',1513397456,''),('97hcrpt0tib9c441suen546fq4',1513397940,''),('9bsgkogrkme7as95ig5mmdh6a0',1513397926,''),('9c2l1lb0up1bshmn6av1j2ph86',1513398189,''),('9dmmm61q83o4c37i3rv8vkodk0',1513397368,''),('9dtmbdq1m16pqrkpr12tgvpmf1',1513397387,''),('9h3oeg45q9vuik3n0p8u2o2lk7',1513397346,''),('9ha1k16v15j3ve62qt4lr5ur66',1513398373,''),('9hnhnirj6qpes3ss9hrkdp4mr2',1513397767,'mid|s:5:\"16199\";username|s:11:\"15004872363\";member|s:11:\"memberlogin\";'),('9hskf6nflbbup9cff32972mhe4',1513397148,''),('9i1lcgv27fbdgvft3f94bso7d3',1513398467,''),('9iivb5d212iqu0b6jdk3ufks93',1513398424,''),('9j4ojaed9nhqh9don4mc6i9jq5',1513398368,''),('9jqk2n4pu0fb16edc4qon4tnm7',1513398493,''),('9k5t7hfb2mat4t3olejbqs2952',1513398209,''),('9lgtj1h5kj2lbhbulnionrr6m2',1513397184,''),('9mhpjj5qevkf3d3d4nk1nucnr7',1513397373,''),('9mlin7g2l2c1gr5fq53h26q6l7',1513397362,''),('9n9ag0p3cl9dega31d1dj0sdr7',1513398479,''),('9ntbkr84c0e939vnsem68ne1e3',1513397995,'mid|s:5:\"16142\";username|s:11:\"15848103501\";member|s:11:\"memberlogin\";'),('9obtvdj82epse6juqdn2hp6jk0',1513397337,''),('9plgc47heqaomd6hubbrcqfs25',1513397110,''),('9qcn6thch1uc97o7f6c9gfg383',1513397291,''),('9r93q6h74hktm5eihja595vss0',1513397986,''),('9rbkdcla4hr07kdce79o7hsje4',1513398507,'mid|s:5:\"15500\";username|s:11:\"13954697867\";member|s:11:\"memberlogin\";'),('9scqs02dsk0nqno0h56s0tgfh6',1513397819,''),('9t16dvukqvabemn23ik4be0od4',1513397162,''),('9tkqep6gun318oej3ap8r50no3',1513397402,''),('9u6haeluelsui7rba01gat1vg3',1513397247,''),('9v5i9ote8h61fdv3alcesr3491',1513397849,''),('9vall6vkaqngv037hbgjf56r76',1513397486,''),('a0uititcvv71hididip7ke41t0',1513397345,''),('a1fjr0qp2vu1c5r9dd41chfe60',1513397333,''),('a2i56kiukj7vdkhlov3eglrc76',1513398493,''),('a3c9fjb9puanond27m0bo621b6',1513397394,''),('a3nkqtqk66h98ov9v1q75fq7r2',1513398315,''),('a4j77rvbbqnjsnb1j2j1nioo74',1513397298,''),('a4l85p47irioqkm33gb5naib15',1513397097,''),('a6ebrf04jrm15651ilv7hdub66',1513397097,''),('a8e45ekopiuf2qrju1le9o5fd6',1513397962,''),('a9qdj1kkgfcgc271bjcgmg26k0',1513397765,''),('a9u31sg3p8tq4ngblmtm6rapk0',1513397345,''),('aaj2p2rgujaqp2kblq315cims4',1513398246,''),('ab86u5ahuora88edo0tuvmeqh1',1513398137,''),('ac3uo3rlj0k87c2ll3d4c0d6c5',1513397295,''),('acbltir86f9cnm8v547am7n1q6',1513397118,''),('ackjg6j5m18o2m83q7asg3ur96',1513398118,'mid|s:5:\"18838\";username|s:11:\"15365057368\";member|s:11:\"memberlogin\";'),('ae0mvs8nr7jmgk8ffkb3n9q3j1',1513398397,''),('ae72ro1tvq0il342q61crovdl5',1513397403,''),('aerpl1ftgutc33o91ocqudb444',1513398034,''),('aev0ggritg1iqde94nsogirhr4',1513397978,''),('af229ued8hf0ds1a5sc2kjh9m1',1513397393,''),('agl8ckfvf36srdvqmjrfi3fr84',1513398315,''),('ahul309hj858ufmeudebou1gn6',1513397882,''),('ai3qj2r16rr72epansjpqcg475',1513398404,''),('aik3i5slu0og965abbrvqumjb7',1513398175,''),('aksif0loj84a294ln3n7iep0l4',1513397422,''),('an0q932ak8v989jn1afhk51ds3',1513397169,''),('ap2hfc8i8eo39uhnvobldemr73',1513397599,''),('ap7iv48qlt7qecvrbk0241te23',1513398346,''),('aqbspkbuhuminf4r7pk8vphej2',1513397844,''),('as3kvt8tb025ep2hhdo6pss0n4',1513398490,''),('at0tgdv0um7ijg7gnovpcfqec0',1513397301,''),('at2d9d738etlof57cc7a71ldf5',1513397244,''),('auudcop2jkjcgah8ec248d26o6',1513397828,''),('b0asn1mb2kd15t6884luril3d3',1513398385,''),('b0iv94rjptoaar0e19nkrjelm4',1513397261,''),('b1lqrd2qagrmh5kcqf0psntkk0',1513398284,''),('b38abe9pok9vcnrg7osmb36dp1',1513397161,''),('b4654npc0ij6odas6b3ff196n5',1513397955,''),('b5572ou1fo7um5is14fq3i0on7',1513398392,''),('b5r8q414l6439df8maj5sd9vg2',1513398481,''),('b6r1mavh602k694t4j32q1b3a1',1513397926,''),('b7k52aqlavlaq81hq9rt1osir3',1513397963,'mid|s:5:\"10436\";username|s:11:\"18702859653\";member|s:11:\"memberlogin\";'),('b88av5qu482h9dlf73o94kfp66',1513397614,''),('b88sv1gu8omtuae5oa7u7o0ev6',1513398498,''),('b8daorite33dua57a6rsa0b233',1513397798,''),('b8g7nlu2q66p2mai3mig21tld0',1513397494,''),('b9fdo9rqln7e3ir6rlpnk7qe00',1513397318,''),('b9tm459ogqk2qe7fegqh5hq9h4',1513398374,''),('bap7tinpfv9gigek3sln901ju5',1513398392,''),('bb7t7ubb26bbqph1mrcgu21212',1513397439,'mid|s:4:\"5122\";username|s:11:\"18243335028\";member|s:11:\"memberlogin\";'),('bc088tt32uj94t8ev1skaooal2',1513397663,''),('bcnlr17a8lme1mschihjvrru85',1513398183,''),('be08gt89k9o033jqj2v5nmcvq4',1513397335,''),('bfokhh5qqu24hn6fekt85gejm6',1513397270,''),('bfqr32tfuvmivnqj0q4cqm9ro0',1513397913,''),('bgtaq3rekalp3es6vjfbhcubj7',1513397291,''),('bh1fdroe5sig4k0kc2f28ps534',1513397187,''),('bhlsob5v002oknj9vd6hvubb91',1513397181,''),('bhq4prh6b5rqbg9k0fnojhrop4',1513397135,''),('bhrm21j44dnh1305vn7s7tual7',1513397407,''),('bidnvr7sgk52tgfeuev0nkt4f7',1513397383,''),('biff6hi43fftl10i8gi8lilsq7',1513398186,''),('bjjdbdojjq71sjkpnh5ngj5v23',1513398286,''),('bju5rjkvc4s9nrk51icgdeblc7',1513398038,''),('bk9gnv02u0h43p18tvtrb3jl94',1513397614,''),('blkqhcenduph6hs174bmjs5su0',1513397396,''),('bob7j7o1n8ogbrub1dh4c68os4',1513398284,''),('bokqma8t86338mm8ggteimfbf2',1513398448,''),('bp43o20l4995s534pj1mobd2h7',1513397291,''),('bpc6ig2tv5t5dmnsfcsuc78lt0',1513397769,''),('bpo82hb6q98n1aruhvf4s38560',1513397309,''),('br131sjnrok5i48ght3b4es685',1513397298,''),('br8usoti3imsnrb6ej9es62mu0',1513397814,''),('bs4fccsbkq6l3c0bgbk4v72452',1513398226,''),('bst3506s9rls628320lmohfkd3',1513397629,''),('bubf5op256ij8lamho709ousp3',1513397397,''),('budlf6eveb4fovtvj4g6og0iq3',1513397469,''),('c0uv5dl86aii3rkkf7vu3fr2i4',1513397953,''),('c1omb62akkobh596kcimhf66j1',1513397855,''),('c1ub5hh0uhli1ater4ts0bo891',1513398376,''),('c2dm0f6neushoeukjhv395kvr5',1513397638,''),('c305bhhcoqga9ntapvvep264n4',1513398335,''),('c429cmmqh82lmfc5uda7gq59s3',1513397372,''),('c43aocm5ln1p69ef8d7etmktk5',1513397401,''),('c58a4ucpcshct9d98s3n9fnqa4',1513397189,''),('c5o6l1b84iru6birdbkkeqb4e1',1513397757,''),('c6ubevm8qq16dt8346h08s89o6',1513397159,''),('c6va44ppqoo83ed27dio036e46',1513397571,''),('c7j7qmhkjphdp2s1l3fsrrhbs2',1513398329,''),('c904fatv4ms7q3p55fsmbbf260',1513397392,''),('c92fc67ilecvt28ol47ucoi7q4',1513397298,''),('cae7g725cnfh7nfnc8gjp6is87',1513397941,''),('cbfifbgu1n4di7btraigg9k0q4',1513398207,''),('cc2uvm2pvcotn4mp32kte5qtr3',1513397143,''),('ccsd8v0k7pvndteomvopqqr8t4',1513398142,''),('cdkf517vh1v2bhm57vgt40htc3',1513397383,''),('celih8ff5hk3c9vs4jnoir7ar7',1513397489,''),('ceoo6somti7cho30d58u02csc5',1513397373,''),('cgvl69ublno8f1n91f3vq5sl80',1513397150,''),('ch7oa1pp74q6up812rrg9c31c6',1513398155,''),('ci49d2750od5ggsnn8i9ncous0',1513397361,''),('cinnei1qcfj7f4k6b0l0t9n136',1513397533,''),('cinu2diqpuqrb76mh45edf93r6',1513398024,''),('clg6u4q9i38d94lk579bdops12',1513397414,''),('clhhn3iu6f3qb9lb3qln0tvhk5',1513397731,''),('cmbe0dsl26mu6gp9lcdev7grt0',1513398389,''),('co2lf5dnggthah40pc73s3eua2',1513397360,''),('co5c7hbm85sld7krht7bru0kv0',1513397926,''),('cpgvf028magqu59oltjg2q51m4',1513397585,''),('cpm3ubtdckbvuuvl83f2fjtia7',1513397288,''),('cpv6qqru72mbgvhie7gmcf2ls4',1513398490,''),('cqqgl558ibffeqpotrdvgtfe46',1513397117,''),('cr2g4f00ua2ne3p4f4fo10kks5',1513398365,''),('cr52i8c9c8nosfsfbsjf3e8dd1',1513398498,''),('crpp1ckruqodnjs27ren5miku4',1513398043,''),('csso0f52ncknrmj9h5ak4cv612',1513397970,''),('ct1ci2u6f74n96i1rpca2bk3s0',1513397182,''),('cu131ov61rlf3rahir2pv3u9j1',1513397104,''),('d1hpdgmbhscr0khd3t6bpnjcd7',1513397711,''),('d2gsjj90c6sc5tled03mu1j3g4',1513397690,''),('d2s5an9bt9ajo8mbuaiq022ni0',1513397113,''),('d556c4nq2ev5l4chead3j3on72',1513398510,''),('d5a6lvd83s75dj5egrkbtbcum1',1513398501,''),('d5v60b4rr0urarooko7q77dbf5',1513397350,''),('d6hqha0ab6nlgm0tcbh7njvkc6',1513397540,''),('dab52ikuij1nn799naofpf11k7',1513397926,''),('dc5c7ld3bosu742ftlole30aj6',1513397086,''),('dcce3djhj706nur1ke3u748bg6',1513397949,''),('dcmg6iifu4sf1bpsbtf0pv7t04',1513397746,''),('dcmugu2cmbd5qd6juu670ktoc5',1513398480,''),('dd4q1cdq6r3me7duusuh4caq63',1513397306,''),('dd81nd7t7dqa8jcudlahjj8ib6',1513397139,''),('dd846pftuon1i6dp22g4bage71',1513397691,''),('dd8hr77v67ocunlnmdgeml08f0',1513398045,''),('debh64srgch9mu4mcftdorrkt5',1513397350,''),('df3f6ak2o984dnk81osoqhrfr7',1513397767,'mid|s:5:\"16199\";username|s:11:\"15004872363\";member|s:11:\"memberlogin\";'),('dg3u1ls0qnf428fus1k9a9ncr5',1513398137,''),('dg8ka0gl4lu4v51md3o1v4mis7',1513398507,'mid|s:4:\"8027\";username|s:11:\"15258552880\";member|s:11:\"memberlogin\";'),('dgdroff8cgmutjod45tq01kst5',1513397563,''),('dgkhmvvi2i8eghl3dpo64o9tu0',1513397544,''),('dhvtf7fttsmnt567a2qn4mhsb0',1513397118,''),('dicukgr42g33l3mf9v9drkpqf2',1513397346,''),('diiulsjo099odqm8j70qbkfuu2',1513398187,''),('dilmo94uc2mp0jgj64q721s0s7',1513397648,'mid|s:5:\"18166\";username|s:11:\"13825277357\";member|s:11:\"memberlogin\";'),('djp8q6b0gc7lfv50beqckcc8a2',1513397151,''),('dkq5vrefmol9n7rrosjbaa93p6',1513397350,''),('dl16qjpqholpi59pf2r8lvu2e3',1513398107,''),('dl4a5rvglorqm8a533g926bjn2',1513397292,''),('dm6a638h9d70c1uvvf7m4323u4',1513397837,''),('dmos296205reqetqp284kk8ti4',1513397359,''),('do1hb2imcphjrkg286jit8vh25',1513398304,''),('doe7085d20hrcthia93e5c18p0',1513397160,''),('dq3h7e61lcvjlmeo08m0qno845',1513397384,'mid|s:3:\"565\";username|s:11:\"13630158954\";member|s:11:\"memberlogin\";'),('dr52rrogrjt4e14tsctpjlqdf0',1513397640,''),('dra53gtqhhdfkglid8o3edd9j4',1513397833,''),('drilfhij4c84s3pscffeil1f40',1513398101,'mid|s:5:\"11087\";username|s:11:\"15632097802\";member|s:11:\"memberlogin\";'),('dscktu57nfi0qdnja7r57seia2',1513397179,''),('dtd8j35f7nv76tp7fcbodv5kp3',1513397765,''),('dtooeec7ecf7pfv8ninkog30o7',1513397077,''),('dtsg43eo8lj6gqqvh6i182mtu1',1513397243,''),('due2ll6o2mageo631rusa9rge0',1513398507,''),('dvfbfjrvhlrnpvak4huc28scv1',1513398310,''),('e0lkm02v8im1lcdg5043nbmng2',1513397875,''),('e0rttill80i4prs2e8b2ce3fd5',1513397155,''),('e10s7u8bhkovu0i86mo985bud0',1513398164,''),('e1aick9pq5icoos39tjgo3lfg3',1513397802,''),('e1ts5a1f7j41j6up96emf2brh7',1513398419,''),('e2k3c1p295shh20ib2d9bses63',1513398000,''),('e3pn37qhd4pnqibud85858d9k3',1513397334,''),('e411cge0kbjujejrnm6h3o0a65',1513397089,''),('e42bfjbugg3thh9q1cus41vjt6',1513398489,''),('e528qhe3tlrmcuqt5p0dsv2km7',1513398039,''),('e5fs32u763vv4si7b74hv79ha4',1513397769,'mid|s:5:\"16199\";username|s:11:\"15004872363\";member|s:11:\"memberlogin\";'),('e6omob1drkvsmup6836qvlf154',1513397454,''),('e7ajkde7arjurj3jmcln4c6hh5',1513398125,''),('e7lhtmtbravnf0dtfqvk1djac6',1513398026,''),('e8qfnpug8sigk783qj0hsl3765',1513397900,''),('e93kikqqt9ajvr165thlootuu3',1513398328,''),('e9kr41be1r36p0vkc6s192sds2',1513397995,''),('eap47feftvuo48kk874u23ih95',1513398284,''),('eb5ka5f59ti83jki3bo3ur2p56',1513398217,''),('ebk1aluief8r3d07gpcchrbvu2',1513398498,''),('ec9c2d25j7t4mend7at4enaev5',1513397359,''),('ecp8tqos3h7gsonihr9i2uqgv5',1513397859,''),('ed8ifhht5ecmpa0un2uvcpdqr5',1513397451,''),('edf3fctg5q2qoak6gifqkki130',1513397719,''),('eeltahts35tnpd6g3m4ou3vkh0',1513398064,''),('ef1b08kdjjhds2m8oadl5dcdu4',1513398254,''),('eh0308ibpoo1qbt80od2550rg2',1513397991,'mid|s:5:\"18173\";username|s:11:\"13433021311\";member|s:11:\"memberlogin\";'),('eh8oi2iv564f2gmkngsibfb7b6',1513397853,''),('en4u6jcjs4a5k08njmiatm0id1',1513398129,''),('enrrudvkueqt5rve5js4g09su0',1513398125,''),('envmqb5mcjs7rucppp4tk8ai32',1513397389,''),('eoi0tifb3u26p7lqrgaedbm263',1513397150,''),('epp9m8ohs2m5g1q168uks8ovr6',1513398084,''),('eqtp8kk0u3pj6vdqa66ngcbuj6',1513397352,''),('erhifr1s42csdnr5gnshjmagf6',1513397154,''),('es6locqh3s6r26fb69i6o1inc7',1513397197,''),('f03pq6r51pef2bi7majaamvvg0',1513398504,'mid|s:5:\"18925\";username|s:11:\"17180640855\";member|s:11:\"memberlogin\";'),('f07gbn579ee8l4ktkka6s5hjj0',1513398493,''),('f0r6s8n6535khk3p20ttvd5ob7',1513397318,''),('f15mfai14h5u8ftigvisblcdk3',1513398138,''),('f3r0jrolf8i9ar160ikg1ctki5',1513397962,''),('f5lo91frmj4kj6b5aib4vreb04',1513397912,''),('f5o983qafthmiqqalj5jrfhbh2',1513397306,''),('f7hohil8q2sd2mo9nrfdrgcut6',1513398188,'mid|s:5:\"16148\";username|s:11:\"17607609461\";member|s:11:\"memberlogin\";'),('f7n9cjtka472oac3nmfnm167t7',1513397322,''),('f811lubunri9a48gim646g7dk3',1513397533,''),('f84b8hal2cfh3ipn6rom62ptf6',1513397532,''),('f87j3569lf48vtn3jepknbulo1',1513397211,''),('f96k3e1g9an5ffjgobcjoriq85',1513398447,''),('f9a7g362htaoe8jkoino1s3n95',1513397268,''),('f9uqqj1md6vq3bkkrlsosv32l3',1513397725,''),('fc7h6n3tni1qpvpv55iprm8853',1513397571,''),('fd62d84f2aurmkh7d74doc66l3',1513397338,''),('fdbt60qi7g3oeb9nqi3b03jbc6',1513397103,''),('ffp9svr39djtfrf3067h1677a5',1513398003,''),('fgkhrlji6rc6ca0paktqk8udl5',1513398239,'mid|s:4:\"2684\";username|s:11:\"13386359872\";member|s:11:\"memberlogin\";'),('fgpjohpb4q13q7rb4ripc3j5i5',1513398493,''),('fhlt49j4chdcjui7nj0lidbt17',1513397371,''),('fi2vuq2cbh5k4g1hu366li87p1',1513397113,'mid|s:5:\"18664\";username|s:11:\"18244662009\";member|s:11:\"memberlogin\";'),('fihde2r09pc83mn3v03hirf4m2',1513397086,''),('fjl77qm1kjbliopp4rnpsu0203',1513397875,''),('fjs8m346887pb92m4blc3chpt1',1513397982,'mid|s:4:\"6582\";username|s:11:\"13820166860\";member|s:11:\"memberlogin\";'),('fk568i8m4km7sfn8h1i01jbkl4',1513398001,''),('fmnapjduqsgkgms8d5dn63jkr6',1513398202,''),('fmu30u7lt03mbqrj7onb1ddj65',1513397162,''),('fmvsguc26c4417ms7ie2c2dt24',1513398377,''),('fnkhos765nl4bmpd1ca17vd6g2',1513397095,''),('fodkiieilu7bve1oehert95dg6',1513397148,''),('fp9v7duf8gm7ddtjqb78td4l01',1513397323,'mid|s:4:\"4639\";username|s:11:\"13790408415\";member|s:11:\"memberlogin\";'),('fpf8ub78eqci8afmcdcfvls494',1513397285,''),('fq82tfp2bbku88jclbcdds45f5',1513397970,''),('frpsa6i18pmrt656qtd7dut1t0',1513397629,''),('fumidsikgjgm1sjefnso3nc4h3',1513397816,''),('fv42b7suoos7oa5jegqguanqh0',1513398314,''),('fv5vspcrv36k52b724o72dki61',1513398188,''),('fvjjkrvkv3fa7nvpcq4cto58g2',1513397518,''),('g1ij7a3hl78lta0gl0n343ar71',1513397366,''),('g22fjb81258rnt2r55jvs9ukf3',1513397690,''),('g2grd93o52vgit7vj8s1n91gn3',1513398247,''),('g382pokqf377nkpqtogl33hfn1',1513397459,''),('g57kn7l2dufqibl203fjr0ld64',1513397335,''),('g60ugma835c4lahk6lmrbacvk0',1513398497,''),('g7ugk837ufj84eauv90ir270i5',1513398126,''),('g82klk2eav59hhsbqmjp5020a6',1513397707,''),('g8h2ii8hlqfabmiq9g073obht4',1513398367,''),('g8op8co09bk4hs59fojg19ie90',1513397878,''),('gana5p7f92gjm6ps5lvdrbacv0',1513397910,''),('gb40gkl3529604knvjbv01vid6',1513397173,''),('gc072u6dh7hcv5dah15kk32a01',1513397934,''),('gcnl064qp88uifb3rbmkegsk16',1513398100,''),('gcqobinbrra54c2a3n42arv8i6',1513397317,''),('gd5o4ujforagneksu7b2bd6b26',1513397317,''),('ge4rrnb92aq4r86ra45rnpssm2',1513398492,''),('geeq0lls6m30iq9388cuunjba4',1513398071,''),('gfgrrc2l1p3rq4dmctq88ah6t0',1513398394,''),('gfhului7qqe99i1bf4mecoeck0',1513397274,''),('gfmaop2v5vdh1j3ne0tluo7767',1513398500,''),('gg4v9ci531qt03q7e8ns7iqsj1',1513397935,''),('ghss7t2fj62au2fsbmergl1io2',1513397136,''),('gi2o50l99hhqojqcsahhkihop7',1513397181,''),('gja3gavqk0b7p9ijmqcol2ibd7',1513398460,''),('gln169j18hkmqfj1eekra6dc53',1513397974,''),('glqgfmf9eg4m39aoaiu6gkpmp7',1513398497,''),('gme7ev2enslmf25v98a62d6qg0',1513397375,''),('gmjdvrjthic3louutqcmu0mee2',1513397077,''),('gnh9o2hclm42nnl60t72eebci1',1513397391,''),('gougv683dgt635dta0k8s8qb71',1513398315,''),('gpenc0seudfltrccehepp4t122',1513397645,''),('gpf3k9q2fg3jk65vjp1i403v76',1513397139,''),('gpv8uu8256lbkgl0m56hs9psm7',1513397387,''),('gqlioctukrieo2crvi33bi3d47',1513397656,''),('gsrjeli726m4pv9lmkbnr77e90',1513398227,''),('gt0g00spo97sgl22is7i3fh5n4',1513397142,''),('gt80h1tf6ehhtaanjscb6umho0',1513398340,''),('gvnkorrvqlsp37t2o9d90bl914',1513397451,''),('gvokd4ioflc590m7sfeisq1s85',1513398386,''),('h05t4e7mq6t7detlu5314np9g6',1513398271,''),('h06tc4bpsuhopre3t0jqpkcqc1',1513397387,''),('h0cb0lqe02tfpld7aeuvulemm4',1513397210,''),('h15j0fp9srrpicb9i2g4krmde7',1513397205,''),('h1ocu8hlf4ie7s7qkpreinbuk3',1513397767,'mid|s:5:\"16199\";username|s:11:\"15004872363\";member|s:11:\"memberlogin\";'),('h236l2nto6suvdtt3063uvt0f7',1513397370,''),('h282pc410sohu9qekpdnshefo4',1513397731,''),('h33mjgc02limp3fr4m9goh86b7',1513397350,''),('h4a4m6nql0ogiqdft99gnn44k3',1513397401,''),('h5huj5o0ulggmlps9meqm70655',1513397674,''),('h6ft5lls1a12u0f39ineuef0k0',1513397731,''),('h6tjovc2ptu07lsf4cctli7i55',1513397189,'mid|s:5:\"16832\";username|s:11:\"15128702587\";member|s:11:\"memberlogin\";'),('h707tng9q4gklq6adlureqtm35',1513397881,''),('h72kie1l3vdiakoipp1766rmp7',1513397249,''),('h7h4gq0v9da8bfuhiunbfq2cp1',1513398116,''),('haobbr7bhp5sllnb6rf32207u2',1513397381,''),('hap8jit77sh8o1ak5lh2tan5q7',1513397356,''),('hb6jl0ucl1ei4hh48oskhffr93',1513397719,''),('hc9cdnh4lp7r361c6qrfpdbs87',1513398394,''),('hd605mcus9tu6dmq0q44ln5l45',1513398022,''),('hdog3bjrupuuppa6kh9vkp8vg5',1513397907,''),('hevphagmmgm600bdcol7cda3t4',1513397095,''),('hf0d8ds6jb3hldg4nj36eeoob7',1513397816,''),('hh3frt8emptr1k5knohmkdklc0',1513398302,''),('hhci1p4eao9ie8givckhik0l83',1513397853,''),('hj31jll428i61enbnf71kjuc76',1513397383,''),('hkujljebpshhqruv1f204q6qj4',1513397158,''),('hl0m0huedj5r7gvp8go53u1bf3',1513397712,''),('hlic03napc073h0h1vm96mg9a0',1513397379,''),('hlqad7mhpo5paj3u76djg7ldl0',1513397547,''),('hm0rhld9pvmrf7b9633rvic9u1',1513398080,'mid|s:5:\"18910\";username|s:11:\"18905211738\";member|s:11:\"memberlogin\";'),('hnddtfp3ndtv65uclfsjfp2587',1513398242,''),('hnr01cqdvkseplvsvlhqlhlrg5',1513397921,''),('hpr7o3cfi9rq2q2v4rtr5v7an3',1513397886,'mid|s:5:\"17969\";username|s:11:\"15998883346\";member|s:11:\"memberlogin\";'),('hprueikulbl7v5gfca67sik6f6',1513398098,''),('hqelkas3atikvia6mtkb33u830',1513398105,''),('hr9s6ubduj55vibos2qqj6frh1',1513397221,''),('hrdam3v6h75qblfeb90ishf2p1',1513397801,''),('hrnqm9hj46v3s7m7tf2j3ns5i5',1513397417,''),('hrrj2hg8edhffcsjje676jftq1',1513397094,''),('hs2uk9laf6luefl6rnnhghrkj4',1513397151,''),('hshtg83uh4586jn9oa7nen7n37',1513397290,''),('htq8lvlcplu88dldpljse5jv87',1513398462,''),('hu4t6tf6ora9jsspf2d3djj7b2',1513397292,''),('hvgc4f1pq7rru7rfmd48beo4m4',1513398135,''),('hvmurr9ptoar7esgchokagqge4',1513397653,''),('i04pdcladusdfjg9se4u1e9um4',1513397187,''),('i09hq3mtun2q7og8dsiein7rc3',1513398183,''),('i0sa0a7lktg0mfnv74epgvr736',1513397394,''),('i17782b42p8fv6g5t6md9g1j91',1513398468,''),('i2jiaradc91d9c437s6onihe57',1513398390,''),('i2tjt63nc8f76a04dk8jl83il1',1513398396,''),('i3b1thepjkt779oniiv7t11qh7',1513398186,''),('i3h7le11amtrtqfgh1jt028ci6',1513397358,''),('i3n9976gu157hamjqgabpcvn22',1513397086,''),('i4797skuvt20a9mk7stk2jabc1',1513398189,''),('i48ju798og5posc3ke4o0qli67',1513397375,''),('i4oc1322plh5m8bbemgk4gdm36',1513398290,''),('i5ht9pgd9dofn8dpik2dqhdus3',1513397223,''),('i5v1v4v74f01ue6ri6rhq9ghf7',1513397832,''),('i734rpv486pl55o59nuopoa3t2',1513397694,''),('i74lu4c90crkrosrjfal3qubp5',1513397286,''),('i780ol3pa8doeoc1o4fnm6mq76',1513397364,''),('i7mr4jhb9e4l6ktihjbk1javd2',1513398104,''),('i80q7s6gj1asrupotprqdo0h74',1513398327,''),('i82cev457rk1ouv06bt22v93t4',1513398188,''),('i86doa7ring8rvs9r91557ovr4',1513397453,''),('i88oka4akd4h58ek6oohl12012',1513397086,''),('i9259pr454le3435alc9c687o3',1513398318,''),('i9vp1ufhmttjad9n619mngnuv7',1513398282,''),('ia8qojd3gitl7rpivo053vf273',1513397401,''),('iaer2lff2v2miv0v5vqh7crla1',1513397501,''),('iai4pu17r9peea9bdave8iupg0',1513397398,''),('ib1p0rae34rcpgfdtknvcvadg2',1513397366,''),('ibd0du8uhuipcp006vr0pe36a7',1513398270,''),('ibtj7bg5cruch79m95kgsponh7',1513397437,''),('icgdhi1ub8j90qring2r1g3305',1513397369,''),('idlgmohgmsegtsj3e29malj1m7',1513397075,''),('idrg11rcs4rc5nm9ribika9f51',1513397458,''),('ieccleihaup6hpig6vkmo9a127',1513397613,''),('ieia9f8aa4rphbal5ti09qtdg7',1513398507,''),('iekmae3tbidmn21o5v1bmg9022',1513398314,''),('ifsl2m40aasdm1pf1vusk3no67',1513397910,''),('igkqake3jd3l1hp3dhbihm4054',1513398494,''),('ih4kaebjogavgkdgiuibhdv5g1',1513397154,''),('iherb1cvkoaemniofa0k9ungt6',1513397394,''),('ii47lc9ifhspugph925jcs0kl3',1513397318,''),('iio8nnt215m6os07im6acjgln2',1513397422,'mid|s:5:\"17072\";username|s:11:\"13770387293\";member|s:11:\"memberlogin\";'),('ij3sl40q89k99a5rn2ib9o9032',1513398499,''),('il8pv1t1ci8u31itok3o7p98a4',1513397384,''),('in60mtn56cseddfvrqd49l5te7',1513398190,''),('in7s2li1oj5b3c59anevq7vlb6',1513397456,''),('in9l6k60f0989cuvnpao70uni2',1513398398,''),('io00tha9vnu7aua9kkqr8a7hb5',1513398147,''),('ioi3fgftmbabponr5s4pdl72i1',1513397161,''),('ion9srru165euog4ski3enm796',1513397504,''),('iovae20rk46u3dtd2qtlunutc3',1513398329,''),('ipa4609aa5q1at09j4bn4ch536',1513397566,'mid|s:4:\"8922\";username|s:11:\"18313617308\";member|s:11:\"memberlogin\";'),('iqlj9pppm9cdn5gc12ngakr2h3',1513397416,''),('ird6hhqhbkbkrajqrrpsegvsf3',1513397927,''),('irpe0lv088jj5ks007heq8q4d1',1513397260,''),('isa9037d07t2c1j26g9ail7v02',1513397705,''),('isil6h6hrdkrnik746l6g7q0r2',1513397140,''),('isutd3rabt9g4ml2qkrq638tq4',1513397739,''),('it5benkilenkvo9glcmrugpic7',1513397981,'mid|s:4:\"3608\";username|s:11:\"13753715550\";member|s:11:\"memberlogin\";'),('iv419h6l8pav40rir8rmkglof5',1513398302,''),('j0puc2f41laedl8vtrv45g2596',1513398035,''),('j0siv0uiakgbv0peeddeqv98p5',1513397241,''),('j1dchnbu5q1uj63rmn6a53oe26',1513397351,''),('j1k0075eurf8m9aq0e76j75fi7',1513397502,''),('j1s6qbn8prr74sjqv4bc1d3pk5',1513397372,''),('j28iv5ed7tllk2q5kicuo2vuf7',1513398207,''),('j40jnod2pe9sln9k2vv26pk796',1513398323,''),('j4aemcg5hm0sau7c50gapuk3r2',1513397598,''),('j4hrkiuvvlfjuig8pmddnqokh0',1513397251,''),('j4o6lipa3q6d48bd5jfpn2mn16',1513398497,'mid|s:5:\"18195\";username|s:11:\"18972791915\";member|s:11:\"memberlogin\";'),('j4si72oghi0v38boul82sm98c4',1513397818,''),('j51pa5r8823thgua4ojp38tf20',1513397153,''),('j5fdoeo5uf6f0k22j15stvbc76',1513397351,''),('j5n28988k2eg03jc7ggq61e557',1513397472,''),('j60av381cogsmd4s5rrdjdoet2',1513397439,''),('j6s8q3sc3cql5chrfbfag88gh0',1513398047,''),('j97ndr5gm4lu5n41q1g1btgo70',1513397326,''),('j9vg4h0ggel9ntf99qe2pn18b3',1513397809,''),('jalcvjd8ec66t7im4h3ud31vg5',1513397409,''),('jb8drtt8vvfi1pvhuaf3o026q7',1513398365,''),('jba2j7i6kimdgti7bp82t04re2',1513397075,''),('jbacndikos4if17qotkjrbnab3',1513397731,''),('jccsng6cn26v6pr0qrubhs5o36',1513397328,''),('jd7ntb71d0538u7klndoc6gm24',1513397763,''),('jdaq641cc28i9j542t1t2e89r4',1513397823,''),('jg82pqfds56l09ak15fmrep086',1513398323,''),('jgsg3o6kkevsheccfubfmg5597',1513397351,''),('jh1td3khncvont713r3ffnu7n2',1513397092,''),('jhrnqjab3amj4h70v6gvsso2f2',1513397487,''),('ji0sduj92g9u74ig1gftju1d86',1513397351,''),('jialthb5vosioatgfdeumgjj61',1513397995,''),('jjf40potsjb4gj3fgr0cegp857',1513397723,''),('jjkeojjnvsvutcedjaenus80i4',1513398451,''),('jjqp6119ub2gbpvcjibjgu3bc1',1513398221,''),('jleemafvjt85c0j8ojksvi5bv1',1513398315,''),('jm22rhkh89iik0275kd6dhh6v4',1513397356,''),('jnq9leibn4ckq0ea1cgr50s5j2',1513397395,''),('jnrqmbf9kq6uuirn5do26hf2c1',1513398034,''),('jovoke502gkalfugb7i0cfl4u0',1513397270,''),('jpb7hkg9rkqdgsh2bnouf5n5j7',1513397317,''),('jr6qcib3i0nevtms697hlm01b1',1513397164,''),('jsrevs6s8tpkkejsm2eapeg7i2',1513397371,''),('jubggdhmci1q1odt9gg0hs4ba0',1513398276,''),('jv8lgmmea3pbdpjmbj5uvesf22',1513398368,''),('k168nkqrr0cep56nj1dtipqki2',1513398133,''),('k1mreulursmk4ampuk8pcaice4',1513398512,''),('k1qio0fbcdt9opcnh2ll0luvo0',1513398226,''),('k1t02a684b8i8qkd9gitmbdof0',1513398372,''),('k2dd1g8vqpo85v03dhnea66826',1513397362,''),('k2kabajkbaq4liqgkmcog2uo91',1513397973,''),('k389kcn24fghr4i775uj95dfi7',1513397715,''),('k66olri022q39iuf93a6o9t8s4',1513397378,''),('k6er821c3ntr8iq4inl9e3fnl1',1513398217,'mid|s:5:\"18611\";username|s:11:\"15676952924\";member|s:11:\"memberlogin\";'),('k6mb71gco1mq0hb874pohl7sf6',1513397412,''),('k6qiporrois113en54spue2ca5',1513398327,''),('k6tv4fm2bpllamdq0claogug65',1513397768,'mid|s:5:\"16199\";username|s:11:\"15004872363\";member|s:11:\"memberlogin\";'),('ka4lg3lqlc6ndjm9upjksegs75',1513397978,''),('kb6ho12ckbdktk400kmk0po6b4',1513397741,''),('kbeh4a12qvvvis0du130qvo6r1',1513397532,''),('kc5c5psjha5cvb4qqq3hms3rn5',1513398121,''),('kcs36r1009a8a8a55lfgftq8d4',1513397401,''),('kfs60vhppjh87a8h4n1cbkc375',1513397604,''),('kg1g97du1s86c0qugjt4tustg4',1513397984,''),('kg6r668hll94iusmphha8q92m2',1513397284,''),('ki393qt5be4ftr2uaahtpj9b83',1513397398,''),('kiifjd2qberkmk3ufqmeefn505',1513397363,''),('kirt7k1fq6q59is499s8obrqc5',1513397343,''),('kkfe6jf0mp7kqfkgm61brqmti2',1513397366,''),('klddnbnunpbdblhff93qpmj3k6',1513397418,''),('klhmq7rihin59td2r0nsoh0cv1',1513397247,''),('km0t190ckq5ukmdvgaf8scs067',1513397136,''),('kn0no19faje8qdvc8qofcdcuk5',1513398348,''),('knvi85ecc04f0shq8nkn07hpp1',1513398137,'verify|s:32:\"905056c1ac1dad141560467e0a99e1cf\";'),('kog479rtudiodutnn3od7t49u6',1513398511,''),('kqr14nl82k3n0l43mbjr8n3cv5',1513398117,''),('ku830fsolqmad6k8a7c8j3nj51',1513397208,''),('kuk8c3v64dsfpe9pe7ialfli94',1513397407,''),('kuso9feau0kv3ekm6f48i634a3',1513397630,'mid|s:5:\"17784\";username|s:11:\"15162065061\";member|s:11:\"memberlogin\";'),('kvci15rre0ajmupre2oubn3ns6',1513398492,''),('l00f2krm63qlgu5q2jqu9p4u17',1513397360,''),('l0bvrdcekjtv4nfc11b58pmc80',1513397155,''),('l0sfdiaqq3j6jqnk3afq6mfnu5',1513398201,''),('l2e0og83oa2m1e0ojq5gi7pq13',1513397690,''),('l2rrpvnv0fpi3qa2p6ka51h134',1513398282,''),('l43f4u77t9fu00ekvilf37ctp5',1513397875,''),('l4d62dqhovrtko3np8b844jdv1',1513397518,''),('l53cvf5819q1r4q6rf1qskgnd7',1513398101,''),('l5dnbdfsqe4veo9p1i706b1au5',1513397970,''),('l5o3or85miogg88etb7ht6g4g0',1513398274,'mid|s:5:\"16494\";username|s:11:\"13754084190\";member|s:11:\"memberlogin\";'),('l5s7frm4m7m2r18qorvkrnhta0',1513398299,''),('l7ks96itp0skuaq3a6fhn42ho7',1513397345,''),('l82vgdb6qdtt9n08bq93mmgt34',1513398200,''),('l97nsh5thg53il8km3tl8en772',1513398475,''),('lalspckmtp5o8eq387fdj4ab63',1513398506,''),('lat5623k8ip8a7p2pf7i2eshe1',1513397369,''),('latrqqtc0rpue69h1ohos3kid2',1513397345,''),('lbl2gk9e7golip5k671v0sk455',1513398040,''),('lc0qoepr506i94lvb8oanvb587',1513397370,''),('lc1n7oomggd20iscapo485qjo0',1513397800,''),('lc4v19g0u6c8quvh8cpa7dnka2',1513397322,''),('lcpjdefra70haeo0kesk17o902',1513397533,''),('lcuuun34c59mn7p23e2pb5vct6',1513398276,''),('ld5fsq086pirqeee7ikcrgvs12',1513398003,''),('lecvasb21ni1vn316dk47veat1',1513397574,''),('lf2r9i3vglosqk069a9oep3561',1513397830,''),('lfobrgaoh01cqll3c3l9bitbj2',1513397561,''),('lg4jjejt2dkm8kvil8ja8jnid0',1513397379,''),('lgo5v1bfqs0iprdojm96bn5bg7',1513398205,''),('lhuanlbop1jshaqic311cc67c0',1513397999,''),('limjr228ec0o3goc8mdvnqmqe6',1513397627,''),('ljr7i1grg6g77vkma0d6l0a510',1513398385,''),('lle7d7vvh02l514hkeek5vbvn3',1513398206,''),('lm286s56fjmgbptuve6cblevj7',1513397455,''),('lm5tmbg6r2o07i0e0vc5jp83k6',1513398183,''),('lomes08satlkclqn4aks9jei91',1513397388,''),('lougdlvtf5cpr55mmis7dr9q50',1513398474,''),('lpfnqc1cjilathk6960loe41m4',1513397857,''),('lq2gt9vo6lac9la60g6bs46e50',1513397548,''),('lq59n2h6eeja4hbahj0qkrjn22',1513398209,''),('lqnbc7n7p7uni62osotjrmq395',1513398419,''),('lqrg3hd2jruq2h3a31ug7r9qd5',1513398039,''),('lqrlfg7s6qrbj5i2o9i1mv4os2',1513397824,''),('lqts96sal02aembges5v9196l7',1513398111,''),('lr0acumrccioda8r56b3t46983',1513397359,''),('lrh7f5eaunn98n3lil6kcpp8p2',1513397077,''),('lstfi6mbgejvup25m87gnie2i7',1513398079,''),('ltdpo16rohkpogpc11gomdtir4',1513397292,''),('lu98920b27ch4r6kmlb9k4aa02',1513397383,''),('lupmm7st4kk2bk099j8ntvrvn1',1513398023,'mid|s:4:\"5166\";username|s:11:\"15150040858\";member|s:11:\"memberlogin\";'),('lvj1rkcel5apruaqblo4njvfu1',1513398493,''),('m1dvup1m3k7fmmj0o2dq74o2u1',1513398030,''),('m200iv5ne1l50bek4vfet6qp36',1513397938,''),('m30jmm0sb0uu87blmdm68etdm5',1513398205,''),('m36h56k8ajpbl15i5t5ac5chv4',1513397372,''),('m584sc186mgu152p5f0oesrdr4',1513398392,''),('m65rro87uus73jtke3579fdfm0',1513397254,''),('m6jd5kah10cuhsk4lgigf04uc5',1513397853,''),('m6r4ig91lptuc7rhkfq8ook9q4',1513397369,''),('m7ffit9vls0rtto6v92ueshag7',1513398227,''),('m9dki679ccvoa14gpfhcd9fl07',1513398022,''),('mbmu9atd6u0h533ht4sdl5aq17',1513397927,''),('md31k112qc84d0ks8ssu1ko300',1513397346,''),('me0sp3bphk98voajoeova192c7',1513397569,''),('megp55fu4nfh5e1aq1s0dlgba4',1513398128,''),('mjggee71kpshktn65esgbp04n5',1513397938,''),('mkratofvql0b22l7jloe62dbn0',1513397386,''),('ml8m16lmudal4h2e9sfdsv85n4',1513397345,''),('mlk4g1vd5giv58gfq6icl5upn2',1513397626,''),('mmftb1f3dovsje3qnh7ft1ip47',1513397223,''),('mnvagrkjg3c6d0uht5ch5ojt34',1513398205,''),('mqhnrlfk4cj8lh1p6er005agc7',1513397377,''),('mqvi85h7roo51holkejgae8j51',1513398371,''),('mrqqo50nuevo3bdr9p82gujr74',1513397283,''),('msll7b061b9ider9q0gp8vdu77',1513397139,''),('mt9q13k2hucg2pcmmr3gisj423',1513397861,''),('muajstdvkd35tog4s7sb5hqcv4',1513397768,''),('n0piq2ff42r2spdqe9imgl3eu7',1513397769,'mid|s:5:\"16199\";username|s:11:\"15004872363\";member|s:11:\"memberlogin\";'),('n17nrnq7n8q09jck778dbmq6d0',1513397388,''),('n17obb2l8lslueqdg7jlb46u36',1513397192,''),('n1e73kol5beeq39eoijoid33t5',1513397273,''),('n1j3ommr068ugqv839ro2tq3e4',1513397981,''),('n3hump7mbu7a58dji14daffrq6',1513397844,''),('n3oiahvmjsjl6jlutpq54emcn7',1513397292,''),('n6c5s4v7kgvgg792l0m48po6f4',1513397336,''),('n84ot87juv7dvtlc558rkotr53',1513397385,''),('n8efc4790c708qvic0ubsvclb7',1513397352,''),('naag1tdgdd166rotv98a29qqd0',1513397575,''),('navt4l8o8cr35vqd18rpr0b0v4',1513397486,''),('nb7b24e68l12ph2t1uvub0c300',1513397993,''),('nbb9jkogcvm4rp9rvm4v59ma62',1513397963,''),('nc1lcg4jvr14s18malk5mlpum4',1513397629,''),('nckmo9ici70t7bfiv86m3k7fp4',1513398437,''),('nda6t6kue6u6jib5rqjkmscn46',1513398496,''),('nddjht3agkd4a3fo6i5kd3igp6',1513398385,''),('nei2cd6ogpp8bkru84h9egfs96',1513398242,''),('nf3a69j7oevj7ibijdtc8g44l6',1513397283,''),('nfs9uc19f4uu1qpmmd3792k935',1513397181,''),('niqqjjvc6004kdk5f5a85u19j6',1513397906,''),('nletduvrsbs7pbq840rob48095',1513398412,''),('nmm3gbc7ugc4f1ilgdk52vhir5',1513397283,''),('nmnmcohs0te36svnltv0og95m3',1513398500,''),('nmnmvrfdchj09rkva3fi1nfl54',1513397853,''),('np0s4v3656kll69fb6cmu667s4',1513397643,''),('npakpt372vhvcn1savsfa2kl26',1513397287,''),('npgqibkpomai04m189dva534u4',1513397934,''),('nphvv5hc2s2jvqj5kt1ofsfdc3',1513397629,''),('nppqu8kutch0d0ac8kins4c4v1',1513398188,''),('nqjbilemmjp3ana8dj1b0fevp2',1513398367,''),('nr0j75apdfbo16iajhq33o18d5',1513397657,''),('nr281b0e7o3cbdkc9q9ebgaag5',1513397845,''),('ns4clpaim6ua55k6bg74e057i7',1513397816,''),('ns9nl6i7hpt79mv70rmsqr1pb2',1513397455,''),('ntrn38f3jklaljpnpfunhnldq5',1513397569,''),('nu8bmp1dbnp2g0kbbjlvdckeb4',1513398315,''),('nvhdm3j76drdn3c08gtrbukcp5',1513398376,''),('nvt522vc9dadr0q5n6prse5dt7',1513397746,''),('nvu0banssl6rigmfvc6l8t52g2',1513398293,''),('nvuips7rgpa5i1ienod36vdef6',1513397683,''),('o1p3ltbrfem42mbcqje8lvuv41',1513398134,''),('o3d24i9cfracmogrqkjq9f08o4',1513397330,''),('o3ubfd6m5akikp5ircdc07gom2',1513397388,''),('o49jqvb93r4spjtd43mfqvrte7',1513397959,''),('o6b943a38bv3ghqt5canf993s2',1513397455,''),('o6uj8t2h0ed1eolel1dghbev15',1513398165,''),('o8a29go70qddu9l1vnfcqpfg36',1513398030,'mid|s:5:\"17270\";username|s:11:\"15801421707\";member|s:11:\"memberlogin\";'),('o8nmm53f8t317jm67hog199301',1513398066,''),('o935mrrfh59liieq39j9qc8ja0',1513397163,''),('oadaigd93lhkukr8oeq5vrau30',1513397441,''),('oanqqkdon2bd0pkmpl3of1kkm6',1513397547,''),('oda82rpr0skbqngh4bn1v434m4',1513397352,''),('oejn62q2buq1t8nk8cpvppg736',1513397576,''),('oenmr42dg0j8rl389sk5ab9l71',1513397204,''),('ofgbjj2ra51pk7hau2o7e8vg23',1513398089,''),('oges0ogasdacnsv36caq8np761',1513397981,''),('ohhhp16metrbdaddg06g7h4hd0',1513397868,''),('oiv87micphop6i4k9f0el80ls7',1513397204,''),('oj0ckqpd1mhjph9mvnjlq21v27',1513397350,''),('oj1u3gg2215ltpf0h53otlhkk6',1513397372,''),('ojsoja1aqrnadbtnjo4govjge2',1513397341,''),('ol0mopise3louqt8t5k4516nk1',1513397632,''),('omvefgv0s1t7m1t8k6tlp1vcf6',1513397142,''),('on7mvf0jsl7p0t8psc76fc0172',1513398315,''),('onik9li493c572jh6d57ngl155',1513397372,''),('opgoq3ok9dofg73slrfrulct12',1513398395,''),('orgo99qmlu0k048lci8t9t4cj5',1513398157,''),('os7n9oed19sc0q2cpjh1e7qb70',1513398457,''),('ottds9omk28bd73n0k4ntd3872',1513397373,''),('ouqj745qv0cgmo2t7oeobqmqn2',1513398125,''),('ovbs4icg05v09f7c5v6lbnf137',1513397151,''),('p1s7nqv9ovs3hj3rjke3oi6pv1',1513398489,''),('p2se60vsjfs61u5pq50lfscog0',1513398089,''),('p40a79mgme1mso6gcjedvrbfb4',1513397301,''),('p42ic2oi83976k7mc6br5l00m6',1513397915,''),('p4rbgnb8cs8280dvpt73lg0nt6',1513397741,''),('p5tqbtssgn9mrp9f6s7v77bqq4',1513398462,''),('p6qu1vekprle232l59sfrr2s84',1513397401,''),('p6tgtq55fc9jno7ncg2s2hm8o2',1513397717,''),('p7fcmki9d9ho7uuhd8ddpf1aa2',1513397372,''),('p7pemji3nd96kf5j6un8rkm501',1513397151,''),('p849jnd3g5b9oem9d1ng8kqag6',1513397697,''),('p90mhgt71mmk78ju61bp5hm1n4',1513397301,''),('p9fhpvskocmq650nvoupa5j993',1513398498,'mid|s:4:\"4286\";username|s:11:\"15840616005\";member|s:11:\"memberlogin\";'),('paabg37qdi7hclkb350sep3822',1513397692,''),('pandh5aioull2avhr3aj2tpu70',1513397398,''),('paoblfqmnuv4tbrk49bbij0hp0',1513398025,''),('papu6n9fg8eq797qgfpvpqipa6',1513397326,''),('pb6abmdg44p0v3kgtob8usepk4',1513397714,''),('pba56l8if3n98p8b7m9q3klm33',1513397330,''),('pbd4pf5tjeqsahqdu76v7fv4h1',1513397327,''),('pd64nok7rjv66u1p4ueg5nci15',1513397373,''),('pe84j54qbb3gdq58jfp5j5iq80',1513397418,''),('pfhfqudb3olknmhjvdg58hld67',1513397981,''),('pfrn8gntmio81fuenugvjptkg2',1513397352,''),('pftef1e91v96ss9vk2ekuohed5',1513398351,''),('pi0v2db0k7dg4782iu2pg0cet5',1513397085,''),('pivl9bv9p4u42n53pm27vrg8d1',1513397338,''),('pj4bcl6i0n0lss3ta7jmjuam76',1513398489,''),('pjrncuehe54n5u5aj0a8fl8an0',1513397381,''),('plg3mglfghicdve9133r7ddh81',1513398470,''),('plp8p5ouo2a5jt2qlkjg4hbiq7',1513398312,'mid|s:5:\"18586\";username|s:11:\"17674060463\";member|s:11:\"memberlogin\";'),('plpleto9rjfpme6m8cgrqta0e5',1513398377,''),('pmd4j7elmohek7hlcf61796077',1513398282,''),('posts57g1m0pfmdhmn1dm1ju47',1513397454,''),('ppp48t893377ad86um12q4tl50',1513397169,''),('pq9bgo6ejpgiih5efnqjtuq7i6',1513397376,''),('psgniofstg5rhsraejcgh149u4',1513397495,''),('pud75cvag4q80sch3l5jgum8a2',1513397181,''),('puv4lj737eoi5n4fngun1p65b2',1513397480,''),('pvl9s0jefau81443j52u5iqqm7',1513398411,''),('pvovuuioklojoghumtvk8enj30',1513397872,''),('q0i81nderuk3ftvh9jvoh5mj65',1513397962,''),('q0sq209urd5r2lls1u8p1of8d6',1513398049,''),('q1as69ohgai3p2nhq7lok10an2',1513398435,''),('q1i5ji3s2mqr3q9cntoo6jore5',1513398230,''),('q2ghn1r7fr324qakjvu3lggi56',1513397742,''),('q3lihlm996prbqb5ejmbflf5e0',1513397136,''),('q3u2h7etl7i00h7d6j19hia2m4',1513397398,''),('q592117v6fgbprh8qgge2brf56',1513397160,''),('q6ivll1q5lrm6ikkfa801nols6',1513397487,''),('q8pn992phgsrhcdki703g9g0l7',1513398491,''),('qap0irbr8vchhv6tqq6gs5ngv6',1513398207,''),('qbl7h6l1keje7a7seb0ot03881',1513397926,''),('qcgr5da3lkhffb3cq2st668i15',1513397613,''),('qde6e46k42uaoa62mjh9gdnr53',1513397963,''),('qhmigbjf4uhekoh0q64iqosql6',1513398408,''),('qi3v3ablqoc0o8cf4nerfkhkk1',1513397565,''),('qibf98hlk9elrrbljerhmt9eo6',1513397604,''),('qj7a6uar86dik5jhlmmoguqul2',1513398104,''),('qmtv30p498lpsfcrj68gqbt096',1513397836,''),('qn6elsq266qtec1p4s661jmen4',1513398372,''),('qn7ibrptsir6hvhttt50k62972',1513398462,''),('qngl6r3nfmukuc6tb4die8qbb5',1513397291,''),('qochgbrjj43bfialo8uneca4s7',1513398169,''),('qpjqc2ki9kvoc93m2tu59t3k43',1513397117,''),('qtoqioosr75r16eps20r5unl81',1513398445,''),('qumiblivhlkc9nfo5i973gagd0',1513397925,''),('qvcr13nplu7bqap7c4fv897ld6',1513398467,''),('qvm6kl2rhh8nb74bpa78vrkrs6',1513398045,''),('r0ntrp86jivhdg5q0dd51mro13',1513398282,''),('r114n24utvraqtgoc2jh1ln2q4',1513397219,''),('r16tdjqd7co6pnt03eqcigi1q6',1513397102,''),('r1qk1s4v8oqkptcehngji534d6',1513397686,''),('r2pn64ds0rm84run5t6uog8v43',1513397946,''),('r3s6r10m2n8ubs0q9mbkdfh0t6',1513397717,''),('r57tumpu509l1oa6rken1cqf11',1513397818,''),('r5eujlcptrbmbdrvgc9rjsadg7',1513398247,''),('r5kel3icpq9bhb04v1h6fujik0',1513398509,''),('r7uouqmvg5dqo761j7pju9k7m6',1513398506,''),('r9n8jkvl36lk01dm3qifrmro15',1513398282,''),('ra1n1ll0h4i6h0kt87p6fhoce5',1513397804,''),('rbb5ueotfvbe2on1sc89j8sc50',1513397077,''),('rcemfvu0eho9l7a2lmfol0o716',1513398411,''),('rctknjf2btthjgradnvoq97j93',1513397365,''),('re2ngkap8iib4gggir4qcajmk6',1513397118,''),('refq5m5pm46bonsbmdbl1si3e1',1513398437,''),('regrdoa0bk2ao9e99js0hl06g4',1513397408,''),('ri5ccsmkcgq9ts02gb7ka7fib4',1513397264,''),('rj3ppnbpr65vhh0ft5q1nv6mk1',1513397078,''),('rjppaf1ha0p402nfr55v3upvi4',1513398230,''),('rk12eb5e38r384ho5uotbb1590',1513397603,''),('rkg5fseejjllk19trg8k4u5sr7',1513398400,''),('rkg6kpqedu1ns3vl45emfi3dl0',1513397270,'mid|s:4:\"2881\";username|s:11:\"15806083376\";member|s:11:\"memberlogin\";'),('rkjjlgejjojgvndkt238qb9gj5',1513397407,''),('rlqrss2s4d5u9dgh4eof83dvg7',1513398046,''),('rmsk1p4vvhppngfa5gcve7mo56',1513397439,''),('rmtpkpmvdor9864995f9pse0s7',1513397818,''),('rofa9pn5nlkpu2rqe42aoqhr06',1513398060,''),('rp9u640odtg9osgj9m6tmithh7',1513397430,''),('rq7h57vuij06fi1953mfnsdmp0',1513398293,''),('rqjlg28ebabgp3s528qufo4tf6',1513398000,''),('rqse1dpq39fqmffnmol3atps53',1513398209,''),('rr6is86lc72lrr4e764t63u076',1513397373,''),('rrju1irrdbnhls371lltgcm016',1513397475,''),('rseo70p1f41t4vh037b59loqt5',1513397389,''),('ru3v1itoov374kss2faqtljqk7',1513398284,''),('rus8odc09jggj4nq9foeh3bp56',1513397559,''),('s0ugecbg7iuu61ctf791du6gs5',1513397341,''),('s10iusmmktcd9e0i559bdn5sg7',1513397204,''),('s18201pea3t3i0f9pr6i2qfsv4',1513397479,''),('s1rqjrhrriro3qrdbdqlkb2d31',1513397411,''),('s1umho9rorilmd9r0adlhtfuc3',1513397204,''),('s3g9dagpjlm1frc2s9el973lg5',1513398104,''),('s5r0kp92d7bjbdtsh19nhuts32',1513398315,''),('s5tivm7jj651lm8vtev9ngm5l0',1513398286,''),('s836bg9u8bhnr2g56vaok9bs93',1513398462,''),('s8eps29rjh9m4fosf0gnjgmem1',1513397360,''),('s9ma2ajp6pgtikdve3mbp17o96',1513398023,''),('sau9v2jd7oc5t072fps39naa50',1513397364,''),('sbbu89idqok20irh8648ltud62',1513397455,''),('sbn7n1jper121m4cs5p9leotn7',1513397341,''),('sc6cark5g6237ii3laej8444u0',1513397244,''),('sdct59nnchg84sknl051pq09q7',1513397479,''),('se545bpe2j2i86pf6bk61vf5j3',1513398205,''),('sg5p27rfd0f5hvp86qqk23arl7',1513398366,''),('sh5r46u2peu44mb2qo5dri3p53',1513398497,''),('sh61rchn2oc3e86kg0snn9mjt7',1513398414,''),('si7vaurc1othb86u13iutbb621',1513398430,''),('si8ian046mmn3r6tojnjo6p7q0',1513397874,''),('sje89eeofa2k3d1gs0hb2htjq0',1513397455,''),('smbu7kkmmqdo7qkkiniblk2t65',1513397297,''),('smm1fovgfa1fv0c89holu7k2r1',1513398133,''),('sn4ooe5ed680el2dgoh3jnadf3',1513398412,'mid|s:5:\"17752\";username|s:11:\"13632555381\";member|s:11:\"memberlogin\";'),('snn50r9mqtu78micgbmch1l243',1513398282,''),('snne40ouor98q40c59e3nj0kp1',1513397699,''),('sojh4it3tm8493avm5dn5nnkv7',1513397228,''),('sppf70fu83d23dfjh3p4532603',1513397336,''),('sprqdgemgv473dlluvp7uc2bu3',1513397356,''),('sqg6kapvobekd55nnvk0k796b1',1513397984,''),('sr16ab3ee79hajrl26t8vug784',1513398500,''),('sre73qudcdcs0ccmbl2j1fkqr2',1513397393,''),('sro8mbo3u93ktdp0mau6m1me22',1513397451,''),('ss1se0ii22iruun8ff4vqe6p61',1513398122,''),('supfgova23047tbpcokomqb8g4',1513398064,''),('svc84nv71hm05ee4pobdep1ip7',1513397488,''),('svl60050a77sielotksqsib7e4',1513397867,'verify|s:32:\"f1676935f9304b97d59b0738289d2e22\";mid|s:3:\"132\";username|s:11:\"18643318960\";member|s:11:\"memberlogin\";'),('svsisgq7inu9jatfigmgcse3b5',1513397345,''),('t05vih4jfgbvbtsvong8frtd06',1513397254,''),('t1g2qj8oven80khegvd7dgedd3',1513398190,''),('t1j5bldn0fp4lhsjnkths28q55',1513397286,''),('t232rd10licv79q7hjj116m311',1513397408,''),('t2flpdn8kdlnd3rto6c4hl7923',1513398219,'mid|s:3:\"797\";username|s:11:\"15216178316\";member|s:11:\"memberlogin\";'),('t33kh9dgfv9856doqssogtl6l3',1513397629,'mid|s:5:\"18452\";username|s:11:\"17743252264\";member|s:11:\"memberlogin\";'),('t7nptu0ul1ro8cigvqerpc2oh4',1513397977,''),('t865mqpm8hls68vs8unk9sj4e7',1513397208,''),('t8fpacio7d4ocfgcfhockmfrs7',1513397283,''),('t9jt45n2rccmikoeusnf779sf4',1513397152,''),('t9puirk8077oqiof8b9mtlleo4',1513397613,''),('t9tq7ngsea38s0mduhp9veuh92',1513397390,''),('taui7qmu0l79ilep6c44k79kj6',1513397162,''),('tcrippk7n8re5utabbp38i5od2',1513398394,''),('tdlgnu40kalaoi3vn3loommhd1',1513397637,''),('tein323cchlc962qkv041grk72',1513397158,''),('tg86m9ned8ftn0hg72ccsb6in1',1513398188,''),('tgc1f1qouh7kmeq2rnb58r6om7',1513397117,''),('tge15d9ugknkcitvddglm4jsv5',1513398474,''),('th00ip1o5o33et1iu7h2v0ur94',1513397365,''),('thd4bvci45c0tpkt8jv7h1gtq3',1513397755,''),('thg233dkis3nebtvbs7bs81162',1513397690,''),('tk70lqigghu67gut1r3t2ua6g1',1513398039,''),('tkitgdvalttla5fpjp27se0p94',1513397455,''),('tko7jbqqem58gppuvn8fd6ssi5',1513397448,''),('tmgi7kc9aguvivo2rtp9bjvhv0',1513398200,''),('tn6cpn858vunnog7vha695uvj4',1513397941,''),('tnqs568t2ug8houc6a0nn1b224',1513398249,'mid|s:5:\"12525\";username|s:11:\"18751372647\";member|s:11:\"memberlogin\";'),('to864d4n6rjq7qdlt9dd2oord3',1513397494,''),('tpudtcanclvvghr2o5ms8if6t7',1513397569,''),('tqnb85ogjd3ltf9dhncbkkkuj4',1513397454,''),('tqtahjguvk7mm8j457a857ve36',1513398282,''),('tsql0bpq58t3kuc8682boal846',1513397468,''),('tu6l0ka674g2qrd78541iucrq5',1513397891,''),('tv7jn67un4b6n2sev6nedh4kl4',1513397686,''),('u1vpd36uc4iv783c2b84qsb030',1513397717,''),('u3cv31vspov4041nhh38o8uhi2',1513398323,''),('u3tii2r3uk66kip1h8lumn2vb3',1513397284,''),('u69emrb4actv40v2apl5orfu47',1513398208,''),('u6vie9e6f9b05lrhasu48d5tg5',1513398365,''),('u9sqhgi9tupihhc7aa1lkl4gu0',1513398370,'mid|s:4:\"5441\";username|s:11:\"15535432880\";member|s:11:\"memberlogin\";'),('u9utamipo8uugjrs7d8hg92vk1',1513398294,'mid|s:5:\"11608\";username|s:11:\"18979562740\";member|s:11:\"memberlogin\";'),('uafmnu0qe15o6v7dh9eohq4rr6',1513398385,''),('ubc0dj3mlokgv0au8eidkf0lb1',1513397420,''),('ubesnmjckt0oe6ol7hje643dk1',1513398009,''),('uc53eamafpsrc2iikq7mq35r57',1513397995,'mid|s:5:\"15739\";username|s:11:\"15003536192\";member|s:11:\"memberlogin\";'),('ucb4k0vnj8c1beo8uomierkk13',1513397286,''),('ue10026q419vfq7f9be1l1ft96',1513397367,''),('ug3bksai49dgjpt8783pg9alf5',1513397393,''),('ughi8sseucutq4ap16jkmljl25',1513398032,''),('ujdt9s0ut57b6jpd4s9liasmj7',1513398226,'mid|s:4:\"3003\";username|s:11:\"17505588821\";member|s:11:\"memberlogin\";'),('uljg0vl7u1crcj1jubr3fp96g3',1513397154,''),('umghkddmhc1t0oe6k3s4bjfec1',1513397455,''),('urbtpgjsf5ilus4no1gkhmq7u7',1513397284,''),('urnpbvu45m390d4b1brmbjjn91',1513397411,''),('usbavqb7j6f6fao3kbpv84nnm7',1513397778,''),('usr0ig3g2mrll2k47b137a44o0',1513397379,''),('utjj3jocgq6r4pac9uu8t4qhj6',1513398397,''),('utrn1720h4shobnpnreci425p7',1513397727,''),('uvvnu2jdj3u32i7ovb9o282q12',1513397998,''),('v1kuhr75prq02a8aquoqt2lh13',1513397709,''),('v4p0oie7f3mfe8sc5m5f0590f5',1513398384,''),('v5jj08qma6opvkqiu8mo668ib4',1513397243,''),('v693nga7olve7nfekfvp4k0lg7',1513398207,''),('v6d4ll126ul6bdc2nq3daqbvr7',1513398417,'mid|s:4:\"3194\";username|s:11:\"15285782328\";member|s:11:\"memberlogin\";'),('v7ahtov5oi9t6c6nf44hq1una4',1513397328,''),('v7mges7lbcrlbc4fl3d6vj5fi3',1513397286,''),('v7npamgqj9902q7mscd6h55ki1',1513398385,''),('v8m0n5rat81l7c7p8ds4amgne4',1513397886,''),('va36ppumq3u51rq97chm33aka5',1513397717,''),('vaj25jtnk2iudr1ov6tooeg673',1513397472,'mid|s:3:\"839\";username|s:11:\"15199480173\";member|s:11:\"memberlogin\";'),('ve6jk9u450dvr2at3i8usmn3t2',1513398299,''),('vej7rpmmidp7his62voil7hnv4',1513397367,''),('vgoqp28494e12srt41f6ii86k7',1513397399,''),('vgq30l8sgt8cvjumfrhibau2c1',1513397317,''),('vgukqov4khu4k3npaa62da16m0',1513397717,''),('vhkub84inqb6v7hkjgm2p8nqc3',1513398491,''),('vj5212ik3i77756jqnsj7jcjd2',1513397198,''),('vj8c5doc2lr40kdmsfb1lelq43',1513398100,''),('vl645joig0tqnh5bn3bdv4v761',1513398334,''),('vm5crucu7q3qk4rbcs1hpo5v36',1513397338,''),('vn5bl5hp2s9rvg4bkl10h5g2e7',1513397154,''),('vnqumjjr81utg6khdr24hsefa0',1513397548,''),('vqoirqa4bmgakqq4dnv011ocm4',1513398190,''),('vqth4kqbb41gnfpkqvonlafhs7',1513398435,''),('vquoes4fbnihl0db8s7o6pqjl4',1513398342,''),('vu2vevvo919agvq3p5ef0g3a85',1513397286,''),('vvb04jmhd96ss2c0pmcr1moqs3',1513397393,'');
/*!40000 ALTER TABLE `ds_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_sharedetail`
--

DROP TABLE IF EXISTS `ds_sharedetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_sharedetail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `member` varchar(255) DEFAULT '' COMMENT '会员编号',
  `adds` decimal(12,2) unsigned DEFAULT '0.00' COMMENT '添加',
  `reduce` decimal(12,2) unsigned DEFAULT '0.00' COMMENT '减少',
  `balance` decimal(12,2) unsigned DEFAULT '0.00' COMMENT '余额',
  `addtime` int(10) DEFAULT '0' COMMENT '操作时间',
  `statustime` int(11) unsigned NOT NULL DEFAULT '0',
  `desc` varchar(255) DEFAULT '' COMMENT '说明',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `member` (`member`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=68 ROW_FORMAT=DYNAMIC COMMENT='明细';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_sharedetail`
--

LOCK TABLES `ds_sharedetail` WRITE;
/*!40000 ALTER TABLE `ds_sharedetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_sharedetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_sms_log`
--

DROP TABLE IF EXISTS `ds_sms_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_sms_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `mobile` varchar(11) DEFAULT '' COMMENT '手机号',
  `session_id` varchar(128) DEFAULT '' COMMENT 'session_id',
  `add_time` int(11) DEFAULT '0' COMMENT '发送时间',
  `code` varchar(10) DEFAULT '' COMMENT '验证码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_sms_log`
--

LOCK TABLES `ds_sms_log` WRITE;
/*!40000 ALTER TABLE `ds_sms_log` DISABLE KEYS */;
INSERT INTO `ds_sms_log` VALUES (2,'18352553273','st1pbtqsr61kj3phkvumg7pci0',1522325728,'9120'),(3,'18352553273','clh0ncmqi1oderl616vn9hvad7',1522325788,'8885'),(4,'18352553273','st1pbtqsr61kj3phkvumg7pci0',1522326856,'2592'),(5,'18352553273','st1pbtqsr61kj3phkvumg7pci0',1522326892,'8734'),(6,'18352553273','ii74ohs4edjvsm7oq4vkkf18h1',1522568449,'7206'),(7,'15763338201','sg6n0c0m6mtg5ab7cejupugfq5',1522811388,'7236'),(8,'15763338201','sg6n0c0m6mtg5ab7cejupugfq5',1522811480,'3446'),(9,'18352553273','rgqu1c4j24lo3djo2l87sogd01',1522811654,'6043'),(10,'18352553273','0va7hsf415utij4r9o1fiub8f1',1522812108,'2901'),(13,'18352553273','cmd2qrhfgu638245lv7df6uc74',1523260647,'1911'),(14,'15361820876','u5v1fq5o3gidse16sve5vmma17',1523346871,'7896'),(16,'15220724746','qiu76rbvin1mk6n85d6kdea0b2',1523410165,'8356'),(18,'13926787502','os6g671c1kjtarqc4jmclp5su2',1523410299,'4264'),(26,'15220724746','5lfirkm3mpsub2reljokioqg55',1523437247,'5659');
/*!40000 ALTER TABLE `ds_sms_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_tousu`
--

DROP TABLE IF EXISTS `ds_tousu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_tousu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `buser` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `zt` int(10) NOT NULL DEFAULT '0',
  `pid` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_tousu`
--

LOCK TABLES `ds_tousu` WRITE;
/*!40000 ALTER TABLE `ds_tousu` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_tousu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_transfer`
--

DROP TABLE IF EXISTS `ds_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_transfer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `outer` varchar(255) DEFAULT '' COMMENT '转出会员编号',
  `iner` varchar(255) DEFAULT '' COMMENT '转入会员编号',
  `qty` decimal(15,2) DEFAULT '0.00' COMMENT '金额',
  `addtime` int(11) DEFAULT '0' COMMENT '时间',
  `desc` varchar(255) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员转账记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_transfer`
--

LOCK TABLES `ds_transfer` WRITE;
/*!40000 ALTER TABLE `ds_transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_type`
--

DROP TABLE IF EXISTS `ds_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(32) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `path` char(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_type`
--

LOCK TABLES `ds_type` WRITE;
/*!40000 ALTER TABLE `ds_type` DISABLE KEYS */;
INSERT INTO `ds_type` VALUES (3,'系统矿机',0,'0');
/*!40000 ALTER TABLE `ds_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_updatelist`
--

DROP TABLE IF EXISTS `ds_updatelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_updatelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `money` decimal(11,2) unsigned NOT NULL,
  `oldlevel` tinyint(3) unsigned NOT NULL,
  `oldname` varchar(50) NOT NULL,
  `newlevel` tinyint(3) unsigned NOT NULL,
  `newname` varchar(50) NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_updatelist`
--

LOCK TABLES `ds_updatelist` WRITE;
/*!40000 ALTER TABLE `ds_updatelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_updatelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ds_user`
--

DROP TABLE IF EXISTS `ds_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ds_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `logtime` int(10) NOT NULL,
  `loginip` char(30) NOT NULL DEFAULT '',
  `lock` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=256 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ds_user`
--

LOCK TABLES `ds_user` WRITE;
/*!40000 ALTER TABLE `ds_user` DISABLE KEYS */;
INSERT INTO `ds_user` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3',1560254495,'127.0.0.1',0);
/*!40000 ALTER TABLE `ds_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-11 20:33:29