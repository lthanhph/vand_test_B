-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2023 at 11:33 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vand_test_b`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2023_01_07_033412_create_stores_table', 1),
(3, '2023_01_07_033557_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_manufacture` datetime NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `brand`, `category`, `date_of_manufacture`, `store_id`, `created_at`, `updated_at`) VALUES
(1, 'product_1', 'This is description of product_1', 'branch_sample_2', 'category_sample_8', '2015-08-19 13:26:40', 1, '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(2, 'product_2', 'This is description of product_2', 'branch_sample_3', 'category_sample_6', '2009-08-22 00:21:53', 2, '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(3, 'product_3', 'This is description of product_3', 'branch_sample_1', 'category_sample_1', '2016-11-24 13:55:45', 5, '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(4, 'product_4', 'This is description of product_4', 'branch_sample_3', 'category_sample_3', '2001-05-10 08:03:41', 4, '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(5, 'product_5', 'This is description of product_5', 'branch_sample_1', 'category_sample_8', '2010-01-04 10:16:35', 4, '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(6, 'product_6', 'This is description of product_6', 'branch_sample_2', 'category_sample_2', '2005-06-09 20:21:23', 1, '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(7, 'product_7', 'This is description of product_7', 'branch_sample_5', 'category_sample_1', '2006-02-15 19:14:01', 5, '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(8, 'product_8', 'This is description of product_8', 'branch_sample_5', 'category_sample_3', '2018-10-27 08:25:43', 2, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(9, 'product_9', 'This is description of product_9', 'branch_sample_1', 'category_sample_10', '2012-08-02 04:33:10', 2, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(10, 'product_10', 'This is description of product_10', 'branch_sample_2', 'category_sample_4', '2000-01-11 03:50:12', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(11, 'product_11', 'This is description of product_11', 'branch_sample_5', 'category_sample_8', '2007-11-13 04:23:57', 4, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(12, 'product_12', 'This is description of product_12', 'branch_sample_5', 'category_sample_9', '2004-04-26 15:25:50', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(13, 'product_13', 'This is description of product_13', 'branch_sample_5', 'category_sample_3', '2002-01-30 11:39:22', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(14, 'product_14', 'This is description of product_14', 'branch_sample_2', 'category_sample_6', '2008-04-22 04:07:09', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(15, 'product_15', 'This is description of product_15', 'branch_sample_3', 'category_sample_6', '2007-04-20 16:54:03', 1, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(16, 'product_16', 'This is description of product_16', 'branch_sample_3', 'category_sample_4', '2012-10-18 16:38:22', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(17, 'product_17', 'This is description of product_17', 'branch_sample_2', 'category_sample_4', '2017-06-13 14:40:55', 4, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(18, 'product_18', 'This is description of product_18', 'branch_sample_5', 'category_sample_1', '2011-12-29 08:49:07', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(19, 'product_19', 'This is description of product_19', 'branch_sample_4', 'category_sample_2', '2011-05-06 22:54:27', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(20, 'product_20', 'This is description of product_20', 'branch_sample_3', 'category_sample_1', '2015-11-17 05:48:00', 2, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(21, 'product_21', 'This is description of product_21', 'branch_sample_3', 'category_sample_9', '2004-11-30 04:05:23', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(22, 'product_22', 'This is description of product_22', 'branch_sample_1', 'category_sample_3', '2010-06-22 04:45:33', 2, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(23, 'product_23', 'This is description of product_23', 'branch_sample_2', 'category_sample_1', '2000-03-31 11:16:54', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(24, 'product_24', 'This is description of product_24', 'branch_sample_2', 'category_sample_3', '2019-08-30 18:38:20', 4, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(25, 'product_25', 'This is description of product_25', 'branch_sample_2', 'category_sample_5', '2008-11-14 09:56:12', 1, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(26, 'product_26', 'This is description of product_26', 'branch_sample_1', 'category_sample_1', '2006-04-07 23:47:21', 4, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(27, 'product_27', 'This is description of product_27', 'branch_sample_4', 'category_sample_2', '2016-10-29 22:45:52', 1, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(28, 'product_28', 'This is description of product_28', 'branch_sample_3', 'category_sample_9', '2003-09-14 10:03:59', 4, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(29, 'product_29', 'This is description of product_29', 'branch_sample_3', 'category_sample_6', '2000-06-01 06:51:57', 2, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(30, 'product_30', 'This is description of product_30', 'branch_sample_3', 'category_sample_8', '2006-02-26 08:28:51', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(31, 'product_31', 'This is description of product_31', 'branch_sample_3', 'category_sample_7', '2001-09-28 01:16:42', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(32, 'product_32', 'This is description of product_32', 'branch_sample_5', 'category_sample_1', '2014-06-22 14:49:08', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(33, 'product_33', 'This is description of product_33', 'branch_sample_4', 'category_sample_5', '2013-03-22 06:16:27', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(34, 'product_34', 'This is description of product_34', 'branch_sample_1', 'category_sample_9', '2000-08-02 05:13:33', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(35, 'product_35', 'This is description of product_35', 'branch_sample_1', 'category_sample_5', '2011-08-10 16:00:25', 1, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(36, 'product_36', 'This is description of product_36', 'branch_sample_1', 'category_sample_7', '2002-03-26 22:25:29', 1, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(37, 'product_37', 'This is description of product_37', 'branch_sample_4', 'category_sample_6', '2019-04-07 22:55:49', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(38, 'product_38', 'This is description of product_38', 'branch_sample_2', 'category_sample_3', '2000-06-05 20:56:17', 1, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(39, 'product_39', 'This is description of product_39', 'branch_sample_4', 'category_sample_6', '2015-03-30 02:19:53', 2, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(40, 'product_40', 'This is description of product_40', 'branch_sample_4', 'category_sample_7', '2009-09-03 14:12:58', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(41, 'product_41', 'This is description of product_41', 'branch_sample_3', 'category_sample_7', '2012-02-24 06:37:07', 1, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(42, 'product_42', 'This is description of product_42', 'branch_sample_4', 'category_sample_3', '2006-08-17 02:21:11', 4, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(43, 'product_43', 'This is description of product_43', 'branch_sample_3', 'category_sample_9', '2004-09-15 07:50:48', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(44, 'product_44', 'This is description of product_44', 'branch_sample_3', 'category_sample_6', '2002-02-12 08:36:40', 2, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(45, 'product_45', 'This is description of product_45', 'branch_sample_4', 'category_sample_10', '2008-03-15 06:38:13', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(46, 'product_46', 'This is description of product_46', 'branch_sample_4', 'category_sample_1', '2022-12-26 22:34:06', 4, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(47, 'product_47', 'This is description of product_47', 'branch_sample_1', 'category_sample_7', '2010-01-16 06:36:03', 2, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(48, 'product_48', 'This is description of product_48', 'branch_sample_1', 'category_sample_3', '2010-03-18 10:11:31', 4, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(49, 'product_49', 'This is description of product_49', 'branch_sample_3', 'category_sample_9', '2018-01-27 19:02:31', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(50, 'product_50', 'This is description of product_50', 'branch_sample_5', 'category_sample_7', '2009-05-20 00:30:40', 1, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(51, 'product_51', 'This is description of product_51', 'branch_sample_2', 'category_sample_4', '2010-08-31 17:58:44', 2, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(52, 'product_52', 'This is description of product_52', 'branch_sample_3', 'category_sample_1', '2021-06-13 09:31:35', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(53, 'product_53', 'This is description of product_53', 'branch_sample_5', 'category_sample_3', '2001-03-23 07:38:37', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(54, 'product_54', 'This is description of product_54', 'branch_sample_4', 'category_sample_4', '2016-05-05 04:19:55', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(55, 'product_55', 'This is description of product_55', 'branch_sample_2', 'category_sample_4', '2007-12-15 09:11:38', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(56, 'product_56', 'This is description of product_56', 'branch_sample_1', 'category_sample_2', '2008-10-08 22:57:11', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(57, 'product_57', 'This is description of product_57', 'branch_sample_5', 'category_sample_5', '2011-11-03 16:04:30', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(58, 'product_58', 'This is description of product_58', 'branch_sample_5', 'category_sample_4', '2021-08-21 13:07:29', 4, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(59, 'product_59', 'This is description of product_59', 'branch_sample_2', 'category_sample_5', '2003-11-05 18:50:05', 2, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(60, 'product_60', 'This is description of product_60', 'branch_sample_2', 'category_sample_9', '2012-12-28 05:15:19', 1, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(61, 'product_61', 'This is description of product_61', 'branch_sample_2', 'category_sample_3', '2011-03-07 10:04:36', 1, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(62, 'product_62', 'This is description of product_62', 'branch_sample_3', 'category_sample_6', '2009-09-16 06:18:04', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(63, 'product_63', 'This is description of product_63', 'branch_sample_3', 'category_sample_2', '2020-12-21 17:51:54', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(64, 'product_64', 'This is description of product_64', 'branch_sample_5', 'category_sample_9', '2022-03-27 11:05:55', 4, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(65, 'product_65', 'This is description of product_65', 'branch_sample_4', 'category_sample_2', '2007-12-17 06:27:02', 2, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(66, 'product_66', 'This is description of product_66', 'branch_sample_3', 'category_sample_1', '2010-09-06 17:20:50', 1, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(67, 'product_67', 'This is description of product_67', 'branch_sample_1', 'category_sample_2', '2003-05-31 05:40:34', 1, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(68, 'product_68', 'This is description of product_68', 'branch_sample_3', 'category_sample_4', '2014-04-10 20:10:59', 2, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(69, 'product_69', 'This is description of product_69', 'branch_sample_3', 'category_sample_10', '2004-09-09 15:15:37', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(70, 'product_70', 'This is description of product_70', 'branch_sample_1', 'category_sample_8', '2019-10-07 16:39:31', 1, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(71, 'product_71', 'This is description of product_71', 'branch_sample_1', 'category_sample_8', '2003-09-04 08:42:49', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(72, 'product_72', 'This is description of product_72', 'branch_sample_2', 'category_sample_10', '2019-07-28 17:03:57', 2, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(73, 'product_73', 'This is description of product_73', 'branch_sample_4', 'category_sample_2', '2015-02-19 09:37:50', 4, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(74, 'product_74', 'This is description of product_74', 'branch_sample_3', 'category_sample_1', '2011-09-30 03:52:24', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(75, 'product_75', 'This is description of product_75', 'branch_sample_5', 'category_sample_5', '2007-11-16 23:15:49', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(76, 'product_76', 'This is description of product_76', 'branch_sample_5', 'category_sample_4', '2015-09-26 17:03:09', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(77, 'product_77', 'This is description of product_77', 'branch_sample_3', 'category_sample_2', '2019-01-06 09:03:28', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(78, 'product_78', 'This is description of product_78', 'branch_sample_5', 'category_sample_6', '2013-06-29 23:30:37', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(79, 'product_79', 'This is description of product_79', 'branch_sample_1', 'category_sample_9', '2004-04-25 09:18:02', 2, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(80, 'product_80', 'This is description of product_80', 'branch_sample_4', 'category_sample_6', '2009-12-25 10:07:42', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(81, 'product_81', 'This is description of product_81', 'branch_sample_4', 'category_sample_3', '2005-06-15 21:46:24', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(82, 'product_82', 'This is description of product_82', 'branch_sample_2', 'category_sample_5', '2019-05-22 08:13:42', 2, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(83, 'product_83', 'This is description of product_83', 'branch_sample_5', 'category_sample_5', '2004-06-28 21:55:23', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(84, 'product_84', 'This is description of product_84', 'branch_sample_2', 'category_sample_3', '2009-11-15 00:11:21', 2, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(85, 'product_85', 'This is description of product_85', 'branch_sample_3', 'category_sample_3', '2002-10-30 02:31:14', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(86, 'product_86', 'This is description of product_86', 'branch_sample_5', 'category_sample_2', '2017-10-05 23:49:38', 4, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(87, 'product_87', 'This is description of product_87', 'branch_sample_1', 'category_sample_1', '2021-06-25 19:04:06', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(88, 'product_88', 'This is description of product_88', 'branch_sample_4', 'category_sample_10', '2022-05-14 01:26:20', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(89, 'product_89', 'This is description of product_89', 'branch_sample_4', 'category_sample_6', '2017-02-03 23:48:04', 1, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(90, 'product_90', 'This is description of product_90', 'branch_sample_3', 'category_sample_2', '2017-05-14 14:51:35', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(91, 'product_91', 'This is description of product_91', 'branch_sample_4', 'category_sample_4', '2017-09-22 02:58:42', 1, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(92, 'product_92', 'This is description of product_92', 'branch_sample_1', 'category_sample_5', '2017-05-13 04:20:27', 2, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(93, 'product_93', 'This is description of product_93', 'branch_sample_1', 'category_sample_5', '2003-02-23 19:50:50', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(94, 'product_94', 'This is description of product_94', 'branch_sample_4', 'category_sample_9', '2021-10-18 11:42:18', 5, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(95, 'product_95', 'This is description of product_95', 'branch_sample_5', 'category_sample_8', '2014-09-09 18:36:02', 2, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(96, 'product_96', 'This is description of product_96', 'branch_sample_2', 'category_sample_2', '2022-12-26 01:00:42', 4, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(97, 'product_97', 'This is description of product_97', 'branch_sample_3', 'category_sample_3', '2008-11-12 14:09:46', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(98, 'product_98', 'This is description of product_98', 'branch_sample_4', 'category_sample_7', '2005-10-09 07:09:18', 3, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(99, 'product_99', 'This is description of product_99', 'branch_sample_3', 'category_sample_8', '2006-08-22 21:12:01', 1, '2023-01-07 22:15:53', '2023-01-07 22:15:53'),
(100, 'product_100', 'This is description of product_100', 'branch_sample_1', 'category_sample_8', '2017-09-12 15:30:23', 2, '2023-01-07 22:15:53', '2023-01-07 22:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `title`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'store_1', 'This is description of store_1', 1, '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(2, 'store_2', 'This is description of store_2', 1, '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(3, 'store_3', 'This is description of store_3', 1, '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(4, 'store_4', 'This is description of store_4', 1, '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(5, 'store_5', 'This is description of store_5', 1, '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(6, 'store-test', 'abc', 1, '2023-01-08 01:37:52', '2023-01-08 01:37:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `gender`, `address`, `phone`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$m8yCOHCPazlLwjuMEmPR0.UcadBAm6SnBTLM1MSFyeLsoX8PEcr.O', 1, 'TPHCM', '123456789', 'UvZXGDpJdnZXJmRStHpAaNBDPdVo2tnqjXhwF8aBOwYM0pTfls', '2023-01-07 22:15:50', '2023-01-07 22:15:50'),
(2, 'Mr. Lamar Emmerich', 'eldridge61@example.com', '$2y$10$FsriVux1/EheHIWPcjfDmukcr2Fbm0cBOnBpsCwxPCm17q/tR34gm', 1, '4273 Pouros Walk Suite 248\nPort Alveratown, DC 03275', '1-844-899-9346', 'sH5YRCk0dqevmZm8SI09aEFWkywqM43K2B2I5yo1OKWkXXlHZR', '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(3, 'Mr. Shayne Beahan Sr.', 'dankunding@example.net', '$2y$10$qXTqW7bl1QBuv8cZ9cNx/e9rREFjHcK.XCT.6dCvU2qXA61KGDnqS', 2, '62609 Johnathon Dale Apt. 372\nMacejkovicville, NE 75587', '800-657-2400', 'Oz3GlVVL6uTB0aSzhcvbzkxkM4gIsRNQFdW0w9NUhhpQ8UisiP', '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(4, 'Prof. Trenton Beer', 'whoppe@example.org', '$2y$10$FFYi8PM1SDbO4Pgp0wuPiuWS52efU31.cI8OoJTdfq9iofiQTUtyq', 1, '971 Zella Inlet Suite 208\nNorth Major, DE 58221-0280', '1-888-940-3062', 'PAwkpwmqfEbpzOOerb0JeuvlSHvAu96cOisLlh4eSd0K5CAO5a', '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(5, 'Mr. Wallace Fahey MD', 'darrell12@example.org', '$2y$10$rRJSrET.N0GD5m48CaFzvuq1HNztpxOmRlA3P2YrdPjpMaWr2G70.', 2, '1515 Kilback Greens Suite 758\nNorth Felipa, IL 36021', '844.837.1575', 'H1UVsKNanoFCqb3KquMM0CJYOjdATeiMWZjoZuPHqQJqDVaL4l', '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(6, 'Dr. Johann Dare PhD', 'lacey17@example.com', '$2y$10$aNeN8SgbfxEyO.kPsgJ57eRArVRT7BUC8acj6QE3uUZxT..ASot1u', 2, '97782 Addison Path Suite 101\nIsaishire, VA 76982-8485', '855.731.9356', 'sJp28EpvdGJ08YKbvFtyS4vCOywIGAqoLFqyJs9UnS0wQuroJz', '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(7, 'Kallie Aufderhar DVM', 'kaley33@example.net', '$2y$10$QMd6k.R45va0kw9wO.XEc.iZr4za030qnnCP9r7kMBcRHH3a1ZLgW', 2, '352 Hickle Spring Apt. 395\nWatershaven, GA 87488', '800.409.3492', 'MySnxezlEYyT9y7RYyd1znlgzEXThI3pUiXGKRok7647tz7G9Q', '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(8, 'Henriette Gusikowski', 'hand.glenda@example.com', '$2y$10$aibDgRyaBoMSAuanJQ2c2OlPcqhwwjRUZwRjO.WLecPVAM73o17MW', 1, '284 Pattie Plain Suite 662\nWest Otishaven, NM 13361-1141', '888.971.4428', 'fSBWT3rzDS3aJf5ZKacKMm2G28U1Rq0JfXn1D0dey3HTTMyr5T', '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(9, 'Ms. Marisol Ebert Jr.', 'nels55@example.org', '$2y$10$CbVCt5NvczHeVgCOvgWGi.xx9Nc2mnK8S7UiFz/SG9F3SvnrMBd96', 1, '270 Nikko Center Suite 507\nClaireport, NM 00400-7560', '800.883.0550', 'NrozPSOuWXT4n3VAOcjSpGuc7tfjDBCZSozfzGARFsOZjRBCKx', '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(10, 'Elenor Sawayn', 'jermey17@example.org', '$2y$10$p.Sk//NF0De6QHGlE0fT7.trG/PBPTsX1oFdadqc/ahwjcaDiS3cq', 1, '96871 Kemmer Trace\nWest Savionfurt, TN 96640', '(855) 377-7966', 'zVbYgvlJCiOGl5nOp1GjvQIz4RsLFYQBCfszvrkiBCMWglRKf0', '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(11, 'Kayleigh Rosenbaum', 'assunta54@example.org', '$2y$10$nfQn4WQg/HxuaHuP4/ZJ7.gl3hStPBBNcf.la3ShZC48xjyUaj.V.', 2, '4305 Anika Mission Suite 096\nSouth Salma, VT 31937-9476', '(855) 975-6117', 'ZKb4FiZpybdqA3ysCA9xYQoxZpzV6qedWswQrN41DVmQwMnOXQ', '2023-01-07 22:15:52', '2023-01-07 22:15:52'),
(12, 'user-test-1', 'user-test-1@gmail.com', '123456', 1, 'abc', '123456', '1lHwmUBGiXluV3Ko5NLh7XwY4R38h91B8EJVMlw5QchtWrLiZB', '2023-01-08 00:55:41', '2023-01-08 00:55:41'),
(13, 'user-test-2', 'user-test-2@gmail.com', '123456', 1, 'abc', '08150618554', 'xskrQPLPtWjGPo2s4bQptgbVt9tGep8gzTiiPXh1iUOIJuDspZ', '2023-01-08 00:58:00', '2023-01-08 00:58:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
