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
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` VALUES (1,'LCVCK','LCVCK','LCVCK','$2y$10$/vh5hxhDxt186O1gWvhPX.9xT6TMvH1nVk/dTWo1UrC6pG6EFa3HO');
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classement`
--

LOCK TABLES `classement` WRITE;
/*!40000 ALTER TABLE `classement` DISABLE KEYS */;
INSERT INTO `classement` VALUES (1,'M50 H','8B','','MD SHELL',8,1,'01:16:31',NULL,16),(2,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',NULL,NULL),(3,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',NULL,NULL),(4,'OPEN F','7A','00:06:21','ISLV',5,4,'01:22:52',NULL,NULL),(5,'M50 H','21B','00:13:15','MD SHELL',7,5,'01:29:46',NULL,NULL),(6,'OPEN F','7B','00:15:07','ISLV',6,6,'01:31:38',NULL,NULL),(7,'OPEN F','18D','00:16:01','TUHAA PAE VA\'A',3,7,'01:32:32',NULL,NULL),(8,'J16 G','12C','00:16:42','PC DUMBEA',6,8,'01:33:13',NULL,NULL),(9,'OPEN F','32A','00:25:14','TENIA VA\'A',1,9,'01:41:45',NULL,NULL),(10,'J16 G','12C','','PC DUMBEA',6,1,'01:33:13',NULL,NULL),(11,'OPEN F','18C','','TUHAA PAE VA\'A',2,1,'01:21:56',NULL,NULL),(12,'OPEN F','7A','00:06:21','ISLV',5,2,'01:22:52',NULL,NULL),(13,'OPEN F','7B','00:15:07','ISLV',6,3,'01:31:38',NULL,NULL),(14,'OPEN F','18D','00:16:01','TUHAA PAE VA\'A',3,4,'01:32:32',NULL,NULL),(15,'OPEN F','32A','00:25:14','TENIA VA\'A',1,5,'01:41:45',NULL,NULL),(16,'M50 H','8B','','MD SHELL',8,1,'01:16:31',NULL,NULL),(17,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',NULL,NULL),(18,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',NULL,NULL),(19,'M50 H','8B','','MD SHELL',8,1,'01:16:31',NULL,NULL),(20,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',NULL,NULL),(21,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',NULL,NULL),(22,'M50 H','8B','','MD SHELL',8,1,'01:16:31',13,NULL),(23,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',4,NULL),(24,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',4,NULL),(25,'M50 H','8B','','MD SHELL',8,1,'01:16:31',5,NULL),(26,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',5,NULL),(27,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',5,NULL),(28,'M50 H','8B','','MD SHELL',8,1,'01:16:31',6,NULL),(29,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',6,NULL),(30,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',6,NULL),(31,'M50 H','8B','','MD SHELL',8,1,'01:16:31',7,NULL),(32,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',7,NULL),(33,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',7,NULL),(34,'M50 H','8B','','MD SHELL',8,1,'01:16:31',8,NULL),(35,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',8,NULL),(36,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',8,NULL),(37,'M50 H','8B','','MD SHELL',8,1,'01:16:31',9,NULL),(38,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',9,NULL),(39,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',9,NULL),(40,'M50 H','8B','','MD SHELL',8,1,'01:16:31',10,NULL),(41,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',10,NULL),(42,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',10,NULL),(43,'M50 H','8B','','MD SHELL',8,1,'01:16:31',11,NULL),(44,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',11,NULL),(45,'OPEN F','18C','00:05:25','TUHAA PAE VA\'A',2,3,'01:21:56',11,NULL),(46,'M50 H','8B','','MD SHELL',8,1,'01:16:31',NULL,NULL),(47,'M50 H','8B','','MD SHELL',8,1,'01:16:31',NULL,13),(48,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',NULL,13),(49,'M50 H','8B','','MD SHELL',8,1,'01:16:31',NULL,14),(50,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',NULL,14),(51,'M50 H','8B','','MD SHELL',8,1,'01:16:31',NULL,15),(52,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',NULL,15),(53,'M50 H','8B','','MD SHELL',8,1,'01:16:31',NULL,16),(54,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',NULL,16),(55,'M50 H','8B','','MD SHELL',8,1,'01:16:31',NULL,17),(56,'M50 H','19B','00:03:39','MD SHELL',9,2,'01:20:10',NULL,17),(57,'','','','',0,0,'',NULL,18),(58,'','','','',0,0,'',NULL,19),(59,'','','','',0,0,'',NULL,20),(60,'','','','',0,0,'',NULL,21),(61,'','','','',0,0,'',NULL,23),(62,'','','','',0,0,'',NULL,24),(63,'','','','',0,0,'',NULL,25),(64,'','','','',0,0,'',NULL,26),(65,'','13g','','SHELL MF',0,1,'',NULL,27);
/*!40000 ALTER TABLE `classement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classement_noms`
--

DROP TABLE IF EXISTS `classement_noms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classement_noms` (
  `classement_id` bigint NOT NULL,
  `noms` varchar(255) DEFAULT NULL,
  KEY `FK3b6kxdy1vu4cpme0ig476r3vd` (`classement_id`),
  CONSTRAINT `FK3b6kxdy1vu4cpme0ig476r3vd` FOREIGN KEY (`classement_id`) REFERENCES `classement` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classement_noms`
--

LOCK TABLES `classement_noms` WRITE;
/*!40000 ALTER TABLE `classement_noms` DISABLE KEYS */;
INSERT INTO `classement_noms` VALUES (16,'PAROTU Laurent'),(16,'CLOBER Moïse'),(17,'PARANQUE Régis'),(17,'LE POUL Philippe'),(18,'TAVITA Titaina'),(18,'TERII Rosemelle'),(19,'PAROTU Laurent'),(19,'CLOBER Moïse'),(20,'PARANQUE Régis'),(20,'LE POUL Philippe'),(21,'TAVITA Titaina'),(21,'TERII Rosemelle'),(22,'PAROTU Laurent'),(22,'CLOBER Moïse'),(23,'PARANQUE Régis'),(23,'LE POUL Philippe'),(24,'TAVITA Titaina'),(24,'TERII Rosemelle'),(25,'PAROTU Laurent'),(25,'CLOBER Moïse'),(26,'PARANQUE Régis'),(26,'LE POUL Philippe'),(27,'TAVITA Titaina'),(27,'TERII Rosemelle'),(28,'PAROTU Laurent'),(28,'CLOBER Moïse'),(29,'PARANQUE Régis'),(29,'LE POUL Philippe'),(30,'TAVITA Titaina'),(30,'TERII Rosemelle'),(31,'PAROTU Laurent'),(31,'CLOBER Moïse'),(32,'PARANQUE Régis'),(32,'LE POUL Philippe'),(33,'TAVITA Titaina'),(33,'TERII Rosemelle'),(34,'PAROTU Laurent'),(34,'CLOBER Moïse'),(35,'PARANQUE Régis'),(35,'LE POUL Philippe'),(36,'TAVITA Titaina'),(36,'TERII Rosemelle'),(37,'PAROTU Laurent'),(37,'CLOBER Moïse'),(38,'PARANQUE Régis'),(38,'LE POUL Philippe'),(39,'TAVITA Titaina'),(39,'TERII Rosemelle'),(40,'PAROTU Laurent'),(40,'CLOBER Moïse'),(41,'PARANQUE Régis'),(41,'LE POUL Philippe'),(42,'TAVITA Titaina'),(42,'TERII Rosemelle'),(43,'PAROTU Laurent'),(43,'CLOBER Moïse'),(44,'PARANQUE Régis'),(44,'LE POUL Philippe'),(45,'TAVITA Titaina'),(45,'TERII Rosemelle'),(46,'PAROTU Laurent'),(46,'CLOBER Moïse'),(47,'PAROTU Laurent'),(47,'CLOBER Moïse'),(48,'PARANQUE Régis'),(48,'LE POUL Philippe'),(49,'PAROTU Laurent'),(49,'CLOBER Moïse'),(50,'PARANQUE Régis'),(50,'LE POUL Philippe'),(51,'PAROTU Laurent'),(51,'CLOBER Moïse'),(52,'PARANQUE Régis'),(52,'LE POUL Philippe'),(53,'PAROTU Laurent'),(53,'CLOBER Moïse'),(54,'PARANQUE Régis'),(54,'LE POUL Philippe'),(55,'PAROTU Laurent'),(55,'CLOBER Moïse'),(56,'PARANQUE Régis'),(56,'LE POUL Philippe');
/*!40000 ALTER TABLE `classement_noms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club`
--

DROP TABLE IF EXISTS `club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `logo` varchar(45) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `lien` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club`
--

LOCK TABLES `club` WRITE;
/*!40000 ALTER TABLE `club` DISABLE KEYS */;
INSERT INTO `club` VALUES (1,NULL,'askarapauga@hotmail.fr','75 73 74/ 76 05 06','As Kara Rame','Baie de Toro, Plage Toro, Païta, Province Sud, Nouvelle-Calédonie',-22.202141,166.356593,'https://www.facebook.com/askara.rame?locale=fr_FR','Sud','../../../assets/img/logo/as-karame.jpg','As Kara Rame','Loisirs'),(2,NULL,'ptt.secretariat@gmail.com','93 41 95','ASPTT Nouméa - Section va\'a','Pointe de l\'Artillerie, Rue des Artifice Artillerie, Nouméa, Province Sud, Nouvelle-Calédonie',-22.27935,166.44048,'https://pttsecretariat.wixsite.com/website','Sud','../../../assets/img/logo/ASPTTVA\'A.jpg','ASPTT Nouméa - Section va\\\'a','Compétition'),(3,NULL,NULL,NULL,'Olympique VA\'A Outrigger NC Entraînement','1 BIS Route des Artifices',-22.28112,166.4335,'https://www.facebook.com/OlympiqueVaa/?locale=fr_FR','Sud','../../../assets/img/logo/olympique.jpg','Olympique VA\\\'A Outrigger NC Entraînement','Toutes');
/*!40000 ALTER TABLE `club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `classement_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKqdj9ge5o5xu3uuxhvdjmm5c5r` (`classement_id`),
  CONSTRAINT `FKjivc4dpuhewvssjqq896f1mrp` FOREIGN KEY (`classement_id`) REFERENCES `classement` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (13,'Scratch Course 1 (14 km)','2023-06-10',NULL),(14,'Scratch Course 1 (14 km)','2022-05-12',NULL),(15,'Scratch Course 1 (14 km)','2023-05-12',NULL),(16,'Scratch Course 1 (14 km)','2024-05-12',NULL),(17,'Scratch Course 1 (69 km)','2025-05-12',NULL),(18,'test','2023-10-12',NULL),(19,'test','2022-05-23',NULL),(20,'test','2024-03-03',NULL),(21,'test','2024-06-13',NULL),(22,'test','2024-08-08',NULL),(23,'test','1998-06-13',NULL),(24,'','',NULL),(25,'','',NULL),(26,'test','2022-10-22',NULL),(27,'Course de fond','2023-12-25',NULL);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nom`
--

DROP TABLE IF EXISTS `nom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nom` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `prenom_participation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nom`
--

LOCK TABLES `nom` WRITE;
/*!40000 ALTER TABLE `nom` DISABLE KEYS */;
INSERT INTO `nom` VALUES (1,'PAROTU Laurent'),(2,'CLOBER Moïse'),(3,'PARANQUE Régis'),(4,'LE POUL Philippe'),(5,'TAVITA Titaina'),(6,'TERII Rosemelle'),(7,'DEVAMBEZ Fabienne'),(8,'ROBIN Charlotte'),(9,'KAI Jules'),(10,'HUGOT Nicolas'),(11,'TEHEI Manina'),(12,'WEJIEME Myriam'),(13,'LESECK Nolwenn'),(14,'TAOFIENUA Alexandra'),(15,'TOMA Franck'),(16,'NATUA Nohoarii'),(17,'DELIREU Ramona'),(18,'TOUAL Sonia'),(19,'TOMA Franck'),(20,'NATUA Nohoarii'),(21,'TAVITA Titaina'),(22,'TERII Rosemelle'),(23,'DEVAMBEZ Fabienne'),(24,'ROBIN Charlotte'),(25,'TEHEI Manina'),(26,'SIAKINUU Mélénai'),(27,'LESECK Nolwenn'),(28,'TAOFIENUA Alexandra'),(29,'DELIREU Ramona'),(30,'TOUAL Sonia');
/*!40000 ALTER TABLE `nom` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-22 10:47:21
