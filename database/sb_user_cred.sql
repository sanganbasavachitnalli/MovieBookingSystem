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
-- Table structure for table `user_cred`
--

DROP TABLE IF EXISTS `user_cred`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_cred` (
  `name` varchar(20) DEFAULT NULL,
  `userid` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `phoneno` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_cred`
--

LOCK TABLES `user_cred` WRITE;
/*!40000 ALTER TABLE `user_cred` DISABLE KEYS */;
INSERT INTO `user_cred` VALUES ('account','account','account','sbchitnalli84@gmail.com','2019-10-10','9674567644'),('admin','adminid','sangu','sanguchitnalli70@gmail.com','2019-10-10','1234567890'),('anna','anna','anna','annaraykalashetty1999@gmail.com','2019-10-10','9674567644'),('dell','dell','dell','sanguchitnalli70@gmail.com','2000-01-01','8660879984'),('final','final','final','sanguchitnalli70@gmail.com','2019-10-10','9674567644'),('sang','hello','hello','sbchitnalli84@gmail.com','2019-09-05','96745676'),('hello','hello123','hello123','sbchitnalli84@gmail.com','2019-10-17','09674567644'),('king','king','king','sbchitnalli84@gmail.com','2019-10-10','9999999990'),('lenovo','lenovo','lenovo','sanguchitnalli70@gmail.com','2000-01-01','8660879984'),('mouse','mouse','mouse','sbchitnalli84@gmail.com','2019-10-10','09674567644'),('paaji','paaji','paaji','sbchitnalli84@gmail.com','2019-10-10','09674567644'),('pratham','pratham','pratham','prathameshmali292@gmail.com','2019-10-10','09674567644'),('pratham','pratham123','pratham123','sbchitnalli84@gmail.com','2019-10-10','09674567644'),('project','project','project','sbchitnalli84@gmail.com','2019-10-10','09674567644'),('rakesh','rakesh','rakesh','sbchitnalli84@gmail.com','2019-09-13','9674567644'),('annaray','roy','roy','sbchitnalli84@gmail.com','2019-10-10','09674567644'),('sachin','sachin','sachin','sbchitnalli84@gmail.com','2019-10-10','09674567644'),('samsung','samsung','samsung','sanganbasava.cs17@rvce.edu.in','2019-10-10','9674567644'),('sangu','sanganbasava.cs17','helloc','sbchitnalli84@gmail.com','2019-10-15','1234234'),('sangu','sangu','sangu','sanguchitnalli70@gmail.com','2019-10-10','09674567644'),('sangu','sangu123','sangu','sbchitnalli84@gmail.com','2019-09-20','98765'),('sanjay','sanjay','sanjay','sanjayhegdeyas@gmail.com','2019-10-10','1234567890'),('susheel','susheel','susheel','sbchitnalli84@gmail.com','2019-10-10','09674567644'),('umesh','umesh','umesh','sbchitnalli84@gmail.com','2019-10-10','9876543222'),('vineeth','vineeth1729','vineeth1729','sbchitnalli84@gmail.com','2000-10-10','7093808052');
/*!40000 ALTER TABLE `user_cred` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-16 21:55:02
