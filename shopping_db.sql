-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2023 at 07:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `com_logo` varchar(100) DEFAULT NULL,
  `com_name` varchar(100) NOT NULL,
  `com_email` varchar(60) NOT NULL,
  `com_phone` varchar(15) DEFAULT NULL,
  `com_address` varchar(255) DEFAULT NULL,
  `cur_format` varchar(10) NOT NULL,
  `admin_role` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `username`, `password`, `com_logo`, `com_name`, `com_email`, `com_phone`, `com_address`, `cur_format`, `admin_role`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', NULL, 'Inventory', 'inventory@gmail.com', NULL, NULL, '$', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` text NOT NULL,
  `brand_cat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`, `brand_cat`) VALUES
(13, 'Realme', 9),
(12, 'Lenovo', 9),
(11, 'LG', 9),
(10, 'Samsung', 9),
(14, 'Highlander', 10),
(15, 'I-Phone', 9),
(16, 'One Plus', 9),
(17, 'HP', 9),
(18, 'Dell', 9),
(19, 'Acer', 9),
(20, 'Asus', 9),
(21, 'Redmi', 9),
(22, 'Adidas', 10),
(23, 'Campus', 10),
(24, 'Nike', 10),
(25, 'Puma', 10),
(26, 'Levi&#039;s Shirts', 10),
(27, 'Red Tape Shirts', 10),
(28, 'AEROPOSTALE', 10),
(29, 'Mens Polo', 10),
(30, 'Bharatsthali', 11),
(31, 'Libas Sarees.', 11),
(32, 'Manish Malhotra Saree.', 11),
(33, 'Fabindia', 11),
(34, 'Global Desi', 11),
(35, 'BIBA', 11);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL,
  `products` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `products`) VALUES
(9, 'Electronics', 0),
(10, 'Men', 0),
(11, 'Women', 0),
(12, 'Furniture', 0);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `s_no` int(11) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `site_title` varchar(100) DEFAULT NULL,
  `site_logo` varchar(100) NOT NULL,
  `site_desc` varchar(255) DEFAULT NULL,
  `footer_text` varchar(100) NOT NULL,
  `currency_format` varchar(20) NOT NULL,
  `contact_phone` varchar(15) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`s_no`, `site_name`, `site_title`, `site_logo`, `site_desc`, `footer_text`, `currency_format`, `contact_phone`, `contact_email`, `contact_address`) VALUES
(1, 'Super Market', 'Online Shopping Project for Mobiles, Clothes, Electronics and many more....', '1607398563shopping-logo.png', 'An e-commerce website is one that allows people to buy and sell physical goods, services, and digital products over the internet rather than at a brick-and-mortar location.', 'Copyright 2023', 'Rs.', '8112301399', 'shbh8055@email1.com', '#NSTI Ramanthapur Near by Bharat Petrol Pump');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_id` int(11) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `product_qty` varchar(100) NOT NULL,
  `total_amount` varchar(10) NOT NULL,
  `product_user` int(11) NOT NULL,
  `order_date` varchar(11) NOT NULL,
  `pay_req_id` varchar(100) DEFAULT NULL,
  `confirm` tinyint(4) NOT NULL DEFAULT 0,
  `delivery` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_id`, `product_id`, `product_qty`, `total_amount`, `product_user`, `order_date`, `pay_req_id`, `confirm`, `delivery`) VALUES
(19, '12', '1', '299', 2, '2020-11-17', 'd7a5b179cd07480782fc2d21edec7031', 1, 1),
(18, '12', '1', '299', 2, '2020-11-17', '4e2738d7eade4f57b5fd32434239d35f', 1, 0),
(17, '11', '1', '759', 2, '2020-11-12', 'd388939cdaca4087acca75574a34b035', 1, 0),
(20, '12', '1', '299', 2, '2020-11-17', 'a0f61b1acd6b444ba5856cc4387e7710', 0, 0),
(21, '12', '2', '598', 2, '2020-11-17', '0e2fdf1541994d338c676201097d2481', 1, 0),
(22, '12', '1', '299', 2, '2020-11-17', '8b0791e3eb764e45b497b0f0c401d9d6', 1, 0),
(23, '12', '1', '299', 2, '2020-11-17', '92c9c474ae864d01b81f7e2f4d3a098e', 1, 0),
(27, '11', '1', '759', 2, '2020-11-17', '6863fbdf68be45d5a77aa01774a80885', 1, 0),
(28, '11', '1', '759', 2, '2020-11-17', 'ee7d6cea937c4f06b6e5e1fffe47b778', 1, 1),
(29, '12', '1', '299', 2, '2020-11-17', 'f7ce91d5964c462fa3972f6cb5373d4a', 0, 1),
(30, '11', '2', '1518', 2, '2020-11-30', '939d866425ef479c84e276e664ce5a31', 0, 0),
(38, '11,12,', '1,1,', '1058', 2, '2020-12-01', '2c648ec714914c18b447309d691b7eef', 0, 0),
(37, '4,12,', '2,1,', '94279', 4, '2020-12-01', 'd19818d2ba3543ffa03a79a7eb64901b', 0, 0),
(36, '10,11,12,', '1,1,1,', '1342', 4, '2020-12-01', 'df952fa6bacd4f389de80b1080ed3871', 0, 1),
(39, '11,12,', '1,1,', '1058', 2, '2020-12-01', '700bf310ca4a4697b59184f61309275a', 0, 0),
(40, '11,12,', '1,1,', '1058', 2, '2020-12-01', '639ccfba60cd41eeba02ba5ff1849249', 0, 0),
(41, '11,12,', '1,1,', '1058', 2, '2020-12-01', '792c6616026948e48a2fcc07eb35c158', 0, 0),
(42, '11,12,', '1,1,', '1058', 2, '2020-12-02', '153427404661463f83a5e8bd080a95e9', 0, 0),
(43, '11,12,', '1,1,', '1058', 2, '2020-12-02', '37473185580340ab8c54d102204c7bf9', 0, 0),
(44, '11,12,', '1,1,', '1058', 2, '2020-12-02', '2bb8d2ccf3544d0089d211abf4d55e36', 0, 1),
(45, '12,13,', '1,1,', '1532', 2, '2020-12-02', '63148f0e7b7043f5a5e470a9ac1d3dde', 0, 1),
(46, '12,', '1,', '299', 2, '2020-12-04', '3c209af45445486c8aefb6cfb55dcbb7', 0, 0),
(47, '3,', '1,', '8999', 15, '2023-06-22', '4a775ee7746143acbb5d6ed04a6448c8', 0, 0),
(48, '3,', '1,', '8999', 17, '2023-06-26', 'c3129f1f20244dbeab332ee9c1888e6d', 0, 0),
(49, '3,', '1,', '8999', 17, '2023-06-26', 'bf0af397468b42bc85c9719cce8fefcc', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `item_number` varchar(50) NOT NULL,
  `txn_id` varchar(50) NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) NOT NULL,
  `payment_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `item_number`, `txn_id`, `payment_gross`, `currency_code`, `payment_status`) VALUES
(5, '11', 'd388939cdaca4087acca75574a34b035', 759.00, '', 'credit'),
(6, '12', '4e2738d7eade4f57b5fd32434239d35f', 299.00, '', 'credit'),
(7, '12', 'd7a5b179cd07480782fc2d21edec7031', 299.00, '', 'credit'),
(8, '12', 'a0f61b1acd6b444ba5856cc4387e7710', 299.00, '', 'pending'),
(9, '12', '0e2fdf1541994d338c676201097d2481', 598.00, '', 'credit'),
(10, '12', '8b0791e3eb764e45b497b0f0c401d9d6', 299.00, '', 'credit'),
(11, '12', '92c9c474ae864d01b81f7e2f4d3a098e', 299.00, '', 'credit'),
(20, '11', '6863fbdf68be45d5a77aa01774a80885', 759.00, '', 'credit'),
(21, '11', 'ee7d6cea937c4f06b6e5e1fffe47b778', 759.00, '', 'credit'),
(22, '12', 'f7ce91d5964c462fa3972f6cb5373d4a', 299.00, '', 'credit'),
(23, '11', '939d866425ef479c84e276e664ce5a31', 1518.00, '', 'credit'),
(29, '10,11,12,', 'df952fa6bacd4f389de80b1080ed3871', 1342.00, '', 'credit'),
(30, '4,12,', 'd19818d2ba3543ffa03a79a7eb64901b', 94279.00, '', 'credit'),
(31, '11,12,', '2c648ec714914c18b447309d691b7eef', 1058.00, '', 'credit'),
(32, '11,12,', '700bf310ca4a4697b59184f61309275a', 1058.00, '', 'credit'),
(33, '11,12,', '639ccfba60cd41eeba02ba5ff1849249', 1058.00, '', 'credit'),
(34, '11,12,', '792c6616026948e48a2fcc07eb35c158', 1058.00, '', 'credit'),
(35, '11,12,', '153427404661463f83a5e8bd080a95e9', 1058.00, '', 'credit'),
(36, '11,12,', '37473185580340ab8c54d102204c7bf9', 1058.00, '', 'credit'),
(37, '11,12,', '2bb8d2ccf3544d0089d211abf4d55e36', 1058.00, '', 'credit'),
(38, '12,13,', '63148f0e7b7043f5a5e470a9ac1d3dde', 1532.00, '', 'credit'),
(39, '12,', '3c209af45445486c8aefb6cfb55dcbb7', 299.00, '', 'credit'),
(40, '3,', '4a775ee7746143acbb5d6ed04a6448c8', 8999.00, '', 'credit'),
(41, '3,', 'c3129f1f20244dbeab332ee9c1888e6d', 8999.00, '', 'credit'),
(42, '3,', 'bf0af397468b42bc85c9719cce8fefcc', 8999.00, '', 'credit');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_sub_cat` int(11) NOT NULL,
  `product_brand` int(100) DEFAULT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_desc` text NOT NULL,
  `featured_image` text NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `product_keywords` text DEFAULT NULL,
  `product_views` int(11) DEFAULT 0,
  `product_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `product_cat`, `product_sub_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `featured_image`, `qty`, `product_keywords`, `product_views`, `product_status`) VALUES
(2, '5fc500f4330ad', 9, 18, 10, 'Samsung Galaxy A20s (Blue, 32 GB)  (3 GB RAM)', '12900', '3 GB RAM | 32 GB ROM | Expandable Upto 512 GB\r\n16.51 cm (6.5 inch) HD+ Display\r\n13MP + 8MP + 5MP | 8MP Front Camera\r\n4000 mAh Lithium Ion Battery\r\nQualcomm SDM450-B01 Processor', '1598962160galaxy-a20s.jpeg', 0, NULL, 1, 1),
(3, '5fc500ec98a64', 9, 18, 13, 'Realme C3 (Volcano Grey, 32 GB)  (3 GB RAM)', '8999', '3 GB RAM | 32 GB ROM | Expandable Upto 256 GB\r\n16.56 cm (6.52 inch) HD+ Display\r\n12MP + 2MP | 5MP Front Camera\r\n5000 mAh Battery\r\nHelio G70 Processor', '1598962665realme-c3.jpeg', 1, NULL, 34, 1),
(4, '5fc500e4de9c2', 9, 19, 12, 'Lenovo Ideapad Flex 5 Core i3 10th Gen - (4 GB/256 GB SSD/Windows 10 Home) 14IIL05 2 in 1 Laptop  (14 inch, Graphite Grey, 1.5 kg, With MS Office)', '46990', 'Carry It Along 2 in 1 Laptop\r\n14 inch Full HD LED Backlit Glossy IPS Touch Display (16:9 Aspect Ratio, 250 nits Brightness, Stylus Support)\r\nLight Laptop without Optical Disk Drive\r\n\r\nShipping charges are calculated based on the number of units, distance and delivery date.\r\nFor Plus customers, shipping charges are free.\r\nFor non-Plus customers, if the total value of FAssured items is more than Rs.500, shipping charges are free. If the total value of FAssured items is less than Rs.500, shipping charges = Rs.40 per unit\r\n* For faster delivery, shipping charges will be applicable.', '1598962854lenovo.jpeg', 1, NULL, 10, 1),
(5, '5fc500decacd2', 9, 19, 12, 'Lenovo Ideapad 3 Core i3 10th Gen - (4 GB/1 TB HDD/DOS) 14IIL05 Thin and Light Laptop  (14 inch, Platinum Grey, 1.6 kg)', '32095', 'Stylish &amp; Portable Thin and Light Laptop\r\n14 inch HD LED Backlit Anti-glare TN Display (220 nits Brightness)\r\nLight Laptop without Optical Disk Drive', '1598963006lenovo-2.jpeg', 1, NULL, 2, 1),
(6, '5fc500d9502a7', 12, 25, 0, 'Perfect Homes Iris Therapedic 6 inch King Bonnell Spring Mattress', '11090', 'Length: 78 inch, Width: 72 inch, Thickness: 6 inch (6 ft 6 in x 6 ft x 6 in)\r\nSupport Type: Bonnell Spring\r\nComfort Layer: PU Foam\r\nMattress Features: Orthopedic Mattress, Zero Partner Disturbance, Sag Resistant Mattress', '1598963093queen-10.jpeg', 1, NULL, 1, 1),
(7, '5fc500d3ae088', 12, 25, 0, 'Peps Springkoil Normal Top Blue 6 inch Double Bonnell Spring Mattress', '10540', 'Length: 72 inch, Width: 48 inch, Thickness: 6 inch (6 ft x 4 ft x 6 in)\r\nSupport Type: Bonnell Spring\r\nComfort Layer: PU Foam\r\nMattress Features: Reversible Mattress', '1598963343double-10.jpeg', 1, NULL, 4, 1),
(8, '5fc500cd9a2c4', 12, 24, 0, 'Delite Kom Riley Engineered Wood Bedside Table  (Finish Color - Acacia Dark)', '2750', 'Rectangular\r\nWidth x Height: 44.958 x 39.878 cm (1 ft 5 in x 1 ft 3 in)\r\nSuitable For: Bedroom Furniture, Living Room\r\nStorage Included\r\nDIY - Basic assembly to be done with simple tools by the customer, comes with instructions', '1598963469particle-board.jpeg', 1, NULL, 0, 1),
(9, '5fc500c7c7bef', 10, 26, 29, 'Abstract Men Hooded Neck Dark Blue T-Shirt', '359', '10% Instant Discount on Bank Of Baroda Credit Cards\r\n10% Instant Discount on Federal Bank Debit Cards', '1598963616s-tnvhdf.jpeg', 1, NULL, 2, 1),
(10, '5fc500c285db4', 10, 26, 29, 'Printed Men Round Neck Yellow T-Shirt', '284', 'Get extra 5.0% off (price inclusive of discount)\r\n10% Instant Discount on Federal Bank Debit Cards\r\n10% Instant Discount on Bank Of Baroda Credit Cards', '1598963703xl-newyork.jpeg', 1, NULL, 0, 1),
(11, '5fc500bc5d3e3', 11, 27, 35, 'Women Printed Pure Cotton A-line Kurta  (White, Blue, Pink)', '759', '10% Instant Discount on Federal Bank Debit Cards\r\n10% Instant Discount on Bank Of Baroda Credit Cards\r\n5% Unlimited Cashback on Flipkart Axis Bank Credit Card', '1598963806xxl-md377.jpeg', 3, NULL, 16, 1),
(12, '5fc500b5570aa', 11, 28, 31, 'Polka Print Bhagalpuri Cotton Blend Saree  (Blue)', '299', 'Special Price  Get extra 10.0% off (price inclusive of discount)\r\nBank Offer10% Instant Discount on Federal Bank Debit Cards', '1598963976free-kora.jpeg', 12, NULL, 15, 1),
(14, '64956da55b711', 10, 30, 14, 'Flat Front Slim Fit Trouser', '799', 'This is new and Latest Trouser', '1687514533trouser4.jpg', 2, NULL, 0, 1),
(15, '64956df2e4888', 10, 30, 14, 'Highlander Trouser', '899', 'This trouser is very flexible and statuale', '1687514610trouser3.jpg', 5, NULL, 0, 1),
(16, '64956f2994d31', 9, 18, 15, 'Apple iPhone 12 Pro', '90999', '&lt;p&gt;&lt;span style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;Apple iPhone 12 Pro ; Type,&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(188, 192, 195); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;Super Retina XDR OLED, HDR10, Dolby&lt;/span&gt;&lt;span style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;&amp;nbsp;Vision, 800 nits (HBM), 1200 nits (peak) ; Size, 6.1 inches, 90.2 cm&lt;/span&gt;&lt;span style=&quot;vertical-align: baseline; position: relative; top: -0.4em; color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;2&lt;/span&gt;&lt;span style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;&amp;nbsp;(~86.0% screen-to-body ratio).&lt;/span&gt;&lt;/p&gt;', '1687514921iphone.jpg', 5, NULL, 0, 1),
(17, '64956fce23bc5', 9, 18, 16, 'OnePlus Nord CE 2 5G', '44999', '&lt;span style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;OnePlus Nord CE 2 5G ; Parameters. Size: 16.33 centimeters (6.43 inches).&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(188, 192, 195); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;Resolution: 2400 x 1080 pixels 409ppi&lt;/span&gt;&lt;span style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;. Aspect Ratio: 20:9. Refresh Rate: 90Hz.&lt;/span&gt;', '1687515086oneplus.jpg', 5, NULL, 0, 1),
(18, '649579cf82af5', 10, 26, 29, 'Mens T-shirt', '399', '&lt;span style=&quot;background-color: rgb(32, 33, 36);&quot;&gt;Mens Tshirt flexible for Summer&lt;/span&gt;', '1687517647t-shirt.jpg', 5, NULL, 0, 1),
(19, '64957a113d9eb', 10, 26, 29, 'Painted T-shirt', '299', 'This T-shirt is comfort for Summer', '1687517713t-shirt4.jpg', 5, NULL, 0, 1),
(20, '64957a5456eee', 10, 26, 28, 'Mens T-shirt', '349', 'This T-shirt is comfort and Flexible for Summer.', '1687517780t-shirt2.jpg', 5, NULL, 0, 1),
(21, '64957acb9d4be', 11, 27, 35, 'Foil Print Angrakha Kurta', '399', 'This Kurti is flexible and comfort for Summer', '168751789971bk2xxkavL.-SL1500-.jpg', 5, NULL, 0, 1),
(22, '64957b21ad6de', 11, 27, 33, 'Floral Print Round-Neck Kurti', '699', 'This Kurti is flexible and comfort for Summer', '1687517985kurti6.jpg', 5, NULL, 0, 1),
(23, '64957ba461080', 11, 27, 34, 'Kurti Pink', '449', 'This Kurti is flexible and comfort for Summer', '1687518116kurti2.jpg', 5, NULL, 0, 1),
(24, '64957c035d1a4', 11, 27, 35, 'Printed A-Line Kurta (Yellow)', '399', 'This Kurti is flexible and comfort for Summer', '1687518211kurti5.jpeg', 5, NULL, 0, 1),
(25, '64992e045051a', 9, 19, 19, 'Acer Aspire 5 A514-54', '46990', '&lt;p&gt;Acer Aspire 5 A514-54 11th Gen Intel Core I5-1135G7 14 Inches Notebook Laptop (8GB/1TB HDD/Windows 11/Silver/1.55 Kg)&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '1687760388AcerAspire.jpg', 5, NULL, 0, 1),
(26, '64992ebd89ae7', 9, 19, 20, 'Asus VivoBook 15 X515JA-EJ552WS', '62990', 'Asus VivoBook 15 X515JA-EJ552WS 10th Gen Intel Core I5-1035G1 15.6 Inches Notebook Laptop (8GB/512GB SSD/Windows 11/Transparent Silver/1.8 Kg)&amp;nbsp;&amp;nbsp;', '1687760573AsusVivoBook.jpg', 5, NULL, 3, 1),
(27, '6499338df02c5', 9, 19, 17, 'HP 15s-fq2627TU Laptop', '44990', '&lt;p style=&quot;margin-bottom: 0px; padding: 0px; font-size: 28px; line-height: 1.25; color: var(--color-text-dark); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Helvetica, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; background-color: rgb(240, 248, 255);&quot;&gt;&lt;span style=&quot;margin-bottom: 0px; padding: 0px; font-size: 28px; line-height: 1.25; color: var(--color-text-dark); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Helvetica, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; background-color: rgb(240, 248, 255);&quot;&gt;HP 15s-fq2627TU Laptop (11th Gen Core i3/ 8GB/ 512GB SSD/ Win11 Home)&lt;/span&gt;&lt;/p&gt;', '1687761805HP.jpg', 3, NULL, 0, 1),
(28, '649934067cb6f', 9, 19, 17, 'HP 15s-FR2511TU Laptop', '36990', '&lt;p style=&quot;margin-bottom: 0px; padding: 0px; font-size: 28px; line-height: 1.25; color: var(--color-text-dark); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Helvetica, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; background-color: rgb(240, 248, 255);&quot;&gt;HP 15s-eq2143au Laptop (Ryzen 3 5300U/ 8GB/ 512GB SSD/ Windows 11 Home)&lt;/p&gt;', '1687761926hp5.jpg', 3, NULL, 0, 1),
(29, '649934a5dfbbb', 9, 19, 18, 'Dell Inspiron 7420 2in1 Laptop', '80999', '&lt;p style=&quot;padding: 0px; text-rendering: optimizelegibility; color: rgb(15, 17, 17); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;&quot;&gt;&lt;span id=&quot;productTitle&quot; class=&quot;a-size-large product-title-word-break&quot; style=&quot;padding: 0px; text-rendering: optimizelegibility; color: rgb(15, 17, 17); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;&quot;&gt;Dell Inspiron 7420 2in1 Laptop, Intel i5-1235U, 16GB DDR4, 512GB SSD, Integrated, 14.0&quot; (35.56Cms) FHD+ WVA Truelife Touch 250 nits Active Pen, Win 11+ MSO&#039;21, 15 Month McAfee, Platinum Silver, 1.5Kgs&lt;/span&gt;&lt;/p&gt;', '1687762085dell.jpg', 3, NULL, 0, 1),
(30, '6499352b07c0d', 9, 19, 18, 'Dell Inspiron 5630 Laptop', '75763', '&lt;p style=&quot;padding: 0px; text-rendering: optimizelegibility; color: rgb(15, 17, 17); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;&quot;&gt;&lt;span id=&quot;productTitle&quot; class=&quot;a-size-large product-title-word-break&quot; style=&quot;padding: 0px; text-rendering: optimizelegibility; color: rgb(15, 17, 17); font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 24px !important; line-height: 32px !important;&quot;&gt;Dell Inspiron 5630 Laptop, Intel Core i5-1340P/ 16Gb /512GB / 16.0&quot; (40.64Cms) FHD+ WVA AG 250 nits/Backlit KB + FPR/Win 11+ MSO&#039;21/McAfee 15 Months/Platinum Silver&lt;/span&gt;&lt;/p&gt;', '1687762219dell2.jpg', 3, NULL, 0, 1),
(31, '649939c45fa4c', 9, 18, 10, 'Samsung Galaxy S21 FE 5G', '32999', '&lt;p style=&quot;-webkit-font-smoothing: antialiased; font-family: open_sansregular; line-height: 28px; color: rgb(43, 43, 43); margin-bottom: 0px; font-size: 24px; padding: 0px 0px 10px; list-style: none; letter-spacing: 0.24px; border-bottom: 1px solid rgba(142, 149, 156, 0.2);&quot;&gt;&lt;span style=&quot;color: rgb(117, 117, 117); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Helvetica, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; font-size: 13px; letter-spacing: normal; background-color: rgb(240, 248, 255);&quot;&gt;Samsung Galaxy S21 FE 5G price in India starts from ?32,999. It is available at lowest price on Flipkart in India as on Jun 26, 2023. Take a look at Samsung Galaxy S21 FE 5G detailed specifications and features.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '1687763396samsung.jpg', 2, NULL, 0, 1),
(32, '64993b843e97a', 9, 18, 21, 'Redmi 12pro 5G', '23187', '&lt;span style=&quot;color: rgb(117, 117, 117); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Helvetica, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; font-size: 13px; background-color: rgb(240, 248, 255);&quot;&gt;Xiaomi Redmi Note 12 Pro 5G price in India starts from ?23,187. It is available at lowest price on Amazon in India as on Jun 26, 2023. Take a look at Xiaomi Redmi Note 12 Pro 5G detailed specifications and features.&lt;/span&gt;', '1687763844redmi.jpg', 3, NULL, 0, 1),
(33, '64993c827f91d', 9, 18, 13, 'Realme 10', '11999', '&lt;span style=&quot;color: rgb(117, 117, 117); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Ubuntu, Helvetica, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; font-size: 13px; background-color: rgb(240, 248, 255);&quot;&gt;Realme 10 Pro price in India is ?11999. You can buy Realme 10&amp;nbsp; online on Croma at lowest price. Realme 10&amp;nbsp; was last updated on June 26, 2023&lt;/span&gt;', '1687764098realme.jpg', 3, NULL, 0, 1),
(34, '649994f450b5d', 10, 31, 26, 'Full-Sleeves Button-Down Collar Shirt', '699', '&lt;p&gt;&lt;span style=&quot;background-color: rgba(66, 133, 244, 0.3); color: rgb(226, 238, 255); font-family: &amp;quot;Google Sans&amp;quot;, arial, sans-serif; font-size: 20px;&quot;&gt;a garment that features a collar and full-length opening fastened with buttons or studs&lt;/span&gt;&lt;/p&gt;', '1687786740shirt.jpg', 3, NULL, 0, 1),
(35, '649995336cfa3', 10, 31, 27, 'Check Shirt', '599', '&lt;span style=&quot;background-color: rgba(66, 133, 244, 0.3); color: rgb(226, 238, 255); font-family: &amp;quot;Google Sans&amp;quot;, arial, sans-serif; font-size: 20px;&quot;&gt;A garment that features a collar and full-length opening fastened with buttons or studs&lt;/span&gt;', '1687786803shirt3.jpg', 3, NULL, 0, 1),
(36, '6499957cdab17', 10, 31, 0, 'Denim Shirt', '699', 'Blue Demin Shirt , Demin Shirt comfort for Winter&amp;nbsp;', '1687786876shirt6.jpg', 3, NULL, 0, 1),
(37, '6499970fb7629', 10, 32, 22, 'Adidas Shoes', '12999', '&lt;p style=&quot;outline: transparent; margin-bottom: 10px; font-weight: inherit; line-height: inherit; font-size: 18px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-family: SourceSansPro; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; border-radius: 0px; overflow-wrap: break-word; text-align: center;&quot;&gt;Ultraboost 22 Lace-Up Running Shoes&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '1687787279adidas.jpg', 3, NULL, 0, 1),
(38, '649998437cbc7', 10, 32, 22, 'Adidas Black Shoes', '9999', 'Adidas black shoes comfort for Runnung', '1687787587adidas23.jpg', 3, NULL, 0, 1),
(39, '6499992876b06', 10, 32, 23, 'Campus Shoes', '1329', '&lt;span style=&quot;color: rgb(120, 122, 124); font-family: Futura, sans-serif; font-size: 15px;&quot;&gt;Hang out with friends, go for jogs, hit the gym, or even play your favorite sport wearing this pair of shoes from CAMPUS.&lt;/span&gt;', '1687787816campus.jpg', 3, NULL, 0, 1),
(40, '64999995b3849', 10, 32, 23, 'RALLY Grey Men&#039;s Running Shoes', '1329', '&lt;span style=&quot;color: rgb(120, 122, 124); font-family: Futura, sans-serif; font-size: 15px;&quot;&gt;Hang out with friends, go for jogs, hit the gym, or even play your favorite sport wearing this pair of shoes from CAMPUS. Crafted with care, it will ensure that your feet stay comfortable for long hours.&lt;/span&gt;', '1687787925campus2.jpg', 3, NULL, 0, 1),
(41, '64999bb077282', 11, 28, 30, 'Banarasi Saree', '2999', '&lt;p&gt;&lt;span jsname=&quot;d6wfac&quot; class=&quot;c5aZPb&quot; data-enable-toggle-animation=&quot;true&quot; data-extra-container-classes=&quot;ZLo7Eb&quot; data-hover-hide-delay=&quot;1000&quot; data-hover-open-delay=&quot;500&quot; data-send-open-event=&quot;true&quot; data-theme=&quot;0&quot; data-width=&quot;250&quot; role=&quot;button&quot; tabindex=&quot;0&quot; jsaction=&quot;vQLyHf&quot; jsslot=&quot;&quot; data-ved=&quot;2ahUKEwidp6PwjeH_AhVA9zgGHcDNAdgQmpgGegQIIBAH&quot; style=&quot;outline: 0px;&quot;&gt;&lt;span jsname=&quot;ukx3I&quot; class=&quot;JPfdse&quot; data-bubble-link=&quot;&quot; data-segment-text=&quot;zari&quot; style=&quot;border-bottom: 1px dashed rgba(226, 238, 255, 0.5); cursor: pointer;&quot;&gt;zari&lt;/span&gt;&lt;/g-bubble&gt;&lt;/span&gt;&lt;/p&gt;', '1687788464banarasisaree.jpg', 3, NULL, 0, 1),
(42, '64999c0d008d0', 11, 28, 31, 'Yellow Saree', '1299', '&lt;span style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;Pick from the designer range of Saris online for ladies &amp;amp; girls. Buy formal, partywear, casual&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(188, 192, 195); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;Saree&lt;/span&gt;&lt;span style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;&amp;nbsp;&lt;/span&gt;', '1687788556saree1.jpg', 3, NULL, 2, 1),
(43, '64999c378212f', 11, 28, 32, 'Pink Saree', '1999', '&lt;span style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;Pick from the designer range of Saris online for ladies &amp;amp; girls. Buy formal, partywear, casual&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(188, 192, 195); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;Saree&lt;/span&gt;&lt;span style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;&amp;nbsp;&lt;/span&gt;', '1687788599saree2.jpg', 3, NULL, 0, 1),
(44, '64999c5ea7b57', 11, 28, 31, 'Blue Saree', '2999', '&lt;span style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;Pick from the designer range of Saris online for ladies &amp;amp; girls. Buy formal, partywear, casual&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(188, 192, 195); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;Saree&lt;/span&gt;&lt;span style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;&amp;nbsp;&lt;/span&gt;', '1687788638saree3.jpg', 3, NULL, 0, 1),
(45, '64999c95ea1dd', 11, 28, 30, 'Saree', '3999', '&lt;span style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;Pick from the designer range of Saris online for ladies &amp;amp; girls. Buy formal, partywear, casual&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(188, 192, 195); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;Saree&lt;/span&gt;&lt;span style=&quot;color: rgb(189, 193, 198); font-family: arial, sans-serif; background-color: rgb(32, 33, 36);&quot;&gt;&amp;nbsp;&lt;/span&gt;', '1687788693saree4.jpg', 3, NULL, 0, 1),
(46, '64999eefcce95', 10, 30, 14, 'Gray Trouser Highlander', '799', '&lt;p style=&quot;box-sizing: inherit; font-size: 24px; margin-bottom: 0px; color: rgb(40, 44, 63); padding: 0px 20px 0px 0px; font-weight: 700; line-height: 1; font-family: Assistant, -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif;&quot;&gt;&lt;span style=&quot;box-sizing: inherit; font-size: 24px; margin-bottom: 0px; color: rgb(40, 44, 63); padding: 0px 20px 0px 0px; font-weight: 700; line-height: 1; font-family: Assistant, -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif;&quot;&gt;Men Gray Tapered Fit Chinos Trousers&lt;/span&gt;&lt;/p&gt;', '1687789295graytrouser.jpg', 3, NULL, 0, 1),
(47, '64999f5370048', 10, 30, 14, 'Trouser for Men', '899', '&lt;h1 class=&quot;pdp-title&quot; style=&quot;box-sizing: inherit; font-size: 24px; margin-bottom: 0px; color: rgb(40, 44, 63); padding: 0px 20px 0px 0px; font-weight: 700; line-height: 1; font-family: Assistant, -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(83, 86, 101); font-family: Assistant, -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 20px; font-weight: 500;&quot;&gt;Men Soil Tapered Fit Chino Trousers.This trouser is comfort for any season&lt;/span&gt;&lt;br&gt;&lt;/h1&gt;', '1687789395trouser5.jpg', 4, NULL, 0, 1),
(48, '64999fbb54d46', 10, 30, 14, 'White Trouser', '699', '&lt;span style=&quot;background-color: rgba(66, 133, 244, 0.3); color: rgb(226, 238, 255); font-family: &amp;quot;Google Sans&amp;quot;, arial, sans-serif; font-size: 20px;&quot;&gt;an outer garment covering the lower half of the body from the waist to the ankles and divided into sections to cover each leg separately&lt;/span&gt;&lt;span style=&quot;color: rgb(232, 234, 237); font-family: &amp;quot;Google Sans&amp;quot;, arial, sans-serif; font-size: 20px; background-color: rgb(32, 33, 36);&quot;&gt;.&lt;/span&gt;', '1687789499trouser6.jpg', 3, NULL, 0, 1),
(49, '649a69a30c616', 10, 26, 28, 'Green T-shirt', '299', '&lt;p style=&quot;box-sizing: inherit; color: rgb(0, 0, 0); font-family: Assistant, -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif; font-size: medium;&quot;&gt;&lt;p class=&quot;pdp-product-description-content&quot; style=&quot;box-sizing: inherit; color: rgb(40, 44, 63); line-height: 1.4; font-size: 16px; margin-top: 12px; width: 491px;&quot;&gt;Green and Black printed T-shirt, has a round neck, and short sleeves&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;/p&gt;', '1687841187tshirt5.jpg', 2, NULL, 0, 1),
(50, '649a6a195a4b4', 10, 26, 29, 'Yellow T-shirt', '399', '&lt;p style=&quot;box-sizing: inherit; color: rgb(0, 0, 0); font-family: Assistant, -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif; font-size: medium;&quot;&gt;&lt;p class=&quot;pdp-product-description-content&quot; style=&quot;box-sizing: inherit; color: rgb(40, 44, 63); line-height: 1.4; font-size: 16px; margin-top: 12px; width: 491px;&quot;&gt;Yellow&amp;nbsp; printed T-shirt, has a round neck, and short sleeves&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;/p&gt;', '1687841305Go-Run.png', 3, NULL, 0, 1),
(51, '649a6ce73cc2d', 10, 31, 26, 'Printed Shirt', '499', '&lt;h1 class=&quot;bo center-heading&quot; style=&quot;margin-bottom: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-weight: 700; font-stretch: normal; font-size: 19px; line-height: 24px; font-family: arial; word-break: break-word; color: rgb(0, 0, 0);&quot;&gt;Casual Linen Mens Sanganeri Print Shirt, Full Sleeves&lt;/h1&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '1687842023checkshirt.jpg', 5, NULL, 0, 1),
(52, '649a6d3f28c6f', 10, 31, 27, 'Black Formal Shirt', '399', '&lt;h1 class=&quot;product-title mb-2&quot; style=&quot;margin-bottom: 0px; font-weight: 600; line-height: 22px; font-size: 18px; font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; padding: 0px; max-height: none;&quot;&gt;Men&#039;s Khadi Cotton Black Shirt - Grey Cuffs&lt;/h1&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '1687842111blackshirt.jpg', 5, NULL, 0, 1),
(53, '649a6dbd5f8de', 10, 31, 26, 'Green Shirt', '599', '&lt;h1 class=&quot;bo center-heading&quot; style=&quot;margin-bottom: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-weight: 700; font-stretch: normal; font-size: 19px; line-height: 24px; font-family: arial; word-break: break-word; color: rgb(0, 0, 0);&quot;&gt;Men&#039;s Cotton Plain Shirts, Full Or Long Sleeves, Formal Wear&lt;/h1&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '1687842237shirt7.jpg', 5, NULL, 0, 1),
(54, '649a6ea8f16d5', 10, 32, 25, 'Men White &amp; Black Colourblocked IDP Sneakers', '2699', '&lt;h1 class=&quot;pdp-name&quot; style=&quot;box-sizing: inherit; font-size: 20px; margin-bottom: 0px; color: rgb(83, 86, 101); padding: 5px 20px 14px 0px; opacity: 0.8; font-family: Assistant, -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;&quot;&gt;Crafted with fine technology and futuristic design, PUMA shoe is surely here to uplift your style and track games. Kick off on street and field in this shoe from the worlds leading and much loved sports brand, PUMA.&lt;/span&gt;&lt;br&gt;&lt;/h1&gt;', '1687842472puma2.jpg', 5, NULL, 0, 1),
(55, '649a6f1cc5503', 10, 32, 25, 'Puma Unisex-Adult Mirage Tech Sneaker', '3599', '&lt;span style=&quot;font-family: &amp;quot;Amazon Ember&amp;quot;, Arial, sans-serif; font-size: small;&quot;&gt;Introducing the Mirage Tech. Its trippy colors, eye-catching layers, and futuristic elements take inspiration from the lights, energy, and atmosphere of EDM shows. Bold combos plus statement overlay details make for a head-turning look. This reimagined silhouette is inspired by illusions and visions – the space between what&#039;s real and what your senses tell you. And it&#039;s ready to transport you into a world of new realities.FEATURES &amp;amp; BENEFITS CMEVA: PUMA&#039;s compression-moulded EVA material for lightweight performance Vegan certified productDETAILS Low boot Mesh and textile upper Synthetic leather overlays at heel and top eyestay TPU hot melt overlays at toe and bottom eyestay CMEVA midsole for lightweight cushioning Rubber outsole provides traction and grip Full Lace closure for a snug fit TPU heel piece with PUMA branding PUMA Wordmark badge at tongue Multi layer PUMA Formstrip with translucent mesh and thick hotmelt&lt;/span&gt;', '1687842588puma.jpg', 5, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_cart`
--

CREATE TABLE `product_cart` (
  `s_no` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `sub_cat_id` int(11) NOT NULL,
  `sub_cat_title` varchar(100) NOT NULL,
  `cat_parent` int(11) NOT NULL,
  `cat_products` int(11) NOT NULL DEFAULT 0,
  `show_in_header` tinyint(4) NOT NULL DEFAULT 1,
  `show_in_footer` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`sub_cat_id`, `sub_cat_title`, `cat_parent`, `cat_products`, `show_in_header`, `show_in_footer`) VALUES
(19, 'Laptops', 9, 8, 1, 1),
(21, 'Camera', 9, 0, 1, 1),
(20, 'Speakers', 9, 0, 1, 1),
(18, 'Mobiles', 9, 7, 1, 1),
(22, 'Kitchen', 12, 0, 0, 1),
(23, 'Tableware', 12, 0, 0, 1),
(24, 'Living Room', 12, 1, 0, 1),
(25, 'Beds', 12, 2, 1, 1),
(26, 'Men\'s T-Shirts', 10, 9, 1, 1),
(27, 'Kurti\'s', 11, 5, 1, 1),
(28, 'Sarees', 11, 6, 1, 1),
(29, 'Trousers', 13, 0, 1, 1),
(30, 'Trousers', 10, 5, 1, 1),
(31, 'Mens Shirt', 10, 4, 1, 1),
(32, 'Mens Shoes', 10, 6, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `user_role` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `f_name`, `l_name`, `username`, `email`, `password`, `mobile`, `address`, `city`, `user_role`) VALUES
(2, 'user12', 'user', 'user@gmail.com', '', '24c9e15e52afc47c225b757e7bee1f9d', '9856231042', '#1234', 'delhi', 1),
(3, 'user2', 'user last', 'user2@gmail.com', '', '7e58d63b60197ceb55a1c487989a3720', '9999999999', '#kdjfg s gfd gdfjgkdsf gsdfkgjk', 'Delhi', 1),
(4, 'user3', 'user last', 'user3@gmail.com', '', '92877af70a45fd6a2ed7fe81e1236b78', '9999999999', '#hsd sdfsd fs df asdf', 'dsf asdf a', 1),
(5, 'user testing', 'user last', 'user4@gmail.com', '', '3f02ebe3d7929b091e3d8ccfde2f3bc6', '999999999', '#dsjg sdf sd f', 'dskfs f aslkf', 1),
(6, 'sadsadsa', 'sdsadsa', 'hh@gmail.com', '', '5e36941b3d856737e81516acd45edc50', '999999999', 'dsfsd fs', 'sdf a', 1),
(7, 'dsf sdfsd safasd', 'sdd fsdfsadf', 'user5@gmail.com', '', '0a791842f52a0acfbb3a783378c066b8', '9999999999', 'dsf adfasd', 'dsafsadf', 1),
(8, 'dsf sdfsd safasd', 'sdd fsdfsadf', 'user51@gmail.com', '', '0a791842f52a0acfbb3a783378c066b8', '9999999999', 'dsf adfasd', 'dsafsadf', 1),
(9, 'dsf sdfsd safasd', 'sdd fsdfsadf', 'user51s@gmail.com', '', '0a791842f52a0acfbb3a783378c066b8', '9999999999', 'dsf adfasd', 'dsafsadf', 1),
(10, 'sfnsdfbsd', 'sdfasdfsa', 'useryusdfnds@gmail.com', '', 'ba407c68e2448c005ee7459f89dd3e63', '9999999999', '#d dsfh', 'dsfdsf', 1),
(11, 's ds ad', 'sad sad', 'rti@gmail.com', '', '620dc68bbfc5d7654e44817a8d3b2cdf', '9999999999', '#fg', 'adsad', 1),
(12, 's ds ad', 'sad sad', 'rtis@gmail.com', '', '620dc68bbfc5d7654e44817a8d3b2cdf', '9999999999', '#fg', 'adsad', 1),
(13, 's ds ad', 'sad sad', 'rtisf@gmail.com', '', '620dc68bbfc5d7654e44817a8d3b2cdf', '9999999999', '#fg', 'adsad', 1),
(14, 'final user', 'user last', 'userf@gmail.com', '', 'add5092c13fbcc5cceaf1fdb98411871', '9999999999', 'lcnsd', 'dsfs df', 1),
(16, 'Shubham', 'Sharma', 'shubh8055@gmail.com', '', '0d9749b288589a29e3813bdac9331999', '8112301399', 'durgakund', 'VARANASI', 1),
(17, 'Manish', 'Mishra', 'pay262407@gmail.com', '', '0d9749b288589a29e3813bdac9331999', '8789456133', 'Balia', 'Balia', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_cart`
--
ALTER TABLE `product_cart`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`sub_cat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `product_cart`
--
ALTER TABLE `product_cart`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
