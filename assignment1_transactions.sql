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
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `transactions` (
  `transactionID` int(11) NOT NULL,
  `customerReference` int(11) DEFAULT NULL,
  `transactionDate` date DEFAULT NULL,
  `paymentDate` date DEFAULT NULL,
  `amountPaid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`transactionID`),
  KEY `customerReference` (`customerReference`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`customerReference`) REFERENCES `customer` (`customerreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,931,'2019-09-02','2019-09-02','$15'),(2,930,'2019-09-03','2019-09-03','$10'),(3,930,'2019-09-21','2019-09-21','$15'),(4,934,'2019-08-15','2019-08-15','$20'),(5,932,'2019-07-01','2019-07-01','$20'),(6,933,'2019-09-07','2019-09-07','$15'),(7,931,'2019-07-30','2019-07-30','$7'),(8,931,'2019-09-26','2019-09-26','$15'),(9,935,'2019-09-01','2019-09-01','$15'),(10,934,'2019-08-06','2019-08-06','$15'),(11,934,'2019-07-17','2019-07-17','$15'),(12,934,'2019-09-11','2019-09-11','$7'),(13,935,'2019-06-21','2019-06-21','$20'),(14,936,'2019-06-12','2019-06-12','$15'),(15,936,'2019-04-21','2019-04-21','$10');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
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
