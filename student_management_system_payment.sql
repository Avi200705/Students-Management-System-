-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: student_management_system
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`payment_id`),
  UNIQUE KEY `transaction_id` (`transaction_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,15000.00,'2023-06-01','Credit Card','TXN123456','Completed'),(2,2,15000.00,'2023-06-02','Debit Card','TXN123457','Completed'),(3,3,15000.00,'2023-06-03','Credit Card','TXN123458','Completed'),(4,4,15000.00,'2023-06-04','Debit Card','TXN123459','Completed'),(5,5,15000.00,'2023-06-05','Credit Card','TXN123460','Completed'),(6,6,15000.00,'2023-06-06','Debit Card','TXN123461','Completed'),(7,7,15000.00,'2023-06-07','Credit Card','TXN123462','Completed'),(8,8,15000.00,'2023-06-08','Debit Card','TXN123463','Completed'),(9,9,15000.00,'2023-06-09','Credit Card','TXN123464','Completed'),(10,10,15000.00,'2023-06-10','Debit Card','TXN123465','Completed'),(11,11,15000.00,'2023-06-11','Credit Card','TXN123466','Completed'),(12,12,15000.00,'2023-06-12','Debit Card','TXN123467','Completed'),(13,13,15000.00,'2023-06-13','Credit Card','TXN123468','Completed'),(14,14,15000.00,'2023-06-14','Debit Card','TXN123469','Completed'),(15,15,15000.00,'2023-06-15','Credit Card','TXN123470','Completed'),(16,16,15000.00,'2023-06-16','Debit Card','TXN123471','Completed'),(17,17,15000.00,'2023-06-17','Credit Card','TXN123472','Completed'),(18,18,15000.00,'2023-06-18','Debit Card','TXN123473','Completed'),(19,19,15000.00,'2023-06-19','Credit Card','TXN123474','Completed'),(20,20,15000.00,'2023-06-20','Debit Card','TXN123475','Completed');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-04  7:19:02
