CREATE DATABASE  IF NOT EXISTS `jp_snake` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jp_snake`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: jp_snake
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `jp_board`
--

DROP TABLE IF EXISTS `jp_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jp_board` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `ID` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `putdate` date DEFAULT NULL,
  `comment` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jp_board`
--

LOCK TABLES `jp_board` WRITE;
/*!40000 ALTER TABLE `jp_board` DISABLE KEYS */;
INSERT INTO `jp_board` VALUES (1,3,'多多','2022-06-16','超級好吃：))讚'),(2,22,'多多','2022-06-16','吃薯片會胖Q 但很好吃：))'),(3,4,'多多','2022-06-16','好好吃ㄚㄚㄚㄚㄚㄚ'),(4,9,'多多','2022-06-16','超好吃der：)擠霸分讚讚');
/*!40000 ALTER TABLE `jp_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jp_cart`
--

DROP TABLE IF EXISTS `jp_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jp_cart` (
  `ID` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jp_cart`
--

LOCK TABLES `jp_cart` WRITE;
/*!40000 ALTER TABLE `jp_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `jp_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jp_counter`
--

DROP TABLE IF EXISTS `jp_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jp_counter` (
  `counter` varchar(45) NOT NULL,
  PRIMARY KEY (`counter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jp_counter`
--

LOCK TABLES `jp_counter` WRITE;
/*!40000 ALTER TABLE `jp_counter` DISABLE KEYS */;
INSERT INTO `jp_counter` VALUES ('10054');
/*!40000 ALTER TABLE `jp_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jp_member`
--

DROP TABLE IF EXISTS `jp_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jp_member` (
  `memberID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `psw` varchar(45) NOT NULL,
  PRIMARY KEY (`memberID`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jp_member`
--

LOCK TABLES `jp_member` WRITE;
/*!40000 ALTER TABLE `jp_member` DISABLE KEYS */;
INSERT INTO `jp_member` VALUES (1,'貝','claire11.chang@gmail.com','0101'),(3,'測試','1234','1234'),(7,'唐唐','shana230','sh123'),(11,'尼尼','001','0011'),(12,'多多魚','0505','0505');
/*!40000 ALTER TABLE `jp_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jp_orders`
--

DROP TABLE IF EXISTS `jp_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jp_orders` (
  `order_email` varchar(45) NOT NULL,
  `ID` int DEFAULT NULL,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jp_orders`
--

LOCK TABLES `jp_orders` WRITE;
/*!40000 ALTER TABLE `jp_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `jp_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jp_ordersdetail`
--

DROP TABLE IF EXISTS `jp_ordersdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jp_ordersdetail` (
  `order_ID` int NOT NULL AUTO_INCREMENT,
  `buyername` varchar(45) NOT NULL,
  `buyerphone` varchar(45) NOT NULL,
  `buyeremail` varchar(45) NOT NULL,
  `buyeraddress` varchar(45) NOT NULL,
  `pay` varchar(45) DEFAULT NULL,
  `user_ID` varchar(45) NOT NULL,
  PRIMARY KEY (`order_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jp_ordersdetail`
--

LOCK TABLES `jp_ordersdetail` WRITE;
/*!40000 ALTER TABLE `jp_ordersdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `jp_ordersdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jp_products`
--

DROP TABLE IF EXISTS `jp_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jp_products` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Shortname` varchar(45) NOT NULL,
  `Fullname` varchar(45) NOT NULL,
  `Jpname` varchar(45) NOT NULL,
  `Price` varchar(45) NOT NULL,
  `Brand` varchar(45) NOT NULL,
  `BrandWebsite` varchar(450) NOT NULL,
  `PlaceOfOrigin` varchar(45) NOT NULL,
  `ShelfLife` varchar(45) NOT NULL,
  `Weight` varchar(45) NOT NULL,
  `Img` varchar(45) NOT NULL,
  `Img1` varchar(45) NOT NULL,
  `Img2` varchar(45) NOT NULL,
  `Img3` varchar(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Inventory` int NOT NULL,
  `comment` int NOT NULL,
  `sold` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jp_products`
--

LOCK TABLES `jp_products` WRITE;
/*!40000 ALTER TABLE `jp_products` DISABLE KEYS */;
INSERT INTO `jp_products` VALUES (1,'Calbee海苔鹽洋芋片','Calbee海苔鹽味薯片','Calbeeポテトチップスのりしお','49','CALBEE','https://www.calbee.co.jp/','香港','9個月','55G/包','assets/img/calbee_nori.jpg','assets/img/calbee_nori1.jpg','assets/img/calbee_nori2.jpg','assets/img/calbee_nori3.jpg','other',500,0,210),(2,'帆船餅乾','北日本帆船餅乾(濃乳巧克力風味)','アルフォートミニチョコレートリッチミルク','49','BOURBON','https://www.bourbon.co.jp/','日本新潟縣','12個月','55G/盒','assets/img/bourbon_milkchoco.jpg','assets/img/bourbon_milkchoco1.jpg','assets/img/bourbon_milkchoco2.jpg','assets/img/bourbon_milkchoco3.jpg','bbn',500,0,320),(3,'檸檬味長條軟糖','北日本檸檬味長條軟糖','フェットチーネグミ　イタリアンレモン味','49','BOURBON','https://www.bourbon.co.jp/','日本新潟縣','9個月','50G/包','assets/img/fettu_lemon.jpg','assets/img/fettu_lemon1.jpg','assets/img/fettu_lemon2.jpg','assets/img/fettu_lemon3.jpg','bbn',500,1,150),(4,'水蜜桃味長條軟糖','北日本水蜜桃味長條軟糖','フェットチーネグミ　イタリアンピーチ味','49','BOURBON','https://www.bourbon.co.jp/','日本新潟縣','9個月','50G/包','assets/img/fettu_peach.jpg','assets/img/fettu_peach1.jpg','assets/img/fettu_peach2.jpg','assets/img/fettu_peach3.jpg','bbn',497,1,181),(5,'葡萄味長條軟糖','北日本葡萄味長條軟糖','フェットチーネグミ　イタリアングレープ味','49','BOURBON','https://www.bourbon.co.jp/','日本新潟縣','9個月','50G/包','assets/img/fettu_grape.jpg','assets/img/fettu_grape1.jpg','assets/img/fettu_grape2.jpg','assets/img/fettu_grape3.jpg','bbn',500,0,230),(6,'樂天小熊餅(巧克力)','樂天小熊餅(巧克力風味)','ロッテコアラのマーチ＜チョコ＞','30','LOTTE','https://www.lotte.co.jp/index.html','泰國','15個月','37G/盒','assets/img/koala_choco.jpg','assets/img/koala_choco1.jpg','assets/img/koala_choco2.jpg','assets/img/koala_choco3.jpg','lt',500,1,200),(7,'樂天小熊餅(濃黑巧)','樂天小熊餅(濃黑巧克力風味)','ロッテコアラのマーチ＜Black＞','30','LOTTE','https://www.lotte.co.jp/index.html','泰國','15個月','37G/盒','assets/img/koala_black.jpg','assets/img/koala_black1.jpg','assets/img/koala_black2.jpg','assets/img/koala_black3.jpg','lt',500,0,190),(8,'樂天小熊餅(草莓)','樂天小熊餅(草莓風味)','ロッテコアラのマーチ＜いちご＞','30','LOTTE','https://www.lotte.co.jp/index.html','泰國','15個月','37G/盒','assets/img/koala_sberry.jpg','assets/img/koala_sberry1.jpg','assets/img/koala_sberry2.jpg','assets/img/koala_sberry3.jpg','lt',500,0,180),(9,'脆心杏仁可可球','LOTTE Almond脆心杏仁可可球','アーモンドチョコレート＜クリスプ＞','78','LOTTE','https://www.lotte.co.jp/index.html','日本琦玉縣','9個月','89G/盒','assets/img/almond_crisp.jpg','assets/img/almond_crisp1.jpg','assets/img/almond_crisp2.jpg','assets/img/almond_crisp3.jpg','lt',499,1,201),(10,'燒鱈魚起司','山榮燒鱈魚起司','山栄味わい焼きチーズ','109','山榮食品','http://www.yamaei.co.jp/ ','日本北海道','10個月','55G/包','assets/img/yamae_cheese.jpg','assets/img/yamae_cheese1.jpg','assets/img/yamae_cheese2.jpg','assets/img/yamae_cheese3.jpg','other',500,0,220),(11,'合味道XO海鮮杯麵','日清合味道XO醬海鮮味杯麵','日清カップヌードル XO醤海鮮味','35','日清食品','https://www.nissin.com/jp/','泰國','8個月','70G/碗','assets/img/nissin_cup.jpg','assets/img/nissin_cup1.jpg','assets/img/nissin_cup2.jpg','assets/img/nissin_cup3.jpg','other',499,1,251),(12,'どん兵衛油豆烏龍','日清どん兵衛油豆腐烏龍麵(碗)','日清どん兵衛きつねうどん','95','日清食品','https://www.nissin.com/jp/','日本山口縣','6個月','95G/碗','assets/img/nissin_don.jpg','assets/img/nissin_don1.jpg','assets/img/nissin_don2.jpg','assets/img/nissin_don3.jpg','other',499,0,201),(13,'Pocky(抹茶)','Pocky百奇抹茶棒','ポッキー　抹茶','29','Glico','https://www.glico.com/jp/#','泰國','12個月','39G/盒','assets/img/pocky_macha.jpg','assets/img/pocky_macha1.jpg','assets/img/pocky_macha2.jpg','assets/img/pocky_macha3.jpg','glc',500,0,130),(14,'Pocky(草莓)','Pocky百奇草莓粒粒巧克力棒','ポッキー　つぶつぶいちご','59','Glico','https://www.glico.com/jp/#','日本琦玉縣','12個月','51G/盒','assets/img/pocky_sberry.jpg','assets/img/pocky_sberry1.jpg','assets/img/pocky_sberry2.jpg','assets/img/pocky_sberry3.jpg','glc',499,0,216),(15,'Pocky(牛奶)','Pocky百奇牛奶餅乾棒','ポッキー　クッキー＆クリーム','30','Glico','https://www.glico.com/jp/#','泰國','12個月','40G/盒','assets/img/pocky_milk.jpg','assets/img/pocky_milk1.jpg','assets/img/pocky_milk2.jpg','assets/img/pocky_milk3.jpg','glc',498,0,197),(16,'Pocky(冬季)','Pocky百奇冬季限定巧克力棒','ポッキー　冬のくちどけ','69','Glico','https://www.glico.com/jp/#','日本兵庫縣','12個月','56G/盒','assets/img/pocky_winter.jpg','assets/img/pocky_winter1.jpg','assets/img/pocky_winter2.jpg','assets/img/pocky_winter3.jpg','glc',500,0,215),(17,'特濃牛奶糖','味覺糖特濃牛奶糖','味覚糖特濃ミルク','55','味覺糖','https://www.uha-mikakuto.co.jp/','日本奈良縣','18個月','67G/包','assets/img/tokunou_milk.jpg','assets/img/tokunou_milk1.jpg','assets/img/tokunou_milk2.jpg','assets/img/tokunou_milk3.jpg','mkt',499,0,226),(18,'特濃牛奶(抹茶)','味覺糖特濃牛奶榶(抹茶味)','味覚糖特濃ミルク抹茶','59','味覺糖','https://www.uha-mikakuto.co.jp/','日本奈良縣','18個月','58G/包','assets/img/tokunou_macha.jpg','assets/img/tokunou_macha1.jpg','assets/img/tokunou_macha2.jpg','assets/img/tokunou_macha3.jpg','mkt',500,0,240),(19,'普超軟糖(水果)','味覺糖普超軟糖(水果味)','ぷっちょ袋フルーツMIX ','79','味覺糖','https://www.uha-mikakuto.co.jp/','日本奈良縣','18個月','90G/包','assets/img/puccho_fruit.jpg','assets/img/puccho_fruit1.jpg','assets/img/puccho_fruit2.jpg','assets/img/puccho_fruit3.jpg','mkt',499,0,201),(20,'手撕起司棒(原味)','雪印北海道100手撕起司棒(原味)','雪印北海道100さけるチーズ プレーン','139','雪印','https://www.meg-snow.com/','日本北海道','188天','50G/兩條','assets/img/snow_plane.jpg','assets/img/snow_plane1.jpg','assets/img/snow_plane2.jpg','assets/img/snow_plane3.jpg','other',499,0,181),(21,'手撕起司棒(煙燻)','雪印北海道100手撕起司棒(煙燻風味)','雪印北海道100さけるスモーク味','139','雪印','https://www.meg-snow.com/','日本北海道','189天','50G/兩條','assets/img/snow_smoke.jpg','assets/img/snow_smoke1.jpg','assets/img/snow_smoke2.jpg','assets/img/snow_smoke3.jpg','other',500,0,210),(22,'湖池屋海苔鹽洋芋片','湖池屋洋芋片(海苔鹽風味)','湖池屋ポテトチップスのり塩','59','湖池屋','https://koike-ya.com/index.html ','日本京都府','180日','60G/包','assets/img/koike_nori.jpg','assets/img/koike_nori1.jpg','assets/img/koike_nori2.jpg','assets/img/koike_nori3.jpg','other',500,1,245),(23,'CHOKITO牛奶糖','巧趣多KT經典牛奶糖-棉花糖','チョキトクラシックミルク','65','CHOKITO','https://www.nestle.com.au/en/brands/chokito','西班牙','36個月','35G/盒','assets/img/chokito_milk.jpg','assets/img/chokito_milk1.jpg','assets/img/chokito_milk2.jpg','assets/img/chokito_milk3.jpg','other',500,0,160),(24,'普超條糖(哈密瓜蘇打)','味覺糖普超條糖(哈密瓜蘇打口味)','ぷっちょメロンソーダ','55','味覺糖','https://www.uha-mikakuto.co.jp/','日本奈良縣','10個月','50G/條','assets/img/puccho_melon.jpg','assets/img/puccho_melon1.jpg','assets/img/puccho_melon2.jpg','assets/img/puccho_melon3.jpg','mkt',500,0,245);
/*!40000 ALTER TABLE `jp_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jp_totalprice`
--

DROP TABLE IF EXISTS `jp_totalprice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jp_totalprice` (
  `totalprice` int DEFAULT NULL,
  `totalprice_ID` int NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `totalprice_ID_UNIQUE` (`totalprice_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jp_totalprice`
--

LOCK TABLES `jp_totalprice` WRITE;
/*!40000 ALTER TABLE `jp_totalprice` DISABLE KEYS */;
/*!40000 ALTER TABLE `jp_totalprice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-16  4:04:12
