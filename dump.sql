-- Table structure for table `alb`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alb` (
  `alb_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`alb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alb`
--

LOCK TABLES `alb` WRITE;
/*!40000 ALTER TABLE `alb` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `alb` VALUES (1,'dis','2007',1),(2,'ipsum dolor','1999',1),(3,'rutrum urna,','1980',1),(4,'Nulla aliquet.','1981',2),(5,'adipiscing, enim','1994',2),(6,'mattis. Integer eu lacus.','2012',4),(7,'est,','1985',7),(8,'varius et, euismod et,','1985',8),(9,'Proin vel','1997',9),(10,'amet','1988',10);
/*!40000 ALTER TABLE `alb` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `art`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `art` (
  `art_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`art_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `art`
--

LOCK TABLES `art` WRITE;
/*!40000 ALTER TABLE `art` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `art` VALUES (1,'Deangelo'),(2,'Nunc'),(3,'lobortis quis, pede.'),(4,'id, mollis'),(5,'id'),(6,'amet metus.'),(7,'vulputate dui, nec'),(8,'elementum, lorem ut'),(9,'pede.'),(10,'ultricies sem'),(12,'molestie arcu. Sed');
/*!40000 ALTER TABLE `art` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `lib`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lib` (
  `trk_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `length_sec` int(11) NOT NULL,
  `album` int(11) DEFAULT NULL,
  `art_id` int(11) DEFAULT NULL,
  `libcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`trk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lib`
--

LOCK TABLES `lib` WRITE;
/*!40000 ALTER TABLE `lib` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `lib` VALUES (1,'test track 1',234,34,NULL,NULL),(2,'test track 2',543,34,NULL,NULL),(3,'test track 3',431,34,NULL,NULL),(4,'metus. Aenean sed pede nec ante blandit',302,69,NULL,NULL),(5,'natoque penatibus et magnis dis',511,29,NULL,NULL),(6,'nec enim. Nunc ut erat.',496,6,NULL,NULL),(7,'Nunc laoreet lectus',444,67,NULL,NULL),(8,'metus. Aenean sed pede nec ante blandit viverra.',407,29,NULL,NULL),(9,'a, aliquet vel, vulputate eu, odio. Phasellus at augue',344,72,NULL,NULL),(10,'tristique',411,96,NULL,NULL),(11,'Nam porttitor scelerisque neque. Nullam nisl.',515,13,NULL,NULL),(12,'lobortis tellus justo sit amet nulla. Donec non justo.',312,67,NULL,NULL),(13,'placerat. Cras dictum',327,79,NULL,NULL),(14,'Etiam bibendum fermentum metus. Aenean',304,19,NULL,NULL),(15,'semper auctor.',343,76,NULL,NULL),(16,'est. Nunc ullamcorper, velit in aliquet lobortis, nisi',479,79,NULL,NULL),(17,'netus',413,15,NULL,NULL),(18,'Cras vulputate velit eu sem. Pellentesque ut',329,2,NULL,NULL),(19,'enim nec tempus',345,82,NULL,NULL),(20,'ipsum. Phasellus vitae mauris sit amet lorem semper',360,15,NULL,NULL),(21,'Nullam nisl. Maecenas malesuada fringilla est.',349,100,NULL,NULL),(22,'turpis non enim. Mauris quis',519,25,NULL,NULL),(23,'sem.',344,91,NULL,NULL),(24,'rhoncus. Nullam velit dui, semper et, lacinia vitae,',375,81,NULL,NULL),(25,'Ut tincidunt vehicula risus. Nulla eget metus eu erat',444,73,NULL,NULL),(26,'ullamcorper.',487,25,NULL,NULL),(27,'volutpat. Nulla',369,19,NULL,NULL),(28,'ultricies ornare,',266,99,NULL,NULL),(29,'Curabitur vel lectus. Cum sociis natoque',404,54,NULL,NULL),(30,'Maecenas iaculis',258,96,NULL,NULL),(31,'amet massa. Quisque porttitor',386,67,NULL,NULL),(32,'Suspendisse sed dolor. Fusce mi lorem, vehicula',260,20,NULL,NULL),(33,'ridiculus mus. Aenean',271,91,NULL,NULL),(34,'eu dolor egestas rhoncus. Proin nisl',353,54,NULL,NULL),(35,'lectus ante dictum mi,',258,7,NULL,NULL),(36,'ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec,',509,97,NULL,NULL),(37,'risus. Duis a',265,64,NULL,NULL),(38,'bibendum fermentum metus. Aenean sed pede nec ante blandit',508,43,NULL,NULL),(39,'eu elit. Nulla facilisi. Sed neque. Sed eget lacus.',280,30,NULL,NULL),(40,'semper egestas, urna justo faucibus lectus,',474,59,NULL,NULL),(41,'varius ultrices, mauris ipsum porta elit, a feugiat',423,34,NULL,NULL),(42,'congue. In scelerisque scelerisque dui. Suspendisse',429,39,NULL,NULL),(43,'congue turpis. In condimentum. Donec',320,89,NULL,NULL),(44,'Donec dignissim',322,19,NULL,NULL),(45,'at, nisi. Cum sociis natoque',327,77,NULL,NULL),(46,'id,',439,94,NULL,NULL),(47,'egestas.',455,10,NULL,NULL),(48,'in faucibus orci luctus et',403,30,NULL,NULL),(49,'blandit congue. In scelerisque',401,27,NULL,NULL),(50,'odio sagittis',379,38,NULL,NULL),(51,'est ac',301,47,NULL,NULL),(52,'et, commodo at, libero. Morbi',457,59,NULL,NULL),(53,'faucibus orci luctus et ultrices posuere cubilia Curae;',329,67,NULL,NULL),(54,'nunc,',333,23,NULL,NULL),(55,'Mauris molestie pharetra nibh. Aliquam',440,44,NULL,NULL),(56,'urna',323,40,NULL,NULL),(57,'urna justo faucibus lectus, a sollicitudin',306,98,NULL,NULL),(58,'Donec luctus aliquet odio.',274,29,NULL,NULL),(59,'sociis natoque penatibus',261,49,NULL,NULL),(60,'id magna et',354,90,NULL,NULL),(61,'eu tellus eu augue porttitor interdum.',355,49,NULL,NULL),(62,'felis. Donec tempor, est ac mattis semper, dui lectus',301,15,NULL,NULL),(63,'posuere cubilia Curae; Phasellus ornare.',279,49,NULL,NULL),(64,'aliquam eros turpis non enim. Mauris',500,69,NULL,NULL),(65,'euismod urna. Nullam lobortis quam a',422,73,NULL,NULL),(66,'netus et malesuada fames ac turpis',368,59,NULL,NULL),(67,'cubilia Curae; Phasellus ornare. Fusce mollis. Duis',520,58,NULL,NULL),(68,'ipsum nunc id enim. Curabitur massa. Vestibulum',506,70,NULL,NULL),(69,'Morbi accumsan laoreet ipsum. Curabitur',473,59,NULL,NULL),(70,'nisi a odio semper cursus. Integer mollis.',373,47,NULL,NULL),(71,'rhoncus. Donec',248,69,NULL,NULL),(72,'Nullam',462,73,NULL,NULL),(73,'tincidunt adipiscing. Mauris',488,87,NULL,NULL),(74,'nascetur ridiculus mus. Proin vel nisl.',514,10,NULL,NULL),(75,'aliquet vel, vulputate eu, odio. Phasellus at',468,95,NULL,NULL),(76,'enim diam vel arcu. Curabitur',302,84,NULL,NULL),(77,'non',306,47,NULL,NULL),(78,'magna,',432,61,NULL,NULL),(79,'quis diam luctus lobortis. Class',415,94,NULL,NULL),(80,'interdum ligula eu enim. Etiam imperdiet dictum',397,99,NULL,NULL),(81,'montes, nascetur ridiculus mus.',391,44,NULL,NULL),(82,'turpis nec',363,20,NULL,NULL),(83,'sem mollis dui,',352,52,NULL,NULL),(84,'mauris, aliquam',437,53,NULL,NULL),(85,'mollis. Integer tincidunt aliquam arcu. Aliquam',326,76,NULL,NULL),(86,'egestas ligula. Nullam feugiat placerat velit. Quisque varius.',423,4,NULL,NULL),(87,'a, enim. Suspendisse aliquet, sem ut cursus luctus,',329,83,NULL,NULL),(88,'nulla. In tincidunt congue turpis. In condimentum. Donec',321,94,NULL,NULL),(89,'Nullam velit dui,',273,45,NULL,NULL),(90,'ac sem ut dolor dapibus',489,43,NULL,NULL),(91,'arcu. Vestibulum ante ipsum primis in faucibus',365,45,NULL,NULL),(92,'Nulla eget metus eu',276,94,NULL,NULL),(93,'justo',325,99,NULL,NULL),(94,'diam. Proin dolor. Nulla semper tellus id nunc interdum',459,19,NULL,NULL),(95,'feugiat tellus lorem eu metus. In lorem. Donec',495,29,NULL,NULL),(96,'id ante dictum cursus. Nunc',356,46,NULL,NULL),(97,'velit. Cras',444,66,NULL,NULL),(98,'adipiscing. Mauris molestie pharetra nibh.',517,95,NULL,NULL),(99,'faucibus id, libero. Donec consectetuer mauris id sapien. Cras',417,91,NULL,NULL),(100,'convallis in,',455,47,NULL,NULL),(101,'Mauris nulla. Integer urna. Vivamus molestie',406,11,NULL,NULL),(102,'Morbi non sapien molestie orci tincidunt adipiscing.',377,82,NULL,NULL),(103,'vestibulum, neque sed dictum',508,20,NULL,NULL),(104,'dui. Fusce',167,1,NULL,NULL),(105,'vestibulum,',141,6,NULL,NULL),(106,'magna tellus',109,NULL,1,NULL),(107,'egestas. Fusce aliquet',285,5,NULL,NULL),(108,'a sollicitudin orci',135,7,NULL,NULL),(109,'sollicitudin',189,4,NULL,NULL),(110,'enim. Mauris quis',121,8,NULL,NULL),(111,'urna. Nunc',313,3,NULL,NULL),(112,'quis, tristique',120,4,NULL,NULL),(113,'enim. Suspendisse',131,10,NULL,NULL),(114,'Cras eget',152,9,NULL,NULL),(115,'eget',145,1,NULL,NULL),(116,'vitae erat',150,9,NULL,NULL),(117,'mauris sapien, cursus',251,6,NULL,NULL),(118,'volutpat.',260,7,NULL,NULL),(119,'Curabitur',238,5,NULL,NULL),(120,'euismod',124,9,NULL,NULL),(121,'non magna. Nam',234,2,NULL,NULL),(122,'a mi',115,7,NULL,NULL),(123,'lobortis quis,',218,7,NULL,NULL),(124,'lorem, auctor quis,',306,5,NULL,NULL),(125,'Cras interdum. Nunc',135,10,NULL,NULL),(126,'quam',209,4,NULL,NULL),(127,'iaculis',260,7,NULL,NULL),(128,'et nunc.',126,2,NULL,NULL),(129,'mauris, rhoncus id,',278,9,NULL,NULL),(130,'cursus. Nunc',234,4,NULL,NULL),(131,'eu neque pellentesque',264,6,NULL,NULL),(132,'posuere at, velit.',197,1,NULL,NULL),(133,'feugiat',174,10,NULL,NULL),(134,'placerat, orci lacus',117,3,NULL,NULL),(135,'lectus',160,7,NULL,NULL),(136,'mi. Duis risus',282,4,NULL,NULL),(137,'et magnis',211,4,NULL,NULL),(138,'Quisque nonummy',191,10,NULL,NULL),(139,'Suspendisse',198,6,NULL,NULL),(140,'sem. Pellentesque ut',92,4,NULL,NULL),(141,'odio, auctor',105,NULL,1,NULL),(142,'inceptos hymenaeos. Mauris',306,3,NULL,NULL),(143,'risus a ultricies',212,8,NULL,NULL),(144,'tellus. Aenean',146,4,NULL,NULL),(145,'luctus',262,5,NULL,NULL),(146,'Donec est mauris,',161,7,NULL,NULL),(147,'varius. Nam porttitor',191,1,NULL,NULL),(148,'venenatis vel, faucibus',197,9,NULL,NULL),(149,'elit,',297,5,NULL,NULL),(150,'risus. In',299,9,NULL,NULL),(151,'ipsum primis in',306,5,NULL,NULL),(152,'sit amet',101,NULL,1,NULL),(153,'augue. Sed',117,8,NULL,NULL),(154,'nisi nibh lacinia',282,3,NULL,NULL),(155,'Morbi',121,8,NULL,NULL),(156,'blandit',251,9,NULL,NULL),(157,'velit. Quisque varius.',240,4,NULL,NULL),(158,'natoque penatibus',243,1,NULL,NULL),(159,'dapibus',304,8,NULL,NULL),(160,'Nulla semper tellus',97,8,NULL,NULL),(161,'placerat velit.',134,6,NULL,NULL),(162,'et magnis',202,3,NULL,NULL),(163,'eget',142,8,NULL,NULL),(164,'at arcu. Vestibulum',272,2,NULL,NULL),(165,'nec, eleifend',214,2,NULL,NULL),(166,'In mi pede,',222,1,NULL,NULL),(167,'molestie orci',180,10,NULL,NULL),(168,'purus ac',127,1,NULL,NULL),(169,'ornare placerat,',307,8,NULL,NULL),(170,'luctus sit amet,',229,3,NULL,NULL),(171,'ut,',183,6,NULL,NULL),(172,'rutrum urna,',242,6,NULL,NULL),(173,'arcu.',107,NULL,2,NULL),(174,'penatibus',112,NULL,2,NULL),(175,'elit, dictum',163,1,NULL,NULL),(176,'dapibus rutrum,',233,1,NULL,NULL),(177,'vitae',172,1,NULL,NULL),(178,'tincidunt adipiscing.',252,8,NULL,NULL),(179,'facilisis, magna tellus',285,3,NULL,NULL),(180,'Nunc ut',278,10,NULL,NULL),(181,'condimentum. Donec at',229,10,NULL,NULL),(182,'ac tellus.',305,9,NULL,NULL),(183,'metus facilisis',251,9,NULL,NULL),(184,'pede. Cras vulputate',307,5,NULL,NULL),(185,'tristique',312,10,NULL,NULL),(186,'accumsan convallis, ante',96,5,NULL,NULL),(187,'odio tristique pharetra.',176,7,NULL,NULL),(188,'vehicula aliquet',314,2,NULL,NULL),(189,'arcu',207,8,NULL,NULL),(190,'nulla ante, iaculis',244,2,NULL,NULL),(191,'aliquam',108,NULL,3,NULL),(192,'nisi',152,3,NULL,NULL),(193,'ornare tortor',287,2,NULL,NULL),(194,'nec enim. Nunc',260,3,NULL,NULL),(195,'et',96,2,NULL,NULL),(196,'Aliquam rutrum',121,3,NULL,NULL),(197,'Cras',108,NULL,6,NULL),(198,'gravida non,',93,9,NULL,NULL),(199,'Fusce aliquam,',213,5,NULL,NULL),(200,'Donec egestas. Duis',214,4,NULL,NULL),(201,'litora torquent per',297,5,NULL,NULL),(202,'egestas',154,1,NULL,NULL),(203,'mauris ipsum',218,6,NULL,NULL),(204,'risus.',209,10,NULL,NULL),(205,'enim diam vel',265,8,NULL,NULL),(206,'Etiam vestibulum massa',161,10,NULL,NULL),(207,'et netus',282,5,NULL,NULL),(208,'imperdiet,',191,9,NULL,NULL),(209,'id, mollis nec,',292,3,NULL,NULL),(210,'enim',151,1,NULL,NULL),(211,'est. Mauris',166,8,NULL,NULL),(212,'Donec sollicitudin',101,NULL,NULL,NULL),(213,'laoreet',270,7,NULL,NULL),(214,'non quam. Pellentesque',232,3,NULL,NULL),(215,'vestibulum.',119,4,NULL,NULL),(216,'vestibulum. Mauris magna.',292,5,NULL,NULL),(217,'nulla. Donec',169,10,NULL,NULL),(218,'consequat,',215,3,NULL,NULL),(219,'volutpat. Nulla dignissim.',139,3,NULL,NULL),(220,'Duis elementum,',301,5,NULL,NULL),(221,'blandit.',158,5,NULL,NULL),(222,'vestibulum lorem, sit',116,4,NULL,NULL),(223,'Nullam',259,4,NULL,NULL),(224,'Cras dolor',216,5,NULL,NULL),(225,'libero lacus,',220,8,NULL,NULL),(226,'parturient montes, nascetur',107,NULL,8,NULL),(227,'accumsan convallis,',107,NULL,9,NULL),(228,'accumsan laoreet',249,2,NULL,NULL),(229,'Mauris nulla. Integer',212,1,NULL,NULL),(230,'sociis natoque penatibus',130,8,NULL,NULL),(231,'fringilla mi lacinia',186,8,NULL,NULL),(232,'ac',274,7,NULL,NULL),(233,'neque. In',102,NULL,5,NULL),(234,'metus eu erat',261,8,NULL,NULL),(235,'vestibulum nec,',235,6,NULL,NULL),(236,'non, vestibulum nec,',299,9,NULL,NULL),(237,'rutrum.',235,6,NULL,NULL),(238,'facilisis facilisis,',286,6,NULL,NULL),(239,'sociis natoque penatibus',206,10,NULL,NULL),(240,'dolor',272,5,NULL,NULL),(241,'Nulla',286,1,NULL,NULL),(242,'Aenean massa.',314,1,NULL,NULL),(243,'nec, malesuada',93,4,NULL,NULL),(244,'non leo. Vivamus',101,NULL,5,NULL),(245,'dolor egestas',127,7,NULL,NULL),(246,'et magnis dis',282,3,NULL,NULL),(247,'Phasellus in',188,1,NULL,NULL),(248,'Duis',102,NULL,NULL,NULL),(249,'neque non',300,8,NULL,NULL),(250,'tempor arcu. Vestibulum',134,5,NULL,NULL),(251,'ipsum',108,NULL,55,NULL),(252,'id, mollis nec,',285,3,NULL,NULL),(253,'congue a, aliquet',217,10,NULL,NULL),(254,'accumsan neque',265,1,NULL,NULL),(255,'ipsum',250,5,NULL,NULL),(256,'malesuada fames',228,4,NULL,NULL),(257,'Fusce',302,7,NULL,NULL),(258,'mi felis, adipiscing',235,9,NULL,NULL),(259,'rutrum. Fusce dolor',199,7,NULL,NULL),(260,'penatibus',270,9,NULL,NULL),(261,'tortor. Integer aliquam',206,8,NULL,NULL),(262,'aliquam iaculis, lacus',215,6,NULL,NULL),(263,'rutrum non, hendrerit',157,8,NULL,NULL),(264,'tristique senectus',97,8,NULL,NULL),(265,'ligula elit,',302,3,NULL,NULL),(266,'vehicula',138,7,NULL,NULL),(267,'sodales at, velit.',184,8,NULL,NULL),(268,'ultrices posuere',108,NULL,NULL,NULL),(269,'at,',185,7,NULL,NULL),(270,'tellus id',285,3,NULL,NULL),(271,'nulla. Cras',144,10,NULL,NULL),(272,'et, euismod',203,4,NULL,NULL),(273,'Cras eu',269,10,NULL,NULL),(274,'scelerisque',191,6,NULL,NULL),(275,'ultrices posuere',107,NULL,5,NULL),(276,'arcu ac orci.',306,1,NULL,NULL),(277,'tellus.',289,4,NULL,NULL),(278,'nunc est, mollis',109,NULL,5,NULL),(279,'neque',180,8,NULL,NULL),(280,'In tincidunt',306,2,NULL,NULL),(281,'risus.',101,NULL,55,NULL),(282,'eu dui. Cum',159,5,NULL,NULL),(283,'dui,',264,3,NULL,NULL),(284,'sit amet diam',279,8,NULL,NULL),(285,'eleifend vitae, erat.',193,6,NULL,NULL),(286,'sapien imperdiet',244,6,NULL,NULL),(287,'auctor',261,4,NULL,NULL),(288,'Donec sollicitudin adipiscing',136,7,NULL,NULL),(289,'Nam ligula',131,9,NULL,NULL),(290,'Lorem ipsum dolor',142,10,NULL,NULL),(291,'sit',194,3,NULL,NULL),(292,'aliquam, enim',112,NULL,NULL,NULL),(293,'tortor, dictum',165,6,NULL,NULL),(294,'Donec',311,2,NULL,NULL),(295,'massa',214,7,NULL,NULL),(296,'at augue',178,5,NULL,NULL),(297,'aliquam',96,10,NULL,NULL),(298,'purus',253,9,NULL,NULL),(299,'facilisi. Sed',118,4,NULL,NULL),(300,'non quam. Pellentesque',280,6,NULL,NULL),(301,'Nulla',244,7,NULL,NULL),(302,'dolor',240,1,NULL,NULL),(303,'tellus justo sit',120,1,NULL,NULL),(304,'Integer tincidunt',272,4,NULL,NULL),(305,'et libero.',119,7,NULL,NULL),(306,'metus. Aenean sed',264,6,NULL,NULL),(307,'Cras vulputate velit',272,8,NULL,NULL),(308,'posuere vulputate,',168,1,NULL,NULL),(309,'tortor. Integer',264,2,NULL,NULL),(310,'Suspendisse sagittis.',282,6,NULL,NULL),(311,'at sem',282,6,NULL,NULL),(312,'cursus',184,3,NULL,NULL),(313,'leo, in',189,6,NULL,NULL),(314,'scelerisque sed,',124,7,NULL,NULL),(315,'nulla magna,',132,3,NULL,NULL),(316,'consequat auctor, nunc',264,5,NULL,NULL),(317,'felis. Nulla tempor',159,7,NULL,NULL),(318,'malesuada fames ac',310,1,NULL,NULL),(319,'mauris, rhoncus',290,8,NULL,NULL),(320,'ac mattis ornare,',123,9,NULL,NULL),(321,'justo sit amet',302,10,NULL,NULL),(322,'Donec',113,NULL,5,NULL),(323,'nisl.',137,5,NULL,NULL),(324,'elit, dictum',115,2,NULL,NULL),(325,'scelerisque',105,NULL,NULL,NULL),(326,'nec tellus. Nunc',184,8,NULL,NULL),(327,'dignissim tempor arcu.',142,1,NULL,NULL),(328,'lorem,',303,1,NULL,NULL),(329,'ante,',281,7,NULL,NULL),(330,'nunc interdum feugiat.',115,6,NULL,NULL),(331,'ipsum primis in',209,7,NULL,NULL),(332,'nascetur',156,8,NULL,NULL),(333,'dolor. Nulla semper',237,6,NULL,NULL),(334,'velit eget',229,3,NULL,NULL),(335,'sodales. Mauris blandit',240,1,NULL,NULL),(336,'a neque.',246,10,NULL,NULL),(337,'lectus ante dictum',303,6,NULL,NULL),(338,'inceptos',137,1,NULL,NULL),(339,'non, lo',199,3,NULL,NULL),(340,'interdum. Nunc',280,1,NULL,NULL),(341,'tristique neque',253,9,NULL,NULL),(342,'nonummy',117,4,NULL,NULL),(343,'Curabitur',297,10,NULL,NULL),(344,'semper',184,5,NULL,NULL),(345,'at',159,1,NULL,NULL),(346,'non',94,10,NULL,NULL),(347,'viverra. Donec',224,8,NULL,NULL),(348,'consequat,',242,2,NULL,NULL),(349,'luctus',273,7,NULL,NULL),(350,'Curabitur massa. Vestibulum',196,10,NULL,NULL),(351,'Nulla',228,1,NULL,NULL),(352,'ante lectus',119,4,NULL,NULL),(353,'non sapien',256,2,NULL,NULL),(354,'eu',160,4,NULL,NULL),(355,'elit',259,1,NULL,NULL),(357,'sodales at, velit.',155,1,NULL,NULL),(358,'euismod enim.',234,2,NULL,NULL),(359,'purus. Nullam scelerisque',220,10,NULL,NULL),(360,'In',180,5,NULL,NULL),(361,'semper egestas, urna',243,7,NULL,NULL),(362,'Proin velit.',218,3,NULL,NULL),(363,'sed tortor. Integer',111,NULL,NULL,NULL),(364,'Proin',107,1,NULL,NULL),(365,'orci,',149,7,NULL,NULL),(366,'cursus. Nunc mauris',177,4,NULL,NULL),(367,'cursus',159,7,NULL,NULL),(368,'velit in',251,4,NULL,NULL),(369,'nulla vulputate dui,',220,4,NULL,NULL),(370,'leo. Cras',231,7,NULL,NULL),(371,'amet,',120,5,NULL,NULL),(372,'ullamcorper viverra. Maecenas',107,NULL,11,NULL),(373,'magna.',283,2,NULL,NULL),(374,'Fusce feugiat. Lorem',137,3,NULL,NULL),(375,'pharetra sed,',175,6,NULL,NULL),(376,'ipsum porta',116,3,NULL,NULL),(377,'netus et',196,7,NULL,NULL),(378,'Donec non justo.',212,1,NULL,NULL),(379,'justo sit amet',297,4,NULL,NULL),(380,'quam a',230,7,NULL,NULL),(381,'blandit enim',271,2,NULL,NULL),(382,'aptent taciti',155,5,NULL,NULL),(383,'tincidunt,',180,9,NULL,NULL),(384,'et magnis dis',162,2,NULL,NULL),(385,'dolor,',239,1,NULL,NULL),(386,'enim non',237,5,NULL,NULL),(387,'pellentesque, tellus sem',131,6,NULL,NULL),(388,'feugiat nec, diam.',175,4,NULL,NULL),(389,'luctus',251,9,NULL,NULL),(390,'dictum ultricies ligula.',297,10,NULL,NULL),(391,'arcu vel',219,2,NULL,NULL),(392,'tellus non',279,10,NULL,NULL),(393,'nisi',146,7,NULL,NULL),(394,'nec, diam.',211,4,NULL,NULL),(395,'neque pellentesque massa',305,1,NULL,NULL),(396,'urna justo faucibus',112,NULL,NULL,NULL),(397,'ipsum',174,8,NULL,NULL),(398,'dapibus id,',281,5,NULL,NULL),(399,'pharetra sed, hendrerit',170,6,NULL,NULL),(400,'dolor, tempus',106,NULL,NULL,NULL),(401,'nisi. Mauris nulla.',278,6,NULL,NULL),(402,'felis orci, adipiscing',185,6,NULL,NULL),(403,'diam vel arcu.',254,4,NULL,NULL),(404,'dager eg tra',213,3,NULL,NULL);
/*!40000 ALTER TABLE `lib` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `lib_trk_plays`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lib_trk_plays` (
  `row_id` int(11) NOT NULL AUTO_INCREMENT,
  `trk_id` int(11) DEFAULT NULL,
  `plays` int(11) DEFAULT NULL,
  `last_play` datetime DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lib_trk_plays`
--

LOCK TABLES `lib_trk_plays` WRITE;
/*!40000 ALTER TABLE `lib_trk_plays` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `lib_trk_plays` VALUES (1,1,23,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `lib_trk_plays` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `list`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list` (
  `list_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list`
--

LOCK TABLES `list` WRITE;
/*!40000 ALTER TABLE `list` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `list` VALUES (1,'test list'),(2,'another list'),(3,'april 16');
/*!40000 ALTER TABLE `list` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `list_tracks`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_tracks` (
  `row_id` int(11) NOT NULL AUTO_INCREMENT,
  `trk_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  PRIMARY KEY (`row_id`),
  KEY `fk_list_id_idx` (`list_id`),
  CONSTRAINT `fk_TBLlist_list_id` FOREIGN KEY (`list_id`) REFERENCES `list` (`list_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_tracks`
--

LOCK TABLES `list_tracks` WRITE;
/*!40000 ALTER TABLE `list_tracks` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `list_tracks` VALUES (1,1,2),(2,2,2),(3,3,2);
/*!40000 ALTER TABLE `list_tracks` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `live_tracks`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_tracks` (
  `live_id` int(11) NOT NULL AUTO_INCREMENT,
  `trk_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`live_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_tracks`
--

LOCK TABLES `live_tracks` WRITE;
/*!40000 ALTER TABLE `live_tracks` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `live_tracks` VALUES (1,1,NULL),(2,2,NULL),(3,3,NULL),(4,3,NULL),(5,3,NULL),(6,2,NULL),(7,1,NULL);
/*!40000 ALTER TABLE `live_tracks` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

--
-- Table structure for table `usr`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usr` (
  `usr_id` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(45) NOT NULL,
  PRIMARY KEY (`usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usr`
--

LOCK TABLES `usr` WRITE;
/*!40000 ALTER TABLE `usr` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `usr` VALUES (1,'edm');
/*!40000 ALTER TABLE `usr` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;



--
-- Playlist actions, adding, removing, adding &removing tracks
--

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `pls_action`(pv_action VARCHAR(10), pi_list_id INT, pi_usr INT, pi_trk_id INT, pv_txtarg varchar(255))
BEGIN

	DECLARE li_counter int;
	SET li_counter = 0;

    IF (pv_action = 'add_trk') THEN

			 ###CHECK USER OWNS LIST###
			select count(*) into li_counter from list where list_id = pi_list_id and usr_id = pi_usr;
			IF (li_counter < 1) THEN
				select 'list not found' as errormsg;
			END IF;

             insert into list_tracks (trk_id, list_id) values (pi_trk_id, pi_list_id);
  
	ELSEIF (pv_action = 'rm_trk') THEN

			 ###CHECK USER OWNS LIST###
			select count(*) into li_counter from list where list_id = pi_list_id and usr_id = pi_usr;
			IF (li_counter < 1) THEN
				select 'list not found' as errormsg;
			END IF;

			delete a
			from list_tracks a
			inner join list b on a.list_id = b.list_id
			where a.trk_id = pi_trk_id 
			and a.list_id = pi_list_id
			and b.usr.id = pi_usr;

	ELSEIF (pv_action = 'add_lst') THEN

             insert into list (name, user_id) values (pv_txtarg, pi_usr);

	ELSEIF (pv_action = 'rm_lst') THEN

			 ###CHECK USER OWNS LIST###
			select count(*) into li_counter from list where list_id = pi_list_id and usr_id = pi_usr;
			IF (li_counter < 1) THEN
				select 'list not found' as errormsg;
			END IF;

             delete from list where list_id = pi_list_id;

	ELSE 
             select 0 as test;

    END IF;



END$$
DELIMITER ;





-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: inline subselect of various artist related parameters, counts of tracks, etc
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE DEFINER=`root`@`localhost` FUNCTION `art_detail`(pi_art_id INT, detail_type VARCHAR(19)) RETURNS int(11)
BEGIN

    DECLARE li_output int;

    SET li_output = 0;

    IF (detail_type = 'misc_trk') THEN

            SELECT count(*) INTO li_output FROM lib WHERE album is null and art_id = pi_art_id;
  
	 ELSEIF (detail_type = 'cds') THEN

             SELECT count(*) INTO li_output FROM alb WHERE artist_id = pi_art_id;

	ELSE 
			SELECT 0 into li_output;

    END IF;

    RETURN li_output;

RETURN 1;
END






-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: inline subselct on userID, returns plays of a certain track ID
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE DEFINER=`root`@`localhost` FUNCTION `trk_user_plays`(pi_trk_id int, pi_user_id int) RETURNS int(11)
BEGIN

    DECLARE li_plays int;

    SET li_plays = 0;

    IF (select count(*) from usr where usr_id = pi_user_id) > 0

        THEN
            SELECT plays INTO li_plays FROM lib_trk_plays WHERE trk_id = pi_trk_id;

    END IF;

    RETURN li_plays;

END










/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Thu, 09 Jun 2016 15:24:31 +0200
