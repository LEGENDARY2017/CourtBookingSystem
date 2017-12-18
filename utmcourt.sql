-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: utmcourt
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `admin`
--
create database if not exists utmcourt;
use utmcourt;


DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `staffid` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contactNo` varchar(11) NOT NULL,
  PRIMARY KEY (`staffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('A01','Shameera','shameera','shameera@gmail.com','0172016537'),('A02','Nur Liyana Mohd Ramli','12345','yanaramli2208@gmail.com','0136878218'),('A03','Amylia Syazwani','amylia','amylia@utm.my','0123456789'),('A04','Syuhada','syuhada','syuhada@utm.my','0198765432');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `bookingid` int(11) NOT NULL AUTO_INCREMENT,
  `courtid` varchar(3) NOT NULL,
  `username` varchar(10) NOT NULL,
  `staffid` varchar(10) NOT NULL,
  `dateBook` date NOT NULL,
  `timeslot` varchar(50) NOT NULL,
  `feedback` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`bookingid`),
  KEY `courtid` (`courtid`),
  KEY `username` (`username`),
  KEY `staffid` (`staffid`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`courtid`) REFERENCES `court` (`courtid`),
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`username`) REFERENCES `user` (`username`),
  CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`staffid`) REFERENCES `admin` (`staffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `court`
--

DROP TABLE IF EXISTS `court`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `court` (
  `courtid` varchar(3) NOT NULL,
  `courtType` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `statusDesc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`courtid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `court`
--

LOCK TABLES `court` WRITE;
/*!40000 ALTER TABLE `court` DISABLE KEYS */;
INSERT INTO `court` VALUES ('C01','PINGPONG','OPEN','-'),('C02','BADMINTON','OPEN','-'),('C03','VOLLEYBALL','OPEN','-');
/*!40000 ALTER TABLE `court` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `eventid` varchar(5) NOT NULL,
  `organizer` varchar(45) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `eventDate` varchar(15) NOT NULL,
  `startTime` varchar(45) DEFAULT NULL,
  `endTime` varchar(45) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `courtid` varchar(5) DEFAULT NULL,
  `staffid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`eventid`),
  KEY `staffid` (`staffid`),
  KEY `courtid` (`courtid`),
  CONSTRAINT `event_ibfk_1` FOREIGN KEY (`staffid`) REFERENCES `admin` (`staffid`),
  CONSTRAINT `event_ibfk_2` FOREIGN KEY (`courtid`) REFERENCES `court` (`courtid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES ('E01','PERSAKA','SOFKOM','2018-12-12','0800','1200','FC ONLY','C01','A01'),('E02','PEKA','KASUF','2017-05-12','1300','1800','FKA ONLY','C02','A02');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(45) NOT NULL,
  `password` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `matricNo` varchar(9) NOT NULL,
  `faculty` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contactNo` varchar(11) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('aina','aina','Aina Yasmin ','A15CS0125','FBME','aina@gmail.com','01324876544'),('amy','amy','Amylia Syazwani binti Ahamad Tamizi','A15CS0010','FC','amylia07@gmail.com','01987601632'),('yana','yana','Nur Liyana binti Ramli','A15CS0132','FKA','yana@gmail.com','01234567812');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-19  0:12:53
