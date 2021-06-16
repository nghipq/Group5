-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 16, 2021 lúc 01:16 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `phonedb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_master`
--

CREATE TABLE `category_master` (
  `seq` int(11) NOT NULL,
  `category_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `category_content` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `category_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `del_date` date DEFAULT current_timestamp(),
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `link_category_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `revision` int(11) DEFAULT 0,
  `update_date` date DEFAULT current_timestamp(),
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `seq` int(11) NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address3` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address4` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `customer_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `customer_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `del_date` date DEFAULT current_timestamp(),
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `insert_date` date DEFAULT current_timestamp(),
  `order_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order_note` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `revision` int(11) DEFAULT 0,
  `sale_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_date` date DEFAULT current_timestamp(),
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `seq` int(11) NOT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `del_date` date DEFAULT current_timestamp(),
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT 0,
  `service_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `service_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `shipper_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `shipper_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `store_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `store_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_date` date DEFAULT current_timestamp(),
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_update_history`
--

CREATE TABLE `order_update_history` (
  `seq` int(11) NOT NULL,
  `del_date` date DEFAULT current_timestamp(),
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `revision` int(11) DEFAULT 0,
  `update_content` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_date` date DEFAULT current_timestamp(),
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `other_master`
--

CREATE TABLE `other_master` (
  `seq` int(11) NOT NULL,
  `del_date` date DEFAULT NULL,
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `other_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `other_sub_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `string_value` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_date` date DEFAULT current_timestamp(),
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `other_master`
--

INSERT INTO `other_master` (`seq`, `del_date`, `del_flg`, `del_user_id`, `other_cd`, `other_sub_cd`, `string_value`, `update_date`, `update_user_id`, `visible_flg`) VALUES
(1, NULL, '0', NULL, 'countryMst', 'vn', 'Vietnam', '2021-06-05', 'NghiPQ', '1'),
(2, NULL, '0', NULL, 'countryMst', 'us', 'USA', '2021-06-06', 'NghiPQ', '1'),
(3, NULL, '0', NULL, 'countryMst', 'kr', 'Korea', '2021-06-07', 'NghiPQ', '1'),
(4, NULL, '0', NULL, 'countryMst', 'cn', 'China', '2021-06-07', 'NghiPQ', '1'),
(5, NULL, '0', NULL, 'countryMst', 'jp', 'Japan', '2021-06-07', 'NghiPQ', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `seq` int(11) NOT NULL,
  `del_date` date DEFAULT current_timestamp(),
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `detail_file` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `linked_product_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_status` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '1',
  `quantity` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT 0,
  `sale` double DEFAULT NULL,
  `store_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `store_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_date` date DEFAULT current_timestamp(),
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`seq`, `del_date`, `del_flg`, `del_user_id`, `description`, `detail_file`, `linked_product_cd`, `price`, `product_cd`, `product_nm`, `product_status`, `quantity`, `revision`, `sale`, `store_cd`, `store_nm`, `update_date`, `update_user_id`, `visible_flg`) VALUES
(1, '2021-06-16', '0', NULL, 'Take it to 11. Just the right amount of everything. Colorful. Powerful. Essential. See the whole picture with Ultra Wide. iPhone 11. An essential upgrade Shoot 4K videos, beautiful portraits, and sweeping landscapes with the all-new dual-camera system. Capture your best low-light photos with Night mode. See true-to-life color in your photos, videos, and games on the 6.1-inch Liquid Retina display. Experience unprecedented performance with A13 Bionic for gaming, augmented reality (AR), and photography. Do more and power less with all-day battery life and worry less with water resistance up to 2 meters for 30 minutes.6.1-inch Liquid Retina HD LCD display Water and dust resistant (2 meters for up to 30 minutes, IP68) Dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Portrait mode, and 4K video up to 60fps\r\n\r\n6.1-inch Liquid Retina HD LCD display', 'https://i5.walmartimages.com/asr/eea59ef4-4f1b-475a-8389-11e08e2c0345_2.f889569839816ae694a4ab6475369fbc.png?odnWidth=400&odnHeight=400&odnBg=ffffff', NULL, '22354800', '1', 'Straight Talk Apple iPhone 11, 64GB, Black', '1', 12, 0, 22354800, '1', 'Apple', '2021-06-16', NULL, '1'),
(2, '2021-06-16', '0', NULL, 'This Walmart Family Mobile Apple iPhone XR offers a blend of style and innovation that stands out. It has a reliable liquid retina display and the most advanced LCD in the industry. The Apple iPhone XR 64GB includes fast-acting face ID and uses a smart and powerful chip to provide the quality experience you want. It features a breakthrough camera system with depth control for taking photos that you\'ll enjoy. The prepaid handset comes in your choice of colors to provide a trendy look. It has rounded corners for safe and comfortable operation. It\'s made for wireless charging, making it simple to have it ready to go anytime. The Walmart Family Mobile Apple iPhone XR is even water resistant.This iPhone XR is locked to Walmart Family Mobile and can only be used with Walmart Family Mobile service.\r\n\r\n6.1-inch Liquid Retina display (LCD).\r\nIP67 water and dust resistant (maximum depth of 1 meter up to 30 minutes).\r\n12MP camera with OIS and 7MP True Depth front camera—Portrait mode, Portrait Lighting, Depth Control, and Smart HDR.\r\nFace ID for secure authentication and Apple Pay.\r\nIncluded in the box: iPhone and USB-C to Lightning Cable\r\n', 'https://i5.walmartimages.com/asr/d74414a9-9cc4-4753-a292-146916bf9a1d_1.150a51fd76f5a45fb317e980eaa36855.jpeg?odnWidth=400&odnHeight=400&odnBg=ffffff', NULL, '13054800', '2', 'iPhone XR, 64GB, Black', '1', 30, 0, 13054800, '1', 'Apple', '2021-06-16', NULL, '1'),
(3, '2021-06-16', '0', NULL, 'Welcome to the big screens. Super Retina displays on iPhone XS Max deliver the most accurate color in the industry, HDR, and true blacks. Even faster Face ID. The smartest, most powerful chip in a smartphone. And a breakthrough dual-camera system. Walmart Family Mobile iPhone XS Max is everything you love in an iPhone. Taken to the extreme.\r\nWalmart Family Mobile Apple iPhone XS MAX, 64GB, Silver- Prepaid Smartphone', 'https://i5.walmartimages.com/asr/96194290-4b7b-4a91-8481-0a43c1419075_1.6113686686dcd49dee48388ffd262fce.jpeg?odnWidth=400&odnHeight=400&odnBg=ffffff', NULL, '24214800', '3', 'iPhone XS MAX, 64GB', '1', 50, 0, 24214800, '1', 'Apple', '2021-06-16', NULL, '1'),
(4, '2021-06-16', '0', NULL, 'Game, Stream & Binge On: Watch your favorite shows, work on your gaming, and keep your playlist blasting with Galaxy A52 5G\'s long-lasting battery\r\nWhen you do need a power boost, Super-Fast Charging will have you back up in no time\r\nWork Fast, Play Hard: Get in the flow and stay there with Galaxy A52 5G\r\nWith a fast and reliable processor plus 5G connectivity in your pocket, you decide what your limits are — or aren’t\r\nExpandable Storage: Take your photos, music, podcasts, and episodes with you, thanks to 128GB of built-in storage, plus room to store up to 1TB more when you add a MicroSD card\r\nVersatile Camera: Our best camera features at the best price\r\nShoot high-res portraits in 64MP, go wide to capture landscapes, shoot super-steady video with OIS, or make yourself the star with a 32MP front-facing camera\r\nInfinite Display: See your content come to life with a dazzling 6.5” edge-to-edge Infinity-O Full HD+ display\r\nDust & Water Resistant: Galaxy A52 5G can withstand up to 3 feet of water for 30 minutes, and dust won\'t bother you either\r\nModern Design: High-end style is within reach thanks to a modern matte finish and super sleek design; Wireless communication technology: Cellular; Memory slots available: 1', 'https://images-na.ssl-images-amazon.com/images/I/81afsli5ctL._SS400_.jpg', NULL, '14279717', '4', 'Samsung Galaxy A52 5G', '1', 60, 0, 14279717, '2', 'Samsung', '2021-06-16', NULL, '1'),
(5, '2021-06-16', '0', NULL, 'International Variant/US Compatible LTE\r\n6.2 inch IPS LCD Capacitive Touchscreen, 720 x 1520 pixels Display\r\nInternal Memory: 32GB, 2GB RAM - microSD Up to 512GB\r\nDual Rear Camera 13 MP (f/1.8, 28mm (wide), AF) & 2 MP (f/2.4, depth sensor), LED Flash, Panorama, HDR & 8 MP Front Facing Camera\r\nAndroid OS, Mediatek MT6762 Helio P22 , Octa-Core 2.0 GHz Cortex-A53, PowerVR GE8320', 'https://images-na.ssl-images-amazon.com/images/I/81e6XvJzKgL._SS400_.jpg', NULL, '3791405', '5', 'Samsung Galaxy A10S A107M 32GB ', '1', 50, 0, 3791405, '2', 'Samsung', '2021-06-16', NULL, '1'),
(6, '2021-06-16', '0', NULL, 'Introducing the new A Series. The Samsung Galaxy A21 combines smartphone essentials with the trusted reliability of Samsung. Take beautifully crisp photos and videos with our powerful quad lens camera. Enjoy cinematic clarity on our 6.5\" edge-to-edge display. Keep going with a long-lasting 4,000 mAh battery that keeps going with you throughout the day.\r\nCharge up. Power through. Spend more time scrolling, texting and sharing, and less time looking for an outlet to charge. This long-lasting 4,000mAh battery has the power to keep up with you.\r\n6.5\" HD+ Screen; 2.3 GHz + 1.8 GHz Octa-Core Processor; Android 10.0; Quad 16MP + 8MP + 2MP + 2MP Rear Cameras/13MP Front Facing Camera; Internal Memory 32 GB (device only); Supports microSD Memory Card up to 512GB (NOT INCLUDED)\r\n4G LTE; Wi-Fi Capable; Bluetooth 4.2 wireless technology; GPS Capable\r\nCarrier: This phone is locked to Tracfone which means this Device can only be used on the Tracfone network', 'https://images-na.ssl-images-amazon.com/images/I/71FlYZSU0eL._SS400_.jpg', NULL, '4367717', '6', 'Samsung Galaxy A21 4G LTE', '1', 50, 0, 4367717, NULL, NULL, '2021-06-16', NULL, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_detail`
--

CREATE TABLE `product_detail` (
  `seq` int(11) NOT NULL,
  `del_date` date DEFAULT current_timestamp(),
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `detail_content` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `detail_file` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `detail_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `detail_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `m_detail_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `revision` int(11) DEFAULT 0,
  `update_date` date DEFAULT current_timestamp(),
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `product_detail`
--

INSERT INTO `product_detail` (`seq`, `del_date`, `del_flg`, `del_user_id`, `detail_content`, `detail_file`, `detail_nm`, `detail_type`, `m_detail_cd`, `product_cd`, `revision`, `update_date`, `update_user_id`, `visible_flg`) VALUES
(1, '2021-06-16', '0', NULL, 'Take it to 11. Just the right amount of everything. Colorful. Powerful. Essential. See the whole picture with Ultra Wide. iPhone 11. An essential upgrade Shoot 4K videos, beautiful portraits, and sweeping landscapes with the all-new dual-camera system. Capture your best low-light photos with Night mode. See true-to-life color in your photos, videos, and games on the 6.1-inch Liquid Retina display. Experience unprecedented performance with A13 Bionic for gaming, augmented reality (AR), and photography. Do more and power less with all-day battery life and worry less with water resistance up to 2 meters for 30 minutes.6.1-inch Liquid Retina HD LCD display Water and dust resistant (2 meters for up to 30 minutes, IP68) Dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Portrait mode, and 4K video up to 60fps\r\n\r\n6.1-inch Liquid Retina HD LCD display', 'https://i5.walmartimages.com/asr/eea59ef4-4f1b-475a-8389-11e08e2c0345_2.f889569839816ae694a4ab6475369fbc.png?odnWidth=400&odnHeight=400&odnBg=ffffff', 'Straight Talk Apple iPhone 11, 64GB, Black', NULL, NULL, '1', 0, '2021-06-16', NULL, '1'),
(2, '2021-06-16', '0', NULL, 'This Walmart Family Mobile Apple iPhone XR offers a blend of style and innovation that stands out. It has a reliable liquid retina display and the most advanced LCD in the industry. The Apple iPhone XR 64GB includes fast-acting face ID and uses a smart and powerful chip to provide the quality experience you want. It features a breakthrough camera system with depth control for taking photos that you\'ll enjoy. The prepaid handset comes in your choice of colors to provide a trendy look. It has rounded corners for safe and comfortable operation. It\'s made for wireless charging, making it simple to have it ready to go anytime. The Walmart Family Mobile Apple iPhone XR is even water resistant.This iPhone XR is locked to Walmart Family Mobile and can only be used with Walmart Family Mobile service.\r\n\r\n6.1-inch Liquid Retina display (LCD).\r\nIP67 water and dust resistant (maximum depth of 1 meter up to 30 minutes).\r\n12MP camera with OIS and 7MP True Depth front camera—Portrait mode, Portrait Lighting, Depth Control, and Smart HDR.\r\nFace ID for secure authentication and Apple Pay.\r\nIncluded in the box: iPhone and USB-C to Lightning Cable\r\n', 'https://i5.walmartimages.com/asr/d74414a9-9cc4-4753-a292-146916bf9a1d_1.150a51fd76f5a45fb317e980eaa36855.jpeg?odnWidth=400&odnHeight=400&odnBg=ffffff', NULL, NULL, NULL, '2', 0, '2021-06-16', NULL, '1'),
(3, '2021-06-16', '0', NULL, 'Welcome to the big screens. Super Retina displays on iPhone XS Max deliver the most accurate color in the industry, HDR, and true blacks. Even faster Face ID. The smartest, most powerful chip in a smartphone. And a breakthrough dual-camera system. Walmart Family Mobile iPhone XS Max is everything you love in an iPhone. Taken to the extreme.\r\nWalmart Family Mobile Apple iPhone XS MAX, 64GB, Silver- Prepaid Smartphone', 'https://i5.walmartimages.com/asr/96194290-4b7b-4a91-8481-0a43c1419075_1.6113686686dcd49dee48388ffd262fce.jpeg?odnWidth=400&odnHeight=400&odnBg=ffffff', NULL, NULL, NULL, '3', 0, '2021-06-16', NULL, '1'),
(4, '2021-06-16', '0', NULL, 'Game, Stream & Binge On: Watch your favorite shows, work on your gaming, and keep your playlist blasting with Galaxy A52 5G\'s long-lasting battery\r\nWhen you do need a power boost, Super-Fast Charging will have you back up in no time\r\nWork Fast, Play Hard: Get in the flow and stay there with Galaxy A52 5G\r\nWith a fast and reliable processor plus 5G connectivity in your pocket, you decide what your limits are — or aren’t\r\nExpandable Storage: Take your photos, music, podcasts, and episodes with you, thanks to 128GB of built-in storage, plus room to store up to 1TB more when you add a MicroSD card\r\nVersatile Camera: Our best camera features at the best price\r\nShoot high-res portraits in 64MP, go wide to capture landscapes, shoot super-steady video with OIS, or make yourself the star with a 32MP front-facing camera\r\nInfinite Display: See your content come to life with a dazzling 6.5” edge-to-edge Infinity-O Full HD+ display\r\nDust & Water Resistant: Galaxy A52 5G can withstand up to 3 feet of water for 30 minutes, and dust won\'t bother you either\r\nModern Design: High-end style is within reach thanks to a modern matte finish and super sleek design; Wireless communication technology: Cellular; Memory slots available: 1', 'https://images-na.ssl-images-amazon.com/images/I/81afsli5ctL._SS400_.jpg', NULL, NULL, NULL, '4', 0, '2021-06-19', NULL, '1'),
(5, '2021-06-16', '0', NULL, 'International Variant/US Compatible LTE\r\n6.2 inch IPS LCD Capacitive Touchscreen, 720 x 1520 pixels Display\r\nInternal Memory: 32GB, 2GB RAM - microSD Up to 512GB\r\nDual Rear Camera 13 MP (f/1.8, 28mm (wide), AF) & 2 MP (f/2.4, depth sensor), LED Flash, Panorama, HDR & 8 MP Front Facing Camera\r\nAndroid OS, Mediatek MT6762 Helio P22 , Octa-Core 2.0 GHz Cortex-A53, PowerVR GE8320', 'https://images-na.ssl-images-amazon.com/images/I/81e6XvJzKgL._SS400_.jpg', NULL, NULL, NULL, '5', 0, '2021-06-16', NULL, '1'),
(6, '2021-06-16', '0', NULL, 'Introducing the new A Series. The Samsung Galaxy A21 combines smartphone essentials with the trusted reliability of Samsung. Take beautifully crisp photos and videos with our powerful quad lens camera. Enjoy cinematic clarity on our 6.5\" edge-to-edge display. Keep going with a long-lasting 4,000 mAh battery that keeps going with you throughout the day.\r\nCharge up. Power through. Spend more time scrolling, texting and sharing, and less time looking for an outlet to charge. This long-lasting 4,000mAh battery has the power to keep up with you.\r\n6.5\" HD+ Screen; 2.3 GHz + 1.8 GHz Octa-Core Processor; Android 10.0; Quad 16MP + 8MP + 2MP + 2MP Rear Cameras/13MP Front Facing Camera; Internal Memory 32 GB (device only); Supports microSD Memory Card up to 512GB (NOT INCLUDED)\r\n4G LTE; Wi-Fi Capable; Bluetooth 4.2 wireless technology; GPS Capable\r\nCarrier: This phone is locked to Tracfone which means this Device can only be used on the Tracfone network', 'https://images-na.ssl-images-amazon.com/images/I/71FlYZSU0eL._SS400_.jpg', NULL, NULL, NULL, '6', 0, '2021-06-16', NULL, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_update_history`
--

CREATE TABLE `product_update_history` (
  `seq` int(11) NOT NULL,
  `del_date` date DEFAULT current_timestamp(),
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `revision` int(11) DEFAULT 0,
  `update_content` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_date` date DEFAULT current_timestamp(),
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_master`
--

CREATE TABLE `service_master` (
  `seq` int(11) NOT NULL,
  `del_date` date DEFAULT current_timestamp(),
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `revision` int(11) DEFAULT 0,
  `service_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `service_content` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `service_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `service_rate` double DEFAULT NULL,
  `update_date` date DEFAULT current_timestamp(),
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `address1` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address3` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address4` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `del_date` date DEFAULT current_timestamp(),
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_no` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `revision` int(11) DEFAULT 0,
  `sub_phone` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_date` date DEFAULT current_timestamp(),
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`address1`, `address2`, `address3`, `address4`, `age`, `birthday`, `del_date`, `del_flg`, `del_user_id`, `email`, `password`, `phone`, `post_no`, `revision`, `sub_phone`, `update_date`, `update_user_id`, `user_cd`, `user_nm`, `user_type`, `visible_flg`) VALUES
('Vinh Long', 'Can Tho', NULL, NULL, 21, '2000-06-16', '2021-06-16', '0', NULL, 'nam@gmail.com', '123', '0349874938', '0', 0, '0349874938', '2021-06-16', NULL, '1', 'nam', '1', '1'),
('Can Tho', NULL, NULL, NULL, 21, '2000-06-16', '2021-06-16', '0', NULL, 'nghi@gmail.com', '123', '03495748938', '0', 0, '03495748938', '2021-06-16', NULL, '2', 'nghi', '1', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_detail`
--

CREATE TABLE `user_detail` (
  `seq` int(11) NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address3` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address4` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `del_date` date DEFAULT current_timestamp(),
  `del_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `del_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_no` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `revision` int(11) DEFAULT 0,
  `sub_phone` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_date` date DEFAULT current_timestamp(),
  `update_user_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_cd` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_nm` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visible_flg` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `user_detail`
--

INSERT INTO `user_detail` (`seq`, `address1`, `address2`, `address3`, `address4`, `age`, `birthday`, `del_date`, `del_flg`, `del_user_id`, `email`, `password`, `phone`, `post_no`, `revision`, `sub_phone`, `update_date`, `update_user_id`, `user_cd`, `user_nm`, `user_type`, `visible_flg`) VALUES
(1, 'Vinh Long', 'Can Tho', NULL, NULL, 21, '2000-06-16', '2021-06-16', '0', NULL, 'nam@gmail.com', '123', '0349874938', '0', 0, '0349874938', '2021-06-16', NULL, '1', 'nam', '1', '1'),
(2, 'Can Tho', NULL, NULL, NULL, 21, '2000-06-16', '2021-06-16', '0', NULL, 'nghi@gmail.com', '123', '03495748938', '0', 0, '03495748938', '2021-06-16', NULL, '2', 'nghi', '1', '1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category_master`
--
ALTER TABLE `category_master`
  ADD PRIMARY KEY (`seq`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`seq`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`seq`);

--
-- Chỉ mục cho bảng `order_update_history`
--
ALTER TABLE `order_update_history`
  ADD PRIMARY KEY (`seq`);

--
-- Chỉ mục cho bảng `other_master`
--
ALTER TABLE `other_master`
  ADD PRIMARY KEY (`seq`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`seq`);

--
-- Chỉ mục cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`seq`);

--
-- Chỉ mục cho bảng `product_update_history`
--
ALTER TABLE `product_update_history`
  ADD PRIMARY KEY (`seq`);

--
-- Chỉ mục cho bảng `service_master`
--
ALTER TABLE `service_master`
  ADD PRIMARY KEY (`seq`);

--
-- Chỉ mục cho bảng `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`seq`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `order_update_history`
--
ALTER TABLE `order_update_history`
  MODIFY `seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `seq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
