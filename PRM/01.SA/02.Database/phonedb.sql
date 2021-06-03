-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: phonedb
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `category_master`
--

DROP TABLE IF EXISTS `category_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_master` (
  `seq` int NOT NULL,
  `category_cd` varchar(255) DEFAULT NULL,
  `category_content` varchar(255) DEFAULT NULL,
  `category_nm` varchar(255) DEFAULT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) DEFAULT NULL,
  `del_user_id` varchar(255) DEFAULT NULL,
  `link_category_cd` varchar(255) DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) DEFAULT NULL,
  `visible_flg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_master`
--

LOCK TABLES `category_master` WRITE;
/*!40000 ALTER TABLE `category_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `seq` int NOT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) DEFAULT NULL,
  `del_user_id` varchar(255) DEFAULT NULL,
  `order_cd` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `product_cd` varchar(255) DEFAULT NULL,
  `product_nm` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `service_cd` varchar(255) DEFAULT NULL,
  `service_nm` varchar(255) DEFAULT NULL,
  `shipper_cd` varchar(255) DEFAULT NULL,
  `shipper_nm` varchar(255) DEFAULT NULL,
  `store_cd` varchar(255) DEFAULT NULL,
  `store_nm` varchar(255) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) DEFAULT NULL,
  `visible_flg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_update_history`
--

DROP TABLE IF EXISTS `order_update_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_update_history` (
  `seq` int NOT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) DEFAULT NULL,
  `del_user_id` varchar(255) DEFAULT NULL,
  `order_cd` varchar(255) DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `update_content` varchar(255) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) DEFAULT NULL,
  `visible_flg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_update_history`
--

LOCK TABLES `order_update_history` WRITE;
/*!40000 ALTER TABLE `order_update_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_update_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `seq` int NOT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `address3` varchar(255) DEFAULT NULL,
  `address4` varchar(255) DEFAULT NULL,
  `customer_cd` varchar(255) DEFAULT NULL,
  `customer_nm` varchar(255) DEFAULT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) DEFAULT NULL,
  `del_user_id` varchar(255) DEFAULT NULL,
  `insert_date` date DEFAULT NULL,
  `order_cd` varchar(255) DEFAULT NULL,
  `order_note` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `sale_cd` varchar(255) DEFAULT NULL,
  `total_price` varchar(255) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) DEFAULT NULL,
  `visible_flg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `other_master`
--

DROP TABLE IF EXISTS `other_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `other_master` (
  `seq` int NOT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) DEFAULT NULL,
  `del_user_id` varchar(255) DEFAULT NULL,
  `other_cd` varchar(255) DEFAULT NULL,
  `other_sub_cd` varchar(255) DEFAULT NULL,
  `string_value` varchar(255) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) DEFAULT NULL,
  `visible_flg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_master`
--

LOCK TABLES `other_master` WRITE;
/*!40000 ALTER TABLE `other_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `other_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `seq` int NOT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) DEFAULT NULL,
  `del_user_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `detail_file` varchar(255) DEFAULT NULL,
  `linked_product_cd` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `product_cd` varchar(255) DEFAULT NULL,
  `product_nm` varchar(255) DEFAULT NULL,
  `product_status` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `sale` double DEFAULT NULL,
  `store_cd` varchar(255) DEFAULT NULL,
  `store_nm` varchar(255) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) DEFAULT NULL,
  `visible_flg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_detail`
--

DROP TABLE IF EXISTS `product_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_detail` (
  `seq` int NOT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) DEFAULT NULL,
  `del_user_id` varchar(255) DEFAULT NULL,
  `detail_content` date DEFAULT NULL,
  `detail_file` varchar(255) DEFAULT NULL,
  `detail_nm` varchar(255) DEFAULT NULL,
  `detail_type` varchar(255) DEFAULT NULL,
  `m_detail_cd` varchar(255) DEFAULT NULL,
  `product_cd` varchar(255) DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) DEFAULT NULL,
  `visible_flg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_detail`
--

LOCK TABLES `product_detail` WRITE;
/*!40000 ALTER TABLE `product_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_update_history`
--

DROP TABLE IF EXISTS `product_update_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_update_history` (
  `seq` int NOT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) DEFAULT NULL,
  `del_user_id` varchar(255) DEFAULT NULL,
  `product_cd` varchar(255) DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `update_content` varchar(255) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) DEFAULT NULL,
  `visible_flg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_update_history`
--

LOCK TABLES `product_update_history` WRITE;
/*!40000 ALTER TABLE `product_update_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_update_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_master`
--

DROP TABLE IF EXISTS `service_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_master` (
  `seq` int NOT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) DEFAULT NULL,
  `del_user_id` varchar(255) DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `service_cd` varchar(255) DEFAULT NULL,
  `service_content` varchar(255) DEFAULT NULL,
  `service_nm` varchar(255) DEFAULT NULL,
  `service_rate` double DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) DEFAULT NULL,
  `visible_flg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_master`
--

LOCK TABLES `service_master` WRITE;
/*!40000 ALTER TABLE `service_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `seq` int NOT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `address3` varchar(255) DEFAULT NULL,
  `address4` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) DEFAULT NULL,
  `del_user_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `post_no` varchar(255) DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `sub_phone` varchar(255) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) DEFAULT NULL,
  `user_cd` varchar(255) DEFAULT NULL,
  `user_nm` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `visible_flg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_detail`
--

DROP TABLE IF EXISTS `user_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_detail` (
  `seq` int NOT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `address3` varchar(255) DEFAULT NULL,
  `address4` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) DEFAULT NULL,
  `del_user_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `post_no` varchar(255) DEFAULT NULL,
  `revision` int DEFAULT NULL,
  `sub_phone` varchar(255) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) DEFAULT NULL,
  `user_cd` varchar(255) DEFAULT NULL,
  `user_nm` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `visible_flg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_detail`
--

LOCK TABLES `user_detail` WRITE;
/*!40000 ALTER TABLE `user_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-02 23:12:07
