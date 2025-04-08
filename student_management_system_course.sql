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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_code` varchar(100) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `credit_hours` int NOT NULL,
  `description` text,
  `department_id` int DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `course_code` (`course_code`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'CS101','Introduction to Computer Science',3,'Introduction to the basics of computer science',1),(2,'ME102','Thermodynamics',4,'Study of heat, energy, and the physical properties of matter',2),(3,'CE103','Surveying and Geomatics',3,'Introduction to land surveying and geomatics',3),(4,'EE104','Circuit Analysis',4,'Study of electrical circuits and their applications',4),(5,'EC105','Digital Electronics',3,'Study of digital electronics and logic circuits',5),(6,'IT106','Database Systems',3,'Introduction to databases, SQL, and relational systems',6),(7,'PH107','Mechanics',4,'Study of forces, motion, and energy',7),(8,'MA108','Linear Algebra',3,'Study of linear systems and matrices',8),(9,'CH109','Organic Chemistry',4,'Study of carbon-based compounds and their reactions',9),(10,'BT110','Biotechnology',3,'Introduction to biotechnology and its applications',10),(11,'ME201','Fluid Mechanics',3,'Study of fluid dynamics and their applications',2),(12,'CE202','Structural Analysis',4,'Study of the forces and behavior of structures',3),(13,'EE203','Electromagnetic Fields',3,'Study of electric and magnetic fields',4),(14,'CS204','Data Structures',3,'Study of data storage and retrieval techniques',1),(15,'IT205','Computer Networks',3,'Introduction to networking and communication protocols',6),(16,'PH206','Electricity and Magnetism',4,'Study of electric charges and magnetic fields',7),(17,'MA207','Differential Equations',3,'Study of equations involving rates of change',8),(18,'CS208','Software Engineering',3,'Introduction to software development methodologies',1),(19,'ME209','Machine Design',4,'Study of mechanical components and machine systems',2),(20,'EE210','Power Systems',4,'Study of electric power generation and distribution',4);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
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
