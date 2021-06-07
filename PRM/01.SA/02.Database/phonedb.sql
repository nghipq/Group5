-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 09:57 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phonedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE `category_master` (
  `seq` int(11) NOT NULL,
  `category_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `category_content` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `category_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `link_category_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `seq` int(11) NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address3` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address4` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `customer_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `customer_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `insert_date` date DEFAULT NULL,
  `order_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order_note` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `sale_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `seq` int(11) NOT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `service_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `service_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `shipper_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `shipper_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `store_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `store_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_update_history`
--

CREATE TABLE `order_update_history` (
  `seq` int(11) NOT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `update_content` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `other_master`
--

CREATE TABLE `other_master` (
  `seq` int(11) NOT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `other_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `other_sub_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `string_value` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `other_master`
--

INSERT INTO `other_master` (`seq`, `del_date`, `del_flg`, `del_user_id`, `other_cd`, `other_sub_cd`, `string_value`, `update_date`, `update_user_id`, `visible_flg`) VALUES
(1, NULL, '0', NULL, 'countryMst', 'vn', 'Vietnam', '2021-06-05', 'NghiPQ', '1'),
(2, NULL, '0', NULL, 'countryMst', 'us', 'USA', '2021-06-06', 'NghiPQ', '1'),
(3, NULL, '0', NULL, 'countryMst', 'kr', 'Korea', '2021-06-07', 'NghiPQ', '1'),
(4, NULL, '0', NULL, 'countryMst', 'cn', 'China', '2021-06-07', 'NghiPQ', '1'),
(5, NULL, '0', NULL, 'countryMst', 'jp', 'Japan', '2021-06-07', 'NghiPQ', '1');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `seq` int(11) NOT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `detail_file` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `linked_product_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_status` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `sale` double DEFAULT NULL,
  `store_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `store_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `seq` int(11) NOT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `detail_content` date DEFAULT NULL,
  `detail_file` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `detail_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `detail_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `m_detail_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_update_history`
--

CREATE TABLE `product_update_history` (
  `seq` int(11) NOT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `update_content` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_master`
--

CREATE TABLE `service_master` (
  `seq` int(11) NOT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `service_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `service_content` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `service_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `service_rate` double DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `seq` int(11) NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address3` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address4` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_no` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `sub_phone` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `seq` int(11) NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address3` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address4` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_no` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `sub_phone` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_master`
--
ALTER TABLE `category_master`
  ADD PRIMARY KEY (`seq`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`seq`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`seq`);

--
-- Indexes for table `order_update_history`
--
ALTER TABLE `order_update_history`
  ADD PRIMARY KEY (`seq`);

--
-- Indexes for table `other_master`
--
ALTER TABLE `other_master`
  ADD PRIMARY KEY (`seq`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`seq`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`seq`);

--
-- Indexes for table `product_update_history`
--
ALTER TABLE `product_update_history`
  ADD PRIMARY KEY (`seq`);

--
-- Indexes for table `service_master`
--
ALTER TABLE `service_master`
  ADD PRIMARY KEY (`seq`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`seq`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`seq`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
