-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seats` (
  `seatRow` char(1) NOT NULL,
  `seatNumber` int(11) NOT NULL,
  `available` int(1) DEFAULT NULL,
  `id` varchar(45) DEFAULT NULL,
  `a_name` varchar(45) NOT NULL,
  `time` time(4) NOT NULL,
  `b_no` int(6) DEFAULT NULL,
  PRIMARY KEY (`seatRow`,`seatNumber`,`a_name`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats`
--

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
INSERT INTO `seats` VALUES ('A',1,1,'6','a1','09:00:00.0000',NULL),('A',1,1,'1','a1','12:00:00.0000',NULL),('A',1,0,NULL,'a2','09:00:00.0000',NULL),('A',1,0,NULL,'a2','12:00:00.0000',NULL),('A',2,1,'6','a1','09:00:00.0000',NULL),('A',2,1,'1','a1','12:00:00.0000',NULL),('A',2,0,NULL,'a2','09:00:00.0000',NULL),('A',2,0,NULL,'a2','12:00:00.0000',NULL),('A',3,1,NULL,'a1','09:00:00.0000',NULL),('A',3,1,'1','a1','12:00:00.0000',NULL),('A',3,0,NULL,'a2','09:00:00.0000',NULL),('A',3,0,NULL,'a2','12:00:00.0000',NULL),('A',4,1,'1','a1','09:00:00.0000',NULL),('A',4,0,NULL,'a1','12:00:00.0000',NULL),('A',4,0,NULL,'a2','09:00:00.0000',NULL),('A',4,0,NULL,'a2','12:00:00.0000',NULL),('A',5,1,'1','a1','09:00:00.0000',NULL),('A',5,0,NULL,'a1','12:00:00.0000',NULL),('A',5,0,NULL,'a2','09:00:00.0000',NULL),('A',5,0,NULL,'a2','12:00:00.0000',NULL),('A',6,1,'1','a1','09:00:00.0000',NULL),('A',6,0,NULL,'a1','12:00:00.0000',NULL),('A',6,0,NULL,'a2','09:00:00.0000',NULL),('A',6,0,NULL,'a2','12:00:00.0000',NULL),('A',7,1,'1','a1','09:00:00.0000',NULL),('A',7,0,NULL,'a1','12:00:00.0000',NULL),('A',7,0,NULL,'a2','09:00:00.0000',NULL),('A',7,0,NULL,'a2','12:00:00.0000',NULL),('A',8,1,'7','a1','09:00:00.0000',NULL),('A',8,0,NULL,'a1','12:00:00.0000',NULL),('A',8,0,NULL,'a2','09:00:00.0000',NULL),('A',8,0,NULL,'a2','12:00:00.0000',NULL),('A',9,1,'7','a1','09:00:00.0000',NULL),('A',9,0,NULL,'a1','12:00:00.0000',NULL),('A',9,0,NULL,'a2','09:00:00.0000',NULL),('A',9,0,NULL,'a2','12:00:00.0000',NULL),('A',10,1,'7','a1','09:00:00.0000',NULL),('A',10,0,NULL,'a1','12:00:00.0000',NULL),('A',10,NULL,NULL,'a2','09:00:00.0000',NULL),('A',10,0,NULL,'a2','12:00:00.0000',NULL),('A',11,1,'7','a1','09:00:00.0000',NULL),('A',11,0,NULL,'a1','12:00:00.0000',NULL),('A',11,NULL,NULL,'a2','09:00:00.0000',NULL),('A',11,0,NULL,'a2','12:00:00.0000',NULL),('A',12,0,NULL,'a1','09:00:00.0000',NULL),('A',12,0,NULL,'a1','12:00:00.0000',NULL),('A',12,0,NULL,'a2','09:00:00.0000',NULL),('A',12,0,NULL,'a2','12:00:00.0000',NULL),('B',1,1,'1','a1','09:00:00.0000',NULL),('B',1,0,NULL,'a1','12:00:00.0000',NULL),('B',1,0,NULL,'a2','09:00:00.0000',NULL),('B',1,0,NULL,'a2','12:00:00.0000',NULL),('B',2,1,'1','a1','09:00:00.0000',NULL),('B',2,0,NULL,'a1','12:00:00.0000',NULL),('B',2,0,NULL,'a2','09:00:00.0000',NULL),('B',2,0,NULL,'a2','12:00:00.0000',NULL),('B',3,1,'1','a1','09:00:00.0000',NULL),('B',3,0,NULL,'a1','12:00:00.0000',NULL),('B',3,0,NULL,'a2','09:00:00.0000',NULL),('B',3,0,NULL,'a2','12:00:00.0000',NULL),('B',4,0,NULL,'a1','09:00:00.0000',NULL),('B',4,0,NULL,'a1','12:00:00.0000',NULL),('b',4,0,NULL,'a2','09:00:00.0000',NULL),('B',4,0,NULL,'a2','12:00:00.0000',NULL),('B',5,1,'1','a1','09:00:00.0000',NULL),('B',5,0,NULL,'a1','12:00:00.0000',NULL),('B',5,0,NULL,'a2','09:00:00.0000',NULL),('B',5,0,NULL,'a2','12:00:00.0000',NULL),('B',6,1,'1','a1','09:00:00.0000',NULL),('B',6,0,NULL,'a1','12:00:00.0000',NULL),('B',6,0,NULL,'a2','09:00:00.0000',NULL),('B',6,0,NULL,'a2','12:00:00.0000',NULL),('B',7,1,'1','a1','09:00:00.0000',NULL),('B',7,0,NULL,'a1','12:00:00.0000',NULL),('B',7,0,NULL,'a2','09:00:00.0000',NULL),('B',7,0,NULL,'a2','12:00:00.0000',NULL),('B',8,0,NULL,'a1','09:00:00.0000',NULL),('B',8,0,NULL,'a1','12:00:00.0000',NULL),('B',8,0,NULL,'a2','09:00:00.0000',NULL),('B',8,0,NULL,'a2','12:00:00.0000',NULL),('B',9,0,NULL,'a1','09:00:00.0000',NULL),('B',9,0,NULL,'a1','12:00:00.0000',NULL),('B',9,0,NULL,'a2','09:00:00.0000',NULL),('B',9,0,NULL,'a2','12:00:00.0000',NULL),('B',10,1,'1','a1','09:00:00.0000',NULL),('B',10,0,NULL,'a1','12:00:00.0000',NULL),('B',10,0,NULL,'a2','09:00:00.0000',NULL),('B',10,0,NULL,'a2','12:00:00.0000',NULL),('B',11,0,NULL,'a1','09:00:00.0000',NULL),('B',11,0,NULL,'a1','12:00:00.0000',NULL),('B',11,0,NULL,'a2','09:00:00.0000',NULL),('B',11,0,NULL,'a2','12:00:00.0000',NULL),('B',12,0,NULL,'a1','09:00:00.0000',NULL),('B',12,0,NULL,'a1','12:00:00.0000',NULL),('B',12,0,NULL,'a2','09:00:00.0000',NULL),('B',12,0,NULL,'a2','12:00:00.0000',NULL),('B',13,0,NULL,'a1','09:00:00.0000',NULL),('B',13,0,NULL,'a1','12:00:00.0000',NULL),('B',13,0,NULL,'a2','09:00:00.0000',NULL),('B',13,0,NULL,'a2','12:00:00.0000',NULL),('B',14,0,NULL,'a1','09:00:00.0000',NULL),('B',14,0,NULL,'a1','12:00:00.0000',NULL),('B',14,0,NULL,'a2','09:00:00.0000',NULL),('B',14,0,NULL,'a2','12:00:00.0000',NULL),('C',1,0,NULL,'a1','09:00:00.0000',NULL),('C',1,0,NULL,'a1','12:00:00.0000',NULL),('C',1,0,NULL,'a2','09:00:00.0000',NULL),('C',1,0,NULL,'a2','12:00:00.0000',NULL),('C',2,1,'1','a1','09:00:00.0000',NULL),('C',2,0,NULL,'a1','12:00:00.0000',NULL),('C',2,0,NULL,'a2','09:00:00.0000',NULL),('C',2,0,NULL,'a2','12:00:00.0000',NULL),('C',3,1,'1','a1','09:00:00.0000',NULL),('C',3,0,NULL,'a1','12:00:00.0000',NULL),('C',3,0,NULL,'a2','09:00:00.0000',NULL),('C',3,0,NULL,'a2','12:00:00.0000',NULL),('C',4,1,'1','a1','09:00:00.0000',NULL),('C',4,0,NULL,'a1','12:00:00.0000',NULL),('C',4,0,NULL,'a2','09:00:00.0000',NULL),('C',4,0,NULL,'a2','12:00:00.0000',NULL),('C',5,0,NULL,'a1','09:00:00.0000',NULL),('C',5,0,NULL,'a1','12:00:00.0000',NULL),('C',5,0,NULL,'a2','09:00:00.0000',NULL),('C',5,0,NULL,'a2','12:00:00.0000',NULL),('C',6,1,'1','a1','09:00:00.0000',NULL),('C',6,0,NULL,'a1','12:00:00.0000',NULL),('C',6,0,NULL,'a2','09:00:00.0000',NULL),('C',6,0,NULL,'a2','12:00:00.0000',NULL),('C',7,1,'1','a1','09:00:00.0000',NULL),('C',7,0,NULL,'a1','12:00:00.0000',NULL),('C',7,0,NULL,'a2','09:00:00.0000',NULL),('C',7,0,NULL,'a2','12:00:00.0000',NULL),('C',8,1,NULL,'a1','09:00:00.0000',NULL),('C',8,1,'1','a1','12:00:00.0000',NULL),('C',8,0,NULL,'a2','09:00:00.0000',NULL),('C',8,0,NULL,'a2','12:00:00.0000',NULL),('C',9,1,NULL,'a1','09:00:00.0000',NULL),('C',9,0,NULL,'a1','12:00:00.0000',NULL),('C',9,0,NULL,'a2','09:00:00.0000',NULL),('C',9,0,NULL,'a2','12:00:00.0000',NULL),('C',10,0,NULL,'a1','09:00:00.0000',NULL),('C',10,1,'1','a1','12:00:00.0000',NULL),('C',10,0,NULL,'a2','09:00:00.0000',NULL),('C',10,0,NULL,'a2','12:00:00.0000',NULL),('C',11,0,NULL,'a1','09:00:00.0000',NULL),('C',11,0,NULL,'a1','12:00:00.0000',NULL),('C',11,0,NULL,'a2','09:00:00.0000',NULL),('C',11,0,NULL,'a2','12:00:00.0000',NULL),('C',12,0,NULL,'a1','09:00:00.0000',NULL),('C',12,0,NULL,'a1','12:00:00.0000',NULL),('C',12,0,NULL,'a2','09:00:00.0000',NULL),('C',12,0,NULL,'a2','12:00:00.0000',NULL),('C',13,0,NULL,'a1','09:00:00.0000',NULL),('C',13,0,NULL,'a1','12:00:00.0000',NULL),('C',13,0,NULL,'a2','09:00:00.0000',NULL),('C',13,0,NULL,'a2','12:00:00.0000',NULL),('C',14,0,NULL,'a1','09:00:00.0000',NULL),('C',14,0,NULL,'a1','12:00:00.0000',NULL),('C',14,0,NULL,'a2','09:00:00.0000',NULL),('C',14,0,NULL,'a2','12:00:00.0000',NULL),('C',15,0,NULL,'a1','09:00:00.0000',NULL),('C',15,0,NULL,'a1','12:00:00.0000',NULL),('C',15,0,NULL,'a2','09:00:00.0000',NULL),('C',15,0,NULL,'a2','12:00:00.0000',NULL),('C',16,0,NULL,'a1','09:00:00.0000',NULL),('C',16,0,NULL,'a1','12:00:00.0000',NULL),('C',16,0,NULL,'a2','09:00:00.0000',NULL),('C',16,0,NULL,'a2','12:00:00.0000',NULL),('D',1,0,NULL,'a1','09:00:00.0000',NULL),('D',1,0,NULL,'a1','12:00:00.0000',NULL),('D',1,0,NULL,'a2','09:00:00.0000',NULL),('D',1,0,NULL,'a2','12:00:00.0000',NULL),('D',2,0,NULL,'a1','09:00:00.0000',NULL),('D',2,0,NULL,'a1','12:00:00.0000',NULL),('D',2,0,NULL,'a2','09:00:00.0000',NULL),('D',2,0,NULL,'a2','12:00:00.0000',NULL),('D',3,0,NULL,'a1','09:00:00.0000',NULL),('D',3,0,NULL,'a1','12:00:00.0000',NULL),('D',3,0,NULL,'a2','09:00:00.0000',NULL),('D',3,0,NULL,'a2','12:00:00.0000',NULL),('D',4,0,NULL,'a1','09:00:00.0000',NULL),('D',4,0,NULL,'a1','12:00:00.0000',NULL),('D',4,0,NULL,'a2','09:00:00.0000',NULL),('D',4,0,NULL,'a2','12:00:00.0000',NULL),('D',5,0,NULL,'a1','09:00:00.0000',NULL),('D',5,0,NULL,'a1','12:00:00.0000',NULL),('D',5,0,NULL,'a2','09:00:00.0000',NULL),('D',5,0,NULL,'a2','12:00:00.0000',NULL),('D',6,1,'1','a1','09:00:00.0000',NULL),('D',6,0,NULL,'a1','12:00:00.0000',NULL),('D',6,0,NULL,'a2','09:00:00.0000',NULL),('D',6,0,NULL,'a2','12:00:00.0000',NULL),('D',7,1,'1','a1','09:00:00.0000',NULL),('D',7,0,NULL,'a1','12:00:00.0000',NULL),('D',7,0,NULL,'a2','09:00:00.0000',NULL),('D',7,0,NULL,'a2','12:00:00.0000',NULL),('D',8,0,NULL,'a1','09:00:00.0000',NULL),('D',8,0,NULL,'a1','12:00:00.0000',NULL),('D',8,0,NULL,'a2','09:00:00.0000',NULL),('D',8,0,NULL,'a2','12:00:00.0000',NULL),('D',9,0,NULL,'a1','09:00:00.0000',NULL),('D',9,0,NULL,'a1','12:00:00.0000',NULL),('D',9,0,NULL,'a2','09:00:00.0000',NULL),('D',9,0,NULL,'a2','12:00:00.0000',NULL),('D',10,0,NULL,'a1','09:00:00.0000',NULL),('D',10,0,NULL,'a1','12:00:00.0000',NULL),('D',10,0,NULL,'a2','09:00:00.0000',NULL),('D',10,0,NULL,'a2','12:00:00.0000',NULL),('D',11,0,NULL,'a1','09:00:00.0000',NULL),('D',11,0,NULL,'a1','12:00:00.0000',NULL),('D',11,0,NULL,'a2','09:00:00.0000',NULL),('D',11,0,NULL,'a2','12:00:00.0000',NULL),('D',12,0,NULL,'a1','09:00:00.0000',NULL),('D',12,0,NULL,'a1','12:00:00.0000',NULL),('D',12,0,NULL,'a2','09:00:00.0000',NULL),('D',12,0,NULL,'a2','12:00:00.0000',NULL),('D',13,0,NULL,'a1','09:00:00.0000',NULL),('D',13,0,NULL,'a1','12:00:00.0000',NULL),('D',13,0,NULL,'a2','12:00:00.0000',NULL),('D',14,0,NULL,'a1','09:00:00.0000',NULL),('D',14,0,NULL,'a1','12:00:00.0000',NULL),('D',14,0,NULL,'a2','09:00:00.0000',NULL),('D',14,0,NULL,'a2','12:00:00.0000',NULL),('D',15,1,'1','a1','09:00:00.0000',NULL),('D',15,0,NULL,'a1','12:00:00.0000',NULL),('D',15,0,NULL,'a2','09:00:00.0000',NULL),('D',15,0,NULL,'a2','12:00:00.0000',NULL),('D',16,0,NULL,'a1','09:00:00.0000',NULL),('D',16,0,NULL,'a1','12:00:00.0000',NULL),('D',16,0,NULL,'a2','09:00:00.0000',NULL),('D',16,0,NULL,'a2','12:00:00.0000',NULL),('D',17,0,NULL,'a1','09:00:00.0000',NULL),('D',17,0,NULL,'a1','12:00:00.0000',NULL),('D',17,0,NULL,'a2','09:00:00.0000',NULL),('D',17,0,NULL,'a2','12:00:00.0000',NULL),('E',1,0,NULL,'a1','09:00:00.0000',NULL),('E',1,0,NULL,'a1','12:00:00.0000',NULL),('E',1,0,NULL,'a2','09:00:00.0000',NULL),('E',1,0,NULL,'a2','12:00:00.0000',NULL),('E',2,0,NULL,'a1','09:00:00.0000',NULL),('E',2,0,NULL,'a1','12:00:00.0000',NULL),('E',2,0,NULL,'a2','09:00:00.0000',NULL),('E',2,0,NULL,'a2','12:00:00.0000',NULL),('E',3,0,NULL,'a1','09:00:00.0000',NULL),('E',3,0,NULL,'a1','12:00:00.0000',NULL),('E',3,0,NULL,'a2','09:00:00.0000',NULL),('E',3,0,NULL,'a2','12:00:00.0000',NULL),('E',4,1,'1','a1','09:00:00.0000',NULL),('E',4,0,NULL,'a1','12:00:00.0000',NULL),('E',4,0,NULL,'a2','09:00:00.0000',NULL),('E',4,0,NULL,'a2','12:00:00.0000',NULL),('E',5,1,'1','a1','09:00:00.0000',NULL),('E',5,0,NULL,'a1','12:00:00.0000',NULL),('E',5,0,NULL,'a2','09:00:00.0000',NULL),('E',5,0,NULL,'a2','12:00:00.0000',NULL),('E',6,1,'1','a1','09:00:00.0000',NULL),('E',6,0,NULL,'a1','12:00:00.0000',NULL),('E',6,0,NULL,'a2','09:00:00.0000',NULL),('E',6,0,NULL,'a2','12:00:00.0000',NULL),('E',7,0,NULL,'a1','09:00:00.0000',NULL),('E',7,0,NULL,'a1','12:00:00.0000',NULL),('E',7,0,NULL,'a2','09:00:00.0000',NULL),('E',7,0,NULL,'a2','12:00:00.0000',NULL),('E',8,0,NULL,'a1','09:00:00.0000',NULL),('E',8,0,NULL,'a1','12:00:00.0000',NULL),('E',8,0,NULL,'a2','09:00:00.0000',NULL),('E',8,0,NULL,'a2','12:00:00.0000',NULL),('E',9,0,NULL,'a1','09:00:00.0000',NULL),('E',9,0,NULL,'a1','12:00:00.0000',NULL),('E',9,0,NULL,'a2','09:00:00.0000',NULL),('E',9,0,NULL,'a2','12:00:00.0000',NULL),('E',10,0,NULL,'a1','09:00:00.0000',NULL),('E',10,0,NULL,'a1','12:00:00.0000',NULL),('E',10,0,NULL,'a2','09:00:00.0000',NULL),('E',10,0,NULL,'a2','12:00:00.0000',NULL),('E',11,1,'1','a1','09:00:00.0000',NULL),('E',11,0,NULL,'a1','12:00:00.0000',NULL),('E',11,0,NULL,'a2','09:00:00.0000',NULL),('E',11,0,NULL,'a2','12:00:00.0000',NULL),('E',12,1,'1','a1','09:00:00.0000',NULL),('E',12,0,NULL,'a1','12:00:00.0000',NULL),('E',12,0,NULL,'a2','09:00:00.0000',NULL),('E',12,0,NULL,'a2','12:00:00.0000',NULL),('E',13,0,NULL,'a1','09:00:00.0000',NULL),('E',13,0,NULL,'a1','12:00:00.0000',NULL),('E',13,0,NULL,'a2','09:00:00.0000',NULL),('E',13,0,NULL,'a2','12:00:00.0000',NULL),('E',14,0,NULL,'a1','09:00:00.0000',NULL),('E',14,0,NULL,'a1','12:00:00.0000',NULL),('E',14,0,NULL,'a2','09:00:00.0000',NULL),('E',14,0,NULL,'a2','12:00:00.0000',NULL),('E',15,0,NULL,'a1','09:00:00.0000',NULL),('E',15,0,NULL,'a1','12:00:00.0000',NULL),('E',15,0,NULL,'a2','09:00:00.0000',NULL),('E',15,0,NULL,'a2','12:00:00.0000',NULL),('E',16,0,NULL,'a1','09:00:00.0000',NULL),('E',16,0,NULL,'a1','12:00:00.0000',NULL),('E',16,0,NULL,'a2','09:00:00.0000',NULL),('E',16,0,NULL,'a2','12:00:00.0000',NULL),('E',17,0,NULL,'a1','09:00:00.0000',NULL),('E',17,0,NULL,'a1','12:00:00.0000',NULL),('E',17,0,NULL,'a2','09:00:00.0000',NULL),('E',17,0,NULL,'a2','12:00:00.0000',NULL),('E',18,0,NULL,'a1','09:00:00.0000',NULL),('E',18,0,NULL,'a1','12:00:00.0000',NULL),('E',18,0,NULL,'a2','09:00:00.0000',NULL),('E',18,0,NULL,'a2','12:00:00.0000',NULL),('E',19,0,NULL,'a1','09:00:00.0000',NULL),('E',19,0,NULL,'a1','12:00:00.0000',NULL),('E',19,0,NULL,'a2','09:00:00.0000',NULL),('E',19,0,NULL,'a2','12:00:00.0000',NULL),('E',20,0,NULL,'a1','09:00:00.0000',NULL),('E',20,0,NULL,'a1','12:00:00.0000',NULL),('E',20,0,NULL,'a2','09:00:00.0000',NULL),('E',20,0,NULL,'a2','12:00:00.0000',NULL),('F',1,0,NULL,'a1','09:00:00.0000',NULL),('F',1,0,NULL,'a1','12:00:00.0000',NULL),('F',1,0,NULL,'a2','09:00:00.0000',NULL),('F',1,0,NULL,'a2','12:00:00.0000',NULL),('F',2,0,NULL,'a1','09:00:00.0000',NULL),('F',2,0,NULL,'a1','12:00:00.0000',NULL),('F',2,0,NULL,'a2','09:00:00.0000',NULL),('F',2,0,NULL,'a2','12:00:00.0000',NULL),('F',3,0,NULL,'a1','09:00:00.0000',NULL),('F',3,0,NULL,'a1','12:00:00.0000',NULL),('F',3,0,NULL,'a2','09:00:00.0000',NULL),('F',3,0,NULL,'a2','12:00:00.0000',NULL),('F',4,0,NULL,'a1','09:00:00.0000',NULL),('F',4,0,NULL,'a1','12:00:00.0000',NULL),('F',4,0,NULL,'a2','09:00:00.0000',NULL),('F',4,0,NULL,'a2','12:00:00.0000',NULL),('F',5,0,NULL,'a1','09:00:00.0000',NULL),('F',5,0,NULL,'a1','12:00:00.0000',NULL),('F',5,0,NULL,'a2','09:00:00.0000',NULL),('F',5,0,NULL,'a2','12:00:00.0000',NULL),('F',6,0,NULL,'a1','09:00:00.0000',NULL),('F',6,0,NULL,'a1','12:00:00.0000',NULL),('F',6,0,NULL,'a2','09:00:00.0000',NULL),('F',6,0,NULL,'a2','12:00:00.0000',NULL),('F',7,0,NULL,'a1','09:00:00.0000',NULL),('F',7,1,'1','a1','12:00:00.0000',NULL),('F',7,0,NULL,'a2','09:00:00.0000',NULL),('F',7,0,NULL,'a2','12:00:00.0000',NULL),('F',8,0,NULL,'a1','09:00:00.0000',NULL),('F',8,0,NULL,'a1','12:00:00.0000',NULL),('F',8,0,NULL,'a2','09:00:00.0000',NULL),('F',8,0,NULL,'a2','12:00:00.0000',NULL),('F',9,1,'1','a1','09:00:00.0000',NULL),('F',9,0,NULL,'a1','12:00:00.0000',NULL),('F',9,0,NULL,'a2','09:00:00.0000',NULL),('F',9,0,NULL,'a2','12:00:00.0000',NULL),('F',10,0,NULL,'a1','09:00:00.0000',NULL),('F',10,0,NULL,'a1','12:00:00.0000',NULL),('F',10,0,NULL,'a2','09:00:00.0000',NULL),('F',10,0,NULL,'a2','12:00:00.0000',NULL),('F',11,0,NULL,'a1','09:00:00.0000',NULL),('F',11,0,NULL,'a1','12:00:00.0000',NULL),('F',11,0,NULL,'a2','09:00:00.0000',NULL),('F',11,0,NULL,'a2','12:00:00.0000',NULL),('F',12,0,NULL,'a1','09:00:00.0000',NULL),('F',12,0,NULL,'a1','12:00:00.0000',NULL),('F',12,0,NULL,'a2','09:00:00.0000',NULL),('F',12,0,NULL,'a2','12:00:00.0000',NULL),('F',13,0,NULL,'a1','09:00:00.0000',NULL),('F',13,0,NULL,'a1','12:00:00.0000',NULL),('F',13,0,NULL,'a2','09:00:00.0000',NULL),('F',13,0,NULL,'a2','12:00:00.0000',NULL),('F',14,0,NULL,'a1','09:00:00.0000',NULL),('F',14,0,NULL,'a1','12:00:00.0000',NULL),('F',14,0,NULL,'a2','09:00:00.0000',NULL),('F',14,0,NULL,'a2','12:00:00.0000',NULL),('F',15,0,NULL,'a1','09:00:00.0000',NULL),('F',15,0,NULL,'a1','12:00:00.0000',NULL),('F',15,0,NULL,'a2','09:00:00.0000',NULL),('F',15,0,NULL,'a2','12:00:00.0000',NULL),('F',16,0,NULL,'a1','09:00:00.0000',NULL),('F',16,0,NULL,'a1','12:00:00.0000',NULL),('F',16,0,NULL,'a2','09:00:00.0000',NULL),('F',16,0,NULL,'a2','12:00:00.0000',NULL),('F',17,0,NULL,'a1','09:00:00.0000',NULL),('F',17,0,NULL,'a1','12:00:00.0000',NULL),('F',17,0,NULL,'a2','09:00:00.0000',NULL),('F',17,0,NULL,'a2','12:00:00.0000',NULL),('F',18,0,NULL,'a1','09:00:00.0000',NULL),('F',18,0,NULL,'a1','12:00:00.0000',NULL),('F',18,0,NULL,'a2','09:00:00.0000',NULL),('F',18,0,NULL,'a2','12:00:00.0000',NULL),('F',19,0,NULL,'a1','09:00:00.0000',NULL),('F',19,0,NULL,'a1','12:00:00.0000',NULL),('F',19,0,NULL,'a2','09:00:00.0000',NULL),('F',19,0,NULL,'a2','12:00:00.0000',NULL),('F',20,0,NULL,'a1','09:00:00.0000',NULL),('F',20,0,NULL,'a1','12:00:00.0000',NULL),('F',20,0,NULL,'a2','09:00:00.0000',NULL),('F',20,0,NULL,'a2','12:00:00.0000',NULL);
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

-- Dump completed on 2016-05-02 16:06:03
