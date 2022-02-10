-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 11:01 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Samsung', 'Samsung Galaxy 10', 152.00, './assets/products/samsung.jpg', '2020-03-28 11:08:57'), 
(2, 'Redmi', 'Redmi Note 7', 122.00, './assets/products/redmi.jpg', '2020-03-28 11:08:57'),
(3, 'Redmi', 'Redmi Note 6', 153.00, './assets/products/redmi1.jpg', '2020-03-28 11:08:57'),
(4, 'Redmi', 'Redmi Note 5', 156.00, './assets/products/redmi2.jpg', '2020-03-28 11:08:57'),
(5, 'Redmi', 'Redmi Note 4', 177.00, './assets/products/redmi3.jpg', '2020-03-28 11:08:57'),
(6, 'Redmi', 'Redmi Note 8', 224.00, './assets/products/redmi4.jpg', '2020-03-28 11:08:57'),
(7, 'Redmi', 'Redmi Note 9', 222.00, './assets/products/redmi5.jpg', '2020-03-28 11:08:57'),
(8, 'Redmi', 'Redmi Note', 122.00, './assets/products/redmi6.jpg', '2020-03-28 11:08:57'),
(9, 'Redmi', 'Redmi Xiaomi 11', 444.00, './assets/products/redmi7.jpg', '2020-03-28 11:08:57'),
(10, 'Samsung', 'Samsung Galaxy S7', 352.00, './assets/products/samsung1.jpg', '2020-03-28 11:08:57'),
(11, 'Samsung', 'Samsung Galaxy 21', 252.00, './assets/products/samsung2.jpg', '2020-03-28 11:08:57'),
(12, 'Samsung', 'Samsung Galaxy 20', 452.00, './assets/products/samsung3.jpg', '2020-03-28 11:08:57'),
(13, 'Samsung', 'Samsung Galaxy A20', 252.00, './assets/products/samsung4.jpg', '2020-03-28 11:08:57'),
(14, 'Samsung', 'Samsung Galaxy A12', 420.00, './assets/products/samsung5.jpg', '2020-03-28 11:08:57'),
(15, 'Samsung', 'Samsung Note 10', 352.00, './assets/products/samsung6.jpg', '2020-03-28 11:08:57'),
(16, 'Apple', 'Apple iPhone 5', 152.00, './assets/products/iphone.jpg', '2020-03-28 11:08:57'),
(17, 'Apple', 'Apple iPhone 6', 152.00, './assets/products/iphone1.jpg', '2020-03-28 11:08:57'),
(18, 'Apple', 'Apple iPhone 11', 1742.00, './assets/products/iphone2.jpg', '2020-03-28 11:08:57');
(19, 'Apple', 'Apple iPhone 12', 1252.00, './assets/products/iphone3.jpg', '2020-03-28 11:08:57');
(20, 'Apple', 'Apple iPhone XS', 752.00, './assets/products/iphone4.jpg', '2020-03-28 11:08:57');
(21, 'Apple', 'Apple iPhone 11', 1122.00, './assets/products/iphone5.jpg', '2020-03-28 11:08:57');
(22, 'Lenovo', 'Lenovo ThinkPad', 1352.00, './assets/products/lenovo.jpg', '2020-03-28 11:08:57');
(23, 'Lenovo', 'Lenovo ThinkBook', 2252.00, './assets/products/lenovo1.jpg', '2020-03-28 11:08:57');
(24, 'Headphones', 'Headphones', 2252.00, './assets/products/headphones.jpg', '2020-03-28 11:08:57');
(25, 'Headphones', 'Wireless headphones', 2252.00, './assets/products/headphones1.jpg', '2020-03-28 11:08:57');
(26, 'Headphones', 'Superbass headphones', 2252.00, './assets/products/headphones2.jpg', '2020-03-28 11:08:57');
(27, 'Headphones', 'Bluetooth headphones', 2252.00, './assets/products/headphones3.jpg', '2020-03-28 11:08:57');
(28, 'Speakers', 'Wireless Speakers', 152.00, './assets/products/speaker.jpg', '2020-03-28 11:08:57'),
(29, 'Speakers', 'Bluetooth Speakers', 152.00, './assets/products/speaker1.jpg', '2020-03-28 11:08:57'),
(30, 'Speakers', 'Indoor Speakers', 1742.00, './assets/products/speaker2.jpg', '2020-03-28 11:08:57');
(31, 'Speakers', 'Bluetooth Speakers', 1252.00, './assets/products/speaker3.jpg', '2020-03-28 11:08:57');
(32, 'Speakers', 'Outdoor Speakers', 752.00, './assets/products/speaker4.jpg', '2020-03-28 11:08:57');
(33, 'Speakers', 'Speakers', 1122.00, './assets/products/speaker5.jpg', '2020-03-28 11:08:57');
(34, 'Speakers', 'Speakers', 1352.00, './assets/products/speaker6.jpg', '2020-03-28 11:08:57');
(35, 'Macbook', 'Macbook Pro', 2252.00, './assets/products/macbook.jpg', '2020-03-28 11:08:57');
(36, 'Macbook', 'Macbook Air', 2252.00, './assets/products/macbook1.jpg', '2020-03-28 11:08:57');
(37, 'Macbook', 'Macbook Pro 14', 2252.00, './assets/products/macbook2.jpg', '2020-03-28 11:08:57');
(38, 'Macbook', 'Macbook Air 2017', 2252.00, './assets/products/macbook3.jpg', '2020-03-28 11:08:57');
(39, 'Macbook', 'Macbook Air Retina', 2252.00, './assets/products/macbook4.jpg', '2020-03-28 11:08:57');
(40, 'Macbook', 'Macbook Air Mi', 2252.00, './assets/products/macbook5.jpg', '2020-03-28 11:08:57');
(41, 'Hp', 'Clim Hp laptop', 152.00, './assets/products/hp.jpg', '2020-03-28 11:08:57'),
(42, 'Hp', 'Hp Razor', 1742.00, './assets/products/hp1.jpg', '2020-03-28 11:08:57');
(43, 'Hp', 'Hp', 1252.00, './assets/products/hp2.jpg', '2020-03-28 11:08:57');
(44, 'Dell', 'Dell', 752.00, './assets/products/dell.jpg', '2020-03-28 11:08:57');
(45, 'Dell', 'Dell', 1122.00, './assets/products/dell1.jpg', '2020-03-28 11:08:57');
(46, 'Dell', 'Dell', 1352.00, './assets/products/dell2.jpg', '2020-03-28 11:08:57');
(47, 'Macbook', 'Apple Products', 2252.00, './assets/products/all.jpg', '2020-03-28 11:08:57');
(48, 'Macbook', 'Apple Products', 2252.00, './assets/products/all1.jpg', '2020-03-28 11:08:57');
(49, 'Macbook', 'Apple Products', 2252.00, './assets/products/all2.jpg', '2020-03-28 11:08:57');
(50, 'Huaweii', 'Huaweii', 2252.00, './assets/products/huaweii.jpg', '2020-03-28 11:08:57');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'Daily', 'Tuition', '2020-03-28 13:07:17'),
(2, 'Akshay', 'Kashyap', '2020-03-28 13:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
