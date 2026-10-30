CREATE DATABASE  IF NOT EXISTS `labor_market_project` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `labor_market_project`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: labor_market_project
-- ------------------------------------------------------
-- Server version	5.7.40

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
-- Table structure for table `labormarket_wdi`
--

DROP TABLE IF EXISTS `labormarket_wdi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `labormarket_wdi` (
  `Country` text,
  `Indicator` text,
  `2000` double DEFAULT NULL,
  `2001` double DEFAULT NULL,
  `2002` double DEFAULT NULL,
  `2003` double DEFAULT NULL,
  `2004` double DEFAULT NULL,
  `2005` double DEFAULT NULL,
  `2006` double DEFAULT NULL,
  `2007` double DEFAULT NULL,
  `2008` double DEFAULT NULL,
  `2009` double DEFAULT NULL,
  `2010` double DEFAULT NULL,
  `2011` double DEFAULT NULL,
  `2012` double DEFAULT NULL,
  `2013` double DEFAULT NULL,
  `2014` double DEFAULT NULL,
  `2015` double DEFAULT NULL,
  `2016` double DEFAULT NULL,
  `2017` double DEFAULT NULL,
  `2018` double DEFAULT NULL,
  `2019` double DEFAULT NULL,
  `2020` double DEFAULT NULL,
  `2021` double DEFAULT NULL,
  `2022` double DEFAULT NULL,
  `2023` double DEFAULT NULL,
  `2024` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labormarket_wdi`
--

LOCK TABLES `labormarket_wdi` WRITE;
/*!40000 ALTER TABLE `labormarket_wdi` DISABLE KEYS */;
INSERT INTO `labormarket_wdi` VALUES ('Saudi Arabia','GDP growth',4.72,0.34,-0.69,8.77,8.63,5.94,3.31,2.21,6.24,-1.07,5.04,11.76,5.76,2.95,4.02,4.66,1.7,1.18,3.23,1.65,-3.8,6.52,12,0.54,1.81),('Saudi Arabia','Unemployment rate',4.57,4.62,5.27,5.56,5.82,6.05,6.25,5.73,5.09,5.38,5.55,5.77,5.62,5.6,5.88,5.6,5.6,5.89,6.03,5.64,7.66,6.62,5.59,4.01,3.9),('Saudi Arabia','Labor force participation rate',49.97,49.35,49.02,48.97,49.02,49.21,49.53,49.78,50.35,50.8,52.65,54.59,56.54,58.38,59.73,61.05,62.06,60.39,60.91,62.57,63.82,64.9,65.2,65.23,65.27),('India','GDP growth',3.84,4.82,3.8,7.86,7.92,7.92,8.06,7.66,3.09,7.86,8.5,5.24,5.46,6.39,7.41,8,8.26,6.8,6.45,3.87,-5.78,9.69,7.61,9.19,6.48),('India','Unemployment rate',7.62,7.65,7.75,7.68,7.63,7.55,7.55,7.56,7.66,7.66,7.65,7.62,7.67,7.71,7.67,7.63,7.6,7.62,7.65,6.51,7.86,6.38,4.82,4.17,4.2),('India','Labor force participation rate',62.4,62.25,62.1,61.96,61.8,61.65,60.66,59.7,58.76,57.84,56.95,56.31,55.69,55.62,55.53,55.44,55.34,55.24,55.14,55.03,54.37,55.48,56.66,57.92,58.99),('Sudan','GDP growth',6.35,6.5,6.01,6.29,5.14,5.64,6.53,5.74,3.85,-2.77,3.86,-3.21,-17,1.96,4.66,1.91,3.47,0.71,-2.68,-2.18,-3.63,-1.87,NULL,NULL,NULL),('Sudan','Unemployment rate',15.61,15.57,15.51,15.52,15.54,15.55,15.54,15.53,15.57,13,15.16,17.44,17,16.3,15.41,14.35,13.61,12.95,12.3,11.66,11.96,11.04,7.53,5.77,4.89),('Sudan','Labor force participation rate',51.58,51.3,51.03,50.76,50.47,50.18,49.89,49.59,49.25,49.34,49.43,49.51,48.56,47.49,46.33,45.19,44.05,42.92,41.86,40.88,39.59,38.6,37.92,37.58,37.41);
/*!40000 ALTER TABLE `labormarket_wdi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-30 13:56:18
