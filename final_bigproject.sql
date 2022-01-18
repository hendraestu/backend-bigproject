-- MySQL dump 10.19  Distrib 10.3.32-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bigproject
-- ------------------------------------------------------
-- Server version	10.3.32-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dosen`
--

DROP TABLE IF EXISTS `dosen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dosen` varchar(100) DEFAULT NULL,
  `nipy` int(11) DEFAULT NULL,
  `mata_kuliah` varchar(200) DEFAULT NULL,
  `jenis_kelamin` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_dosen`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen`
--

LOCK TABLES `dosen` WRITE;
/*!40000 ALTER TABLE `dosen` DISABLE KEYS */;
INSERT INTO `dosen` VALUES (1,'Rosid Mustofa M.Kom',1,'Mobile Programing','L'),(2,'Hendrawan Aprilia A, S.T.,',2,'Komputasi dan Aplikasi Cloud','L'),(3,'Sharfina Febbi Handayani, M.Kom.,',3,'Framework Programing','P');
/*!40000 ALTER TABLE `dosen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histori`
--

DROP TABLE IF EXISTS `histori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `histori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ruangan` varchar(100) DEFAULT NULL,
  `kelas` varchar(100) DEFAULT NULL,
  `mata_kuliah` varchar(100) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `hasilSenang` varchar(100) DEFAULT NULL,
  `hasilBiasa` varchar(100) DEFAULT NULL,
  `id_dosen` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histori`
--

LOCK TABLES `histori` WRITE;
/*!40000 ALTER TABLE `histori` DISABLE KEYS */;
INSERT INTO `histori` VALUES (1,'D4.3','5B','Mobile Programing','2022-01-17','78.6%','21.4%','1'),(2,'D4.3','5A','Mobile Programing','2022-01-17','50.0%','50.0%','1'),(3,'D4.1','5C','Komputasi dan Aplikasi Cloud','2022-01-17','50.0%','50.0%','2'),(4,'D4.1','5D','Komputasi dan Aplikasi Cloud','2022-01-17','50.0%','50.0%','2'),(5,'D4.1','5A','Komputasi dan Aplikasi Cloud','2022-01-17','80.0%','20.0%','2'),(6,'D4.3','5C','Framework Programing','2022-01-17','80.0%','20.0%','3'),(7,'D4.3','5B','Framework Programing','2022-01-17','50.0%','50.0%','3'),(8,'D4.1','5A','Mobile Programing','2022-01-17','78.6%','21.4%','1'),(9,'D4.1','5C','Komputasi dan Aplikasi Cloud','2022-01-18','50.0%','50.0%','2'),(10,'D4.1','5C','Mobile Programing','2022-01-18','80.0%','20.0%','1');
/*!40000 ALTER TABLE `histori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `role` enum('user','admin') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'hendra','hendra','pbkdf2:sha256:260000$mUBoWkHtqxiJjSNW$b4e5e95512cc6feb4e8e90cb4fb839c03f4e52765b5857748942ba4cc640a31a',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-18 11:09:56
