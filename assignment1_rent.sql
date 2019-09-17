-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: mysql.learn.cpp.ac.nz    Database: assignment1
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `rent`
--

DROP TABLE IF EXISTS `rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rent` (
  `rentID` int(11) NOT NULL,
  `customerReference` int(11) DEFAULT NULL,
  `movieID` int(11) DEFAULT NULL,
  `rentalDate` date DEFAULT NULL,
  `rentalExpiryDate` date DEFAULT NULL,
  PRIMARY KEY (`rentID`),
  KEY `customerReference` (`customerReference`),
  CONSTRAINT `rent_ibfk_1` FOREIGN KEY (`customerReference`) REFERENCES `customer` (`customerreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent`
--

LOCK TABLES `rent` WRITE;
/*!40000 ALTER TABLE `rent` DISABLE KEYS */;
INSERT INTO `rent` VALUES (1,931,1,'2019-09-02','2019-09-09'),(2,930,5,'2019-09-03','2019-09-10'),(3,930,2,'2019-09-21','2019-09-28'),(4,934,3,'2019-08-15','2019-09-22'),(5,932,3,'2019-07-01','2019-09-08'),(6,933,1,'2019-09-07','2019-09-14'),(7,931,4,'2019-07-30','2019-08-06'),(8,931,2,'2019-09-26','2019-09-03'),(9,935,1,'2019-09-01','2019-09-08'),(10,934,2,'2019-08-06','2019-08-13'),(11,934,1,'2019-07-17','2019-09-24'),(12,934,4,'2019-09-11','2019-09-18'),(13,935,3,'2019-06-21','2019-09-28'),(14,936,1,'2019-06-12','2019-06-19'),(15,936,5,'2019-04-21','2019-04-28');
/*!40000 ALTER TABLE `rent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-04 16:47:54
