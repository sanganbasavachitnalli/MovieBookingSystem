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
-- Table structure for table `seats`
--

DROP TABLE IF EXISTS `seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seats` (
  `date` date NOT NULL,
  `tid` int(11) NOT NULL,
  `showid` int(11) NOT NULL,
  `seatid` varchar(10) NOT NULL,
  `userid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tid`,`showid`,`seatid`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats`
--

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
INSERT INTO `seats` VALUES ('2019-11-01',1,1,'A5','hello'),('2019-11-01',1,1,'A6','hello'),('2019-11-01',1,1,'A7','sanganbasava.cs17'),('2019-11-01',1,1,'A9','hello'),('2019-11-01',1,1,'A90','hello'),('2019-11-01',1,1,'B5','hello'),('2019-11-01',1,1,'C2','hello'),('2019-11-01',1,1,'C3','hello'),('2019-11-01',1,1,'C6','hello'),('2019-11-01',1,1,'C7','hello'),('2019-11-01',1,1,'D3','hello'),('2019-11-01',1,1,'D6','project'),('2019-11-01',1,1,'E3','hello'),('2019-11-01',1,1,'E6','project'),('2019-11-01',1,1,'F6','hello'),('2019-11-01',1,1,'F7','hello'),('2019-11-01',1,1,'F8','hello'),('2019-11-01',1,1,'G7','hello'),('2019-11-01',1,1,'G8','hello'),('2019-11-01',1,1,'G9','sangu'),('2019-11-01',1,1,'J7','hello'),('2019-11-01',1,1,'J90','hello'),('2019-11-01',1,2,'G6','samsung'),('2019-11-01',1,2,'G7','samsung'),('2019-11-01',1,2,'H6','sangu'),('2019-11-01',1,2,'H7','sangu'),('2019-11-01',1,3,'A1','hello'),('2019-11-01',1,3,'A6','hello'),('2019-11-01',1,3,'A92','hello'),('2019-11-01',1,3,'F6','hello'),('2019-11-01',1,3,'F7','hello'),('2019-11-01',1,3,'G6','hello'),('2019-11-01',1,3,'G7','hello'),('2019-11-01',1,3,'H6','hello'),('2019-11-01',1,4,'A1','hello'),('2019-11-01',1,4,'A92','hello'),('2019-11-01',1,4,'F1','hello'),('2019-11-01',1,4,'F92','hello'),('2019-11-01',2,1,'A1','hello'),('2019-11-01',2,1,'A92','hello'),('2019-11-01',2,1,'F5','hello'),('2019-11-01',2,1,'F6','anna'),('2019-11-01',2,1,'F7','anna'),('2019-11-01',2,1,'J6','hello'),('2019-11-01',2,1,'J7','hello'),('2019-11-01',2,2,'A1','hello'),('2019-11-01',2,2,'A5','hello'),('2019-11-01',2,2,'A92','sangu'),('2019-11-01',2,2,'C6','hello'),('2019-11-01',2,2,'D7','hello'),('2019-11-01',2,2,'D8','hello'),('2019-11-01',2,2,'E7','hello'),('2019-11-01',2,2,'E8','hello'),('2019-11-01',2,2,'F1','hello'),('2019-11-01',2,2,'F5','hello'),('2019-11-01',2,2,'I8','sangu'),('2019-11-01',2,2,'I9','sangu'),('2019-11-01',2,2,'J6','hello'),('2019-11-01',2,2,'J7','hello'),('2019-11-01',2,2,'J8','sangu'),('2019-11-01',2,2,'J9','sangu'),('2019-11-01',2,2,'J91','sangu'),('2019-11-01',2,3,'A1','hello'),('2019-11-01',2,3,'A6','pratham'),('2019-11-01',2,3,'A7','pratham'),('2019-11-01',2,3,'B1','hello'),('2019-11-01',2,3,'C6','sangu'),('2019-11-01',2,3,'C7','sangu'),('2019-11-01',2,3,'C8','sangu'),('2019-11-01',2,3,'D6','sangu'),('2019-11-01',2,3,'D8','susheel'),('2019-11-01',2,3,'D9','susheel'),('2019-11-01',2,3,'E6','sangu'),('2019-11-01',2,3,'F8','sangu'),('2019-11-01',2,3,'F9','sangu'),('2019-11-01',2,3,'J8','rakesh'),('2019-11-01',2,4,'A1','roy'),('2019-11-01',2,4,'A5','roy'),('2019-11-01',2,4,'A91','sanjay'),('2019-11-01',2,4,'A92','sanjay'),('2019-11-01',2,4,'B2','roy'),('2019-11-01',2,4,'B4','roy'),('2019-11-01',2,4,'C3','roy'),('2019-11-01',2,4,'D2','roy'),('2019-11-01',2,4,'D4','roy'),('2019-11-01',2,4,'E1','roy'),('2019-11-01',2,4,'E5','roy'),('2019-11-01',2,4,'F6','sanganbasava.cs17'),('2019-11-01',2,4,'F9','sanganbasava.cs17'),('2019-11-01',2,4,'G7','sanganbasava.cs17'),('2019-11-01',2,4,'G8','sanganbasava.cs17'),('2019-11-01',2,4,'H7','sanganbasava.cs17'),('2019-11-01',2,4,'H8','sanganbasava.cs17'),('2019-11-01',2,4,'I6','sanganbasava.cs17'),('2019-11-01',2,4,'I9','sanganbasava.cs17'),('2019-11-01',2,4,'J6','sanganbasava.cs17'),('2019-11-01',2,4,'J7','dell'),('2019-11-01',2,4,'J90','sanganbasava.cs17'),('2019-11-01',3,1,'A1','sanjay'),('2019-11-01',3,1,'A5','sanjay'),('2019-11-01',3,1,'A6','sangu'),('2019-11-01',3,1,'A92','sangu'),('2019-11-01',3,1,'B5','sanjay'),('2019-11-01',3,1,'E92','sangu'),('2019-11-01',3,1,'F5','sanjay'),('2019-11-01',3,1,'F6','sanjay'),('2019-11-01',3,1,'F7','account'),('2019-11-01',3,1,'F8','account'),('2019-11-01',3,1,'F9','rakesh'),('2019-11-01',3,1,'F92','sanjay'),('2019-11-01',3,1,'H8','rakesh'),('2019-11-01',3,1,'H9','rakesh'),('2019-11-01',3,1,'J1','sangu'),('2019-11-01',3,1,'J6','sangu'),('2019-11-01',3,1,'J92','sangu'),('2019-11-01',3,2,'B90','roy'),('2019-11-01',3,2,'B91','roy'),('2019-11-01',3,3,'A1','hello'),('2019-11-01',3,3,'A6','hello'),('2019-11-01',3,3,'A92','hello'),('2019-11-01',3,3,'B1','hello'),('2019-11-01',3,3,'C1','hello'),('2019-11-01',3,3,'E4','pratham'),('2019-11-01',3,3,'E5','pratham'),('2019-11-01',3,3,'E6','hello'),('2019-11-01',3,3,'E8','hello'),('2019-11-01',3,3,'F5','roy'),('2019-11-01',3,3,'F6','roy'),('2019-11-01',3,3,'G6','paaji'),('2019-11-01',3,3,'G7','paaji'),('2019-11-01',3,3,'I7','hello'),('2019-11-01',3,3,'I8','hello'),('2019-11-01',3,3,'J6','hello'),('2019-11-01',3,3,'J7','hello'),('2019-11-01',3,3,'J9','hello'),('2019-11-01',3,4,'C8','sachin'),('2019-11-01',3,4,'C9','sachin'),('2019-11-01',3,4,'E7','sachin'),('2019-11-01',3,4,'E8','sachin'),('2019-11-01',3,4,'E9','sachin'),('2019-11-01',4,2,'A1','sangu'),('2019-11-01',4,2,'A5','sangu123'),('2019-11-01',4,2,'A8','hello'),('2019-11-01',4,2,'A9','hello'),('2019-11-01',4,2,'A90','sangu'),('2019-11-01',4,2,'B8','sangu'),('2019-11-01',4,2,'B9','hello'),('2019-11-01',4,2,'B90','hello'),('2019-11-01',4,2,'C8','pratham123'),('2019-11-01',4,2,'D92','hello'),('2019-11-01',4,2,'F8','sangu'),('2019-11-01',4,2,'J5','sangu'),('2019-11-01',4,2,'J6','sangu'),('2019-11-01',4,3,'D4','hello123'),('2019-11-01',4,3,'D5','hello123'),('2019-11-01',4,3,'E8','hello123'),('2019-11-01',4,3,'E9','hello123'),('2019-11-01',5,1,'A1','sangu'),('2019-11-01',5,1,'A92','sangu'),('2019-11-01',5,1,'F1','sangu'),('2019-11-01',5,1,'F6','sangu'),('2019-11-01',5,1,'F8','sangu'),('2019-11-01',5,1,'F92','sangu'),('2019-11-01',5,2,'C7','susheel'),('2019-11-01',5,2,'C8','susheel'),('2019-11-01',5,3,'C6','umesh'),('2019-11-01',5,3,'C7','umesh'),('2019-11-01',5,4,'A1','hello'),('2019-11-01',5,4,'B2','hello'),('2019-11-01',5,4,'B9','hello'),('2019-11-01',5,4,'C3','hello'),('2019-11-01',5,4,'C8','hello'),('2019-11-01',5,4,'C90','hello'),('2019-11-01',5,4,'D4','hello'),('2019-11-01',5,4,'D7','hello'),('2019-11-01',5,4,'D91','hello'),('2019-11-01',5,4,'E2','hello'),('2019-11-01',5,4,'E3','hello'),('2019-11-01',5,4,'E5','hello'),('2019-11-01',5,4,'E6','hello'),('2019-11-01',5,4,'E9','hello'),('2019-11-01',5,4,'E92','hello'),('2019-11-01',6,1,'C8','sangu'),('2019-11-01',6,1,'D4','sangu'),('2019-11-01',6,1,'D5','sangu'),('2019-11-01',6,1,'E4','sangu'),('2019-11-01',6,1,'E5','sangu'),('2019-11-01',6,1,'F7','sangu'),('2019-11-01',6,1,'F8','sangu'),('2019-11-01',6,1,'J1','hello'),('2019-11-01',6,1,'J2','hello'),('2019-11-01',6,1,'J6','sangu'),('2019-11-01',6,1,'J91','hello'),('2019-11-01',6,1,'J92','hello'),('2019-11-01',6,2,'A5','pratham'),('2019-11-01',6,2,'B5','pratham'),('2019-11-01',6,2,'C6','sangu'),('2019-11-01',6,2,'C7','sangu'),('2019-11-01',6,2,'D4','sangu'),('2019-11-01',6,2,'D5','sangu'),('2019-11-01',6,2,'D8','sangu'),('2019-11-01',6,2,'D9','sangu'),('2019-11-01',6,2,'F8','sangu'),('2019-11-01',6,2,'F9','sangu'),('2019-11-01',6,2,'G6','vineeth1729'),('2019-11-01',6,2,'G7','vineeth1729'),('2019-11-01',6,2,'G90','sangu'),('2019-11-01',6,3,'A4','sangu'),('2019-11-01',6,3,'A5','sangu'),('2019-11-01',6,3,'A6','sangu'),('2019-11-01',6,3,'A7','sangu'),('2019-11-01',6,3,'C3','sangu'),('2019-11-01',6,3,'C4','sangu'),('2019-11-01',6,3,'C5','sangu'),('2019-11-01',6,3,'C6','sangu'),('2019-11-01',6,3,'C7','sangu'),('2019-11-01',6,3,'C8','sangu'),('2019-11-01',6,3,'F4','sangu'),('2019-11-01',6,3,'F5','sangu'),('2019-11-01',6,3,'F6','sangu'),('2019-11-01',6,3,'F7','sangu'),('2019-11-01',6,3,'H5','sangu'),('2019-11-01',6,3,'H6','sangu'),('2019-11-01',6,4,'E8','hello'),('2019-11-01',6,4,'E9','hello'),('2019-11-01',6,4,'F4','pratham'),('2019-11-01',6,4,'F5','pratham'),('2019-11-01',6,4,'F8','pratham'),('2019-11-01',6,4,'F9','pratham'),('2019-11-01',6,4,'F90','hello'),('2019-11-01',7,1,'D7','susheel'),('2019-11-01',7,1,'F6','anna'),('2019-11-01',7,1,'F7','anna'),('2019-11-01',7,1,'F9','hello'),('2019-11-01',7,1,'G9','hello'),('2019-11-01',7,1,'H9','hello'),('2019-11-01',7,1,'J6','account'),('2019-11-01',7,1,'J7','sangu'),('2019-11-01',7,1,'J8','sangu'),('2019-11-01',7,2,'F6','sangu'),('2019-11-01',7,2,'F7','sangu'),('2019-11-01',7,2,'F8','sangu'),('2019-11-01',7,2,'F9','sangu'),('2019-11-01',7,2,'G8','hello'),('2019-11-01',7,2,'G9','hello'),('2019-11-01',7,2,'H8','sangu'),('2019-11-01',7,2,'H9','sangu'),('2019-11-01',7,2,'H90','susheel'),('2019-11-01',7,2,'J6','hello'),('2019-11-01',7,3,'D8','susheel'),('2019-11-01',7,3,'D9','susheel'),('2019-11-01',7,3,'F4','sangu'),('2019-11-01',7,3,'F5','sangu'),('2019-11-01',7,3,'F6','susheel'),('2019-11-01',7,3,'F7','susheel'),('2019-11-01',7,4,'F9','susheel'),('2019-11-01',7,4,'F90','susheel'),('2019-11-01',7,4,'F91','susheel'),('2019-11-01',8,1,'F7','sangu'),('2019-11-01',8,1,'F8','sangu'),('2019-11-01',8,2,'D4','hello'),('2019-11-01',8,2,'D5','sangu'),('2019-11-01',8,2,'D6','sangu'),('2019-11-01',8,2,'D7','sangu'),('2019-11-01',8,2,'E3','hello'),('2019-11-01',8,2,'E4','sangu'),('2019-11-01',8,2,'E7','hello'),('2019-11-01',8,2,'E8','sangu'),('2019-11-01',8,2,'F3','sangu'),('2019-11-01',8,2,'F6','susheel'),('2019-11-01',8,2,'F7','susheel'),('2019-11-01',8,2,'F9','sangu'),('2019-11-01',8,3,'F7','umesh'),('2019-11-01',8,3,'F9','umesh'),('2019-11-01',8,3,'F91','umesh'),('2019-11-01',8,3,'G6','umesh'),('2019-11-01',8,3,'G7','hello'),('2019-11-01',8,3,'G8','umesh'),('2019-11-01',8,3,'G9','hello'),('2019-11-01',8,3,'G92','umesh'),('2019-11-01',8,3,'H7','umesh'),('2019-11-01',8,3,'H9','umesh'),('2019-11-01',8,3,'H91','umesh'),('2019-11-01',8,3,'I7','rakesh'),('2019-11-01',8,3,'J7','rakesh'),('2019-11-01',9,1,'F2','hello'),('2019-11-01',9,1,'F3','hello'),('2019-11-01',9,1,'F4','hello'),('2019-11-01',9,1,'F5','hello'),('2019-11-01',9,1,'F6','sanjay'),('2019-11-01',9,1,'F7','sanjay'),('2019-11-01',9,1,'F8','pratham'),('2019-11-01',9,1,'F9','pratham'),('2019-11-01',9,1,'G4','sanjay'),('2019-11-01',9,1,'G5','sanjay'),('2019-11-01',9,3,'A1','sangu'),('2019-11-01',9,3,'A2','sangu'),('2019-11-01',9,3,'A91','sangu'),('2019-11-01',9,3,'A92','sangu'),('2019-11-01',9,3,'F6','sangu'),('2019-11-01',9,3,'F7','sangu'),('2019-11-01',9,3,'F8','sangu'),('2019-11-01',9,3,'G6','sangu'),('2019-11-01',9,3,'G7','sangu'),('2019-11-01',9,3,'G8','sangu'),('2019-11-01',9,4,'E90','susheel'),('2019-11-01',9,4,'E91','susheel'),('2019-11-01',9,4,'F4','sangu'),('2019-11-01',9,4,'F5','sangu'),('2019-11-01',9,4,'F6','sanganbasava.cs17'),('2019-11-01',9,4,'F8','sanganbasava.cs17'),('2019-11-01',9,4,'F9','sanganbasava.cs17'),('2019-11-01',9,4,'F92','sanganbasava.cs17'),('2019-11-01',9,4,'G7','sanganbasava.cs17'),('2019-11-01',9,4,'G90','sanganbasava.cs17'),('2019-11-01',9,4,'G91','sanganbasava.cs17'),('2019-11-01',10,1,'D4','hello123'),('2019-11-01',10,1,'D5','hello123'),('2019-11-01',10,1,'E6','hello123'),('2019-11-01',10,1,'E7','hello123'),('2019-11-01',10,1,'H6','sangu'),('2019-11-01',10,1,'H7','sangu'),('2019-11-01',10,1,'H8','sangu'),('2019-11-01',10,1,'H9','sangu'),('2019-11-01',10,1,'H90','sangu'),('2019-11-01',10,2,'D4','hello123'),('2019-11-01',10,2,'D5','hello123'),('2019-11-01',10,2,'E4','hello123'),('2019-11-01',10,2,'E5','hello123'),('2019-11-01',10,2,'E7','sangu'),('2019-11-01',10,2,'E8','sangu'),('2019-11-01',10,2,'F6','hello123'),('2019-11-01',10,2,'F7','hello123'),('2019-11-01',10,2,'G6','hello123'),('2019-11-01',10,2,'G7','hello123'),('2019-11-01',10,2,'J91','sangu'),('2019-11-01',11,1,'F4','susheel'),('2019-11-01',11,1,'F5','susheel'),('2019-11-01',11,1,'F6','abcd'),('2019-11-01',11,1,'F7','abcd'),('2019-11-01',11,1,'F8','sanjay'),('2019-11-01',11,1,'F9','sanjay'),('2019-11-01',11,2,'A4','sangu'),('2019-11-01',11,2,'A5','sangu'),('2019-11-01',11,2,'A6','sangu'),('2019-11-01',11,2,'A7','sangu'),('2019-11-01',11,2,'C5','sangu'),('2019-11-01',11,2,'C6','sangu'),('2019-11-01',11,2,'D5','sangu'),('2019-11-01',11,2,'D6','sangu'),('2019-11-01',11,2,'F4','sangu'),('2019-11-01',11,2,'F5','sangu'),('2019-11-01',11,2,'F6','sangu'),('2019-11-01',11,2,'F7','sangu'),('2019-11-01',11,2,'F92','sangu'),('2019-11-01',11,2,'J6','account'),('2019-11-01',11,2,'J7','account'),('2019-11-01',11,3,'G6','samsung'),('2019-11-01',11,3,'G7','samsung'),('2019-11-01',12,1,'A1','hello'),('2019-11-01',12,1,'B2','hello'),('2019-11-01',12,1,'C3','hello'),('2019-11-01',12,1,'D4','hello'),('2019-11-01',12,1,'E5','hello'),('2019-11-01',12,1,'F5','hello'),('2019-11-01',12,1,'G4','hello'),('2019-11-01',12,1,'H3','hello'),('2019-11-01',12,1,'I2','hello'),('2019-11-01',12,1,'J3','sangu'),('2019-11-01',12,1,'J4','sangu'),('2019-11-01',12,3,'A1','rakesh'),('2019-11-01',12,3,'A6','rakesh'),('2019-11-01',12,3,'A7','rakesh'),('2019-11-01',12,3,'A92','rakesh'),('2019-11-01',12,3,'B6','sangu'),('2019-11-01',12,3,'B7','sangu'),('2019-11-01',12,3,'D9','sangu'),('2019-11-01',12,3,'D90','sangu'),('2019-11-01',12,3,'G6','sangu'),('2019-11-01',12,3,'G7','rakesh'),('2019-11-01',12,3,'J6','rakesh'),('2019-11-01',12,3,'J7','rakesh'),('2019-11-01',14,1,'G7','rakesh'),('2019-11-01',14,1,'G8','rakesh');
/*!40000 ALTER TABLE `seats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-16 21:55:01
