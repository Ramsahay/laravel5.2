-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 21, 2016 at 09:18 AM
-- Server version: 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laravel55`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hotel_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `user_id`, `hotel_id`, `created_at`, `updated_at`) VALUES
(1, 'good hotel', '2', '4', NULL, NULL),
(2, 'nice one', '1', '4', NULL, NULL),
(3, 'comment from john', '2', '4', '2016-08-20 06:39:24', '2016-08-20 06:39:24'),
(4, 'comment from john', '2', '4', '2016-08-20 06:42:09', '2016-08-20 06:42:09'),
(5, 'comment from john', '2', '4', '2016-08-20 06:42:46', '2016-08-20 06:42:46'),
(6, 'comment from john', '2', '4', '2016-08-20 06:44:00', '2016-08-20 06:44:00'),
(7, 'new comments', '2', '4', '2016-08-20 06:44:17', '2016-08-20 06:44:17'),
(8, 'hi', '2', '1', '2016-08-20 13:10:34', '2016-08-20 13:10:34'),
(9, 'hi', '2', '1', '2016-08-20 13:10:41', '2016-08-20 13:10:41'),
(10, 'comment from john', '1', '1', '2016-08-20 13:13:37', '2016-08-20 13:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE IF NOT EXISTS `hotels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'hotel1', 'hotel1', 'hotel1', NULL, NULL),
(2, 'hotel2', 'hotel2', 'hotel2', NULL, NULL),
(3, 'nnnnerrre', '23223233', 'nnnnerrre  gfgfgf', '2016-08-20 05:40:04', '2016-08-20 05:40:04'),
(4, 'hotel add', 'hotel add', 'hotel add', '2016-08-20 05:58:18', '2016-08-20 05:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_08_20_072112_create_hotels_table', 2),
('2016_08_20_072134_create_comments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$1pDKfjkNIymPkAyrUWP2CuMVCbdzl4ClMCuCmHQr3RaR1be8v.KZu', 'ULTiIwo9ptsDdC0vfvRXldUboEJdEKZ5GNZSCIu7XV6LGOedj2THKLszKVTG', '2016-08-20 04:20:02', '2016-08-20 13:13:43'),
(2, 'john', 'john@gmail.com', '$2y$10$QmqKLVgBFEv9ojcRkDSIEuSfQFRATrpVCCuYT.E6G7YpIGKti3ifG', 'V7Oa2bCirqzuNTRDEnlW3Cos2pce2CLfYPFZYuGlcO8l9e68wMx9aINmKOy1', NULL, '2016-08-20 13:11:31');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
