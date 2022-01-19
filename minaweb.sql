-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2021 at 09:11 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minaweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `certification`
--
use minaweb;

CREATE TABLE `certification` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `sort` int(11) DEFAULT NULL,
  `user_created` char(36) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `image` char(36) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `certification`
--

INSERT INTO `certification` (`id`, `status`, `sort`, `user_created`, `date_created`, `image`, `title`) VALUES
(1, 'draft', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:35:06', 'd5cd4a78-6080-445b-b624-249de349a94e', 'Bangkit, specializing in Machine Learning'),
(2, 'draft', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:20:13', '79d8e6ad-25fc-42ad-b6e7-1507d9fb4a01', 'Tensorflow Data and Deployment'),
(3, 'draft', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:20:52', '96c01c07-09f3-4015-b76f-d305605b930e', 'Cakap Digital English  Program'),
(4, 'draft', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:21:07', '61310c1c-5457-4a8a-8c39-b7c81be5938e', 'Machine Learning with Python for Beginner'),
(5, 'draft', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:21:24', 'df5aad24-310c-436e-bb39-9bd981648f1d', 'DeepLearning.AI Tensorflow Developer'),
(6, 'draft', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:21:38', 'f305fa9c-1dcc-4b80-8a71-ef14a9a672fc', 'Google IT Automation with Python');

-- --------------------------------------------------------

--
-- Table structure for table `directus_activity`
--

CREATE TABLE `directus_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(45) NOT NULL,
  `user` char(36) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_activity`
--

INSERT INTO `directus_activity` (`id`, `action`, `user`, `timestamp`, `ip`, `user_agent`, `collection`, `item`, `comment`) VALUES
(1, 'authenticate', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:19:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_users', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', NULL),
(2, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:20:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_collections', 'experience', NULL),
(3, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:20:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '1', NULL),
(4, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:20:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '2', NULL),
(5, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:20:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '3', NULL),
(6, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:20:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '4', NULL),
(7, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:20:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '5', NULL),
(8, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:21:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '6', NULL),
(9, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:22:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '7', NULL),
(10, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '8', NULL),
(11, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '1', NULL),
(12, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '2', NULL),
(13, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '3', NULL),
(14, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '4', NULL),
(15, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '5', NULL),
(16, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '7', NULL),
(17, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '6', NULL),
(18, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '8', NULL),
(19, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '1', NULL),
(20, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '7', NULL),
(21, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '2', NULL),
(22, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '3', NULL),
(23, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '4', NULL),
(24, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '5', NULL),
(25, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '6', NULL),
(26, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '8', NULL),
(27, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '1', NULL),
(28, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '7', NULL),
(29, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '6', NULL),
(30, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '2', NULL),
(31, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '3', NULL),
(32, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '4', NULL),
(33, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '5', NULL),
(34, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '8', NULL),
(35, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '1', NULL),
(36, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '7', NULL),
(37, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '6', NULL),
(38, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '8', NULL),
(39, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '2', NULL),
(40, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '3', NULL),
(41, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '4', NULL),
(42, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '5', NULL),
(43, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '7', NULL),
(44, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '6', NULL),
(45, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '8', NULL),
(46, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '1', NULL),
(47, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '2', NULL),
(48, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '3', NULL),
(49, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '4', NULL),
(50, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:24:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '5', NULL),
(51, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:25:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_collections', 'project', NULL),
(52, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:25:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '9', NULL),
(53, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:25:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '10', NULL),
(54, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:25:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '11', NULL),
(55, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:25:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '12', NULL),
(56, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:25:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '13', NULL),
(57, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:25:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '14', NULL),
(58, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:27:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '15', NULL),
(59, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:27:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '16', NULL),
(60, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '14', NULL),
(61, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '9', NULL),
(62, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '10', NULL),
(63, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '11', NULL),
(64, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '12', NULL),
(65, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '13', NULL),
(66, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '15', NULL),
(67, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '16', NULL),
(68, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '14', NULL),
(69, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '12', NULL),
(70, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '9', NULL),
(71, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '10', NULL),
(72, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '11', NULL),
(73, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '13', NULL),
(74, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '15', NULL),
(75, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '16', NULL),
(76, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '14', NULL),
(77, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '9', NULL),
(78, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '10', NULL),
(79, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '11', NULL),
(80, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '12', NULL),
(81, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '13', NULL),
(82, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '15', NULL),
(83, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '16', NULL),
(84, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '14', NULL),
(85, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '15', NULL),
(86, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '9', NULL),
(87, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '10', NULL),
(88, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '11', NULL),
(89, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '12', NULL),
(90, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '13', NULL),
(91, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '16', NULL),
(92, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '14', NULL),
(93, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '15', NULL),
(94, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '16', NULL),
(95, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '9', NULL),
(96, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '10', NULL),
(97, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '11', NULL),
(98, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '12', NULL),
(99, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '13', NULL),
(100, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_collections', 'certification', NULL),
(101, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '17', NULL),
(102, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '18', NULL),
(103, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '19', NULL),
(104, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '20', NULL),
(105, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:28:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '21', NULL),
(106, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:29:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '22', NULL),
(107, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:29:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '22', NULL),
(108, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:29:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '17', NULL),
(109, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:29:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '18', NULL),
(110, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:29:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '19', NULL),
(111, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:29:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '20', NULL),
(112, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:29:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '21', NULL),
(113, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:29:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '23', NULL),
(114, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:30:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '22', NULL),
(115, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:30:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '23', NULL),
(116, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:30:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '17', NULL),
(117, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:30:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '18', NULL),
(118, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:30:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '19', NULL),
(119, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:30:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '20', NULL),
(120, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:30:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '21', NULL),
(121, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:33:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_files', 'd5cd4a78-6080-445b-b624-249de349a94e', NULL),
(122, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:35:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'certification', '1', NULL),
(123, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:35:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '1', NULL),
(124, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:35:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '2', NULL),
(125, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:35:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '3', NULL),
(126, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:37:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_files', '59ef0ace-25ae-4d64-bc06-93c770b14300', NULL),
(127, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:40:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'experience', '1', NULL),
(128, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:40:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_files', '122755cb-0ccd-419a-ae40-91c772282cbe', NULL),
(129, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:41:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'project', '1', NULL),
(130, 'authenticate', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:11:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_users', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', NULL),
(131, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:12:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '17', NULL),
(132, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:13:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '8', NULL),
(133, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:13:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '16', NULL),
(134, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:15:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_files', '95a139ef-1e65-485e-86e4-38971fca2f78', NULL),
(135, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:15:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'project', '2', NULL),
(136, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:16:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'experience', '1', NULL),
(137, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:16:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'project', '1', NULL),
(138, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:16:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'project', '1', NULL),
(139, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:16:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_files', '5cb1c284-5cc8-4056-bbc0-0e73015182f8', NULL),
(140, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:17:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'experience', '2', NULL),
(141, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:17:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_files', '743d157d-e48e-48d5-af9e-f636cb4d9299', NULL),
(142, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:18:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'experience', '3', NULL),
(143, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:18:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_files', '2fd26582-4b88-4267-a79e-1a9e05991af9', NULL),
(144, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:19:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'experience', '4', NULL),
(145, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:19:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_files', '79d8e6ad-25fc-42ad-b6e7-1507d9fb4a01', NULL),
(146, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:20:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'certification', '2', NULL),
(147, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:20:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_files', 'c40a2791-8067-448b-96ea-8d97ee6b5a39', NULL),
(148, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:20:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_files', '96c01c07-09f3-4015-b76f-d305605b930e', NULL),
(149, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:20:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'certification', '3', NULL),
(150, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:21:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_files', '61310c1c-5457-4a8a-8c39-b7c81be5938e', NULL),
(151, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:21:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'certification', '4', NULL),
(152, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:21:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_files', 'df5aad24-310c-436e-bb39-9bd981648f1d', NULL),
(153, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:21:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'certification', '5', NULL),
(154, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:21:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_files', 'f305fa9c-1dcc-4b80-8a71-ef14a9a672fc', NULL),
(155, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:21:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'certification', '6', NULL),
(156, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:22:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_files', 'e26abd11-3c01-4a9f-9b05-21e69a5c9a17', NULL),
(157, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:22:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'project', '3', NULL),
(158, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:23:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_files', '7bd0d539-9e5c-4605-b55a-6e5e276d0845', NULL),
(159, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:23:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_files', 'c688cdb2-e60e-48e8-9e70-c7768dc71fb2', NULL),
(160, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:23:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'project', '4', NULL),
(161, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:24:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_files', '11ddfebd-1629-4e01-8b88-72b963653f0c', NULL),
(162, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:24:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'project', '5', NULL),
(163, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:25:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_files', 'f2c6e4c5-057c-4fa6-8c40-1f700c19b6b7', NULL),
(164, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:25:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'project', '6', NULL),
(165, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:25:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_roles', 'efbb32a6-9946-49c4-b06d-5a8bd9bd0f39', NULL),
(166, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:25:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '4', NULL),
(167, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:25:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '5', NULL),
(168, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:25:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '6', NULL),
(169, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:25:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '7', NULL),
(170, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:25:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '8', NULL),
(171, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:25:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '9', NULL),
(172, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:25:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '10', NULL),
(173, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:25:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '11', NULL),
(174, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:25:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '12', NULL),
(175, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:25:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '13', NULL),
(176, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:25:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '14', NULL),
(177, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:25:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '15', NULL),
(178, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:25:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '16', NULL),
(179, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:25:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '17', NULL),
(180, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:25:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '18', NULL),
(181, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:25:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '19', NULL),
(182, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:26:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '20', NULL),
(183, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:26:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '21', NULL),
(184, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:26:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '22', NULL),
(185, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:26:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '23', NULL),
(186, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:27:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_users', 'e6af17bc-8659-4db5-ad46-8f1bc5a36b62', NULL),
(187, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '4', NULL),
(188, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '5', NULL),
(189, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '6', NULL),
(190, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '7', NULL),
(191, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '8', NULL),
(192, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '9', NULL),
(193, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '10', NULL),
(194, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '11', NULL),
(195, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '12', NULL),
(196, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '13', NULL),
(197, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '14', NULL),
(198, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '15', NULL),
(199, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '16', NULL),
(200, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '17', NULL),
(201, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '18', NULL),
(202, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '19', NULL),
(203, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '20', NULL),
(204, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '21', NULL),
(205, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '22', NULL),
(206, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_permissions', '23', NULL),
(207, 'delete', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:31:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_roles', 'efbb32a6-9946-49c4-b06d-5a8bd9bd0f39', NULL),
(208, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:25:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '24', NULL),
(209, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:30:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '25', NULL),
(210, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:34:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '14', NULL);
INSERT INTO `directus_activity` (`id`, `action`, `user`, `timestamp`, `ip`, `user_agent`, `collection`, `item`, `comment`) VALUES
(211, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:34:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '15', NULL),
(212, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:34:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '16', NULL),
(213, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:34:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '25', NULL),
(214, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:34:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '9', NULL),
(215, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:34:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '10', NULL),
(216, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:34:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '11', NULL),
(217, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:34:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '12', NULL),
(218, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:34:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '13', NULL),
(219, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:37:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_fields', '25', NULL),
(220, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:38:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'project', '2', NULL),
(221, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:39:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_files', '5fdb8b0c-8986-44ca-90db-3457cac8d345', NULL),
(222, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:39:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'project', '2', NULL),
(223, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:40:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_files', '7ed3d516-d429-40af-95df-baec90d54c89', NULL),
(224, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:40:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'project', '3', NULL),
(225, 'create', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:40:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'directus_files', '2ac3134c-6c8b-41a7-8dff-c189afde6e08', NULL),
(226, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:40:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'project', '4', NULL),
(227, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:40:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'project', '5', NULL),
(228, 'update', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:41:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'project', '6', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_collections`
--

CREATE TABLE `directus_collections` (
  `collection` varchar(64) NOT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `display_template` varchar(255) DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `singleton` tinyint(1) NOT NULL DEFAULT 0,
  `translations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`translations`)),
  `archive_field` varchar(64) DEFAULT NULL,
  `archive_app_filter` tinyint(1) NOT NULL DEFAULT 1,
  `archive_value` varchar(255) DEFAULT NULL,
  `unarchive_value` varchar(255) DEFAULT NULL,
  `sort_field` varchar(64) DEFAULT NULL,
  `accountability` varchar(255) DEFAULT 'all',
  `color` varchar(255) DEFAULT NULL,
  `item_duplication_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`item_duplication_fields`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_collections`
--

INSERT INTO `directus_collections` (`collection`, `icon`, `note`, `display_template`, `hidden`, `singleton`, `translations`, `archive_field`, `archive_app_filter`, `archive_value`, `unarchive_value`, `sort_field`, `accountability`, `color`, `item_duplication_fields`) VALUES
('certification', NULL, NULL, NULL, 0, 0, NULL, 'status', 1, 'archived', 'draft', 'sort', 'all', NULL, NULL),
('experience', NULL, NULL, NULL, 0, 0, NULL, 'status', 1, 'archived', 'draft', 'sort', 'all', NULL, NULL),
('project', NULL, NULL, NULL, 0, 0, NULL, 'status', 1, 'archived', 'draft', 'sort', 'all', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_fields`
--

CREATE TABLE `directus_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `collection` varchar(64) NOT NULL,
  `field` varchar(64) NOT NULL,
  `special` varchar(64) DEFAULT NULL,
  `interface` varchar(64) DEFAULT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `display` varchar(64) DEFAULT NULL,
  `display_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`display_options`)),
  `readonly` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `width` varchar(30) DEFAULT 'full',
  `group` int(10) UNSIGNED DEFAULT NULL,
  `translations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`translations`)),
  `note` text DEFAULT NULL,
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `required` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_fields`
--

INSERT INTO `directus_fields` (`id`, `collection`, `field`, `special`, `interface`, `options`, `display`, `display_options`, `readonly`, `hidden`, `sort`, `width`, `group`, `translations`, `note`, `conditions`, `required`) VALUES
(1, 'experience', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, 4, 'full', NULL, NULL, NULL, NULL, 0),
(2, 'experience', 'status', NULL, 'select-dropdown', '{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]}', 'labels', '{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]}', 0, 0, 5, 'full', NULL, NULL, NULL, NULL, 0),
(3, 'experience', 'sort', NULL, 'input', NULL, NULL, NULL, 0, 1, 6, 'full', NULL, NULL, NULL, NULL, 0),
(4, 'experience', 'user_created', 'user-created', 'select-dropdown-m2o', '{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}', 'user', NULL, 1, 1, 7, 'half', NULL, NULL, NULL, NULL, 0),
(5, 'experience', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, 8, 'half', NULL, NULL, NULL, NULL, 0),
(6, 'experience', 'image', NULL, 'file-image', NULL, 'image', NULL, 0, 0, 2, 'full', NULL, NULL, NULL, NULL, 0),
(7, 'experience', 'title', NULL, 'input', '{\"font\":\"serif\"}', 'raw', NULL, 0, 0, 1, 'full', NULL, NULL, NULL, NULL, 0),
(8, 'experience', 'description', NULL, 'input-rich-text-html', NULL, 'formatted-value', NULL, 0, 0, 3, 'full', NULL, NULL, NULL, NULL, 0),
(9, 'project', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, 5, 'full', NULL, NULL, NULL, NULL, 0),
(10, 'project', 'status', NULL, 'select-dropdown', '{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]}', 'labels', '{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]}', 0, 0, 6, 'full', NULL, NULL, NULL, NULL, 0),
(11, 'project', 'sort', NULL, 'input', NULL, NULL, NULL, 0, 1, 7, 'full', NULL, NULL, NULL, NULL, 0),
(12, 'project', 'user_created', 'user-created', 'select-dropdown-m2o', '{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}', 'user', NULL, 1, 1, 8, 'half', NULL, NULL, NULL, NULL, 0),
(13, 'project', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, 9, 'half', NULL, NULL, NULL, NULL, 0),
(14, 'project', 'image', NULL, 'file-image', NULL, 'raw', NULL, 0, 0, 1, 'full', NULL, NULL, NULL, NULL, 0),
(15, 'project', 'title', NULL, 'input', '{\"font\":\"serif\"}', 'raw', NULL, 0, 0, 2, 'full', NULL, NULL, NULL, NULL, 0),
(16, 'project', 'description', NULL, 'input-rich-text-html', NULL, 'formatted-value', NULL, 0, 0, 3, 'full', NULL, NULL, NULL, NULL, 0),
(17, 'certification', 'id', NULL, 'input', NULL, 'formatted-value', NULL, 1, 1, 3, 'full', NULL, NULL, NULL, NULL, 0),
(18, 'certification', 'status', NULL, 'select-dropdown', '{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]}', 'labels', '{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]}', 0, 0, 4, 'full', NULL, NULL, NULL, NULL, 0),
(19, 'certification', 'sort', NULL, 'input', NULL, NULL, NULL, 0, 1, 5, 'full', NULL, NULL, NULL, NULL, 0),
(20, 'certification', 'user_created', 'user-created', 'select-dropdown-m2o', '{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"}', 'user', NULL, 1, 1, 6, 'half', NULL, NULL, NULL, NULL, 0),
(21, 'certification', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, 7, 'half', NULL, NULL, NULL, NULL, 0),
(22, 'certification', 'image', NULL, 'file-image', NULL, 'raw', NULL, 0, 0, 1, 'full', NULL, NULL, NULL, NULL, 0),
(23, 'certification', 'title', NULL, 'input', NULL, 'raw', NULL, 0, 0, 2, 'full', NULL, NULL, NULL, NULL, 0),
(25, 'project', 'category', NULL, 'select-dropdown', '{\"choices\":[{\"text\":\"web(besar)\",\"value\":\"0\"},{\"text\":\"mobile(kecil)\",\"value\":\"1\"}]}', 'labels', NULL, 0, 0, 4, 'full', NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `directus_files`
--

CREATE TABLE `directus_files` (
  `id` char(36) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `filename_disk` varchar(255) DEFAULT NULL,
  `filename_download` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `folder` char(36) DEFAULT NULL,
  `uploaded_by` char(36) DEFAULT NULL,
  `uploaded_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(36) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `charset` varchar(50) DEFAULT NULL,
  `filesize` bigint(20) DEFAULT NULL,
  `width` int(10) UNSIGNED DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL,
  `duration` int(10) UNSIGNED DEFAULT NULL,
  `embed` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_files`
--

INSERT INTO `directus_files` (`id`, `storage`, `filename_disk`, `filename_download`, `title`, `type`, `folder`, `uploaded_by`, `uploaded_on`, `modified_by`, `modified_on`, `charset`, `filesize`, `width`, `height`, `duration`, `embed`, `description`, `location`, `tags`, `metadata`) VALUES
('11ddfebd-1629-4e01-8b88-72b963653f0c', 'local', '11ddfebd-1629-4e01-8b88-72b963653f0c.png', 'Rectangle-1.png', 'Rectangle 1', 'image/png', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:24:17', NULL, '2021-09-12 14:24:18', NULL, 37108, 692, 545, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":692,\"ImageHeight\":545,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('122755cb-0ccd-419a-ae40-91c772282cbe', 'local', '122755cb-0ccd-419a-ae40-91c772282cbe.png', 'presentasi.png', 'Presentasi', 'image/png', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:40:19', NULL, '2021-09-11 16:40:19', NULL, 4310, 89, 90, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":89,\"ImageHeight\":90,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('2ac3134c-6c8b-41a7-8dff-c189afde6e08', 'local', '2ac3134c-6c8b-41a7-8dff-c189afde6e08.png', 'proj3.png', 'Proj3', 'image/png', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:40:30', NULL, '2021-09-13 03:40:30', NULL, 116920, 589, 557, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":589,\"ImageHeight\":557,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('2fd26582-4b88-4267-a79e-1a9e05991af9', 'local', '2fd26582-4b88-4267-a79e-1a9e05991af9.png', 'Group 8448.png', 'Group 8448', 'image/png', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:18:52', NULL, '2021-09-12 14:18:52', NULL, 4095, 140, 179, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":140,\"ImageHeight\":179,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('59ef0ace-25ae-4d64-bc06-93c770b14300', 'local', '59ef0ace-25ae-4d64-bc06-93c770b14300.png', 'myCalorie1.png', 'My Calorie1', 'image/png', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:37:49', NULL, '2021-09-11 16:37:49', NULL, 56468, 390, 370, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":390,\"ImageHeight\":370,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('5cb1c284-5cc8-4056-bbc0-0e73015182f8', 'local', '5cb1c284-5cc8-4056-bbc0-0e73015182f8.png', 'Group 8446.png', 'Group 8446', 'image/png', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:16:51', NULL, '2021-09-12 14:16:51', NULL, 5785, 140, 179, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":140,\"ImageHeight\":179,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('5fdb8b0c-8986-44ca-90db-3457cac8d345', 'local', '5fdb8b0c-8986-44ca-90db-3457cac8d345.png', 'proj2.png', 'Proj2', 'image/png', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:39:51', NULL, '2021-09-13 03:39:52', NULL, 76087, 589, 557, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":589,\"ImageHeight\":557,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('61310c1c-5457-4a8a-8c39-b7c81be5938e', 'local', '61310c1c-5457-4a8a-8c39-b7c81be5938e.png', 'image 65.png', 'Image 65', 'image/png', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:21:00', NULL, '2021-09-12 14:21:00', NULL, 7659, 170, 84, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":170,\"ImageHeight\":84,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('743d157d-e48e-48d5-af9e-f636cb4d9299', 'local', '743d157d-e48e-48d5-af9e-f636cb4d9299.png', 'Group 8447.png', 'Group 8447', 'image/png', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:17:25', NULL, '2021-09-12 14:17:25', NULL, 3710, 140, 179, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":140,\"ImageHeight\":179,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('79d8e6ad-25fc-42ad-b6e7-1507d9fb4a01', 'local', '79d8e6ad-25fc-42ad-b6e7-1507d9fb4a01.png', 'image 67.png', 'Image 67', 'image/png', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:19:59', NULL, '2021-09-12 14:19:59', NULL, 5350, 246, 34, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":246,\"ImageHeight\":34,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('7bd0d539-9e5c-4605-b55a-6e5e276d0845', 'local', '7bd0d539-9e5c-4605-b55a-6e5e276d0845.png', 'Plesiran1.png', 'Plesiran1', 'image/png', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:23:17', NULL, '2021-09-12 14:23:17', NULL, 61848, 220, 393, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":220,\"ImageHeight\":393,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('7ed3d516-d429-40af-95df-baec90d54c89', 'local', '7ed3d516-d429-40af-95df-baec90d54c89.png', 'proj1.png', 'Proj1', 'image/png', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-13 03:40:07', NULL, '2021-09-13 03:40:07', NULL, 112561, 589, 557, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":589,\"ImageHeight\":557,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('95a139ef-1e65-485e-86e4-38971fca2f78', 'local', '95a139ef-1e65-485e-86e4-38971fca2f78.png', 'Ri-Cycle1.png', 'Ri Cycle1', 'image/png', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:15:34', NULL, '2021-09-12 14:15:34', NULL, 26953, 420, 333, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":420,\"ImageHeight\":333,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('96c01c07-09f3-4015-b76f-d305605b930e', 'local', '96c01c07-09f3-4015-b76f-d305605b930e.png', 'image 66.png', 'Image 66', 'image/png', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:20:50', NULL, '2021-09-12 14:20:50', NULL, 7338, 222, 55, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":222,\"ImageHeight\":55,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('c40a2791-8067-448b-96ea-8d97ee6b5a39', 'local', 'c40a2791-8067-448b-96ea-8d97ee6b5a39.png', 'image 66.png', 'Image 66', 'image/png', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:20:23', NULL, '2021-09-12 14:20:23', NULL, 7338, 222, 55, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":222,\"ImageHeight\":55,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('c688cdb2-e60e-48e8-9e70-c7768dc71fb2', 'local', 'c688cdb2-e60e-48e8-9e70-c7768dc71fb2.png', 'Plesiran1.png', 'Plesiran1', 'image/png', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:23:45', NULL, '2021-09-12 14:23:45', NULL, 61848, 220, 393, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":220,\"ImageHeight\":393,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('d5cd4a78-6080-445b-b624-249de349a94e', 'local', 'd5cd4a78-6080-445b-b624-249de349a94e.png', 'images__1_-removebg-preview 1.png', 'Images  1  Removebg Preview 1', 'image/png', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-11 16:33:49', NULL, '2021-09-11 16:33:49', NULL, 10477, 268, 148, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":268,\"ImageHeight\":148,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('df5aad24-310c-436e-bb39-9bd981648f1d', 'local', 'df5aad24-310c-436e-bb39-9bd981648f1d.png', 'image 68.png', 'Image 68', 'image/png', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:21:23', NULL, '2021-09-12 14:21:23', NULL, 5350, 246, 34, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":246,\"ImageHeight\":34,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('e26abd11-3c01-4a9f-9b05-21e69a5c9a17', 'local', 'e26abd11-3c01-4a9f-9b05-21e69a5c9a17.png', 'myCalorie1.png', 'My Calorie1', 'image/png', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:22:17', NULL, '2021-09-12 14:22:17', NULL, 56468, 390, 370, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":390,\"ImageHeight\":370,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('f2c6e4c5-057c-4fa6-8c40-1f700c19b6b7', 'local', 'f2c6e4c5-057c-4fa6-8c40-1f700c19b6b7.png', 'Rectangle.png', 'Rectangle', 'image/png', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:25:06', NULL, '2021-09-12 14:25:06', NULL, 18840, 546, 603, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":546,\"ImageHeight\":603,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}'),
('f305fa9c-1dcc-4b80-8a71-ef14a9a672fc', 'local', 'f305fa9c-1dcc-4b80-8a71-ef14a9a672fc.png', 'image 68.png', 'Image 68', 'image/png', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:21:31', NULL, '2021-09-12 14:21:32', NULL, 5350, 246, 34, NULL, NULL, NULL, NULL, NULL, '{\"ihdr\":{\"ImageWidth\":246,\"ImageHeight\":34,\"BitDepth\":8,\"ColorType\":\"RGB with Alpha\",\"Compression\":\"Deflate/Inflate\",\"Filter\":\"Adaptive\",\"Interlace\":\"Noninterlaced\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `directus_folders`
--

CREATE TABLE `directus_folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `directus_migrations`
--

CREATE TABLE `directus_migrations` (
  `version` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_migrations`
--

INSERT INTO `directus_migrations` (`version`, `name`, `timestamp`) VALUES
('20201028A', 'Remove Collection Foreign Keys', '2021-09-11 16:15:43'),
('20201029A', 'Remove System Relations', '2021-09-11 16:15:44'),
('20201029B', 'Remove System Collections', '2021-09-11 16:15:44'),
('20201029C', 'Remove System Fields', '2021-09-11 16:15:44'),
('20201105A', 'Add Cascade System Relations', '2021-09-11 16:16:03'),
('20201105B', 'Change Webhook URL Type', '2021-09-11 16:16:04'),
('20210225A', 'Add Relations Sort Field', '2021-09-11 16:16:04'),
('20210304A', 'Remove Locked Fields', '2021-09-11 16:16:04'),
('20210312A', 'Webhooks Collections Text', '2021-09-11 16:16:05'),
('20210331A', 'Add Refresh Interval', '2021-09-11 16:16:05'),
('20210415A', 'Make Filesize Nullable', '2021-09-11 16:16:06'),
('20210416A', 'Add Collections Accountability', '2021-09-11 16:16:06'),
('20210422A', 'Remove Files Interface', '2021-09-11 16:16:06'),
('20210506A', 'Rename Interfaces', '2021-09-11 16:16:07'),
('20210510A', 'Restructure Relations', '2021-09-11 16:16:09'),
('20210518A', 'Add Foreign Key Constraints', '2021-09-11 16:16:14'),
('20210519A', 'Add System Fk Triggers', '2021-09-11 16:16:24'),
('20210521A', 'Add Collections Icon Color', '2021-09-11 16:16:25'),
('20210608A', 'Add Deep Clone Config', '2021-09-11 16:16:25'),
('20210626A', 'Change Filesize Bigint', '2021-09-11 16:16:27'),
('20210716A', 'Add Conditions to Fields', '2021-09-11 16:16:27'),
('20210721A', 'Add Default Folder', '2021-09-11 16:16:29'),
('20210802A', 'Replace Groups', '2021-09-11 16:16:29'),
('20210803A', 'Add Required to Fields', '2021-09-11 16:16:29'),
('20210805A', 'Update Groups', '2021-09-11 16:16:30'),
('20210805B', 'Change Image Metadata Structure', '2021-09-11 16:16:30'),
('20210811A', 'Add Geometry Config', '2021-09-11 16:16:30'),
('20210831A', 'Remove Limit Column', '2021-09-11 16:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `directus_permissions`
--

CREATE TABLE `directus_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` char(36) DEFAULT NULL,
  `collection` varchar(64) NOT NULL,
  `action` varchar(10) NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`)),
  `validation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`validation`)),
  `presets` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`presets`)),
  `fields` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_permissions`
--

INSERT INTO `directus_permissions` (`id`, `role`, `collection`, `action`, `permissions`, `validation`, `presets`, `fields`) VALUES
(1, NULL, 'certification', 'read', '{}', '{}', NULL, '*'),
(2, NULL, 'experience', 'read', '{}', '{}', NULL, '*'),
(3, NULL, 'project', 'read', '{}', '{}', NULL, '*');

-- --------------------------------------------------------

--
-- Table structure for table `directus_presets`
--

CREATE TABLE `directus_presets` (
  `id` int(10) UNSIGNED NOT NULL,
  `bookmark` varchar(255) DEFAULT NULL,
  `user` char(36) DEFAULT NULL,
  `role` char(36) DEFAULT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `search` varchar(100) DEFAULT NULL,
  `filters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`filters`)),
  `layout` varchar(100) DEFAULT 'tabular',
  `layout_query` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`layout_query`)),
  `layout_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`layout_options`)),
  `refresh_interval` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_presets`
--

INSERT INTO `directus_presets` (`id`, `bookmark`, `user`, `role`, `collection`, `search`, `filters`, `layout`, `layout_query`, `layout_options`, `refresh_interval`) VALUES
(1, NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', NULL, 'certification', NULL, '[{\"key\":\"hide-archived\",\"field\":\"status\",\"operator\":\"neq\",\"value\":\"archived\",\"locked\":true}]', 'cards', NULL, '{\"calendar\":{\"viewInfo\":{\"type\":\"dayGridMonth\",\"startDateStr\":\"2021-09-01T00:00:00+07:00\"}},\"tabular\":{\"spacing\":\"comfortable\"},\"cards\":{\"title\":\"{{title}}\"}}', NULL),
(2, NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', NULL, 'experience', NULL, '[{\"key\":\"hide-archived\",\"field\":\"status\",\"operator\":\"neq\",\"value\":\"archived\",\"locked\":true}]', 'cards', NULL, '{\"cards\":{\"title\":\"{{title}}\",\"subtitle\":\"{{description}}\",\"imageFit\":\"contain\"}}', NULL),
(3, NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', NULL, 'project', NULL, '[{\"key\":\"hide-archived\",\"field\":\"status\",\"operator\":\"neq\",\"value\":\"archived\",\"locked\":true}]', 'cards', '{\"cards\":{\"page\":1}}', '{\"cards\":{\"title\":\"{{title}}\",\"subtitle\":\"{{description}}\"}}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_relations`
--

CREATE TABLE `directus_relations` (
  `id` int(10) UNSIGNED NOT NULL,
  `many_collection` varchar(64) NOT NULL,
  `many_field` varchar(64) NOT NULL,
  `one_collection` varchar(64) DEFAULT NULL,
  `one_field` varchar(64) DEFAULT NULL,
  `one_collection_field` varchar(64) DEFAULT NULL,
  `one_allowed_collections` text DEFAULT NULL,
  `junction_field` varchar(64) DEFAULT NULL,
  `sort_field` varchar(64) DEFAULT NULL,
  `one_deselect_action` varchar(255) NOT NULL DEFAULT 'nullify'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_relations`
--

INSERT INTO `directus_relations` (`id`, `many_collection`, `many_field`, `one_collection`, `one_field`, `one_collection_field`, `one_allowed_collections`, `junction_field`, `sort_field`, `one_deselect_action`) VALUES
(1, 'experience', 'user_created', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(2, 'experience', 'image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(3, 'project', 'user_created', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(4, 'project', 'image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(5, 'certification', 'user_created', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(6, 'certification', 'image', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify');

-- --------------------------------------------------------

--
-- Table structure for table `directus_revisions`
--

CREATE TABLE `directus_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `activity` int(10) UNSIGNED NOT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `delta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`delta`)),
  `parent` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_revisions`
--

INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(1, 2, 'directus_collections', 'experience', '{\"sort_field\":\"sort\",\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"experience\"}', '{\"sort_field\":\"sort\",\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"experience\"}', NULL),
(2, 3, 'directus_fields', '1', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"experience\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"experience\"}', NULL),
(3, 4, 'directus_fields', '2', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"experience\"}', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"experience\"}', NULL),
(4, 5, 'directus_fields', '3', '{\"interface\":\"input\",\"hidden\":true,\"field\":\"sort\",\"collection\":\"experience\"}', '{\"interface\":\"input\",\"hidden\":true,\"field\":\"sort\",\"collection\":\"experience\"}', NULL),
(5, 6, 'directus_fields', '4', '{\"special\":\"user-created\",\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"field\":\"user_created\",\"collection\":\"experience\"}', '{\"special\":\"user-created\",\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"field\":\"user_created\",\"collection\":\"experience\"}', NULL),
(6, 7, 'directus_fields', '5', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"experience\"}', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"experience\"}', NULL),
(7, 8, 'directus_fields', '6', '{\"hidden\":false,\"interface\":\"file-image\",\"display\":\"image\",\"readonly\":false,\"conditions\":null,\"collection\":\"experience\",\"field\":\"image\"}', '{\"hidden\":false,\"interface\":\"file-image\",\"display\":\"image\",\"readonly\":false,\"conditions\":null,\"collection\":\"experience\",\"field\":\"image\"}', NULL),
(8, 9, 'directus_fields', '7', '{\"hidden\":false,\"interface\":\"input\",\"options\":{\"font\":\"serif\"},\"display\":\"raw\",\"readonly\":false,\"collection\":\"experience\",\"field\":\"title\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":{\"font\":\"serif\"},\"display\":\"raw\",\"readonly\":false,\"collection\":\"experience\",\"field\":\"title\"}', NULL),
(9, 10, 'directus_fields', '8', '{\"hidden\":false,\"interface\":\"input-rich-text-html\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"experience\",\"field\":\"description\"}', '{\"hidden\":false,\"interface\":\"input-rich-text-html\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"experience\",\"field\":\"description\"}', NULL),
(10, 11, 'directus_fields', '1', '{\"id\":1,\"collection\":\"experience\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(11, 12, 'directus_fields', '2', '{\"id\":2,\"collection\":\"experience\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"status\",\"sort\":2,\"group\":null}', NULL),
(12, 13, 'directus_fields', '3', '{\"id\":3,\"collection\":\"experience\",\"field\":\"sort\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":3,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"sort\",\"sort\":3,\"group\":null}', NULL),
(13, 14, 'directus_fields', '4', '{\"id\":4,\"collection\":\"experience\",\"field\":\"user_created\",\"special\":[\"user-created\"],\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":4,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"user_created\",\"sort\":4,\"group\":null}', NULL),
(14, 15, 'directus_fields', '5', '{\"id\":5,\"collection\":\"experience\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":5,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"date_created\",\"sort\":5,\"group\":null}', NULL),
(15, 16, 'directus_fields', '7', '{\"id\":7,\"collection\":\"experience\",\"field\":\"title\",\"special\":null,\"interface\":\"input\",\"options\":{\"font\":\"serif\"},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":6,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"title\",\"sort\":6,\"group\":null}', NULL),
(16, 17, 'directus_fields', '6', '{\"id\":6,\"collection\":\"experience\",\"field\":\"image\",\"special\":null,\"interface\":\"file-image\",\"options\":null,\"display\":\"image\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":7,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"image\",\"sort\":7,\"group\":null}', NULL),
(17, 18, 'directus_fields', '8', '{\"id\":8,\"collection\":\"experience\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":8,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"description\",\"sort\":8,\"group\":null}', NULL),
(18, 19, 'directus_fields', '1', '{\"id\":1,\"collection\":\"experience\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(19, 20, 'directus_fields', '7', '{\"id\":7,\"collection\":\"experience\",\"field\":\"title\",\"special\":null,\"interface\":\"input\",\"options\":{\"font\":\"serif\"},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"title\",\"sort\":2,\"group\":null}', NULL),
(20, 21, 'directus_fields', '2', '{\"id\":2,\"collection\":\"experience\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":3,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"status\",\"sort\":3,\"group\":null}', NULL),
(21, 22, 'directus_fields', '3', '{\"id\":3,\"collection\":\"experience\",\"field\":\"sort\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":4,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"sort\",\"sort\":4,\"group\":null}', NULL),
(22, 23, 'directus_fields', '4', '{\"id\":4,\"collection\":\"experience\",\"field\":\"user_created\",\"special\":[\"user-created\"],\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":5,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"user_created\",\"sort\":5,\"group\":null}', NULL),
(23, 24, 'directus_fields', '5', '{\"id\":5,\"collection\":\"experience\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":6,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"date_created\",\"sort\":6,\"group\":null}', NULL),
(24, 25, 'directus_fields', '6', '{\"id\":6,\"collection\":\"experience\",\"field\":\"image\",\"special\":null,\"interface\":\"file-image\",\"options\":null,\"display\":\"image\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":7,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"image\",\"sort\":7,\"group\":null}', NULL),
(25, 26, 'directus_fields', '8', '{\"id\":8,\"collection\":\"experience\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":8,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"description\",\"sort\":8,\"group\":null}', NULL),
(26, 27, 'directus_fields', '1', '{\"id\":1,\"collection\":\"experience\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(27, 28, 'directus_fields', '7', '{\"id\":7,\"collection\":\"experience\",\"field\":\"title\",\"special\":null,\"interface\":\"input\",\"options\":{\"font\":\"serif\"},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"title\",\"sort\":2,\"group\":null}', NULL),
(28, 29, 'directus_fields', '6', '{\"id\":6,\"collection\":\"experience\",\"field\":\"image\",\"special\":null,\"interface\":\"file-image\",\"options\":null,\"display\":\"image\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":3,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"image\",\"sort\":3,\"group\":null}', NULL),
(29, 30, 'directus_fields', '2', '{\"id\":2,\"collection\":\"experience\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":4,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"status\",\"sort\":4,\"group\":null}', NULL),
(30, 31, 'directus_fields', '3', '{\"id\":3,\"collection\":\"experience\",\"field\":\"sort\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":5,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"sort\",\"sort\":5,\"group\":null}', NULL),
(31, 32, 'directus_fields', '4', '{\"id\":4,\"collection\":\"experience\",\"field\":\"user_created\",\"special\":[\"user-created\"],\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":6,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"user_created\",\"sort\":6,\"group\":null}', NULL),
(32, 33, 'directus_fields', '5', '{\"id\":5,\"collection\":\"experience\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":7,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"date_created\",\"sort\":7,\"group\":null}', NULL),
(33, 34, 'directus_fields', '8', '{\"id\":8,\"collection\":\"experience\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":8,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"description\",\"sort\":8,\"group\":null}', NULL),
(34, 35, 'directus_fields', '1', '{\"id\":1,\"collection\":\"experience\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(35, 36, 'directus_fields', '7', '{\"id\":7,\"collection\":\"experience\",\"field\":\"title\",\"special\":null,\"interface\":\"input\",\"options\":{\"font\":\"serif\"},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"title\",\"sort\":2,\"group\":null}', NULL),
(36, 37, 'directus_fields', '6', '{\"id\":6,\"collection\":\"experience\",\"field\":\"image\",\"special\":null,\"interface\":\"file-image\",\"options\":null,\"display\":\"image\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":3,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"image\",\"sort\":3,\"group\":null}', NULL),
(37, 38, 'directus_fields', '8', '{\"id\":8,\"collection\":\"experience\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":4,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"description\",\"sort\":4,\"group\":null}', NULL),
(38, 39, 'directus_fields', '2', '{\"id\":2,\"collection\":\"experience\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":5,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"status\",\"sort\":5,\"group\":null}', NULL),
(39, 40, 'directus_fields', '3', '{\"id\":3,\"collection\":\"experience\",\"field\":\"sort\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":6,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"sort\",\"sort\":6,\"group\":null}', NULL),
(40, 41, 'directus_fields', '4', '{\"id\":4,\"collection\":\"experience\",\"field\":\"user_created\",\"special\":[\"user-created\"],\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":7,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"user_created\",\"sort\":7,\"group\":null}', NULL),
(41, 42, 'directus_fields', '5', '{\"id\":5,\"collection\":\"experience\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":8,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"date_created\",\"sort\":8,\"group\":null}', NULL),
(42, 43, 'directus_fields', '7', '{\"id\":7,\"collection\":\"experience\",\"field\":\"title\",\"special\":null,\"interface\":\"input\",\"options\":{\"font\":\"serif\"},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":1,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"title\",\"sort\":1,\"group\":null}', NULL),
(43, 44, 'directus_fields', '6', '{\"id\":6,\"collection\":\"experience\",\"field\":\"image\",\"special\":null,\"interface\":\"file-image\",\"options\":null,\"display\":\"image\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"image\",\"sort\":2,\"group\":null}', NULL),
(44, 45, 'directus_fields', '8', '{\"id\":8,\"collection\":\"experience\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":3,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"description\",\"sort\":3,\"group\":null}', NULL),
(45, 46, 'directus_fields', '1', '{\"id\":1,\"collection\":\"experience\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":4,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"id\",\"sort\":4,\"group\":null}', NULL),
(46, 47, 'directus_fields', '2', '{\"id\":2,\"collection\":\"experience\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":5,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"status\",\"sort\":5,\"group\":null}', NULL),
(47, 48, 'directus_fields', '3', '{\"id\":3,\"collection\":\"experience\",\"field\":\"sort\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":6,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"sort\",\"sort\":6,\"group\":null}', NULL),
(48, 49, 'directus_fields', '4', '{\"id\":4,\"collection\":\"experience\",\"field\":\"user_created\",\"special\":[\"user-created\"],\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":7,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"user_created\",\"sort\":7,\"group\":null}', NULL),
(49, 50, 'directus_fields', '5', '{\"id\":5,\"collection\":\"experience\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":8,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"date_created\",\"sort\":8,\"group\":null}', NULL),
(50, 51, 'directus_collections', 'project', '{\"sort_field\":\"sort\",\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"project\"}', '{\"sort_field\":\"sort\",\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"project\"}', NULL),
(51, 52, 'directus_fields', '9', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"project\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"project\"}', NULL),
(52, 53, 'directus_fields', '10', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"project\"}', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"project\"}', NULL),
(53, 54, 'directus_fields', '11', '{\"interface\":\"input\",\"hidden\":true,\"field\":\"sort\",\"collection\":\"project\"}', '{\"interface\":\"input\",\"hidden\":true,\"field\":\"sort\",\"collection\":\"project\"}', NULL),
(54, 55, 'directus_fields', '12', '{\"special\":\"user-created\",\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"field\":\"user_created\",\"collection\":\"project\"}', '{\"special\":\"user-created\",\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"field\":\"user_created\",\"collection\":\"project\"}', NULL),
(55, 56, 'directus_fields', '13', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"project\"}', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"project\"}', NULL),
(56, 57, 'directus_fields', '14', '{\"hidden\":false,\"interface\":\"file-image\",\"display\":\"raw\",\"readonly\":false,\"collection\":\"project\",\"field\":\"image\"}', '{\"hidden\":false,\"interface\":\"file-image\",\"display\":\"raw\",\"readonly\":false,\"collection\":\"project\",\"field\":\"image\"}', NULL),
(57, 58, 'directus_fields', '15', '{\"hidden\":false,\"interface\":\"input\",\"options\":{\"font\":\"serif\"},\"display\":\"raw\",\"readonly\":false,\"collection\":\"project\",\"field\":\"title\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":{\"font\":\"serif\"},\"display\":\"raw\",\"readonly\":false,\"collection\":\"project\",\"field\":\"title\"}', NULL),
(58, 59, 'directus_fields', '16', '{\"hidden\":false,\"interface\":\"input-rich-text-html\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"project\",\"field\":\"description\"}', '{\"hidden\":false,\"interface\":\"input-rich-text-html\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"project\",\"field\":\"description\"}', NULL),
(59, 60, 'directus_fields', '14', '{\"id\":14,\"collection\":\"project\",\"field\":\"image\",\"special\":null,\"interface\":\"file-image\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":1,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"image\",\"sort\":1,\"group\":null}', NULL),
(60, 61, 'directus_fields', '9', '{\"id\":9,\"collection\":\"project\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":2,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"id\",\"sort\":2,\"group\":null}', NULL),
(61, 62, 'directus_fields', '10', '{\"id\":10,\"collection\":\"project\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":3,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"status\",\"sort\":3,\"group\":null}', NULL),
(62, 63, 'directus_fields', '11', '{\"id\":11,\"collection\":\"project\",\"field\":\"sort\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":4,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"sort\",\"sort\":4,\"group\":null}', NULL),
(63, 64, 'directus_fields', '12', '{\"id\":12,\"collection\":\"project\",\"field\":\"user_created\",\"special\":[\"user-created\"],\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":5,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"user_created\",\"sort\":5,\"group\":null}', NULL),
(64, 65, 'directus_fields', '13', '{\"id\":13,\"collection\":\"project\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":6,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"date_created\",\"sort\":6,\"group\":null}', NULL),
(65, 66, 'directus_fields', '15', '{\"id\":15,\"collection\":\"project\",\"field\":\"title\",\"special\":null,\"interface\":\"input\",\"options\":{\"font\":\"serif\"},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":7,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"title\",\"sort\":7,\"group\":null}', NULL),
(66, 67, 'directus_fields', '16', '{\"id\":16,\"collection\":\"project\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":8,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"description\",\"sort\":8,\"group\":null}', NULL),
(67, 68, 'directus_fields', '14', '{\"id\":14,\"collection\":\"project\",\"field\":\"image\",\"special\":null,\"interface\":\"file-image\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":1,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"image\",\"sort\":1,\"group\":null}', NULL),
(68, 69, 'directus_fields', '12', '{\"id\":12,\"collection\":\"project\",\"field\":\"user_created\",\"special\":[\"user-created\"],\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":2,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"user_created\",\"sort\":2,\"group\":null}', NULL),
(69, 70, 'directus_fields', '9', '{\"id\":9,\"collection\":\"project\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":3,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"id\",\"sort\":3,\"group\":null}', NULL),
(70, 71, 'directus_fields', '10', '{\"id\":10,\"collection\":\"project\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":4,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"status\",\"sort\":4,\"group\":null}', NULL),
(71, 72, 'directus_fields', '11', '{\"id\":11,\"collection\":\"project\",\"field\":\"sort\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":5,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"sort\",\"sort\":5,\"group\":null}', NULL),
(72, 73, 'directus_fields', '13', '{\"id\":13,\"collection\":\"project\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":6,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"date_created\",\"sort\":6,\"group\":null}', NULL),
(73, 74, 'directus_fields', '15', '{\"id\":15,\"collection\":\"project\",\"field\":\"title\",\"special\":null,\"interface\":\"input\",\"options\":{\"font\":\"serif\"},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":7,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"title\",\"sort\":7,\"group\":null}', NULL),
(74, 75, 'directus_fields', '16', '{\"id\":16,\"collection\":\"project\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":8,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"description\",\"sort\":8,\"group\":null}', NULL),
(75, 76, 'directus_fields', '14', '{\"id\":14,\"collection\":\"project\",\"field\":\"image\",\"special\":null,\"interface\":\"file-image\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":1,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"image\",\"sort\":1,\"group\":null}', NULL),
(76, 77, 'directus_fields', '9', '{\"id\":9,\"collection\":\"project\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":2,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"id\",\"sort\":2,\"group\":null}', NULL),
(77, 78, 'directus_fields', '10', '{\"id\":10,\"collection\":\"project\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":3,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"status\",\"sort\":3,\"group\":null}', NULL),
(78, 79, 'directus_fields', '11', '{\"id\":11,\"collection\":\"project\",\"field\":\"sort\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":4,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"sort\",\"sort\":4,\"group\":null}', NULL),
(79, 80, 'directus_fields', '12', '{\"id\":12,\"collection\":\"project\",\"field\":\"user_created\",\"special\":[\"user-created\"],\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":5,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"user_created\",\"sort\":5,\"group\":null}', NULL),
(80, 81, 'directus_fields', '13', '{\"id\":13,\"collection\":\"project\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":6,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"date_created\",\"sort\":6,\"group\":null}', NULL),
(81, 82, 'directus_fields', '15', '{\"id\":15,\"collection\":\"project\",\"field\":\"title\",\"special\":null,\"interface\":\"input\",\"options\":{\"font\":\"serif\"},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":7,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"title\",\"sort\":7,\"group\":null}', NULL),
(82, 83, 'directus_fields', '16', '{\"id\":16,\"collection\":\"project\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":8,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"description\",\"sort\":8,\"group\":null}', NULL),
(83, 84, 'directus_fields', '14', '{\"id\":14,\"collection\":\"project\",\"field\":\"image\",\"special\":null,\"interface\":\"file-image\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":1,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"image\",\"sort\":1,\"group\":null}', NULL),
(84, 85, 'directus_fields', '15', '{\"id\":15,\"collection\":\"project\",\"field\":\"title\",\"special\":null,\"interface\":\"input\",\"options\":{\"font\":\"serif\"},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"title\",\"sort\":2,\"group\":null}', NULL),
(85, 86, 'directus_fields', '9', '{\"id\":9,\"collection\":\"project\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":3,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"id\",\"sort\":3,\"group\":null}', NULL),
(86, 87, 'directus_fields', '10', '{\"id\":10,\"collection\":\"project\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":4,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"status\",\"sort\":4,\"group\":null}', NULL),
(87, 88, 'directus_fields', '11', '{\"id\":11,\"collection\":\"project\",\"field\":\"sort\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":5,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"sort\",\"sort\":5,\"group\":null}', NULL),
(88, 89, 'directus_fields', '12', '{\"id\":12,\"collection\":\"project\",\"field\":\"user_created\",\"special\":[\"user-created\"],\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":6,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"user_created\",\"sort\":6,\"group\":null}', NULL),
(89, 90, 'directus_fields', '13', '{\"id\":13,\"collection\":\"project\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":7,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"date_created\",\"sort\":7,\"group\":null}', NULL),
(90, 91, 'directus_fields', '16', '{\"id\":16,\"collection\":\"project\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":8,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"description\",\"sort\":8,\"group\":null}', NULL),
(91, 92, 'directus_fields', '14', '{\"id\":14,\"collection\":\"project\",\"field\":\"image\",\"special\":null,\"interface\":\"file-image\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":1,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"image\",\"sort\":1,\"group\":null}', NULL),
(92, 93, 'directus_fields', '15', '{\"id\":15,\"collection\":\"project\",\"field\":\"title\",\"special\":null,\"interface\":\"input\",\"options\":{\"font\":\"serif\"},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"title\",\"sort\":2,\"group\":null}', NULL),
(93, 94, 'directus_fields', '16', '{\"id\":16,\"collection\":\"project\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":3,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"description\",\"sort\":3,\"group\":null}', NULL),
(94, 95, 'directus_fields', '9', '{\"id\":9,\"collection\":\"project\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":4,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"id\",\"sort\":4,\"group\":null}', NULL),
(95, 96, 'directus_fields', '10', '{\"id\":10,\"collection\":\"project\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":5,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"status\",\"sort\":5,\"group\":null}', NULL),
(96, 97, 'directus_fields', '11', '{\"id\":11,\"collection\":\"project\",\"field\":\"sort\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":6,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"sort\",\"sort\":6,\"group\":null}', NULL),
(97, 98, 'directus_fields', '12', '{\"id\":12,\"collection\":\"project\",\"field\":\"user_created\",\"special\":[\"user-created\"],\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":7,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"user_created\",\"sort\":7,\"group\":null}', NULL),
(98, 99, 'directus_fields', '13', '{\"id\":13,\"collection\":\"project\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":8,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"date_created\",\"sort\":8,\"group\":null}', NULL),
(99, 100, 'directus_collections', 'certification', '{\"sort_field\":\"sort\",\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"certification\"}', '{\"sort_field\":\"sort\",\"archive_field\":\"status\",\"archive_value\":\"archived\",\"unarchive_value\":\"draft\",\"singleton\":false,\"collection\":\"certification\"}', NULL),
(100, 101, 'directus_fields', '17', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"certification\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"certification\"}', NULL);
INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(101, 102, 'directus_fields', '18', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"certification\"}', '{\"width\":\"full\",\"options\":{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]},\"interface\":\"select-dropdown\",\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"field\":\"status\",\"collection\":\"certification\"}', NULL),
(102, 103, 'directus_fields', '19', '{\"interface\":\"input\",\"hidden\":true,\"field\":\"sort\",\"collection\":\"certification\"}', '{\"interface\":\"input\",\"hidden\":true,\"field\":\"sort\",\"collection\":\"certification\"}', NULL),
(103, 104, 'directus_fields', '20', '{\"special\":\"user-created\",\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"field\":\"user_created\",\"collection\":\"certification\"}', '{\"special\":\"user-created\",\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"field\":\"user_created\",\"collection\":\"certification\"}', NULL),
(104, 105, 'directus_fields', '21', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"certification\"}', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"certification\"}', NULL),
(105, 106, 'directus_fields', '22', '{\"hidden\":false,\"interface\":\"file-image\",\"display\":\"raw\",\"readonly\":false,\"collection\":\"certification\",\"field\":\"image\"}', '{\"hidden\":false,\"interface\":\"file-image\",\"display\":\"raw\",\"readonly\":false,\"collection\":\"certification\",\"field\":\"image\"}', NULL),
(106, 107, 'directus_fields', '22', '{\"id\":22,\"collection\":\"certification\",\"field\":\"image\",\"special\":null,\"interface\":\"file-image\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":1,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"certification\",\"field\":\"image\",\"sort\":1,\"group\":null}', NULL),
(107, 108, 'directus_fields', '17', '{\"id\":17,\"collection\":\"certification\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":2,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"certification\",\"field\":\"id\",\"sort\":2,\"group\":null}', NULL),
(108, 109, 'directus_fields', '18', '{\"id\":18,\"collection\":\"certification\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":3,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"certification\",\"field\":\"status\",\"sort\":3,\"group\":null}', NULL),
(109, 110, 'directus_fields', '19', '{\"id\":19,\"collection\":\"certification\",\"field\":\"sort\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":4,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"certification\",\"field\":\"sort\",\"sort\":4,\"group\":null}', NULL),
(110, 111, 'directus_fields', '20', '{\"id\":20,\"collection\":\"certification\",\"field\":\"user_created\",\"special\":[\"user-created\"],\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":5,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"certification\",\"field\":\"user_created\",\"sort\":5,\"group\":null}', NULL),
(111, 112, 'directus_fields', '21', '{\"id\":21,\"collection\":\"certification\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":6,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"certification\",\"field\":\"date_created\",\"sort\":6,\"group\":null}', NULL),
(112, 113, 'directus_fields', '23', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"collection\":\"certification\",\"field\":\"title\"}', '{\"hidden\":false,\"interface\":\"input\",\"display\":\"raw\",\"readonly\":false,\"collection\":\"certification\",\"field\":\"title\"}', NULL),
(113, 114, 'directus_fields', '22', '{\"id\":22,\"collection\":\"certification\",\"field\":\"image\",\"special\":null,\"interface\":\"file-image\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":1,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"certification\",\"field\":\"image\",\"sort\":1,\"group\":null}', NULL),
(114, 115, 'directus_fields', '23', '{\"id\":23,\"collection\":\"certification\",\"field\":\"title\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"certification\",\"field\":\"title\",\"sort\":2,\"group\":null}', NULL),
(115, 116, 'directus_fields', '17', '{\"id\":17,\"collection\":\"certification\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":3,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"certification\",\"field\":\"id\",\"sort\":3,\"group\":null}', NULL),
(116, 117, 'directus_fields', '18', '{\"id\":18,\"collection\":\"certification\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":4,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"certification\",\"field\":\"status\",\"sort\":4,\"group\":null}', NULL),
(117, 118, 'directus_fields', '19', '{\"id\":19,\"collection\":\"certification\",\"field\":\"sort\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":5,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"certification\",\"field\":\"sort\",\"sort\":5,\"group\":null}', NULL),
(118, 119, 'directus_fields', '20', '{\"id\":20,\"collection\":\"certification\",\"field\":\"user_created\",\"special\":[\"user-created\"],\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":6,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"certification\",\"field\":\"user_created\",\"sort\":6,\"group\":null}', NULL),
(119, 120, 'directus_fields', '21', '{\"id\":21,\"collection\":\"certification\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":7,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"certification\",\"field\":\"date_created\",\"sort\":7,\"group\":null}', NULL),
(120, 121, 'directus_files', 'd5cd4a78-6080-445b-b624-249de349a94e', '{\"title\":\"Images  1  Removebg Preview 1\",\"filename_download\":\"images__1_-removebg-preview 1.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Images  1  Removebg Preview 1\",\"filename_download\":\"images__1_-removebg-preview 1.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(121, 122, 'certification', '1', '{\"image\":\"d5cd4a78-6080-445b-b624-249de349a94e\",\"title\":\"Bangkit, specializing in Machine Learning\"}', '{\"image\":\"d5cd4a78-6080-445b-b624-249de349a94e\",\"title\":\"Bangkit, specializing in Machine Learning\"}', NULL),
(122, 123, 'directus_permissions', '1', '{\"role\":null,\"collection\":\"certification\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"certification\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(123, 124, 'directus_permissions', '2', '{\"role\":null,\"collection\":\"experience\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"experience\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(124, 125, 'directus_permissions', '3', '{\"role\":null,\"collection\":\"project\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"project\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(125, 126, 'directus_files', '59ef0ace-25ae-4d64-bc06-93c770b14300', '{\"title\":\"My Calorie1\",\"filename_download\":\"myCalorie1.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"My Calorie1\",\"filename_download\":\"myCalorie1.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(126, 127, 'experience', '1', '{\"title\":\"My Calorie\",\"image\":\"59ef0ace-25ae-4d64-bc06-93c770b14300\",\"description\":\"<p>My Calorie is an application to calculate the number of calories in food using Machine Learning technology, especially object detection. Users only need to take a photo of the food then the app will show the number of calories. This application is in the prototyping stage.</p>\"}', '{\"title\":\"My Calorie\",\"image\":\"59ef0ace-25ae-4d64-bc06-93c770b14300\",\"description\":\"<p>My Calorie is an application to calculate the number of calories in food using Machine Learning technology, especially object detection. Users only need to take a photo of the food then the app will show the number of calories. This application is in the prototyping stage.</p>\"}', NULL),
(127, 128, 'directus_files', '122755cb-0ccd-419a-ae40-91c772282cbe', '{\"title\":\"Presentasi\",\"filename_download\":\"presentasi.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Presentasi\",\"filename_download\":\"presentasi.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(128, 129, 'project', '1', '{\"image\":\"122755cb-0ccd-419a-ae40-91c772282cbe\",\"title\":\"Assistant Lecturer\",\"description\":\"<div>\\n<div>Selama&nbsp;menjadi&nbsp;asisten&nbsp;dosen&nbsp;Mina&nbsp;bertanggungjawab&nbsp;dalam&nbsp;mendampingi&nbsp;mahasiswa&nbsp;dalam&nbsp;belajar.&nbsp;Mina&nbsp;sudah&nbsp;ditugasi&nbsp;untuk&nbsp;menjadi&nbsp;asisten&nbsp;dosen&nbsp;mata&nbsp;kuliah&nbsp;Intelligent&nbsp;Decision&nbsp;Suport&nbsp;System&nbsp;dan&nbsp;Fundamental&nbsp;of&nbsp;Mathematics.</div>\\n</div>\"}', '{\"image\":\"122755cb-0ccd-419a-ae40-91c772282cbe\",\"title\":\"Assistant Lecturer\",\"description\":\"<div>\\n<div>Selama&nbsp;menjadi&nbsp;asisten&nbsp;dosen&nbsp;Mina&nbsp;bertanggungjawab&nbsp;dalam&nbsp;mendampingi&nbsp;mahasiswa&nbsp;dalam&nbsp;belajar.&nbsp;Mina&nbsp;sudah&nbsp;ditugasi&nbsp;untuk&nbsp;menjadi&nbsp;asisten&nbsp;dosen&nbsp;mata&nbsp;kuliah&nbsp;Intelligent&nbsp;Decision&nbsp;Suport&nbsp;System&nbsp;dan&nbsp;Fundamental&nbsp;of&nbsp;Mathematics.</div>\\n</div>\"}', NULL),
(129, 131, 'directus_fields', '17', '{\"id\":17,\"collection\":\"certification\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"formatted-value\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":3,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"certification\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":\"formatted-value\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":3,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', NULL),
(130, 132, 'directus_fields', '8', '{\"id\":8,\"collection\":\"experience\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":null,\"display\":\"formatted-value\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":3,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"experience\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":null,\"display\":\"formatted-value\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":3,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', NULL),
(131, 133, 'directus_fields', '16', '{\"id\":16,\"collection\":\"project\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":null,\"display\":\"formatted-value\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":3,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":null,\"display\":\"formatted-value\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":3,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', NULL),
(132, 134, 'directus_files', '95a139ef-1e65-485e-86e4-38971fca2f78', '{\"title\":\"Ri Cycle1\",\"filename_download\":\"Ri-Cycle1.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Ri Cycle1\",\"filename_download\":\"Ri-Cycle1.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(133, 135, 'project', '2', '{\"title\":\"Ri-Cycle\",\"description\":\"<p>RI-Cycle is an application to detect the type of waste and then provide recommendations on how to recycle it. Ri-Cycle uses Machine Learning technology, especially image classification. I contributed to making Machine Learning models.</p>\",\"image\":\"95a139ef-1e65-485e-86e4-38971fca2f78\"}', '{\"title\":\"Ri-Cycle\",\"description\":\"<p>RI-Cycle is an application to detect the type of waste and then provide recommendations on how to recycle it. Ri-Cycle uses Machine Learning technology, especially image classification. I contributed to making Machine Learning models.</p>\",\"image\":\"95a139ef-1e65-485e-86e4-38971fca2f78\"}', NULL),
(134, 139, 'directus_files', '5cb1c284-5cc8-4056-bbc0-0e73015182f8', '{\"title\":\"Group 8446\",\"filename_download\":\"Group 8446.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Group 8446\",\"filename_download\":\"Group 8446.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(135, 140, 'experience', '2', '{\"image\":\"5cb1c284-5cc8-4056-bbc0-0e73015182f8\",\"description\":\"<div>\\n<div>Selama&nbsp;menjadi&nbsp;asisten&nbsp;dosen&nbsp;Mina&nbsp;bertanggungjawab&nbsp;dalam&nbsp;mendampingi&nbsp;mahasiswa&nbsp;dalam&nbsp;belajar.&nbsp;Mina&nbsp;sudah&nbsp;ditugasi&nbsp;untuk&nbsp;menjadi&nbsp;asisten&nbsp;dosen&nbsp;mata&nbsp;kuliah&nbsp;Intelligent&nbsp;Decision&nbsp;Suport&nbsp;System&nbsp;dan&nbsp;Fundamental&nbsp;of&nbsp;Mathematics.</div>\\n</div>\",\"title\":\"Assistant Lecturer\"}', '{\"image\":\"5cb1c284-5cc8-4056-bbc0-0e73015182f8\",\"description\":\"<div>\\n<div>Selama&nbsp;menjadi&nbsp;asisten&nbsp;dosen&nbsp;Mina&nbsp;bertanggungjawab&nbsp;dalam&nbsp;mendampingi&nbsp;mahasiswa&nbsp;dalam&nbsp;belajar.&nbsp;Mina&nbsp;sudah&nbsp;ditugasi&nbsp;untuk&nbsp;menjadi&nbsp;asisten&nbsp;dosen&nbsp;mata&nbsp;kuliah&nbsp;Intelligent&nbsp;Decision&nbsp;Suport&nbsp;System&nbsp;dan&nbsp;Fundamental&nbsp;of&nbsp;Mathematics.</div>\\n</div>\",\"title\":\"Assistant Lecturer\"}', NULL),
(136, 141, 'directus_files', '743d157d-e48e-48d5-af9e-f636cb4d9299', '{\"title\":\"Group 8447\",\"filename_download\":\"Group 8447.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Group 8447\",\"filename_download\":\"Group 8447.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(137, 142, 'experience', '3', '{\"image\":\"743d157d-e48e-48d5-af9e-f636cb4d9299\",\"title\":\"Marketing and Communication\",\"description\":\"<p>I was responsible for planning marketing strategy, research to determine market segmentation, and also responsible for direct marketing to prospective students at the campus expo event.</p>\"}', '{\"image\":\"743d157d-e48e-48d5-af9e-f636cb4d9299\",\"title\":\"Marketing and Communication\",\"description\":\"<p>I was responsible for planning marketing strategy, research to determine market segmentation, and also responsible for direct marketing to prospective students at the campus expo event.</p>\"}', NULL),
(138, 143, 'directus_files', '2fd26582-4b88-4267-a79e-1a9e05991af9', '{\"title\":\"Group 8448\",\"filename_download\":\"Group 8448.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Group 8448\",\"filename_download\":\"Group 8448.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(139, 144, 'experience', '4', '{\"image\":\"2fd26582-4b88-4267-a79e-1a9e05991af9\",\"title\":\"Volunteer Teacher\",\"description\":\"<p>I have experience doing volunteer activities as a teacher at Islamic Outreach Abim Kelantan Malaysia. At that time I was in charge of teaching material about Islam.</p>\"}', '{\"image\":\"2fd26582-4b88-4267-a79e-1a9e05991af9\",\"title\":\"Volunteer Teacher\",\"description\":\"<p>I have experience doing volunteer activities as a teacher at Islamic Outreach Abim Kelantan Malaysia. At that time I was in charge of teaching material about Islam.</p>\"}', NULL),
(140, 145, 'directus_files', '79d8e6ad-25fc-42ad-b6e7-1507d9fb4a01', '{\"title\":\"Image 67\",\"filename_download\":\"image 67.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Image 67\",\"filename_download\":\"image 67.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(141, 146, 'certification', '2', '{\"image\":\"79d8e6ad-25fc-42ad-b6e7-1507d9fb4a01\",\"title\":\"Tensorflow Data and Deployment\"}', '{\"image\":\"79d8e6ad-25fc-42ad-b6e7-1507d9fb4a01\",\"title\":\"Tensorflow Data and Deployment\"}', NULL),
(142, 147, 'directus_files', 'c40a2791-8067-448b-96ea-8d97ee6b5a39', '{\"title\":\"Image 66\",\"filename_download\":\"image 66.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Image 66\",\"filename_download\":\"image 66.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(143, 148, 'directus_files', '96c01c07-09f3-4015-b76f-d305605b930e', '{\"title\":\"Image 66\",\"filename_download\":\"image 66.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Image 66\",\"filename_download\":\"image 66.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(144, 149, 'certification', '3', '{\"title\":\"Cakap Digital English  Program\",\"image\":\"96c01c07-09f3-4015-b76f-d305605b930e\"}', '{\"title\":\"Cakap Digital English  Program\",\"image\":\"96c01c07-09f3-4015-b76f-d305605b930e\"}', NULL),
(145, 150, 'directus_files', '61310c1c-5457-4a8a-8c39-b7c81be5938e', '{\"title\":\"Image 65\",\"filename_download\":\"image 65.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Image 65\",\"filename_download\":\"image 65.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(146, 151, 'certification', '4', '{\"image\":\"61310c1c-5457-4a8a-8c39-b7c81be5938e\",\"title\":\"Machine Learning with Python for Beginner\"}', '{\"image\":\"61310c1c-5457-4a8a-8c39-b7c81be5938e\",\"title\":\"Machine Learning with Python for Beginner\"}', NULL),
(147, 152, 'directus_files', 'df5aad24-310c-436e-bb39-9bd981648f1d', '{\"title\":\"Image 68\",\"filename_download\":\"image 68.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Image 68\",\"filename_download\":\"image 68.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(148, 153, 'certification', '5', '{\"title\":\"DeepLearning.AI Tensorflow Developer\",\"image\":\"df5aad24-310c-436e-bb39-9bd981648f1d\"}', '{\"title\":\"DeepLearning.AI Tensorflow Developer\",\"image\":\"df5aad24-310c-436e-bb39-9bd981648f1d\"}', NULL),
(149, 154, 'directus_files', 'f305fa9c-1dcc-4b80-8a71-ef14a9a672fc', '{\"title\":\"Image 68\",\"filename_download\":\"image 68.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Image 68\",\"filename_download\":\"image 68.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(150, 155, 'certification', '6', '{\"image\":\"f305fa9c-1dcc-4b80-8a71-ef14a9a672fc\",\"title\":\"Google IT Automation with Python\"}', '{\"image\":\"f305fa9c-1dcc-4b80-8a71-ef14a9a672fc\",\"title\":\"Google IT Automation with Python\"}', NULL),
(151, 156, 'directus_files', 'e26abd11-3c01-4a9f-9b05-21e69a5c9a17', '{\"title\":\"My Calorie1\",\"filename_download\":\"myCalorie1.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"My Calorie1\",\"filename_download\":\"myCalorie1.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(152, 157, 'project', '3', '{\"image\":\"e26abd11-3c01-4a9f-9b05-21e69a5c9a17\",\"title\":\"MyCalorie\",\"description\":\"<p>My Calorie is an application to calculate the number of calories in food using Machine Learning technology, especially object detection. Users only need to take a photo of the food then the app will show the number of calories. This application is in the prototyping stage.</p>\"}', '{\"image\":\"e26abd11-3c01-4a9f-9b05-21e69a5c9a17\",\"title\":\"MyCalorie\",\"description\":\"<p>My Calorie is an application to calculate the number of calories in food using Machine Learning technology, especially object detection. Users only need to take a photo of the food then the app will show the number of calories. This application is in the prototyping stage.</p>\"}', NULL),
(153, 158, 'directus_files', '7bd0d539-9e5c-4605-b55a-6e5e276d0845', '{\"title\":\"Plesiran1\",\"filename_download\":\"Plesiran1.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Plesiran1\",\"filename_download\":\"Plesiran1.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(154, 159, 'directus_files', 'c688cdb2-e60e-48e8-9e70-c7768dc71fb2', '{\"title\":\"Plesiran1\",\"filename_download\":\"Plesiran1.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Plesiran1\",\"filename_download\":\"Plesiran1.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(155, 160, 'project', '4', '{\"description\":\"<p>PLESIRAN is an application that can be used by tourists in planning tourism activities in Yogyakarta. Users can plan schedules and even costs that will be incurred during the tour. Plesiran provides tourist and culinary recommendations.</p>\",\"title\":\"Plesiran\",\"image\":\"c688cdb2-e60e-48e8-9e70-c7768dc71fb2\"}', '{\"description\":\"<p>PLESIRAN is an application that can be used by tourists in planning tourism activities in Yogyakarta. Users can plan schedules and even costs that will be incurred during the tour. Plesiran provides tourist and culinary recommendations.</p>\",\"title\":\"Plesiran\",\"image\":\"c688cdb2-e60e-48e8-9e70-c7768dc71fb2\"}', NULL),
(156, 161, 'directus_files', '11ddfebd-1629-4e01-8b88-72b963653f0c', '{\"title\":\"Rectangle 1\",\"filename_download\":\"Rectangle-1.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Rectangle 1\",\"filename_download\":\"Rectangle-1.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(157, 162, 'project', '5', '{\"image\":\"11ddfebd-1629-4e01-8b88-72b963653f0c\",\"description\":\"<p>This system uses the Naive algorithm<br />Bayes Classification. The system is a prototype, but the calculation algorithm has been designed.</p>\",\"title\":\"Sistem Pendukung Keputusan Klinis Diagnosis dan Pemrioritasan Penanganan Pasien Penderita Kanker Usus Besar\"}', '{\"image\":\"11ddfebd-1629-4e01-8b88-72b963653f0c\",\"description\":\"<p>This system uses the Naive algorithm<br />Bayes Classification. The system is a prototype, but the calculation algorithm has been designed.</p>\",\"title\":\"Sistem Pendukung Keputusan Klinis Diagnosis dan Pemrioritasan Penanganan Pasien Penderita Kanker Usus Besar\"}', NULL),
(158, 163, 'directus_files', 'f2c6e4c5-057c-4fa6-8c40-1f700c19b6b7', '{\"title\":\"Rectangle\",\"filename_download\":\"Rectangle.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Rectangle\",\"filename_download\":\"Rectangle.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(159, 164, 'project', '6', '{\"title\":\"Sistem Pendukung Keputusan Klinis  Mengukur Tingkat Probabilitas Mendonor Plasma Konvalesen\",\"description\":\"<p>This system uses logic Fuzzy Inference System to measure the probability.</p>\",\"image\":\"f2c6e4c5-057c-4fa6-8c40-1f700c19b6b7\"}', '{\"title\":\"Sistem Pendukung Keputusan Klinis  Mengukur Tingkat Probabilitas Mendonor Plasma Konvalesen\",\"description\":\"<p>This system uses logic Fuzzy Inference System to measure the probability.</p>\",\"image\":\"f2c6e4c5-057c-4fa6-8c40-1f700c19b6b7\"}', NULL),
(160, 165, 'directus_roles', 'efbb32a6-9946-49c4-b06d-5a8bd9bd0f39', '{\"name\":\"Writer\",\"admin_access\":false,\"app_access\":true}', '{\"name\":\"Writer\",\"admin_access\":false,\"app_access\":true}', NULL),
(161, 166, 'directus_permissions', '4', '{\"collection\":\"directus_files\",\"action\":\"create\",\"permissions\":{},\"fields\":\"*\",\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', '{\"collection\":\"directus_files\",\"action\":\"create\",\"permissions\":{},\"fields\":\"*\",\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', NULL),
(162, 167, 'directus_permissions', '5', '{\"collection\":\"directus_files\",\"action\":\"read\",\"permissions\":{},\"fields\":\"*\",\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', '{\"collection\":\"directus_files\",\"action\":\"read\",\"permissions\":{},\"fields\":\"*\",\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', NULL),
(163, 168, 'directus_permissions', '6', '{\"collection\":\"directus_files\",\"action\":\"update\",\"permissions\":{},\"fields\":\"*\",\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', '{\"collection\":\"directus_files\",\"action\":\"update\",\"permissions\":{},\"fields\":\"*\",\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', NULL),
(164, 169, 'directus_permissions', '7', '{\"collection\":\"directus_files\",\"action\":\"delete\",\"permissions\":{},\"fields\":\"*\",\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', '{\"collection\":\"directus_files\",\"action\":\"delete\",\"permissions\":{},\"fields\":\"*\",\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', NULL),
(165, 170, 'directus_permissions', '8', '{\"collection\":\"directus_folders\",\"action\":\"create\",\"permissions\":{},\"fields\":\"*\",\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', '{\"collection\":\"directus_folders\",\"action\":\"create\",\"permissions\":{},\"fields\":\"*\",\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', NULL),
(166, 171, 'directus_permissions', '9', '{\"collection\":\"directus_folders\",\"action\":\"read\",\"permissions\":{},\"fields\":\"*\",\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', '{\"collection\":\"directus_folders\",\"action\":\"read\",\"permissions\":{},\"fields\":\"*\",\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', NULL),
(167, 172, 'directus_permissions', '10', '{\"collection\":\"directus_folders\",\"action\":\"update\",\"permissions\":{},\"fields\":\"*\",\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', '{\"collection\":\"directus_folders\",\"action\":\"update\",\"permissions\":{},\"fields\":\"*\",\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', NULL),
(168, 173, 'directus_permissions', '11', '{\"collection\":\"directus_folders\",\"action\":\"delete\",\"permissions\":{},\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', '{\"collection\":\"directus_folders\",\"action\":\"delete\",\"permissions\":{},\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', NULL),
(169, 174, 'directus_permissions', '12', '{\"collection\":\"directus_users\",\"action\":\"read\",\"permissions\":{},\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', '{\"collection\":\"directus_users\",\"action\":\"read\",\"permissions\":{},\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', NULL),
(170, 175, 'directus_permissions', '13', '{\"collection\":\"directus_users\",\"action\":\"update\",\"permissions\":{\"id\":{\"_eq\":\"$CURRENT_USER\"}},\"fields\":\"first_name,last_name,email,password,location,title,description,avatar,language,theme\",\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', '{\"collection\":\"directus_users\",\"action\":\"update\",\"permissions\":{\"id\":{\"_eq\":\"$CURRENT_USER\"}},\"fields\":\"first_name,last_name,email,password,location,title,description,avatar,language,theme\",\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', NULL),
(171, 176, 'directus_permissions', '14', '{\"collection\":\"directus_roles\",\"action\":\"read\",\"permissions\":{},\"fields\":\"*\",\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', '{\"collection\":\"directus_roles\",\"action\":\"read\",\"permissions\":{},\"fields\":\"*\",\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\"}', NULL),
(172, 177, 'directus_permissions', '15', '{\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\",\"collection\":\"certification\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\",\"collection\":\"certification\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(173, 178, 'directus_permissions', '16', '{\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\",\"collection\":\"certification\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\",\"collection\":\"certification\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(174, 179, 'directus_permissions', '17', '{\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\",\"collection\":\"experience\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\",\"collection\":\"experience\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(175, 180, 'directus_permissions', '18', '{\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\",\"collection\":\"project\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\",\"collection\":\"project\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(176, 181, 'directus_permissions', '19', '{\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\",\"collection\":\"project\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\",\"collection\":\"project\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(177, 182, 'directus_permissions', '20', '{\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\",\"collection\":\"experience\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\",\"collection\":\"experience\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(178, 183, 'directus_permissions', '21', '{\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\",\"collection\":\"experience\",\"action\":\"update\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\",\"collection\":\"experience\",\"action\":\"update\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(179, 184, 'directus_permissions', '22', '{\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\",\"collection\":\"project\",\"action\":\"update\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\",\"collection\":\"project\",\"action\":\"update\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(180, 185, 'directus_permissions', '23', '{\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\",\"collection\":\"certification\",\"action\":\"update\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"efbb32a6-9946-49c4-b06d-5a8bd9bd0f39\",\"collection\":\"certification\",\"action\":\"update\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(181, 186, 'directus_users', 'e6af17bc-8659-4db5-ad46-8f1bc5a36b62', '{\"first_name\":\"Writer1\",\"email\":\"writer1@gmail.com\",\"password\":\"**********\"}', '{\"first_name\":\"Writer1\",\"email\":\"writer1@gmail.com\",\"password\":\"**********\"}', NULL),
(182, 208, 'directus_fields', '24', '{\"hidden\":false,\"interface\":\"group-accordion\",\"options\":{},\"readonly\":false,\"special\":\"alias,no-data,group\",\"collection\":\"project\",\"field\":\"category\"}', '{\"hidden\":false,\"interface\":\"group-accordion\",\"options\":{},\"readonly\":false,\"special\":\"alias,no-data,group\",\"collection\":\"project\",\"field\":\"category\"}', NULL),
(183, 209, 'directus_fields', '25', '{\"hidden\":false,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"web project(besar)\",\"value\":\"0\"},{\"text\":\"mobile project (kecil)\",\"value\":\"1\"}]},\"display\":\"labels\",\"readonly\":false,\"collection\":\"project\",\"field\":\"category\"}', '{\"hidden\":false,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"web project(besar)\",\"value\":\"0\"},{\"text\":\"mobile project (kecil)\",\"value\":\"1\"}]},\"display\":\"labels\",\"readonly\":false,\"collection\":\"project\",\"field\":\"category\"}', NULL),
(184, 210, 'directus_fields', '14', '{\"id\":14,\"collection\":\"project\",\"field\":\"image\",\"special\":null,\"interface\":\"file-image\",\"options\":null,\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":1,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"image\",\"sort\":1,\"group\":null}', NULL),
(185, 211, 'directus_fields', '15', '{\"id\":15,\"collection\":\"project\",\"field\":\"title\",\"special\":null,\"interface\":\"input\",\"options\":{\"font\":\"serif\"},\"display\":\"raw\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"title\",\"sort\":2,\"group\":null}', NULL),
(186, 212, 'directus_fields', '16', '{\"id\":16,\"collection\":\"project\",\"field\":\"description\",\"special\":null,\"interface\":\"input-rich-text-html\",\"options\":null,\"display\":\"formatted-value\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":3,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"description\",\"sort\":3,\"group\":null}', NULL),
(187, 213, 'directus_fields', '25', '{\"id\":25,\"collection\":\"project\",\"field\":\"category\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"web project(besar)\",\"value\":\"0\"},{\"text\":\"mobile project (kecil)\",\"value\":\"1\"}]},\"display\":\"labels\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":4,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"category\",\"sort\":4,\"group\":null}', NULL),
(188, 214, 'directus_fields', '9', '{\"id\":9,\"collection\":\"project\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":5,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"id\",\"sort\":5,\"group\":null}', NULL),
(189, 215, 'directus_fields', '10', '{\"id\":10,\"collection\":\"project\",\"field\":\"status\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Published\",\"value\":\"published\"},{\"text\":\"Draft\",\"value\":\"draft\"},{\"text\":\"Archived\",\"value\":\"archived\"}]},\"display\":\"labels\",\"display_options\":{\"showAsDot\":true,\"choices\":[{\"background\":\"#00C897\",\"value\":\"published\"},{\"background\":\"#D3DAE4\",\"value\":\"draft\"},{\"background\":\"#F7971C\",\"value\":\"archived\"}]},\"readonly\":false,\"hidden\":false,\"sort\":6,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"status\",\"sort\":6,\"group\":null}', NULL),
(190, 216, 'directus_fields', '11', '{\"id\":11,\"collection\":\"project\",\"field\":\"sort\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":7,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"sort\",\"sort\":7,\"group\":null}', NULL),
(191, 217, 'directus_fields', '12', '{\"id\":12,\"collection\":\"project\",\"field\":\"user_created\",\"special\":[\"user-created\"],\"interface\":\"select-dropdown-m2o\",\"options\":{\"template\":\"{{avatar.$thumbnail}} {{first_name}} {{last_name}}\"},\"display\":\"user\",\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":8,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"user_created\",\"sort\":8,\"group\":null}', NULL),
(192, 218, 'directus_fields', '13', '{\"id\":13,\"collection\":\"project\",\"field\":\"date_created\",\"special\":[\"date-created\"],\"interface\":\"datetime\",\"options\":null,\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"readonly\":true,\"hidden\":true,\"sort\":9,\"width\":\"half\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"date_created\",\"sort\":9,\"group\":null}', NULL),
(193, 219, 'directus_fields', '25', '{\"id\":25,\"collection\":\"project\",\"field\":\"category\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"web(besar)\",\"value\":\"0\"},{\"text\":\"mobile(kecil)\",\"value\":\"1\"}]},\"display\":\"labels\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":4,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', '{\"collection\":\"project\",\"field\":\"category\",\"special\":null,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"web(besar)\",\"value\":\"0\"},{\"text\":\"mobile(kecil)\",\"value\":\"1\"}]},\"display\":\"labels\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":4,\"width\":\"full\",\"group\":null,\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false}', NULL),
(194, 220, 'project', '2', '{\"id\":2,\"status\":\"draft\",\"sort\":null,\"user_created\":\"5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6\",\"date_created\":\"2021-09-12T14:15:37.000Z\",\"image\":\"95a139ef-1e65-485e-86e4-38971fca2f78\",\"title\":\"Ri-Cycle\",\"description\":\"<p>RI-Cycle is an application to detect the type of waste and then provide recommendations on how to recycle it. Ri-Cycle uses Machine Learning technology, especially image classification. I contributed to making Machine Learning models.</p>\",\"category\":\"1\"}', '{\"category\":\"1\"}', NULL),
(195, 221, 'directus_files', '5fdb8b0c-8986-44ca-90db-3457cac8d345', '{\"title\":\"Proj2\",\"filename_download\":\"proj2.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Proj2\",\"filename_download\":\"proj2.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(196, 222, 'project', '2', '{\"id\":2,\"status\":\"draft\",\"sort\":null,\"user_created\":\"5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6\",\"date_created\":\"2021-09-12T14:15:37.000Z\",\"image\":\"5fdb8b0c-8986-44ca-90db-3457cac8d345\",\"title\":\"Ri-Cycle\",\"description\":\"<p>RI-Cycle is an application to detect the type of waste and then provide recommendations on how to recycle it. Ri-Cycle uses Machine Learning technology, especially image classification. I contributed to making Machine Learning models.</p>\",\"category\":\"1\"}', '{\"image\":\"5fdb8b0c-8986-44ca-90db-3457cac8d345\"}', NULL),
(197, 223, 'directus_files', '7ed3d516-d429-40af-95df-baec90d54c89', '{\"title\":\"Proj1\",\"filename_download\":\"proj1.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Proj1\",\"filename_download\":\"proj1.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(198, 224, 'project', '3', '{\"id\":3,\"status\":\"draft\",\"sort\":null,\"user_created\":\"5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6\",\"date_created\":\"2021-09-12T14:22:44.000Z\",\"image\":\"7ed3d516-d429-40af-95df-baec90d54c89\",\"title\":\"MyCalorie\",\"description\":\"<p>My Calorie is an application to calculate the number of calories in food using Machine Learning technology, especially object detection. Users only need to take a photo of the food then the app will show the number of calories. This application is in the prototyping stage.</p>\",\"category\":\"1\"}', '{\"image\":\"7ed3d516-d429-40af-95df-baec90d54c89\",\"category\":\"1\"}', NULL),
(199, 225, 'directus_files', '2ac3134c-6c8b-41a7-8dff-c189afde6e08', '{\"title\":\"Proj3\",\"filename_download\":\"proj3.png\",\"type\":\"image/png\",\"storage\":\"local\"}', '{\"title\":\"Proj3\",\"filename_download\":\"proj3.png\",\"type\":\"image/png\",\"storage\":\"local\"}', NULL),
(200, 226, 'project', '4', '{\"id\":4,\"status\":\"draft\",\"sort\":null,\"user_created\":\"5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6\",\"date_created\":\"2021-09-12T14:23:47.000Z\",\"image\":\"2ac3134c-6c8b-41a7-8dff-c189afde6e08\",\"title\":\"Plesiran\",\"description\":\"<p>PLESIRAN is an application that can be used by tourists in planning tourism activities in Yogyakarta. Users can plan schedules and even costs that will be incurred during the tour. Plesiran provides tourist and culinary recommendations.</p>\",\"category\":\"1\"}', '{\"image\":\"2ac3134c-6c8b-41a7-8dff-c189afde6e08\",\"category\":\"1\"}', NULL),
(201, 227, 'project', '5', '{\"id\":5,\"status\":\"draft\",\"sort\":null,\"user_created\":\"5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6\",\"date_created\":\"2021-09-12T14:24:35.000Z\",\"image\":\"11ddfebd-1629-4e01-8b88-72b963653f0c\",\"title\":\"Sistem Pendukung Keputusan Klinis Diagnosis dan Pemrioritasan Penanganan Pasien Penderita Kanker Usus Besar\",\"description\":\"<p>This system uses the Naive algorithm<br />Bayes Classification. The system is a prototype, but the calculation algorithm has been designed.</p>\",\"category\":\"0\"}', '{\"category\":\"0\"}', NULL),
(202, 228, 'project', '6', '{\"id\":6,\"status\":\"draft\",\"sort\":null,\"user_created\":\"5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6\",\"date_created\":\"2021-09-12T14:25:08.000Z\",\"image\":\"f2c6e4c5-057c-4fa6-8c40-1f700c19b6b7\",\"title\":\"Sistem Pendukung Keputusan Klinis  Mengukur Tingkat Probabilitas Mendonor Plasma Konvalesen\",\"description\":\"<p>This system uses logic Fuzzy Inference System to measure the probability.</p>\",\"category\":\"0\"}', '{\"category\":\"0\"}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_roles`
--

CREATE TABLE `directus_roles` (
  `id` char(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `icon` varchar(30) NOT NULL DEFAULT 'supervised_user_circle',
  `description` text DEFAULT NULL,
  `ip_access` text DEFAULT NULL,
  `enforce_tfa` tinyint(1) NOT NULL DEFAULT 0,
  `module_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`module_list`)),
  `collection_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`collection_list`)),
  `admin_access` tinyint(1) NOT NULL DEFAULT 0,
  `app_access` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_roles`
--

INSERT INTO `directus_roles` (`id`, `name`, `icon`, `description`, `ip_access`, `enforce_tfa`, `module_list`, `collection_list`, `admin_access`, `app_access`) VALUES
('677934cd-c070-4373-824d-e201c0e0ac19', 'Administrator', 'verified', 'Initial administrative role with unrestricted App/API access', NULL, 0, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `directus_sessions`
--

CREATE TABLE `directus_sessions` (
  `token` varchar(64) NOT NULL,
  `user` char(36) NOT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_sessions`
--

INSERT INTO `directus_sessions` (`token`, `user`, `expires`, `ip`, `user_agent`) VALUES
('DAQLfi_qtQoMyjw4FGHcr1ZnIkNXbGluwtkrI0tyH_1wEMLtkr2lyys2_JOQlqIA', '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-20 06:38:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `directus_settings`
--

CREATE TABLE `directus_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_name` varchar(100) NOT NULL DEFAULT 'Directus',
  `project_url` varchar(255) DEFAULT NULL,
  `project_color` varchar(10) DEFAULT '#00C897',
  `project_logo` char(36) DEFAULT NULL,
  `public_foreground` char(36) DEFAULT NULL,
  `public_background` char(36) DEFAULT NULL,
  `public_note` text DEFAULT NULL,
  `auth_login_attempts` int(10) UNSIGNED DEFAULT 25,
  `auth_password_policy` varchar(100) DEFAULT NULL,
  `storage_asset_transform` varchar(7) DEFAULT 'all',
  `storage_asset_presets` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`storage_asset_presets`)),
  `custom_css` text DEFAULT NULL,
  `storage_default_folder` char(36) DEFAULT NULL,
  `basemaps` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`basemaps`)),
  `mapbox_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `directus_users`
--

CREATE TABLE `directus_users` (
  `id` char(36) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tags`)),
  `avatar` char(36) DEFAULT NULL,
  `language` varchar(8) DEFAULT 'en-US',
  `theme` varchar(20) DEFAULT 'auto',
  `tfa_secret` varchar(255) DEFAULT NULL,
  `status` varchar(16) NOT NULL DEFAULT 'active',
  `role` char(36) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `last_access` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_page` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_users`
--

INSERT INTO `directus_users` (`id`, `first_name`, `last_name`, `email`, `password`, `location`, `title`, `description`, `tags`, `avatar`, `language`, `theme`, `tfa_secret`, `status`, `role`, `token`, `last_access`, `last_page`) VALUES
('5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', 'Admin', 'User', 'rey.sarayar@gmail.com', '$argon2i$v=19$m=4096,t=3,p=1$xB7QDqIGRi8lyxV6LcKCsg$zbl4knCuxmQ0T5xpCjcKkIsFnOQ6/NBg/NH5L+mRz4Y', NULL, NULL, NULL, NULL, NULL, 'en-US', 'auto', NULL, 'active', '677934cd-c070-4373-824d-e201c0e0ac19', NULL, '2021-09-13 06:38:26', '/collections/certification'),
('e6af17bc-8659-4db5-ad46-8f1bc5a36b62', 'Writer1', NULL, 'writer1@gmail.com', '$argon2i$v=19$m=4096,t=3,p=1$9ckHyB7BsLI7p6sOCqNAVA$fuwaG9YBBYnzpghcNWwXsYqjRM+GwYEqh3Z0VSV+qBw', NULL, NULL, NULL, NULL, NULL, 'en-US', 'auto', NULL, 'active', NULL, NULL, '2021-09-12 14:27:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_webhooks`
--

CREATE TABLE `directus_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL DEFAULT 'POST',
  `url` text DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active',
  `data` tinyint(1) NOT NULL DEFAULT 1,
  `actions` varchar(100) NOT NULL,
  `collections` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `sort` int(11) DEFAULT NULL,
  `user_created` char(36) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `image` char(36) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `status`, `sort`, `user_created`, `date_created`, `image`, `title`, `description`) VALUES
(2, 'draft', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:17:14', '5cb1c284-5cc8-4056-bbc0-0e73015182f8', 'Assistant Lecturer', '<div>\n<div>Selama&nbsp;menjadi&nbsp;asisten&nbsp;dosen&nbsp;Mina&nbsp;bertanggungjawab&nbsp;dalam&nbsp;mendampingi&nbsp;mahasiswa&nbsp;dalam&nbsp;belajar.&nbsp;Mina&nbsp;sudah&nbsp;ditugasi&nbsp;untuk&nbsp;menjadi&nbsp;asisten&nbsp;dosen&nbsp;mata&nbsp;kuliah&nbsp;Intelligent&nbsp;Decision&nbsp;Suport&nbsp;System&nbsp;dan&nbsp;Fundamental&nbsp;of&nbsp;Mathematics.</div>\n</div>'),
(3, 'draft', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:18:44', '743d157d-e48e-48d5-af9e-f636cb4d9299', 'Marketing and Communication', '<p>I was responsible for planning marketing strategy, research to determine market segmentation, and also responsible for direct marketing to prospective students at the campus expo event.</p>'),
(4, 'draft', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:19:13', '2fd26582-4b88-4267-a79e-1a9e05991af9', 'Volunteer Teacher', '<p>I have experience doing volunteer activities as a teacher at Islamic Outreach Abim Kelantan Malaysia. At that time I was in charge of teaching material about Islam.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `sort` int(11) DEFAULT NULL,
  `user_created` char(36) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `image` char(36) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `status`, `sort`, `user_created`, `date_created`, `image`, `title`, `description`, `category`) VALUES
(2, 'draft', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:15:37', '5fdb8b0c-8986-44ca-90db-3457cac8d345', 'Ri-Cycle', '<p>RI-Cycle is an application to detect the type of waste and then provide recommendations on how to recycle it. Ri-Cycle uses Machine Learning technology, especially image classification. I contributed to making Machine Learning models.</p>', '1'),
(3, 'draft', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:22:44', '7ed3d516-d429-40af-95df-baec90d54c89', 'MyCalorie', '<p>My Calorie is an application to calculate the number of calories in food using Machine Learning technology, especially object detection. Users only need to take a photo of the food then the app will show the number of calories. This application is in the prototyping stage.</p>', '1'),
(4, 'draft', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:23:47', '2ac3134c-6c8b-41a7-8dff-c189afde6e08', 'Plesiran', '<p>PLESIRAN is an application that can be used by tourists in planning tourism activities in Yogyakarta. Users can plan schedules and even costs that will be incurred during the tour. Plesiran provides tourist and culinary recommendations.</p>', '1'),
(5, 'draft', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:24:35', '11ddfebd-1629-4e01-8b88-72b963653f0c', 'Sistem Pendukung Keputusan Klinis Diagnosis dan Pemrioritasan Penanganan Pasien Penderita Kanker Usus Besar', '<p>This system uses the Naive algorithm<br />Bayes Classification. The system is a prototype, but the calculation algorithm has been designed.</p>', '0'),
(6, 'draft', NULL, '5f0b9ed2-c0f8-464a-87d6-7bcbee6fded6', '2021-09-12 14:25:08', 'f2c6e4c5-057c-4fa6-8c40-1f700c19b6b7', 'Sistem Pendukung Keputusan Klinis  Mengukur Tingkat Probabilitas Mendonor Plasma Konvalesen', '<p>This system uses logic Fuzzy Inference System to measure the probability.</p>', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certification`
--
ALTER TABLE `certification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certification_user_created_foreign` (`user_created`),
  ADD KEY `certification_image_foreign` (`image`);

--
-- Indexes for table `directus_activity`
--
ALTER TABLE `directus_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_activity_collection_foreign` (`collection`);

--
-- Indexes for table `directus_collections`
--
ALTER TABLE `directus_collections`
  ADD PRIMARY KEY (`collection`);

--
-- Indexes for table `directus_fields`
--
ALTER TABLE `directus_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_fields_collection_foreign` (`collection`),
  ADD KEY `directus_fields_group_foreign` (`group`);

--
-- Indexes for table `directus_files`
--
ALTER TABLE `directus_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_files_uploaded_by_foreign` (`uploaded_by`),
  ADD KEY `directus_files_modified_by_foreign` (`modified_by`),
  ADD KEY `directus_files_folder_foreign` (`folder`);

--
-- Indexes for table `directus_folders`
--
ALTER TABLE `directus_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_folders_parent_foreign` (`parent`);

--
-- Indexes for table `directus_migrations`
--
ALTER TABLE `directus_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_permissions_collection_foreign` (`collection`),
  ADD KEY `directus_permissions_role_foreign` (`role`);

--
-- Indexes for table `directus_presets`
--
ALTER TABLE `directus_presets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_presets_collection_foreign` (`collection`),
  ADD KEY `directus_presets_user_foreign` (`user`),
  ADD KEY `directus_presets_role_foreign` (`role`);

--
-- Indexes for table `directus_relations`
--
ALTER TABLE `directus_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_relations_many_collection_foreign` (`many_collection`),
  ADD KEY `directus_relations_one_collection_foreign` (`one_collection`);

--
-- Indexes for table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_revisions_collection_foreign` (`collection`),
  ADD KEY `directus_revisions_parent_foreign` (`parent`),
  ADD KEY `directus_revisions_activity_foreign` (`activity`);

--
-- Indexes for table `directus_roles`
--
ALTER TABLE `directus_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directus_sessions`
--
ALTER TABLE `directus_sessions`
  ADD PRIMARY KEY (`token`),
  ADD KEY `directus_sessions_user_foreign` (`user`);

--
-- Indexes for table `directus_settings`
--
ALTER TABLE `directus_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_settings_project_logo_foreign` (`project_logo`),
  ADD KEY `directus_settings_public_foreground_foreign` (`public_foreground`),
  ADD KEY `directus_settings_public_background_foreign` (`public_background`),
  ADD KEY `directus_settings_storage_default_folder_foreign` (`storage_default_folder`);

--
-- Indexes for table `directus_users`
--
ALTER TABLE `directus_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `directus_users_email_unique` (`email`),
  ADD KEY `directus_users_role_foreign` (`role`);

--
-- Indexes for table `directus_webhooks`
--
ALTER TABLE `directus_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `experience_user_created_foreign` (`user_created`),
  ADD KEY `experience_image_foreign` (`image`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_user_created_foreign` (`user_created`),
  ADD KEY `project_image_foreign` (`image`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certification`
--
ALTER TABLE `certification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `directus_activity`
--
ALTER TABLE `directus_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `directus_fields`
--
ALTER TABLE `directus_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `directus_presets`
--
ALTER TABLE `directus_presets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `directus_relations`
--
ALTER TABLE `directus_relations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `directus_settings`
--
ALTER TABLE `directus_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `directus_webhooks`
--
ALTER TABLE `directus_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `certification`
--
ALTER TABLE `certification`
  ADD CONSTRAINT `certification_image_foreign` FOREIGN KEY (`image`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `certification_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`);

--
-- Constraints for table `directus_fields`
--
ALTER TABLE `directus_fields`
  ADD CONSTRAINT `directus_fields_group_foreign` FOREIGN KEY (`group`) REFERENCES `directus_fields` (`id`);

--
-- Constraints for table `directus_files`
--
ALTER TABLE `directus_files`
  ADD CONSTRAINT `directus_files_folder_foreign` FOREIGN KEY (`folder`) REFERENCES `directus_folders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `directus_files_modified_by_foreign` FOREIGN KEY (`modified_by`) REFERENCES `directus_users` (`id`),
  ADD CONSTRAINT `directus_files_uploaded_by_foreign` FOREIGN KEY (`uploaded_by`) REFERENCES `directus_users` (`id`);

--
-- Constraints for table `directus_folders`
--
ALTER TABLE `directus_folders`
  ADD CONSTRAINT `directus_folders_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `directus_folders` (`id`);

--
-- Constraints for table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  ADD CONSTRAINT `directus_permissions_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `directus_presets`
--
ALTER TABLE `directus_presets`
  ADD CONSTRAINT `directus_presets_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_presets_user_foreign` FOREIGN KEY (`user`) REFERENCES `directus_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  ADD CONSTRAINT `directus_revisions_activity_foreign` FOREIGN KEY (`activity`) REFERENCES `directus_activity` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_revisions_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `directus_revisions` (`id`);

--
-- Constraints for table `directus_sessions`
--
ALTER TABLE `directus_sessions`
  ADD CONSTRAINT `directus_sessions_user_foreign` FOREIGN KEY (`user`) REFERENCES `directus_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `directus_settings`
--
ALTER TABLE `directus_settings`
  ADD CONSTRAINT `directus_settings_project_logo_foreign` FOREIGN KEY (`project_logo`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `directus_settings_public_background_foreign` FOREIGN KEY (`public_background`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `directus_settings_public_foreground_foreign` FOREIGN KEY (`public_foreground`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `directus_settings_storage_default_folder_foreign` FOREIGN KEY (`storage_default_folder`) REFERENCES `directus_folders` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `directus_users`
--
ALTER TABLE `directus_users`
  ADD CONSTRAINT `directus_users_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `experience_image_foreign` FOREIGN KEY (`image`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `experience_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_image_foreign` FOREIGN KEY (`image`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `project_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
