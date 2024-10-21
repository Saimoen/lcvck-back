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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-11 11:17:48
