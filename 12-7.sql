CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `project_attraction`
--

DROP TABLE IF EXISTS `project_attraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_attraction` (
  `id_project_pa` int NOT NULL,
  `id_attraction_pa` int NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  KEY `fk_tbl_project_has_tbl_attraction_tbl_attraction1_idx` (`id_attraction_pa`),
  KEY `fk_tbl_project_has_tbl_attraction_tbl_project1_idx` (`id_project_pa`),
  CONSTRAINT `fk_tbl_project_has_tbl_attraction_tbl_attraction1` FOREIGN KEY (`id_attraction_pa`) REFERENCES `tbl_attraction` (`id_attraction`),
  CONSTRAINT `fk_tbl_project_has_tbl_attraction_tbl_project1` FOREIGN KEY (`id_project_pa`) REFERENCES `tbl_project` (`id_project`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_attraction`
--

LOCK TABLES `project_attraction` WRITE;
/*!40000 ALTER TABLE `project_attraction` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_attraction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_admin_password`
--

DROP TABLE IF EXISTS `tbl_admin_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_admin_password` (
  `id_administrator` int NOT NULL,
  `hashed_password` varchar(45) NOT NULL,
  PRIMARY KEY (`id_administrator`),
  CONSTRAINT `id_administrator` FOREIGN KEY (`id_administrator`) REFERENCES `tbl_administrator` (`id_administrator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_admin_password`
--

LOCK TABLES `tbl_admin_password` WRITE;
/*!40000 ALTER TABLE `tbl_admin_password` DISABLE KEYS */;
INSERT INTO `tbl_admin_password` VALUES (1,'123456');
/*!40000 ALTER TABLE `tbl_admin_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_administrator`
--

DROP TABLE IF EXISTS `tbl_administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_administrator` (
  `id_administrator` int NOT NULL AUTO_INCREMENT,
  `account` varchar(45) NOT NULL,
  `pswd_salt` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_administrator`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_administrator`
--

LOCK TABLES `tbl_administrator` WRITE;
/*!40000 ALTER TABLE `tbl_administrator` DISABLE KEYS */;
INSERT INTO `tbl_administrator` VALUES (1,'dolor.sit.amet@hotmail.net','3'),(2,'elit.aliquam.auctor@aol.net','3'),(3,'ipsum@protonmail.org','3'),(4,'tempor@hotmail.com','3'),(5,'euismod.est@google.couk','3');
/*!40000 ALTER TABLE `tbl_administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_attraction`
--

DROP TABLE IF EXISTS `tbl_attraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_attraction` (
  `id_attraction` int NOT NULL AUTO_INCREMENT,
  `id_city_a` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `detail` varchar(2000) NOT NULL,
  PRIMARY KEY (`id_attraction`),
  KEY `id_city_idx_attraction` (`id_city_a`),
  CONSTRAINT `id_city_attraction` FOREIGN KEY (`id_city_a`) REFERENCES `tbl_city` (`id_city`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_attraction`
--

LOCK TABLES `tbl_attraction` WRITE;
/*!40000 ALTER TABLE `tbl_attraction` DISABLE KEYS */;
INSERT INTO `tbl_attraction` VALUES (1,1,'101','台北有名的購物景點'),(2,1,'國父紀念館','台北有名的歷史景點'),(3,1,'象山','台北有名的運動地方'),(4,2,'烏石港','宜蘭有名的運動地方'),(5,2,'龜山島','宜蘭有名的地理景觀'),(6,2,'蘭陽博物館','宜蘭有名的歷史景點'),(7,3,'85大樓','高雄有名的歷史景點'),(8,3,'愛河','高雄有名的歷史景點'),(9,3,'駁二','高雄有名的購物景點'),(10,4,'安平古堡','台南有名的歷史景點'),(11,4,'奇美博物館','台南有名的歷史景點'),(12,4,'漁光島','台南有名的地理景觀'),(13,5,'跨海大橋','澎湖有名的地理景觀'),(14,5,'天后宮','澎湖有名的歷史景點'),(15,5,'雙心石滬','澎湖有名的地理景觀');
/*!40000 ALTER TABLE `tbl_attraction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_city`
--

DROP TABLE IF EXISTS `tbl_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_city` (
  `id_city` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id_city`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_city`
--

LOCK TABLES `tbl_city` WRITE;
/*!40000 ALTER TABLE `tbl_city` DISABLE KEYS */;
INSERT INTO `tbl_city` VALUES (1,'Taipei'),(2,'Yilan'),(3,'Kaohsiung'),(4,'Tainan'),(5,'Penghu');
/*!40000 ALTER TABLE `tbl_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_member` (
  `id_member` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `gmail` varchar(45) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id_member`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_member`
--

LOCK TABLES `tbl_member` WRITE;
/*!40000 ALTER TABLE `tbl_member` DISABLE KEYS */;
INSERT INTO `tbl_member` VALUES (1,'Morris','morriskuo0314@gmail.com','2022-12-04 00:00:00'),(2,'Roger','eric07241527@gmail.com','2022-12-04 00:00:00'),(3,'Josh','joshua.hsieh041@gmail.com','2022-12-04 00:00:00'),(4,'Octavius','nulla.semper.tellus@google.org','2022-01-05 00:00:00'),(5,'Imani','proin.non@icloud.couk','2022-01-25 00:00:00'),(6,'Quinn','nam@protonmail.couk','2022-04-06 00:00:00'),(7,'Hadassah','tincidunt.nibh.phasellus@google.com','2023-12-03 00:00:00'),(8,'Carly','convallis.erat@google.com','2023-04-03 00:00:00'),(9,'Sacha','consequat.enim@google.couk','2023-01-20 00:00:00'),(10,'Bell','sapien.gravida@outlook.com','2023-11-24 00:00:00'),(11,'Yuri','aliquet.lobortis@hotmail.com','2022-02-13 00:00:00'),(12,'Rae','pellentesque.eget@outlook.edu','2022-04-12 00:00:00'),(13,'Amanda','orci.consectetuer@google.org','2022-01-07 00:00:00'),(14,'Ainsley','dui@yahoo.org','2022-08-07 00:00:00'),(15,'Harding','ultricies.ornare@google.ca','2021-12-12 00:00:00'),(16,'Idola','egestas.blandit@hotmail.com','2023-04-13 00:00:00'),(17,'Paul','tincidunt@icloud.couk','2022-07-09 00:00:00'),(18,'Quintessa','mauris.integer@protonmail.com','2023-05-24 00:00:00'),(19,'Amelia','commodo@icloud.com','2023-02-03 00:00:00'),(20,'Arthur','dignissim@hotmail.couk','2023-09-30 00:00:00'),(21,'Hayes','magnis@yahoo.org','2023-08-03 00:00:00'),(22,'Quemby','auctor.velit.eget@protonmail.ca','2022-10-15 00:00:00'),(23,'Quamar','mattis.integer.eu@outlook.edu','2022-02-19 00:00:00'),(24,'Arden','orci@yahoo.net','2023-10-03 00:00:00'),(25,'Ferris','a.feugiat@outlook.ca','2023-10-26 00:00:00'),(26,'123','789','2022-12-06 17:33:59');
/*!40000 ALTER TABLE `tbl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_member_password`
--

DROP TABLE IF EXISTS `tbl_member_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_member_password` (
  `id_member` int NOT NULL,
  `normal_pswd` int NOT NULL,
  PRIMARY KEY (`id_member`),
  KEY `id_Member_idx` (`id_member`),
  CONSTRAINT `id_Member` FOREIGN KEY (`id_member`) REFERENCES `tbl_member` (`id_member`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_member_password`
--

LOCK TABLES `tbl_member_password` WRITE;
/*!40000 ALTER TABLE `tbl_member_password` DISABLE KEYS */;
INSERT INTO `tbl_member_password` VALUES (1,123654),(26,456);
/*!40000 ALTER TABLE `tbl_member_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_picture`
--

DROP TABLE IF EXISTS `tbl_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_picture` (
  `id_picture` int NOT NULL AUTO_INCREMENT,
  `id_attrraction_pic` int NOT NULL,
  `picture` varchar(45) NOT NULL,
  PRIMARY KEY (`id_picture`),
  KEY `id_attrraction_idx_pic` (`id_attrraction_pic`),
  CONSTRAINT `id_attrraction_pic` FOREIGN KEY (`id_attrraction_pic`) REFERENCES `tbl_attraction` (`id_attraction`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_picture`
--

LOCK TABLES `tbl_picture` WRITE;
/*!40000 ALTER TABLE `tbl_picture` DISABLE KEYS */;
INSERT INTO `tbl_picture` VALUES (1,5,'龜山島'),(2,8,'愛河'),(3,10,'安平古堡'),(4,1,'101'),(5,13,'跨海大橋'),(6,6,'蘭陽博物館');
/*!40000 ALTER TABLE `tbl_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_project`
--

DROP TABLE IF EXISTS `tbl_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_project` (
  `id_project` int NOT NULL AUTO_INCREMENT,
  `id_member_project` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `create_time` datetime NOT NULL,
  `modify_time` datetime DEFAULT NULL,
  `statrt_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  PRIMARY KEY (`id_project`),
  KEY `id_member_idx_project` (`id_member_project`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_project`
--

LOCK TABLES `tbl_project` WRITE;
/*!40000 ALTER TABLE `tbl_project` DISABLE KEYS */;
INSERT INTO `tbl_project` VALUES (1,2,'高雄一日遊','2022-12-04 00:00:00','2022-12-08 00:00:00','2023-01-01 00:00:00','2023-01-01 00:00:00'),(2,3,'澎湖兩日遊','2022-12-08 00:00:00','2022-12-09 00:00:00','2023-01-05 00:00:00','2023-01-07 00:00:00'),(5,3,'123','2022-12-06 15:17:36','2022-12-06 15:17:36','2023-01-02 00:00:00','2023-01-03 00:00:00'),(6,2,'321','2022-12-06 15:26:54','2022-12-06 15:26:54','2023-05-06 00:00:00','2023-06-07 00:00:00'),(7,3,'321','2022-12-06 15:30:52','2022-12-06 15:30:52','2023-01-02 00:00:00','2023-05-06 00:00:00'),(8,3,'523','2022-12-06 15:39:13','2022-12-06 15:39:13','2023-01-02 00:00:00','2023-03-05 00:00:00'),(9,3,'21','2022-12-06 15:46:02','2022-12-06 15:46:02','2023-01-02 00:00:00','2023-01-03 00:00:00'),(10,2,'123','2022-12-06 15:46:49','2022-12-06 15:46:49','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `tbl_project` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-07  2:23:24
