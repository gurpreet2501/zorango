-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2017 at 08:13 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barendo_zorango`
--

-- --------------------------------------------------------

--
-- Table structure for table `tank_auth_login_attempts`
--

CREATE TABLE `tank_auth_login_attempts` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `login` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tank_auth_users`
--

CREATE TABLE `tank_auth_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `activated` tinyint(4) NOT NULL,
  `banned` tinyint(4) NOT NULL,
  `ban_reason` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `new_password_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `new_password_requested` datetime NOT NULL,
  `new_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `new_email_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tank_auth_users`
--

INSERT INTO `tank_auth_users` (`id`, `username`, `password`, `email`, `activated`, `banned`, `ban_reason`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`) VALUES
(2, 'nagra', '$P$BZPtqNbMGoVAblPrChm9ki9zUtn/tn1', 'gurpreet2501@gmail.com', 1, 0, '', '', '0000-00-00 00:00:00', '', '', '127.0.0.1', '2017-01-08 05:17:51', '2016-12-09 06:54:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tank_auth_user_autologin`
--

CREATE TABLE `tank_auth_user_autologin` (
  `key_id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_agent` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tank_auth_user_autologin`
--

INSERT INTO `tank_auth_user_autologin` (`key_id`, `user_id`, `user_agent`, `last_ip`, `last_login`) VALUES
('208ed1b399c0b19c32e701d974bd63b1', 1, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '124.253.69.178', '0000-00-00 00:00:00'),
('287da2c31e609cf834ec30d1e3c1c653', 1, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '124.253.203.72', '0000-00-00 00:00:00'),
('44828fab6d07be5136eb0dd86df79d42', 1, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '124.253.82.90', '0000-00-00 00:00:00'),
('45477e68d8f5f4228a1076e5022dad9e', 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '65.36.95.21', '0000-00-00 00:00:00'),
('a2f8f0b07fb4da1fef82383ae02c5804', 1, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '203.134.216.191', '0000-00-00 00:00:00'),
('c59b741b7ff0cc85a6cf7b6e7d170377', 1, 'Mozilla/5.0 (Windows NT 6.1; rv:42.0) Gecko/20100101 Firefox/42.0', '124.253.181.42', '0000-00-00 00:00:00'),
('c81f7ed558f7258fdfd02db90a7c0820', 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:41.0) Gecko/20100101 Firefox/41.0', '103.239.232.10', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tank_auth_user_profiles`
--

CREATE TABLE `tank_auth_user_profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tank_auth_user_profiles`
--

INSERT INTO `tank_auth_user_profiles` (`id`, `user_id`, `country`, `website`) VALUES
(1, 1, '', ''),
(2, 2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_sessions`
--

CREATE TABLE `user_sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tank_auth_users`
--
ALTER TABLE `tank_auth_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tank_auth_user_autologin`
--
ALTER TABLE `tank_auth_user_autologin`
  ADD PRIMARY KEY (`key_id`,`user_id`);

--
-- Indexes for table `tank_auth_user_profiles`
--
ALTER TABLE `tank_auth_user_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_sessions_user_id_unique` (`user_id`),
  ADD UNIQUE KEY `user_sessions_token_unique` (`token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tank_auth_users`
--
ALTER TABLE `tank_auth_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tank_auth_user_profiles`
--
ALTER TABLE `tank_auth_user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_sessions`
--
ALTER TABLE `user_sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
