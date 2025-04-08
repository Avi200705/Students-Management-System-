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
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructor` (
  `instructor_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  PRIMARY KEY (`instructor_id`),
  UNIQUE KEY `email` (`email`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `instructor_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES (1,'Ravi','Shankar','ravi.shankar@chennai.edu','9888888888',1),(2,'Seema','Iyer','seema.iyer@chennai.edu','9888888889',2),(3,'Harish','Kumar','harish.kumar@chennai.edu','9888888890',3),(4,'Manish','Reddy','manish.reddy@chennai.edu','9888888891',4),(5,'Sandeep','Agarwal','sandeep.agarwal@chennai.edu','9888888892',5),(6,'Mahesh','Raj','mahesh.raj@chennai.edu','9888888893',6),(7,'Vani','Suresh','vani.suresh@chennai.edu','9888888894',7),(8,'Karthik','Kumar','karthik.kumar@chennai.edu','9888888895',8),(9,'Raghavendra','Gupta','raghavendra.gupta@chennai.edu','9888888896',9),(10,'Rekha','Nair','rekha.nair@chennai.edu','9888888897',10),(11,'Aishwarya','Rao','aishwarya.rao@chennai.edu','9888888898',11),(12,'Surya','Subramanian','surya.subramanian@chennai.edu','9888888899',12),(13,'Tharini','Iyer','tharini.iyer@chennai.edu','9888888900',13),(14,'Suresh','Babu','suresh.babu@chennai.edu','9888888901',14),(15,'Sumanth','Sharma','sumanth.sharma@chennai.edu','9888888902',15),(16,'Pradeep','Reddy','pradeep.reddy@chennai.edu','9888888903',16),(17,'Kiran','Venkatesh','kiran.venkatesh@chennai.edu','9888888904',17),(18,'Sivakumar','Vijayan','sivakumar.vijayan@chennai.edu','9888888905',18),(19,'Rani','Selvaraj','rani.selvaraj@chennai.edu','9888888906',19),(20,'Aravind','Babu','aravind.babu@chennai.edu','9888888907',20);
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
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
