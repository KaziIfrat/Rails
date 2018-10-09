-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 09, 2018 at 06:07 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `depot_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2018-10-05 17:18:02', '2018-10-05 17:18:02');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `created_at`, `updated_at`) VALUES
(2, '2018-10-08 21:18:38', '2018-10-08 21:18:38'),
(3, '2018-10-09 18:15:24', '2018-10-09 18:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `line_items`
--

CREATE TABLE `line_items` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `cart_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `quantity` int(11) DEFAULT '1',
  `totalPrice` decimal(10,0) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `line_items`
--

INSERT INTO `line_items` (`id`, `product_id`, `cart_id`, `created_at`, `updated_at`, `quantity`, `totalPrice`) VALUES
(19, 3, 2, '2018-10-09 15:01:52', '2018-10-09 15:01:52', 2, '1'),
(20, 4, 2, '2018-10-09 15:01:52', '2018-10-09 15:01:52', 8, '1'),
(21, 5, 2, '2018-10-09 15:01:52', '2018-10-09 15:01:52', 4, '1'),
(23, 4, 3, '2018-10-09 19:32:51', '2018-10-09 19:32:51', 1, '1'),
(24, 3, 3, '2018-10-09 20:58:07', '2018-10-09 21:02:27', 4, '280');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `image_url` varchar(255) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image_url`, `price`, `created_at`, `updated_at`) VALUES
(3, 'Seven Mobile Apps in Seven Weeks', '<p>\r\n<em>Native Apps, Multiple Platforms</em>\r\nAnswer the question “Can we build this for ALL the devices?” with a\r\nresounding YES. This book will help you get there with a real-world\r\nintroduction to seven platforms, whether you’re new to mobile or an\r\nexperienced developer needing to expand your options. Plus, you’ll find\r\nout which cross-platform solution makes the most sense for your needs.\r\n</p>', 'book.png', '70.00', '2018-10-05 19:20:05', '2018-10-05 23:37:26'),
(4, 'doorbeen', '<p><em>ddddddddddd</em>ddddddddddddddddddddddddddddddddddddddd</p>', 'book.png', '300.00', '2018-10-05 19:30:49', '2018-10-05 19:31:46'),
(5, 'kalbela', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk', 'book.png', '300.00', '2018-10-08 20:00:51', '2018-10-08 20:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20181005165751'),
('20181008150339'),
('20181008151624'),
('20181009134948'),
('20181009141632'),
('20181009202837');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `line_items`
--
ALTER TABLE `line_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_line_items_on_product_id` (`product_id`),
  ADD KEY `index_line_items_on_cart_id` (`cart_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `line_items`
--
ALTER TABLE `line_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `line_items`
--
ALTER TABLE `line_items`
  ADD CONSTRAINT `fk_rails_11e15d5c6b` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_rails_af645e8e5f` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
