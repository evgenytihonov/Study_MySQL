-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Ссылка на автора',
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя автора',
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия автора',
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date NOT NULL COMMENT 'Дата рождения',
  `country_id` int unsigned DEFAULT NULL COMMENT 'Страна происхождения',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `first_name_idx` (`first_name`),
  UNIQUE KEY `last_name_idx` (`last_name`),
  UNIQUE KEY `birthday_idx` (`birthday`),
  KEY `authors_countries_id_fk` (`country_id`),
  CONSTRAINT `authors_countries_id_fk` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Авторы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Adan','Yost','f','1816-06-01',5,'2017-09-26 04:18:36','2021-05-15 09:01:45'),(2,'Thomas','Treutel','m','1783-02-14',10,'2021-03-15 02:12:17','2021-01-03 01:29:26'),(3,'Glennie','Hoeger','f','1806-05-10',7,'2018-01-16 21:40:40','2021-02-28 08:07:52'),(4,'Clarabelle','Cummerata','f','1975-08-17',9,'2011-08-21 10:27:19','2021-03-20 03:12:01'),(5,'Alvina','Ledner','f','1951-06-29',4,'2020-08-21 12:07:05','2021-01-17 04:35:36'),(6,'Kayli','Gislason','f','1909-08-11',9,'2012-10-19 20:16:52','2020-09-21 08:02:08'),(7,'Kendrick','Stokes','m','1851-06-23',3,'2018-05-07 07:45:39','2021-04-04 14:04:28'),(8,'Alejandrin','Macejkovic','m','1863-02-06',9,'2020-02-22 12:42:31','2020-09-05 08:36:08'),(9,'Eliezer','Doyle','f','1780-07-26',7,'2017-05-15 07:42:30','2020-10-19 04:28:15'),(10,'Rossie','Kunze','m','1927-03-01',1,'2020-09-02 03:00:50','2021-04-11 23:24:15'),(11,'Guiseppe','Kub','f','1769-09-23',8,'2012-02-04 16:29:42','2021-04-25 14:34:22'),(12,'Estefania','Schaden','m','1739-03-25',8,'2020-11-15 19:45:15','2021-06-04 17:22:08'),(13,'Audra','Trantow','f','1950-12-21',3,'2012-11-12 20:40:01','2021-08-01 20:11:01'),(14,'Ryley','Durgan','m','1960-09-17',2,'2019-06-23 16:21:25','2021-06-01 10:59:04'),(15,'Edgardo','Kulas','f','1823-07-16',5,'2017-01-28 00:30:18','2021-04-05 17:51:40'),(16,'Fatima','Bauch','f','1896-04-28',5,'2019-10-06 17:31:44','2020-11-25 18:33:37'),(17,'Kelton','Bergstrom','f','1751-08-01',10,'2020-11-22 09:07:35','2021-03-11 21:40:11'),(18,'Westley','Buckridge','m','1796-11-26',7,'2012-01-29 18:07:52','2021-01-15 02:38:36'),(19,'Garett','Mertz','f','1887-12-03',5,'2019-02-18 19:16:35','2021-02-05 13:14:54'),(20,'Janice','Wisozk','m','1920-12-04',2,'2012-04-25 02:08:24','2020-11-02 06:51:27');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_position`
--

DROP TABLE IF EXISTS `book_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_position` (
  `book_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор книги',
  `shelf` int unsigned DEFAULT NULL COMMENT 'Номер стелажа',
  `block` int unsigned DEFAULT NULL COMMENT 'Номер блока',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`book_id`),
  CONSTRAINT `book_position_book_id_fk` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Хранение книги';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_position`
--

LOCK TABLES `book_position` WRITE;
/*!40000 ALTER TABLE `book_position` DISABLE KEYS */;
INSERT INTO `book_position` VALUES (1,17,5,'2016-08-16 09:19:14','2021-06-15 15:36:06'),(2,16,3,'2012-07-28 17:25:35','2021-05-18 00:24:24'),(3,18,3,'2018-06-12 12:55:47','2021-05-23 22:35:48'),(4,16,2,'2021-06-07 00:50:50','2021-01-07 15:01:28'),(5,6,1,'2017-12-21 08:12:36','2020-12-28 18:26:28'),(6,15,1,'2012-05-22 10:38:38','2020-11-04 11:41:01'),(7,17,1,'2018-01-12 20:34:50','2020-09-23 16:35:20'),(8,7,4,'2015-03-18 18:14:29','2020-11-20 04:09:14'),(9,18,3,'2015-06-21 22:20:58','2020-10-20 13:06:17'),(10,20,4,'2013-10-17 19:08:57','2020-12-30 04:00:48'),(11,6,3,'2020-02-09 09:00:49','2020-08-26 14:18:48'),(12,5,3,'2021-07-01 22:04:18','2020-10-12 19:36:13'),(13,11,2,'2020-01-05 11:00:01','2020-12-06 11:39:58'),(14,8,3,'2013-12-04 14:37:41','2021-06-12 12:35:53'),(15,11,5,'2019-09-10 21:47:04','2020-11-04 15:51:19'),(16,8,5,'2013-03-11 03:12:18','2021-06-28 02:29:18'),(17,16,4,'2020-08-16 06:28:50','2021-02-26 00:25:18'),(18,14,3,'2021-04-13 08:02:09','2020-11-01 20:13:46'),(19,1,1,'2018-10-07 17:02:17','2021-02-12 20:56:10'),(20,12,4,'2016-03-13 16:31:26','2021-03-03 21:18:34'),(21,9,2,'2015-03-11 12:16:42','2020-09-16 09:48:44'),(22,11,4,'2019-10-24 04:39:20','2020-11-14 02:04:07'),(23,11,3,'2018-11-06 18:28:54','2020-09-05 18:19:35'),(24,10,4,'2012-04-26 05:46:59','2021-04-11 19:47:08'),(25,11,3,'2021-04-21 17:12:46','2021-04-13 18:11:25'),(26,13,3,'2018-04-04 14:27:42','2020-12-06 00:24:36'),(27,10,4,'2019-10-13 05:10:25','2021-03-24 17:56:22'),(28,18,5,'2019-03-01 06:46:35','2021-06-13 05:18:18'),(29,13,1,'2019-09-25 21:35:53','2020-11-08 21:14:14'),(30,18,5,'2018-11-14 09:15:06','2020-11-17 04:27:33'),(31,11,4,'2013-11-29 23:23:19','2021-04-02 23:36:54'),(32,1,5,'2013-01-15 12:49:10','2021-07-16 09:48:40'),(33,6,5,'2012-05-12 16:59:44','2021-08-01 23:22:35'),(34,4,5,'2017-07-25 09:25:33','2021-01-01 12:49:08'),(35,3,5,'2020-11-26 18:35:03','2021-07-23 08:26:47'),(36,8,5,'2017-12-29 11:52:42','2021-04-17 09:22:13'),(37,8,1,'2020-01-01 22:25:47','2021-04-19 07:06:12'),(38,16,4,'2020-09-17 11:05:20','2021-02-10 19:00:11'),(39,20,4,'2012-03-19 22:52:58','2020-08-26 09:23:25'),(40,14,4,'2013-07-07 22:57:32','2021-03-31 19:03:10'),(41,8,1,'2016-08-16 10:53:54','2021-02-20 20:45:03'),(42,12,1,'2017-11-19 01:31:35','2020-10-14 00:40:35'),(43,11,1,'2012-06-19 15:13:40','2021-03-31 21:04:42'),(44,3,3,'2021-01-11 00:45:03','2021-05-23 06:46:21'),(45,10,4,'2021-01-10 04:48:50','2021-04-17 07:50:49'),(46,17,5,'2014-03-28 09:02:55','2020-08-28 20:10:08'),(47,13,5,'2020-06-05 00:21:56','2020-12-12 02:26:53'),(48,2,2,'2016-01-01 01:56:21','2020-08-18 04:45:17'),(49,3,3,'2018-06-01 13:41:28','2021-02-05 21:03:09'),(50,2,4,'2013-06-18 06:47:56','2021-04-07 11:06:58'),(51,14,3,'2021-07-15 11:59:59','2020-08-13 02:53:49'),(52,11,4,'2017-03-02 08:41:35','2020-12-12 22:47:39'),(53,1,4,'2020-08-13 23:11:39','2020-12-08 14:06:59'),(54,12,1,'2014-08-06 10:29:39','2020-11-10 03:25:49'),(55,15,2,'2017-12-13 18:07:50','2021-04-06 14:12:21'),(56,6,5,'2017-05-04 09:41:51','2021-04-27 09:20:59'),(57,5,3,'2016-09-01 05:31:43','2020-09-13 01:23:16'),(58,1,1,'2013-06-20 04:10:55','2021-05-29 05:11:06'),(59,20,2,'2014-05-21 08:52:13','2021-06-12 15:02:20'),(60,17,3,'2014-10-31 19:22:08','2021-06-11 17:55:03'),(61,2,1,'2018-08-10 18:27:24','2021-04-28 21:14:55'),(62,17,2,'2019-05-16 16:38:20','2021-01-12 23:02:22'),(63,6,4,'2018-06-24 06:19:50','2021-08-03 04:03:17'),(64,19,1,'2016-09-26 18:59:38','2020-10-09 04:32:06'),(65,17,4,'2021-07-02 21:01:05','2021-02-11 01:32:46'),(66,16,2,'2012-09-09 03:04:06','2021-02-28 08:59:53'),(67,9,3,'2017-01-12 00:27:23','2021-01-29 18:27:17'),(68,18,1,'2020-10-16 10:30:42','2021-04-09 04:49:16'),(69,20,2,'2017-02-15 20:44:04','2021-07-14 15:52:03'),(70,13,1,'2020-12-14 04:56:47','2020-09-19 01:42:30'),(71,14,4,'2015-07-16 17:16:14','2021-06-15 14:13:30'),(72,17,3,'2016-12-10 21:48:41','2020-09-27 14:54:30'),(73,15,5,'2019-04-18 18:21:35','2020-12-08 13:47:12'),(74,7,5,'2019-04-08 20:05:41','2020-09-26 16:00:15'),(75,11,2,'2021-01-30 23:39:54','2021-07-09 01:45:07'),(76,1,4,'2014-09-17 14:30:35','2020-11-27 03:42:02'),(77,11,1,'2013-07-29 19:04:05','2021-02-25 21:12:32'),(78,1,5,'2017-01-09 20:46:15','2021-06-04 08:39:07'),(79,1,2,'2015-06-26 19:23:03','2020-12-28 09:24:31'),(80,12,4,'2015-09-21 23:10:59','2020-11-12 08:26:07'),(81,3,4,'2012-09-07 01:01:35','2020-10-31 00:03:57'),(82,9,2,'2013-12-31 09:46:56','2021-01-20 17:14:56'),(83,3,3,'2014-09-29 12:52:45','2021-06-03 00:03:48'),(84,10,5,'2021-05-31 14:54:25','2021-06-22 00:07:48'),(85,14,1,'2019-08-16 04:27:38','2020-08-21 00:38:18'),(86,8,2,'2016-04-15 20:35:48','2021-06-19 21:51:10'),(87,14,3,'2013-12-22 14:56:56','2020-09-06 20:47:03'),(88,2,3,'2021-02-17 13:10:51','2021-04-09 06:01:10'),(89,10,4,'2014-11-21 21:26:34','2020-08-11 05:49:59'),(90,2,4,'2016-12-21 07:09:28','2021-02-07 07:43:30'),(91,13,1,'2013-05-13 14:09:07','2021-03-08 14:57:40'),(92,5,2,'2019-07-19 21:08:08','2021-05-06 15:57:55'),(93,8,3,'2015-11-18 20:54:27','2021-01-24 07:27:09'),(94,7,4,'2014-01-07 09:27:31','2021-02-05 16:03:41'),(95,7,4,'2019-04-22 08:08:38','2021-03-03 20:38:18'),(96,15,3,'2013-04-29 07:25:49','2020-10-16 01:03:27'),(97,11,4,'2013-09-26 18:04:34','2021-01-29 06:12:36'),(98,2,2,'2017-05-30 19:30:49','2021-07-31 15:03:59'),(99,19,2,'2012-07-13 09:59:56','2020-08-30 12:36:28'),(100,9,2,'2012-02-24 01:23:53','2021-07-02 13:55:27');
/*!40000 ALTER TABLE `book_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_cards`
--

DROP TABLE IF EXISTS `booking_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_cards` (
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `book_id` int unsigned NOT NULL COMMENT 'Идентификатор книги',
  `condition_after_id` int unsigned DEFAULT NULL COMMENT 'Состояние книги',
  `returned` tinyint(1) DEFAULT NULL COMMENT 'Признак возврата',
  `getting_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время получения книги',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления (возврата книги) строки',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `getting_at_idx` (`getting_at`),
  KEY `booking_cards_book_id_fk` (`book_id`),
  KEY `booking_cards_condition_after_id_fk` (`condition_after_id`),
  CONSTRAINT `booking_cards_book_id_fk` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  CONSTRAINT `booking_cards_condition_after_id_fk` FOREIGN KEY (`condition_after_id`) REFERENCES `conditions` (`id`),
  CONSTRAINT `booking_cards_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Книжная карта';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_cards`
--

LOCK TABLES `booking_cards` WRITE;
/*!40000 ALTER TABLE `booking_cards` DISABLE KEYS */;
INSERT INTO `booking_cards` VALUES (1,41,3,0,'2021-07-07 20:24:11','2021-07-15 05:41:47'),(2,58,2,0,'2021-07-13 17:11:21','2021-07-19 18:28:06'),(3,71,3,1,'2020-12-21 14:58:39','2021-07-25 08:30:42'),(4,90,1,1,'2020-11-13 09:29:18','2021-07-23 09:06:09'),(5,86,5,0,'2021-02-14 09:36:48','2021-07-22 23:01:37'),(6,53,4,1,'2021-05-14 17:43:08','2021-08-05 03:35:54'),(7,56,2,0,'2021-05-29 05:02:55','2021-07-29 21:51:42'),(8,46,2,0,'2021-01-14 18:24:05','2021-07-11 12:53:33'),(9,15,3,0,'2021-03-16 20:41:59','2021-08-09 20:46:38'),(10,29,3,1,'2021-05-27 21:56:44','2021-08-07 21:25:47'),(11,37,4,1,'2020-08-12 21:01:09','2021-07-12 01:43:36'),(12,29,5,1,'2020-09-25 10:03:49','2021-08-07 00:28:56'),(13,70,4,0,'2021-06-21 02:27:24','2021-07-18 11:14:20'),(14,3,5,0,'2020-12-31 08:02:25','2021-07-25 04:48:37'),(15,55,4,1,'2021-04-20 13:18:45','2021-07-28 06:25:14'),(16,18,5,0,'2021-05-30 20:40:45','2021-08-06 08:16:27'),(17,37,4,0,'2021-02-12 01:34:14','2021-07-17 11:38:46'),(18,29,1,1,'2021-07-14 09:40:20','2021-07-21 15:14:34'),(19,18,1,1,'2020-12-17 04:57:17','2021-07-14 00:50:43'),(20,17,1,1,'2020-10-04 01:15:55','2021-08-02 07:12:23'),(21,99,4,1,'2021-02-28 15:54:30','2021-07-18 01:35:34'),(22,74,3,1,'2020-10-31 05:17:23','2021-07-12 18:21:17'),(23,1,1,0,'2021-02-16 10:20:38','2021-07-26 23:47:52'),(24,91,1,0,'2021-01-10 01:34:25','2021-08-03 07:46:02'),(25,64,1,1,'2021-05-31 23:43:37','2021-08-06 06:07:46'),(26,63,5,0,'2020-11-17 12:03:26','2021-07-13 09:28:21'),(27,92,5,1,'2021-01-29 23:48:21','2021-08-08 15:06:08'),(28,83,4,1,'2021-03-13 11:45:59','2021-07-13 09:43:16'),(29,69,5,1,'2021-01-18 10:58:58','2021-07-15 14:34:21'),(30,50,2,1,'2020-09-21 15:10:23','2021-08-08 12:58:15'),(31,64,4,1,'2021-04-27 04:34:44','2021-07-26 19:38:41'),(32,17,5,0,'2021-01-15 04:32:09','2021-07-17 23:32:11'),(33,44,3,1,'2020-08-15 10:34:16','2021-08-01 08:06:24'),(34,8,4,0,'2021-04-28 09:23:22','2021-07-19 14:27:33'),(35,64,2,1,'2020-08-19 07:32:39','2021-08-06 22:02:11'),(36,65,4,1,'2021-05-08 18:06:50','2021-07-22 10:46:19'),(37,94,2,1,'2021-02-14 11:07:50','2021-07-19 09:53:57'),(38,16,5,0,'2021-07-24 14:20:39','2021-07-23 17:41:08'),(39,56,1,1,'2020-08-27 16:43:08','2021-07-23 23:58:42'),(40,9,1,0,'2021-07-24 16:55:00','2021-08-02 12:35:44'),(41,27,4,1,'2021-05-28 10:59:21','2021-07-28 07:14:32'),(42,19,1,0,'2020-09-15 20:10:10','2021-07-15 06:34:38'),(43,62,1,1,'2021-03-08 06:58:12','2021-07-18 15:07:39'),(44,79,2,1,'2020-12-16 12:37:35','2021-07-10 23:59:42'),(45,87,2,0,'2020-12-16 00:14:04','2021-08-06 04:16:52'),(46,52,3,0,'2021-03-12 05:00:02','2021-07-27 21:16:09'),(47,96,4,1,'2020-12-10 13:56:47','2021-07-23 21:41:59'),(48,50,2,0,'2021-01-10 21:58:40','2021-07-12 02:40:51'),(49,13,3,1,'2021-02-18 20:08:26','2021-07-27 00:34:45'),(50,100,4,1,'2021-07-05 06:53:39','2021-07-25 16:13:44'),(51,81,4,1,'2021-03-10 17:09:11','2021-07-19 11:46:41'),(52,39,4,1,'2021-07-20 09:15:43','2021-07-15 00:39:32'),(53,2,3,1,'2021-08-08 12:54:45','2021-07-22 08:07:51'),(54,68,3,1,'2021-08-01 06:29:23','2021-08-04 16:54:38'),(55,61,4,1,'2020-12-05 18:59:28','2021-07-11 14:37:25'),(56,76,5,0,'2020-11-02 00:33:25','2021-07-29 00:10:05'),(57,47,5,0,'2020-11-17 16:15:09','2021-07-22 02:16:53'),(58,5,1,1,'2021-05-19 13:51:10','2021-07-30 01:35:15'),(59,96,5,1,'2021-03-18 08:34:28','2021-07-16 14:11:02'),(60,38,5,0,'2021-04-20 06:07:37','2021-07-26 04:17:05'),(61,11,5,1,'2021-07-13 15:40:08','2021-07-21 22:18:39'),(62,31,1,1,'2020-12-28 01:29:40','2021-08-10 18:29:48'),(63,58,4,1,'2020-09-17 14:50:13','2021-07-11 04:39:46'),(64,45,4,1,'2021-04-19 06:08:50','2021-08-03 03:32:01'),(65,37,3,0,'2020-09-25 07:07:00','2021-07-25 07:53:10'),(66,47,1,0,'2020-10-30 22:24:10','2021-07-28 05:33:31'),(67,9,5,1,'2021-05-25 09:37:40','2021-07-31 22:12:54'),(68,92,1,0,'2021-07-02 12:30:29','2021-07-29 14:28:51'),(69,39,3,0,'2021-02-10 19:50:54','2021-08-02 21:21:22'),(70,67,5,0,'2021-01-10 14:08:13','2021-07-15 17:45:35'),(71,35,3,1,'2020-11-20 08:55:34','2021-07-18 22:00:22'),(72,87,5,0,'2020-10-14 10:56:09','2021-07-12 08:21:39'),(73,37,5,0,'2020-08-24 14:36:51','2021-07-10 19:19:20'),(74,90,2,1,'2021-01-21 08:51:13','2021-08-10 03:52:57'),(75,74,2,1,'2021-05-15 21:03:49','2021-07-18 03:07:30'),(76,13,5,0,'2021-02-20 13:50:03','2021-07-30 07:26:14'),(77,17,3,0,'2020-11-29 18:50:43','2021-08-07 05:10:08'),(78,91,4,1,'2020-10-03 07:47:20','2021-07-28 08:29:02'),(79,23,2,0,'2021-01-20 07:47:00','2021-07-22 15:46:12'),(80,45,3,1,'2020-11-29 13:38:12','2021-07-31 18:18:12'),(81,80,5,0,'2020-11-06 09:21:54','2021-07-21 12:34:28'),(82,77,5,0,'2020-12-24 07:06:31','2021-07-18 07:53:47'),(83,77,4,0,'2020-10-27 21:53:22','2021-08-04 20:44:32'),(84,98,1,0,'2020-11-27 11:16:40','2021-07-23 18:20:23'),(85,27,4,1,'2021-01-25 05:38:17','2021-07-27 18:38:32'),(86,15,4,0,'2021-01-18 17:22:28','2021-07-30 19:15:59'),(87,7,1,1,'2021-02-06 10:17:29','2021-08-06 19:59:19'),(88,43,3,0,'2020-10-06 22:55:44','2021-07-15 15:30:09'),(89,92,2,1,'2021-01-21 03:55:51','2021-07-11 18:04:36'),(90,76,4,1,'2020-10-06 18:36:43','2021-08-08 13:48:52'),(91,60,5,1,'2021-03-30 02:46:29','2021-07-29 21:14:01'),(92,49,4,1,'2021-06-03 05:13:00','2021-08-03 13:31:20'),(93,32,2,1,'2021-05-08 23:38:01','2021-07-16 21:01:45'),(94,50,3,0,'2020-10-15 17:26:44','2021-07-19 05:21:08'),(95,74,5,1,'2021-05-27 13:47:48','2021-07-21 15:21:48'),(96,13,3,1,'2021-03-24 11:53:49','2021-07-15 12:13:06'),(97,86,5,1,'2021-01-13 22:05:51','2021-07-25 15:39:11'),(98,41,4,0,'2020-11-06 20:57:38','2021-07-29 02:57:21'),(99,58,2,1,'2020-10-17 01:14:26','2021-07-17 10:12:16'),(100,78,5,1,'2021-04-13 11:58:22','2021-07-11 00:54:10');
/*!40000 ALTER TABLE `booking_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор книги',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название книги',
  `author_id` int unsigned NOT NULL COMMENT 'Автор',
  `category_id` int unsigned DEFAULT NULL COMMENT 'Категория',
  `lang_id` int unsigned DEFAULT NULL COMMENT 'Категория',
  `binding` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Переплет(s - soft, h - hard)',
  `condition_id` int unsigned DEFAULT NULL COMMENT 'Состояние книги',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_idx` (`name`),
  KEY `books_category_id_fk` (`category_id`),
  KEY `books_lang_id_fk` (`lang_id`),
  KEY `books_condition_id_fk` (`condition_id`),
  KEY `books_author_id_fk` (`author_id`),
  CONSTRAINT `books_author_id_fk` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  CONSTRAINT `books_category_id_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `books_condition_id_fk` FOREIGN KEY (`condition_id`) REFERENCES `conditions` (`id`),
  CONSTRAINT `books_lang_id_fk` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Книги';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Hic dolores nulla.',9,9,2,'s',3,'2021-01-16 06:58:15','2021-01-25 22:34:07'),(2,'Impedit unde ipsam.',16,2,7,'h',2,'2017-10-26 08:53:08','2020-11-21 22:59:14'),(3,'Dolor necessitatibus.',3,3,6,'h',5,'2016-04-08 05:12:22','2020-12-29 20:15:59'),(4,'Quia pariatur adipisci.',6,8,9,'s',3,'2016-02-03 21:55:19','2020-11-07 07:07:07'),(5,'Aliquam consequatur.',10,11,4,'s',5,'2014-06-01 16:34:39','2020-09-14 07:33:47'),(6,'Laboriosam voluptatem.',15,4,4,'s',1,'2017-07-13 08:32:29','2020-08-12 08:34:40'),(7,'Est a.',13,8,1,'s',3,'2013-03-26 17:13:56','2021-02-16 13:47:11'),(8,'Consequatur ut.',13,9,1,'s',5,'2012-01-28 03:05:47','2020-10-19 11:34:42'),(9,'Incidunt molestiae fuga.',11,11,1,'s',2,'2018-04-01 03:53:38','2020-09-15 20:05:25'),(10,'Qui nihil.',7,6,5,'h',2,'2018-07-25 09:49:35','2021-07-12 08:25:18'),(11,'Praesentium id.',3,9,7,'s',1,'2014-11-24 11:04:52','2021-03-06 06:08:31'),(12,'Fugiat veniam.',18,1,1,'h',2,'2015-12-20 04:01:08','2021-03-29 03:02:01'),(13,'Perspiciatis porro.',6,9,1,'h',5,'2013-11-20 19:37:43','2020-12-24 11:17:27'),(14,'Nesciunt voluptas atque.',19,9,9,'s',5,'2021-05-01 21:11:32','2021-07-04 00:52:49'),(15,'Nostrum exercitationem.',20,5,9,'h',5,'2015-12-20 06:02:24','2021-01-20 15:00:53'),(16,'Quaerat quasi.',14,10,5,'s',5,'2013-04-13 00:24:06','2020-09-24 11:00:42'),(17,'Minima atque doloremque.',20,9,9,'h',2,'2021-01-07 11:58:58','2021-05-16 22:35:39'),(18,'Deserunt sint.',5,1,1,'s',2,'2020-07-25 19:45:00','2020-08-14 23:53:27'),(19,'Dolorem rerum fugiat.',12,7,6,'s',1,'2012-04-26 17:22:04','2021-02-14 12:45:22'),(20,'Voluptatem provident.',8,11,10,'s',3,'2013-08-06 13:52:02','2021-05-19 15:23:51'),(21,'Qui minus delectus.',11,11,6,'s',1,'2019-11-02 17:58:20','2020-12-30 00:25:49'),(22,'Asperiores nihil odio.',18,5,8,'s',3,'2012-09-26 16:45:59','2020-12-10 06:20:27'),(23,'Sed reiciendis.',1,4,2,'h',3,'2020-08-29 11:50:02','2020-08-24 23:58:53'),(24,'Totam autem.',5,5,7,'s',1,'2020-11-19 13:08:53','2021-06-15 11:41:30'),(25,'Ut nostrum.',7,8,6,'s',2,'2012-03-31 22:09:30','2020-09-08 15:36:55'),(26,'Adipisci eos quaerat.',5,2,9,'h',3,'2016-08-11 15:13:08','2020-08-11 15:08:34'),(27,'Qui id corrupti.',5,1,1,'s',1,'2014-07-13 19:43:08','2021-03-17 03:11:42'),(28,'Ex error.',5,12,4,'s',4,'2017-11-05 17:17:49','2021-06-01 12:11:21'),(29,'Quia eos.',4,8,8,'s',2,'2018-11-16 10:50:55','2021-07-13 14:10:18'),(30,'Sapiente fugiat.',2,9,9,'h',2,'2014-10-20 20:42:29','2020-12-03 23:31:04'),(31,'Voluptate atque.',13,2,2,'h',4,'2020-08-21 08:52:42','2021-07-05 12:50:10'),(32,'Laudantium aut.',11,8,5,'s',2,'2017-04-18 22:15:16','2020-10-13 16:10:02'),(33,'Ipsum numquam laboriosam.',6,12,9,'h',1,'2014-12-10 13:08:51','2020-08-20 21:35:46'),(34,'Ut cupiditate omnis.',18,4,4,'h',2,'2012-06-14 19:12:06','2020-10-10 04:03:53'),(35,'Quas autem ut.',1,3,2,'h',1,'2017-09-30 13:03:59','2021-04-04 11:07:18'),(36,'Modi accusamus nihil.',3,13,10,'s',3,'2012-01-10 02:54:34','2021-02-17 17:00:03'),(37,'Commodi dolorem.',11,2,5,'h',5,'2013-04-05 17:09:25','2021-01-21 22:44:46'),(38,'Aut itaque id.',18,2,2,'h',4,'2018-09-20 05:24:11','2021-07-06 04:21:46'),(39,'Consequatur et suscipit.',16,4,8,'h',3,'2015-03-30 19:25:13','2021-05-16 12:52:21'),(40,'Consequuntur reiciendis.',7,1,2,'s',2,'2013-10-01 22:12:26','2020-11-04 11:00:59'),(41,'Recusandae sequi.',2,12,2,'s',4,'2019-01-03 10:06:19','2021-05-02 09:39:35'),(42,'Sunt sint temporibus.',16,6,10,'h',5,'2012-01-02 10:57:29','2021-03-30 12:17:23'),(43,'Recusandae laboriosam dolor.',18,5,3,'s',5,'2020-11-05 09:47:13','2021-07-14 05:01:35'),(44,'Culpa quasi voluptatem.',15,3,3,'h',1,'2012-03-25 05:40:52','2021-02-09 18:02:17'),(45,'Nam quidem.',6,4,5,'h',2,'2014-12-03 12:19:05','2021-03-01 00:34:57'),(46,'Rerum qui.',10,13,8,'s',3,'2014-02-18 12:49:08','2021-04-30 19:19:58'),(47,'Veritatis voluptas.',18,8,2,'s',3,'2015-11-09 02:00:30','2020-11-29 06:03:17'),(48,'Quia rerum.',13,6,1,'h',4,'2015-08-10 20:51:17','2021-07-14 04:36:49'),(49,'Quis enim.',11,3,9,'h',3,'2014-10-10 16:10:03','2021-06-08 20:44:14'),(50,'Debitis modi.',14,1,3,'h',1,'2018-02-07 10:59:31','2020-12-06 08:44:03'),(51,'Atque ab.',18,10,6,'s',3,'2019-01-02 23:13:36','2020-11-08 21:38:12'),(52,'Ut et doloremque.',4,3,9,'h',3,'2014-01-22 19:59:01','2021-01-03 04:31:09'),(53,'Eveniet eos.',7,6,1,'s',2,'2017-10-06 18:52:16','2020-08-22 07:48:56'),(54,'Quidem eveniet et.',14,5,6,'s',4,'2017-12-27 20:28:13','2020-11-13 06:48:29'),(55,'Dolores alias facere.',11,13,8,'s',3,'2011-09-21 06:58:08','2021-06-05 09:25:36'),(56,'Nam aliquam.',4,8,2,'s',1,'2019-11-25 11:17:43','2021-04-30 02:33:18'),(57,'Beatae error.',1,11,3,'s',1,'2021-02-14 13:26:24','2021-07-11 23:38:44'),(58,'Id et et.',19,4,7,'h',2,'2015-01-31 02:14:11','2020-08-13 08:14:43'),(59,'Alias dolorem.',11,9,3,'s',5,'2013-01-06 19:22:32','2020-09-13 19:55:02'),(60,'Aut minus totam.',7,13,9,'s',4,'2014-02-12 19:51:49','2021-03-01 08:46:14'),(61,'Qui qui molestiae.',1,3,5,'s',2,'2016-12-11 13:47:22','2021-07-29 18:31:28'),(62,'Veritatis occaecati ducimus.',3,13,1,'h',1,'2012-07-24 02:51:36','2021-04-13 23:56:01'),(63,'Recusandae dolorem.',2,5,9,'s',3,'2016-01-13 11:27:49','2020-09-22 03:10:23'),(64,'Explicabo sint.',1,4,8,'s',4,'2015-09-25 23:39:58','2021-01-18 04:59:34'),(65,'Facere saepe.',13,7,5,'s',4,'2017-03-12 04:23:59','2020-12-31 13:41:46'),(66,'Nesciunt molestias.',4,6,7,'s',3,'2020-06-16 02:14:44','2021-01-15 19:50:08'),(67,'Asperiores voluptate.',12,9,4,'h',5,'2014-03-05 22:07:40','2021-01-26 08:45:15'),(68,'Ex nostrum.',13,2,2,'s',3,'2014-04-09 17:55:44','2021-06-25 15:14:49'),(69,'Nobis voluptatem et.',13,13,1,'h',4,'2014-06-16 16:59:53','2021-04-09 16:13:06'),(70,'Est itaque blanditiis.',4,6,4,'s',5,'2011-12-26 11:23:55','2021-05-12 19:26:15'),(71,'Quasi est.',8,9,2,'s',5,'2018-10-16 15:46:28','2021-03-30 08:39:28'),(72,'Enim accusantium repudiandae.',17,5,6,'h',1,'2015-09-13 22:51:07','2021-03-02 22:30:46'),(73,'Repellendus numquam fuga.',19,4,6,'s',5,'2013-12-05 08:16:00','2021-01-25 05:05:40'),(74,'Deserunt asperiores.',15,12,5,'h',4,'2017-04-22 08:44:17','2020-10-16 16:51:01'),(75,'Ab et.',11,1,2,'h',5,'2013-05-29 01:19:41','2021-02-16 01:00:26'),(76,'Ea autem.',20,13,4,'h',4,'2014-09-02 10:48:48','2021-04-18 06:10:21'),(77,'Non eos.',2,1,10,'h',2,'2021-04-20 05:29:12','2021-05-02 03:43:05'),(78,'Assumenda est in.',2,11,2,'h',4,'2019-01-04 13:27:30','2021-03-18 09:14:44'),(79,'Excepturi quo explicabo.',9,4,1,'s',3,'2018-06-06 11:46:17','2021-03-13 22:36:59'),(80,'Exercitationem quia libero.',13,9,2,'h',1,'2012-11-20 03:04:28','2021-04-24 07:14:15'),(81,'Reiciendis ratione ut.',10,4,4,'s',5,'2019-05-11 16:39:54','2021-01-03 00:08:03'),(82,'Dolorum sunt.',9,8,3,'s',2,'2019-03-30 15:36:26','2020-10-03 17:31:16'),(83,'Id rem labore.',18,13,9,'s',3,'2015-11-13 03:48:50','2021-02-22 19:39:17'),(84,'Voluptatem iste molestiae.',3,5,4,'h',5,'2021-06-16 07:35:21','2020-09-01 23:58:20'),(85,'Ratione veritatis.',9,13,3,'h',5,'2014-12-12 16:33:35','2021-03-10 09:35:13'),(86,'Suscipit est.',9,6,3,'h',3,'2021-04-11 09:06:19','2021-02-27 08:38:22'),(87,'Qui maiores.',10,5,2,'h',5,'2011-09-07 15:50:56','2021-01-20 05:44:38'),(88,'Totam error qui.',4,1,9,'s',5,'2018-07-19 20:22:50','2021-03-16 11:37:50'),(89,'Voluptatibus voluptate.',7,5,10,'h',2,'2017-05-23 20:24:30','2021-05-07 12:32:55'),(90,'Debitis ut.',19,10,7,'h',1,'2012-01-28 23:43:06','2021-02-18 21:11:18'),(91,'Molestiae quia.',15,6,7,'s',3,'2016-08-02 03:03:20','2021-03-25 21:50:04'),(92,'Doloremque voluptatem.',3,4,4,'h',4,'2019-06-15 08:12:14','2021-07-06 04:15:09'),(93,'Iusto eius et.',9,8,6,'h',5,'2015-04-15 05:46:29','2021-01-19 02:54:44'),(94,'Maxime dolores.',18,7,9,'h',1,'2012-12-10 10:35:54','2020-12-12 11:57:08'),(95,'Aut illum.',8,13,4,'s',4,'2016-12-27 00:31:10','2021-06-07 15:02:57'),(96,'Doloremque commodi.',2,4,4,'h',4,'2015-02-18 19:48:52','2020-08-22 01:08:30'),(97,'Et accusamus dicta.',16,12,5,'h',5,'2013-04-30 20:06:11','2020-09-05 02:03:34'),(98,'Iusto fuga et.',18,13,3,'s',2,'2012-04-27 07:31:50','2020-12-23 11:53:21'),(99,'Sed et.',6,11,10,'s',5,'2013-03-31 14:04:29','2020-11-01 03:48:51'),(100,'Sit perspiciatis.',5,13,5,'s',3,'2018-06-03 09:50:20','2021-07-31 18:19:55');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Категория книги';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,' technition'),(2,' cookbooks'),(3,' monographic'),(4,' artists_books'),(5,' poetry'),(6,' fictional'),(7,' diaries'),(8,' history'),(9,' lecture'),(10,'non_fiction'),(11,' prayer_book'),(12,' graphic_books'),(13,' manuscripts');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_idx` (`name`),
  KEY `cities_countries_id_fk` (`country_id`),
  CONSTRAINT `cities_countries_id_fk` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'New Antonebury',3),(2,'Lloydhaven',1),(3,'Julesside',8),(4,'Bartolettiburgh',7),(5,'Murazikmouth',2),(6,'Port Lavern',5),(7,'Siennaside',4),(8,'Dareland',2),(9,'Lake Kamille',6),(10,'Blockchester',1),(11,'South Mercedeston',7),(12,'South Tommie',4),(13,'Carleyburgh',5),(14,'Burleyborough',5),(15,'Hermanhaven',6),(16,'North Camillaland',7),(17,'North Joelle',8),(18,'Durganborough',8),(19,'South Raven',6),(20,'Lake Bernard',10),(21,'South Humberto',5),(22,'Kenyaton',9),(23,'Pagacstad',4),(24,'Darontown',10),(25,'South Peggieview',7),(26,'Willmsville',9),(27,'New Romaton',6),(28,'North Elyse',10),(29,'Izaiahborough',5),(30,'South Brianne',10),(31,'South Coltmouth',9),(32,'South Cadechester',6),(33,'Hayesside',1),(34,'Wolffort',7),(35,'East Anastaciobury',2),(36,'Doloresburgh',4),(37,'Lake Louisa',9),(38,'Trantowfurt',4),(39,'New Katarina',6),(40,'Lake Lenniemouth',9),(41,'Fritschport',4),(42,'South Alexis',2),(43,'Janyburgh',2),(44,'South Breanneburgh',6),(45,'Lucashaven',3),(46,'Kenyattachester',5),(47,'Gregberg',5),(48,'North Briashire',2),(49,'Lake Cathy',6),(50,'Heidenreichland',8);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conditions`
--

DROP TABLE IF EXISTS `conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conditions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `criterion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Состояние книги';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conditions`
--

LOCK TABLES `conditions` WRITE;
/*!40000 ALTER TABLE `conditions` DISABLE KEYS */;
INSERT INTO `conditions` VALUES (1,' good','voluptatem'),(2,' satisfactory','distinctio'),(3,'dilapidate','aut'),(4,' bad','dolores'),(5,' excellent','quidem');
/*!40000 ALTER TABLE `conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Uganda'),(2,'Macedonia'),(3,'Uruguay'),(4,'Paraguay'),(5,'Qatar'),(6,'Saint Vincent and the Grenadines'),(7,'Palestinian Territory'),(8,'Seychelles'),(9,'Congo'),(10,'Saint Helena');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_of_books`
--

DROP TABLE IF EXISTS `detail_of_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_of_books` (
  `book_id` int unsigned NOT NULL COMMENT 'Идентификатор книги',
  `original_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Оригинальное название книги',
  `publish_house_id` int unsigned DEFAULT NULL COMMENT 'Издательство',
  `publication_date` date NOT NULL COMMENT 'Дата публикации',
  `pages` int unsigned DEFAULT NULL COMMENT 'Количество страниц',
  `ISBN` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ISBN',
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Заметки',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`book_id`),
  UNIQUE KEY `publication_date_idx` (`publication_date`),
  KEY `detail_of_books_publish_house_id_fk` (`publish_house_id`),
  CONSTRAINT `books_book_id_fk` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  CONSTRAINT `detail_of_books_publish_house_id_fk` FOREIGN KEY (`publish_house_id`) REFERENCES `publish_houses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Детальная карточка книги';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_of_books`
--

LOCK TABLES `detail_of_books` WRITE;
/*!40000 ALTER TABLE `detail_of_books` DISABLE KEYS */;
INSERT INTO `detail_of_books` VALUES (1,'And here any.',5,'1997-04-13',169,'9365313868038','Pigeon had finished. \'As if I might venture to go near the entrance of the court. All this time the Queen said--\' \'Get to your places!\' shouted the Queen was silent. The Dormouse shook its head.','2013-06-11 16:25:05','2021-02-21 06:52:06'),(2,'Gryphon..',7,'1931-05-21',474,'6253537956625','For instance, if you please! \"William the Conqueror, whose cause was favoured by the soldiers, who of course had to kneel down on the stairs. Alice knew it was a paper label, with the other: the.','2014-01-10 13:55:17','2020-10-16 21:32:44'),(3,'ME\' were ten.',2,'1929-03-14',371,'8146458592731','Alice by the White Rabbit. She was close behind us, and he\'s treading on her toes when they passed too close, and waving their forepaws to mark the time, while the rest waited in silence. At last.','2012-04-20 04:15:51','2021-03-23 10:16:09'),(4,'The Gryphon.',6,'1961-11-05',369,'7061495658475','Cat, \'if you don\'t know one,\' said Alice, in a large caterpillar, that was said, and went on for some time after the candle is like after the candle is like after the others. \'We must burn the house.','2014-11-11 07:34:38','2021-08-07 10:43:43'),(5,'Alice thought.',10,'1949-09-20',251,'4214514344464','Gryphon. \'We can do no more, whatever happens. What WILL become of you? I gave her one, they gave him two, You gave us three or more; They all made a memorandum of the lefthand bit. * * * * * * * *.','2014-11-21 10:02:08','2020-10-13 01:25:06'),(6,'Turtle--we.',5,'2001-04-09',39,'6986368123907','March.\' As she said this, she came upon a neat little house, on the English coast you find a pleasure in all their simple sorrows, and find a thing,\' said the Hatter; \'so I can\'t put it in a shrill,.','2017-10-17 15:31:31','2020-12-05 18:24:07'),(7,'Alice, as he.',2,'1953-03-04',224,'9606759052257','Alice gently remarked; \'they\'d have been was not even room for YOU, and no one could possibly hear you.\' And certainly there was a real Turtle.\' These words were followed by a very little! Besides,.','2015-08-05 20:23:55','2021-07-16 14:16:51'),(8,'Alice felt.',6,'1923-11-23',393,'2971461533103','I could, if I might venture to go from here?\' \'That depends a good deal to come out among the trees upon her face. \'Very,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Caterpillar..','2015-03-30 16:22:20','2021-02-24 09:47:39'),(9,'Gryphon, and.',4,'1979-06-24',237,'7032614750787','Hatter dropped his teacup instead of onions.\' Seven flung down his face, as long as there was nothing else to say than his first remark, \'It was the Rabbit began. Alice thought to herself \'Now I can.','2013-02-28 21:19:39','2020-11-20 12:16:44'),(10,'A secret,.',8,'1959-10-31',27,'7382189260330','Cat. \'I\'d nearly forgotten that I\'ve got to see the Queen. \'You make me grow smaller, I suppose.\' So she called softly after it, \'Mouse dear! Do come back and finish your story!\' Alice called after.','2020-07-06 11:27:40','2021-01-23 15:37:55'),(11,'I ever see.',9,'1952-03-24',309,'8889872987288','For really this morning I\'ve nothing to what I was sent for.\' \'You ought to be in a great crash, as if she were saying lessons, and began to say it out to sea as you can--\' \'Swim after them!\'.','2017-09-02 12:38:38','2021-06-07 17:15:20'),(12,'The further.',3,'1972-01-08',76,'7233204539865','Dodo could not be denied, so she bore it as well as pigs, and was delighted to find her way through the little door about fifteen inches high: she tried another question. \'What sort of a.','2017-10-05 06:01:03','2021-03-27 17:56:15'),(13,'Dormouse\'s.',2,'2002-03-27',39,'3702907709870','Alice: he had to fall a long breath, and till the puppy\'s bark sounded quite faint in the kitchen that did not get dry again: they had a little shriek and a large cat which was full of smoke from.','2015-04-15 22:46:24','2020-10-25 18:58:00'),(14,'Duchess; \'and.',7,'1995-11-05',323,'9306307025719','I tell you!\' But she went in search of her age knew the meaning of half an hour or so there were no tears. \'If you\'re going to dive in among the branches, and every now and then a great interest in.','2018-06-09 21:37:24','2020-09-07 00:12:43'),(15,'I fell off.',4,'1922-09-29',433,'1655087252613','And yet you incessantly stand on their slates, and she had caught the flamingo and brought it back, the fight was over, and she put one arm out of a procession,\' thought she, \'if people had all to.','2021-05-16 23:52:54','2020-11-16 17:09:19'),(16,'Two, in.',1,'1973-03-13',167,'7396831074729','Who ever saw one that size? Why, it fills the whole she thought at first was in the middle. Alice kept her eyes filled with tears again as she went back to the Mock Turtle. \'She can\'t explain.','2015-02-25 12:26:59','2021-02-09 18:38:43'),(17,'Alice noticed.',2,'1944-01-08',389,'9073925042524','HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'I wonder if I shall have somebody to talk to.\' \'How are you getting on now, my dear?\' it continued,.','2014-04-06 16:46:11','2021-01-13 02:08:21'),(18,'Though they.',6,'1957-07-10',487,'3369976625777','I\'ve kept her eyes to see anything; then she walked on in a pleased tone. \'Pray don\'t trouble yourself to say it out to be sure; but I shall have to go on. \'And so these three weeks!\' \'I\'m very.','2012-01-06 21:56:33','2020-10-25 09:10:15'),(19,'Pigeon. \'I.',4,'1991-10-13',202,'5025762102566','CHAPTER IV. The Rabbit started violently, dropped the white kid gloves in one hand, and made a dreadfully ugly child: but it had been. But her sister sat still just as usual. I wonder what CAN have.','2018-05-19 21:06:11','2021-03-23 00:59:30'),(20,'Cat, as.',5,'1946-12-18',222,'5069726592861','MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at the Duchess said in a tone of great relief. \'Call the next witness. It quite makes my forehead ache!\' Alice watched the Queen added to.','2014-06-18 20:03:11','2021-07-09 14:36:47'),(21,'I\'ll have you.',5,'2017-07-01',444,'7437011672183','I suppose I ought to eat or drink something or other; but the Mouse in the back. However, it was all finished, the Owl, as a partner!\' cried the Mouse, sharply and very soon had to ask them what the.','2012-11-16 03:41:24','2021-03-31 08:36:51'),(22,'VERY tired.',3,'1954-07-20',462,'4206769189331','MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon remarked: \'because they lessen from day to such stuff? Be off, or I\'ll have you got in.','2012-08-20 20:10:00','2021-04-18 05:36:30'),(23,'Gryphon: and.',1,'1963-03-15',131,'9710309364832','THAT direction,\' waving the other paw, \'lives a Hatter: and in another moment, when she heard a little wider. \'Come, it\'s pleased so far,\' said the Hatter was out of breath, and till the Pigeon the.','2012-08-04 21:07:13','2021-05-27 23:37:03'),(24,'Hatter added.',9,'1935-01-31',280,'6783245147671','The Frog-Footman repeated, in the last words out loud, and the March Hare,) \'--it was at in all my life!\' She had quite a commotion in the pictures of him), while the rest were quite silent, and.','2020-07-17 16:20:22','2021-07-02 01:13:38'),(25,'Dormouse!\'.',4,'1945-04-28',153,'6725936965085','I BEG your pardon!\' said the Pigeon. \'I\'m NOT a serpent, I tell you, you coward!\' and at once in the sand with wooden spades, then a row of lamps hanging from the trees under which she had somehow.','2016-01-25 20:39:57','2021-07-04 16:38:53'),(26,'You know the.',7,'2016-04-08',426,'8722097288817','Pigeon went on, without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was more than nine feet high. \'I wish you could manage it?) \'And what are they doing?\' Alice whispered.','2011-12-11 00:05:43','2020-09-23 21:39:33'),(27,'Alice dodged.',7,'1950-11-26',191,'8950100800488','They all sat down again into its nest. Alice crouched down among the trees, a little startled by seeing the Cheshire Cat, she was out of its voice. \'Back to land again, and she tried another.','2015-10-07 16:17:51','2020-12-06 00:19:42'),(28,'Mock Turtle:.',7,'1946-05-02',252,'6383461026474','Alice replied very politely, feeling quite pleased to find that her shoulders were nowhere to be full of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said.','2021-03-14 06:55:42','2021-04-24 13:33:05'),(29,'I wouldn\'t.',5,'1968-11-25',405,'6964443747419','Mouse to Alice for protection. \'You shan\'t be able! I shall think nothing of tumbling down stairs! How brave they\'ll all think me for asking! No, it\'ll never do to come once a week: HE taught us.','2012-03-17 07:42:08','2021-04-04 03:30:31'),(30,'I\'ll stay.',3,'1933-11-25',215,'8115828687790','Hatter added as an explanation; \'I\'ve none of YOUR adventures.\' \'I could tell you how it was the White Rabbit read out, at the door--I do wish they WOULD not remember the simple rules their friends.','2013-08-04 16:24:48','2020-12-23 01:11:36'),(31,'I ever eat or.',8,'1992-06-20',203,'6022168876137','For he can thoroughly enjoy The pepper when he sneezes; For he can EVEN finish, if he would not allow without knowing how old it was, even before she found herself safe in a sulky tone, as it was.','2013-01-11 10:56:11','2020-12-03 17:21:20'),(32,'Mouse,.',10,'1931-03-23',326,'9638689489103','YOUR temper!\' \'Hold your tongue!\' added the Gryphon; and then sat upon it.) \'I\'m glad they don\'t give birthday presents like that!\' \'I couldn\'t help it,\' said Alice. \'Exactly so,\' said the King..','2016-09-18 21:13:48','2020-10-23 03:53:07'),(33,'Will you,.',10,'2001-09-25',293,'5604954897426','The Mouse did not wish to offend the Dormouse shall!\' they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what are they made of?\' Alice asked in a voice sometimes choked with sobs, to.','2015-08-18 00:12:02','2021-02-13 10:37:24'),(34,'Come on!\' and.',9,'2021-02-21',106,'8229833169840','King. \'When did you call him Tortoise, if he had a pencil that squeaked. This of course, I meant,\' the King eagerly, and he wasn\'t one?\' Alice asked. The Hatter was the BEST butter,\' the March Hare.','2012-08-18 09:16:22','2020-10-27 23:00:51'),(35,'What would.',6,'1988-03-13',357,'6155491268727','Gryphon went on eagerly. \'That\'s enough about lessons,\' the Gryphon said to Alice, very loudly and decidedly, and there was nothing else to do, and in his throat,\' said the Duchess; \'and that\'s a.','2020-02-03 14:31:27','2021-07-20 10:52:37'),(36,'So she was.',9,'2002-04-28',314,'1113086651079','The poor little thing sat down in an offended tone, and everybody laughed, \'Let the jury wrote it down into its mouth and began bowing to the other arm curled round her once more, while the rest of.','2015-04-29 01:46:34','2020-08-22 12:55:58'),(37,'IS the right.',3,'2017-07-05',286,'1084045841824','WHAT?\' said the Rabbit in a great deal of thought, and it sat for a minute or two the Caterpillar took the least notice of them even when they hit her; and the other was sitting between them, fast.','2019-01-15 04:21:23','2021-02-14 02:06:24'),(38,'Pigeon,.',7,'1944-08-17',132,'8595556916203','Hatter, and, just as well she might, what a dear little puppy it was!\' said Alice, a little startled when she found that her flamingo was gone across to the law, And argued each case with my wife;.','2014-07-02 20:52:11','2021-05-07 10:30:56'),(39,'This is a.',4,'1941-02-14',231,'9018977983389','Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, I fancy--Who\'s to go on in a hurry. \'No, I\'ll look first,\' she said, \'than waste it in a melancholy tone: \'it doesn\'t seem to.','2014-04-16 22:35:15','2021-03-21 08:23:22'),(40,'Gryphon.',6,'1935-01-25',21,'8778888978529','YOUR table,\' said Alice; \'all I know all sorts of little Alice and all dripping wet, cross, and uncomfortable. The first thing she heard something splashing about in all their simple joys,.','2019-04-29 14:57:55','2020-12-06 20:18:01'),(41,'Alice as well.',5,'1972-12-03',167,'4957383575849','Duchess replied, in a fight with another hedgehog, which seemed to be two people! Why, there\'s hardly enough of it at all,\' said the Queen to play croquet.\' The Frog-Footman repeated, in the same.','2019-08-31 11:43:04','2021-01-02 04:33:32'),(42,'No accounting.',3,'1956-01-23',104,'6302498664706','The first thing I\'ve got to go through next walking about at the March Hare. \'Sixteenth,\' added the Gryphon, sighing in his sleep, \'that \"I breathe when I sleep\" is the driest thing I ever heard!\'.','2013-10-11 19:28:16','2020-11-04 14:22:32'),(43,'IS that she.',9,'1934-09-15',384,'1342424243222','Mouse, who was sitting on the look-out for serpents night and day! Why, I haven\'t had a consultation about this, and after a few minutes it seemed quite natural to Alice as he spoke, and added with.','2016-07-26 01:52:49','2021-03-16 21:53:41'),(44,'Dodo replied.',6,'1949-10-28',328,'7531330102123','Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow here,\' said the Dodo, \'the best way to explain the mistake it had VERY long claws and a scroll of parchment in the other: the only.','2015-03-20 00:38:35','2020-11-10 13:52:04'),(45,'But do to.',9,'2019-01-15',43,'5700059097260','Alice heard it before,\' said Alice,) and round goes the clock in a hurried nervous manner, smiling at everything about her, to pass away the moment she quite forgot how to begin.\' He looked at.','2011-09-24 16:23:51','2021-01-09 13:45:20'),(46,'Who ever.',2,'1984-11-24',413,'7374411583412','Hatter. Alice felt that there was a little timidly: \'but it\'s no use in crying like that!\' He got behind Alice as she ran. \'How surprised he\'ll be when he sneezes; For he can EVEN finish, if he.','2020-10-25 13:29:22','2020-10-15 02:45:58'),(47,'Alice, very.',6,'1963-11-15',33,'5215754374861','Next came the royal children; there were a Duck and a long breath, and said anxiously to herself, for this time she saw in another moment, splash! she was now about two feet high, and was delighted.','2014-01-30 19:31:16','2020-08-31 19:52:21'),(48,'Alice dodged.',10,'2004-09-12',406,'9857446479145','Mock Turtle, who looked at Alice. \'I\'M not a bit of mushroom, and raised herself to some tea and bread-and-butter, and went on at last, with a growl, And concluded the banquet--] \'What IS the fun?\'.','2014-04-09 13:34:12','2020-11-17 12:31:58'),(49,'Pigeon in.',8,'1967-06-28',295,'4269383393228','Mock Turtle at last, and they sat down with her head down to her great disappointment it was YOUR table,\' said Alice; \'that\'s not at all anxious to have been changed several times since then.\' \'What.','2021-01-23 03:30:04','2020-12-31 10:29:02'),(50,'I\'m not.',10,'2008-01-11',180,'6739779581781','Father William replied to his ear. Alice considered a little, and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can find out the Fish-Footman was gone, and the White.','2016-11-07 19:46:50','2021-03-29 15:40:37'),(51,'Gryphon in an.',5,'1971-12-16',279,'6700220732949','King said gravely, \'and go on in a melancholy way, being quite unable to move. She soon got it out into the garden at once; but, alas for poor Alice! when she went on. \'I do,\' Alice said very.','2021-05-19 05:02:32','2021-02-21 07:09:35'),(52,'I know. But.',2,'2004-12-09',187,'4143226626794','So Alice began telling them her adventures from the time they had to stop and untwist it. After a while, finding that nothing more to do THAT in a VERY turn-up nose, much more like a star-fish,\'.','2021-04-12 10:58:07','2020-08-24 14:20:39'),(53,'Let me a.',2,'1923-08-21',169,'1705497874878','Who ever saw in my time, but never ONE with such a fall as this, I shall think nothing of the jurymen. \'No, they\'re not,\' said the King, \'and don\'t be nervous, or I\'ll kick you down stairs!\' \'That.','2013-04-11 23:28:01','2020-12-28 05:40:50'),(54,'Alice.',5,'1957-07-20',85,'6339882870670','VERY much out of the evening, beautiful Soup! \'Beautiful Soup! Who cares for fish, Game, or any other dish? Who would not open any of them. However, on the spot.\' This did not sneeze, were the two.','2013-04-12 05:32:59','2021-03-12 23:20:23'),(55,'Eaglet. \'I.',10,'1977-12-02',356,'2737021143082','First, she dreamed of little Alice herself, and shouted out, \'You\'d better not talk!\' said Five. \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I am, sir,\' said Alice;.','2016-11-16 15:43:10','2021-03-03 09:31:59'),(56,'Hatter: and.',6,'1951-10-31',108,'4204975189641','Alice sadly. \'Hand it over a little hot tea upon its nose. The Dormouse slowly opened his eyes were looking over their slates; \'but it doesn\'t matter which way you can;--but I must be kind to them,\'.','2015-07-16 00:13:16','2020-09-13 22:00:30'),(57,'Alice found.',2,'1976-09-07',294,'2773764263372','I\'m I, and--oh dear, how puzzling it all came different!\' the Mock Turtle went on. \'Would you tell me, please, which way she put her hand again, and said, \'That\'s right, Five! Always lay the blame.','2021-05-25 08:26:49','2021-05-06 20:12:40'),(58,'Queen. \'It is.',7,'1987-12-31',294,'5338619530200','Queen of Hearts, who only bowed and smiled in reply. \'Idiot!\' said the Dormouse, not choosing to notice this last word with such sudden violence that Alice said; \'there\'s a large cat which was.','2020-09-03 10:35:01','2021-05-17 02:39:19'),(59,'I\'m I,.',2,'1963-01-12',30,'9089641991071','France-- Then turn not pale, beloved snail, but come and join the dance? Will you, won\'t you, will you, won\'t you join the dance? Will you, won\'t you, will you join the dance. Will you, won\'t you,.','2012-03-15 13:44:27','2021-01-26 03:03:20'),(60,'Alice with.',6,'1963-06-11',460,'6786801673006','Wonderland of long ago: and how she was coming to, but it is.\' \'I quite agree with you,\' said the Hatter. \'He won\'t stand beating. Now, if you hold it too long; and that he had come back again, and.','2020-09-13 23:40:11','2020-09-26 03:53:51'),(61,'He says it.',10,'1946-09-29',365,'2803152188193','Indeed, she had not as yet had any sense, they\'d take the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, the Lizard) could.','2020-05-19 21:11:26','2021-04-22 10:02:11'),(62,'Magpie began.',10,'2007-10-27',45,'5072445929516','How queer everything is to-day! And yesterday things went on planning to herself as she fell very slowly, for she had never seen such a simple question,\' added the Gryphon, sighing in his turn; and.','2011-12-12 08:46:28','2021-04-03 01:11:38'),(63,'Alice sighed.',5,'2012-06-25',138,'3500811810139','Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never was so full of the room. The cook threw a frying-pan after her as hard as she heard it say to itself, \'Oh dear! Oh dear! I\'d.','2012-12-07 12:48:32','2021-01-06 13:45:19'),(64,'I ever be.',9,'1936-07-31',269,'4184572048950','Gryphon. \'It\'s all about for a conversation. Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I mean what I like\"!\' \'You might just as she could, and waited to see how.','2018-02-09 03:32:54','2021-03-22 16:53:07'),(65,'I don\'t.',8,'2006-01-31',44,'2497511947993','Hatter. \'Does YOUR watch tell you my adventures--beginning from this morning,\' said Alice indignantly, and she crossed her hands on her lap as if his heart would break. She pitied him deeply. \'What.','2012-09-17 09:57:33','2020-11-26 00:08:08'),(66,'Alice)--\'and.',10,'1982-12-31',190,'4988105954136','Alice looked all round her at the March Hare, \'that \"I like what I see\"!\' \'You might just as I\'d taken the highest tree in the wind, and was going to do it! Oh dear! I\'d nearly forgotten to ask.\'.','2016-12-28 15:09:45','2021-01-06 01:25:36'),(67,'The poor.',7,'1989-06-08',499,'8229024353902','Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little faster?\" said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen merely remarking as it is.\' \'Then you may SIT.','2013-03-16 11:42:49','2021-05-01 16:59:51'),(68,'MYSELF, I\'m a.',1,'1978-06-28',193,'5018019801471','Pat, what\'s that in the sky. Alice went on, yawning and rubbing its eyes, \'Of course, of course; just what I get\" is the capital of Paris, and Paris is the reason so many different sizes in a.','2020-12-10 12:07:12','2021-05-09 09:59:46'),(69,'The March.',7,'1965-11-23',378,'1936522991396','Alice alone with the Queen, who were all shaped like the right way of settling all difficulties, great or small. \'Off with her arms folded, quietly smoking a long silence after this, and Alice.','2013-05-15 22:29:54','2020-10-13 02:36:39'),(70,'Take your.',1,'2000-07-21',444,'2594178333412','Alice, \'or perhaps they won\'t walk the way I want to see it trot away quietly into the sky. Alice went on, \'What HAVE you been doing here?\' \'May it please your Majesty,\' said Two, in a trembling.','2012-09-03 17:05:59','2021-03-03 04:59:04'),(71,'I hadn\'t gone.',6,'1965-02-05',73,'4227656338829','That\'ll be a walrus or hippopotamus, but then she noticed that one of these cakes,\' she thought, \'it\'s sure to do that,\' said the March Hare. \'Exactly so,\' said the King added in a large ring, with.','2012-10-30 15:09:58','2020-10-22 22:58:16'),(72,'Tea-Party.',1,'1968-02-18',408,'9734396331012','Alice waited a little, half expecting to see if he doesn\'t begin.\' But she did not wish to offend the Dormouse began in a few minutes, and she ran out of its mouth, and its great eyes half shut..','2019-07-07 01:08:20','2021-02-23 04:23:43'),(73,'Prizes!\'.',3,'1986-01-29',77,'8504685015883','I shall have to whisper a hint to Time, and round goes the clock in a very small cake, on which the cook had disappeared. \'Never mind!\' said the Duchess, who seemed ready to sink into the garden at.','2017-03-03 17:59:49','2021-07-27 09:55:01'),(74,'WHAT things?\'.',4,'1983-12-23',368,'5819996671751','Soup! \'Beautiful Soup! Who cares for fish, Game, or any other dish? Who would not allow without knowing how old it was, and, as the doubled-up soldiers were always getting up and rubbed its eyes:.','2017-05-23 05:26:37','2020-09-03 14:13:36'),(75,'Now you know..',6,'1921-10-04',260,'8402616803999','Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, you know--\' She had quite forgotten the little door: but, alas! either the locks were too large, or the key was lying under the sea--\'.','2019-04-09 19:13:09','2020-09-01 15:35:51'),(76,'I should say.',2,'1992-12-24',302,'4333786014467','I like\"!\' \'You might just as well say,\' added the Dormouse. \'Write that down,\' the King added in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, old fellow?\' The.','2020-07-17 23:15:03','2021-04-29 13:30:45'),(77,'I can find a.',6,'1992-01-06',136,'9977649278007','Queen. \'Their heads are gone, if it had finished this short speech, they all stopped and looked at each other for some time without interrupting it. \'They were learning to draw, you know--\' She had.','2019-12-24 05:03:52','2020-11-27 19:28:50'),(78,'Soup is wrong.',2,'1975-06-17',159,'2637204654049','There was nothing else to say whether the pleasure of making a daisy-chain would be of any use, now,\' thought poor Alice, who was trembling down to them, and then sat upon it.) \'I\'m glad they don\'t.','2015-02-18 20:03:36','2021-07-03 02:19:48'),(79,'QUITE as she.',1,'1922-08-24',246,'4253201215527','Alice, quite forgetting that she knew the name of nearly everything there. \'That\'s the judge,\' she said to the little golden key, and when she was always ready to talk to.\' \'How are you thinking.','2017-06-07 11:57:56','2020-12-05 06:37:57'),(80,'THAT like?\'.',3,'1948-03-16',213,'6003883670549','SAID was, \'Why is a very curious sensation, which puzzled her very much at this, she noticed that one of the trial.\' \'Stupid things!\' Alice thought to herself, in a sort of way to explain the paper..','2016-02-06 00:15:28','2021-04-13 12:00:50'),(81,'Dormouse into.',1,'1936-09-21',32,'3664012418594','Alice said to herself, \'after such a curious dream, dear, certainly: but now run in to your little boy, And beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' \'Here! you may SIT down,\' the King.','2019-01-15 18:30:01','2021-03-28 18:02:12'),(82,'I to do well.',6,'1940-09-14',209,'5457842853385','Alice\'s head. \'Is that all?\' said Alice, rather alarmed at the thought that SOMEBODY ought to have the experiment tried. \'Very true,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice,.','2012-02-10 04:48:07','2021-07-25 00:39:25'),(83,'HAVE my.',5,'2016-05-20',76,'9176548752468','These were the two creatures got so close to her: first, because the chimneys were shaped like ears and whiskers, how late it\'s getting!\' She was a real nose; also its eyes again, to see what was on.','2021-02-08 00:27:18','2020-10-20 12:47:57'),(84,'That\'ll be.',3,'1963-01-26',29,'2073973701801','Queen said severely \'Who is it I can\'t take more.\' \'You mean you can\'t swim, can you?\' he added, turning to Alice as he shook his grey locks, \'I kept all my limbs very supple By the use of repeating.','2015-07-09 16:59:44','2021-08-09 03:00:40'),(85,'Duchess began.',1,'1969-08-11',407,'3398107315413','I can say.\' This was such a noise inside, no one listening, this time, and was just in time to begin again, it was perfectly round, she found herself in a ring, and begged the Mouse was speaking,.','2015-09-22 00:36:06','2021-06-15 23:04:20'),(86,'Alice looked.',4,'1970-08-06',17,'8770093394909','This seemed to be otherwise.\"\' \'I think I can find it.\' And she squeezed herself up closer to Alice\'s side as she spoke. (The unfortunate little Bill had left off writing on his spectacles and.','2020-12-22 13:44:41','2020-09-03 03:49:03'),(87,'Alice, \'as.',9,'1985-08-15',18,'3361947638448','What made you so awfully clever?\' \'I have answered three questions, and that you have to fly; and the Queen, stamping on the back. At last the Mouse, sharply and very soon finished off the subjects.','2013-11-28 07:31:25','2020-10-24 00:16:39'),(88,'I have been.',2,'1986-04-18',56,'2285246138460','I\'m not looking for eggs, as it lasted.) \'Then the words \'DRINK ME\' beautifully printed on it (as she had got its neck nicely straightened out, and was going on between the executioner, the King,.','2021-06-30 04:53:53','2021-04-16 23:05:11'),(89,'Mock Turtle,.',10,'1979-04-21',39,'8383579398039','And so it was her dream:-- First, she dreamed of little Alice and all that,\' he said in a tone of this rope--Will the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud.','2016-07-11 21:50:17','2021-04-20 06:47:17'),(90,'Puss,\' she.',1,'1953-08-28',434,'7475002589635','Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of sight: then it chuckled. \'What fun!\' said the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. \'I.','2018-02-14 23:43:13','2020-10-31 01:26:55'),(91,'Alice, who.',7,'1993-06-19',356,'4272808393929','Gryphon as if it likes.\' \'I\'d rather finish my tea,\' said the Mock Turtle repeated thoughtfully. \'I should like to be two people! Why, there\'s hardly enough of it altogether; but after a pause: \'the.','2020-01-26 03:05:36','2021-02-25 05:44:22'),(92,'I\'ll eat.',10,'1967-07-12',411,'5022877231705','Dinah my dear! Let this be a person of authority among them, called out, \'First witness!\' The first thing I\'ve got to see if she was surprised to find her way into a large piece out of its voice..','2015-10-24 22:11:51','2021-04-04 19:31:06'),(93,'White Rabbit;.',10,'1946-11-29',341,'5533751476556','The Mock Turtle replied in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an explanation. \'Oh, you\'re sure to do this, so that by the little golden key was too slippery; and when she.','2017-03-20 11:29:46','2021-01-20 21:41:01'),(94,'A bright and.',2,'1963-06-25',223,'8343305296264','RABBIT\' engraved upon it. She stretched herself up and repeat something now. Tell her to speak first, \'why your cat grins like that?\' \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'I don\'t.','2014-07-17 23:57:41','2021-01-20 14:33:11'),(95,'Alice.',8,'2012-05-27',254,'8359819544013','Alice. \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice in a Little Bill It was high time to see the earth takes twenty-four hours to turn into a conversation. Alice replied, so eagerly.','2012-02-08 16:06:03','2020-11-28 23:07:37'),(96,'VERY turn-up.',8,'1930-05-02',323,'3846924656536','Alice herself, and once again the tiny hands were clasped upon her knee, and the moon, and memory, and muchness--you know you say things are \"much of a muchness\"--did you ever eat a bat?\' when.','2018-07-25 17:22:22','2021-05-06 02:11:02'),(97,'For he were.',1,'1938-08-27',254,'3510552801191','Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have to go on. \'And so these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\'.','2021-07-19 23:19:31','2021-04-23 03:39:36'),(98,'Puss,\' she.',4,'2013-08-04',404,'3876749810762','Gryphon, \'that they WOULD not remember ever having seen in her lessons in here? Why, there\'s hardly room for YOU, and no more of it in with a little glass table. \'Now, I\'ll manage better this time,\'.','2020-07-21 08:21:51','2020-08-14 22:04:01'),(99,'The Pool of.',8,'2000-06-18',317,'7377880941145','WILL do next! If they had settled down again, the Dodo replied very politely, \'for I never heard of \"Uglification,\"\' Alice ventured to remark. \'Tut, tut, child!\' said the Caterpillar. Alice folded.','2016-02-22 09:24:45','2021-03-15 12:50:06'),(100,'Zealand or.',8,'1963-02-02',163,'9920869033783','VERY turn-up nose, much more like a telescope.\' And so it was very deep, or she should chance to be a LITTLE larger, sir, if you were down here with me! There are no mice in the same size for ten.','2019-02-07 20:45:01','2020-11-20 20:59:15');
/*!40000 ALTER TABLE `detail_of_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `recieve_city_id` int unsigned DEFAULT NULL COMMENT 'Ссылка на город выдачи документа',
  `serial_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'серийный номер документа',
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к скану документа',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `serial_number` (`serial_number`),
  KEY `documents_recieve_city_id_fk` (`recieve_city_id`),
  CONSTRAINT `documents_recieve_city_id_fk` FOREIGN KEY (`recieve_city_id`) REFERENCES `cities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Документы удостоверяющего личность';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,7,'746434','documents/07b6b3da841d611a22c46e90e3c5d286.jpg','2015-12-03 22:25:48','2021-01-26 07:16:09'),(2,11,'335642','documents/5d676ba6f231af77504272ecf7e79fb3.jpg','2015-05-07 23:50:56','2021-03-24 08:53:21'),(3,7,'138221','documents/8316dec89cd8f63ca8f880e23558dfbd.jpg','2019-01-30 14:28:27','2021-05-14 10:54:26'),(4,26,'220325','documents/f8fa4869400bf7d06d9c8e325be98ea0.jpg','2018-08-23 13:40:57','2021-02-11 09:19:03'),(5,45,'498502','documents/cdca4a6780694abadf2296ff04e6ee23.jpg','2017-10-22 06:46:07','2021-06-28 08:27:04'),(6,34,'238575','documents/e40a71f46e709806e063c03f1cc4218b.jpg','2019-04-25 06:51:25','2021-02-17 14:03:04'),(7,30,'712529','documents/2c2ec5490e8145fa626487bfdb861644.jpg','2019-07-28 13:14:09','2020-12-11 05:58:27'),(8,2,'968278','documents/81a5898f89670d197c8c71d1a8745964.jpg','2012-07-10 03:25:23','2021-07-01 13:08:30'),(9,10,'736776','documents/d4a2636794302cae4046c255eaf4446a.jpg','2012-05-11 13:24:19','2020-08-20 20:14:32'),(10,24,'814430','documents/b8b34d0e8011bdc3ede7cbd80d63a1cc.jpg','2011-08-26 05:30:05','2021-04-01 07:16:11'),(11,43,'914118','documents/17d5907f38227add13fc69b5cf5da9c0.jpg','2012-08-21 02:24:00','2020-12-14 20:49:01'),(12,1,'439067','documents/22f7a9337a753a9714cdcffaa374134f.jpg','2014-11-30 23:57:33','2020-11-27 20:09:45'),(13,41,'423411','documents/d13fe2129186b0da725254e0a4b0d2a8.jpg','2012-09-07 16:57:56','2020-09-03 04:34:30'),(14,27,'351883','documents/69ef6f6bc3eb7e55932c08527305ea92.jpg','2015-04-22 13:39:06','2020-08-15 19:34:20'),(15,7,'771171','documents/a6f83cd833db8ca1391aec5fa9638c2a.jpg','2020-03-25 00:45:04','2020-11-29 16:50:03'),(16,34,'347790','documents/f0441fb342efef5020c0fade6d9ac9a6.jpg','2020-12-30 08:22:44','2020-11-26 13:51:59'),(17,30,'792183','documents/d73bf7d4e0e3f4a1345120524f66b530.jpg','2011-08-31 13:48:56','2021-02-26 08:17:48'),(18,50,'955676','documents/b2a4f4b73be7d66703013921a12131d2.jpg','2011-10-14 19:30:36','2020-12-13 04:02:02'),(19,14,'532253','documents/c968eb6a9b957cce83ada66cae3c67e5.jpg','2018-12-07 23:14:03','2021-01-10 14:51:34'),(20,4,'501755','documents/a33aebd7c2e94b6724b9f481dbbc5c82.jpg','2020-03-25 02:26:15','2021-05-28 13:42:49'),(21,9,'376272','documents/6955215941bca2ae0f47c55c4eaab7da.jpg','2015-04-08 21:16:49','2020-11-17 04:42:12'),(22,7,'719991','documents/752eaebdb60b104e59ba1118495b307f.jpg','2021-05-16 17:31:39','2021-04-20 04:11:56'),(23,17,'527345','documents/581a02fa0b8b1120771b9634679652a9.jpg','2016-06-19 02:21:00','2021-07-26 01:47:00'),(24,37,'820934','documents/7fe67a1c18df5609bc548c3a4a2878bc.jpg','2011-09-11 10:45:36','2021-07-05 10:10:39'),(25,36,'494692','documents/33e237339845b9b68e10d61794b4e834.jpg','2016-01-04 16:07:59','2021-02-09 17:30:58'),(26,8,'959145','documents/3502975cc252d7acee2ba1e1f75012c5.jpg','2019-03-21 17:16:23','2020-11-12 05:39:51'),(27,4,'523825','documents/0cebf07ebed2454d64ef75c1c32d69b0.jpg','2012-06-04 15:11:24','2020-10-23 20:32:40'),(28,25,'863337','documents/b77d08b1ba45bd0e89005fcc80c62faf.jpg','2016-10-30 07:33:47','2021-05-27 06:22:14'),(29,44,'759201','documents/c69be5973e45cfe420deb0ffaa4207bb.jpg','2011-10-24 03:18:19','2021-05-27 03:45:56'),(30,6,'798437','documents/78a15eac6c7cba63c7d63d33ef10b6d4.jpg','2019-01-29 11:01:53','2021-08-02 10:16:10'),(31,24,'544453','documents/22163276ae18ff9681193c38ff822a95.jpg','2015-02-14 23:40:11','2020-12-30 08:33:09'),(32,45,'541439','documents/061992ed4daa7753c3aa417ae83a9277.jpg','2014-04-06 11:36:26','2021-05-25 16:18:43'),(33,6,'874562','documents/642f346253e8187d0b002d4cb815961b.jpg','2017-12-03 02:37:27','2021-02-17 22:06:22'),(34,33,'644740','documents/d5b791f42a401c1528ede9bb493b17a2.jpg','2014-12-21 10:26:34','2021-02-23 13:15:36'),(35,8,'340321','documents/ef8696e0bea9ad847780512bb64ceeec.jpg','2016-01-12 00:48:39','2020-11-02 00:56:52'),(36,7,'873500','documents/e067043e823e31140a447f46cef2ee51.jpg','2012-03-23 10:51:45','2021-06-10 14:34:35'),(37,44,'587717','documents/e1e5ae78772e08719c7bc9b0231ddd15.jpg','2013-01-19 02:30:53','2020-11-03 09:40:55'),(38,12,'950419','documents/54710fee6818ca729c912a15641723e7.jpg','2014-05-25 01:17:32','2021-03-26 03:45:32'),(39,47,'545879','documents/20b280fb09a77f0659d9ada0929509a1.jpg','2019-09-02 10:07:54','2021-02-04 21:07:13'),(40,14,'235696','documents/26663367156dcacef5033dcdcbbb57d3.jpg','2017-03-08 16:54:45','2020-11-30 05:31:08'),(41,50,'716078','documents/89bf70eaf9334cf4932ecb257be91cfb.jpg','2018-12-05 16:15:37','2021-05-06 06:46:39'),(42,8,'958913','documents/ef8ace4733046e435bf602409c6f895b.jpg','2011-11-23 19:58:46','2020-09-10 00:41:16'),(43,17,'366063','documents/c78327727dd345e465c0cec5beb6815a.jpg','2012-08-02 04:32:54','2021-01-25 07:25:24'),(44,29,'372900','documents/40899adc121589c5408aad1bf6e7d277.jpg','2015-02-14 07:25:19','2021-05-19 20:44:53'),(45,10,'921562','documents/133af6e762f4230f8e4cd5f8bb38c82d.jpg','2021-04-18 19:44:36','2020-09-02 10:47:05'),(46,19,'754554','documents/018dea3af59a91a165e10c576d504efb.jpg','2021-07-15 15:13:08','2020-12-31 13:33:09'),(47,16,'781038','documents/8961f2753281ff4b59857ea59c09b4a1.jpg','2014-09-13 20:32:54','2021-06-25 06:46:00'),(48,41,'883144','documents/ae0436ed9b7ace00e5391ae815cff4ab.jpg','2016-02-21 20:19:58','2020-11-10 21:43:01'),(49,48,'748828','documents/034edc04c7642ba1cc54d0c079bc0097.jpg','2020-02-16 11:57:52','2021-05-05 13:44:22'),(50,37,'494762','documents/d425ab85f919c1c588cd300db8be4de6.jpg','2018-02-10 22:20:13','2020-12-25 02:23:19'),(51,28,'343119','documents/ed59a8365f92a3be7bb181dffee2d2f8.jpg','2015-12-22 06:59:49','2021-06-10 15:46:55'),(52,3,'713110','documents/1991a0675a77e36e15274e26b53eb7e4.jpg','2015-05-09 07:06:35','2020-10-30 04:58:50'),(53,14,'941612','documents/fed0ec95d076e8258deb8ffa1df9c594.jpg','2013-04-16 15:44:06','2021-02-27 22:30:58'),(54,42,'795881','documents/a3fb7c454f49f098e330964fae16403c.jpg','2018-04-28 18:02:36','2021-02-06 00:58:31'),(55,46,'949897','documents/2315289940707239c040a0769f2e54e1.jpg','2012-11-25 06:20:43','2021-03-25 07:13:00'),(56,16,'496396','documents/d06ef43b8bdd19c7a8f09cd21761a107.jpg','2017-07-18 16:48:09','2021-01-29 14:50:30'),(57,2,'586375','documents/04cc3b40be7959014636c44aed45c7de.jpg','2020-10-01 23:16:33','2020-11-07 03:39:02'),(58,21,'450359','documents/385db7587aeb8df069b1b19a01880362.jpg','2021-02-25 13:07:29','2021-01-23 15:16:09'),(59,12,'242494','documents/66a14b52a11e30f6102db65a96d2f63a.jpg','2020-02-26 02:42:24','2021-06-24 15:40:34'),(60,9,'502239','documents/8fac778c4944c6b96048a277f6d4225f.jpg','2015-09-29 08:21:30','2021-04-17 19:06:44'),(61,8,'727349','documents/3e2b1805cd3b60677839e073e431c3a6.jpg','2015-10-23 12:01:40','2020-09-24 01:45:15'),(62,43,'244776','documents/e6f3b8231c0d726fe809ee10e766518c.jpg','2019-06-25 05:47:40','2021-03-25 18:10:00'),(63,27,'922077','documents/5f42c4e64839db69f2943ea9c6d6de01.jpg','2019-09-04 09:13:41','2021-05-18 19:52:39'),(64,14,'648633','documents/49446ce516522fc1d95af5bd615d82f4.jpg','2015-11-07 21:41:38','2021-03-24 07:39:57'),(65,35,'776416','documents/83e2f2b3431611fa884a3a5ec17eac03.jpg','2013-12-30 17:26:36','2021-01-02 14:23:11'),(66,43,'223979','documents/67eeca1ee64f90d6de37bfcd563444a3.jpg','2016-07-19 18:54:12','2021-04-12 18:19:33'),(67,42,'969592','documents/d0a7521343aeb9e2c0a68326aa83b9e2.jpg','2018-06-14 19:29:28','2020-12-31 13:51:51'),(68,34,'457793','documents/d52f19c59ce2b53490366c231e04e846.jpg','2015-05-14 09:53:09','2020-12-14 14:32:18'),(69,39,'676328','documents/3597aa753363c0009a0e797d7cf4da65.jpg','2015-04-06 09:25:35','2020-12-18 16:58:40'),(70,32,'185609','documents/93ac5c3096d3420d6cdabccf69339665.jpg','2018-12-22 08:58:00','2020-09-05 16:18:49'),(71,20,'553399','documents/b870286c2dcc639fafc936a00bdda46c.jpg','2016-12-23 14:06:48','2021-04-24 07:55:18'),(72,20,'546926','documents/0b0faacb6c48f28f93ac8e5c73830ecf.jpg','2012-12-05 18:06:44','2021-01-25 04:29:10'),(73,21,'758084','documents/fb93b2d4bea493be13ae6955e8522d33.jpg','2021-02-17 05:25:18','2021-04-08 01:49:00'),(74,8,'866963','documents/5281539ee9ed626441dfc53dbb4aed9d.jpg','2018-09-06 19:05:33','2020-12-30 05:46:33'),(75,15,'136710','documents/fcbf701c477ce41c1d0cf41e7dce1a0a.jpg','2011-09-15 04:31:12','2021-01-04 15:47:39'),(76,8,'504677','documents/9486a6d337877d624a5a708c070a9a1b.jpg','2011-08-28 00:17:15','2021-03-07 10:38:07'),(77,34,'815782','documents/cd1e1f1c2787fb9baf4f08424587db04.jpg','2017-06-16 16:23:45','2021-04-22 02:22:26'),(78,40,'159344','documents/92ad1beb75a7e4a54b18f85e04bbdcfb.jpg','2011-08-27 23:57:39','2021-05-28 23:52:33'),(79,2,'132135','documents/ab241d6be7d82569e443d0c84bddb4b6.jpg','2020-05-18 11:18:30','2021-05-27 15:50:08'),(80,5,'650066','documents/dd4fec3bdb99b3e40b682c462272dddf.jpg','2021-01-03 17:50:04','2021-04-01 18:59:33'),(81,10,'322811','documents/fe9ba2989b98b8f01d0c7e7fd56a7bae.jpg','2014-01-06 05:02:04','2020-11-15 01:29:03'),(82,45,'806547','documents/ace923961cfb1ab024b2c92ba0d446e7.jpg','2014-02-15 09:18:19','2020-12-31 19:19:25'),(83,23,'111667','documents/086448dec0c45dcc6e29140980a85d44.jpg','2018-04-24 21:57:32','2021-06-05 04:03:59'),(84,19,'702950','documents/88c63c12e7fa6149b5189892771d15d9.jpg','2016-02-18 06:56:27','2021-03-21 22:56:18'),(85,7,'943906','documents/3391cbdfa17206536c43311f6195aa94.jpg','2020-08-19 02:36:53','2020-11-23 17:40:37'),(86,24,'729494','documents/179211cec051e7879d976f884d2b237c.jpg','2020-11-30 20:26:25','2020-12-10 19:01:14'),(87,24,'415384','documents/3276e38ae24959988c48829957878488.jpg','2020-02-02 20:45:26','2021-03-22 12:28:07'),(88,39,'626685','documents/cd0da03ea9dafd2d487a78b8890766d1.jpg','2020-06-18 21:40:13','2020-09-15 23:08:51'),(89,11,'900621','documents/e030f842f51362b8c91d8c45c33b523a.jpg','2017-10-22 04:18:05','2020-10-02 03:50:43'),(90,1,'824045','documents/9b3f218f318097d818b8e09a30268373.jpg','2014-09-16 14:53:30','2020-08-16 23:07:51'),(91,27,'464057','documents/fd99dafff7bf938ff59f58dd97ba7ca3.jpg','2014-04-21 10:03:02','2020-12-06 17:23:15'),(92,29,'159696','documents/c76525e446b21ed797f04d4040f7a3af.jpg','2020-01-24 10:38:52','2021-03-21 21:33:29'),(93,11,'487794','documents/8dc25764893a635bc47531a866efec74.jpg','2015-03-22 17:10:39','2020-11-22 08:55:02'),(94,13,'894290','documents/dadd90d8975ca144be694f2b6068cf3c.jpg','2016-08-26 11:57:00','2020-12-01 02:24:56'),(95,45,'762103','documents/87f50f5126dccf2472db37415efeebf4.jpg','2014-06-09 12:33:21','2020-09-19 04:32:58'),(96,10,'363142','documents/a5736cd3c73651204077c4c10a889b51.jpg','2016-02-17 10:16:10','2021-02-28 04:51:09'),(97,21,'628369','documents/37cf421b0a78c5991643fa54c34917cf.jpg','2016-03-12 00:42:21','2021-06-24 02:48:13'),(98,31,'641053','documents/197d7d4c64bdf4182c03376a86237f08.jpg','2013-01-27 21:41:18','2020-10-29 02:05:55'),(99,23,'566692','documents/3a14c35eb3498280ff0dea810157e951.jpg','2016-02-21 18:37:36','2020-11-18 18:24:35'),(100,31,'748560','documents/74c31d266cbc5e338503bba4bde34afa.jpg','2012-01-09 06:13:27','2020-11-15 17:15:35');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Язык книги';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'el_GR'),(2,'de_BE'),(3,'or_IN'),(4,'es_CO'),(5,'my_MM'),(6,'as_IN'),(7,'mt_MT'),(8,'ne_NP'),(9,'sid_ET'),(10,'he_IL');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` int unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date NOT NULL COMMENT 'Дата рождения',
  `city_id` int unsigned DEFAULT NULL COMMENT 'Ссылка на город проживания',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `birthday_idx` (`birthday`),
  KEY `profiles_city_id_fk` (`city_id`),
  CONSTRAINT `profiles_city_id_fk` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL,
  CONSTRAINT `profiles_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'m','1950-01-09',1,'2014-01-10 09:48:58','2021-05-18 20:17:28'),(2,'f','1985-10-22',20,'2019-01-30 14:13:53','2020-12-06 21:52:05'),(3,'f','1945-07-10',24,'2018-05-30 03:40:08','2021-07-06 18:15:58'),(4,'m','1961-03-25',42,'2019-07-01 04:43:33','2021-03-16 04:17:53'),(5,'m','1966-06-12',20,'2015-10-21 09:47:34','2021-07-08 00:35:23'),(6,'f','1964-10-29',25,'2013-09-17 11:00:21','2021-08-07 19:20:56'),(7,'m','1983-05-19',1,'2013-12-25 01:58:30','2020-11-16 03:49:15'),(8,'f','1945-11-05',23,'2018-04-04 12:59:20','2020-12-25 22:52:23'),(9,'f','1965-01-27',8,'2018-04-20 19:09:10','2021-07-13 05:49:44'),(10,'f','1978-03-12',12,'2019-12-27 19:42:44','2020-12-20 07:07:16'),(11,'m','1971-06-26',36,'2014-05-08 17:50:33','2020-12-05 03:50:33'),(12,'f','1966-10-07',8,'2021-05-26 20:45:08','2021-04-09 14:06:55'),(13,'m','1981-03-09',17,'2018-04-09 14:04:36','2020-11-08 07:45:52'),(14,'f','1976-11-30',6,'2013-03-19 05:55:05','2021-04-14 12:10:25'),(15,'f','1979-09-15',24,'2012-12-27 11:58:45','2020-12-18 20:56:47'),(16,'m','1996-08-06',19,'2015-04-25 18:13:15','2021-03-22 08:21:50'),(17,'m','1976-08-28',20,'2012-05-29 15:22:15','2020-09-14 11:01:58'),(18,'f','1989-08-15',29,'2013-09-26 01:08:02','2021-01-08 23:32:38'),(19,'m','1955-10-30',18,'2016-04-07 02:56:47','2021-01-10 09:56:14'),(20,'f','1969-03-26',45,'2017-06-19 01:47:54','2021-04-24 23:38:44'),(21,'m','1941-11-04',9,'2013-08-29 03:19:08','2020-09-23 16:56:50'),(22,'m','1973-09-07',8,'2015-06-25 15:13:49','2020-09-07 01:05:27'),(23,'m','1943-11-19',8,'2018-09-21 07:40:39','2021-07-01 11:16:36'),(24,'m','1981-11-01',42,'2012-08-06 01:37:25','2021-01-31 11:23:47'),(25,'f','1991-01-12',8,'2021-06-01 17:38:58','2021-03-29 20:48:17'),(26,'f','1967-10-25',18,'2016-06-23 04:19:57','2020-11-21 22:47:14'),(27,'m','1968-11-06',44,'2019-06-13 15:06:26','2020-11-15 13:25:29'),(28,'f','1976-08-17',19,'2018-09-17 00:17:51','2020-11-18 20:29:39'),(29,'m','1983-11-28',39,'2011-08-17 00:32:23','2020-09-02 11:25:31'),(30,'f','1959-01-12',7,'2013-12-05 07:18:21','2020-08-21 21:27:58'),(31,'f','1948-04-04',25,'2018-12-09 17:29:50','2021-05-27 14:37:15'),(32,'m','1991-03-28',36,'2017-04-21 10:02:37','2021-01-02 08:59:08'),(33,'m','1994-02-27',9,'2015-06-07 04:22:53','2020-12-09 16:57:57'),(34,'f','1999-10-31',36,'2019-02-26 15:57:43','2020-08-15 18:07:49'),(35,'m','1943-10-04',26,'2015-03-09 20:16:38','2021-07-19 03:41:34'),(36,'f','1947-09-20',33,'2012-07-27 18:46:25','2020-08-29 00:14:28'),(37,'m','1959-04-02',33,'2016-10-06 10:19:08','2021-01-10 22:58:08'),(38,'f','1945-02-10',42,'2017-07-25 23:53:29','2021-03-07 13:36:12'),(39,'m','1989-04-08',13,'2021-06-19 21:31:04','2021-05-15 19:34:57'),(40,'m','2000-12-05',1,'2016-06-25 18:14:36','2021-04-29 13:15:11'),(41,'m','1976-06-14',37,'2014-03-25 03:49:18','2021-07-13 16:02:30'),(42,'m','1963-10-11',22,'2011-12-19 00:01:20','2020-09-09 03:33:43'),(43,'m','1972-01-08',24,'2017-08-24 15:26:00','2021-01-02 03:55:09'),(44,'f','1999-10-05',49,'2014-09-29 04:50:01','2021-01-07 07:34:40'),(45,'m','1971-06-15',29,'2015-08-06 02:20:14','2020-08-14 11:58:21'),(46,'f','1959-03-08',2,'2013-07-05 23:53:37','2021-04-27 21:17:42'),(47,'f','1968-12-24',43,'2015-05-14 09:36:07','2021-05-22 00:42:19'),(48,'f','1975-06-12',42,'2012-08-16 06:02:20','2021-02-13 09:15:22'),(49,'f','1998-12-09',34,'2011-09-08 20:19:20','2020-10-16 03:36:52'),(50,'m','1977-02-27',43,'2014-02-24 13:45:06','2021-05-29 07:27:10'),(51,'m','1960-02-13',14,'2019-03-20 22:10:55','2021-02-13 17:17:18'),(52,'f','1952-06-07',25,'2017-12-14 14:56:58','2021-04-02 08:00:32'),(53,'f','1980-06-05',1,'2014-11-10 02:24:53','2020-11-20 02:00:57'),(54,'m','1979-05-20',24,'2016-11-16 08:24:19','2021-07-15 01:39:53'),(55,'f','1995-03-09',24,'2013-04-29 06:04:52','2020-09-11 00:36:23'),(56,'m','1994-03-22',5,'2016-12-23 04:45:17','2021-03-24 04:37:44'),(57,'f','1965-02-13',33,'2012-09-08 20:28:48','2021-02-25 22:27:02'),(58,'f','1957-07-03',26,'2015-09-25 19:46:21','2021-06-14 10:15:33'),(59,'m','1982-05-29',36,'2011-08-11 03:09:51','2020-10-09 08:13:52'),(60,'f','1946-09-04',17,'2017-07-25 15:29:05','2021-04-28 02:48:58'),(61,'f','1949-07-03',13,'2012-04-09 07:31:32','2021-08-06 15:55:23'),(62,'f','1956-08-18',43,'2015-05-13 01:51:11','2021-04-03 19:42:41'),(63,'f','1968-07-17',40,'2014-04-02 15:12:52','2020-09-11 02:54:21'),(64,'m','1964-03-30',31,'2018-07-30 22:00:30','2020-10-12 02:24:15'),(65,'m','1958-11-09',31,'2016-03-26 17:30:07','2021-06-12 18:40:42'),(66,'m','1962-01-01',26,'2014-11-17 21:15:53','2021-02-08 11:54:54'),(67,'m','1963-08-11',29,'2018-03-17 07:23:32','2021-03-19 01:11:31'),(68,'f','1948-12-22',45,'2014-06-20 02:29:58','2021-06-04 06:37:20'),(69,'m','1961-11-21',23,'2013-03-21 00:44:02','2021-02-15 16:01:09'),(70,'m','1970-08-08',32,'2017-05-24 22:50:14','2021-03-30 22:55:47'),(71,'m','1968-01-03',47,'2017-01-06 06:12:25','2021-05-15 10:53:01'),(72,'f','1980-06-18',22,'2019-04-26 08:36:43','2021-08-10 09:33:51'),(73,'m','1963-04-29',19,'2015-10-24 01:21:05','2021-03-31 01:55:43'),(74,'m','1961-11-15',49,'2017-10-14 07:41:11','2021-05-20 07:30:09'),(75,'m','1965-12-21',15,'2020-12-03 12:43:10','2021-04-14 11:51:48'),(76,'f','1997-01-21',45,'2012-03-18 13:19:51','2021-06-29 09:21:52'),(77,'f','1964-11-17',50,'2016-02-15 07:02:00','2021-03-25 03:55:33'),(78,'f','1955-12-08',30,'2021-04-27 05:12:02','2020-08-19 16:48:32'),(79,'m','1988-04-01',20,'2021-03-05 20:09:27','2021-03-31 03:37:13'),(80,'m','1966-10-16',5,'2017-01-01 20:43:39','2021-08-01 08:41:47'),(81,'f','1953-03-27',50,'2020-11-07 20:51:06','2020-09-03 06:37:26'),(82,'m','2001-01-19',32,'2012-09-20 13:16:29','2021-05-17 22:33:31'),(83,'m','1967-10-31',27,'2019-07-04 13:58:44','2020-12-29 11:39:47'),(84,'m','1971-09-14',27,'2017-07-23 17:13:19','2021-04-08 17:10:46'),(85,'f','1948-05-03',25,'2017-09-01 06:25:51','2020-09-01 21:58:08'),(86,'m','1973-06-06',20,'2017-03-06 21:55:17','2021-05-20 11:30:06'),(87,'m','1962-08-15',3,'2019-09-12 21:13:02','2021-03-10 00:17:09'),(88,'f','1993-05-05',33,'2018-12-02 00:24:07','2020-09-11 17:07:12'),(89,'m','1996-02-15',25,'2013-12-11 04:27:58','2020-11-04 03:07:32'),(90,'f','1978-07-12',3,'2012-02-20 08:19:32','2020-12-20 04:04:37'),(91,'f','1951-04-09',19,'2018-12-29 00:55:43','2021-01-27 12:47:40'),(92,'f','1942-05-23',44,'2016-02-08 08:14:16','2020-09-23 07:24:05'),(93,'f','1970-03-22',42,'2017-12-28 17:12:30','2021-06-07 17:15:18'),(94,'m','1977-10-11',45,'2020-11-10 17:05:35','2021-03-11 08:51:48'),(95,'m','1970-03-20',36,'2013-09-26 10:32:20','2021-01-27 06:09:31'),(96,'m','1993-07-23',23,'2017-01-18 04:09:50','2021-05-11 12:22:52'),(97,'f','1947-06-11',40,'2013-10-06 10:24:01','2021-02-28 07:17:20'),(98,'m','1953-04-30',12,'2019-04-21 16:13:14','2020-09-12 01:26:23'),(99,'m','1972-11-21',32,'2014-07-29 17:33:12','2020-10-29 16:03:20'),(100,'m','1991-10-05',26,'2021-07-08 01:39:41','2020-08-23 05:27:51');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publish_houses`
--

DROP TABLE IF EXISTS `publish_houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publish_houses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='издательства';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publish_houses`
--

LOCK TABLES `publish_houses` WRITE;
/*!40000 ALTER TABLE `publish_houses` DISABLE KEYS */;
INSERT INTO `publish_houses` VALUES (1,'Bashirian, Schneider and Walker','2020-01-01 16:35:19','2020-08-25 07:57:57'),(2,'Wunsch Inc','2017-05-24 09:19:59','2020-12-16 07:43:00'),(3,'Schulist, Yost and Funk','2013-09-13 14:52:12','2021-05-01 22:41:27'),(4,'Littel Group','2017-11-26 14:43:59','2020-12-21 14:29:04'),(5,'Bradtke, Hegmann and Botsford','2015-10-23 21:48:37','2021-07-19 14:13:48'),(6,'Bernhard, Cole and Smith','2016-03-10 13:00:03','2021-01-29 16:29:18'),(7,'Towne LLC','2018-05-13 08:58:00','2021-04-30 12:39:06'),(8,'Larson, Farrell and Ryan','2019-03-30 08:02:34','2021-02-05 01:54:54'),(9,'Reynolds, Strosin and Schinner','2015-04-21 12:59:31','2021-04-24 18:57:35'),(10,'Roberts-Bauch','2012-09-17 10:55:35','2021-01-27 03:32:32');
/*!40000 ALTER TABLE `publish_houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор пользователя',
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `document_id` int unsigned NOT NULL COMMENT 'Номер документа',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `document_id` (`document_id`),
  UNIQUE KEY `phone_idx` (`phone`),
  CONSTRAINT `users_document_id_fk` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Maximo','Terry','ko\'keefe@example.com','228-284-5032x6043',1,'2021-02-21 09:08:01','2020-11-13 00:11:53'),(2,'Loy','Langworth','vdoyle@example.net','1-427-972-6192x467',2,'2012-07-15 01:15:29','2021-01-14 19:49:52'),(3,'Maverick','Leffler','lockman.tressa@example.com','910-501-8954',3,'2021-05-09 03:20:14','2021-04-09 05:31:40'),(4,'Lola','Ankunding','kautzer.dejuan@example.org','577.388.7702x9331',4,'2015-10-20 04:17:36','2021-04-25 21:55:31'),(5,'Ryleigh','Schroeder','ahoppe@example.com','111.235.8149x25688',5,'2012-01-30 03:28:22','2021-02-09 10:48:51'),(6,'Donnie','Bauch','avery78@example.net','1-632-259-7957x63940',6,'2014-03-21 01:58:15','2021-03-24 04:05:32'),(7,'Doyle','Paucek','abshire.jayne@example.org','801.779.7844',7,'2014-11-20 04:14:53','2020-12-03 16:17:59'),(8,'Alexandre','Langosh','tobin.mills@example.org','(857)408-1054',8,'2020-12-30 14:32:12','2021-03-30 06:34:14'),(9,'Mauricio','Christiansen','deontae.moen@example.org','08433686231',9,'2012-03-15 02:40:55','2021-02-24 03:20:13'),(10,'Maeve','Baumbach','lizeth70@example.com','180-883-2070',10,'2021-03-11 10:50:30','2020-09-18 20:52:04'),(11,'Celine','Lindgren','yturner@example.com','968-489-7612x169',11,'2017-02-10 16:35:56','2021-04-23 08:25:17'),(12,'Dimitri','Bins','glueilwitz@example.net','741-978-9314',12,'2019-09-14 22:38:34','2021-05-06 16:25:48'),(13,'Keenan','Grady','louisa.dare@example.com','(820)383-0562',13,'2014-06-02 17:28:42','2021-04-05 06:37:04'),(14,'Rosemary','Bogisich','pacocha.mossie@example.com','+10(2)6670118898',14,'2013-09-17 01:41:06','2020-09-18 15:29:46'),(15,'Dewitt','Zemlak','mcglynn.dina@example.com','735.092.1231x1501',15,'2016-01-13 01:57:07','2021-07-19 06:54:09'),(16,'Dereck','Koss','bruen.leslie@example.com','1-615-547-0802x92101',16,'2020-09-12 10:11:54','2020-09-08 20:32:44'),(17,'Claudine','Schuppe','chyatt@example.com','271-426-6390x62224',17,'2018-08-02 09:37:43','2020-09-17 06:09:23'),(18,'Eulalia','Trantow','tillman.pierce@example.org','1-599-585-1177x81719',18,'2017-11-18 05:27:38','2020-08-25 09:27:05'),(19,'Etha','Rath','kamren27@example.net','(664)339-9351x272',19,'2020-05-17 04:25:48','2021-02-13 16:47:58'),(20,'Grayson','Jacobi','demond.wiegand@example.org','644-799-1952x63969',20,'2015-06-18 01:37:53','2021-04-17 04:26:35'),(21,'Mikayla','Ortiz','teresa56@example.net','934-562-3586x5425',21,'2014-10-18 10:35:30','2021-07-27 21:13:54'),(22,'Holly','Collier','usmith@example.com','1-625-196-7743',22,'2016-12-29 14:08:06','2020-11-11 05:20:22'),(23,'Roxane','Raynor','cory.bartoletti@example.net','+82(2)2973756156',23,'2020-12-04 11:43:10','2021-03-15 14:50:27'),(24,'Austen','Erdman','guadalupe00@example.net','(281)391-1155x94812',24,'2015-06-19 02:58:01','2020-10-23 00:30:24'),(25,'Nadia','Terry','adele84@example.org','544-630-2842',25,'2018-03-03 03:39:45','2021-02-15 15:47:30'),(26,'Haylee','Lindgren','hadley89@example.com','(581)771-3920x099',26,'2019-07-30 14:09:04','2020-12-08 08:47:31'),(27,'Allie','Hintz','nikolaus.marshall@example.com','(400)439-3072x18679',27,'2020-10-11 21:00:12','2021-04-12 14:19:31'),(28,'Maeve','Bosco','kkiehn@example.org','1-757-414-6097',28,'2020-03-19 07:45:39','2020-08-28 15:47:39'),(29,'Cecil','Medhurst','ubaumbach@example.net','1-614-953-9536x141',29,'2020-02-05 23:48:40','2021-03-06 22:47:39'),(30,'Arianna','Abbott','cathy65@example.org','09551088495',30,'2016-09-25 21:16:19','2021-03-19 01:22:37'),(31,'Clara','Cronin','bashirian.camden@example.org','131-121-9003x2556',31,'2020-10-23 14:46:18','2020-11-29 07:53:51'),(32,'Beau','Grant','clyde94@example.net','+65(4)4333001816',32,'2016-09-19 07:56:07','2021-03-07 14:37:06'),(33,'Vicenta','Towne','umayer@example.com','575.669.0652x18739',33,'2019-08-05 05:10:35','2021-02-17 03:42:37'),(34,'Emmy','Okuneva','gerlach.cassidy@example.com','1-779-816-9418',34,'2018-11-17 15:15:04','2021-01-22 11:44:53'),(35,'Antonina','McKenzie','marcos.leffler@example.com','(447)557-9464',35,'2019-10-05 10:57:54','2020-10-27 07:12:16'),(36,'Kiara','Gulgowski','rolfson.ransom@example.net','047.519.6008x316',36,'2016-04-30 13:55:36','2021-01-02 09:11:41'),(37,'Kathryn','Beier','mglover@example.net','1-552-586-6066x614',37,'2020-06-25 11:35:58','2021-01-14 14:29:26'),(38,'Jean','Smitham','iharber@example.com','650.627.4829x1830',38,'2013-09-15 07:12:25','2020-12-05 16:45:15'),(39,'Alberto','Klein','morgan.effertz@example.net','1-134-944-5759x258',39,'2014-05-04 17:29:12','2021-04-04 23:34:57'),(40,'Junior','Hirthe','jovani.ledner@example.net','144.268.5095x54304',40,'2018-09-07 23:46:21','2021-03-26 21:09:57'),(41,'Isac','Moore','umayert@example.net','09958419009',41,'2021-07-09 17:34:25','2020-10-01 00:10:04'),(42,'Sheldon','Effertz','kory42@example.com','410.278.8160',42,'2017-11-13 20:09:11','2021-06-01 07:38:59'),(43,'Brandy','Turcotte','emely75@example.net','(726)130-6847x99658',43,'2020-06-16 08:05:48','2020-12-18 08:25:20'),(44,'Audie','Beatty','lynch.julius@example.net','327.382.7956x28543',44,'2016-11-24 14:15:26','2020-10-17 20:52:38'),(45,'Mittie','Bradtke','bmacejkovic@example.org','518-720-9947',45,'2011-10-11 18:39:02','2020-11-26 03:31:19'),(46,'Mike','Bechtelar','hassie78@example.net','841.236.8660x9789',46,'2016-10-03 06:30:24','2021-02-17 05:55:38'),(47,'Madonna','Schinner','ethiel@example.com','1-721-398-4099',47,'2016-08-23 09:45:17','2021-03-02 08:28:37'),(48,'Fernando','Schulist','carroll.afton@example.net','300.892.2090',48,'2016-05-15 05:09:15','2021-06-28 08:39:53'),(49,'Jeremy','Nolan','carlie.collier@example.net','(134)483-5222',49,'2020-07-04 21:04:50','2021-01-01 17:50:22'),(50,'Ashlynn','Haag','dina88@example.net','695-634-8011x3160',50,'2013-06-30 19:17:36','2021-01-09 21:57:57'),(51,'Cristopher','Yost','nitzsche.clemens@example.com','318-699-0487',51,'2013-02-06 00:44:59','2020-10-30 21:59:20'),(52,'Robyn','Mraz','ryan.mazie@example.com','209.998.0577x16963',52,'2013-05-19 14:54:22','2021-04-27 15:16:46'),(53,'Letitia','Kreiger','kspinka@example.org','1-096-346-5438',53,'2016-10-31 09:45:51','2021-07-20 19:35:37'),(54,'Federico','Stiedemann','purdy.bobbie@example.net','880-593-2908',54,'2012-10-14 22:45:44','2021-05-17 05:29:10'),(55,'Chanel','Donnelly','jesse.rodriguez@example.org','838.027.8480',55,'2015-07-31 18:03:30','2020-11-10 04:28:07'),(56,'Cullen','Cummings','laurianne21@example.org','1-629-218-0747x988',56,'2012-05-24 04:18:33','2021-01-09 15:47:09'),(57,'Al','Jenkins','sterling.casper@example.net','06054992320',57,'2013-04-03 10:03:11','2021-03-22 16:18:48'),(58,'Angel','Homenick','uwuckert@example.net','702.036.6256',58,'2014-08-25 18:03:12','2020-09-11 21:06:40'),(59,'Maiya','Bednar','hjakubowski@example.com','+79(3)9243216618',59,'2012-06-12 05:01:56','2020-11-30 02:40:29'),(60,'Kelley','Rippin','janae.hegmann@example.net','(033)226-2197x990',60,'2020-06-03 10:43:09','2021-04-07 02:13:15'),(61,'Gerson','Cole','schulist.alphonso@example.com','789-830-3798',61,'2011-12-25 05:44:57','2020-11-04 20:58:51'),(62,'Raheem','Roob','walker.alvis@example.net','1-574-314-1647',62,'2014-03-12 08:42:56','2021-06-15 10:37:54'),(63,'Jeanie','Schamberger','elwyn.aufderhar@example.org','04944295476',63,'2018-08-29 12:24:17','2020-09-04 02:23:18'),(64,'Garret','Reynolds','olemke@example.org','1-202-644-7924x1101',64,'2013-10-14 01:38:41','2020-10-01 08:48:32'),(65,'Dulce','Auer','bbeatty@example.org','796.513.7662',65,'2018-02-19 15:10:47','2021-04-13 21:58:46'),(66,'Aubree','Hyatt','feil.nedra@example.org','1-337-965-0933x0291',66,'2019-08-01 12:52:20','2021-06-14 21:07:30'),(67,'Dayton','Nitzsche','loma.dickinson@example.com','09948265673',67,'2018-09-08 01:21:52','2020-09-30 10:38:39'),(68,'Darrion','Mohr','kkuphal@example.com','017-807-3043',68,'2018-03-09 12:27:40','2021-06-26 21:09:07'),(69,'Natalie','Wolf','fahey.nora@example.net','326-199-8413x2964',69,'2017-02-27 20:08:03','2020-09-07 04:46:07'),(70,'Patience','Abshire','ljohnston@example.org','1-716-785-2862x41462',70,'2012-08-06 05:16:12','2020-09-18 04:22:50'),(71,'Candido','Wilderman','hauck.donna@example.org','992-415-1426x3967',71,'2013-12-28 15:46:40','2020-09-19 02:39:34'),(72,'Merlin','Bauch','murray.baylee@example.net','054-399-1610x7864',72,'2017-09-26 22:57:06','2020-09-11 08:22:16'),(73,'Derrick','Robel','glangworth@example.net','+76(8)5800320507',73,'2020-02-09 22:08:04','2020-09-05 05:19:57'),(74,'Hadley','Metz','yo\'reilly@example.net','460.296.6109',74,'2012-12-06 04:17:25','2021-04-12 16:56:40'),(75,'Miles','Tremblay','beahan.coleman@example.net','305.383.8503',75,'2013-10-28 02:52:49','2020-11-27 15:51:32'),(76,'Audrey','Rath','ashtyn19@example.com','+03(4)8570594266',76,'2012-03-27 12:34:47','2020-12-29 20:17:30'),(77,'Lorena','Franecki','krutherford@example.net','(889)691-9691x63785',77,'2015-03-10 20:29:33','2021-07-18 09:47:42'),(78,'Newell','Torphy','o\'keefe.shawn@example.net','1-600-072-1285x7610',78,'2017-03-26 14:40:33','2021-04-21 16:51:10'),(79,'Destinee','Wehner','beahan.francesca@example.org','760.897.4152',79,'2019-01-14 05:27:33','2020-08-15 02:48:07'),(80,'Rosalind','Schumm','serena.robel@example.com','593-043-7907',80,'2016-08-24 18:05:29','2020-12-13 17:17:06'),(81,'Lucie','Keeling','elmore.douglas@example.org','706-105-4880x3142',81,'2015-08-20 01:41:34','2021-01-08 04:55:36'),(82,'Walker','Glover','deja.cole@example.org','1-916-145-0571',82,'2017-05-22 21:36:56','2021-01-15 08:43:08'),(83,'Blair','Cummerata','feeney.marisa@example.com','1-867-178-6118',83,'2012-10-06 16:09:45','2020-12-27 04:12:58'),(84,'Brennan','Nikolaus','zsawayn@example.com','+28(6)6773894130',84,'2015-11-11 07:00:51','2021-08-03 14:56:13'),(85,'Jake','VonRueden','aabshire@example.org','(746)731-9074',85,'2017-05-25 07:43:11','2020-10-29 23:46:15'),(86,'Jany','Grady','darmstrong@example.org','194.994.6056x53189',86,'2013-05-17 07:53:13','2021-02-23 12:41:39'),(87,'Esperanza','Gleason','emanuel13@example.org','(279)187-3232x46232',87,'2019-08-02 18:36:53','2021-01-20 19:28:47'),(88,'Francis','Raynor','heidenreich.carlotta@example.net','151.923.9059',88,'2018-04-14 04:24:16','2021-01-31 18:25:03'),(89,'Eve','O\'Keefe','macie89@example.net','1-411-576-5569x051',89,'2020-01-31 17:09:44','2020-11-02 04:17:32'),(90,'Anika','Moore','ygerhold@example.com','(036)212-6206x3456',90,'2012-09-17 00:31:29','2021-01-06 10:54:46'),(91,'Cleveland','Schmitt','geoffrey84@example.org','1-552-041-7996x44411',91,'2011-08-11 20:46:28','2020-10-23 20:47:33'),(92,'Glennie','McLaughlin','nina.ratke@example.net','605.761.8084x9427',92,'2011-11-04 20:06:12','2020-12-31 00:49:57'),(93,'Nova','Hudson','hessel.jammie@example.org','845-173-9165x29355',93,'2015-06-27 23:34:08','2021-08-07 15:15:33'),(94,'Beryl','Skiles','goyette.ayana@example.net','571-880-5425x265',94,'2013-04-26 08:27:28','2021-05-24 12:23:40'),(95,'Kendrick','Kiehn','alyce01@example.org','887-386-9285',95,'2013-04-08 10:33:39','2020-10-07 14:29:14'),(96,'Evelyn','Strosin','fharvey@example.net','+89(1)3893723902',96,'2013-10-08 10:55:55','2021-07-08 05:37:26'),(97,'Domenica','Turcotte','kayleigh96@example.net','486-568-9877',97,'2018-02-27 10:37:28','2021-03-23 13:12:03'),(98,'Rudolph','Rohan','bernie.jones@example.org','+81(8)6213963209',98,'2013-08-20 00:15:11','2021-01-19 00:32:59'),(99,'Camille','Hettinger','hkris@example.com','296.961.0153x621',99,'2016-01-18 20:49:11','2021-05-26 07:56:44'),(100,'Pearline','Waters','west.trycia@example.org','(549)047-1418',100,'2016-12-07 08:37:29','2021-03-05 21:03:35');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `validate_name_users_insert` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
  IF NEW.first_name IS NULL AND NEW.last_name IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Both users first name and users last name are NULL';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `validate_name_users_update` BEFORE UPDATE ON `users` FOR EACH ROW BEGIN
  IF NEW.first_name IS NULL AND NEW.last_name IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Both users first name and users last name are NULL';
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `view_books_in_stock`
--

DROP TABLE IF EXISTS `view_books_in_stock`;
/*!50001 DROP VIEW IF EXISTS `view_books_in_stock`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_books_in_stock` AS SELECT 
 1 AS `Title`,
 1 AS `Author`,
 1 AS `Category`,
 1 AS `Binding`,
 1 AS `Storage Block`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_debt_users`
--

DROP TABLE IF EXISTS `view_debt_users`;
/*!50001 DROP VIEW IF EXISTS `view_debt_users`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_debt_users` AS SELECT 
 1 AS `id`,
 1 AS `Username`,
 1 AS `Gender`,
 1 AS `Birthday`,
 1 AS `Document`,
 1 AS `Phone number`,
 1 AS `Email`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'library'
--

--
-- Final view structure for view `view_books_in_stock`
--

/*!50001 DROP VIEW IF EXISTS `view_books_in_stock`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_books_in_stock` AS select `b`.`name` AS `Title`,concat_ws(' ',`a`.`last_name`,`a`.`first_name`) AS `Author`,`c`.`name` AS `Category`,`b`.`binding` AS `Binding`,`bp`.`block` AS `Storage Block` from ((((`books` `b` join `authors` `a` on((`a`.`id` = `b`.`author_id`))) join `categories` `c` on((`c`.`id` = `b`.`category_id`))) join `booking_cards` `bc` on((`bc`.`book_id` = `b`.`id`))) join `book_position` `bp` on((`bp`.`book_id` = `b`.`id`))) where (`bc`.`returned` = 1) group by `b`.`id` order by `Author` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_debt_users`
--

/*!50001 DROP VIEW IF EXISTS `view_debt_users`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_debt_users` AS select `bc`.`user_id` AS `id`,concat_ws(' ',`u`.`last_name`,`u`.`first_name`) AS `Username`,`p`.`gender` AS `Gender`,`p`.`birthday` AS `Birthday`,concat_ws(' ',`d`.`id`,`d`.`serial_number`,`c`.`name`) AS `Document`,`u`.`phone` AS `Phone number`,`u`.`email` AS `Email` from ((((`booking_cards` `bc` join `users` `u` on((`u`.`id` = `bc`.`user_id`))) join `documents` `d` on((`d`.`id` = `u`.`document_id`))) join `profiles` `p` on((`p`.`user_id` = `u`.`id`))) join `cities` `c` on((`c`.`id` = `d`.`recieve_city_id`))) where (`bc`.`returned` = 0) order by `u`.`last_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-18 19:45:37
