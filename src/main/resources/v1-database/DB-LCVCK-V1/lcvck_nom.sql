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

-- Dump completed on 2024-10-02 14:48:15
