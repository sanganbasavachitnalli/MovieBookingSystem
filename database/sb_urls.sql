-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sb
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `urls`
--

DROP TABLE IF EXISTS `urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `urls` (
  `mid` int(11) NOT NULL,
  `url` varchar(1000) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urls`
--

LOCK TABLES `urls` WRITE;
/*!40000 ALTER TABLE `urls` DISABLE KEYS */;
INSERT INTO `urls` VALUES (1,'https://www.youtube.com/embed/rBxcF-r9Ibs'),(2,'https://www.youtube.com/embed/SvKmSNxFHyQ'),(3,'https://www.youtube.com/embed/F2lN25IayH8'),(4,'https://www.youtube.com/embed/naW9U8MiUY0'),(5,'https://www.youtube.com/embed/G62HrubdD6o'),(6,'https://www.youtube.com/embed/lD0-ztCFydA'),(7,'https://www.youtube.com/embed/qXgF-iJ_ezE'),(8,'https://www.youtube.com/embed/HSzx-zryEgM'),(9,'https://www.youtube.com/embed/Egcx63-FfTE'),(10,'https://www.youtube.com/embed/-_DJEzZk2pc'),(11,'https://www.youtube.com/embed/pU8-7BX9uxs'),(12,'https://www.youtube.com/embed/Ke1Y3P9D0Bc'),(13,'https://www.youtube.com/embed/TcMBFSGVi1c'),(14,'https://www.youtube.com/embed/tQ0mzXRk-oM'),(15,'https://www.youtube.com/embed/JGHwANkQFrg'),(16,'https://www.youtube.com/embed/Rbp2XUSeUNE'),(17,'https://www.youtube.com/embed/gcHH34cEl3Y'),(18,'https://www.youtube.com/embed/nf39Jpi3ZQ4'),(19,'https://www.youtube.com/embed/EXeTwQWrcwY'),(20,'https://www.youtube.com/embed/lbWURFD4vdE');
/*!40000 ALTER TABLE `urls` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-16 21:55:00
