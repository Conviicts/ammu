-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: storylife_web
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `Boutiques`
--

DROP TABLE IF EXISTS `Boutiques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Boutiques` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `isPack` int DEFAULT NULL,
  `mbox` int DEFAULT NULL,
  `vehicles_nb` int DEFAULT NULL,
  `specials_vehicles_nb` int DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Reduction` int DEFAULT NULL,
  `Benefits` varchar(255) DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL,
  `Tags` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `vehicle_id` int DEFAULT NULL,
  `nb_ventes` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Boutiques`
--

LOCK TABLES `Boutiques` WRITE;
/*!40000 ALTER TABLE `Boutiques` DISABLE KEYS */;
INSERT INTO `Boutiques` VALUES (1,'Pack Silver',1,1,2,0,'img/pack/silver.png',15,10,'2 voitures au choix,2 caisses mystères,Role Donateur sur notre discord','Pack','Vehicules','2020-09-07 00:08:30','2020-09-07 00:08:30',0,10),(2,'Pack Platine',1,4,2,0,'img/pack/platine.png',30,0,'4 voitures au choix,4 caisses mystères,Role Donateur sur notre discord','Pack','Vehicules,Luxe','2020-09-07 00:08:30','2020-09-07 00:08:30',0,4),(3,'Pack Diamant',1,2,2,2,'img/pack/diamond.png',30,0,'2 voitures au choix,2 voitures spéciales au choix,2 caisses mystères,Role Donateur sur notre discord','Pack','Vehicules,Luxe','2020-09-07 00:08:30','2020-09-07 00:08:30',0,5),(4,'x1 Caisse mystère',0,1,0,0,'img/pack/crate1_x1.png',4,0,'Possibilite d\'avoir de l\'argent en jeu,Possibilite d\'avoir 1 vehicule aléatoire','Caisse','Caisse mystère','2020-09-07 00:08:30','2020-09-07 00:08:30',0,2),(5,'x3 Caisse mystère',0,3,0,0,'img/pack/crate1_x3.png',12,0,'Possibilite d\'avoir de l\'argent en jeu,Possibilite d\'avoir 1 vehicule aléatoire','Caisse','Caisse mystère','2020-09-07 00:08:30','2020-09-07 00:08:30',0,0),(8,'x10 Caisse mystère',0,10,0,0,'img/pack/crate1_x10.png',40,0,'Possibilite d\'avoir de l\'argent en jeu,Possibilite d\'avoir 1 vehicule aléatoire','Caisse','Caisse mystère','2020-09-07 00:08:30','2020-09-07 00:08:30',0,0),(9,'Vehicule \'Rebla\'',0,0,0,0,'img/pack/Rebla.png',29,0,'1 vehicule Rebla','Vehicule','Vehicule','2020-09-07 00:08:30','2020-09-07 00:08:30',20,0),(10,'Vehicule \'Komoda\'',0,0,0,0,'img/pack/Komoda.png',29,0,'1 vehicule Komoda','Vehicule','Vehicule','2020-09-07 00:08:30','2020-09-07 00:08:30',19,0),(11,'Vehicule \'Toros\'',0,0,0,0,'img/pack/Toros.png',12,0,'1 vehicule Toros','Vehicule','Vehicule','2020-09-07 00:08:30','2020-09-07 00:08:30',11,0),(12,'Vehicule \'Osiris\'',0,0,0,0,'img/pack/Osiris.png',12,0,'1 vehicule Osiris','Vehicule','Vehicule','2020-09-07 00:08:30','2020-09-07 00:08:30',12,0),(13,'Vehicule \'Visione\'',0,0,0,0,'img/pack/Visione.png',12,0,'1 vehicule Visione','Vehicule','Vehicule','2020-09-07 00:08:30','2020-09-07 00:08:30',14,0),(14,'Vehicule \'Z190\'',0,0,0,0,'img/pack/Z190.png',12,0,'1 vehicule Z190','Vehicule','Vehicule','2020-09-07 00:08:30','2020-09-07 00:08:30',15,0),(15,'Vehicule \'Banshee\'',0,0,0,0,'img/pack/Banshee.png',12,0,'1 vehicule Banshee','Vehicule','Vehicule','2020-09-07 00:08:30','2020-09-07 00:08:30',16,0),(16,'Vehicule \'SC1\'',0,0,0,0,'img/pack/SC1.png',12,0,'1 vehicule SC1','Vehicule','Vehicule','2020-09-07 00:08:30','2020-09-07 00:08:30',17,0),(17,'Vehicule \'Reaper\'',0,0,0,0,'img/pack/Reaper.png',12,0,'1 vehicule Reaper','Vehicule','Vehicule','2020-09-07 00:08:30','2020-09-07 00:08:30',13,0);
/*!40000 ALTER TABLE `Boutiques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal`
--

DROP TABLE IF EXISTS `paypal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paypal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal`
--

LOCK TABLES `paypal` WRITE;
/*!40000 ALTER TABLE `paypal` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SequelizeMeta`
--

DROP TABLE IF EXISTS `SequelizeMeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SequelizeMeta`
--

LOCK TABLES `SequelizeMeta` WRITE;
/*!40000 ALTER TABLE `SequelizeMeta` DISABLE KEYS */;
INSERT INTO `SequelizeMeta` VALUES ('20200906205414-create-user.js'),('20200906210454-create-user.js'),('20200906220347-create-boutique.js'),('20200906220802-create-boutique.js'),('20200908121956-create-roles.js'),('20200908122555-create-user.js'),('20200908163257-create-boutique.js'),('20200910122041-create-vehicles-logs.js'),('20200910122131-create-vehicles-logs.js');
/*!40000 ALTER TABLE `SequelizeMeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `points` int DEFAULT '0',
  `steamid` varchar(255) DEFAULT NULL,
  `role` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `canPassTest` int unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (11,'contact@convicts.fr','$2a$10$6xihApYY0c/X33Odv3Jdy.Z.vrK045QjmN3H0keGNi.13XdZ47afO',0,'steam:110000104e30e83',5,'2020-10-17 17:53:11','2020-10-17 17:54:25',3);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vehicle_hash`
--

DROP TABLE IF EXISTS `Vehicle_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Vehicle_hash` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vehicle_hash`
--

LOCK TABLES `Vehicle_hash` WRITE;
/*!40000 ALTER TABLE `Vehicle_hash` DISABLE KEYS */;
INSERT INTO `Vehicle_hash` VALUES (1,'Khamelion','544021352'),(2,'Feltzer','-1995326987'),(3,'Ruston','719660200'),(4,'Drafter','686471183'),(5,'Schlagen','-507495760'),(6,'Windsord','1581459400'),(7,'Jester','-1297672541'),(8,'Neon','-1848994066'),(9,'Pariah','867799010'),(10,'Raiden','-1529242755'),(11,'Toros ','-1168952148'),(12,'Osiris ','1987142870'),(13,'Reaper ','234062309'),(14,'Visione ','-998177792'),(15,'Z190 ','838982985'),(16,'Banshee 900R ','633712403'),(17,'SC1 ','1352136073'),(18,'Everon','-1756021720'),(19,'Komoda','-834353991'),(20,'Rebla','83136452'),(21,'SabreTurbo','-1685021548'),(22,'Slamvan','729783779'),(23,'Tulip','1456744817'),(24,'Virgo','-498054846'),(25,'Oracle','1348744438'),(26,'Primo','-1150599089'),(27,'Gauntlet','-1800170043'),(28,'Chino','349605904'),(29,'Dominator','80636076'),(30,'Faction2','-1790546981'),(31,'Moonbeam2','1896491931'),(32,'Vstr','1456336509'),(33,'Outlaw','408825843');
/*!40000 ALTER TABLE `Vehicle_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vehicles_logs`
--

DROP TABLE IF EXISTS `Vehicles_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Vehicles_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `plate` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vehicles_logs`
--

LOCK TABLES `Vehicles_logs` WRITE;
/*!40000 ALTER TABLE `Vehicles_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Vehicles_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whitelist`
--

DROP TABLE IF EXISTS `whitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `whitelist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `answers` varchar(255) DEFAULT NULL,
  `score` int DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whitelist`
--

LOCK TABLES `whitelist` WRITE;
/*!40000 ALTER TABLE `whitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `whitelist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-17 20:06:12
