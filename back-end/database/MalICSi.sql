-- MySQL dump 10.16  Distrib 10.1.14-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: MalICSi
-- ------------------------------------------------------
-- Server version	10.1.14-MariaDB-1~trusty

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
-- Table structure for table `ADMINISTRATOR`
--
DROP DATABASE IF EXISTS MalICSi ;
CREATE DATABASE MalICSi;
USE MalICSi;

DROP TABLE IF EXISTS `ADMINISTRATOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ADMINISTRATOR` (
  `Administrator_id` int(11) NOT NULL,
  `Username` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`Administrator_id`),
  KEY `administrator_verifieduser_username_fk` (`Username`),
  CONSTRAINT `administrator_verifieduser_username_fk` FOREIGN KEY (`Username`) REFERENCES `VERIFIED_USER` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADMINISTRATOR`
--

LOCK TABLES `ADMINISTRATOR` WRITE;
/*!40000 ALTER TABLE `ADMINISTRATOR` DISABLE KEYS */;
/*!40000 ALTER TABLE `ADMINISTRATOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ALUMNI`
--

DROP TABLE IF EXISTS `ALUMNI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALUMNI` (
  `Student_no` int(11) NOT NULL,
  `Username` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`Student_no`),
  KEY `alumni_verifieduser_username_fk` (`Username`),
  CONSTRAINT `alumni_verifieduser_username_fk` FOREIGN KEY (`Username`) REFERENCES `VERIFIED_USER` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ALUMNI`
--

LOCK TABLES `ALUMNI` WRITE;
/*!40000 ALTER TABLE `ALUMNI` DISABLE KEYS */;
/*!40000 ALTER TABLE `ALUMNI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLOYEE` (
  `Employee_no` int(11) NOT NULL,
  `Username` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`Employee_no`),
  KEY `employee_verifieduser_username_fk` (`Username`),
  CONSTRAINT `employee_verifieduser_username_fk` FOREIGN KEY (`Username`) REFERENCES `VERIFIED_USER` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE`
--

LOCK TABLES `EMPLOYEE` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE` DISABLE KEYS */;
/*!40000 ALTER TABLE `EMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE_PLAYER`
--

DROP TABLE IF EXISTS `EMPLOYEE_PLAYER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLOYEE_PLAYER` (
  `Employee_no` int(11) NOT NULL,
  `Player_id` int(11) NOT NULL,
  PRIMARY KEY (`Employee_no`),
  KEY `employeeplayer_player_playerid_fk` (`Player_id`),
  CONSTRAINT `employeeplayer_player_playerid_fk` FOREIGN KEY (`Player_id`) REFERENCES `PLAYER` (`Player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE_PLAYER`
--

LOCK TABLES `EMPLOYEE_PLAYER` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE_PLAYER` DISABLE KEYS */;
/*!40000 ALTER TABLE `EMPLOYEE_PLAYER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENT`
--

DROP TABLE IF EXISTS `EVENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENT` (
  `Event_id` int(11) NOT NULL,
  `Event_name` varchar(254) NOT NULL,
  `Start_date` date NOT NULL,
  `End_date` date NOT NULL,
  `Event_Winner` varchar(254) NOT NULL,
  PRIMARY KEY (`Event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENT`
--

LOCK TABLES `EVENT` WRITE;
/*!40000 ALTER TABLE `EVENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `EVENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENT_ORGANIZER`
--

DROP TABLE IF EXISTS `EVENT_ORGANIZER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENT_ORGANIZER` (
  `Organizer_id` int(11) NOT NULL,
  `Username` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`Organizer_id`),
  KEY `organizer_verifieduser_username_fk` (`Username`),
  CONSTRAINT `organizer_verifieduser_username_fk` FOREIGN KEY (`Username`) REFERENCES `VERIFIED_USER` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENT_ORGANIZER`
--

LOCK TABLES `EVENT_ORGANIZER` WRITE;
/*!40000 ALTER TABLE `EVENT_ORGANIZER` DISABLE KEYS */;
/*!40000 ALTER TABLE `EVENT_ORGANIZER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENT_SPORT`
--

DROP TABLE IF EXISTS `EVENT_SPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENT_SPORT` (
  `Event_id` int(11) NOT NULL,
  `Sport_id` int(11) NOT NULL,
  PRIMARY KEY (`Event_id`,`Sport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENT_SPORT`
--

LOCK TABLES `EVENT_SPORT` WRITE;
/*!40000 ALTER TABLE `EVENT_SPORT` DISABLE KEYS */;
/*!40000 ALTER TABLE `EVENT_SPORT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENT_TEAM`
--

DROP TABLE IF EXISTS `EVENT_TEAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENT_TEAM` (
  `Event_id` int(11) NOT NULL,
  `Team_no` int(11) NOT NULL,
  PRIMARY KEY (`Event_id`,`Team_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENT_TEAM`
--

LOCK TABLES `EVENT_TEAM` WRITE;
/*!40000 ALTER TABLE `EVENT_TEAM` DISABLE KEYS */;
/*!40000 ALTER TABLE `EVENT_TEAM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GAME`
--

DROP TABLE IF EXISTS `GAME`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GAME` (
  `Game_no` int(11) NOT NULL,
  `Scheduled_date` date NOT NULL,
  `Start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `End_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Game_Winner` varchar(254) NOT NULL,
  `Sport_id` int(11) NOT NULL,
  PRIMARY KEY (`Game_no`),
  KEY `game_sport_sportid_fk` (`Sport_id`),
  CONSTRAINT `game_sport_sportid_fk` FOREIGN KEY (`Sport_id`) REFERENCES `SPORT` (`Sport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GAME`
--

LOCK TABLES `GAME` WRITE;
/*!40000 ALTER TABLE `GAME` DISABLE KEYS */;
/*!40000 ALTER TABLE `GAME` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GAME_PLAYER`
--

DROP TABLE IF EXISTS `GAME_PLAYER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GAME_PLAYER` (
  `Player_id` int(11) NOT NULL,
  `Game_no` int(11) NOT NULL,
  `Date_joined` date NOT NULL,
  PRIMARY KEY (`Player_id`,`Game_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GAME_PLAYER`
--

LOCK TABLES `GAME_PLAYER` WRITE;
/*!40000 ALTER TABLE `GAME_PLAYER` DISABLE KEYS */;
/*!40000 ALTER TABLE `GAME_PLAYER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GUEST_PLAYER`
--

DROP TABLE IF EXISTS `GUEST_PLAYER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GUEST_PLAYER` (
  `Guest_id` int(11) NOT NULL,
  `Player_id` int(11) NOT NULL,
  PRIMARY KEY (`Guest_id`),
  KEY `guestplayer_player_playerid_fk` (`Player_id`),
  CONSTRAINT `guestplayer_player_playerid_fk` FOREIGN KEY (`Player_id`) REFERENCES `PLAYER` (`Player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GUEST_PLAYER`
--

LOCK TABLES `GUEST_PLAYER` WRITE;
/*!40000 ALTER TABLE `GUEST_PLAYER` DISABLE KEYS */;
/*!40000 ALTER TABLE `GUEST_PLAYER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PLAYER`
--

DROP TABLE IF EXISTS `PLAYER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PLAYER` (
  `Player_id` int(11) NOT NULL,
  `Name` varchar(254) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Team_no` int(11) NOT NULL,
  PRIMARY KEY (`Player_id`),
  KEY `player_team_teamno_fk` (`Team_no`),
  CONSTRAINT `player_team_teamno_fk` FOREIGN KEY (`Team_no`) REFERENCES `TEAM` (`Team_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PLAYER`
--

LOCK TABLES `PLAYER` WRITE;
/*!40000 ALTER TABLE `PLAYER` DISABLE KEYS */;
/*!40000 ALTER TABLE `PLAYER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REGISTERED_USER`
--

DROP TABLE IF EXISTS `REGISTERED_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REGISTERED_USER` (
  `User_id` int(11) NOT NULL,
  `College` varchar(254) DEFAULT NULL,
  `Privilege` varchar(254) DEFAULT NULL,
  `Username` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`User_id`),
  KEY `registereduser_verifieduser_username_fk` (`Username`),
  CONSTRAINT `registereduser_verifieduser_username_fk` FOREIGN KEY (`Username`) REFERENCES `VERIFIED_USER` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REGISTERED_USER`
--

LOCK TABLES `REGISTERED_USER` WRITE;
/*!40000 ALTER TABLE `REGISTERED_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `REGISTERED_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SPONSORING_INSTITUTION`
--

DROP TABLE IF EXISTS `SPONSORING_INSTITUTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SPONSORING_INSTITUTION` (
  `Institution_id` int(11) NOT NULL,
  `Spon_name` varchar(254) NOT NULL,
  `Event_id` int(11) NOT NULL,
  PRIMARY KEY (`Institution_id`),
  KEY `sponsoringinstitution_event_eventid_fk` (`Event_id`),
  CONSTRAINT `sponsoringinstitution_event_eventid_fk` FOREIGN KEY (`Event_id`) REFERENCES `EVENT` (`Event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SPONSORING_INSTITUTION`
--

LOCK TABLES `SPONSORING_INSTITUTION` WRITE;
/*!40000 ALTER TABLE `SPONSORING_INSTITUTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `SPONSORING_INSTITUTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SPORT`
--

DROP TABLE IF EXISTS `SPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SPORT` (
  `Sport_id` int(11) NOT NULL,
  `Sport_name` varchar(254) NOT NULL,
  `Tournament_type` varchar(254) NOT NULL,
  PRIMARY KEY (`Sport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SPORT`
--

LOCK TABLES `SPORT` WRITE;
/*!40000 ALTER TABLE `SPORT` DISABLE KEYS */;
/*!40000 ALTER TABLE `SPORT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STUDENT`
--

DROP TABLE IF EXISTS `STUDENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `STUDENT` (
  `Student_no` int(11) NOT NULL,
  `Username` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`Student_no`),
  KEY `student_verifieduser_username_fk` (`Username`),
  CONSTRAINT `student_verifieduser_username_fk` FOREIGN KEY (`Username`) REFERENCES `VERIFIED_USER` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STUDENT`
--

LOCK TABLES `STUDENT` WRITE;
/*!40000 ALTER TABLE `STUDENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `STUDENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STUDENT_PLAYER`
--

DROP TABLE IF EXISTS `STUDENT_PLAYER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `STUDENT_PLAYER` (
  `Student_no` int(11) NOT NULL,
  `Player_id` int(11) NOT NULL,
  PRIMARY KEY (`Student_no`),
  KEY `studentplayer_player_playerid_fk` (`Player_id`),
  CONSTRAINT `studentplayer_player_playerid_fk` FOREIGN KEY (`Player_id`) REFERENCES `PLAYER` (`Player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STUDENT_PLAYER`
--

LOCK TABLES `STUDENT_PLAYER` WRITE;
/*!40000 ALTER TABLE `STUDENT_PLAYER` DISABLE KEYS */;
/*!40000 ALTER TABLE `STUDENT_PLAYER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYSTEM_ADMINISTRATOR`
--

DROP TABLE IF EXISTS `SYSTEM_ADMINISTRATOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYSTEM_ADMINISTRATOR` (
  `System_Admin_id` int(11) NOT NULL,
  `Username` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`System_Admin_id`),
  KEY `systemadministrator_verifieduser_username_fk` (`Username`),
  CONSTRAINT `systemadministrator_verifieduser_username_fk` FOREIGN KEY (`Username`) REFERENCES `VERIFIED_USER` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYSTEM_ADMINISTRATOR`
--

LOCK TABLES `SYSTEM_ADMINISTRATOR` WRITE;
/*!40000 ALTER TABLE `SYSTEM_ADMINISTRATOR` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYSTEM_ADMINISTRATOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TEAM`
--

DROP TABLE IF EXISTS `TEAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TEAM` (
  `Team_no` int(11) NOT NULL,
  `Team_name` varchar(254) NOT NULL,
  PRIMARY KEY (`Team_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TEAM`
--

LOCK TABLES `TEAM` WRITE;
/*!40000 ALTER TABLE `TEAM` DISABLE KEYS */;
/*!40000 ALTER TABLE `TEAM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VERIFIED_USER`
--

DROP TABLE IF EXISTS `VERIFIED_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VERIFIED_USER` (
  `Username` varchar(254) NOT NULL,
  `Email` varchar(254) DEFAULT NULL,
  `Password` varchar(254) DEFAULT NULL,
  `Name` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VERIFIED_USER`
--

LOCK TABLES `VERIFIED_USER` WRITE;
/*!40000 ALTER TABLE `VERIFIED_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `VERIFIED_USER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-07 18:41:39
