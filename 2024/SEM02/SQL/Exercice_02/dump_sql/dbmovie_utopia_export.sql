-- MySQL dump 10.13  Distrib 8.2.0, for Win64 (x86_64)
--
-- Host: localhost    Database: dbmovie_utopia
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Columbia Pictures'),(2,'Gaumont Film Company'),(3,'Miramax Films'),(4,'New Line Cinema'),(5,'Orion Pictures'),(6,'Paramount Pictures'),(7,'The Weinstein Company'),(8,'United Artists'),(9,'Universal Pictures'),(10,'Warner Bros'),(11,'Wild Bunch');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `directors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `director` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors`
--

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
INSERT INTO `directors` VALUES (1,'Abdellatif Kechiche'),(2,'Christopher Nolan'),(3,'Francis Ford Coppola'),(4,'Frank Darabont'),(5,'Jonathan Demme'),(6,'Olivier Nakache'),(7,'Peter Jackson'),(8,'Quentin Tarantino'),(9,'Robert Zemeckis'),(10,'Sergio Leone'),(11,'Sidney Lumet'),(12,'Steven Spielberg');
/*!40000 ALTER TABLE `directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `genre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Action'),(2,'Comedy'),(3,'Crime'),(4,'Drama'),(5,'Fantasy'),(6,'Romance'),(7,'Thriller'),(8,'War'),(9,'Western');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English'),(2,'French'),(3,'German'),(4,'Italian'),(5,'Sicilian'),(6,'Spanish'),(7,'Yiddish');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `year_released` int DEFAULT NULL,
  `budget` int DEFAULT NULL,
  `box_office` int DEFAULT NULL,
  `companyID` int DEFAULT NULL,
  `genreID` int DEFAULT NULL,
  `directorID` int DEFAULT NULL,
  `duration` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `companyID` (`companyID`),
  KEY `genreID` (`genreID`),
  KEY `directorID` (`directorID`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'The Shawshank Redemption',9.2,1994,25000000,73300000,1,4,4,142),(2,'The Godfather',9.2,1972,7200000,291000000,6,3,3,175),(3,'The Dark Knight',9.0,2008,185000000,1006000000,10,1,2,152),(4,'The Godfather Part II',9.0,1974,13000000,93000000,6,3,3,202),(5,'12 Angry Men',9.0,1957,340000,2000000,5,4,11,96),(6,'Schindler\'s List',8.9,1993,22000000,322200000,9,4,12,195),(7,'The Lord of the Rings: The Return of the King',8.9,2003,94000000,1146000000,4,5,7,201),(8,'Pulp Fiction',8.8,1994,8500000,213900000,3,3,8,154),(9,'The Lord of the Rings: The Fellowship of the Ring',8.8,2001,93000000,898200000,4,5,7,178),(10,'The Good, the Bad and the Ugly',8.8,1966,1200000,38900000,8,9,10,161),(11,'Forrest Gump',8.7,1994,55000000,677400000,9,4,9,142),(12,'Intouchables',8.5,2011,10800000,426600000,2,2,6,112),(13,'The Silence of the Lambs',8.6,1991,19000000,272700000,5,7,5,118),(14,'Inglourious Bastards',8.4,2009,70000000,321500000,7,8,8,153),(15,'La Vie d\'Adèle',7.7,2013,4000000,19000000,11,6,1,180);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_language`
--

DROP TABLE IF EXISTS `movie_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_language` (
  `movieID` int DEFAULT NULL,
  `languageID` int DEFAULT NULL,
  KEY `movieID` (`movieID`),
  KEY `languageID` (`languageID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_language`
--

LOCK TABLES `movie_language` WRITE;
/*!40000 ALTER TABLE `movie_language` DISABLE KEYS */;
INSERT INTO `movie_language` VALUES (1,1),(2,1),(3,1),(4,1),(4,5),(5,1),(6,1),(6,3),(6,7),(7,1),(8,1),(9,1),(10,1),(10,4),(10,6),(11,1),(12,2),(13,1),(14,1),(14,2),(14,3),(14,4),(15,2);
/*!40000 ALTER TABLE `movie_language` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-19 18:14:06
