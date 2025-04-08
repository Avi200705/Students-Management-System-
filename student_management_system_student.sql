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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `enrollment_date` date NOT NULL,
  `department_id` int DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `email` (`email`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Rajesh','Srinivasan','2001-05-12','Male','rajesh.s@chennai.edu','9876543210','123, Anna Nagar, Chennai','2022-06-15',1),(2,'Deepa','Raghavan','2001-03-18','Female','deepa.r@chennai.edu','9876543211','456, T Nagar, Chennai','2021-07-10',2),(3,'Vikram','Subramanian','2001-01-22','Male','vikram.s@chennai.edu','9876543212','789, Kotturpuram, Chennai','2020-08-18',3),(4,'Sangeetha','Rajendran','2001-06-05','Female','sangeetha.r@chennai.edu','9876543213','321, Adyar, Chennai','2023-01-12',4),(5,'Karthik','Nair','2000-09-15','Male','karthik.n@chennai.edu','9876543214','654, Velachery, Chennai','2022-09-20',5),(6,'Priya','Menon','2001-12-10','Female','priya.m@chennai.edu','9876543215','987, Besant Nagar, Chennai','2021-05-05',6),(7,'Suresh','Madhavan','2002-02-25','Male','suresh.m@chennai.edu','9876543216','234, Mount Road, Chennai','2020-09-15',7),(8,'Meena','Krishnan','2000-04-08','Female','meena.k@chennai.edu','9876543217','567, Mylapore, Chennai','2021-04-10',8),(9,'Arjun','Ravi','2001-07-25','Male','arjun.r@chennai.edu','9876543218','890, OMR, Chennai','2022-10-22',9),(10,'Nisha','Krishna','2000-10-05','Female','nisha.k@chennai.edu','9876543219','123, Egmore, Chennai','2023-02-15',10),(11,'Kiran','Venkatesh','2001-05-02','Male','kiran.v@chennai.edu','9876543220','456, Perambur, Chennai','2021-11-12',11),(12,'Rani','Selvaraj','2001-08-13','Female','rani.s@chennai.edu','9876543221','789, Choolaimedu, Chennai','2022-07-25',12),(13,'Sivakumar','Vijayan','2001-11-18','Male','sivakumar.v@chennai.edu','9876543222','321, Kovilambakkam, Chennai','2020-06-10',13),(14,'Aravind','Babu','2002-01-20','Male','aravind.b@chennai.edu','9876543223','654, Royapettah, Chennai','2022-02-18',14),(15,'Siti','Sundar','2000-07-28','Female','siti.s@chennai.edu','9876543224','987, Kodambakkam, Chennai','2021-03-12',15),(16,'Surya','Murugan','2000-09-01','Male','surya.m@chennai.edu','9876543225','234, Alandur, Chennai','2021-12-05',16),(17,'Rani','Vijayan','2001-04-03','Female','rani.v@chennai.edu','9876543226','567, Nungambakkam, Chennai','2023-01-18',17),(18,'Siddharth','Rajagopalan','2001-11-29','Male','siddharth.r@chennai.edu','9876543227','890, Tambaram, Chennai','2020-11-25',18),(19,'Asha','Ramaswamy','2000-08-19','Female','asha.r@chennai.edu','9876543228','123, Purasaiwakkam, Chennai','2022-06-10',19),(20,'Vignesh','Ravichandran','2001-12-30','Male','vignesh.r@chennai.edu','9876543229','456, Perungudi, Chennai','2023-03-01',20);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
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
