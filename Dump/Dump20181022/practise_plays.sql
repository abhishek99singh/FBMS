-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: practise
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `plays`
--

DROP TABLE IF EXISTS `plays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `plays` (
  `match_id` int(11) NOT NULL,
  `Home_Team` int(11) NOT NULL,
  `Away_Team` int(11) NOT NULL,
  PRIMARY KEY (`match_id`),
  KEY `plays_fk1_idx` (`Home_Team`),
  KEY `plays_fk2_idx` (`Away_Team`),
  CONSTRAINT `plays_fk1` FOREIGN KEY (`Home_Team`) REFERENCES `teams` (`team_id`),
  CONSTRAINT `plays_fk2` FOREIGN KEY (`Away_Team`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plays`
--

LOCK TABLES `plays` WRITE;
/*!40000 ALTER TABLE `plays` DISABLE KEYS */;
INSERT INTO `plays` VALUES (1501,7,3),(1502,5,8),(1503,6,2),(1504,4,1),(1505,8,7),(1506,2,3),(1507,1,5),(1508,4,6),(1509,7,2),(1510,8,1),(1511,3,4),(1512,5,6),(1513,1,7),(1514,4,2),(1515,6,8),(1516,5,3),(1517,7,4),(1518,1,6),(1519,2,5),(1520,8,3),(1521,6,7),(1522,5,4),(1523,3,1),(1524,8,2),(1525,7,5),(1526,6,3),(1527,4,8),(1528,1,2),(1529,3,7),(1530,8,5),(1531,2,6),(1532,1,4),(1533,7,8),(1534,3,2),(1535,5,1),(1536,6,4),(1537,2,7),(1538,1,8),(1539,4,3),(1540,6,5),(1541,7,1),(1542,2,4),(1543,8,6),(1544,3,5),(1545,4,7),(1546,6,1),(1547,5,2),(1548,3,8),(1549,7,6),(1550,4,5),(1551,1,3),(1552,2,8),(1553,5,7),(1554,3,6),(1555,8,4),(1556,2,1),(1601,1,8),(1602,4,5),(1603,2,7),(1604,10,9),(1605,5,1),(1606,7,8),(1607,9,4),(1608,10,2),(1609,1,7),(1610,5,9),(1611,8,10),(1612,4,2),(1613,9,1),(1614,10,7),(1615,2,5),(1616,4,8),(1617,1,10),(1618,9,2),(1619,7,4),(1620,5,8),(1621,2,1),(1622,4,10),(1623,8,9),(1624,5,7),(1625,1,4),(1626,2,8),(1627,10,5),(1628,9,7),(1629,8,1),(1630,5,4),(1631,7,2),(1632,9,10),(1633,1,5),(1634,8,7),(1635,4,9),(1636,2,10),(1637,7,1),(1638,9,5),(1639,10,8),(1640,2,4),(1641,1,9),(1642,7,10),(1643,5,2),(1644,8,4),(1645,10,1),(1646,2,9),(1647,4,7),(1648,8,5),(1649,1,2),(1650,10,4),(1651,9,8),(1652,7,5),(1653,4,1),(1654,8,2),(1655,5,10),(1656,7,9);
/*!40000 ALTER TABLE `plays` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-22 14:11:52
