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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `class_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int DEFAULT NULL,
  `instructor_id` int DEFAULT NULL,
  `semester` varchar(50) NOT NULL,
  `year` int NOT NULL,
  `room_number` varchar(50) DEFAULT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `days` varchar(50) NOT NULL,
  PRIMARY KEY (`class_id`),
  KEY `course_id` (`course_id`),
  KEY `instructor_id` (`instructor_id`),
  CONSTRAINT `class_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE,
  CONSTRAINT `class_ibfk_2` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`instructor_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,1,1,'Fall',2023,'101','09:00:00','10:30:00','Mon,Wed,Fri'),(2,2,2,'Spring',2023,'102','10:30:00','12:00:00','Tue,Thu'),(3,3,3,'Fall',2023,'103','13:00:00','14:30:00','Mon,Wed,Fri'),(4,4,4,'Spring',2023,'104','15:00:00','16:30:00','Tue,Thu'),(5,5,5,'Fall',2023,'105','09:00:00','10:30:00','Mon,Wed,Fri'),(6,6,6,'Spring',2023,'106','11:00:00','12:30:00','Tue,Thu'),(7,7,7,'Fall',2023,'107','14:00:00','15:30:00','Mon,Wed,Fri'),(8,8,8,'Spring',2023,'108','08:00:00','09:30:00','Tue,Thu'),(9,9,9,'Fall',2023,'109','13:00:00','14:30:00','Mon,Wed,Fri'),(10,10,10,'Spring',2023,'110','10:00:00','11:30:00','Tue,Thu'),(11,11,11,'Fall',2023,'111','09:00:00','10:30:00','Mon,Wed,Fri'),(12,12,12,'Spring',2023,'112','11:00:00','12:30:00','Tue,Thu'),(13,13,13,'Fall',2023,'113','13:00:00','14:30:00','Mon,Wed,Fri'),(14,14,14,'Spring',2023,'114','08:30:00','10:00:00','Tue,Thu'),(15,15,15,'Fall',2023,'115','10:00:00','11:30:00','Mon,Wed,Fri'),(16,16,16,'Spring',2023,'116','11:00:00','12:30:00','Tue,Thu'),(17,17,17,'Fall',2023,'117','09:00:00','10:30:00','Mon,Wed,Fri'),(18,18,18,'Spring',2023,'118','14:00:00','15:30:00','Tue,Thu'),(19,19,19,'Fall',2023,'119','08:30:00','10:00:00','Mon,Wed,Fri'),(20,20,20,'Spring',2023,'120','15:00:00','16:30:00','Tue,Thu');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-04  7:19:05
