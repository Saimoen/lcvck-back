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
  `course_id` bigint DEFAULT NULL,
  `classement_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1ynxw3wi6koo5r3s02hhbau0f` (`course_id`),
  KEY `FKq8i7367plkymqd9wqe10pcw56` (`classement_id`),
  CONSTRAINT `FKq8i7367plkymqd9wqe10pcw56` FOREIGN KEY (`classement_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classement`
--

LOCK TABLES `classement` WRITE;
/*!40000 ALTER TABLE `classement` DISABLE KEYS */;
INSERT INTO `classement` VALUES (1,'M50 H','8B','','MD SHELL',8,1,'01:16:31',NULL,16),(2,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',NULL,NULL),(3,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',NULL,NULL),(4,'OPEN F','7A','00:06:21','ISLV',5,4,'01:22:52',NULL,NULL),(5,'M50 H','21B','00:13:15','MD SHELL',7,5,'01:29:46',NULL,NULL),(6,'OPEN F','7B','00:15:07','ISLV',6,6,'01:31:38',NULL,NULL),(7,'OPEN F','18D','00:16:01','TUHAA PAE VA\'A',3,7,'01:32:32',NULL,NULL),(8,'J16 G','12C','00:16:42','PC DUMBEA',6,8,'01:33:13',NULL,NULL),(9,'OPEN F','32A','00:25:14','TENIA VA\'A',1,9,'01:41:45',NULL,NULL),(10,'J16 G','12C','','PC DUMBEA',6,1,'01:33:13',NULL,NULL),(11,'OPEN F','18C','','TUHAA PAE VA\'A',2,1,'01:21:56',NULL,NULL),(12,'OPEN F','7A','00:06:21','ISLV',5,2,'01:22:52',NULL,NULL),(13,'OPEN F','7B','00:15:07','ISLV',6,3,'01:31:38',NULL,NULL),(14,'OPEN F','18D','00:16:01','TUHAA PAE VA\'A',3,4,'01:32:32',NULL,NULL),(15,'OPEN F','32A','00:25:14','TENIA VA\'A',1,5,'01:41:45',NULL,NULL),(16,'M50 H','8B','','MD SHELL',8,1,'01:16:31',NULL,NULL),(17,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',NULL,NULL),(18,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',NULL,NULL),(19,'M50 H','8B','','MD SHELL',8,1,'01:16:31',NULL,NULL),(20,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',NULL,NULL),(21,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',NULL,NULL),(22,'M50 H','8B','','MD SHELL',8,1,'01:16:31',13,NULL),(23,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',4,NULL),(24,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',4,NULL),(25,'M50 H','8B','','MD SHELL',8,1,'01:16:31',5,NULL),(26,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',5,NULL),(27,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',5,NULL),(28,'M50 H','8B','','MD SHELL',8,1,'01:16:31',6,NULL),(29,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',6,NULL),(30,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',6,NULL),(31,'M50 H','8B','','MD SHELL',8,1,'01:16:31',7,NULL),(32,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',7,NULL),(33,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',7,NULL),(34,'M50 H','8B','','MD SHELL',8,1,'01:16:31',8,NULL),(35,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',8,NULL),(36,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',8,NULL),(37,'M50 H','8B','','MD SHELL',8,1,'01:16:31',9,NULL),(38,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',9,NULL),(39,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',9,NULL),(40,'M50 H','8B','','MD SHELL',8,1,'01:16:31',10,NULL),(41,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',10,NULL),(42,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',10,NULL),(43,'M50 H','8B','','MD SHELL',8,1,'01:16:31',11,NULL),(44,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',11,NULL),(45,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',11,NULL),(46,'M50 H','8B','','MD SHELL',8,1,'01:16:31',NULL,NULL),(47,'M50 H','8B','','MD SHELL',8,1,'01:16:31',NULL,13),(48,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',NULL,13),(49,'M50 H','8B','','MD SHELL',8,1,'01:16:31',NULL,14),(50,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',NULL,14),(51,'M50 H','8B','','MD SHELL',8,1,'01:16:31',NULL,15),(52,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',NULL,15),(53,'M50 H','8B','','MD SHELL',8,1,'01:16:31',NULL,16),(54,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',NULL,16),(55,'M50 H','8B','','MD SHELL',8,1,'01:16:31',NULL,17),(56,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',NULL,17);
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

-- Dump completed on 2024-10-11 11:17:48