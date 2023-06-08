-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: book_store_v1
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description_author` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_remove` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Description 1','email1@example.com',_binary '\0','Author 1','123456789'),(2,'Description 2','email2@example.com',_binary '\0','Author 2','987654321'),(3,'Description 3','email3@example.com',_binary '\0','Author 3','456789123'),(4,'Description 4','email4@example.com',_binary '\0','Author 4','987123456'),(5,'Description 5','email5@example.com',_binary '\0','Author 5','123987456'),(6,'Description 6','email6@example.com',_binary '\0','Author 6','654789321'),(7,'Description 7','email7@example.com',_binary '\0','Author 7','987654789'),(8,'Description 8','email8@example.com',_binary '\0','Author 8','789654123'),(9,'Description 9','email9@example.com',_binary '\0','Author 9','123456987'),(10,'Description 10','email10@example.com',_binary '\0','Author 10','654987123'),(11,'Description 11','email11@example.com',_binary '\0','Author 11','789123456'),(12,'Description 12','email12@example.com',_binary '\0','Author 12','987123654'),(13,'Description 13','email13@example.com',_binary '\0','Author 13','654789123'),(14,'Description 14','email14@example.com',_binary '\0','Author 14','321987654'),(15,'Description 15','email15@example.com',_binary '\0','Author 15','987654321');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `edition` int DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `is_remove` bit(1) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `release_date` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `pub_id` bigint DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `author_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsoyv7y5sapwm2743s99wafdo0` (`pub_id`),
  KEY `FKklnrv3weler2ftkweewlky958` (`author_id`),
  CONSTRAINT `FKklnrv3weler2ftkweewlky958` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`),
  CONSTRAINT `FKsoyv7y5sapwm2743s99wafdo0` FOREIGN KEY (`pub_id`) REFERENCES `publishing` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Mô tả sách 1',1,'https://picsum.photos/500/500?random',_binary '\0',38.22,'2022-07-23','Tiêu đề sách 1',2,86,5),(2,'Mô tả sách 2',7,'https://picsum.photos/500/500?random',_binary '\0',86,'2022-08-28','Tiêu đề sách 2',2,58,11),(3,'Mô tả sách 3',3,'https://picsum.photos/500/500?random',_binary '\0',0.83,'2022-12-10','Tiêu đề sách 3',3,84,12),(4,'Mô tả sách 4',9,'https://picsum.photos/500/500?random',_binary '\0',19.37,'2022-07-25','Tiêu đề sách 4',5,94,10),(5,'Mô tả sách 5',3,'https://picsum.photos/500/500?random',_binary '\0',75.61,'2023-04-13','Tiêu đề sách 5',3,67,14),(6,'Mô tả sách 6',1,'https://picsum.photos/500/500?random',_binary '\0',66.99,'2023-03-08','Tiêu đề sách 6',2,54,11),(7,'Mô tả sách 7',6,'https://picsum.photos/500/500?random',_binary '\0',51.18,'2023-03-19','Tiêu đề sách 7',4,73,9),(8,'Mô tả sách 8',3,'https://picsum.photos/500/500?random',_binary '\0',27.98,'2022-08-20','Tiêu đề sách 8',1,50,14),(9,'Mô tả sách 9',5,'https://picsum.photos/500/500?random',_binary '\0',50.81,'2023-01-31','Tiêu đề sách 9',2,83,12),(10,'Mô tả sách 10',1,'https://picsum.photos/500/500?random',_binary '\0',63.12,'2022-06-15','Tiêu đề sách 10',1,64,3),(11,'Mô tả sách 11',1,'https://picsum.photos/500/500?random',_binary '\0',33.2,'2022-12-22','Tiêu đề sách 11',2,74,8),(12,'Mô tả sách 12',2,'https://picsum.photos/500/500?random',_binary '\0',76.79,'2022-12-31','Tiêu đề sách 12',6,74,2),(13,'Mô tả sách 13',1,'https://picsum.photos/500/500?random',_binary '\0',48.09,'2023-01-26','Tiêu đề sách 13',3,50,13),(14,'Mô tả sách 14',10,'https://picsum.photos/500/500?random',_binary '\0',75.63,'2022-12-23','Tiêu đề sách 14',1,78,14),(15,'Mô tả sách 15',9,'https://picsum.photos/500/500?random',_binary '\0',46.77,'2023-03-15','Tiêu đề sách 15',5,91,14),(16,'Mô tả sách 16',2,'https://picsum.photos/500/500?random',_binary '\0',17.14,'2022-11-04','Tiêu đề sách 16',3,70,14),(17,'Mô tả sách 17',6,'https://picsum.photos/500/500?random',_binary '\0',89.82,'2023-04-13','Tiêu đề sách 17',1,79,11),(18,'Mô tả sách 18',11,'https://picsum.photos/500/500?random',_binary '\0',19.23,'2023-02-09','Tiêu đề sách 18',1,83,13),(19,'Mô tả sách 19',4,'https://picsum.photos/500/500?random',_binary '\0',20.78,'2023-03-17','Tiêu đề sách 19',4,76,4),(20,'Mô tả sách 20',11,'https://picsum.photos/500/500?random',_binary '\0',70.29,'2022-06-13','Tiêu đề sách 20',5,83,9),(21,'Mô tả sách 21',2,'https://picsum.photos/500/500?random',_binary '\0',25.2,'2022-08-07','Tiêu đề sách 21',3,85,1),(22,'Mô tả sách 22',7,'https://picsum.photos/500/500?random',_binary '\0',50.57,'2022-07-18','Tiêu đề sách 22',6,74,7),(23,'Mô tả sách 23',12,'https://picsum.photos/500/500?random',_binary '\0',4.29,'2023-02-10','Tiêu đề sách 23',3,69,3),(24,'Mô tả sách 24',6,'https://picsum.photos/500/500?random',_binary '\0',75.75,'2022-12-19','Tiêu đề sách 24',1,71,10),(25,'Mô tả sách 25',11,'https://picsum.photos/500/500?random',_binary '\0',33.59,'2022-06-19','Tiêu đề sách 25',6,98,7),(26,'Mô tả sách 26',4,'https://picsum.photos/500/500?random',_binary '\0',86.75,'2022-12-03','Tiêu đề sách 26',6,77,7),(27,'Mô tả sách 27',3,'https://picsum.photos/500/500?random',_binary '\0',33.51,'2022-06-24','Tiêu đề sách 27',5,89,12),(28,'Mô tả sách 28',1,'https://picsum.photos/500/500?random',_binary '\0',68.88,'2022-12-30','Tiêu đề sách 28',1,65,10),(29,'Mô tả sách 29',4,'https://picsum.photos/500/500?random',_binary '\0',12.19,'2022-09-19','Tiêu đề sách 29',2,61,14),(30,'Mô tả sách 30',12,'https://picsum.photos/500/500?random',_binary '\0',3.33,'2023-01-29','Tiêu đề sách 30',5,58,7),(31,'Mô tả sách 31',4,'https://picsum.photos/500/500?random',_binary '\0',55.42,'2022-08-12','Tiêu đề sách 31',3,59,8),(32,'Mô tả sách 32',9,'https://picsum.photos/500/500?random',_binary '\0',40.64,'2022-08-22','Tiêu đề sách 32',5,72,3),(33,'Mô tả sách 33',5,'https://picsum.photos/500/500?random',_binary '\0',48.6,'2023-01-13','Tiêu đề sách 33',4,80,7),(34,'Mô tả sách 34',6,'https://picsum.photos/500/500?random',_binary '\0',78.88,'2022-12-04','Tiêu đề sách 34',2,84,8),(35,'Mô tả sách 35',5,'https://picsum.photos/500/500?random',_binary '\0',20.39,'2022-06-13','Tiêu đề sách 35',2,82,6),(36,'Mô tả sách 36',8,'https://picsum.photos/500/500?random',_binary '\0',4.21,'2023-01-02','Tiêu đề sách 36',1,55,4),(37,'Mô tả sách 37',10,'https://picsum.photos/500/500?random',_binary '\0',93.71,'2023-02-20','Tiêu đề sách 37',4,80,2),(38,'Mô tả sách 38',5,'https://picsum.photos/500/500?random',_binary '\0',2.63,'2022-07-01','Tiêu đề sách 38',4,86,14),(39,'Mô tả sách 39',3,'https://picsum.photos/500/500?random',_binary '\0',10.15,'2022-06-17','Tiêu đề sách 39',4,89,1),(40,'Mô tả sách 40',11,'https://picsum.photos/500/500?random',_binary '\0',70.2,'2022-07-20','Tiêu đề sách 40',2,85,7),(41,'Mô tả sách 41',11,'https://picsum.photos/500/500?random',_binary '\0',55.98,'2023-04-30','Tiêu đề sách 41',6,59,3),(42,'Mô tả sách 42',12,'https://picsum.photos/500/500?random',_binary '\0',13.78,'2022-07-24','Tiêu đề sách 42',6,93,8),(43,'Mô tả sách 43',2,'https://picsum.photos/500/500?random',_binary '\0',92.67,'2023-04-11','Tiêu đề sách 43',1,86,1),(44,'Mô tả sách 44',7,'https://picsum.photos/500/500?random',_binary '\0',70.89,'2022-07-09','Tiêu đề sách 44',3,50,12),(45,'Mô tả sách 45',6,'https://picsum.photos/500/500?random',_binary '\0',9.11,'2022-06-08','Tiêu đề sách 45',5,95,10),(46,'Mô tả sách 46',8,'https://picsum.photos/500/500?random',_binary '\0',82.55,'2023-02-04','Tiêu đề sách 46',2,73,13),(47,'Mô tả sách 47',1,'https://picsum.photos/500/500?random',_binary '\0',75.28,'2022-12-01','Tiêu đề sách 47',2,81,6),(48,'Mô tả sách 48',1,'https://picsum.photos/500/500?random',_binary '\0',34.85,'2022-11-18','Tiêu đề sách 48',5,84,4),(49,'Mô tả sách 49',12,'https://picsum.photos/500/500?random',_binary '\0',56.46,'2022-06-13','Tiêu đề sách 49',2,76,1),(50,'Mô tả sách 50',3,'https://picsum.photos/500/500?random',_binary '\0',41.55,'2023-01-12','Tiêu đề sách 50',5,78,9),(64,NULL,NULL,NULL,_binary '\0',70.29,'2022-06-13','Javascript',5,NULL,9),(65,'Javascript',11,'https://picsum.photos/500/500?random',_binary '\0',70.29,'2022-06-13','Javascript',5,83,9),(66,'PHP',11,'https://picsum.photos/500/500?random',_binary '\0',70.29,'2022-06-13','PHP',5,83,9),(67,'C#',11,'https://picsum.photos/500/500?random',_binary '\0',70.29,'2022-06-13','C#',5,83,9),(68,'javaWeb',11,'https://picsum.photos/500/500?random',_binary '\0',70.29,'2022-06-13','javaWeb',2,83,9);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_type`
--

DROP TABLE IF EXISTS `book_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_remove` bit(1) DEFAULT NULL,
  `book_id` bigint DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfpegoqhrvfqf7lqsbro1xifuv` (`book_id`),
  KEY `FKneqyn34vero33c12ovrkkegwt` (`type_id`),
  CONSTRAINT `FKfpegoqhrvfqf7lqsbro1xifuv` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  CONSTRAINT `FKneqyn34vero33c12ovrkkegwt` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=333 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_type`
--

LOCK TABLES `book_type` WRITE;
/*!40000 ALTER TABLE `book_type` DISABLE KEYS */;
INSERT INTO `book_type` VALUES (64,_binary '\0',8,11),(65,_binary '\0',8,9),(66,_binary '\0',10,2),(67,_binary '\0',10,4),(68,_binary '\0',14,1),(69,_binary '\0',14,6),(70,_binary '\0',17,2),(71,_binary '\0',17,4),(72,_binary '\0',18,1),(73,_binary '\0',18,4),(74,_binary '\0',24,3),(75,_binary '\0',24,4),(76,_binary '\0',28,10),(77,_binary '\0',28,3),(78,_binary '\0',36,8),(79,_binary '\0',36,7),(80,_binary '\0',43,12),(81,_binary '\0',43,11),(82,_binary '\0',1,9),(83,_binary '\0',1,12),(84,_binary '\0',2,8),(85,_binary '\0',2,1),(86,_binary '\0',6,7),(87,_binary '\0',6,8),(88,_binary '\0',9,4),(89,_binary '\0',9,9),(90,_binary '\0',11,9),(91,_binary '\0',11,5),(92,_binary '\0',29,12),(93,_binary '\0',29,5),(94,_binary '\0',34,1),(95,_binary '\0',34,3),(96,_binary '\0',35,1),(97,_binary '\0',35,5),(98,_binary '\0',40,9),(99,_binary '\0',40,5),(100,_binary '\0',46,12),(101,_binary '\0',46,6),(102,_binary '\0',47,5),(103,_binary '\0',47,8),(104,_binary '\0',49,10),(105,_binary '\0',49,4),(106,_binary '\0',3,2),(107,_binary '\0',3,10),(108,_binary '\0',5,5),(109,_binary '\0',5,7),(110,_binary '\0',13,7),(111,_binary '\0',13,3),(112,_binary '\0',16,4),(113,_binary '\0',16,1),(114,_binary '\0',21,4),(115,_binary '\0',21,4),(116,_binary '\0',23,7),(117,_binary '\0',23,1),(118,_binary '\0',31,4),(119,_binary '\0',31,5),(120,_binary '\0',44,3),(121,_binary '\0',44,11),(122,_binary '\0',7,7),(123,_binary '\0',7,3),(124,_binary '\0',19,6),(125,_binary '\0',19,7),(126,_binary '\0',33,7),(127,_binary '\0',33,2),(128,_binary '\0',37,10),(129,_binary '\0',37,8),(130,_binary '\0',38,11),(131,_binary '\0',38,5),(132,_binary '\0',39,3),(133,_binary '\0',39,12),(134,_binary '\0',4,3),(135,_binary '\0',4,4),(136,_binary '\0',15,8),(137,_binary '\0',15,3),(138,_binary '\0',20,4),(139,_binary '\0',20,11),(140,_binary '\0',27,6),(141,_binary '\0',27,10),(142,_binary '\0',30,8),(143,_binary '\0',30,10),(144,_binary '\0',32,12),(145,_binary '\0',32,5),(146,_binary '\0',45,2),(147,_binary '\0',45,8),(148,_binary '\0',48,7),(149,_binary '\0',48,10),(150,_binary '\0',50,5),(151,_binary '\0',50,5),(152,_binary '\0',12,11),(153,_binary '\0',12,1),(154,_binary '\0',22,10),(155,_binary '\0',22,10),(156,_binary '\0',25,8),(157,_binary '\0',25,8),(158,_binary '\0',26,3),(159,_binary '\0',26,3),(160,_binary '\0',41,8),(161,_binary '\0',41,3),(162,_binary '\0',42,5),(163,_binary '\0',42,3),(164,_binary '\0',8,12),(165,_binary '\0',10,1),(166,_binary '\0',14,6),(167,_binary '\0',17,4),(168,_binary '\0',18,12),(169,_binary '\0',24,11),(170,_binary '\0',28,9),(171,_binary '\0',36,9),(172,_binary '\0',43,8),(173,_binary '\0',1,12),(174,_binary '\0',2,10),(175,_binary '\0',6,3),(176,_binary '\0',9,10),(177,_binary '\0',11,2),(178,_binary '\0',29,2),(179,_binary '\0',34,6),(180,_binary '\0',35,10),(181,_binary '\0',40,7),(182,_binary '\0',46,6),(183,_binary '\0',47,8),(184,_binary '\0',49,8),(185,_binary '\0',3,5),(186,_binary '\0',5,1),(187,_binary '\0',13,1),(188,_binary '\0',16,11),(189,_binary '\0',21,7),(190,_binary '\0',23,12),(191,_binary '\0',31,3),(192,_binary '\0',44,2),(193,_binary '\0',7,11),(194,_binary '\0',19,3),(195,_binary '\0',33,5),(196,_binary '\0',37,4),(197,_binary '\0',38,2),(198,_binary '\0',39,11),(199,_binary '\0',4,2),(200,_binary '\0',15,11),(201,_binary '\0',20,12),(202,_binary '\0',27,3),(203,_binary '\0',30,2),(204,_binary '\0',32,11),(205,_binary '\0',45,3),(206,_binary '\0',48,4),(207,_binary '\0',50,11),(208,_binary '\0',12,5),(209,_binary '\0',22,5),(210,_binary '\0',25,11),(211,_binary '\0',26,3),(212,_binary '\0',41,5),(213,_binary '\0',42,2),(322,_binary '\0',64,5),(323,_binary '\0',64,7),(324,_binary '\0',65,5),(325,_binary '\0',65,7),(326,_binary '\0',66,5),(327,_binary '\0',66,7),(328,_binary '\0',67,5),(329,_binary '\0',67,7),(330,_binary '\0',68,1),(331,_binary '\0',68,5),(332,_binary '\0',68,7);
/*!40000 ALTER TABLE `book_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_remove` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `year_of_birth` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Address 41','email35588@example.com',_binary '\0','Customer 58','Phone 80820750','1985'),(2,'Address 82','email63416@example.com',_binary '\0','Customer 72','Phone 67153060','1980'),(3,'Address 62','email93763@example.com',_binary '\0','Customer 84','Phone 35009121','1982'),(4,'Address 31','email89741@example.com',_binary '\0','Customer 57','Phone 13317815','2018'),(5,'Address 36','email42188@example.com',_binary '\0','Customer 4','Phone 93216459','1997'),(6,'Address 43','email92341@example.com',_binary '\0','Customer 33','Phone 86822990','1987'),(7,'Address 86','email71419@example.com',_binary '\0','Customer 1','Phone 89822869','1993'),(8,'Address 80','email5095@example.com',_binary '\0','Customer 88','Phone 21983721','1993'),(9,'Address 17','email67073@example.com',_binary '\0','Customer 86','Phone 27833084','2010'),(10,'Address 81','email27854@example.com',_binary '\0','Customer 98','Phone 2636119','1980'),(11,'Address 65','email26642@example.com',_binary '\0','Customer 39','Phone 12602023','1993'),(12,'Address 81','email33455@example.com',_binary '\0','Customer 27','Phone 33103025','2012'),(13,'Address 84','email31554@example.com',_binary '\0','Customer 9','Phone 48712691','1978'),(14,'Address 56','email51194@example.com',_binary '\0','Customer 91','Phone 98646882','1980'),(15,'Address 3','email69660@example.com',_binary '\0','Customer 43','Phone 1574783','2010'),(16,'Address 71','email42466@example.com',_binary '\0','Customer 2','Phone 80009728','2017'),(17,'Address 4','email1880@example.com',_binary '\0','Customer 100','Phone 93734793','2004'),(18,'Address 14','email73174@example.com',_binary '\0','Customer 27','Phone 13920069','2014'),(19,'Address 61','email87232@example.com',_binary '\0','Customer 54','Phone 4107916','2000');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_remove` bit(1) DEFAULT NULL,
  `orders_date` varchar(255) DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK624gtjin3po807j3vix093tlf` (`customer_id`),
  CONSTRAINT `FK624gtjin3po807j3vix093tlf` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (32,_binary '\0','2022-09-15',13),(33,_binary '\0','2023-02-03',14),(34,_binary '\0','2022-06-28',12),(35,_binary '\0','2022-08-02',18),(36,_binary '\0','2022-10-28',9),(37,_binary '\0','2022-06-29',15),(38,_binary '\0','2023-01-15',9),(39,_binary '\0','2023-05-31',13),(40,_binary '\0','2022-08-04',4),(41,_binary '\0','2022-08-12',13),(42,_binary '\0','2023-05-27',2),(43,_binary '\0','2023-03-19',17),(44,_binary '\0','2022-07-18',10),(45,_binary '\0','2022-07-08',18),(46,_binary '\0','2023-01-03',16),(47,_binary '\0','2022-08-09',12),(48,_binary '\0','2022-07-12',6),(49,_binary '\0','2022-09-07',14),(50,_binary '\0','2023-05-11',13),(51,_binary '\0','2022-09-27',8),(52,_binary '\0','2022-11-24',7),(53,_binary '\0','2022-07-14',14),(54,_binary '\0','2023-02-20',8),(55,_binary '\0','2022-12-16',6),(56,_binary '\0','2023-01-23',11),(57,_binary '\0','2022-08-26',4),(58,_binary '\0','2022-11-30',8),(59,_binary '\0','2022-08-05',10),(60,_binary '\0','2023-02-25',15),(61,_binary '\0','2022-09-03',3),(62,_binary '\0','2022-06-26',9),(63,_binary '\0','2023-04-06',8),(64,_binary '\0','2022-09-26',13),(65,_binary '\0','2022-09-12',11),(66,_binary '\0','2022-09-24',19),(67,_binary '\0','2022-09-07',11),(68,_binary '\0','2022-07-16',1),(69,_binary '\0','2023-03-11',8),(70,_binary '\0','2022-11-22',2),(71,_binary '\0','2023-04-28',11),(72,_binary '\0','2023-03-11',18),(73,_binary '\0','2022-11-02',9),(74,_binary '\0','2023-04-14',12),(75,_binary '\0','2022-12-12',19),(76,_binary '\0','2022-07-21',9),(77,_binary '\0','2023-02-03',19),(78,_binary '\0','2022-11-23',14),(79,_binary '\0','2023-04-04',11),(80,_binary '\0','2022-12-04',4),(81,_binary '\0','2023-05-09',18),(82,_binary '\0','2022-06-28',13),(83,_binary '\0','2023-03-30',16),(84,_binary '\0','2023-04-11',11),(85,_binary '\0','2023-03-09',3),(86,_binary '\0','2023-02-12',16),(87,_binary '\0','2022-08-21',3),(88,_binary '\0','2023-03-06',11),(89,_binary '\0','2022-09-21',14),(90,_binary '\0','2023-03-28',9),(91,_binary '\0','2023-02-02',12),(92,_binary '\0','2022-09-11',19),(93,_binary '\0','2022-07-03',16),(94,_binary '\0','2023-05-18',4),(95,_binary '\0','2022-10-02',15),(96,_binary '\0','2023-01-07',2),(97,_binary '\0','2022-09-01',16),(98,_binary '\0','2022-08-07',9),(99,_binary '\0','2022-06-21',17),(100,_binary '\0','2022-08-27',3),(101,_binary '\0','2023-04-24',10),(102,_binary '\0','2023-02-08',3),(103,_binary '\0','2023-04-29',5),(104,_binary '\0','2023-04-24',17),(105,_binary '\0','2023-02-07',18),(106,_binary '\0','2023-04-09',16),(107,_binary '\0','2023-04-25',7),(108,_binary '\0','2022-08-23',12),(109,_binary '\0','2022-06-21',2),(110,_binary '\0','2023-04-08',12),(111,_binary '\0','2022-12-08',19),(112,_binary '\0','2022-06-17',10),(113,_binary '\0','2023-05-28',8),(114,_binary '\0','2022-08-21',19),(115,_binary '\0','2022-07-29',1),(116,_binary '\0','2023-04-18',3),(117,_binary '\0','2022-07-20',5),(118,_binary '\0','2022-11-17',13),(119,_binary '\0','2022-10-29',17),(120,_binary '\0','2022-11-23',9),(121,_binary '\0','2022-08-30',6),(122,_binary '\0','2022-08-27',1),(123,_binary '\0','2022-07-14',17),(124,_binary '\0','2023-05-11',19),(125,_binary '\0','2023-02-11',10),(126,_binary '\0','2023-01-22',2),(127,_binary '\0','2023-03-18',13),(128,_binary '\0','2022-07-20',3),(129,_binary '\0','2022-08-24',2),(130,_binary '\0','2022-06-09',13),(131,_binary '\0','2022-08-12',19);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_detail`
--

DROP TABLE IF EXISTS `orders_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_remove` bit(1) DEFAULT NULL,
  `book_id` bigint DEFAULT NULL,
  `orders_id` bigint DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh53m9am86l9ohytl283d464vo` (`book_id`),
  KEY `FKlt3mrhyikkt94xukyqrv652jd` (`orders_id`),
  CONSTRAINT `FKh53m9am86l9ohytl283d464vo` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  CONSTRAINT `FKlt3mrhyikkt94xukyqrv652jd` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_detail`
--

LOCK TABLES `orders_detail` WRITE;
/*!40000 ALTER TABLE `orders_detail` DISABLE KEYS */;
INSERT INTO `orders_detail` VALUES (1,_binary '\0',12,64,10),(2,_binary '\0',27,75,7),(3,_binary '\0',7,39,5),(4,_binary '\0',28,60,5),(5,_binary '\0',18,93,7),(6,_binary '\0',21,35,2),(7,_binary '\0',25,40,6),(8,_binary '\0',26,37,5),(9,_binary '\0',25,67,6),(10,_binary '\0',8,35,17),(11,_binary '\0',15,45,3),(12,_binary '\0',17,37,4),(13,_binary '\0',40,85,12),(14,_binary '\0',43,76,6),(15,_binary '\0',11,77,13),(16,_binary '\0',12,83,8),(17,_binary '\0',24,84,2),(18,_binary '\0',39,38,4),(19,_binary '\0',28,59,14),(20,_binary '\0',15,72,17),(21,_binary '\0',35,34,2),(22,_binary '\0',30,93,18),(23,_binary '\0',44,55,6),(24,_binary '\0',1,74,15),(25,_binary '\0',6,88,18),(26,_binary '\0',1,48,3),(27,_binary '\0',40,56,2),(28,_binary '\0',21,37,19),(29,_binary '\0',31,98,10),(30,_binary '\0',39,36,10),(31,_binary '\0',2,55,19),(32,_binary '\0',31,41,7),(33,_binary '\0',11,81,17),(34,_binary '\0',20,58,5),(35,_binary '\0',35,71,10),(36,_binary '\0',33,62,18),(37,_binary '\0',8,88,17),(38,_binary '\0',40,55,11),(39,_binary '\0',1,42,2),(40,_binary '\0',1,80,19),(41,_binary '\0',48,35,7),(42,_binary '\0',45,42,17),(43,_binary '\0',20,70,6),(44,_binary '\0',16,46,16),(45,_binary '\0',19,46,20),(46,_binary '\0',10,56,15),(47,_binary '\0',12,48,13),(48,_binary '\0',16,32,19),(49,_binary '\0',28,87,15),(50,_binary '\0',34,78,19),(51,_binary '\0',43,95,7),(52,_binary '\0',8,97,20),(53,_binary '\0',17,76,16),(54,_binary '\0',40,67,19),(55,_binary '\0',48,81,9),(56,_binary '\0',9,42,5),(57,_binary '\0',30,69,19),(58,_binary '\0',23,36,20),(59,_binary '\0',10,70,1),(60,_binary '\0',46,61,3),(61,_binary '\0',17,79,13),(62,_binary '\0',49,46,16),(63,_binary '\0',20,56,1),(64,_binary '\0',31,38,16),(65,_binary '\0',42,55,16),(66,_binary '\0',13,58,14),(67,_binary '\0',7,91,18),(68,_binary '\0',10,46,10),(69,_binary '\0',32,33,16),(70,_binary '\0',37,65,6),(71,_binary '\0',9,62,5),(72,_binary '\0',29,98,7),(73,_binary '\0',9,96,18),(74,_binary '\0',14,50,8),(75,_binary '\0',32,68,5),(76,_binary '\0',25,41,20),(77,_binary '\0',29,65,7),(78,_binary '\0',26,63,13),(79,_binary '\0',20,35,2),(80,_binary '\0',27,66,11),(81,_binary '\0',33,34,8),(82,_binary '\0',34,40,7),(83,_binary '\0',48,60,9),(84,_binary '\0',6,74,4),(85,_binary '\0',19,64,11),(86,_binary '\0',3,36,3),(87,_binary '\0',31,100,4),(88,_binary '\0',7,66,8),(89,_binary '\0',45,53,10),(90,_binary '\0',37,35,4),(91,_binary '\0',26,56,8),(92,_binary '\0',11,40,11),(93,_binary '\0',19,61,7),(94,_binary '\0',47,89,3),(95,_binary '\0',31,40,15),(96,_binary '\0',8,58,3),(97,_binary '\0',22,38,12),(98,_binary '\0',31,92,11),(99,_binary '\0',38,99,16),(100,_binary '\0',36,59,8),(101,_binary '\0',3,32,10),(102,_binary '\0',23,32,6),(103,_binary '\0',6,46,20),(104,_binary '\0',50,59,20),(105,_binary '\0',48,100,1),(106,_binary '\0',6,56,4),(107,_binary '\0',23,64,18),(108,_binary '\0',39,100,17),(109,_binary '\0',50,46,11),(110,_binary '\0',10,96,4),(111,_binary '\0',50,59,8),(112,_binary '\0',37,37,4),(113,_binary '\0',9,43,19),(114,_binary '\0',32,89,20),(115,_binary '\0',26,92,5),(116,_binary '\0',3,53,2),(117,_binary '\0',23,65,14),(118,_binary '\0',46,59,3),(119,_binary '\0',46,73,14),(120,_binary '\0',34,58,1),(121,_binary '\0',43,51,3),(122,_binary '\0',49,38,12),(123,_binary '\0',48,61,9),(124,_binary '\0',3,86,8),(125,_binary '\0',34,64,14),(126,_binary '\0',8,91,3),(127,_binary '\0',3,53,14),(128,_binary '\0',25,86,20),(129,_binary '\0',42,60,19),(130,_binary '\0',24,59,13),(131,_binary '\0',26,82,8),(132,_binary '\0',19,98,2),(133,_binary '\0',39,90,4),(134,_binary '\0',39,100,16),(135,_binary '\0',36,57,4),(136,_binary '\0',36,82,14),(137,_binary '\0',15,100,15),(138,_binary '\0',6,57,15),(139,_binary '\0',24,70,7),(140,_binary '\0',42,58,10),(141,_binary '\0',2,81,8),(142,_binary '\0',49,41,10),(143,_binary '\0',8,52,5),(144,_binary '\0',41,97,15),(145,_binary '\0',49,87,19),(146,_binary '\0',15,58,8),(147,_binary '\0',1,34,3),(148,_binary '\0',35,36,9),(149,_binary '\0',38,71,17),(150,_binary '\0',47,99,16),(151,_binary '\0',8,80,11),(152,_binary '\0',4,70,5),(153,_binary '\0',43,92,12),(154,_binary '\0',3,45,4),(155,_binary '\0',47,87,5),(156,_binary '\0',42,93,12),(157,_binary '\0',5,72,4),(158,_binary '\0',16,37,4),(159,_binary '\0',45,41,5),(160,_binary '\0',16,35,15),(161,_binary '\0',41,99,19),(162,_binary '\0',26,64,11),(163,_binary '\0',15,76,16),(164,_binary '\0',25,74,6),(165,_binary '\0',11,83,1),(166,_binary '\0',25,97,8),(167,_binary '\0',19,94,14),(168,_binary '\0',28,100,9),(169,_binary '\0',17,61,20),(170,_binary '\0',5,59,14),(171,_binary '\0',35,72,11),(172,_binary '\0',25,32,11),(173,_binary '\0',5,48,3),(174,_binary '\0',4,45,20),(175,_binary '\0',1,68,12),(176,_binary '\0',20,90,18),(177,_binary '\0',16,87,15),(178,_binary '\0',20,37,20),(179,_binary '\0',7,97,15),(180,_binary '\0',25,50,14),(181,_binary '\0',3,74,3),(182,_binary '\0',27,44,16),(183,_binary '\0',29,60,8),(184,_binary '\0',12,37,10),(185,_binary '\0',7,61,8),(186,_binary '\0',16,84,8),(187,_binary '\0',13,76,17),(188,_binary '\0',2,85,19),(189,_binary '\0',32,35,3),(190,_binary '\0',37,56,18),(191,_binary '\0',11,49,1),(192,_binary '\0',41,59,10),(193,_binary '\0',26,79,6),(194,_binary '\0',20,62,1),(195,_binary '\0',45,59,4),(196,_binary '\0',14,62,19),(197,_binary '\0',14,47,2),(198,_binary '\0',37,71,13),(199,_binary '\0',19,70,17),(200,_binary '\0',20,86,4),(201,_binary '\0',6,97,11),(202,_binary '\0',26,70,3),(203,_binary '\0',45,43,1),(204,_binary '\0',21,82,14),(205,_binary '\0',41,60,8),(206,_binary '\0',5,33,19),(207,_binary '\0',17,70,9),(208,_binary '\0',25,39,9),(209,_binary '\0',49,68,16);
/*!40000 ALTER TABLE `orders_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishing`
--

DROP TABLE IF EXISTS `publishing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishing` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_remove` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishing`
--

LOCK TABLES `publishing` WRITE;
/*!40000 ALTER TABLE `publishing` DISABLE KEYS */;
INSERT INTO `publishing` VALUES (1,_binary '\0','Kim Đồng'),(2,_binary '\0','Nhà nước'),(3,_binary '\0','Thanh Niên'),(4,_binary '\0','Quân Đội'),(5,_binary '\0','Lao Động'),(6,_binary '\0','Trẻ');
/*!40000 ALTER TABLE `publishing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_remove` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,_binary '\0','Tâm lý'),(2,_binary '\0','Hành động'),(3,_binary '\0','Hài hước'),(4,_binary '\0','Trinh thám'),(5,_binary '\0','Khoa học'),(6,_binary '\0','Kinh tế'),(7,_binary '\0','IT'),(8,_binary '\0','SGK'),(9,_binary '\0','Tiểu thuyết'),(10,_binary '\0','Truyện tranh'),(11,_binary '\0','Vũ trụ'),(12,_binary '\0','Khám phá');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'book_store_v1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-08  7:20:03
