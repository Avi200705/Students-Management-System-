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
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `hod_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Computer Science','Department of Computer Science and Engineering','Dr. Arun Kumar'),(2,'Mechanical Engineering','Department of Mechanical Engineering','Dr. Ravi Shankar'),(3,'Civil Engineering','Department of Civil Engineering','Dr. Priya Nair'),(4,'Electrical Engineering','Department of Electrical and Electronics Engineering','Dr. Harish Kumar'),(5,'Electronics','Department of Electronics and Communication','Dr. Seema Iyer'),(6,'Information Technology','Department of Information Technology','Dr. Sandeep Agarwal'),(7,'Physics','Department of Physics','Dr. Manish Reddy'),(8,'Mathematics','Department of Mathematics','Dr. Vani Suresh'),(9,'Chemistry','Department of Chemistry','Dr. Priya Sharma'),(10,'Biotechnology','Department of Biotechnology','Dr. Srikant Nair'),(11,'Mechanical Engineering','Department of Mechanical Engineering','Dr. Raghavendra Gupta'),(12,'Civil Engineering','Department of Civil Engineering','Dr. Rekha Nair'),(13,'Electrical Engineering','Department of Electrical Engineering','Dr. Karthik Kumar'),(14,'Computer Science','Department of Computer Science','Dr. Mahesh Raj'),(15,'Environmental Science','Department of Environmental Science','Dr. Tharini Iyer'),(16,'Aerospace Engineering','Department of Aerospace Engineering','Dr. Surya Subramanian'),(17,'Automobile Engineering','Department of Automobile Engineering','Dr. Suresh Babu'),(18,'Civil Engineering','Department of Civil Engineering','Dr. Pradeep Reddy'),(19,'Electrical Engineering','Department of Electrical Engineering','Dr. Sumanth Sharma'),(20,'Chemical Engineering','Department of Chemical Engineering','Dr. Aishwarya Rao');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-04  7:19:04
