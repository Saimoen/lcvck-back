-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: lcvck
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `classement`
--

DROP TABLE IF EXISTS `classement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classement` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `categorie` varchar(255) DEFAULT NULL,
  `dossard` varchar(255) DEFAULT NULL,
  `ecart` varchar(255) DEFAULT NULL,
  `equipage` varchar(255) DEFAULT NULL,
  `num` int NOT NULL,
  `position` int NOT NULL,
  `temps` varchar(255) DEFAULT NULL,
  `resultat_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKt0g6101qkw6tqr53jxk4x2xbj` (`resultat_id`),
  CONSTRAINT `FKt0g6101qkw6tqr53jxk4x2xbj` FOREIGN KEY (`resultat_id`) REFERENCES `resultat` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classement`
--

LOCK TABLES `classement` WRITE;
/*!40000 ALTER TABLE `classement` DISABLE KEYS */;
INSERT INTO `classement` VALUES (1,'M50 H','8B','','MD SHELL',8,1,'01:16:31',1),(2,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',1),(3,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',1),(4,'OPEN F','7A','00:06:21','ISLV',5,4,'01:22:52',1),(5,'M50 H','21B','00:13:15','MD SHELL',7,5,'01:29:46',1),(6,'OPEN F','7B','00:15:07','ISLV',6,6,'01:31:38',1),(7,'OPEN F','18D','00:16:01','TUHAA PAE VA\'A',3,7,'01:32:32',1),(8,'J16 G','12C','00:16:42','PC DUMBEA',6,8,'01:33:13',1),(9,'OPEN F','32A','00:25:14','TENIA VA\'A',1,9,'01:41:45',1),(10,'J16 G','12C','','PC DUMBEA',6,1,'01:33:13',2),(11,'OPEN F','18C','','TUHAA PAE VA\'A',2,1,'01:21:56',3),(12,'OPEN F','7A','00:06:21','ISLV',5,2,'01:22:52',3),(13,'OPEN F','7B','00:15:07','ISLV',6,3,'01:31:38',3),(14,'OPEN F','18D','00:16:01','TUHAA PAE VA\'A',3,4,'01:32:32',3),(15,'OPEN F','32A','00:25:14','TENIA VA\'A',1,5,'01:41:45',3);
/*!40000 ALTER TABLE `classement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-02 14:48:14
