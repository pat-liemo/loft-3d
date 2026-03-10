-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 10, 2026 at 02:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loft`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `reference_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `action`, `reference_id`, `reference_type`, `created_at`) VALUES
(1, NULL, 'Someone viewed a property', 3, 'property_view', '2025-09-02 10:43:26'),
(2, 3, 'Logged in', NULL, NULL, '2025-09-02 10:56:57'),
(3, 3, 'User #3 viewed a property', 3, 'property_view', '2025-09-02 10:57:49'),
(4, 3, 'Logged in', NULL, NULL, '2025-09-29 07:59:30'),
(5, 2, 'Logged in', NULL, NULL, '2025-09-29 08:59:04'),
(6, 3, 'Logged in', NULL, NULL, '2025-10-19 19:24:32'),
(7, NULL, 'Registered account', NULL, NULL, '2025-10-20 06:04:55'),
(8, NULL, 'Registered account', NULL, NULL, '2025-10-20 06:14:00'),
(9, NULL, 'Registered account', NULL, NULL, '2025-10-20 10:02:13'),
(10, 8, 'Logged in', NULL, NULL, '2025-10-20 10:49:35'),
(11, 8, 'Logged in', NULL, NULL, '2025-10-20 10:50:36'),
(12, 8, 'Logged in', NULL, NULL, '2025-10-20 10:59:29'),
(13, 8, 'Logged in', NULL, NULL, '2025-10-20 13:10:57'),
(14, 8, 'Logged in', NULL, NULL, '2025-10-20 16:05:59'),
(15, 8, 'Logged in', NULL, NULL, '2025-10-21 05:40:55'),
(16, 8, 'Logged in', NULL, NULL, '2025-10-21 14:57:49'),
(17, 8, 'Logged in', NULL, NULL, '2025-10-21 15:08:01'),
(18, 8, 'Logged in', NULL, NULL, '2025-10-23 14:05:19'),
(19, 8, 'Logged in', NULL, NULL, '2025-10-23 14:13:23'),
(20, 10, 'Added property to favorites', 16, 'favorite_property', '2025-11-07 08:36:37'),
(21, NULL, 'Registered account', NULL, NULL, '2025-11-07 09:17:30'),
(22, 3, 'Logged in', NULL, NULL, '2025-11-07 09:18:58'),
(23, 3, 'Added property to favorites', 5, 'favorite_property', '2025-11-07 09:19:48'),
(24, 3, 'Added property to favorites', 16, 'favorite_property', '2025-11-07 09:19:56'),
(25, 11, 'Added property to favorites', 16, 'favorite_property', '2025-11-07 09:24:58'),
(26, 11, 'Removed property from favorites', 16, 'favorite_property', '2025-11-07 09:25:01'),
(27, 11, 'Added property to favorites', 16, 'favorite_property', '2025-11-07 09:25:06'),
(28, 11, 'Removed property from favorites', 16, 'favorite_property', '2025-11-07 09:25:58'),
(29, 11, 'Added property to favorites', 16, 'favorite_property', '2025-11-07 09:26:01'),
(30, 11, 'Removed property from favorites', 16, 'favorite_property', '2025-11-07 09:32:50'),
(31, 11, 'Added property to favorites', 16, 'favorite_property', '2025-11-07 09:32:52'),
(32, 11, 'Removed property from favorites', 16, 'favorite_property', '2025-11-07 09:32:56'),
(33, 11, 'Added property to favorites', 16, 'favorite_property', '2025-11-07 09:32:56'),
(34, 11, 'Removed property from favorites', 16, 'favorite_property', '2025-11-07 09:33:11'),
(35, 11, 'Added property to favorites', 16, 'favorite_property', '2025-11-07 09:33:12'),
(36, 11, 'Removed property from favorites', 16, 'favorite_property', '2025-11-07 09:33:16'),
(37, 11, 'Added property to favorites', 16, 'favorite_property', '2025-11-07 09:33:18'),
(38, 11, 'Removed property from favorites', 16, 'favorite_property', '2025-11-07 09:33:55'),
(39, 11, 'Added property to favorites', 16, 'favorite_property', '2025-11-07 09:34:56'),
(40, 11, 'Removed property from favorites', 16, 'favorite_property', '2025-11-07 09:35:08'),
(41, 11, 'Added property to favorites', 16, 'favorite_property', '2025-11-07 09:40:42'),
(42, 11, 'Removed property from favorites', 16, 'favorite_property', '2025-11-07 09:40:43'),
(43, 11, 'Added property to favorites', 16, 'favorite_property', '2025-11-07 09:41:06'),
(44, 11, 'Removed property from favorites', 16, 'favorite_property', '2025-11-07 09:41:07'),
(45, 11, 'Added property to favorites', 16, 'favorite_property', '2025-11-07 09:43:15'),
(46, 11, 'Removed property from favorites', 16, 'favorite_property', '2025-11-07 09:43:18'),
(47, 11, 'Added property to favorites', 16, 'favorite_property', '2025-11-07 09:43:21'),
(48, 11, 'Removed property from favorites', 16, 'favorite_property', '2025-11-07 09:43:30'),
(49, 11, 'Added property to favorites', 16, 'favorite_property', '2025-11-07 09:43:38'),
(50, 11, 'Removed property from favorites', 16, 'favorite_property', '2025-11-07 09:51:17'),
(51, 11, 'Added property to favorites', 16, 'favorite_property', '2025-11-07 09:51:24'),
(52, 11, 'Removed property from favorites', 16, 'favorite_property', '2025-11-07 09:52:43'),
(53, 11, 'Added property to favorites', 16, 'favorite_property', '2025-11-07 09:52:49'),
(54, 11, 'Added property to favorites', 18, 'favorite_property', '2025-11-07 09:55:25'),
(55, 11, 'Removed property from favorites', 18, 'favorite_property', '2025-11-07 09:55:27'),
(56, 11, 'Added property to favorites', 18, 'favorite_property', '2025-11-07 09:55:39'),
(57, 11, 'Removed property from favorites', 18, 'favorite_property', '2025-11-07 09:55:40'),
(58, 11, 'Added property to favorites', 18, 'favorite_property', '2025-11-07 09:55:42'),
(59, 11, 'Removed property from favorites', 18, 'favorite_property', '2025-11-07 09:55:54'),
(60, 11, 'Added property to favorites', 18, 'favorite_property', '2025-11-07 09:56:34'),
(61, 11, 'Removed property from favorites', 18, 'favorite_property', '2025-11-07 09:56:36'),
(62, 11, 'Added property to favorites', 18, 'favorite_property', '2025-11-07 09:57:45'),
(63, 11, 'Removed property from favorites', 18, 'favorite_property', '2025-11-07 09:57:46'),
(64, 11, 'Added property to favorites', 18, 'favorite_property', '2025-11-07 10:00:57'),
(65, 11, 'Removed property from favorites', 18, 'favorite_property', '2025-11-07 10:00:58'),
(66, 11, 'Added property to favorites', 18, 'favorite_property', '2025-11-07 10:01:00'),
(67, 11, 'Removed property from favorites', 18, 'favorite_property', '2025-11-07 10:01:01'),
(68, 11, 'Added property to favorites', 18, 'favorite_property', '2025-11-07 10:03:03'),
(69, 11, 'Removed property from favorites', 18, 'favorite_property', '2025-11-07 10:03:12'),
(70, 11, 'Added property to favorites', 18, 'favorite_property', '2025-11-07 10:52:41'),
(71, 11, 'Removed property from favorites', 18, 'favorite_property', '2025-11-07 10:52:43'),
(72, 9, 'Logged in', NULL, NULL, '2025-11-13 17:39:17'),
(73, 9, 'Logged in', NULL, NULL, '2025-11-13 20:05:17'),
(74, NULL, 'Registered account', NULL, NULL, '2025-11-18 15:35:21'),
(75, 9, 'Logged in via Firebase', 9, 'user', '2025-11-18 16:05:06'),
(76, 9, 'Logged in via Firebase', 9, 'user', '2025-11-18 16:07:46'),
(77, NULL, 'Registered account', NULL, NULL, '2025-11-18 16:09:20'),
(78, 13, 'Logged in via Firebase', 13, 'user', '2025-11-18 16:09:53'),
(79, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-18 16:10:15'),
(80, 8, 'Logged in', NULL, NULL, '2025-11-18 16:11:48'),
(81, 7, 'Logged in', NULL, NULL, '2025-11-18 16:12:13'),
(82, 7, 'Added property to favorites', 16, 'favorite_property', '2025-11-18 16:13:04'),
(83, 7, 'Removed property from favorites', 16, 'favorite_property', '2025-11-18 16:13:06'),
(84, 7, 'Added property to favorites', 16, 'favorite_property', '2025-11-18 16:13:07'),
(85, 7, 'Removed property from favorites', 16, 'favorite_property', '2025-11-18 16:13:08'),
(86, 13, 'Logged in via Firebase', 13, 'user', '2025-11-18 16:13:57'),
(87, 13, 'Logged in via Firebase', 13, 'user', '2025-11-18 17:04:25'),
(88, 13, 'Added property to favorites', 18, 'favorite_property', '2025-11-18 17:08:00'),
(89, 13, 'Logged in via Firebase', 13, 'user', '2025-11-18 17:12:43'),
(90, 13, 'Logged in via Firebase', 13, 'user', '2025-11-18 17:35:54'),
(91, 13, 'Logged in', NULL, NULL, '2025-11-18 18:01:04'),
(92, 8, 'Logged in', NULL, NULL, '2025-11-18 20:44:53'),
(93, 8, 'Added property to favorites', 19, 'favorite_property', '2025-11-18 20:48:08'),
(94, 8, 'Removed property from favorites', NULL, 'favorite_property', '2025-11-18 20:49:43'),
(95, 8, 'Removed property from favorites', NULL, 'favorite_property', '2025-11-18 20:50:03'),
(96, 8, 'Posted a review', 17, 'property', '2025-11-19 06:14:57'),
(97, 8, 'Added property to favorites', 16, 'favorite_property', '2025-11-19 06:48:04'),
(98, 8, 'Added property to favorites', 16, 'favorite_property', '2025-11-19 06:48:04'),
(99, 8, 'Removed property from favorites', 16, 'favorite_property', '2025-11-19 06:48:09'),
(100, 8, 'Removed property from favorites', 16, 'favorite_property', '2025-11-19 06:48:09'),
(101, 8, 'Added property to favorites', 16, 'favorite_property', '2025-11-19 06:48:19'),
(102, 8, 'Removed property from favorites', 16, 'favorite_property', '2025-11-19 06:48:33'),
(103, 8, 'Added property to favorites', 16, 'favorite_property', '2025-11-19 06:48:33'),
(104, 8, 'Removed property from favorites', 16, 'favorite_property', '2025-11-19 06:48:56'),
(105, 8, 'Removed property from favorites', 19, 'favorite_property', '2025-11-19 06:49:17'),
(106, 8, 'Added property to favorites', 19, 'favorite_property', '2025-11-19 06:49:38'),
(107, 8, 'Removed property from favorites', 19, 'favorite_property', '2025-11-19 06:49:42'),
(108, 8, 'Added property to favorites', 19, 'favorite_property', '2025-11-19 06:49:42'),
(109, 8, 'Added property to favorites', 16, 'favorite_property', '2025-11-19 06:56:16'),
(110, 8, 'Removed property from favorites', 16, 'favorite_property', '2025-11-19 06:56:20'),
(111, 8, 'Removed property from favorites', 16, 'favorite_property', '2025-11-19 06:56:20'),
(112, 8, 'Added property to favorites', 16, 'favorite_property', '2025-11-19 07:02:28'),
(113, 8, 'Removed property from favorites', 16, 'favorite_property', '2025-11-19 07:02:36'),
(114, 8, 'Added property to favorites', 21, 'favorite_property', '2025-11-19 07:04:20'),
(115, 8, 'Removed property from favorites', 21, 'favorite_property', '2025-11-19 07:04:24'),
(116, 8, 'Added property to favorites', 16, 'favorite_property', '2025-11-19 07:08:26'),
(117, 8, 'Added property to favorites', 17, 'favorite_property', '2025-11-19 07:12:16'),
(118, 8, 'Removed property from favorites', 17, 'favorite_property', '2025-11-19 07:12:21'),
(119, 8, 'Added property to favorites', 17, 'favorite_property', '2025-11-19 07:12:40'),
(120, 8, 'Removed property from favorites', 17, 'favorite_property', '2025-11-19 07:12:43'),
(121, 9, 'Logged in', NULL, NULL, '2025-11-19 08:06:33'),
(122, 9, 'Logged in', NULL, NULL, '2025-11-19 11:22:27'),
(123, 9, 'Uploaded 0 images to property', 16, 'property_images', '2025-11-19 11:36:49'),
(124, 9, 'Uploaded 0 images to property', 16, 'property_images', '2025-11-19 11:37:08'),
(125, 9, 'Uploaded 0 images to property', 16, 'property_images', '2025-11-19 11:37:46'),
(126, 9, 'Uploaded 0 images to property', 16, 'property_images', '2025-11-19 11:46:18'),
(127, 9, 'Uploaded 0 images to property', 16, 'property_images', '2025-11-19 11:53:31'),
(128, 9, 'Uploaded 0 images to property', 16, 'property_images', '2025-11-19 12:26:31'),
(129, 9, 'Logged in', NULL, NULL, '2025-11-19 13:44:41'),
(130, 9, 'Uploaded 7 images to property', 16, 'property_images', '2025-11-19 13:47:23'),
(131, 9, 'Logged in', NULL, NULL, '2025-11-19 13:53:32'),
(132, 9, 'Deleted property image', 172, 'property_images', '2025-11-19 13:54:06'),
(133, 9, 'Deleted property image', 174, 'property_images', '2025-11-19 13:58:40'),
(134, 9, 'Deleted property image', 173, 'property_images', '2025-11-19 13:58:50'),
(135, 9, 'Deleted property image', 177, 'property_images', '2025-11-19 13:59:21'),
(136, 9, 'Deleted property image', 171, 'property_images', '2025-11-19 13:59:24'),
(137, 9, 'Deleted property image', 176, 'property_images', '2025-11-19 13:59:29'),
(138, 9, 'Deleted property image', 175, 'property_images', '2025-11-19 13:59:33'),
(139, 9, 'Uploaded 7 images to property', 16, 'property_images', '2025-11-19 14:00:36'),
(140, 9, 'Deleted property image', 179, 'property_images', '2025-11-19 14:13:51'),
(141, 9, 'Deleted property image', 180, 'property_images', '2025-11-19 14:14:01'),
(142, 9, 'Uploaded 3 images to property', 16, 'property_images', '2025-11-19 14:14:24'),
(143, 9, 'Deleted property image', 185, 'property_images', '2025-11-19 14:22:37'),
(144, 9, 'Deleted property image', 181, 'property_images', '2025-11-19 14:22:42'),
(145, 9, 'Uploaded 7 images to property', 16, 'property_images', '2025-11-19 14:23:38'),
(146, 9, 'Deleted property image', 184, 'property_images', '2025-11-19 14:32:21'),
(147, 9, 'Deleted property image', 190, 'property_images', '2025-11-19 14:35:44'),
(148, 9, 'Deleted property image', 182, 'property_images', '2025-11-19 14:35:53'),
(149, 9, 'Deleted property image', 187, 'property_images', '2025-11-19 14:36:08'),
(150, 9, 'Deleted property image', 178, 'property_images', '2025-11-19 14:36:40'),
(151, 9, 'Deleted property image', 186, 'property_images', '2025-11-19 14:36:47'),
(152, 9, 'Deleted property image', 183, 'property_images', '2025-11-19 14:37:18'),
(153, 9, 'Removed property from favorites', 16, 'favorite_property', '2025-11-19 14:39:47'),
(154, 9, 'Added property to favorites', 16, 'favorite_property', '2025-11-19 14:39:52'),
(155, 9, 'Removed property from favorites', 16, 'favorite_property', '2025-11-19 14:39:59'),
(156, 9, 'Added property to favorites', 16, 'favorite_property', '2025-11-19 14:40:00'),
(157, 9, 'Removed property from favorites', 16, 'favorite_property', '2025-11-19 14:40:12'),
(158, 9, 'Added property to favorites', 16, 'favorite_property', '2025-11-19 14:40:16'),
(159, 9, 'Updated property', 16, 'property', '2025-11-19 14:42:54'),
(160, 9, 'Uploaded 7 images to property', 17, 'property_images', '2025-11-19 14:44:27'),
(161, 9, 'Updated property', 17, 'property', '2025-11-19 14:45:18'),
(162, 9, 'Removed property from favorites', 16, 'favorite_property', '2025-11-19 15:02:21'),
(163, 9, 'Added property to favorites', 16, 'favorite_property', '2025-11-19 15:02:23'),
(164, 9, 'Removed property from favorites', 16, 'favorite_property', '2025-11-19 15:02:35'),
(165, 9, 'Added property to favorites', 16, 'favorite_property', '2025-11-19 15:02:41'),
(166, 9, 'Removed property from favorites', 16, 'favorite_property', '2025-11-19 15:02:52'),
(167, 9, 'Added property to favorites', 16, 'favorite_property', '2025-11-19 16:21:46'),
(168, 9, 'Removed property from favorites', 16, 'favorite_property', '2025-11-19 16:21:51'),
(169, 9, 'Uploaded 7 images to property', 18, 'property_images', '2025-11-19 16:23:30'),
(170, 9, 'Uploaded 7 images to property', 19, 'property_images', '2025-11-19 16:25:16'),
(171, 9, 'Uploaded 7 images to property', 19, 'property_images', '2025-11-19 16:38:32'),
(172, 9, 'Uploaded 7 images to property', 20, 'property_images', '2025-11-19 16:40:16'),
(173, 9, 'Uploaded 7 images to property', 21, 'property_images', '2025-11-19 16:42:46'),
(174, 9, 'Uploaded 7 images to property', 22, 'property_images', '2025-11-19 16:45:03'),
(175, 9, 'Uploaded 7 images to property', 23, 'property_images', '2025-11-19 16:46:59'),
(176, 9, 'Uploaded 7 images to property', 25, 'property_images', '2025-11-19 16:49:21'),
(177, 9, 'Added property to favorites', 18, 'favorite_property', '2025-11-19 16:50:30'),
(178, 9, 'Added property to favorites', 23, 'favorite_property', '2025-11-19 17:14:15'),
(179, 9, 'Removed property from favorites', 23, 'favorite_property', '2025-11-19 17:14:23'),
(180, 9, 'Added property to favorites', 23, 'favorite_property', '2025-11-19 17:14:28'),
(181, 9, 'Removed property from favorites', 23, 'favorite_property', '2025-11-19 17:14:32'),
(182, 9, 'Added property to favorites', 23, 'favorite_property', '2025-11-19 17:14:36'),
(183, 9, 'Removed property from favorites', 23, 'favorite_property', '2025-11-19 17:14:41'),
(184, 9, 'Logged in', NULL, NULL, '2025-11-19 17:16:28'),
(185, 9, 'Uploaded 7 images to property', 16, 'property_images', '2025-11-19 17:17:37'),
(186, 9, 'Deleted property image', 264, 'property_images', '2025-11-19 17:18:44'),
(187, 9, 'Deleted property image', 189, 'property_images', '2025-11-19 17:19:01'),
(188, 9, 'Deleted property image', 260, 'property_images', '2025-11-19 17:19:28'),
(189, 9, 'Deleted property image', 259, 'property_images', '2025-11-19 17:19:57'),
(190, 9, 'Deleted property image', 263, 'property_images', '2025-11-19 17:20:03'),
(191, 9, 'Deleted property image', 262, 'property_images', '2025-11-19 17:20:09'),
(192, 9, 'Uploaded 7 images to property', 24, 'property_images', '2025-11-19 17:22:55'),
(193, 13, 'Logged in', NULL, NULL, '2025-11-21 11:01:27'),
(194, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 11:02:02'),
(195, 13, 'Posted a review', 16, 'property', '2025-11-21 11:03:07'),
(196, 13, 'Posted a review', 16, 'property', '2025-11-21 11:03:19'),
(197, 13, 'Posted a review', 16, 'property', '2025-11-21 11:03:25'),
(198, 13, 'Posted a review', 16, 'property', '2025-11-21 11:03:35'),
(199, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 11:05:03'),
(200, 13, 'Added property to favorites', 20, 'favorite_property', '2025-11-21 11:18:51'),
(201, 13, 'Removed property from favorites', 20, 'favorite_property', '2025-11-21 11:18:52'),
(202, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 12:23:23'),
(203, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 12:23:27'),
(204, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 12:23:50'),
(205, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 12:24:37'),
(206, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 12:24:42'),
(207, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 12:24:47'),
(208, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 12:30:23'),
(209, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 12:30:31'),
(210, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 12:30:33'),
(211, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 12:30:36'),
(212, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 12:30:38'),
(213, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 12:32:19'),
(214, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 12:32:22'),
(215, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 12:32:25'),
(216, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 12:32:50'),
(217, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 12:53:15'),
(218, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 12:53:23'),
(219, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 12:53:39'),
(220, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 12:53:45'),
(221, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 13:09:57'),
(222, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 13:10:13'),
(223, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 13:10:17'),
(224, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 13:10:38'),
(225, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 13:10:49'),
(226, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 13:10:51'),
(227, 13, 'Created a booking', 16, 'booking', '2025-11-21 13:36:20'),
(228, 9, 'Logged in', NULL, NULL, '2025-11-21 13:39:32'),
(229, 13, 'Logged in', NULL, NULL, '2025-11-21 13:48:30'),
(230, 13, 'Logged in', NULL, NULL, '2025-11-21 13:54:08'),
(231, 13, 'Cancelled booking', 3, 'booking', '2025-11-21 14:01:00'),
(232, 9, 'Logged in', NULL, NULL, '2025-11-21 14:10:50'),
(233, 9, 'Updated booking status to confirmed', 3, 'booking', '2025-11-21 14:11:04'),
(234, 9, 'Updated booking status to pending', 3, 'booking', '2025-11-21 14:11:16'),
(235, 9, 'Updated booking status to confirmed', 3, 'booking', '2025-11-21 14:11:22'),
(236, 13, 'Logged in', NULL, NULL, '2025-11-21 14:11:53'),
(237, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 17:34:27'),
(238, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 17:34:46'),
(239, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 17:34:53'),
(240, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 17:35:04'),
(241, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 17:44:37'),
(242, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 17:44:56'),
(243, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 17:45:06'),
(244, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 17:56:43'),
(245, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 17:56:54'),
(246, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 17:56:58'),
(247, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 17:57:22'),
(248, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 18:07:57'),
(249, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 18:08:01'),
(250, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 18:08:20'),
(251, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 18:09:55'),
(252, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 18:14:18'),
(253, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 18:14:25'),
(254, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 18:14:30'),
(255, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 18:14:44'),
(256, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 18:15:01'),
(257, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 18:15:06'),
(258, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 18:15:10'),
(259, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 18:15:14'),
(260, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 18:16:58'),
(261, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 18:22:00'),
(262, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 18:22:07'),
(263, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 18:22:12'),
(264, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 18:22:19'),
(265, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 18:22:23'),
(266, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 18:22:28'),
(267, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 18:23:14'),
(268, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 18:26:30'),
(269, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 18:26:35'),
(270, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 18:31:16'),
(271, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 18:31:20'),
(272, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 18:37:00'),
(273, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 18:37:32'),
(274, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 18:37:38'),
(275, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 18:37:43'),
(276, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 18:37:47'),
(277, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 18:38:01'),
(278, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 18:38:21'),
(279, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 18:54:24'),
(280, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 18:54:29'),
(281, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 19:01:42'),
(282, 13, 'Added property to favorites', 20, 'favorite_property', '2025-11-21 19:03:28'),
(283, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 19:07:22'),
(284, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 19:07:26'),
(285, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 19:07:31'),
(286, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 19:07:51'),
(287, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-21 19:08:15'),
(288, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-21 19:08:22'),
(289, 13, 'Logged in', NULL, NULL, '2025-11-25 06:29:35'),
(290, 13, 'Removed property from favorites', 18, 'favorite_property', '2025-11-25 06:54:40'),
(291, 13, 'Added property to favorites', 18, 'favorite_property', '2025-11-25 06:54:45'),
(292, 13, 'Logged in', NULL, NULL, '2025-11-25 11:17:15'),
(293, 9, 'Logged in', NULL, NULL, '2025-11-25 11:21:56'),
(294, 13, 'Logged in', NULL, NULL, '2025-11-25 19:23:08'),
(295, 13, 'Removed property from favorites', 20, 'favorite_property', '2025-11-25 19:23:37'),
(296, 13, 'Logged in', NULL, NULL, '2025-11-26 10:04:54'),
(297, 13, 'Added property to favorites', 17, 'favorite_property', '2025-11-26 10:07:39'),
(298, 13, 'Removed property from favorites', 17, 'favorite_property', '2025-11-26 10:08:42'),
(299, 13, 'Added property to favorites', 17, 'favorite_property', '2025-11-26 10:11:02'),
(300, 13, 'Removed property from favorites', 17, 'favorite_property', '2025-11-26 10:11:03'),
(301, 13, 'Logged in', NULL, NULL, '2025-11-26 18:39:36'),
(302, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-26 19:29:29'),
(303, 13, 'Added property to favorites', 16, 'favorite_property', '2025-11-26 19:35:59'),
(304, 13, 'Removed property from favorites', 16, 'favorite_property', '2025-11-26 19:36:02'),
(305, 9, 'Logged in', NULL, NULL, '2025-11-27 08:05:50'),
(306, 9, 'Removed property from favorites', 17, 'favorite_property', '2025-11-27 10:24:21'),
(307, 9, 'Added property to favorites', 17, 'favorite_property', '2025-11-27 10:24:25'),
(308, NULL, 'Someone viewed a property', 22, 'property_view', '2025-11-27 10:27:51'),
(309, NULL, 'Someone viewed a property', 22, 'property_view', '2025-11-27 10:42:13'),
(310, 9, 'Posted a review', 17, 'property', '2025-11-27 10:58:45'),
(311, 9, 'Logged in', NULL, NULL, '2025-11-27 11:19:50'),
(312, 13, 'Logged in', NULL, NULL, '2025-11-27 11:20:44'),
(313, 13, 'Logged in', NULL, NULL, '2025-11-27 11:21:12'),
(314, 13, 'Logged in', NULL, NULL, '2025-11-27 11:21:45'),
(315, 13, 'Logged in', NULL, NULL, '2025-11-27 11:29:33'),
(316, 13, 'Logged in', NULL, NULL, '2025-11-27 11:33:27'),
(317, 13, 'Logged in', NULL, NULL, '2025-11-27 11:35:29'),
(318, 13, 'Logged in', NULL, NULL, '2025-11-27 11:40:09'),
(319, 13, 'Logged in', NULL, NULL, '2025-11-27 11:43:45'),
(320, 13, 'Logged in', NULL, NULL, '2025-11-27 11:48:01'),
(321, 13, 'Logged in', NULL, NULL, '2025-11-27 12:04:40'),
(322, NULL, 'Someone viewed a property', 16, 'property_view', '2025-12-20 19:05:15'),
(323, NULL, 'Someone viewed a property', 21, 'property_view', '2025-12-20 19:06:19'),
(324, NULL, 'Someone viewed a property', 16, 'property_view', '2025-12-20 19:09:07'),
(325, NULL, 'Someone viewed a property', 16, 'property_view', '2025-12-20 19:11:22'),
(326, NULL, 'Someone viewed a property', 16, 'property_view', '2025-12-20 19:15:26'),
(327, 22, 'viewed a property', 16, 'property_view', '2025-12-20 19:33:37'),
(328, NULL, 'Someone viewed a property', 16, 'property_view', '2025-12-27 08:07:53'),
(329, 8, 'Logged in', NULL, NULL, '2025-12-27 14:17:54'),
(330, 14, 'Registered account via phone', 14, 'user', '2025-12-27 14:28:15'),
(331, 14, 'Logged in via phone OTP', 14, 'user', '2025-12-27 14:29:10'),
(332, 14, 'Logged in via phone OTP', 14, 'user', '2025-12-27 15:31:56'),
(333, 14, 'Logged in via phone OTP', 14, 'user', '2025-12-28 06:55:01'),
(334, 14, 'Logged in via phone OTP', 14, 'user', '2025-12-28 06:59:00'),
(335, 14, 'Logged in via phone OTP', 14, 'user', '2025-12-28 08:45:21'),
(336, 7, 'Logged in via email OTP', 7, 'user', '2025-12-28 08:59:43'),
(337, 9, 'Logged in via email OTP', 9, 'user', '2025-12-28 09:00:44'),
(338, 8, 'Logged in via email OTP', 8, 'user', '2025-12-28 09:01:42'),
(339, 14, 'Logged in via phone OTP', 14, 'user', '2025-12-28 09:13:54'),
(340, 9, 'Logged in via email OTP', 9, 'user', '2025-12-28 09:14:58'),
(341, NULL, 'Someone viewed a property', 16, 'property_view', '2025-12-28 10:08:01'),
(342, NULL, 'Someone viewed a property', 18, 'property_view', '2025-12-28 10:08:21'),
(343, 14, 'Logged in via phone OTP', 14, 'user', '2025-12-28 10:09:22'),
(344, 14, 'Added property to favorites', 20, 'favorite_property', '2025-12-28 10:11:25'),
(345, 14, 'viewed a property', 17, 'property_view', '2025-12-28 10:25:03'),
(346, 14, 'viewed a property', 17, 'property_view', '2025-12-28 10:25:06'),
(347, 14, 'viewed a property', 20, 'property_view', '2025-12-28 10:59:12'),
(348, 14, 'viewed a property', 20, 'property_view', '2025-12-28 11:00:00'),
(349, 14, 'viewed a property', 16, 'property_view', '2025-12-28 11:11:59'),
(350, 14, 'viewed a property', 16, 'property_view', '2025-12-28 11:24:05'),
(351, 14, 'viewed a property', 16, 'property_view', '2025-12-28 11:24:18'),
(352, 14, 'Added property to favorites', 16, 'favorite_property', '2025-12-28 11:24:39'),
(353, NULL, 'Someone viewed a property', 16, 'property_view', '2025-12-28 12:27:55'),
(354, NULL, 'Someone viewed a property', 17, 'property_view', '2025-12-28 12:31:34'),
(355, 14, 'Logged in via phone OTP', 14, 'user', '2025-12-28 12:34:42'),
(356, 7, 'Logged in', NULL, NULL, '2025-12-28 12:58:34'),
(357, NULL, 'Someone viewed a property', 17, 'property_view', '2025-12-28 13:12:58'),
(358, NULL, 'Someone viewed a property', 17, 'property_view', '2025-12-28 13:13:27'),
(359, NULL, 'Someone viewed a property', 17, 'property_view', '2025-12-28 13:31:28'),
(360, NULL, 'Someone viewed a property', 16, 'property_view', '2025-12-28 15:27:39'),
(361, NULL, 'Someone viewed a property', 16, 'property_view', '2025-12-28 15:29:04'),
(362, 8, 'Logged in', NULL, NULL, '2025-12-28 15:30:00'),
(363, 8, 'viewed a property', 22, 'property_view', '2025-12-28 15:30:12'),
(364, NULL, 'Someone viewed a property', 16, 'property_view', '2025-12-28 19:43:04'),
(365, NULL, 'Someone viewed a property', 16, 'property_view', '2025-12-28 19:45:11'),
(366, NULL, 'Someone viewed a property', 16, 'property_view', '2025-12-28 19:57:57'),
(367, NULL, 'Someone viewed a property', 16, 'property_view', '2025-12-29 07:15:58'),
(368, 7, 'Logged in', NULL, NULL, '2025-12-29 07:18:45'),
(369, NULL, 'Someone viewed a property', 16, 'property_view', '2025-12-29 07:39:22'),
(370, NULL, 'Someone viewed a property', 16, 'property_view', '2025-12-29 07:39:45'),
(371, NULL, 'Someone viewed a property', 17, 'property_view', '2025-12-29 07:40:50'),
(372, NULL, 'Someone viewed a property', 16, 'property_view', '2025-12-29 08:40:02'),
(373, NULL, 'Someone viewed a property', 25, 'property_view', '2025-12-29 09:21:23'),
(374, 8, 'Logged in', NULL, NULL, '2025-12-29 09:23:16'),
(375, 8, 'viewed a property', 22, 'property_view', '2025-12-29 09:31:45'),
(376, 8, 'Added property to favorites', 22, 'favorite_property', '2025-12-29 09:33:04'),
(377, 8, 'Removed property from favorites', 22, 'favorite_property', '2025-12-29 09:33:10'),
(378, 8, 'Added property to favorites', 22, 'favorite_property', '2025-12-29 09:33:14'),
(379, 8, 'Removed property from favorites', 22, 'favorite_property', '2025-12-29 09:33:18'),
(380, NULL, 'Someone viewed a property', 21, 'property_view', '2025-12-29 09:55:27'),
(381, NULL, 'Someone viewed a property', 21, 'property_view', '2025-12-29 09:57:32'),
(382, NULL, 'Someone viewed a property', 18, 'property_view', '2025-12-31 07:35:14'),
(383, NULL, 'Someone viewed a property', 17, 'property_view', '2025-12-31 08:05:32'),
(384, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-02 09:30:29'),
(385, NULL, 'Someone viewed a property', 21, 'property_view', '2026-01-02 09:34:30'),
(386, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-08 05:27:57'),
(387, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-10 10:53:36'),
(388, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-10 10:53:46'),
(389, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-10 10:55:37'),
(390, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-10 10:57:29'),
(391, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-10 10:57:38'),
(392, NULL, 'Someone viewed a property', 18, 'property_view', '2026-01-10 11:11:37'),
(393, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-10 11:16:56'),
(394, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-10 11:29:59'),
(395, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-10 11:30:11'),
(396, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-10 11:35:49'),
(397, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-10 11:36:11'),
(398, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-10 11:37:49'),
(399, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-10 11:54:58'),
(400, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-11 10:12:40'),
(401, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-11 10:14:53'),
(402, 14, 'Logged in via phone OTP', 14, 'user', '2026-01-11 10:18:39'),
(403, 14, 'Removed property from favorites', 20, 'favorite_property', '2026-01-11 10:20:16'),
(404, 14, 'Added property to favorites', 20, 'favorite_property', '2026-01-11 10:20:17'),
(405, 14, 'viewed a property', 17, 'property_view', '2026-01-11 10:20:35'),
(406, 14, 'viewed a property', 17, 'property_view', '2026-01-11 10:22:29'),
(407, 14, 'viewed a property', 17, 'property_view', '2026-01-11 10:22:58'),
(408, 14, 'viewed a property', 17, 'property_view', '2026-01-11 10:24:34'),
(409, 14, 'viewed a property', 17, 'property_view', '2026-01-11 10:24:55'),
(410, 14, 'viewed a property', 25, 'property_view', '2026-01-11 10:25:22'),
(411, 14, 'Added property to favorites', 23, 'favorite_property', '2026-01-11 10:25:33'),
(412, 14, 'Removed property from favorites', 23, 'favorite_property', '2026-01-11 10:25:34'),
(413, 14, 'viewed a property', 24, 'property_view', '2026-01-11 10:25:48'),
(414, 14, 'viewed a property', 16, 'property_view', '2026-01-11 10:46:40'),
(415, 14, 'viewed a property', 23, 'property_view', '2026-01-11 10:49:30'),
(416, 14, 'viewed a property', 24, 'property_view', '2026-01-11 12:10:12'),
(417, 14, 'viewed a property', 24, 'property_view', '2026-01-11 12:14:26'),
(418, 14, 'viewed a property', 24, 'property_view', '2026-01-11 12:14:46'),
(419, 14, 'viewed a property', 24, 'property_view', '2026-01-11 12:16:00'),
(420, 14, 'viewed a property', 24, 'property_view', '2026-01-11 12:16:37'),
(421, 14, 'viewed a property', 24, 'property_view', '2026-01-11 12:17:10'),
(422, 14, 'viewed a property', 24, 'property_view', '2026-01-11 12:18:39'),
(423, 14, 'viewed a property', 24, 'property_view', '2026-01-11 12:19:04'),
(424, 14, 'Posted a review', 24, 'property', '2026-01-11 12:20:14'),
(425, 14, 'viewed a property', 24, 'property_view', '2026-01-11 12:20:32'),
(426, 14, 'viewed a property', 24, 'property_view', '2026-01-11 12:26:32'),
(427, 14, 'viewed a property', 24, 'property_view', '2026-01-11 12:26:59'),
(428, 14, 'viewed a property', 24, 'property_view', '2026-01-11 12:27:31'),
(429, 14, 'viewed a property', 24, 'property_view', '2026-01-11 12:28:06'),
(430, 14, 'viewed a property', 24, 'property_view', '2026-01-11 12:28:24'),
(431, 14, 'viewed a property', 24, 'property_view', '2026-01-11 12:43:16'),
(432, 14, 'viewed a property', 24, 'property_view', '2026-01-11 12:43:38'),
(433, 14, 'Added property to favorites', 24, 'favorite_property', '2026-01-11 12:43:43'),
(434, 14, 'Removed property from favorites', 24, 'favorite_property', '2026-01-11 12:44:10'),
(435, 14, 'viewed a property', 24, 'property_view', '2026-01-11 12:53:40'),
(436, 14, 'viewed a property', 24, 'property_view', '2026-01-11 12:53:56'),
(437, 14, 'viewed a property', 24, 'property_view', '2026-01-11 12:54:14'),
(438, 14, 'Added property to favorites', 24, 'favorite_property', '2026-01-11 12:54:19'),
(439, 14, 'viewed a property', 24, 'property_view', '2026-01-11 12:54:47'),
(440, 14, 'Removed property from favorites', 24, 'favorite_property', '2026-01-11 12:54:49'),
(441, 14, 'viewed a property', 20, 'property_view', '2026-01-11 12:55:22'),
(442, 14, 'Removed property from favorites', 20, 'favorite_property', '2026-01-11 12:55:24'),
(443, 14, 'Added property to favorites', 20, 'favorite_property', '2026-01-11 12:55:29'),
(444, 14, 'Removed property from favorites', 20, 'favorite_property', '2026-01-11 12:56:39'),
(445, 14, 'Added property to favorites', 20, 'favorite_property', '2026-01-11 12:56:41'),
(446, 14, 'viewed a property', 20, 'property_view', '2026-01-11 12:56:47'),
(447, 14, 'Removed property from favorites', 20, 'favorite_property', '2026-01-11 12:56:51'),
(448, 14, 'Added property to favorites', 25, 'favorite_property', '2026-01-11 12:57:42'),
(449, 14, 'Removed property from favorites', 25, 'favorite_property', '2026-01-11 12:57:44'),
(450, 14, 'Added property to favorites', 25, 'favorite_property', '2026-01-11 12:57:46'),
(451, 14, 'viewed a property', 25, 'property_view', '2026-01-11 12:57:49'),
(452, 14, 'Removed property from favorites', 25, 'favorite_property', '2026-01-11 12:57:52'),
(453, 14, 'Added property to favorites', 25, 'favorite_property', '2026-01-11 12:57:57'),
(454, 14, 'viewed a property', 16, 'property_view', '2026-01-11 12:58:18'),
(455, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:07:15'),
(456, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:08:32'),
(457, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:15:34'),
(458, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:16:00'),
(459, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:17:28'),
(460, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:19:44'),
(461, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:20:43'),
(462, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:21:16'),
(463, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:21:42'),
(464, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:23:19'),
(465, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:25:01'),
(466, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:27:15'),
(467, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:28:29'),
(468, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:28:56'),
(469, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:29:19'),
(470, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:29:56'),
(471, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:30:40'),
(472, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:31:20'),
(473, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:31:48'),
(474, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:32:20'),
(475, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:33:15'),
(476, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:33:34'),
(477, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:34:17'),
(478, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:35:10'),
(479, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:35:31'),
(480, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:37:21'),
(481, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:39:38'),
(482, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:40:23'),
(483, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:44:43'),
(484, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:45:56'),
(485, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:46:54'),
(486, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:58:47'),
(487, 14, 'viewed a property', 16, 'property_view', '2026-01-11 13:58:57'),
(488, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-11 14:01:19'),
(489, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-11 14:01:27'),
(490, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-11 14:13:00'),
(491, NULL, 'Someone viewed a property', 22, 'property_view', '2026-01-11 14:14:44'),
(492, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-11 14:14:58'),
(493, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-11 14:22:29'),
(494, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-11 14:22:50'),
(495, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-11 14:23:42'),
(496, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-11 14:25:09'),
(497, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-11 14:25:29'),
(498, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-11 14:26:36'),
(499, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-11 14:27:21'),
(500, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-11 14:27:45'),
(501, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-11 14:30:37'),
(502, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-11 14:31:07'),
(503, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-11 14:32:05'),
(504, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-11 14:32:28'),
(505, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-11 14:32:54'),
(506, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-11 14:39:28'),
(507, NULL, 'Someone viewed a property', 18, 'property_view', '2026-01-11 14:40:08'),
(508, NULL, 'Someone viewed a property', 18, 'property_view', '2026-01-11 14:43:26'),
(509, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-11 14:43:48'),
(510, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-11 14:45:40'),
(511, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-11 14:46:18'),
(512, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-11 14:51:51'),
(513, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-11 14:53:18'),
(514, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-11 14:53:31'),
(515, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-11 14:56:37'),
(516, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-11 15:12:45'),
(517, NULL, 'Someone viewed a property', 18, 'property_view', '2026-01-11 15:55:14'),
(518, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-11 15:55:37'),
(519, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-11 20:00:02'),
(520, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-11 20:00:12'),
(521, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-11 20:03:44'),
(522, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-11 20:05:27'),
(523, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-11 20:10:56'),
(524, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-11 20:11:02'),
(525, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-11 20:11:10'),
(526, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-11 20:11:17'),
(527, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-11 20:11:25'),
(528, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-11 20:11:33'),
(529, NULL, 'Someone viewed a property', 18, 'property_view', '2026-01-11 20:11:40'),
(530, NULL, 'Someone viewed a property', 18, 'property_view', '2026-01-11 20:29:02'),
(531, NULL, 'Someone viewed a property', 18, 'property_view', '2026-01-11 20:32:34'),
(532, NULL, 'Someone viewed a property', 18, 'property_view', '2026-01-11 20:33:40'),
(533, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-11 20:34:50'),
(534, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-11 20:35:48'),
(535, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-11 20:37:02'),
(536, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-11 20:43:14'),
(537, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-11 20:43:41'),
(538, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-11 20:45:43'),
(539, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-11 20:47:15'),
(540, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-11 20:48:03'),
(541, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-11 20:50:45'),
(542, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-11 20:53:12'),
(543, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-11 20:53:36'),
(544, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-11 20:54:29'),
(545, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-11 20:57:23'),
(546, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-11 21:03:05'),
(547, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-11 21:03:19'),
(548, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-11 21:03:43'),
(549, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-11 21:05:02'),
(550, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-11 21:06:17'),
(551, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-11 21:14:14'),
(552, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-11 21:15:34'),
(553, NULL, 'Someone viewed a property', 21, 'property_view', '2026-01-11 21:16:20'),
(554, NULL, 'Someone viewed a property', 21, 'property_view', '2026-01-12 05:31:52'),
(555, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-12 05:37:53'),
(556, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-12 05:39:55'),
(557, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-12 05:48:04'),
(558, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-12 05:51:29'),
(559, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-12 06:27:46'),
(560, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-12 06:30:01'),
(561, 14, 'Logged in via phone OTP', 14, 'user', '2026-01-12 06:35:50'),
(562, 14, 'viewed a property', 24, 'property_view', '2026-01-12 06:44:38'),
(563, 14, 'viewed a property', 24, 'property_view', '2026-01-12 06:49:42'),
(564, 14, 'viewed a property', 25, 'property_view', '2026-01-12 06:51:24'),
(565, 14, 'viewed a property', 25, 'property_view', '2026-01-12 06:54:04'),
(566, 14, 'viewed a property', 25, 'property_view', '2026-01-12 06:54:16'),
(567, 14, 'viewed a property', 25, 'property_view', '2026-01-12 06:54:38'),
(568, 14, 'viewed a property', 25, 'property_view', '2026-01-12 06:55:44'),
(569, 14, 'viewed a property', 25, 'property_view', '2026-01-12 06:56:04'),
(570, 14, 'viewed a property', 25, 'property_view', '2026-01-12 06:56:36'),
(571, 14, 'viewed a property', 25, 'property_view', '2026-01-12 06:56:56'),
(572, 14, 'viewed a property', 16, 'property_view', '2026-01-12 07:26:51'),
(573, 14, 'viewed a property', 21, 'property_view', '2026-01-12 07:27:22'),
(574, 14, 'viewed a property', 21, 'property_view', '2026-01-12 07:40:19'),
(575, 14, 'viewed a property', 21, 'property_view', '2026-01-12 07:40:47'),
(576, 14, 'viewed a property', 21, 'property_view', '2026-01-12 07:41:14'),
(577, 14, 'viewed a property', 21, 'property_view', '2026-01-12 07:52:14'),
(578, 14, 'viewed a property', 21, 'property_view', '2026-01-12 08:02:37'),
(579, 14, 'viewed a property', 21, 'property_view', '2026-01-12 08:13:10'),
(580, 14, 'viewed a property', 21, 'property_view', '2026-01-12 08:14:14'),
(581, 14, 'Posted a review', 21, 'property', '2026-01-12 08:14:36'),
(582, 14, 'viewed a property', 21, 'property_view', '2026-01-12 08:24:08'),
(583, 14, 'Posted a review', 21, 'property', '2026-01-12 08:24:29'),
(584, 14, 'Posted a review', 21, 'property', '2026-01-12 08:24:57'),
(585, 14, 'viewed a property', 21, 'property_view', '2026-01-12 08:30:39'),
(586, 14, 'viewed a property', 21, 'property_view', '2026-01-12 08:45:17'),
(587, 14, 'viewed a property', 21, 'property_view', '2026-01-12 08:49:01'),
(588, 14, 'viewed a property', 16, 'property_view', '2026-01-12 08:49:35'),
(589, 14, 'viewed a property', 16, 'property_view', '2026-01-12 08:50:17'),
(590, 14, 'viewed a property', 17, 'property_view', '2026-01-12 08:51:00'),
(591, 14, 'Posted a review', 17, 'property', '2026-01-12 08:51:36'),
(592, 14, 'viewed a property', 17, 'property_view', '2026-01-12 09:34:51'),
(593, 14, 'viewed a property', 17, 'property_view', '2026-01-12 09:35:22'),
(594, 14, 'viewed a property', 24, 'property_view', '2026-01-12 09:36:06'),
(595, 14, 'viewed a property', 17, 'property_view', '2026-01-12 09:36:24'),
(596, 14, 'viewed a property', 18, 'property_view', '2026-01-12 09:36:45'),
(597, 14, 'viewed a property', 16, 'property_view', '2026-01-12 10:03:07'),
(598, 14, 'viewed a property', 16, 'property_view', '2026-01-12 10:05:35'),
(599, 14, 'viewed a property', 24, 'property_view', '2026-01-12 10:22:37'),
(600, 14, 'viewed a property', 24, 'property_view', '2026-01-12 10:37:31'),
(601, 14, 'viewed a property', 16, 'property_view', '2026-01-12 10:48:08'),
(602, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-12 10:57:29'),
(603, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-12 10:58:35'),
(604, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-12 11:05:45'),
(605, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-12 11:14:53'),
(606, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-12 11:15:09'),
(607, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-12 11:19:51'),
(608, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-12 11:34:18'),
(609, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-12 11:34:56'),
(610, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-12 11:40:46'),
(611, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-12 11:42:02'),
(612, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-12 11:51:34'),
(613, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-12 11:53:39'),
(614, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-12 11:54:11'),
(615, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-12 11:55:52'),
(616, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-12 11:58:45'),
(617, 14, 'Logged in via phone OTP', 14, 'user', '2026-01-12 12:04:57'),
(618, 14, 'Removed property from favorites', 25, 'favorite_property', '2026-01-12 12:05:20'),
(619, 14, 'viewed a property', 16, 'property_view', '2026-01-12 12:10:56');
INSERT INTO `activities` (`id`, `user_id`, `action`, `reference_id`, `reference_type`, `created_at`) VALUES
(620, NULL, 'Someone viewed a property', 19, 'property_view', '2026-01-12 17:48:02'),
(621, NULL, 'Someone viewed a property', 21, 'property_view', '2026-01-12 19:32:46'),
(622, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-13 06:24:52'),
(623, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-13 06:27:50'),
(624, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-13 06:28:27'),
(625, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-13 06:39:29'),
(626, NULL, 'Someone viewed a property', 21, 'property_view', '2026-01-13 07:13:06'),
(627, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-13 07:13:38'),
(628, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-13 07:14:05'),
(629, NULL, 'Someone viewed a property', 21, 'property_view', '2026-01-13 07:14:12'),
(630, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-14 16:21:26'),
(631, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-14 17:20:59'),
(632, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-15 09:34:01'),
(633, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-15 09:38:27'),
(634, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-15 09:39:04'),
(635, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-15 09:39:59'),
(636, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-15 09:40:03'),
(637, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-15 09:43:44'),
(638, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-15 09:44:17'),
(639, NULL, 'Someone viewed a property', 21, 'property_view', '2026-01-15 09:44:25'),
(640, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-15 09:57:08'),
(641, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-15 09:57:22'),
(642, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-15 10:07:14'),
(643, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-15 10:07:39'),
(644, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-15 10:08:23'),
(645, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-15 10:08:49'),
(646, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-15 10:09:11'),
(647, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-15 10:09:28'),
(648, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-15 10:16:23'),
(649, NULL, 'Someone viewed a property', 18, 'property_view', '2026-01-15 10:56:24'),
(650, NULL, 'Someone viewed a property', 18, 'property_view', '2026-01-15 10:57:48'),
(651, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-15 11:00:22'),
(652, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-15 11:00:44'),
(653, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-15 11:01:15'),
(654, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-15 11:04:04'),
(655, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-15 11:04:50'),
(656, NULL, 'Someone viewed a property', 22, 'property_view', '2026-01-16 05:35:29'),
(657, NULL, 'Someone viewed a property', 22, 'property_view', '2026-01-16 08:13:09'),
(658, NULL, 'Someone viewed a property', 22, 'property_view', '2026-01-17 05:51:32'),
(659, NULL, 'Someone viewed a property', 22, 'property_view', '2026-01-19 05:59:59'),
(660, NULL, 'Someone viewed a property', 22, 'property_view', '2026-01-19 20:30:18'),
(661, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-19 20:39:49'),
(662, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-19 20:40:44'),
(663, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-19 20:40:52'),
(664, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-19 20:42:08'),
(665, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-19 20:42:41'),
(666, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-20 06:32:09'),
(667, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-20 18:11:17'),
(668, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-20 18:11:24'),
(669, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-20 18:13:27'),
(670, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 18:13:36'),
(671, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 18:13:47'),
(672, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 18:24:40'),
(673, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 18:28:29'),
(674, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 18:29:03'),
(675, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 18:54:23'),
(676, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 18:56:29'),
(677, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 18:56:36'),
(678, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 19:11:47'),
(679, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 19:12:22'),
(680, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 19:14:26'),
(681, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 19:16:59'),
(682, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 19:20:45'),
(683, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 19:33:07'),
(684, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 19:33:19'),
(685, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 19:35:34'),
(686, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-20 19:35:43'),
(687, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-20 19:37:03'),
(688, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 19:37:14'),
(689, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-20 19:37:20'),
(690, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-20 19:37:27'),
(691, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-20 19:38:15'),
(692, NULL, 'Someone viewed a property', 19, 'property_view', '2026-01-20 19:38:30'),
(693, NULL, 'Someone viewed a property', 21, 'property_view', '2026-01-20 19:38:53'),
(694, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 19:39:34'),
(695, NULL, 'Someone viewed a property', 22, 'property_view', '2026-01-20 19:39:45'),
(696, NULL, 'Someone viewed a property', 22, 'property_view', '2026-01-20 19:41:08'),
(697, NULL, 'Someone viewed a property', 18, 'property_view', '2026-01-20 19:41:21'),
(698, NULL, 'Someone viewed a property', 18, 'property_view', '2026-01-20 19:42:04'),
(699, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-20 19:42:12'),
(700, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 19:44:01'),
(701, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-20 19:44:31'),
(702, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-20 20:04:55'),
(703, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:05:10'),
(704, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:06:04'),
(705, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:06:31'),
(706, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:06:51'),
(707, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:07:47'),
(708, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:20:26'),
(709, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:23:34'),
(710, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:23:57'),
(711, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:25:01'),
(712, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:25:26'),
(713, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:25:56'),
(714, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:26:16'),
(715, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:26:40'),
(716, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:27:20'),
(717, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:28:05'),
(718, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:28:18'),
(719, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:28:58'),
(720, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:29:14'),
(721, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:30:06'),
(722, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:31:22'),
(723, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:31:37'),
(724, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:31:57'),
(725, NULL, 'Someone viewed a property', 21, 'property_view', '2026-01-20 20:33:31'),
(726, NULL, 'Someone viewed a property', 21, 'property_view', '2026-01-20 20:35:07'),
(727, NULL, 'Someone viewed a property', 21, 'property_view', '2026-01-20 20:36:18'),
(728, NULL, 'Someone viewed a property', 21, 'property_view', '2026-01-20 20:37:26'),
(729, NULL, 'Someone viewed a property', 21, 'property_view', '2026-01-20 20:38:22'),
(730, NULL, 'Someone viewed a property', 21, 'property_view', '2026-01-20 20:38:52'),
(731, NULL, 'Someone viewed a property', 21, 'property_view', '2026-01-20 20:40:55'),
(732, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:41:10'),
(733, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:41:47'),
(734, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:42:16'),
(735, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:42:28'),
(736, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:42:32'),
(737, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:42:45'),
(738, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:43:10'),
(739, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-20 20:43:24'),
(740, NULL, 'Someone viewed a property', 22, 'property_view', '2026-01-20 20:43:33'),
(741, NULL, 'Someone viewed a property', 22, 'property_view', '2026-01-20 20:43:45'),
(742, NULL, 'Someone viewed a property', 22, 'property_view', '2026-01-20 20:44:23'),
(743, NULL, 'Someone viewed a property', 22, 'property_view', '2026-01-20 20:44:40'),
(744, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-20 20:44:50'),
(745, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-20 20:45:21'),
(746, NULL, 'Someone viewed a property', 22, 'property_view', '2026-01-20 20:45:43'),
(747, NULL, 'Someone viewed a property', 22, 'property_view', '2026-01-20 20:46:20'),
(748, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-20 20:46:38'),
(749, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 20:47:36'),
(750, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 20:51:57'),
(751, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 21:00:01'),
(752, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 21:00:21'),
(753, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 21:04:47'),
(754, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 21:05:28'),
(755, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 21:06:17'),
(756, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 21:09:48'),
(757, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 21:16:41'),
(758, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 21:16:48'),
(759, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 21:17:07'),
(760, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 21:17:35'),
(761, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 21:17:56'),
(762, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 21:18:11'),
(763, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 21:19:45'),
(764, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 21:27:18'),
(765, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 21:27:35'),
(766, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 21:27:56'),
(767, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-20 21:28:21'),
(768, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-21 05:31:30'),
(769, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-21 05:32:21'),
(770, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-21 05:32:52'),
(771, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-21 05:33:22'),
(772, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-21 05:36:45'),
(773, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-21 05:49:33'),
(774, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-21 06:23:26'),
(775, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-21 07:57:46'),
(776, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-21 08:46:01'),
(777, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-21 08:59:44'),
(778, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-21 09:01:15'),
(779, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-21 09:01:29'),
(780, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-21 09:01:52'),
(781, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-21 09:13:57'),
(782, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-21 09:14:52'),
(783, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-21 09:15:32'),
(784, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-21 09:16:07'),
(785, 14, 'Logged in via phone OTP', 14, 'user', '2026-01-21 09:31:47'),
(786, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-21 13:09:41'),
(787, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-21 13:10:01'),
(788, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-21 13:13:10'),
(789, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-21 13:13:48'),
(790, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-21 13:15:03'),
(791, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-21 14:47:34'),
(792, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-21 14:48:16'),
(793, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-21 14:58:38'),
(794, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-21 15:09:10'),
(795, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-21 15:15:45'),
(796, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-21 15:17:48'),
(797, NULL, 'Someone viewed a property', 17, 'property_view', '2026-01-21 15:26:12'),
(798, 14, 'Logged in via phone OTP', 14, 'user', '2026-01-21 15:39:43'),
(799, 14, 'viewed a property', 16, 'property_view', '2026-01-21 15:55:44'),
(800, 14, 'viewed a property', 16, 'property_view', '2026-01-21 15:57:15'),
(801, 14, 'Logged in via phone OTP', 14, 'user', '2026-01-21 16:04:40'),
(802, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-22 19:33:55'),
(803, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-22 19:34:13'),
(804, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-22 19:36:06'),
(805, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-22 19:52:36'),
(806, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-22 19:53:52'),
(807, NULL, 'Someone viewed a property', 24, 'property_view', '2026-01-22 19:54:52'),
(808, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-23 15:29:07'),
(809, NULL, 'Someone viewed a property', 23, 'property_view', '2026-01-23 15:30:28'),
(810, NULL, 'Someone viewed a property', 25, 'property_view', '2026-01-23 15:38:07'),
(811, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-23 17:27:07'),
(812, NULL, 'Someone viewed a property', 16, 'property_view', '2026-01-23 18:42:45'),
(813, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-23 18:43:16'),
(814, NULL, 'Someone viewed a property', 20, 'property_view', '2026-01-23 18:43:32'),
(815, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-02 14:19:30'),
(816, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-02 14:21:31'),
(817, NULL, 'Someone viewed a property', 24, 'property_view', '2026-02-05 18:36:24'),
(818, NULL, 'Someone viewed a property', 16, 'property_view', '2026-02-09 07:57:19'),
(819, NULL, 'Someone viewed a property', 16, 'property_view', '2026-02-09 07:58:02'),
(820, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-09 08:01:07'),
(821, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-09 08:02:13'),
(822, NULL, 'Someone viewed a property', 23, 'property_view', '2026-02-09 08:03:05'),
(823, NULL, 'Someone viewed a property', 23, 'property_view', '2026-02-09 08:04:54'),
(824, NULL, 'Someone viewed a property', 25, 'property_view', '2026-02-09 08:05:11'),
(825, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-09 08:40:29'),
(826, NULL, 'Someone viewed a property', 24, 'property_view', '2026-02-09 09:07:20'),
(827, NULL, 'Someone viewed a property', 16, 'property_view', '2026-02-09 09:37:40'),
(828, NULL, 'Someone viewed a property', 16, 'property_view', '2026-02-09 09:39:09'),
(829, NULL, 'Someone viewed a property', 19, 'property_view', '2026-02-09 09:39:17'),
(830, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-09 09:39:27'),
(831, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-09 09:39:37'),
(832, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-09 09:40:00'),
(833, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-09 10:27:51'),
(834, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-10 10:54:48'),
(835, NULL, 'Someone viewed a property', 16, 'property_view', '2026-02-10 10:56:44'),
(836, NULL, 'Someone viewed a property', 16, 'property_view', '2026-02-10 10:57:41'),
(837, NULL, 'Someone viewed a property', 16, 'property_view', '2026-02-10 10:58:20'),
(838, NULL, 'Someone viewed a property', 16, 'property_view', '2026-02-10 18:38:01'),
(839, NULL, 'Someone viewed a property', 16, 'property_view', '2026-02-10 18:38:30'),
(840, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-12 07:21:58'),
(841, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-12 07:23:39'),
(842, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-12 14:16:13'),
(843, NULL, 'Someone viewed a property', 16, 'property_view', '2026-02-14 06:57:48'),
(844, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-14 06:58:53'),
(845, NULL, 'Someone viewed a property', 23, 'property_view', '2026-02-14 06:59:55'),
(846, NULL, 'Someone viewed a property', 24, 'property_view', '2026-02-14 16:11:53'),
(847, NULL, 'Someone viewed a property', 24, 'property_view', '2026-02-14 16:14:03'),
(848, NULL, 'Someone viewed a property', 24, 'property_view', '2026-02-14 16:14:44'),
(849, NULL, 'Someone viewed a property', 24, 'property_view', '2026-02-15 10:59:45'),
(850, NULL, 'Someone viewed a property', 24, 'property_view', '2026-02-15 15:21:31'),
(851, NULL, 'Someone viewed a property', 24, 'property_view', '2026-02-15 15:45:22'),
(852, NULL, 'Someone viewed a property', 24, 'property_view', '2026-02-15 15:48:47'),
(853, NULL, 'Someone viewed a property', 24, 'property_view', '2026-02-15 15:51:16'),
(854, NULL, 'Someone viewed a property', 24, 'property_view', '2026-02-15 16:12:10'),
(855, NULL, 'Someone viewed a property', 24, 'property_view', '2026-02-15 17:02:36'),
(856, NULL, 'Someone viewed a property', 24, 'property_view', '2026-02-15 17:18:07'),
(857, NULL, 'Someone viewed a property', 24, 'property_view', '2026-02-15 17:18:18'),
(858, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-18 17:52:55'),
(859, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-18 17:53:49'),
(860, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-19 08:48:35'),
(861, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-19 09:13:56'),
(862, NULL, 'Someone viewed a property', 16, 'property_view', '2026-02-19 09:16:07'),
(863, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-19 09:16:53'),
(864, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-19 09:17:29'),
(865, NULL, 'Someone viewed a property', 16, 'property_view', '2026-02-19 09:21:42'),
(866, NULL, 'Someone viewed a property', 16, 'property_view', '2026-02-19 17:25:32'),
(867, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-19 17:26:04'),
(868, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-19 17:26:21'),
(869, NULL, 'Someone viewed a property', 23, 'property_view', '2026-02-19 17:26:31'),
(870, NULL, 'Someone viewed a property', 23, 'property_view', '2026-02-19 17:26:51'),
(871, NULL, 'Someone viewed a property', 23, 'property_view', '2026-02-19 17:30:47'),
(872, NULL, 'Someone viewed a property', 16, 'property_view', '2026-02-19 17:55:55'),
(873, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-20 16:05:45'),
(874, NULL, 'Someone viewed a property', 16, 'property_view', '2026-02-20 16:06:11'),
(875, NULL, 'Someone viewed a property', 16, 'property_view', '2026-02-20 17:39:35'),
(876, NULL, 'Someone viewed a property', 24, 'property_view', '2026-02-20 21:09:47'),
(877, NULL, 'Someone viewed a property', 24, 'property_view', '2026-02-20 21:10:10'),
(878, NULL, 'Someone viewed a property', 24, 'property_view', '2026-02-20 21:23:36'),
(879, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-20 21:27:09'),
(880, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-20 21:27:34'),
(881, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-21 14:08:45'),
(882, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-23 15:58:12'),
(883, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-24 06:00:04'),
(884, NULL, 'Someone viewed a property', 24, 'property_view', '2026-02-24 08:46:21'),
(885, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-24 08:48:39'),
(886, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-24 08:50:13'),
(887, NULL, 'Someone viewed a property', 16, 'property_view', '2026-02-24 08:51:38'),
(888, NULL, 'Someone viewed a property', 25, 'property_view', '2026-02-24 08:53:10'),
(889, NULL, 'Someone viewed a property', 16, 'property_view', '2026-02-24 19:28:21'),
(890, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-24 19:29:37'),
(891, NULL, 'Someone viewed a property', 20, 'property_view', '2026-02-27 14:29:29'),
(892, NULL, 'Someone viewed a property', 16, 'property_view', '2026-02-27 14:30:37'),
(893, NULL, 'Someone viewed a property', 16, 'property_view', '2026-02-27 14:31:44'),
(894, NULL, 'Someone viewed a property', 16, 'property_view', '2026-02-27 14:32:18'),
(895, NULL, 'Someone viewed a property', 20, 'property_view', '2026-03-06 08:38:50'),
(896, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-06 08:49:44'),
(897, NULL, 'Someone viewed a property', 20, 'property_view', '2026-03-07 08:01:03'),
(898, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 08:02:36'),
(899, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 08:42:18'),
(900, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 08:42:34'),
(901, 14, 'Logged in via phone OTP', 14, 'user', '2026-03-07 08:56:54'),
(902, 14, 'Updated property', 16, 'property', '2026-03-07 11:03:12'),
(903, 14, 'viewed a property', 16, 'property_view', '2026-03-07 11:03:38'),
(904, 14, 'Updated property', 16, 'property', '2026-03-07 11:28:12'),
(905, 14, 'viewed a property', 16, 'property_view', '2026-03-07 11:28:23'),
(906, 14, 'viewed a property', 16, 'property_view', '2026-03-07 11:29:51'),
(907, 14, 'viewed a property', 16, 'property_view', '2026-03-07 11:38:42'),
(908, 14, 'viewed a property', 16, 'property_view', '2026-03-07 11:39:01'),
(909, 14, 'viewed a property', 19, 'property_view', '2026-03-07 11:39:15'),
(910, 14, 'viewed a property', 19, 'property_view', '2026-03-07 11:39:27'),
(911, 14, 'viewed a property', 16, 'property_view', '2026-03-07 11:39:35'),
(912, 14, 'viewed a property', 16, 'property_view', '2026-03-07 11:44:59'),
(913, 14, 'viewed a property', 16, 'property_view', '2026-03-07 11:46:13'),
(914, 14, 'viewed a property', 16, 'property_view', '2026-03-07 11:51:24'),
(915, 14, 'viewed a property', 16, 'property_view', '2026-03-07 11:59:23'),
(916, 14, 'viewed a property', 19, 'property_view', '2026-03-07 12:02:43'),
(917, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:02:47'),
(918, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:06:01'),
(919, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:07:47'),
(920, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:07:53'),
(921, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:15:41'),
(922, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:23:51'),
(923, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:31:06'),
(924, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:32:25'),
(925, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:34:56'),
(926, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:35:41'),
(927, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:36:09'),
(928, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:37:15'),
(929, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:37:45'),
(930, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:38:23'),
(931, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:38:42'),
(932, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:39:49'),
(933, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:40:47'),
(934, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:41:27'),
(935, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:42:05'),
(936, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:42:36'),
(937, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:43:05'),
(938, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:43:11'),
(939, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:43:30'),
(940, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:44:16'),
(941, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:44:51'),
(942, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:45:21'),
(943, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:46:03'),
(944, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:47:02'),
(945, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:47:39'),
(946, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:47:43'),
(947, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:48:07'),
(948, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:48:10'),
(949, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:48:47'),
(950, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:48:53'),
(951, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:49:43'),
(952, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:50:21'),
(953, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:50:30'),
(954, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:50:50'),
(955, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:51:24'),
(956, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:53:23'),
(957, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:54:06'),
(958, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:55:44'),
(959, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:56:09'),
(960, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:56:54'),
(961, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:58:23'),
(962, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:58:29'),
(963, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:58:45'),
(964, 14, 'viewed a property', 16, 'property_view', '2026-03-07 12:59:39'),
(965, 14, 'viewed a property', 16, 'property_view', '2026-03-07 13:00:28'),
(966, 14, 'viewed a property', 16, 'property_view', '2026-03-07 13:00:48'),
(967, 14, 'viewed a property', 16, 'property_view', '2026-03-07 13:01:04'),
(968, 14, 'viewed a property', 16, 'property_view', '2026-03-07 13:03:37'),
(969, 14, 'viewed a property', 16, 'property_view', '2026-03-07 13:48:29'),
(970, 14, 'viewed a property', 16, 'property_view', '2026-03-07 13:48:38'),
(971, 14, 'viewed a property', 16, 'property_view', '2026-03-07 13:50:40'),
(972, 14, 'viewed a property', 16, 'property_view', '2026-03-07 13:52:21'),
(973, 14, 'viewed a property', 20, 'property_view', '2026-03-07 13:53:58'),
(974, 14, 'viewed a property', 23, 'property_view', '2026-03-07 13:54:18'),
(975, 14, 'viewed a property', 16, 'property_view', '2026-03-07 13:54:38'),
(976, 14, 'viewed a property', 23, 'property_view', '2026-03-07 13:54:49'),
(977, 14, 'viewed a property', 23, 'property_view', '2026-03-07 14:00:40'),
(978, 14, 'viewed a property', 23, 'property_view', '2026-03-07 14:02:23'),
(979, 14, 'viewed a property', 23, 'property_view', '2026-03-07 14:05:29'),
(980, 14, 'viewed a property', 16, 'property_view', '2026-03-07 14:05:42'),
(981, 14, 'viewed a property', 16, 'property_view', '2026-03-07 14:05:53'),
(982, 14, 'viewed a property', 23, 'property_view', '2026-03-07 14:05:57'),
(983, 14, 'viewed a property', 19, 'property_view', '2026-03-07 14:06:03'),
(984, 14, 'viewed a property', 19, 'property_view', '2026-03-07 14:09:33'),
(985, 14, 'viewed a property', 23, 'property_view', '2026-03-07 14:09:48'),
(986, 14, 'viewed a property', 23, 'property_view', '2026-03-07 14:14:58'),
(987, 14, 'viewed a property', 23, 'property_view', '2026-03-07 14:15:19'),
(988, 14, 'viewed a property', 23, 'property_view', '2026-03-07 14:18:22'),
(989, 14, 'viewed a property', 23, 'property_view', '2026-03-07 14:22:39'),
(990, 14, 'viewed a property', 23, 'property_view', '2026-03-07 14:34:35'),
(991, 14, 'viewed a property', 19, 'property_view', '2026-03-07 14:34:46'),
(992, 14, 'viewed a property', 23, 'property_view', '2026-03-07 14:34:49'),
(993, 14, 'viewed a property', 16, 'property_view', '2026-03-07 14:34:54'),
(994, NULL, 'Someone viewed a property', 17, 'property_view', '2026-03-07 14:41:04'),
(995, NULL, 'Someone viewed a property', 17, 'property_view', '2026-03-07 14:41:12'),
(996, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 14:41:27'),
(997, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-07 14:41:47'),
(998, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-07 14:51:10'),
(999, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-07 15:00:39'),
(1000, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-07 15:07:17'),
(1001, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-07 15:09:41'),
(1002, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-07 15:11:57'),
(1003, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-07 15:18:48'),
(1004, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-07 15:20:49'),
(1005, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-07 15:24:04'),
(1006, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-07 15:29:20'),
(1007, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-07 15:30:39'),
(1008, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-07 15:33:48'),
(1009, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-07 15:34:38'),
(1010, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-07 15:43:33'),
(1011, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 15:45:48'),
(1012, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 16:01:09'),
(1013, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-07 16:02:41'),
(1014, NULL, 'Someone viewed a property', 17, 'property_view', '2026-03-07 16:11:44'),
(1015, NULL, 'Someone viewed a property', 17, 'property_view', '2026-03-07 16:45:12'),
(1016, NULL, 'Someone viewed a property', 23, 'property_view', '2026-03-07 16:46:24'),
(1017, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 16:46:34'),
(1018, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 16:47:01'),
(1019, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 16:50:50'),
(1020, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 16:53:58'),
(1021, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 16:54:17'),
(1022, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 16:57:06'),
(1023, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 16:57:27'),
(1024, NULL, 'Someone viewed a property', 20, 'property_view', '2026-03-07 17:00:22'),
(1025, NULL, 'Someone viewed a property', 20, 'property_view', '2026-03-07 17:06:36'),
(1026, NULL, 'Someone viewed a property', 20, 'property_view', '2026-03-07 17:09:01'),
(1027, NULL, 'Someone viewed a property', 20, 'property_view', '2026-03-07 17:09:18'),
(1028, NULL, 'Someone viewed a property', 20, 'property_view', '2026-03-07 17:09:39'),
(1029, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-07 17:09:53'),
(1030, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-07 17:10:05'),
(1031, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-07 17:13:46'),
(1032, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-07 17:16:54'),
(1033, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 17:17:41'),
(1034, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 17:20:54'),
(1035, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 17:22:09'),
(1036, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 17:22:29'),
(1037, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 17:25:07'),
(1038, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 17:26:46'),
(1039, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 17:27:06'),
(1040, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 17:27:31'),
(1041, NULL, 'Someone viewed a property', 17, 'property_view', '2026-03-07 17:38:02'),
(1042, NULL, 'Someone viewed a property', 17, 'property_view', '2026-03-07 17:44:42'),
(1043, NULL, 'Someone viewed a property', 23, 'property_view', '2026-03-07 17:46:22'),
(1044, NULL, 'Someone viewed a property', 17, 'property_view', '2026-03-07 17:46:31'),
(1045, NULL, 'Someone viewed a property', 17, 'property_view', '2026-03-07 17:51:54'),
(1046, NULL, 'Someone viewed a property', 17, 'property_view', '2026-03-07 17:55:57'),
(1047, NULL, 'Someone viewed a property', 17, 'property_view', '2026-03-07 17:56:04'),
(1048, NULL, 'Someone viewed a property', 17, 'property_view', '2026-03-07 18:00:01'),
(1049, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 18:00:16'),
(1050, NULL, 'Someone viewed a property', 20, 'property_view', '2026-03-07 18:00:34'),
(1051, NULL, 'Someone viewed a property', 17, 'property_view', '2026-03-07 18:00:52'),
(1052, NULL, 'Someone viewed a property', 17, 'property_view', '2026-03-07 18:01:12'),
(1053, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 18:02:07'),
(1054, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 18:05:18'),
(1055, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 18:12:00'),
(1056, NULL, 'Someone viewed a property', 17, 'property_view', '2026-03-07 18:12:27'),
(1057, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 18:15:08'),
(1058, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 18:17:48'),
(1059, 14, 'viewed a property', 16, 'property_view', '2026-03-07 18:18:03'),
(1060, 14, 'viewed a property', 16, 'property_view', '2026-03-07 18:18:19'),
(1061, 14, 'viewed a property', 16, 'property_view', '2026-03-07 18:22:29'),
(1062, 14, 'viewed a property', 16, 'property_view', '2026-03-07 18:28:28'),
(1063, 14, 'viewed a property', 16, 'property_view', '2026-03-07 18:28:49'),
(1064, 14, 'viewed a property', 16, 'property_view', '2026-03-07 18:29:17'),
(1065, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 18:31:43'),
(1066, 14, 'viewed a property', 16, 'property_view', '2026-03-07 18:33:31'),
(1067, 14, 'viewed a property', 16, 'property_view', '2026-03-07 18:34:58'),
(1068, 14, 'viewed a property', 16, 'property_view', '2026-03-07 18:35:25'),
(1069, 14, 'viewed a property', 16, 'property_view', '2026-03-07 18:35:55'),
(1070, 14, 'viewed a property', 16, 'property_view', '2026-03-07 18:36:20'),
(1071, 14, 'viewed a property', 16, 'property_view', '2026-03-07 18:36:45'),
(1072, 14, 'viewed a property', 16, 'property_view', '2026-03-07 18:38:35'),
(1073, 14, 'viewed a property', 16, 'property_view', '2026-03-07 18:39:08'),
(1074, 14, 'viewed a property', 16, 'property_view', '2026-03-07 18:39:15'),
(1075, 14, 'viewed a property', 16, 'property_view', '2026-03-07 18:40:06'),
(1076, 14, 'viewed a property', 16, 'property_view', '2026-03-07 18:41:13'),
(1077, 14, 'viewed a property', 16, 'property_view', '2026-03-07 18:41:43'),
(1078, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 18:42:41'),
(1079, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 18:47:30'),
(1080, 14, 'viewed a property', 16, 'property_view', '2026-03-07 19:02:00'),
(1081, 14, 'viewed a property', 24, 'property_view', '2026-03-07 19:03:13'),
(1082, 14, 'Added property to favorites', 17, 'favorite_property', '2026-03-07 19:05:21'),
(1083, 14, 'Removed property from favorites', 17, 'favorite_property', '2026-03-07 19:05:23'),
(1084, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 19:06:03'),
(1085, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 19:06:16'),
(1086, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 19:25:22'),
(1087, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 19:26:28'),
(1088, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 19:27:00'),
(1089, 14, 'viewed a property', 24, 'property_view', '2026-03-07 19:27:23'),
(1090, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 19:41:50'),
(1091, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 19:42:23'),
(1092, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 19:42:26'),
(1093, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 19:42:34'),
(1094, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 19:47:16'),
(1095, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 19:49:54'),
(1096, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 19:50:49'),
(1097, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 20:21:45'),
(1098, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 20:26:57'),
(1099, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-07 20:27:20'),
(1100, 14, 'Logged in via phone OTP', 14, 'user', '2026-03-07 20:45:11'),
(1101, 8, 'Logged in via email OTP', 8, 'user', '2026-03-07 21:04:07'),
(1102, NULL, 'Someone viewed a property', 20, 'property_view', '2026-03-07 21:15:03'),
(1103, NULL, 'Someone viewed a property', 20, 'property_view', '2026-03-07 21:16:51'),
(1104, NULL, 'Someone viewed a property', 20, 'property_view', '2026-03-07 21:20:00'),
(1105, 8, 'Logged in via email OTP', 8, 'user', '2026-03-07 21:21:05'),
(1106, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 07:53:09'),
(1107, 8, 'Logged in via email OTP', 8, 'user', '2026-03-08 08:09:16'),
(1108, 8, 'viewed a property', 16, 'property_view', '2026-03-08 08:11:13'),
(1109, 8, 'viewed a property', 16, 'property_view', '2026-03-08 08:19:54'),
(1110, 8, 'viewed a property', 16, 'property_view', '2026-03-08 08:20:14'),
(1111, 8, 'viewed a property', 16, 'property_view', '2026-03-08 08:20:52'),
(1112, 8, 'viewed a property', 16, 'property_view', '2026-03-08 08:21:56'),
(1113, 8, 'viewed a property', 16, 'property_view', '2026-03-08 08:22:50'),
(1114, 8, 'viewed a property', 16, 'property_view', '2026-03-08 08:23:25'),
(1115, 8, 'viewed a property', 16, 'property_view', '2026-03-08 08:24:07'),
(1116, 8, 'viewed a property', 16, 'property_view', '2026-03-08 08:24:41'),
(1117, 8, 'viewed a property', 16, 'property_view', '2026-03-08 08:25:30'),
(1118, 8, 'viewed a property', 19, 'property_view', '2026-03-08 08:35:11'),
(1119, 8, 'viewed a property', 24, 'property_view', '2026-03-08 08:40:56'),
(1120, 8, 'viewed a property', 16, 'property_view', '2026-03-08 08:41:21'),
(1121, 8, 'viewed a property', 16, 'property_view', '2026-03-08 08:46:18'),
(1122, 8, 'viewed a property', 16, 'property_view', '2026-03-08 08:55:54'),
(1123, 8, 'viewed a property', 16, 'property_view', '2026-03-08 08:56:56'),
(1124, 8, 'viewed a property', 16, 'property_view', '2026-03-08 09:00:07'),
(1125, 8, 'viewed a property', 16, 'property_view', '2026-03-08 09:01:02'),
(1126, 8, 'viewed a property', 16, 'property_view', '2026-03-08 09:01:35'),
(1127, 8, 'viewed a property', 16, 'property_view', '2026-03-08 09:02:22'),
(1128, 8, 'viewed a property', 16, 'property_view', '2026-03-08 09:03:52'),
(1129, 8, 'viewed a property', 16, 'property_view', '2026-03-08 09:05:13'),
(1130, 8, 'viewed a property', 16, 'property_view', '2026-03-08 09:06:00'),
(1131, 8, 'viewed a property', 16, 'property_view', '2026-03-08 09:08:50'),
(1132, 8, 'viewed a property', 16, 'property_view', '2026-03-08 09:09:24'),
(1133, 8, 'Removed property from favorites', 16, 'favorite_property', '2026-03-08 09:09:53'),
(1134, 8, 'Added property to favorites', 16, 'favorite_property', '2026-03-08 09:09:57'),
(1135, 8, 'Removed property from favorites', 16, 'favorite_property', '2026-03-08 09:10:01'),
(1136, NULL, 'Someone viewed a property', 20, 'property_view', '2026-03-08 09:11:31'),
(1137, NULL, 'Someone viewed a property', 20, 'property_view', '2026-03-08 09:12:30'),
(1138, NULL, 'Someone viewed a property', 20, 'property_view', '2026-03-08 09:20:39'),
(1139, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 09:21:17'),
(1140, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 09:23:30'),
(1141, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 09:24:13'),
(1142, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 10:13:30'),
(1143, NULL, 'Someone viewed a property', 19, 'property_view', '2026-03-08 10:16:13'),
(1144, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 10:18:30'),
(1145, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 10:21:13'),
(1146, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 10:22:10'),
(1147, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 10:23:15'),
(1148, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 10:25:29'),
(1149, NULL, 'Someone viewed a property', 19, 'property_view', '2026-03-08 10:27:48'),
(1150, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 10:28:19'),
(1151, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 10:34:02'),
(1152, NULL, 'Someone viewed a property', 19, 'property_view', '2026-03-08 10:37:45'),
(1153, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 12:13:03'),
(1154, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-08 12:14:48'),
(1155, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 12:17:17'),
(1156, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 12:26:19'),
(1157, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 12:26:50'),
(1158, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 12:27:10'),
(1159, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 12:27:37'),
(1160, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 12:28:00'),
(1161, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 12:28:24'),
(1162, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-08 14:19:52'),
(1163, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-08 14:20:59'),
(1164, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-08 14:30:58'),
(1165, NULL, 'Someone viewed a property', 20, 'property_view', '2026-03-08 14:31:34'),
(1166, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-08 14:37:53'),
(1167, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-08 14:38:31'),
(1168, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 14:54:35'),
(1169, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 15:09:56'),
(1170, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 15:13:25'),
(1171, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 15:17:06'),
(1172, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 15:19:57'),
(1173, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 15:20:04'),
(1174, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 17:36:48'),
(1175, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 21:19:53'),
(1176, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 21:24:19'),
(1177, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 21:24:48'),
(1178, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-08 21:26:54'),
(1179, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 21:29:48'),
(1180, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 21:34:08'),
(1181, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 21:34:17'),
(1182, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 21:34:53'),
(1183, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 21:39:16'),
(1184, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 21:40:00'),
(1185, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-08 21:40:29'),
(1186, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 21:41:28'),
(1187, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-08 21:41:46'),
(1188, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-08 21:44:28'),
(1189, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-08 21:44:54'),
(1190, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-08 21:45:01'),
(1191, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-08 21:46:58'),
(1192, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-08 21:47:18'),
(1193, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 21:50:23'),
(1194, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 21:53:25'),
(1195, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 21:57:45'),
(1196, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 21:58:08'),
(1197, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 21:59:04'),
(1198, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-08 22:00:31'),
(1199, NULL, 'Someone viewed a property', 25, 'property_view', '2026-03-08 22:01:50'),
(1200, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-08 22:06:41'),
(1201, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-08 22:07:10'),
(1202, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 07:02:05'),
(1203, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 07:02:36'),
(1204, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 07:08:52'),
(1205, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 07:09:03'),
(1206, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 07:11:01'),
(1207, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 07:11:31'),
(1208, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 07:15:14'),
(1209, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 07:18:09'),
(1210, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 07:18:36'),
(1211, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 07:19:10'),
(1212, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 07:19:20'),
(1213, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 07:25:46'),
(1214, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 07:27:32'),
(1215, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 07:29:59'),
(1216, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 07:38:09'),
(1217, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 07:38:40'),
(1218, NULL, 'Someone viewed a property', 23, 'property_view', '2026-03-09 07:46:31'),
(1219, NULL, 'Someone viewed a property', 23, 'property_view', '2026-03-09 08:02:47'),
(1220, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 08:41:12'),
(1221, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 08:41:26'),
(1222, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 08:42:16'),
(1223, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 08:42:40'),
(1224, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 08:49:49'),
(1225, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 08:52:37'),
(1226, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 08:52:49'),
(1227, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 08:53:09'),
(1228, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 08:54:08');
INSERT INTO `activities` (`id`, `user_id`, `action`, `reference_id`, `reference_type`, `created_at`) VALUES
(1229, NULL, 'Someone viewed a property', 20, 'property_view', '2026-03-09 08:57:34'),
(1230, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 09:25:12'),
(1231, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 09:25:30'),
(1232, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 13:44:11'),
(1233, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 13:50:50'),
(1234, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 15:15:39'),
(1235, NULL, 'Someone viewed a property', 20, 'property_view', '2026-03-09 15:42:35'),
(1236, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 16:09:25'),
(1237, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 16:14:59'),
(1238, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 16:16:43'),
(1239, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 16:18:17'),
(1240, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 16:19:02'),
(1241, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 16:21:12'),
(1242, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 16:22:16'),
(1243, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 16:23:27'),
(1244, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 16:28:44'),
(1245, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 16:41:43'),
(1246, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 16:52:58'),
(1247, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 16:53:02'),
(1248, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 16:54:46'),
(1249, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 16:55:31'),
(1250, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 16:57:11'),
(1251, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 16:57:21'),
(1252, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 16:57:58'),
(1253, NULL, 'Someone viewed a property', 21, 'property_view', '2026-03-09 16:58:48'),
(1254, NULL, 'Someone viewed a property', 21, 'property_view', '2026-03-09 16:59:06'),
(1255, NULL, 'Someone viewed a property', 21, 'property_view', '2026-03-09 17:00:49'),
(1256, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:07:52'),
(1257, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:08:30'),
(1258, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:08:43'),
(1259, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:08:59'),
(1260, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:09:12'),
(1261, NULL, 'Someone viewed a property', 21, 'property_view', '2026-03-09 17:09:32'),
(1262, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:10:01'),
(1263, NULL, 'Someone viewed a property', 21, 'property_view', '2026-03-09 17:10:17'),
(1264, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:11:11'),
(1265, NULL, 'Someone viewed a property', 21, 'property_view', '2026-03-09 17:11:22'),
(1266, NULL, 'Someone viewed a property', 21, 'property_view', '2026-03-09 17:12:53'),
(1267, NULL, 'Someone viewed a property', 21, 'property_view', '2026-03-09 17:13:05'),
(1268, NULL, 'Someone viewed a property', 21, 'property_view', '2026-03-09 17:14:15'),
(1269, NULL, 'Someone viewed a property', 21, 'property_view', '2026-03-09 17:15:08'),
(1270, NULL, 'Someone viewed a property', 21, 'property_view', '2026-03-09 17:15:48'),
(1271, NULL, 'Someone viewed a property', 21, 'property_view', '2026-03-09 17:16:27'),
(1272, NULL, 'Someone viewed a property', 21, 'property_view', '2026-03-09 17:16:45'),
(1273, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:17:40'),
(1274, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:26:17'),
(1275, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:26:36'),
(1276, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:26:39'),
(1277, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:28:11'),
(1278, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:28:21'),
(1279, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:28:49'),
(1280, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:31:03'),
(1281, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:31:54'),
(1282, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:32:50'),
(1283, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:33:46'),
(1284, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:34:04'),
(1285, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:36:10'),
(1286, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:41:17'),
(1287, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:42:27'),
(1288, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:42:33'),
(1289, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:48:11'),
(1290, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:48:37'),
(1291, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:52:45'),
(1292, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:52:55'),
(1293, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:55:53'),
(1294, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:56:01'),
(1295, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:57:57'),
(1296, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:58:13'),
(1297, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 17:58:28'),
(1298, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:02:48'),
(1299, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:02:59'),
(1300, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:03:54'),
(1301, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:03:57'),
(1302, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:04:39'),
(1303, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:05:18'),
(1304, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:06:22'),
(1305, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:08:15'),
(1306, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:12:54'),
(1307, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:15:52'),
(1308, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:17:53'),
(1309, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:18:15'),
(1310, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:20:09'),
(1311, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:20:44'),
(1312, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:21:09'),
(1313, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:21:50'),
(1314, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:22:13'),
(1315, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:22:47'),
(1316, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:23:06'),
(1317, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 18:25:55'),
(1318, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:28:11'),
(1319, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:30:02'),
(1320, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 18:31:07'),
(1321, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 18:31:45'),
(1322, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:34:40'),
(1323, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 18:35:07'),
(1324, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:35:43'),
(1325, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 18:40:57'),
(1326, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 18:45:54'),
(1327, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 18:46:01'),
(1328, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 18:47:12'),
(1329, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:47:29'),
(1330, NULL, 'Someone viewed a property', 19, 'property_view', '2026-03-09 18:50:51'),
(1331, NULL, 'Someone viewed a property', 23, 'property_view', '2026-03-09 18:53:10'),
(1332, NULL, 'Someone viewed a property', 23, 'property_view', '2026-03-09 18:53:57'),
(1333, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:54:12'),
(1334, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 18:55:20'),
(1335, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 18:55:44'),
(1336, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 18:56:17'),
(1337, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 19:00:35'),
(1338, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 19:01:02'),
(1339, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 19:01:13'),
(1340, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 19:21:04'),
(1341, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 19:21:23'),
(1342, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 19:25:49'),
(1343, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 19:29:50'),
(1344, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 19:30:19'),
(1345, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 19:30:51'),
(1346, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 19:31:23'),
(1347, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 19:31:50'),
(1348, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 19:40:30'),
(1349, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 19:42:49'),
(1350, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 19:43:01'),
(1351, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 19:44:36'),
(1352, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-09 19:44:51'),
(1353, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 19:48:08'),
(1354, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 19:48:46'),
(1355, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 19:49:52'),
(1356, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 19:52:17'),
(1357, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 20:30:16'),
(1358, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 20:33:46'),
(1359, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 20:34:36'),
(1360, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 20:34:40'),
(1361, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 20:37:18'),
(1362, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 20:40:19'),
(1363, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 20:40:28'),
(1364, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 20:45:41'),
(1365, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 20:46:05'),
(1366, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 20:46:42'),
(1367, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 20:46:57'),
(1368, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 20:47:52'),
(1369, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 20:48:26'),
(1370, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 20:49:27'),
(1371, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 20:53:02'),
(1372, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 20:56:08'),
(1373, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 20:56:52'),
(1374, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 21:01:51'),
(1375, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 21:03:36'),
(1376, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 21:04:15'),
(1377, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 21:08:47'),
(1378, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 21:10:00'),
(1379, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 21:13:42'),
(1380, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 21:17:29'),
(1381, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-09 21:21:56'),
(1382, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 06:19:16'),
(1383, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 06:21:28'),
(1384, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 06:22:37'),
(1385, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 06:22:53'),
(1386, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 06:27:50'),
(1387, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 06:28:14'),
(1388, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 06:31:36'),
(1389, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 06:31:41'),
(1390, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 06:32:22'),
(1391, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 06:35:16'),
(1392, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-10 06:44:42'),
(1393, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-10 06:44:46'),
(1394, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 06:48:02'),
(1395, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-10 06:48:53'),
(1396, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-10 06:50:21'),
(1397, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-10 06:55:41'),
(1398, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-10 06:59:03'),
(1399, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-10 07:00:25'),
(1400, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:03:08'),
(1401, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:04:38'),
(1402, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-10 07:05:30'),
(1403, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:08:14'),
(1404, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:11:01'),
(1405, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:15:45'),
(1406, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:15:48'),
(1407, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-10 07:16:12'),
(1408, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-10 07:21:43'),
(1409, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-10 07:22:29'),
(1410, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:25:06'),
(1411, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:25:27'),
(1412, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:25:34'),
(1413, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:25:41'),
(1414, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:27:11'),
(1415, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:29:12'),
(1416, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:29:23'),
(1417, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:36:10'),
(1418, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:37:01'),
(1419, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:37:30'),
(1420, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:38:07'),
(1421, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:38:21'),
(1422, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:39:38'),
(1423, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:39:47'),
(1424, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:50:23'),
(1425, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:50:46'),
(1426, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:51:30'),
(1427, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 07:54:42'),
(1428, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:01:31'),
(1429, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:05:06'),
(1430, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:08:09'),
(1431, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:08:36'),
(1432, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:15:52'),
(1433, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:16:08'),
(1434, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:18:21'),
(1435, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:18:35'),
(1436, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:20:43'),
(1437, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:23:42'),
(1438, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:25:01'),
(1439, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:25:09'),
(1440, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:25:51'),
(1441, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:33:21'),
(1442, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:33:39'),
(1443, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:34:08'),
(1444, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:34:48'),
(1445, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:35:26'),
(1446, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:44:02'),
(1447, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:48:25'),
(1448, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:50:10'),
(1449, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:50:26'),
(1450, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:52:52'),
(1451, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:53:08'),
(1452, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:56:52'),
(1453, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:57:34'),
(1454, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 08:58:08'),
(1455, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 09:02:01'),
(1456, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 09:10:51'),
(1457, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 09:16:49'),
(1458, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 09:21:58'),
(1459, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 09:26:31'),
(1460, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 09:27:55'),
(1461, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 09:29:09'),
(1462, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 09:29:56'),
(1463, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 09:57:26'),
(1464, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 10:04:24'),
(1465, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 10:08:41'),
(1466, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 10:09:49'),
(1467, NULL, 'Someone viewed a property', 16, 'property_view', '2026-03-10 10:33:04'),
(1468, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-10 10:42:17'),
(1469, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-10 11:09:25'),
(1470, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-10 11:15:19'),
(1471, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-10 11:15:38'),
(1472, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-10 11:15:53'),
(1473, NULL, 'Someone viewed a property', 24, 'property_view', '2026-03-10 11:22:56');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `earb_no` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `whatsapp_no` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `firstname`, `lastname`, `earb_no`, `email`, `phone`, `whatsapp_no`, `image`, `about`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 'Peter', 'Parker', 1234, 'peterparker@mail.com', '0799678123', '0799678321', '/uploads/1756462810_einstein.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2025-07-18 12:28:41', '2026-03-07 17:55:02', 0),
(3, 'Looti', 'Morgan', NULL, 'looti@mail.com', '0791929394', '0791929394', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2025-07-23 09:47:09', '2026-03-07 17:55:18', 0),
(4, 'Phil', 'Dunphy', NULL, 'dunphy@mail.com', '0791488881', '0791488881', '/uploads/1756456018_einstein.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2025-08-29 08:26:58', '2026-03-07 17:55:30', 0),
(5, 'Mitchell', 'Kimani', 45678, 'kimani@mail.com', '0789898989', '0789898989', '/uploads/1756462361_loft-studio.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2025-08-29 10:12:41', '2026-03-07 17:55:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `booking_date` date NOT NULL,
  `status` enum('pending','confirmed','cancelled') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `property_id`, `name`, `email`, `phone`, `booking_date`, `status`, `created_at`) VALUES
(1, 3, 3, 'John Doe', 'john@example.com', '1234567890', '2025-09-01', 'pending', '2025-09-01 08:31:04'),
(2, 3, 5, 'John Doe', 'john@example.com', '1234567890', '2025-09-01', 'confirmed', '2025-09-01 09:58:44'),
(3, 13, 16, 'Ted Jatang', 'ted@mail.com', '0712345678', '2025-11-29', 'confirmed', '2025-11-21 13:36:20');

-- --------------------------------------------------------

--
-- Table structure for table `email_logs`
--

CREATE TABLE `email_logs` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `response` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_logs`
--

INSERT INTO `email_logs` (`id`, `email`, `subject`, `message`, `status`, `response`, `created_at`) VALUES
(1, 'your-email@example.com', 'Your Loft Verification Code', '\n                <html>\n                <head>\n                    <title>Loft Verification Code</title>\n                </head>\n                <body>\n                    <div style=\'font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto; padding: 20px;\'>\n                        <h2 style=\'color: #333;\'>Your Loft Verification Code</h2>\n                        <p>Your verification code is:</p>\n                        <div style=\'background: #f5f5f5; padding: 20px; text-align: center; font-size: 24px; font-weight: bold; letter-spacing: 5px; margin: 20px 0;\'>\n                            950888\n                        </div>\n                        <p>This code will expire in 5 minutes.</p>\n                        <p><strong>Do not share this code with anyone.</strong></p>\n                        <hr style=\'margin: 30px 0;\'>\n                        <p style=\'color: #666; font-size: 12px;\'>\n                            If you didn\'t request this code, please ignore this email.\n                        </p>\n                    </div>\n                </body>\n                </html>\n            ', 'Failed', 'PHP mail() failed', '2025-12-28 07:15:42'),
(2, 'test@example.com', 'Your Loft Verification Code', '\n                <html>\n                <head>\n                    <title>Loft Verification Code</title>\n                </head>\n                <body>\n                    <div style=\'font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto; padding: 20px;\'>\n                        <h2 style=\'color: #333;\'>Your Loft Verification Code</h2>\n                        <p>Your verification code is:</p>\n                        <div style=\'background: #f5f5f5; padding: 20px; text-align: center; font-size: 24px; font-weight: bold; letter-spacing: 5px; margin: 20px 0;\'>\n                            111764\n                        </div>\n                        <p>This code will expire in 5 minutes.</p>\n                        <p><strong>Do not share this code with anyone.</strong></p>\n                        <hr style=\'margin: 30px 0;\'>\n                        <p style=\'color: #666; font-size: 12px;\'>\n                            If you didn\'t request this code, please ignore this email.\n                        </p>\n                    </div>\n                </body>\n                </html>\n            ', 'Development Mode - Success', 'Mock response', '2025-12-28 07:22:39'),
(3, 'test@example.com', 'Your Loft Verification Code', '\n                <html>\n                <head>\n                    <title>Loft Verification Code</title>\n                </head>\n                <body>\n                    <div style=\'font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto; padding: 20px;\'>\n                        <h2 style=\'color: #333;\'>Your Loft Verification Code</h2>\n                        <p>Your verification code is:</p>\n                        <div style=\'background: #f5f5f5; padding: 20px; text-align: center; font-size: 24px; font-weight: bold; letter-spacing: 5px; margin: 20px 0;\'>\n                            394613\n                        </div>\n                        <p>This code will expire in 5 minutes.</p>\n                        <p><strong>Do not share this code with anyone.</strong></p>\n                        <hr style=\'margin: 30px 0;\'>\n                        <p style=\'color: #666; font-size: 12px;\'>\n                            If you didn\'t request this code, please ignore this email.\n                        </p>\n                    </div>\n                </body>\n                </html>\n            ', 'Failed', 'PHP mail() failed', '2025-12-28 07:34:31'),
(4, 'aloopat51@gmail.com', 'Your Loft Verification Code', '\n                <html>\n                <head>\n                    <title>Loft Verification Code</title>\n                </head>\n                <body>\n                    <div style=\'font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto; padding: 20px;\'>\n                        <h2 style=\'color: #333;\'>Your Loft Verification Code</h2>\n                        <p>Your verification code is:</p>\n                        <div style=\'background: #f5f5f5; padding: 20px; text-align: center; font-size: 24px; font-weight: bold; letter-spacing: 5px; margin: 20px 0;\'>\n                            363614\n                        </div>\n                        <p>This code will expire in 5 minutes.</p>\n                        <p><strong>Do not share this code with anyone.</strong></p>\n                        <hr style=\'margin: 30px 0;\'>\n                        <p style=\'color: #666; font-size: 12px;\'>\n                            If you didn\'t request this code, please ignore this email.\n                        </p>\n                    </div>\n                </body>\n                </html>\n            ', 'Failed', 'PHP mail() failed', '2025-12-28 07:51:39'),
(5, 'friend@example.com', 'Your Loft Verification Code', '\n                <html>\n                <head>\n                    <title>Loft Verification Code</title>\n                </head>\n                <body>\n                    <div style=\'font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto; padding: 20px;\'>\n                        <h2 style=\'color: #333;\'>Your Loft Verification Code</h2>\n                        <p>Your verification code is:</p>\n                        <div style=\'background: #f5f5f5; padding: 20px; text-align: center; font-size: 24px; font-weight: bold; letter-spacing: 5px; margin: 20px 0;\'>\n                            719909\n                        </div>\n                        <p>This code will expire in 5 minutes.</p>\n                        <p><strong>Do not share this code with anyone.</strong></p>\n                        <hr style=\'margin: 30px 0;\'>\n                        <p style=\'color: #666; font-size: 12px;\'>\n                            If you didn\'t request this code, please ignore this email.\n                        </p>\n                    </div>\n                </body>\n                </html>\n            ', 'Failed', 'PHP mail() failed', '2025-12-28 07:52:00'),
(6, 'aloopat51@gmail.com', 'Your Loft Verification Code', '\n                <html>\n                <head>\n                    <title>Loft Verification Code</title>\n                </head>\n                <body>\n                    <div style=\'font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto; padding: 20px;\'>\n                        <h2 style=\'color: #333;\'>Your Loft Verification Code</h2>\n                        <p>Your verification code is:</p>\n                        <div style=\'background: #f5f5f5; padding: 20px; text-align: center; font-size: 24px; font-weight: bold; letter-spacing: 5px; margin: 20px 0;\'>\n                            751320\n                        </div>\n                        <p>This code will expire in 5 minutes.</p>\n                        <p><strong>Do not share this code with anyone.</strong></p>\n                        <hr style=\'margin: 30px 0;\'>\n                        <p style=\'color: #666; font-size: 12px;\'>\n                            If you didn\'t request this code, please ignore this email.\n                        </p>\n                    </div>\n                </body>\n                </html>\n            ', 'Failed', 'PHP mail() failed', '2025-12-28 07:52:04'),
(7, 'aloopat51@gmail.com', 'Your Loft Verification Code', '\n                <html>\n                <head>\n                    <title>Loft Verification Code</title>\n                </head>\n                <body>\n                    <div style=\'font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto; padding: 20px;\'>\n                        <h2 style=\'color: #333;\'>Your Loft Verification Code</h2>\n                        <p>Your verification code is:</p>\n                        <div style=\'background: #f5f5f5; padding: 20px; text-align: center; font-size: 24px; font-weight: bold; letter-spacing: 5px; margin: 20px 0;\'>\n                            839738\n                        </div>\n                        <p>This code will expire in 5 minutes.</p>\n                        <p><strong>Do not share this code with anyone.</strong></p>\n                        <hr style=\'margin: 30px 0;\'>\n                        <p style=\'color: #666; font-size: 12px;\'>\n                            If you didn\'t request this code, please ignore this email.\n                        </p>\n                    </div>\n                </body>\n                </html>\n            ', 'Failed', 'Both SMTP and PHP mail() failed', '2025-12-28 07:57:06'),
(8, 'aloopat51@gmail.com', 'Your Loft Verification Code', '\n                <html>\n                <head>\n                    <title>Loft Verification Code</title>\n                </head>\n                <body>\n                    <div style=\'font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto; padding: 20px;\'>\n                        <h2 style=\'color: #333;\'>Your Loft Verification Code</h2>\n                        <p>Your verification code is:</p>\n                        <div style=\'background: #f5f5f5; padding: 20px; text-align: center; font-size: 24px; font-weight: bold; letter-spacing: 5px; margin: 20px 0;\'>\n                            258050\n                        </div>\n                        <p>This code will expire in 5 minutes.</p>\n                        <p><strong>Do not share this code with anyone.</strong></p>\n                        <hr style=\'margin: 30px 0;\'>\n                        <p style=\'color: #666; font-size: 12px;\'>\n                            If you didn\'t request this code, please ignore this email.\n                        </p>\n                    </div>\n                </body>\n                </html>\n            ', 'Success', 'SMTP success', '2025-12-28 08:29:44'),
(9, 'aloopat51@gmail.com', 'Your Loft Verification Code', '\n                <html>\n                <head>\n                    <title>Loft Verification Code</title>\n                </head>\n                <body>\n                    <div style=\'font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto; padding: 20px;\'>\n                        <h2 style=\'color: #333;\'>Your Loft Verification Code</h2>\n                        <p>Your verification code is:</p>\n                        <div style=\'background: #f5f5f5; padding: 20px; text-align: center; font-size: 24px; font-weight: bold; letter-spacing: 5px; margin: 20px 0;\'>\n                            958550\n                        </div>\n                        <p>This code will expire in 5 minutes.</p>\n                        <p><strong>Do not share this code with anyone.</strong></p>\n                        <hr style=\'margin: 30px 0;\'>\n                        <p style=\'color: #666; font-size: 12px;\'>\n                            If you didn\'t request this code, please ignore this email.\n                        </p>\n                    </div>\n                </body>\n                </html>\n            ', 'Success', 'SMTP success', '2025-12-28 08:48:09'),
(10, 'aloopat51@gmail.com', 'Your Loft Verification Code', '\n                <html>\n                <head>\n                    <title>Loft Verification Code</title>\n                </head>\n                <body>\n                    <div style=\'font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto; padding: 20px;\'>\n                        <h2 style=\'color: #333;\'>Your Loft Verification Code</h2>\n                        <p>Your verification code is:</p>\n                        <div style=\'background: #f5f5f5; padding: 20px; text-align: center; font-size: 24px; font-weight: bold; letter-spacing: 5px; margin: 20px 0;\'>\n                            182610\n                        </div>\n                        <p>This code will expire in 5 minutes.</p>\n                        <p><strong>Do not share this code with anyone.</strong></p>\n                        <hr style=\'margin: 30px 0;\'>\n                        <p style=\'color: #666; font-size: 12px;\'>\n                            If you didn\'t request this code, please ignore this email.\n                        </p>\n                    </div>\n                </body>\n                </html>\n            ', 'Success', 'SMTP success', '2025-12-28 08:59:29'),
(11, 'imaniragwa@gmail.com', 'Your Loft Verification Code', '\n                <html>\n                <head>\n                    <title>Loft Verification Code</title>\n                </head>\n                <body>\n                    <div style=\'font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto; padding: 20px;\'>\n                        <h2 style=\'color: #333;\'>Your Loft Verification Code</h2>\n                        <p>Your verification code is:</p>\n                        <div style=\'background: #f5f5f5; padding: 20px; text-align: center; font-size: 24px; font-weight: bold; letter-spacing: 5px; margin: 20px 0;\'>\n                            921211\n                        </div>\n                        <p>This code will expire in 5 minutes.</p>\n                        <p><strong>Do not share this code with anyone.</strong></p>\n                        <hr style=\'margin: 30px 0;\'>\n                        <p style=\'color: #666; font-size: 12px;\'>\n                            If you didn\'t request this code, please ignore this email.\n                        </p>\n                    </div>\n                </body>\n                </html>\n            ', 'Success', 'SMTP success', '2025-12-28 09:00:30'),
(12, 'aloemo77@gmail.com', 'Your Loft Verification Code', '\n                <html>\n                <head>\n                    <title>Loft Verification Code</title>\n                </head>\n                <body>\n                    <div style=\'font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto; padding: 20px;\'>\n                        <h2 style=\'color: #333;\'>Your Loft Verification Code</h2>\n                        <p>Your verification code is:</p>\n                        <div style=\'background: #f5f5f5; padding: 20px; text-align: center; font-size: 24px; font-weight: bold; letter-spacing: 5px; margin: 20px 0;\'>\n                            717396\n                        </div>\n                        <p>This code will expire in 5 minutes.</p>\n                        <p><strong>Do not share this code with anyone.</strong></p>\n                        <hr style=\'margin: 30px 0;\'>\n                        <p style=\'color: #666; font-size: 12px;\'>\n                            If you didn\'t request this code, please ignore this email.\n                        </p>\n                    </div>\n                </body>\n                </html>\n            ', 'Success', 'SMTP success', '2025-12-28 09:01:28'),
(13, 'imaniragwa@gmail.com', 'Your Loft Verification Code', '\n                <html>\n                <head>\n                    <title>Loft Verification Code</title>\n                </head>\n                <body>\n                    <div style=\'font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto; padding: 20px;\'>\n                        <h2 style=\'color: #333;\'>Your Loft Verification Code</h2>\n                        <p>Your verification code is:</p>\n                        <div style=\'background: #f5f5f5; padding: 20px; text-align: center; font-size: 24px; font-weight: bold; letter-spacing: 5px; margin: 20px 0;\'>\n                            780065\n                        </div>\n                        <p>This code will expire in 5 minutes.</p>\n                        <p><strong>Do not share this code with anyone.</strong></p>\n                        <hr style=\'margin: 30px 0;\'>\n                        <p style=\'color: #666; font-size: 12px;\'>\n                            If you didn\'t request this code, please ignore this email.\n                        </p>\n                    </div>\n                </body>\n                </html>\n            ', 'Success', 'SMTP success', '2025-12-28 09:14:46'),
(14, 'aloemo77@gmail.com', 'Your Loft Verification Code', '\n                <html>\n                <head>\n                    <title>Loft Verification Code</title>\n                </head>\n                <body>\n                    <div style=\'font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto; padding: 20px;\'>\n                        <h2 style=\'color: #333;\'>Your Loft Verification Code</h2>\n                        <p>Your verification code is:</p>\n                        <div style=\'background: #f5f5f5; padding: 20px; text-align: center; font-size: 24px; font-weight: bold; letter-spacing: 5px; margin: 20px 0;\'>\n                            661160\n                        </div>\n                        <p>This code will expire in 5 minutes.</p>\n                        <p><strong>Do not share this code with anyone.</strong></p>\n                        <hr style=\'margin: 30px 0;\'>\n                        <p style=\'color: #666; font-size: 12px;\'>\n                            If you didn\'t request this code, please ignore this email.\n                        </p>\n                    </div>\n                </body>\n                </html>\n            ', 'Success', 'SMTP success', '2026-03-07 21:03:24'),
(15, 'aloemo77@gmail.com', 'Your Loft Verification Code', '\n                <html>\n                <head>\n                    <title>Loft Verification Code</title>\n                </head>\n                <body>\n                    <div style=\'font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto; padding: 20px;\'>\n                        <h2 style=\'color: #333;\'>Your Loft Verification Code</h2>\n                        <p>Your verification code is:</p>\n                        <div style=\'background: #f5f5f5; padding: 20px; text-align: center; font-size: 24px; font-weight: bold; letter-spacing: 5px; margin: 20px 0;\'>\n                            545761\n                        </div>\n                        <p>This code will expire in 5 minutes.</p>\n                        <p><strong>Do not share this code with anyone.</strong></p>\n                        <hr style=\'margin: 30px 0;\'>\n                        <p style=\'color: #666; font-size: 12px;\'>\n                            If you didn\'t request this code, please ignore this email.\n                        </p>\n                    </div>\n                </body>\n                </html>\n            ', 'Success', 'SMTP success', '2026-03-07 21:20:44'),
(16, 'aloemo77@gmail.com', 'Your Loft Verification Code', '\n                <html>\n                <head>\n                    <title>Loft Verification Code</title>\n                </head>\n                <body>\n                    <div style=\'font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto; padding: 20px;\'>\n                        <h2 style=\'color: #333;\'>Your Loft Verification Code</h2>\n                        <p>Your verification code is:</p>\n                        <div style=\'background: #f5f5f5; padding: 20px; text-align: center; font-size: 24px; font-weight: bold; letter-spacing: 5px; margin: 20px 0;\'>\n                            458267\n                        </div>\n                        <p>This code will expire in 5 minutes.</p>\n                        <p><strong>Do not share this code with anyone.</strong></p>\n                        <hr style=\'margin: 30px 0;\'>\n                        <p style=\'color: #666; font-size: 12px;\'>\n                            If you didn\'t request this code, please ignore this email.\n                        </p>\n                    </div>\n                </body>\n                </html>\n            ', 'Success', 'SMTP success', '2026-03-08 08:09:00');

-- --------------------------------------------------------

--
-- Table structure for table `email_otp_storage`
--

CREATE TABLE `email_otp_storage` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `attempts` int(11) DEFAULT 0,
  `verified` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_otp_storage`
--

INSERT INTO `email_otp_storage` (`id`, `email`, `otp`, `expires_at`, `attempts`, `verified`, `created_at`) VALUES
(17, 'aloemo77@gmail.com', '458267', '2026-03-08 08:09:16', 1, 1, '2026-03-08 08:08:57');

-- --------------------------------------------------------

--
-- Table structure for table `favorites_models`
--

CREATE TABLE `favorites_models` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites_properties`
--

CREATE TABLE `favorites_properties` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorites_properties`
--

INSERT INTO `favorites_properties` (`id`, `user_id`, `property_id`, `created_at`) VALUES
(3, 9, 19, '2025-11-07 09:19:48'),
(19, 9, 21, '2025-11-07 09:52:48'),
(38, 8, 19, '2025-11-19 06:49:42'),
(51, 9, 18, '2025-11-19 16:50:30'),
(96, 13, 18, '2025-11-25 06:54:45'),
(100, 9, 17, '2025-11-27 10:24:25'),
(111, 14, 16, '2025-12-28 11:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `furniture_models`
--

CREATE TABLE `furniture_models` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `size` varchar(255) NOT NULL,
  `material` varchar(255) NOT NULL,
  `units` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `seater` int(11) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `purchase_link` varchar(255) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `cloud_link` varchar(255) DEFAULT NULL,
  `in_stock` enum('In Stock','Out of Stock') NOT NULL DEFAULT 'In Stock',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `furniture_models`
--

INSERT INTO `furniture_models` (`id`, `name`, `description`, `image`, `likes`, `size`, `material`, `units`, `store_id`, `seater`, `price`, `purchase_link`, `category`, `cloud_link`, `in_stock`, `created_at`, `updated_at`, `is_deleted`) VALUES
(2, 'latifa sofa', 'A premium 3-seater sofa made of velvet fabric.', '/uploads/1756463645_sofa2.jpeg', 0, '180cm x 90cm x 80cm', 'Velvet', 5, 1, 3, 45000.50, 'https://store.example.com/products/luxury-sofa', 'sofas', 'https://cloud.example.com/models/sofa.glb', 'In Stock', '2025-07-23 14:02:27', '2025-08-29 10:34:05', 0),
(3, 'fluff carpet', 'New', '/uploads/1756463671_carpet2.jpg', 0, '80cm x 60cm', 'Fur', 1, 1, 0, 10000.00, 'https://test.com', 'Carpets', NULL, 'In Stock', '2025-08-28 14:58:16', '2025-08-29 10:34:31', 0),
(4, '1', '1', '/uploads/1756463711_table2.jpg', 0, '1', '1', 1, 1, 1, 1.00, 'https://new.com', 'lighting', NULL, 'In Stock', '2025-08-28 16:14:39', '2025-08-29 10:35:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loft_tours`
--

CREATE TABLE `loft_tours` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `tour_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('active','inactive','draft') DEFAULT 'draft',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loft_tours`
--

INSERT INTO `loft_tours` (`id`, `property_id`, `tour_name`, `description`, `status`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 16, 'Layer Metadata Test Tour', 'Testing layer metadata processing functionality', 'draft', 1, '2026-01-17 06:14:30', '2026-01-17 06:14:30', NULL),
(3, 16, 'Layer Metadata Test Tour', 'Testing layer metadata processing functionality', 'draft', 1, '2026-01-17 06:17:15', '2026-01-17 06:17:16', '2026-01-17 06:17:16'),
(4, 16, 'Layer Metadata Test Tour', 'Testing layer metadata processing functionality', 'draft', 1, '2026-01-17 06:21:09', '2026-01-17 06:21:10', '2026-01-17 06:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `loft_tour_analytics`
--

CREATE TABLE `loft_tour_analytics` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_id` varchar(100) DEFAULT NULL,
  `event_type` enum('tour_start','node_view','tour_complete','tour_exit') NOT NULL,
  `dwell_time` int(11) DEFAULT 0,
  `user_agent` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loft_tour_layers`
--

CREATE TABLE `loft_tour_layers` (
  `id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `layer_name` varchar(255) NOT NULL,
  `image_url` varchar(500) NOT NULL,
  `position_x` decimal(5,4) NOT NULL,
  `position_y` decimal(5,4) NOT NULL,
  `scale_factor` decimal(5,4) DEFAULT 1.0000,
  `parallax_factor` decimal(5,4) DEFAULT 0.5000,
  `rotation` decimal(8,4) DEFAULT 0.0000,
  `opacity` decimal(3,2) DEFAULT 1.00,
  `depth_order` int(11) DEFAULT 0,
  `visible` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loft_tour_layers`
--

INSERT INTO `loft_tour_layers` (`id`, `node_id`, `layer_name`, `image_url`, `position_x`, `position_y`, `scale_factor`, `parallax_factor`, `rotation`, `opacity`, `depth_order`, `visible`, `created_at`, `updated_at`) VALUES
(2, 3, 'welcome_sign', 'welcome_sign.png', 0.5000, 0.3000, 1.2000, 0.5000, 0.0000, 1.00, 0, 1, '2026-01-17 06:21:09', '2026-01-17 06:21:09'),
(3, 3, 'security_camera', 'security_camera.png', 0.8500, 0.2500, 0.8000, 0.3000, 15.0000, 0.90, 0, 1, '2026-01-17 06:21:10', '2026-01-17 06:21:10'),
(4, 4, 'sofa_highlight', 'sofa_highlight.png', 0.3000, 0.6000, 1.5000, 0.7000, 0.0000, 1.00, 0, 1, '2026-01-17 06:21:10', '2026-01-17 06:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `loft_tour_nodes`
--

CREATE TABLE `loft_tour_nodes` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `node_id` varchar(100) NOT NULL,
  `label` varchar(255) NOT NULL,
  `image_url` varchar(500) NOT NULL,
  `thumbnail_url` varchar(500) DEFAULT NULL,
  `next_node_id` varchar(100) DEFAULT NULL,
  `initial_yaw` decimal(8,4) DEFAULT 0.0000,
  `initial_pitch` decimal(8,4) DEFAULT 0.0000,
  `rotation_limit_h` int(11) DEFAULT 30,
  `rotation_limit_v` int(11) DEFAULT 10,
  `node_order` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loft_tour_nodes`
--

INSERT INTO `loft_tour_nodes` (`id`, `tour_id`, `node_id`, `label`, `image_url`, `thumbnail_url`, `next_node_id`, `initial_yaw`, `initial_pitch`, `rotation_limit_h`, `rotation_limit_v`, `node_order`, `created_at`, `updated_at`) VALUES
(2, 3, 'csv_node', 'CSV Node', 'csv_test.jpg', NULL, '', 0.0000, 0.0000, 30, 10, 0, '2026-01-17 06:17:15', '2026-01-17 06:17:15'),
(3, 4, 'entrance', 'Main Entrance', 'entrance.jpg', NULL, 'living_room', 0.0000, 0.0000, 30, 10, 0, '2026-01-17 06:21:09', '2026-01-17 06:21:09'),
(4, 4, 'living_room', 'Living Room', 'living_room.jpg', NULL, 'bedroom', 0.0000, 0.0000, 45, 15, 0, '2026-01-17 06:21:10', '2026-01-17 06:21:10'),
(5, 4, 'bedroom', 'Master Bedroom', 'bedroom.jpg', NULL, NULL, 0.0000, 0.0000, 30, 10, 0, '2026-01-17 06:21:10', '2026-01-17 06:21:10'),
(6, 4, 'csv_node', 'CSV Node', 'csv_test.jpg', NULL, '', 0.0000, 0.0000, 30, 10, 0, '2026-01-17 06:21:10', '2026-01-17 06:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `model_views`
--

CREATE TABLE `model_views` (
  `id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `viewed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `model_views`
--

INSERT INTO `model_views` (`id`, `model_id`, `viewed_at`) VALUES
(1, 2, '2025-09-01 19:48:23');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `type` enum('system','booking','payment','property','other') NOT NULL DEFAULT 'system',
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `message`, `type`, `is_read`, `created_at`) VALUES
(1, 1, 'Your viewing has been confirmed', 'system', 0, '2025-11-13 20:07:32'),
(2, 1, 'Your viewing has been confirmed', 'system', 0, '2025-11-13 20:14:11'),
(3, 2, 'Your viewing has been confirmed', 'system', 0, '2025-11-13 20:14:14'),
(4, 3, 'Your viewing has been confirmed', 'system', 0, '2025-11-13 20:14:16'),
(5, 7, 'Your viewing has been confirmed', 'system', 0, '2025-11-13 20:14:17'),
(6, 8, 'Your viewing has been confirmed', 'system', 1, '2025-11-13 20:14:19'),
(7, 9, 'Your viewing has been confirmed', 'system', 1, '2025-11-13 20:14:21'),
(8, 11, 'Your viewing has been confirmed', 'system', 0, '2025-11-13 20:14:23'),
(9, 1, 'Your viewing has been canceled', 'property', 0, '2025-11-13 20:16:32'),
(10, 2, 'Your viewing has been canceled', 'property', 0, '2025-11-13 20:16:34'),
(11, 3, 'Your viewing has been canceled', 'property', 0, '2025-11-13 20:16:37'),
(12, 7, 'Your viewing has been canceled', 'property', 0, '2025-11-13 20:16:39'),
(13, 8, 'Your viewing has been canceled', 'property', 0, '2025-11-13 20:16:41'),
(14, 9, 'Your viewing has been canceled', 'property', 1, '2025-11-13 20:16:43'),
(15, 11, 'Your viewing has been canceled', 'property', 0, '2025-11-13 20:16:45'),
(17, 8, 'Your viewing has been confirmed', 'system', 0, '2025-11-13 20:24:31'),
(18, 9, 'Your viewing has been confirmed', 'system', 0, '2025-11-13 20:26:45'),
(19, 13, 'Your viewing for Rafiki Lane Homes has been confirmed for November 29, 2025.', 'booking', 1, '2025-11-21 14:11:02'),
(20, 13, 'Your viewing for Rafiki Lane Homes is pending approval.', 'booking', 0, '2025-11-21 14:11:14'),
(21, 13, 'Your viewing for Rafiki Lane Homes has been confirmed for November 29, 2025.', 'booking', 0, '2025-11-21 14:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `otp_storage`
--

CREATE TABLE `otp_storage` (
  `id` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `attempts` int(11) DEFAULT 0,
  `verified` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otp_storage`
--

INSERT INTO `otp_storage` (`id`, `phone`, `otp`, `expires_at`, `attempts`, `verified`, `created_at`) VALUES
(69, '+254791488881', '804054', '2026-03-07 20:45:11', 1, 1, '2026-03-07 20:44:52'),
(70, '+254791488881', '336890', '2026-03-07 19:11:56', 0, 0, '2026-03-07 21:06:57');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_records`
--

CREATE TABLE `payment_records` (
  `id` int(11) NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `service_type` enum('listing_fee','verification_service','premium_listing','featured_listing') NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(3) DEFAULT 'KES',
  `payment_method` enum('mpesa','card','bank_transfer','paypal') NOT NULL,
  `payment_status` enum('pending','processing','completed','failed','refunded') DEFAULT 'pending',
  `payment_reference` varchar(100) NOT NULL,
  `gateway_reference` varchar(100) DEFAULT NULL,
  `gateway_response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Stores payment gateway response data' CHECK (json_valid(`gateway_response`)),
  `transaction_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `status` enum('For Sale','For Rent') NOT NULL DEFAULT 'For Sale',
  `beds` int(11) NOT NULL,
  `baths` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `description` text NOT NULL,
  `agent_id` int(11) NOT NULL,
  `facilities` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`facilities`)),
  `hero_image` varchar(255) DEFAULT NULL,
  `gallery` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `tour_link` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `currency` varchar(3) NOT NULL DEFAULT 'KES',
  `units` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`units`)),
  `verification_status` enum('pending','verified','rejected') NOT NULL DEFAULT 'pending',
  `verification_date` timestamp NULL DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tags`)),
  `floor_plan` varchar(255) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `is_suspended` tinyint(1) NOT NULL DEFAULT 0,
  `sus_reason` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `has_virtual_tour` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `type`, `status`, `beds`, `baths`, `size`, `description`, `agent_id`, `facilities`, `hero_image`, `gallery`, `tour_link`, `location`, `address`, `price`, `currency`, `units`, `verification_status`, `verification_date`, `rating`, `likes`, `tags`, `floor_plan`, `featured`, `is_suspended`, `sus_reason`, `created_at`, `updated_at`, `is_deleted`, `has_virtual_tour`) VALUES
(3, 'Malindi Homes', 'apartment', 'For Sale', 4, 5, 4800, 'Spacious villa with sea view.', 1, '[\"Pool\",\"Gym\",\"Garden\"]', NULL, '[]', 'https://virtualtour.example.com/123', 'Mombasa', 'Beach Road, Mombasa', 75000000.00, 'KES', NULL, 'pending', NULL, 5.0, 15, '[\"Luxury\",\"Beachfront\",\"Family\"]', 'https://yourdomain.com/floorplan.pdf', 1, 0, NULL, '2025-07-18 12:30:22', '2025-11-06 18:36:28', 1, 0),
(5, 'The Swahili Sands', 'mansion', 'For Sale', 5, 4, 4256, 'Spacious villa with sea view.', 1, '[\"Pool\",\"Garden\",\"Gym\"]', NULL, '[\"\\/uploads\\/68b1878aa170e__ (4).jpeg\",\"\\/uploads\\/68b1878aa1750__ (3).jpeg\",\"\\/uploads\\/68b1878aa177f__.jpeg\"]', 'https://virtualtour.example.com/123', 'Mombasa', 'Beach Road, Mombasa', 75000000.00, 'KES', NULL, 'pending', NULL, 5.0, 15, NULL, 'https://yourdomain.com/floorplan.pdf', 1, 0, NULL, '2025-07-18 12:54:36', '2025-11-19 12:07:21', 1, 0),
(8, 'Karibu Meadows', 'bungalow', 'For Sale', 5, 4, 4256, 'Spacious villa with sea view.', 1, '[\"Pool\",\"Garden\",\"Gym\"]', NULL, '[\"\\/uploads\\/68b1878aa170e__ (4).jpeg\",\"\\/uploads\\/68b1878aa1750__ (3).jpeg\",\"\\/uploads\\/68b1878aa177f__.jpeg\"]', 'https://virtualtour.example.com/123', 'Mombasa', 'Beach Road, Mombasa', 75000000.00, 'KES', NULL, 'pending', NULL, 5.0, 15, NULL, 'https://yourdomain.com/floorplan.pdf', 1, 0, NULL, '2025-07-18 13:48:25', '2025-11-19 12:07:21', 1, 0),
(9, 'latest', 'apartment', 'For Sale', 2, 2, 2344, 'new', 3, '[\"Security\",\"Pets\",\"Garden\"]', NULL, '[]', '', 'Kilifi', 'mtwapa', 300000.00, 'KES', NULL, 'pending', NULL, 3.1, 0, NULL, NULL, 0, 0, NULL, '2025-08-27 12:28:10', '2025-11-06 18:35:39', 1, 0),
(10, 'latest', 'apartment', 'For Sale', 2, 2, 2344, 'new', 3, '[\"Security\",\"Pets\",\"Garden\"]', NULL, '[]', '', 'Kilifi', 'mtwapa', 300000.00, 'KES', NULL, 'pending', NULL, 3.1, 0, NULL, NULL, 0, 0, NULL, '2025-08-27 12:28:40', '2025-11-06 18:35:24', 1, 0),
(11, 'new', 'villa', 'For Sale', 3, 4, 1234, 'new', 1, '[\"Air Conditioning\",\"Security\"]', NULL, '[\"\\/uploads\\/68aefc700e017__ (4).jpeg\",\"\\/uploads\\/68aefc700e0c8__ (3).jpeg\",\"\\/uploads\\/68aefc700e118__.jpeg\"]', '', 'Nairobi', 'Karen', 2000000.00, 'KES', NULL, 'pending', NULL, 4.0, 0, NULL, NULL, 1, 0, NULL, '2025-08-27 12:39:12', '2025-11-19 12:07:21', 1, 0),
(12, 'new', 'villa', 'For Sale', 3, 4, 1234, 'new', 1, '[\"Air Conditioning\",\"Security\"]', NULL, '[\"\\/uploads\\/68aefd0967d88__ (4).jpeg\",\"\\/uploads\\/68aefd0967e17__ (3).jpeg\",\"\\/uploads\\/68aefd0967e72__.jpeg\"]', '', 'Nairobi', 'Karen', 2000000.00, 'KES', NULL, 'pending', NULL, 4.0, 0, NULL, NULL, 1, 0, NULL, '2025-08-27 12:41:45', '2025-11-19 12:07:21', 1, 0),
(13, 'new', 'apartment', 'For Sale', 1, 1, 1, '1', 3, '[\"Security\",\"Pets\"]', NULL, '[]', '', 'jwnj', 'jkwbd', 12.00, 'KES', NULL, 'pending', NULL, 1.0, 0, NULL, NULL, 0, 1, 'T&C Violation', '2025-08-27 12:51:13', '2025-11-06 18:34:33', 1, 0),
(14, '1', 'apartment', 'For Sale', 1, 1, 1, '1', 3, '[\"Pets\"]', NULL, '[]', '', '1', '1', 1.00, 'KES', NULL, 'pending', NULL, 1.0, 0, NULL, NULL, 0, 0, NULL, '2025-08-27 12:54:41', '2025-08-29 10:51:43', 1, 0),
(15, 'Kilifi Homes', 'apartment', 'For Sale', 2, 3, 2500, 'New, fully furnished apartments.', 5, '[\"Pool\",\"Gym\",\"Parking\",\"Security\",\"Pets\"]', NULL, '[\"\\/uploads\\/68b1878aa170e__ (4).jpeg\",\"\\/uploads\\/68b1878aa1750__ (3).jpeg\",\"\\/uploads\\/68b1878aa177f__.jpeg\"]', '', 'Kilifi', 'Mtwapa', 15000000.00, 'KES', NULL, 'pending', NULL, 0.0, 0, 'null', NULL, 1, 0, NULL, '2025-08-29 10:57:14', '2025-11-19 12:07:21', 1, 0),
(16, 'Rafiki Lane Homes', 'villa', 'For Sale', 4, 3, 4605, 'It is a luxurious 4-bedroom townhouse nestled in the quiet, leafy suburb of Lavington. This elegant residence is part of a gated community offering modern urban living with a suburban charm. The home features a spacious sunken lounge, a separate dining area, a fully fitted kitchen with granite countertops, and all bedrooms ensuite—including a large master bedroom with a walk-in closet and private balcony. High ceilings and large windows ensure plenty of natural light throughout the home, while top-tier finishes add a touch of sophistication. Outside, the property boasts a private garden, a DSQ (domestic staff quarters), and two dedicated parking spots. The community enjoys 24/7 security, a backup generator, a borehole, and beautifully landscaped common areas. Located just minutes from top international schools, shopping malls, and hospitals, Lavista Townhouse offers a perfect balance of privacy, comfort, and convenience in one of Nairobi’s most prestigious neighborhoods.', 1, '[\"WiFi\",\"Pool\",\"Gym\",\"Parking\",\"Air Conditioning\"]', '/uploads/properties/691dfbaf461c6_1763572655-md.jpg', '[\"\\/uploads\\/properties\\/691db57cc2c73.jpg\"]', '', 'Lavington Nairobi', 'Off James Gichuru Road', 53000000.00, 'KES', '{\"available\":[\"1br\",\"2br\"],\"unavailable\":[],\"linked_properties\":{\"1br\":23,\"2br\":19}}', 'pending', NULL, 4.5, 0, '[\"\"]', NULL, 0, 0, NULL, '2025-11-06 17:08:11', '2026-03-07 11:28:12', 0, 0),
(17, 'Karibu Meadows', 'villa', 'For Sale', 2, 2, 999, 'It is a luxurious 4-bedroom townhouse nestled in the quiet, leafy suburb of Lavington. This elegant residence is part of a gated community offering modern urban living with a suburban charm. The home features a spacious sunken lounge, a separate dining area, a fully fitted kitchen with granite countertops, and all bedrooms ensuite—including a large master bedroom with a walk-in closet and private balcony. High ceilings and large windows ensure plenty of natural light throughout the home, while top-tier finishes add a touch of sophistication. Outside, the property boasts a private garden, a DSQ (domestic staff quarters), and two dedicated parking spots. The community enjoys 24/7 security, a backup generator, a borehole, and beautifully landscaped common areas. Located just minutes from top international schools, shopping malls, and hospitals, Lavista Townhouse offers a perfect balance of privacy, comfort, and convenience in one of Nairobi’s most prestigious neighborhoods.', 4, '[\"WiFi\",\"Pool\",\"Gym\",\"Parking\",\"Air Conditioning\",\"Security\",\"Pets\"]', '/uploads/properties/691dd7c86f73b_1763563464-md.jpg', '[\"\\/uploads\\/properties\\/691db57cce0ab.jpg\"]', '', 'Naivasha, Nakuru County', 'Near Lake Naivasha Resort, Karagita', 36000000.00, 'KES', NULL, 'pending', NULL, 4.0, 0, '[\"\"]', NULL, 0, 0, NULL, '2025-11-06 17:12:42', '2026-01-16 07:53:52', 0, 0),
(18, 'Umoja Ridge', 'apartment', 'For Rent', 1, 1, 889, 'It is a luxurious 4-bedroom townhouse nestled in the quiet, leafy suburb of Lavington. This elegant residence is part of a gated community offering modern urban living with a suburban charm. The home features a spacious sunken lounge, a separate dining area, a fully fitted kitchen with granite countertops, and all bedrooms ensuite—including a large master bedroom with a walk-in closet and private balcony. High ceilings and large windows ensure plenty of natural light throughout the home, while top-tier finishes add a touch of sophistication. Outside, the property boasts a private garden, a DSQ (domestic staff quarters), and two dedicated parking spots. The community enjoys 24/7 security, a backup generator, a borehole, and beautifully landscaped common areas. Located just minutes from top international schools, shopping malls, and hospitals, Lavista Townhouse offers a perfect balance of privacy, comfort, and convenience in one of Nairobi’s most prestigious neighborhoods.', 5, '[\"WiFi\",\"Pool\",\"Gym\",\"Parking\",\"Air Conditioning\",\"Security\",\"Pets\"]', '/uploads/properties/691deefe3297d_1763569406-md.jpg', '[\"\\/uploads\\/properties\\/691db57cd6fe5.jpg\"]', '', 'Nakuru', 'Along Kabarak Road, Near Olive Inn', 4560000.00, 'KES', NULL, 'pending', NULL, 2.2, 0, 'null', NULL, 0, 0, NULL, '2025-11-06 17:15:23', '2026-01-15 09:46:42', 0, 0),
(19, 'The Swahili Sands', 'apartment', 'For Sale', 1, 1, 889, 'It is a luxurious 4-bedroom townhouse nestled in the quiet, leafy suburb of Lavington. This elegant residence is part of a gated community offering modern urban living with a suburban charm. The home features a spacious sunken lounge, a separate dining area, a fully fitted kitchen with granite countertops, and all bedrooms ensuite—including a large master bedroom with a walk-in closet and private balcony. High ceilings and large windows ensure plenty of natural light throughout the home, while top-tier finishes add a touch of sophistication. Outside, the property boasts a private garden, a DSQ (domestic staff quarters), and two dedicated parking spots. The community enjoys 24/7 security, a backup generator, a borehole, and beautifully landscaped common areas. Located just minutes from top international schools, shopping malls, and hospitals, Lavista Townhouse offers a perfect balance of privacy, comfort, and convenience in one of Nairobi’s most prestigious neighborhoods.', 3, '[\"WiFi\",\"Pool\",\"Gym\",\"Parking\",\"Air Conditioning\",\"Security\",\"Pets\"]', '/uploads/properties/691df284ab9d3_1763570308-md.jpg', '[\"\\/uploads\\/properties\\/691db57ce260d.jpg\"]', '', 'Malindi, Kilifi County', 'Opposite Malindi Marine Park', 12000000.00, 'KES', NULL, 'pending', NULL, 2.9, 0, 'null', NULL, 0, 0, NULL, '2025-11-06 17:18:17', '2025-11-19 16:38:29', 0, 0),
(20, 'Zen Zanzi Suites', 'villa', 'For Rent', 3, 2, 2099, 'It is a luxurious 4-bedroom townhouse nestled in the quiet, leafy suburb of Lavington. This elegant residence is part of a gated community offering modern urban living with a suburban charm. The home features a spacious sunken lounge, a separate dining area, a fully fitted kitchen with granite countertops, and all bedrooms ensuite—including a large master bedroom with a walk-in closet and private balcony. High ceilings and large windows ensure plenty of natural light throughout the home, while top-tier finishes add a touch of sophistication. Outside, the property boasts a private garden, a DSQ (domestic staff quarters), and two dedicated parking spots. The community enjoys 24/7 security, a backup generator, a borehole, and beautifully landscaped common areas. Located just minutes from top international schools, shopping malls, and hospitals, Lavista Townhouse offers a perfect balance of privacy, comfort, and convenience in one of Nairobi’s most prestigious neighborhoods.', 1, '[\"WiFi\",\"Pool\",\"Gym\",\"Parking\",\"Air Conditioning\",\"Security\",\"Pets\"]', '/uploads/properties/691df2ec09704_1763570412-md.jpg', '[\"\\/uploads\\/properties\\/691db57cea5c7.jpg\"]', '', 'Upper Hill, Nairobi', 'Near One Plaza, Ngong Avenue', 75000.00, 'KES', NULL, 'pending', NULL, 4.7, 0, 'null', NULL, 0, 0, NULL, '2025-11-06 17:20:45', '2026-01-15 09:47:02', 0, 0),
(21, 'Watamu Haven', 'apartment', 'For Sale', 4, 3, 4605, 'It is a luxurious 4-bedroom townhouse nestled in the quiet, leafy suburb of Lavington. This elegant residence is part of a gated community offering modern urban living with a suburban charm. The home features a spacious sunken lounge, a separate dining area, a fully fitted kitchen with granite countertops, and all bedrooms ensuite—including a large master bedroom with a walk-in closet and private balcony. High ceilings and large windows ensure plenty of natural light throughout the home, while top-tier finishes add a touch of sophistication. Outside, the property boasts a private garden, a DSQ (domestic staff quarters), and two dedicated parking spots. The community enjoys 24/7 security, a backup generator, a borehole, and beautifully landscaped common areas. Located just minutes from top international schools, shopping malls, and hospitals, Lavista Townhouse offers a perfect balance of privacy, comfort, and convenience in one of Nairobi’s most prestigious neighborhoods.', 3, '[\"WiFi\",\"Pool\",\"Gym\",\"Parking\",\"Air Conditioning\",\"Security\",\"Pets\"]', '/uploads/properties/691df38275ead_1763570562-md.jpg', '[\"\\/uploads\\/properties\\/691db57d15123.jpg\"]', '', 'Watamu, Kilifi County', 'Near Watamu Beach', 120000.00, 'KES', NULL, 'pending', NULL, 3.5, 0, 'null', NULL, 0, 0, NULL, '2025-11-06 17:23:06', '2026-01-12 08:24:29', 0, 0),
(22, 'Kizingo Lofts', 'apartment', 'For Sale', 4, 3, 4605, 'It is a luxurious 4-bedroom townhouse nestled in the quiet, leafy suburb of Lavington. This elegant residence is part of a gated community offering modern urban living with a suburban charm. The home features a spacious sunken lounge, a separate dining area, a fully fitted kitchen with granite countertops, and all bedrooms ensuite—including a large master bedroom with a walk-in closet and private balcony. High ceilings and large windows ensure plenty of natural light throughout the home, while top-tier finishes add a touch of sophistication. Outside, the property boasts a private garden, a DSQ (domestic staff quarters), and two dedicated parking spots. The community enjoys 24/7 security, a backup generator, a borehole, and beautifully landscaped common areas. Located just minutes from top international schools, shopping malls, and hospitals, Lavista Townhouse offers a perfect balance of privacy, comfort, and convenience in one of Nairobi’s most prestigious neighborhoods.', 4, '[\"WiFi\",\"Pool\",\"Gym\",\"Parking\",\"Air Conditioning\",\"Security\",\"Pets\"]', '/uploads/properties/691df40b7f094_1763570699-md.jpg', '[\"\\/uploads\\/properties\\/691db57d206cb.jpeg\"]', '', 'Nyali, Mombasa', 'Palm Breeze Lane, Off Links Road', 53000000.00, 'KES', NULL, 'pending', NULL, 3.7, 0, 'null', NULL, 0, 0, NULL, '2025-11-06 17:25:12', '2025-11-19 16:45:00', 0, 0),
(23, 'Zuri Apartments', 'apartment', 'For Rent', 1, 2, 922, 'It is a luxurious 4-bedroom townhouse nestled in the quiet, leafy suburb of Lavington. This elegant residence is part of a gated community offering modern urban living with a suburban charm. The home features a spacious sunken lounge, a separate dining area, a fully fitted kitchen with granite countertops, and all bedrooms ensuite—including a large master bedroom with a walk-in closet and private balcony. High ceilings and large windows ensure plenty of natural light throughout the home, while top-tier finishes add a touch of sophistication. Outside, the property boasts a private garden, a DSQ (domestic staff quarters), and two dedicated parking spots. The community enjoys 24/7 security, a backup generator, a borehole, and beautifully landscaped common areas. Located just minutes from top international schools, shopping malls, and hospitals, Lavista Townhouse offers a perfect balance of privacy, comfort, and convenience in one of Nairobi’s most prestigious neighborhoods.', 5, '[\"WiFi\",\"Pool\",\"Gym\",\"Parking\",\"Air Conditioning\",\"Security\",\"Pets\"]', '/uploads/properties/691df4833bf3f_1763570819-md.jpg', '[\"\\/uploads\\/properties\\/691db57d2b5f7.jpeg\"]', '', 'Kilimani, Nairobi', 'Argwings Kodhek Road', 130000.00, 'KES', NULL, 'pending', NULL, 4.3, 0, 'null', NULL, 0, 0, NULL, '2025-11-06 17:27:26', '2026-01-15 09:47:26', 0, 0),
(24, 'Nova Palace', 'villa', 'For Rent', 4, 3, 4065, 'It is a luxurious 4-bedroom townhouse nestled in the quiet, leafy suburb of Lavington. This elegant residence is part of a gated community offering modern urban living with a suburban charm. The home features a spacious sunken lounge, a separate dining area, a fully fitted kitchen with granite countertops, and all bedrooms ensuite—including a large master bedroom with a walk-in closet and private balcony. High ceilings and large windows ensure plenty of natural light throughout the home, while top-tier finishes add a touch of sophistication. Outside, the property boasts a private garden, a DSQ (domestic staff quarters), and two dedicated parking spots. The community enjoys 24/7 security, a backup generator, a borehole, and beautifully landscaped common areas. Located just minutes from top international schools, shopping malls, and hospitals, Lavista Townhouse offers a perfect balance of privacy, comfort, and convenience in one of Nairobi’s most prestigious neighborhoods.', 4, '[\"WiFi\",\"Pool\",\"Gym\",\"Parking\",\"Air Conditioning\",\"Security\",\"Pets\"]', '/uploads/properties/691dfcee9b6f4_1763572974-md.jpg', '[\"\\/uploads\\/properties\\/691db57d383d6.jpeg\"]', '', 'Karen, Nairobi', 'Koitobos Road, off Karen Road', 53000000.00, 'KES', NULL, 'pending', NULL, 4.5, 0, 'null', NULL, 0, 0, NULL, '2025-11-06 17:29:30', '2026-01-15 09:47:41', 0, 0),
(25, 'Coral Reef Apartments', 'villa', 'For Sale', 4, 3, 4065, 'It is a luxurious 4-bedroom townhouse nestled in the quiet, leafy suburb of Lavington. This elegant residence is part of a gated community offering modern urban living with a suburban charm. The home features a spacious sunken lounge, a separate dining area, a fully fitted kitchen with granite countertops, and all bedrooms ensuite—including a large master bedroom with a walk-in closet and private balcony. High ceilings and large windows ensure plenty of natural light throughout the home, while top-tier finishes add a touch of sophistication. Outside, the property boasts a private garden, a DSQ (domestic staff quarters), and two dedicated parking spots. The community enjoys 24/7 security, a backup generator, a borehole, and beautifully landscaped common areas. Located just minutes from top international schools, shopping malls, and hospitals, Lavista Townhouse offers a perfect balance of privacy, comfort, and convenience in one of Nairobi’s most prestigious neighborhoods.', 3, '[\"WiFi\",\"Pool\",\"Gym\",\"Parking\",\"Air Conditioning\",\"Security\",\"Pets\"]', '/uploads/properties/691df510f138e_1763570960-md.jpg', '[\"\\/uploads\\/properties\\/691db57d42413.jpeg\"]', '', 'Nyali, Mombasa', 'Neem Avenue, off Links Road', 53000000.00, 'KES', NULL, 'pending', NULL, 4.4, 0, 'null', NULL, 0, 0, NULL, '2025-11-06 17:31:31', '2025-11-19 16:49:21', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `property_images`
--

CREATE TABLE `property_images` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `file_base` varchar(191) NOT NULL COMMENT 'Base filename without size suffix or extension',
  `category` varchar(50) DEFAULT 'other' COMMENT 'livingroom, kitchen, balcony, bedroom1, bedroom2, bathroom, exterior, other',
  `is_hero` tinyint(1) DEFAULT 0 COMMENT 'Is this the hero/main image',
  `order_index` int(11) DEFAULT 0 COMMENT 'Display order within category',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property_images`
--

INSERT INTO `property_images` (`id`, `property_id`, `file_base`, `category`, `is_hero`, `order_index`, `created_at`, `updated_at`) VALUES
(188, 16, '691dd2e5985e3_1763562213', 'livingroom', 0, 0, '2025-11-19 14:23:34', NULL),
(191, 16, '691dd2e774cda_1763562215', 'kitchen', 0, 1, '2025-11-19 14:23:36', NULL),
(192, 16, '691dd2e80ec44_1763562216', 'bedroom2', 0, 1, '2025-11-19 14:23:36', NULL),
(193, 16, '691dd2e8cf5e7_1763562216', 'bedroom1', 0, 1, '2025-11-19 14:23:37', NULL),
(194, 16, '691dd2e96068f_1763562217', 'bathroom', 0, 2, '2025-11-19 14:23:38', NULL),
(195, 17, '691dd7c86f73b_1763563464', 'other', 1, 0, '2025-11-19 14:44:24', NULL),
(196, 17, '691dd7c8c5d64_1763563464', 'other', 0, 1, '2025-11-19 14:44:25', NULL),
(197, 17, '691dd7c931f9e_1763563465', 'other', 0, 2, '2025-11-19 14:44:25', NULL),
(198, 17, '691dd7c9b5615_1763563465', 'other', 0, 3, '2025-11-19 14:44:26', NULL),
(199, 17, '691dd7ca29a73_1763563466', 'other', 0, 4, '2025-11-19 14:44:26', NULL),
(200, 17, '691dd7ca86ae8_1763563466', 'other', 0, 5, '2025-11-19 14:44:26', NULL),
(201, 17, '691dd7cae92f9_1763563466', 'exterior', 0, 0, '2025-11-19 14:44:27', NULL),
(202, 18, '691deefe3297d_1763569406', 'other', 1, 0, '2025-11-19 16:23:26', NULL),
(203, 18, '691deefeaf675_1763569406', 'other', 0, 1, '2025-11-19 16:23:27', NULL),
(204, 18, '691deeff583d4_1763569407', 'other', 0, 2, '2025-11-19 16:23:27', NULL),
(205, 18, '691deeffe3056_1763569407', 'other', 0, 3, '2025-11-19 16:23:28', NULL),
(206, 18, '691def007c610_1763569408', 'other', 0, 4, '2025-11-19 16:23:29', NULL),
(207, 18, '691def0112e8c_1763569409', 'other', 0, 5, '2025-11-19 16:23:29', NULL),
(208, 18, '691def0184976_1763569409', 'other', 0, 6, '2025-11-19 16:23:30', NULL),
(209, 19, '691def68706a7_1763569512', 'other', 0, 0, '2025-11-19 16:25:13', '2025-11-19 16:38:29'),
(210, 19, '691def6925a87_1763569513', 'other', 0, 1, '2025-11-19 16:25:13', NULL),
(211, 19, '691def69e5687_1763569513', 'other', 0, 2, '2025-11-19 16:25:14', NULL),
(212, 19, '691def6a6e6ba_1763569514', 'other', 0, 3, '2025-11-19 16:25:14', NULL),
(213, 19, '691def6ad998f_1763569514', 'other', 0, 4, '2025-11-19 16:25:15', NULL),
(214, 19, '691def6b55b52_1763569515', 'other', 0, 5, '2025-11-19 16:25:15', NULL),
(215, 19, '691def6be3399_1763569515', 'other', 0, 6, '2025-11-19 16:25:16', NULL),
(216, 19, '691df284ab9d3_1763570308', 'other', 1, 7, '2025-11-19 16:38:29', NULL),
(217, 19, '691df28533ad4_1763570309', 'exterior', 0, 0, '2025-11-19 16:38:29', NULL),
(218, 19, '691df285b7059_1763570309', 'livingroom', 0, 0, '2025-11-19 16:38:30', NULL),
(219, 19, '691df28657607_1763570310', 'bathroom', 0, 0, '2025-11-19 16:38:30', NULL),
(220, 19, '691df286c9279_1763570310', 'other', 0, 8, '2025-11-19 16:38:31', NULL),
(221, 19, '691df28768cc8_1763570311', 'other', 0, 9, '2025-11-19 16:38:31', NULL),
(222, 19, '691df287f2a22_1763570311', 'bathroom', 0, 1, '2025-11-19 16:38:32', NULL),
(223, 20, '691df2ec09704_1763570412', 'other', 1, 0, '2025-11-19 16:40:12', NULL),
(224, 20, '691df2eca8253_1763570412', 'other', 0, 1, '2025-11-19 16:40:13', NULL),
(225, 20, '691df2ed44379_1763570413', 'other', 0, 2, '2025-11-19 16:40:13', NULL),
(226, 20, '691df2edcdef1_1763570413', 'other', 0, 3, '2025-11-19 16:40:14', NULL),
(227, 20, '691df2ee459eb_1763570414', 'other', 0, 4, '2025-11-19 16:40:14', NULL),
(228, 20, '691df2eeb6dc7_1763570414', 'other', 0, 5, '2025-11-19 16:40:15', NULL),
(229, 20, '691df2ef3fdb3_1763570415', 'other', 0, 6, '2025-11-19 16:40:16', NULL),
(230, 21, '691df38275ead_1763570562', 'other', 1, 0, '2025-11-19 16:42:43', NULL),
(231, 21, '691df3831f2c8_1763570563', 'other', 0, 1, '2025-11-19 16:42:43', NULL),
(232, 21, '691df383bac74_1763570563', 'other', 0, 2, '2025-11-19 16:42:44', NULL),
(233, 21, '691df38461bc1_1763570564', 'other', 0, 3, '2025-11-19 16:42:44', NULL),
(234, 21, '691df384db16a_1763570564', 'other', 0, 4, '2025-11-19 16:42:45', NULL),
(235, 21, '691df38540029_1763570565', 'other', 0, 5, '2025-11-19 16:42:45', NULL),
(236, 21, '691df385a8e44_1763570565', 'other', 0, 6, '2025-11-19 16:42:46', NULL),
(237, 22, '691df40b7f094_1763570699', 'other', 1, 0, '2025-11-19 16:45:00', NULL),
(238, 22, '691df40c1b29d_1763570700', 'other', 0, 1, '2025-11-19 16:45:00', NULL),
(239, 22, '691df40c98e2e_1763570700', 'other', 0, 2, '2025-11-19 16:45:01', NULL),
(240, 22, '691df40d0ba40_1763570701', 'other', 0, 3, '2025-11-19 16:45:01', NULL),
(241, 22, '691df40d77a32_1763570701', 'other', 0, 4, '2025-11-19 16:45:02', NULL),
(242, 22, '691df40e0753c_1763570702', 'other', 0, 5, '2025-11-19 16:45:02', NULL),
(243, 22, '691df40e77a23_1763570702', 'other', 0, 6, '2025-11-19 16:45:03', NULL),
(244, 23, '691df47fd0581_1763570815', 'other', 0, 0, '2025-11-19 16:46:56', NULL),
(245, 23, '691df4803a92b_1763570816', 'other', 0, 1, '2025-11-19 16:46:56', NULL),
(246, 23, '691df480d0423_1763570816', 'other', 0, 2, '2025-11-19 16:46:57', NULL),
(247, 23, '691df4815e47c_1763570817', 'other', 0, 3, '2025-11-19 16:46:57', NULL),
(248, 23, '691df481de630_1763570817', 'other', 0, 4, '2025-11-19 16:46:58', NULL),
(249, 23, '691df48267a3c_1763570818', 'other', 0, 5, '2025-11-19 16:46:59', NULL),
(250, 23, '691df4833bf3f_1763570819', 'other', 1, 6, '2025-11-19 16:46:59', NULL),
(251, 25, '691df50dc4d12_1763570957', 'other', 0, 0, '2025-11-19 16:49:18', NULL),
(252, 25, '691df50e35b25_1763570958', 'other', 0, 1, '2025-11-19 16:49:18', NULL),
(253, 25, '691df50eabdfe_1763570958', 'other', 0, 2, '2025-11-19 16:49:19', NULL),
(254, 25, '691df50f2dcf6_1763570959', 'other', 0, 3, '2025-11-19 16:49:19', NULL),
(255, 25, '691df50fadad2_1763570959', 'other', 0, 4, '2025-11-19 16:49:20', NULL),
(256, 25, '691df51042251_1763570960', 'other', 0, 5, '2025-11-19 16:49:20', NULL),
(257, 25, '691df510f138e_1763570960', 'kitchen', 1, 0, '2025-11-19 16:49:21', NULL),
(258, 16, '691dfbaf461c6_1763572655', 'other', 1, 0, '2025-11-19 17:17:35', NULL),
(261, 16, '691dfbb02b9ec_1763572656', 'other', 0, 3, '2025-11-19 17:17:36', NULL),
(265, 24, '691dfcecb2c83_1763572972', 'other', 0, 0, '2025-11-19 17:22:52', NULL),
(266, 24, '691dfced05b1d_1763572973', 'other', 0, 1, '2025-11-19 17:22:53', NULL),
(267, 24, '691dfced446ef_1763572973', 'other', 0, 2, '2025-11-19 17:22:53', NULL),
(268, 24, '691dfced80d2c_1763572973', 'other', 0, 3, '2025-11-19 17:22:53', NULL),
(269, 24, '691dfcedbd61e_1763572973', 'other', 0, 4, '2025-11-19 17:22:54', NULL),
(270, 24, '691dfcee34d1d_1763572974', 'other', 0, 5, '2025-11-19 17:22:54', NULL),
(271, 24, '691dfcee9b6f4_1763572974', 'other', 1, 6, '2025-11-19 17:22:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_reviews`
--

CREATE TABLE `property_reviews` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `likes` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property_reviews`
--

INSERT INTO `property_reviews` (`id`, `property_id`, `user_id`, `review`, `rating`, `likes`, `created_at`, `updated_at`) VALUES
(1, 17, 13, 'New comment', NULL, 1, '2025-11-18 17:56:23', '2025-11-19 05:54:00'),
(2, 17, 13, 'haha', NULL, 1, '2025-11-18 18:08:05', '2025-11-19 05:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `property_views`
--

CREATE TABLE `property_views` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `viewed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property_views`
--

INSERT INTO `property_views` (`id`, `property_id`, `viewed_at`) VALUES
(1, 3, '2025-09-01 19:45:00'),
(2, 3, '2025-09-01 19:53:18'),
(3, 3, '2025-09-02 10:24:27'),
(4, 3, '2025-09-02 10:25:16'),
(5, 3, '2025-09-02 10:26:18'),
(6, 3, '2025-09-02 10:29:03'),
(7, 3, '2025-09-02 10:37:00'),
(8, 3, '2025-09-02 10:43:26'),
(9, 3, '2025-09-02 10:57:49'),
(11, 22, '2025-11-27 10:27:51'),
(12, 22, '2025-11-27 10:42:13'),
(13, 16, '2025-12-20 19:05:15'),
(14, 21, '2025-12-20 19:06:19'),
(15, 16, '2025-12-20 19:09:07'),
(16, 16, '2025-12-20 19:11:22'),
(17, 16, '2025-12-20 19:15:26'),
(18, 16, '2025-12-20 19:33:37'),
(19, 16, '2025-12-27 08:07:53'),
(20, 16, '2025-12-28 10:08:01'),
(21, 18, '2025-12-28 10:08:21'),
(22, 17, '2025-12-28 10:25:03'),
(23, 17, '2025-12-28 10:25:06'),
(24, 20, '2025-12-28 10:59:12'),
(25, 20, '2025-12-28 11:00:00'),
(26, 16, '2025-12-28 11:11:59'),
(27, 16, '2025-12-28 11:24:05'),
(28, 16, '2025-12-28 11:24:18'),
(29, 16, '2025-12-28 12:27:55'),
(30, 17, '2025-12-28 12:31:34'),
(31, 17, '2025-12-28 13:12:58'),
(32, 17, '2025-12-28 13:13:27'),
(33, 17, '2025-12-28 13:31:28'),
(34, 16, '2025-12-28 15:27:39'),
(35, 16, '2025-12-28 15:29:04'),
(36, 22, '2025-12-28 15:30:12'),
(37, 16, '2025-12-28 19:43:04'),
(38, 16, '2025-12-28 19:45:11'),
(39, 16, '2025-12-28 19:57:57'),
(40, 16, '2025-12-29 07:15:58'),
(41, 16, '2025-12-29 07:39:22'),
(42, 16, '2025-12-29 07:39:45'),
(43, 17, '2025-12-29 07:40:50'),
(44, 16, '2025-12-29 08:40:02'),
(45, 25, '2025-12-29 09:21:23'),
(46, 22, '2025-12-29 09:31:45'),
(47, 21, '2025-12-29 09:55:27'),
(48, 21, '2025-12-29 09:57:32'),
(49, 18, '2025-12-31 07:35:14'),
(50, 17, '2025-12-31 08:05:32'),
(51, 16, '2026-01-02 09:30:29'),
(52, 21, '2026-01-02 09:34:30'),
(53, 16, '2026-01-08 05:27:57'),
(54, 17, '2026-01-10 10:53:36'),
(55, 17, '2026-01-10 10:53:46'),
(56, 16, '2026-01-10 10:55:37'),
(57, 20, '2026-01-10 10:57:29'),
(58, 16, '2026-01-10 10:57:38'),
(59, 18, '2026-01-10 11:11:37'),
(60, 24, '2026-01-10 11:16:56'),
(61, 24, '2026-01-10 11:29:59'),
(62, 25, '2026-01-10 11:30:11'),
(63, 25, '2026-01-10 11:35:49'),
(64, 17, '2026-01-10 11:36:11'),
(65, 17, '2026-01-10 11:37:49'),
(66, 17, '2026-01-10 11:54:58'),
(67, 24, '2026-01-11 10:12:40'),
(68, 17, '2026-01-11 10:14:53'),
(69, 17, '2026-01-11 10:20:35'),
(70, 17, '2026-01-11 10:22:29'),
(71, 17, '2026-01-11 10:22:58'),
(72, 17, '2026-01-11 10:24:34'),
(73, 17, '2026-01-11 10:24:55'),
(74, 25, '2026-01-11 10:25:22'),
(75, 24, '2026-01-11 10:25:48'),
(76, 16, '2026-01-11 10:46:40'),
(77, 23, '2026-01-11 10:49:30'),
(78, 24, '2026-01-11 12:10:12'),
(79, 24, '2026-01-11 12:14:26'),
(80, 24, '2026-01-11 12:14:46'),
(81, 24, '2026-01-11 12:16:00'),
(82, 24, '2026-01-11 12:16:37'),
(83, 24, '2026-01-11 12:17:10'),
(84, 24, '2026-01-11 12:18:39'),
(85, 24, '2026-01-11 12:19:04'),
(86, 24, '2026-01-11 12:20:32'),
(87, 24, '2026-01-11 12:26:32'),
(88, 24, '2026-01-11 12:26:59'),
(89, 24, '2026-01-11 12:27:31'),
(90, 24, '2026-01-11 12:28:06'),
(91, 24, '2026-01-11 12:28:24'),
(92, 24, '2026-01-11 12:43:16'),
(93, 24, '2026-01-11 12:43:38'),
(94, 24, '2026-01-11 12:53:40'),
(95, 24, '2026-01-11 12:53:56'),
(96, 24, '2026-01-11 12:54:14'),
(97, 24, '2026-01-11 12:54:47'),
(98, 20, '2026-01-11 12:55:22'),
(99, 20, '2026-01-11 12:56:47'),
(100, 25, '2026-01-11 12:57:49'),
(101, 16, '2026-01-11 12:58:18'),
(102, 16, '2026-01-11 13:07:15'),
(103, 16, '2026-01-11 13:08:32'),
(104, 16, '2026-01-11 13:15:34'),
(105, 16, '2026-01-11 13:16:00'),
(106, 16, '2026-01-11 13:17:28'),
(107, 16, '2026-01-11 13:19:44'),
(108, 16, '2026-01-11 13:20:43'),
(109, 16, '2026-01-11 13:21:16'),
(110, 16, '2026-01-11 13:21:42'),
(111, 16, '2026-01-11 13:23:19'),
(112, 16, '2026-01-11 13:25:01'),
(113, 16, '2026-01-11 13:27:15'),
(114, 16, '2026-01-11 13:28:29'),
(115, 16, '2026-01-11 13:28:56'),
(116, 16, '2026-01-11 13:29:19'),
(117, 16, '2026-01-11 13:29:56'),
(118, 16, '2026-01-11 13:30:40'),
(119, 16, '2026-01-11 13:31:20'),
(120, 16, '2026-01-11 13:31:48'),
(121, 16, '2026-01-11 13:32:20'),
(122, 16, '2026-01-11 13:33:15'),
(123, 16, '2026-01-11 13:33:34'),
(124, 16, '2026-01-11 13:34:17'),
(125, 16, '2026-01-11 13:35:10'),
(126, 16, '2026-01-11 13:35:31'),
(127, 16, '2026-01-11 13:37:21'),
(128, 16, '2026-01-11 13:39:38'),
(129, 16, '2026-01-11 13:40:23'),
(130, 16, '2026-01-11 13:44:43'),
(131, 16, '2026-01-11 13:45:56'),
(132, 16, '2026-01-11 13:46:54'),
(133, 16, '2026-01-11 13:58:47'),
(134, 16, '2026-01-11 13:58:57'),
(135, 16, '2026-01-11 14:01:19'),
(136, 16, '2026-01-11 14:01:27'),
(137, 24, '2026-01-11 14:13:00'),
(138, 22, '2026-01-11 14:14:44'),
(139, 25, '2026-01-11 14:14:58'),
(140, 25, '2026-01-11 14:22:29'),
(141, 25, '2026-01-11 14:22:50'),
(142, 17, '2026-01-11 14:23:42'),
(143, 17, '2026-01-11 14:25:09'),
(144, 17, '2026-01-11 14:25:29'),
(145, 17, '2026-01-11 14:26:36'),
(146, 23, '2026-01-11 14:27:21'),
(147, 23, '2026-01-11 14:27:44'),
(148, 23, '2026-01-11 14:30:37'),
(149, 23, '2026-01-11 14:31:07'),
(150, 23, '2026-01-11 14:32:05'),
(151, 23, '2026-01-11 14:32:28'),
(152, 23, '2026-01-11 14:32:54'),
(153, 23, '2026-01-11 14:39:28'),
(154, 18, '2026-01-11 14:40:08'),
(155, 18, '2026-01-11 14:43:26'),
(156, 16, '2026-01-11 14:43:48'),
(157, 17, '2026-01-11 14:45:40'),
(158, 16, '2026-01-11 14:46:18'),
(159, 16, '2026-01-11 14:51:51'),
(160, 16, '2026-01-11 14:53:18'),
(161, 17, '2026-01-11 14:53:31'),
(162, 17, '2026-01-11 14:56:37'),
(163, 17, '2026-01-11 15:12:45'),
(164, 18, '2026-01-11 15:55:14'),
(165, 17, '2026-01-11 15:55:37'),
(166, 16, '2026-01-11 20:00:02'),
(167, 16, '2026-01-11 20:00:12'),
(168, 16, '2026-01-11 20:03:44'),
(169, 16, '2026-01-11 20:05:27'),
(170, 16, '2026-01-11 20:10:56'),
(171, 16, '2026-01-11 20:11:02'),
(172, 25, '2026-01-11 20:11:10'),
(173, 24, '2026-01-11 20:11:17'),
(174, 17, '2026-01-11 20:11:25'),
(175, 25, '2026-01-11 20:11:33'),
(176, 18, '2026-01-11 20:11:40'),
(177, 18, '2026-01-11 20:29:02'),
(178, 18, '2026-01-11 20:32:34'),
(179, 18, '2026-01-11 20:33:40'),
(180, 20, '2026-01-11 20:34:50'),
(181, 20, '2026-01-11 20:35:47'),
(182, 20, '2026-01-11 20:37:02'),
(183, 20, '2026-01-11 20:43:14'),
(184, 20, '2026-01-11 20:43:41'),
(185, 20, '2026-01-11 20:45:43'),
(186, 20, '2026-01-11 20:47:15'),
(187, 20, '2026-01-11 20:48:03'),
(188, 20, '2026-01-11 20:50:45'),
(189, 20, '2026-01-11 20:53:12'),
(190, 20, '2026-01-11 20:53:36'),
(191, 20, '2026-01-11 20:54:29'),
(192, 17, '2026-01-11 20:57:23'),
(193, 17, '2026-01-11 21:03:05'),
(194, 17, '2026-01-11 21:03:19'),
(195, 17, '2026-01-11 21:03:43'),
(196, 17, '2026-01-11 21:05:02'),
(197, 17, '2026-01-11 21:06:17'),
(198, 17, '2026-01-11 21:14:14'),
(199, 17, '2026-01-11 21:15:33'),
(200, 21, '2026-01-11 21:16:20'),
(201, 21, '2026-01-12 05:31:52'),
(202, 17, '2026-01-12 05:37:53'),
(203, 17, '2026-01-12 05:39:55'),
(204, 17, '2026-01-12 05:48:04'),
(205, 16, '2026-01-12 05:51:29'),
(206, 24, '2026-01-12 06:27:46'),
(207, 24, '2026-01-12 06:30:01'),
(208, 24, '2026-01-12 06:44:38'),
(209, 24, '2026-01-12 06:49:42'),
(210, 25, '2026-01-12 06:51:23'),
(211, 25, '2026-01-12 06:54:04'),
(212, 25, '2026-01-12 06:54:16'),
(213, 25, '2026-01-12 06:54:38'),
(214, 25, '2026-01-12 06:55:44'),
(215, 25, '2026-01-12 06:56:04'),
(216, 25, '2026-01-12 06:56:36'),
(217, 25, '2026-01-12 06:56:56'),
(218, 16, '2026-01-12 07:26:51'),
(219, 21, '2026-01-12 07:27:22'),
(220, 21, '2026-01-12 07:40:19'),
(221, 21, '2026-01-12 07:40:47'),
(222, 21, '2026-01-12 07:41:14'),
(223, 21, '2026-01-12 07:52:14'),
(224, 21, '2026-01-12 08:02:37'),
(225, 21, '2026-01-12 08:13:09'),
(226, 21, '2026-01-12 08:14:14'),
(227, 21, '2026-01-12 08:24:08'),
(228, 21, '2026-01-12 08:30:39'),
(229, 21, '2026-01-12 08:45:17'),
(230, 21, '2026-01-12 08:49:01'),
(231, 16, '2026-01-12 08:49:35'),
(232, 16, '2026-01-12 08:50:17'),
(233, 17, '2026-01-12 08:51:00'),
(234, 17, '2026-01-12 09:34:51'),
(235, 17, '2026-01-12 09:35:22'),
(236, 24, '2026-01-12 09:36:06'),
(237, 17, '2026-01-12 09:36:24'),
(238, 18, '2026-01-12 09:36:44'),
(239, 16, '2026-01-12 10:03:06'),
(240, 16, '2026-01-12 10:05:35'),
(241, 24, '2026-01-12 10:22:37'),
(242, 24, '2026-01-12 10:37:31'),
(243, 16, '2026-01-12 10:48:08'),
(244, 16, '2026-01-12 10:57:29'),
(245, 17, '2026-01-12 10:58:35'),
(246, 17, '2026-01-12 11:05:45'),
(247, 16, '2026-01-12 11:14:53'),
(248, 24, '2026-01-12 11:15:09'),
(249, 24, '2026-01-12 11:19:51'),
(250, 24, '2026-01-12 11:34:18'),
(251, 24, '2026-01-12 11:34:56'),
(252, 24, '2026-01-12 11:40:46'),
(253, 24, '2026-01-12 11:42:02'),
(254, 16, '2026-01-12 11:51:34'),
(255, 23, '2026-01-12 11:53:39'),
(256, 23, '2026-01-12 11:54:11'),
(257, 16, '2026-01-12 11:55:52'),
(258, 24, '2026-01-12 11:58:45'),
(259, 16, '2026-01-12 12:10:56'),
(260, 19, '2026-01-12 17:48:02'),
(261, 21, '2026-01-12 19:32:46'),
(262, 16, '2026-01-13 06:24:52'),
(263, 17, '2026-01-13 06:27:50'),
(264, 17, '2026-01-13 06:28:27'),
(265, 17, '2026-01-13 06:39:29'),
(266, 21, '2026-01-13 07:13:06'),
(267, 25, '2026-01-13 07:13:38'),
(268, 25, '2026-01-13 07:14:05'),
(269, 21, '2026-01-13 07:14:12'),
(270, 24, '2026-01-14 16:21:26'),
(271, 20, '2026-01-14 17:20:59'),
(272, 20, '2026-01-15 09:34:01'),
(273, 16, '2026-01-15 09:38:27'),
(274, 24, '2026-01-15 09:39:04'),
(275, 24, '2026-01-15 09:39:59'),
(276, 16, '2026-01-15 09:40:03'),
(277, 16, '2026-01-15 09:43:44'),
(278, 16, '2026-01-15 09:44:17'),
(279, 21, '2026-01-15 09:44:25'),
(280, 24, '2026-01-15 09:57:08'),
(281, 20, '2026-01-15 09:57:22'),
(282, 20, '2026-01-15 10:07:14'),
(283, 24, '2026-01-15 10:07:39'),
(284, 20, '2026-01-15 10:08:23'),
(285, 24, '2026-01-15 10:08:49'),
(286, 24, '2026-01-15 10:09:11'),
(287, 24, '2026-01-15 10:09:28'),
(288, 24, '2026-01-15 10:16:23'),
(289, 18, '2026-01-15 10:56:24'),
(290, 18, '2026-01-15 10:57:48'),
(291, 16, '2026-01-15 11:00:21'),
(292, 16, '2026-01-15 11:00:44'),
(293, 16, '2026-01-15 11:01:14'),
(294, 16, '2026-01-15 11:04:04'),
(295, 24, '2026-01-15 11:04:50'),
(296, 22, '2026-01-16 05:35:29'),
(297, 22, '2026-01-16 08:13:09'),
(298, 22, '2026-01-17 05:51:32'),
(299, 22, '2026-01-19 05:59:59'),
(300, 22, '2026-01-19 20:30:18'),
(301, 24, '2026-01-19 20:39:49'),
(302, 24, '2026-01-19 20:40:44'),
(303, 24, '2026-01-19 20:40:52'),
(304, 24, '2026-01-19 20:42:08'),
(305, 25, '2026-01-19 20:42:41'),
(306, 25, '2026-01-20 06:32:09'),
(307, 25, '2026-01-20 18:11:17'),
(308, 25, '2026-01-20 18:11:24'),
(309, 25, '2026-01-20 18:13:27'),
(310, 24, '2026-01-20 18:13:36'),
(311, 16, '2026-01-20 18:13:47'),
(312, 16, '2026-01-20 18:24:40'),
(313, 16, '2026-01-20 18:28:29'),
(314, 16, '2026-01-20 18:29:03'),
(315, 16, '2026-01-20 18:54:23'),
(316, 16, '2026-01-20 18:56:29'),
(317, 16, '2026-01-20 18:56:36'),
(318, 16, '2026-01-20 19:11:47'),
(319, 16, '2026-01-20 19:12:22'),
(320, 16, '2026-01-20 19:14:26'),
(321, 16, '2026-01-20 19:16:59'),
(322, 16, '2026-01-20 19:20:45'),
(323, 16, '2026-01-20 19:33:07'),
(324, 24, '2026-01-20 19:33:19'),
(325, 24, '2026-01-20 19:35:33'),
(326, 20, '2026-01-20 19:35:43'),
(327, 20, '2026-01-20 19:37:03'),
(328, 16, '2026-01-20 19:37:13'),
(329, 17, '2026-01-20 19:37:20'),
(330, 17, '2026-01-20 19:37:27'),
(331, 17, '2026-01-20 19:38:15'),
(332, 19, '2026-01-20 19:38:30'),
(333, 21, '2026-01-20 19:38:53'),
(334, 24, '2026-01-20 19:39:34'),
(335, 22, '2026-01-20 19:39:45'),
(336, 22, '2026-01-20 19:41:08'),
(337, 18, '2026-01-20 19:41:20'),
(338, 18, '2026-01-20 19:42:04'),
(339, 23, '2026-01-20 19:42:12'),
(340, 24, '2026-01-20 19:44:01'),
(341, 23, '2026-01-20 19:44:31'),
(342, 23, '2026-01-20 20:04:55'),
(343, 24, '2026-01-20 20:05:10'),
(344, 24, '2026-01-20 20:06:04'),
(345, 24, '2026-01-20 20:06:31'),
(346, 24, '2026-01-20 20:06:51'),
(347, 24, '2026-01-20 20:07:47'),
(348, 24, '2026-01-20 20:20:26'),
(349, 24, '2026-01-20 20:23:34'),
(350, 24, '2026-01-20 20:23:57'),
(351, 24, '2026-01-20 20:25:01'),
(352, 24, '2026-01-20 20:25:26'),
(353, 24, '2026-01-20 20:25:56'),
(354, 24, '2026-01-20 20:26:16'),
(355, 24, '2026-01-20 20:26:40'),
(356, 24, '2026-01-20 20:27:20'),
(357, 24, '2026-01-20 20:28:05'),
(358, 24, '2026-01-20 20:28:18'),
(359, 24, '2026-01-20 20:28:58'),
(360, 24, '2026-01-20 20:29:14'),
(361, 24, '2026-01-20 20:30:06'),
(362, 24, '2026-01-20 20:31:22'),
(363, 24, '2026-01-20 20:31:37'),
(364, 24, '2026-01-20 20:31:57'),
(365, 21, '2026-01-20 20:33:31'),
(366, 21, '2026-01-20 20:35:07'),
(367, 21, '2026-01-20 20:36:18'),
(368, 21, '2026-01-20 20:37:26'),
(369, 21, '2026-01-20 20:38:22'),
(370, 21, '2026-01-20 20:38:52'),
(371, 21, '2026-01-20 20:40:54'),
(372, 24, '2026-01-20 20:41:10'),
(373, 24, '2026-01-20 20:41:47'),
(374, 24, '2026-01-20 20:42:16'),
(375, 24, '2026-01-20 20:42:28'),
(376, 24, '2026-01-20 20:42:32'),
(377, 24, '2026-01-20 20:42:45'),
(378, 24, '2026-01-20 20:43:10'),
(379, 24, '2026-01-20 20:43:24'),
(380, 22, '2026-01-20 20:43:33'),
(381, 22, '2026-01-20 20:43:45'),
(382, 22, '2026-01-20 20:44:23'),
(383, 22, '2026-01-20 20:44:40'),
(384, 25, '2026-01-20 20:44:50'),
(385, 25, '2026-01-20 20:45:21'),
(386, 22, '2026-01-20 20:45:43'),
(387, 22, '2026-01-20 20:46:20'),
(388, 25, '2026-01-20 20:46:38'),
(389, 16, '2026-01-20 20:47:36'),
(390, 16, '2026-01-20 20:51:57'),
(391, 16, '2026-01-20 21:00:01'),
(392, 16, '2026-01-20 21:00:20'),
(393, 16, '2026-01-20 21:04:47'),
(394, 16, '2026-01-20 21:05:28'),
(395, 16, '2026-01-20 21:06:17'),
(396, 16, '2026-01-20 21:09:48'),
(397, 16, '2026-01-20 21:16:41'),
(398, 16, '2026-01-20 21:16:48'),
(399, 16, '2026-01-20 21:17:07'),
(400, 16, '2026-01-20 21:17:35'),
(401, 16, '2026-01-20 21:17:56'),
(402, 16, '2026-01-20 21:18:11'),
(403, 16, '2026-01-20 21:19:45'),
(404, 16, '2026-01-20 21:27:18'),
(405, 16, '2026-01-20 21:27:34'),
(406, 16, '2026-01-20 21:27:56'),
(407, 16, '2026-01-20 21:28:21'),
(408, 16, '2026-01-21 05:31:30'),
(409, 16, '2026-01-21 05:32:21'),
(410, 16, '2026-01-21 05:32:52'),
(411, 16, '2026-01-21 05:33:22'),
(412, 16, '2026-01-21 05:36:45'),
(413, 25, '2026-01-21 05:49:33'),
(414, 16, '2026-01-21 06:23:25'),
(415, 16, '2026-01-21 07:57:46'),
(416, 16, '2026-01-21 08:46:01'),
(417, 24, '2026-01-21 08:59:44'),
(418, 24, '2026-01-21 09:01:15'),
(419, 24, '2026-01-21 09:01:29'),
(420, 25, '2026-01-21 09:01:52'),
(421, 24, '2026-01-21 09:13:57'),
(422, 23, '2026-01-21 09:14:51'),
(423, 23, '2026-01-21 09:15:32'),
(424, 23, '2026-01-21 09:16:07'),
(425, 25, '2026-01-21 13:09:41'),
(426, 23, '2026-01-21 13:10:01'),
(427, 16, '2026-01-21 13:13:10'),
(428, 20, '2026-01-21 13:13:48'),
(429, 20, '2026-01-21 13:15:03'),
(430, 24, '2026-01-21 14:47:34'),
(431, 23, '2026-01-21 14:48:16'),
(432, 24, '2026-01-21 14:58:38'),
(433, 17, '2026-01-21 15:09:10'),
(434, 17, '2026-01-21 15:15:45'),
(435, 17, '2026-01-21 15:17:48'),
(436, 17, '2026-01-21 15:26:12'),
(437, 16, '2026-01-21 15:55:44'),
(438, 16, '2026-01-21 15:57:15'),
(439, 25, '2026-01-22 19:33:55'),
(440, 23, '2026-01-22 19:34:13'),
(441, 23, '2026-01-22 19:36:06'),
(442, 23, '2026-01-22 19:52:36'),
(443, 24, '2026-01-22 19:53:52'),
(444, 24, '2026-01-22 19:54:52'),
(445, 25, '2026-01-23 15:29:07'),
(446, 23, '2026-01-23 15:30:28'),
(447, 25, '2026-01-23 15:38:07'),
(448, 16, '2026-01-23 17:27:07'),
(449, 16, '2026-01-23 18:42:45'),
(450, 20, '2026-01-23 18:43:16'),
(451, 20, '2026-01-23 18:43:32'),
(452, 20, '2026-02-02 14:19:30'),
(453, 20, '2026-02-02 14:21:31'),
(454, 24, '2026-02-05 18:36:24'),
(455, 16, '2026-02-09 07:57:19'),
(456, 16, '2026-02-09 07:58:02'),
(457, 20, '2026-02-09 08:01:07'),
(458, 20, '2026-02-09 08:02:13'),
(459, 23, '2026-02-09 08:03:05'),
(460, 23, '2026-02-09 08:04:54'),
(461, 25, '2026-02-09 08:05:11'),
(462, 20, '2026-02-09 08:40:29'),
(463, 24, '2026-02-09 09:07:20'),
(464, 16, '2026-02-09 09:37:40'),
(465, 16, '2026-02-09 09:39:09'),
(466, 19, '2026-02-09 09:39:17'),
(467, 20, '2026-02-09 09:39:27'),
(468, 20, '2026-02-09 09:39:37'),
(469, 20, '2026-02-09 09:40:00'),
(470, 20, '2026-02-09 10:27:51'),
(471, 20, '2026-02-10 10:54:48'),
(472, 16, '2026-02-10 10:56:44'),
(473, 16, '2026-02-10 10:57:41'),
(474, 16, '2026-02-10 10:58:20'),
(475, 16, '2026-02-10 18:38:01'),
(476, 16, '2026-02-10 18:38:30'),
(477, 20, '2026-02-12 07:21:58'),
(478, 20, '2026-02-12 07:23:38'),
(479, 20, '2026-02-12 14:16:13'),
(480, 16, '2026-02-14 06:57:48'),
(481, 20, '2026-02-14 06:58:53'),
(482, 23, '2026-02-14 06:59:55'),
(483, 24, '2026-02-14 16:11:53'),
(484, 24, '2026-02-14 16:14:03'),
(485, 24, '2026-02-14 16:14:44'),
(486, 24, '2026-02-15 10:59:45'),
(487, 24, '2026-02-15 15:21:31'),
(488, 24, '2026-02-15 15:45:22'),
(489, 24, '2026-02-15 15:48:47'),
(490, 24, '2026-02-15 15:51:16'),
(491, 24, '2026-02-15 16:12:10'),
(492, 24, '2026-02-15 17:02:36'),
(493, 24, '2026-02-15 17:18:07'),
(494, 24, '2026-02-15 17:18:18'),
(495, 20, '2026-02-18 17:52:55'),
(496, 20, '2026-02-18 17:53:49'),
(497, 20, '2026-02-19 08:48:35'),
(498, 20, '2026-02-19 09:13:55'),
(499, 16, '2026-02-19 09:16:07'),
(500, 20, '2026-02-19 09:16:53'),
(501, 20, '2026-02-19 09:17:29'),
(502, 16, '2026-02-19 09:21:42'),
(503, 16, '2026-02-19 17:25:32'),
(504, 20, '2026-02-19 17:26:04'),
(505, 20, '2026-02-19 17:26:21'),
(506, 23, '2026-02-19 17:26:31'),
(507, 23, '2026-02-19 17:26:51'),
(508, 23, '2026-02-19 17:30:46'),
(509, 16, '2026-02-19 17:55:55'),
(510, 20, '2026-02-20 16:05:45'),
(511, 16, '2026-02-20 16:06:11'),
(512, 16, '2026-02-20 17:39:35'),
(513, 24, '2026-02-20 21:09:47'),
(514, 24, '2026-02-20 21:10:09'),
(515, 24, '2026-02-20 21:23:36'),
(516, 20, '2026-02-20 21:27:09'),
(517, 20, '2026-02-20 21:27:34'),
(518, 20, '2026-02-21 14:08:45'),
(519, 20, '2026-02-23 15:58:12'),
(520, 20, '2026-02-24 06:00:04'),
(521, 24, '2026-02-24 08:46:21'),
(522, 20, '2026-02-24 08:48:39'),
(523, 20, '2026-02-24 08:50:13'),
(524, 16, '2026-02-24 08:51:38'),
(525, 25, '2026-02-24 08:53:10'),
(526, 16, '2026-02-24 19:28:21'),
(527, 20, '2026-02-24 19:29:37'),
(528, 20, '2026-02-27 14:29:29'),
(529, 16, '2026-02-27 14:30:37'),
(530, 16, '2026-02-27 14:31:44'),
(531, 16, '2026-02-27 14:32:18'),
(532, 20, '2026-03-06 08:38:50'),
(533, 16, '2026-03-06 08:49:44'),
(534, 20, '2026-03-07 08:01:03'),
(535, 16, '2026-03-07 08:02:36'),
(536, 16, '2026-03-07 08:42:17'),
(537, 16, '2026-03-07 08:42:34'),
(538, 16, '2026-03-07 11:03:38'),
(539, 16, '2026-03-07 11:28:23'),
(540, 16, '2026-03-07 11:29:51'),
(541, 16, '2026-03-07 11:38:42'),
(542, 16, '2026-03-07 11:39:01'),
(543, 19, '2026-03-07 11:39:15'),
(544, 19, '2026-03-07 11:39:27'),
(545, 16, '2026-03-07 11:39:35'),
(546, 16, '2026-03-07 11:44:59'),
(547, 16, '2026-03-07 11:46:13'),
(548, 16, '2026-03-07 11:51:24'),
(549, 16, '2026-03-07 11:59:23'),
(550, 19, '2026-03-07 12:02:43'),
(551, 16, '2026-03-07 12:02:47'),
(552, 16, '2026-03-07 12:06:01'),
(553, 16, '2026-03-07 12:07:47'),
(554, 16, '2026-03-07 12:07:52'),
(555, 16, '2026-03-07 12:15:41'),
(556, 16, '2026-03-07 12:23:51'),
(557, 16, '2026-03-07 12:31:05'),
(558, 16, '2026-03-07 12:32:25'),
(559, 16, '2026-03-07 12:34:56'),
(560, 16, '2026-03-07 12:35:41'),
(561, 16, '2026-03-07 12:36:09'),
(562, 16, '2026-03-07 12:37:15'),
(563, 16, '2026-03-07 12:37:45'),
(564, 16, '2026-03-07 12:38:23'),
(565, 16, '2026-03-07 12:38:42'),
(566, 16, '2026-03-07 12:39:49'),
(567, 16, '2026-03-07 12:40:47'),
(568, 16, '2026-03-07 12:41:27'),
(569, 16, '2026-03-07 12:42:05'),
(570, 16, '2026-03-07 12:42:36'),
(571, 16, '2026-03-07 12:43:05'),
(572, 16, '2026-03-07 12:43:11'),
(573, 16, '2026-03-07 12:43:30'),
(574, 16, '2026-03-07 12:44:16'),
(575, 16, '2026-03-07 12:44:51'),
(576, 16, '2026-03-07 12:45:21'),
(577, 16, '2026-03-07 12:46:03'),
(578, 16, '2026-03-07 12:47:02'),
(579, 16, '2026-03-07 12:47:39'),
(580, 16, '2026-03-07 12:47:43'),
(581, 16, '2026-03-07 12:48:07'),
(582, 16, '2026-03-07 12:48:10'),
(583, 16, '2026-03-07 12:48:46'),
(584, 16, '2026-03-07 12:48:53'),
(585, 16, '2026-03-07 12:49:43'),
(586, 16, '2026-03-07 12:50:21'),
(587, 16, '2026-03-07 12:50:30'),
(588, 16, '2026-03-07 12:50:50'),
(589, 16, '2026-03-07 12:51:24'),
(590, 16, '2026-03-07 12:53:23'),
(591, 16, '2026-03-07 12:54:06'),
(592, 16, '2026-03-07 12:55:44'),
(593, 16, '2026-03-07 12:56:09'),
(594, 16, '2026-03-07 12:56:54'),
(595, 16, '2026-03-07 12:58:23'),
(596, 16, '2026-03-07 12:58:29'),
(597, 16, '2026-03-07 12:58:45'),
(598, 16, '2026-03-07 12:59:39'),
(599, 16, '2026-03-07 13:00:28'),
(600, 16, '2026-03-07 13:00:48'),
(601, 16, '2026-03-07 13:01:04'),
(602, 16, '2026-03-07 13:03:37'),
(603, 16, '2026-03-07 13:48:29'),
(604, 16, '2026-03-07 13:48:38'),
(605, 16, '2026-03-07 13:50:40'),
(606, 16, '2026-03-07 13:52:21'),
(607, 20, '2026-03-07 13:53:58'),
(608, 23, '2026-03-07 13:54:18'),
(609, 16, '2026-03-07 13:54:38'),
(610, 23, '2026-03-07 13:54:49'),
(611, 23, '2026-03-07 14:00:40'),
(612, 23, '2026-03-07 14:02:23'),
(613, 23, '2026-03-07 14:05:29'),
(614, 16, '2026-03-07 14:05:42'),
(615, 16, '2026-03-07 14:05:53'),
(616, 23, '2026-03-07 14:05:57'),
(617, 19, '2026-03-07 14:06:03'),
(618, 19, '2026-03-07 14:09:33'),
(619, 23, '2026-03-07 14:09:48'),
(620, 23, '2026-03-07 14:14:58'),
(621, 23, '2026-03-07 14:15:19'),
(622, 23, '2026-03-07 14:18:22'),
(623, 23, '2026-03-07 14:22:39'),
(624, 23, '2026-03-07 14:34:35'),
(625, 19, '2026-03-07 14:34:46'),
(626, 23, '2026-03-07 14:34:49'),
(627, 16, '2026-03-07 14:34:54'),
(628, 17, '2026-03-07 14:41:04'),
(629, 17, '2026-03-07 14:41:12'),
(630, 16, '2026-03-07 14:41:27'),
(631, 24, '2026-03-07 14:41:47'),
(632, 24, '2026-03-07 14:51:10'),
(633, 24, '2026-03-07 15:00:37'),
(634, 24, '2026-03-07 15:07:17'),
(635, 24, '2026-03-07 15:09:41'),
(636, 24, '2026-03-07 15:11:57'),
(637, 24, '2026-03-07 15:18:48'),
(638, 24, '2026-03-07 15:20:49'),
(639, 24, '2026-03-07 15:24:04'),
(640, 24, '2026-03-07 15:29:20'),
(641, 24, '2026-03-07 15:30:39'),
(642, 24, '2026-03-07 15:33:48'),
(643, 24, '2026-03-07 15:34:38'),
(644, 24, '2026-03-07 15:43:32'),
(645, 16, '2026-03-07 15:45:48'),
(646, 16, '2026-03-07 16:01:09'),
(647, 24, '2026-03-07 16:02:41'),
(648, 17, '2026-03-07 16:11:44'),
(649, 17, '2026-03-07 16:45:12'),
(650, 23, '2026-03-07 16:46:24'),
(651, 16, '2026-03-07 16:46:34'),
(652, 16, '2026-03-07 16:47:01'),
(653, 16, '2026-03-07 16:50:50'),
(654, 16, '2026-03-07 16:53:58'),
(655, 16, '2026-03-07 16:54:17'),
(656, 16, '2026-03-07 16:57:06'),
(657, 16, '2026-03-07 16:57:27'),
(658, 20, '2026-03-07 17:00:21'),
(659, 20, '2026-03-07 17:06:36'),
(660, 20, '2026-03-07 17:09:01'),
(661, 20, '2026-03-07 17:09:18'),
(662, 20, '2026-03-07 17:09:39'),
(663, 24, '2026-03-07 17:09:53'),
(664, 24, '2026-03-07 17:10:04'),
(665, 24, '2026-03-07 17:13:46'),
(666, 24, '2026-03-07 17:16:54'),
(667, 16, '2026-03-07 17:17:41'),
(668, 16, '2026-03-07 17:20:54'),
(669, 16, '2026-03-07 17:22:09'),
(670, 16, '2026-03-07 17:22:29'),
(671, 16, '2026-03-07 17:25:07'),
(672, 16, '2026-03-07 17:26:46'),
(673, 16, '2026-03-07 17:27:06'),
(674, 16, '2026-03-07 17:27:31'),
(675, 17, '2026-03-07 17:38:02'),
(676, 17, '2026-03-07 17:44:42'),
(677, 23, '2026-03-07 17:46:22'),
(678, 17, '2026-03-07 17:46:31'),
(679, 17, '2026-03-07 17:51:54'),
(680, 17, '2026-03-07 17:55:57'),
(681, 17, '2026-03-07 17:56:03'),
(682, 17, '2026-03-07 18:00:01'),
(683, 16, '2026-03-07 18:00:16'),
(684, 20, '2026-03-07 18:00:34'),
(685, 17, '2026-03-07 18:00:51'),
(686, 17, '2026-03-07 18:01:12'),
(687, 16, '2026-03-07 18:02:07'),
(688, 16, '2026-03-07 18:05:18'),
(689, 16, '2026-03-07 18:12:00'),
(690, 17, '2026-03-07 18:12:27'),
(691, 16, '2026-03-07 18:15:08'),
(692, 16, '2026-03-07 18:17:48'),
(693, 16, '2026-03-07 18:18:03'),
(694, 16, '2026-03-07 18:18:19'),
(695, 16, '2026-03-07 18:22:29'),
(696, 16, '2026-03-07 18:28:28'),
(697, 16, '2026-03-07 18:28:49'),
(698, 16, '2026-03-07 18:29:17'),
(699, 16, '2026-03-07 18:31:43'),
(700, 16, '2026-03-07 18:33:31'),
(701, 16, '2026-03-07 18:34:58'),
(702, 16, '2026-03-07 18:35:25'),
(703, 16, '2026-03-07 18:35:55'),
(704, 16, '2026-03-07 18:36:20'),
(705, 16, '2026-03-07 18:36:45'),
(706, 16, '2026-03-07 18:38:35'),
(707, 16, '2026-03-07 18:39:08'),
(708, 16, '2026-03-07 18:39:15'),
(709, 16, '2026-03-07 18:40:06'),
(710, 16, '2026-03-07 18:41:12'),
(711, 16, '2026-03-07 18:41:43'),
(712, 16, '2026-03-07 18:42:41'),
(713, 16, '2026-03-07 18:47:30'),
(714, 16, '2026-03-07 19:02:00'),
(715, 24, '2026-03-07 19:03:13'),
(716, 16, '2026-03-07 19:06:03'),
(717, 16, '2026-03-07 19:06:16'),
(718, 16, '2026-03-07 19:25:22'),
(719, 16, '2026-03-07 19:26:28'),
(720, 16, '2026-03-07 19:27:00'),
(721, 24, '2026-03-07 19:27:23'),
(722, 16, '2026-03-07 19:41:50'),
(723, 16, '2026-03-07 19:42:23'),
(724, 16, '2026-03-07 19:42:26'),
(725, 16, '2026-03-07 19:42:34'),
(726, 16, '2026-03-07 19:47:16'),
(727, 16, '2026-03-07 19:49:54'),
(728, 16, '2026-03-07 19:50:49'),
(729, 16, '2026-03-07 20:21:45'),
(730, 16, '2026-03-07 20:26:57'),
(731, 16, '2026-03-07 20:27:20'),
(732, 20, '2026-03-07 21:15:03'),
(733, 20, '2026-03-07 21:16:51'),
(734, 20, '2026-03-07 21:20:00'),
(735, 16, '2026-03-08 07:53:09'),
(736, 16, '2026-03-08 08:11:13'),
(737, 16, '2026-03-08 08:19:54'),
(738, 16, '2026-03-08 08:20:14'),
(739, 16, '2026-03-08 08:20:52'),
(740, 16, '2026-03-08 08:21:56'),
(741, 16, '2026-03-08 08:22:50'),
(742, 16, '2026-03-08 08:23:25'),
(743, 16, '2026-03-08 08:24:07'),
(744, 16, '2026-03-08 08:24:41'),
(745, 16, '2026-03-08 08:25:30'),
(746, 19, '2026-03-08 08:35:11'),
(747, 24, '2026-03-08 08:40:56'),
(748, 16, '2026-03-08 08:41:21'),
(749, 16, '2026-03-08 08:46:18'),
(750, 16, '2026-03-08 08:55:54'),
(751, 16, '2026-03-08 08:56:56'),
(752, 16, '2026-03-08 09:00:07'),
(753, 16, '2026-03-08 09:01:01'),
(754, 16, '2026-03-08 09:01:35'),
(755, 16, '2026-03-08 09:02:22'),
(756, 16, '2026-03-08 09:03:52'),
(757, 16, '2026-03-08 09:05:13'),
(758, 16, '2026-03-08 09:06:00'),
(759, 16, '2026-03-08 09:08:50'),
(760, 16, '2026-03-08 09:09:24'),
(761, 20, '2026-03-08 09:11:31'),
(762, 20, '2026-03-08 09:12:30'),
(763, 20, '2026-03-08 09:20:39'),
(764, 16, '2026-03-08 09:21:17'),
(765, 16, '2026-03-08 09:23:30'),
(766, 16, '2026-03-08 09:24:13'),
(767, 16, '2026-03-08 10:13:30'),
(768, 19, '2026-03-08 10:16:13'),
(769, 16, '2026-03-08 10:18:29'),
(770, 16, '2026-03-08 10:21:13'),
(771, 16, '2026-03-08 10:22:10'),
(772, 16, '2026-03-08 10:23:15'),
(773, 16, '2026-03-08 10:25:29'),
(774, 19, '2026-03-08 10:27:48'),
(775, 16, '2026-03-08 10:28:19'),
(776, 16, '2026-03-08 10:34:02'),
(777, 19, '2026-03-08 10:37:45'),
(778, 16, '2026-03-08 12:13:03'),
(779, 24, '2026-03-08 12:14:48'),
(780, 16, '2026-03-08 12:17:17'),
(781, 16, '2026-03-08 12:26:19'),
(782, 16, '2026-03-08 12:26:49'),
(783, 16, '2026-03-08 12:27:10'),
(784, 16, '2026-03-08 12:27:37'),
(785, 16, '2026-03-08 12:27:59'),
(786, 16, '2026-03-08 12:28:24'),
(787, 24, '2026-03-08 14:19:52'),
(788, 24, '2026-03-08 14:20:59'),
(789, 24, '2026-03-08 14:30:58'),
(790, 20, '2026-03-08 14:31:34'),
(791, 24, '2026-03-08 14:37:53'),
(792, 24, '2026-03-08 14:38:31'),
(793, 16, '2026-03-08 14:54:35'),
(794, 16, '2026-03-08 15:09:56'),
(795, 16, '2026-03-08 15:13:25'),
(796, 16, '2026-03-08 15:17:06'),
(797, 16, '2026-03-08 15:19:57'),
(798, 16, '2026-03-08 15:20:04'),
(799, 16, '2026-03-08 17:36:48'),
(800, 16, '2026-03-08 21:19:53'),
(801, 16, '2026-03-08 21:24:19'),
(802, 16, '2026-03-08 21:24:48'),
(803, 24, '2026-03-08 21:26:54'),
(804, 16, '2026-03-08 21:29:48'),
(805, 16, '2026-03-08 21:34:08'),
(806, 16, '2026-03-08 21:34:17'),
(807, 16, '2026-03-08 21:34:53'),
(808, 16, '2026-03-08 21:39:16'),
(809, 16, '2026-03-08 21:40:00'),
(810, 24, '2026-03-08 21:40:29'),
(811, 16, '2026-03-08 21:41:28'),
(812, 24, '2026-03-08 21:41:46'),
(813, 24, '2026-03-08 21:44:28'),
(814, 24, '2026-03-08 21:44:54'),
(815, 24, '2026-03-08 21:45:01'),
(816, 24, '2026-03-08 21:46:57'),
(817, 24, '2026-03-08 21:47:18'),
(818, 16, '2026-03-08 21:50:22'),
(819, 16, '2026-03-08 21:53:25'),
(820, 16, '2026-03-08 21:57:45'),
(821, 16, '2026-03-08 21:58:08'),
(822, 16, '2026-03-08 21:59:03'),
(823, 16, '2026-03-08 22:00:31'),
(824, 25, '2026-03-08 22:01:50'),
(825, 24, '2026-03-08 22:06:41'),
(826, 24, '2026-03-08 22:07:10'),
(827, 16, '2026-03-09 07:02:05'),
(828, 16, '2026-03-09 07:02:36'),
(829, 16, '2026-03-09 07:08:52'),
(830, 16, '2026-03-09 07:09:03'),
(831, 16, '2026-03-09 07:11:01'),
(832, 16, '2026-03-09 07:11:31'),
(833, 24, '2026-03-09 07:15:14'),
(834, 16, '2026-03-09 07:18:09'),
(835, 16, '2026-03-09 07:18:36'),
(836, 24, '2026-03-09 07:19:09'),
(837, 24, '2026-03-09 07:19:20'),
(838, 16, '2026-03-09 07:25:46'),
(839, 16, '2026-03-09 07:27:32'),
(840, 16, '2026-03-09 07:29:59'),
(841, 16, '2026-03-09 07:38:09'),
(842, 16, '2026-03-09 07:38:40'),
(843, 23, '2026-03-09 07:46:31'),
(844, 23, '2026-03-09 08:02:47'),
(845, 16, '2026-03-09 08:41:12'),
(846, 16, '2026-03-09 08:41:26'),
(847, 16, '2026-03-09 08:42:16'),
(848, 16, '2026-03-09 08:42:40'),
(849, 16, '2026-03-09 08:49:49'),
(850, 16, '2026-03-09 08:52:37'),
(851, 16, '2026-03-09 08:52:48'),
(852, 16, '2026-03-09 08:53:09'),
(853, 16, '2026-03-09 08:54:08'),
(854, 20, '2026-03-09 08:57:34'),
(855, 16, '2026-03-09 09:25:12'),
(856, 16, '2026-03-09 09:25:30'),
(857, 16, '2026-03-09 13:44:11'),
(858, 16, '2026-03-09 13:50:50'),
(859, 24, '2026-03-09 15:15:39'),
(860, 20, '2026-03-09 15:42:35'),
(861, 16, '2026-03-09 16:09:25'),
(862, 16, '2026-03-09 16:14:59'),
(863, 16, '2026-03-09 16:16:43'),
(864, 16, '2026-03-09 16:18:17'),
(865, 16, '2026-03-09 16:19:02'),
(866, 16, '2026-03-09 16:21:12'),
(867, 16, '2026-03-09 16:22:16'),
(868, 16, '2026-03-09 16:23:27'),
(869, 16, '2026-03-09 16:28:44'),
(870, 16, '2026-03-09 16:41:43'),
(871, 16, '2026-03-09 16:52:57'),
(872, 16, '2026-03-09 16:53:02'),
(873, 16, '2026-03-09 16:54:46'),
(874, 16, '2026-03-09 16:55:31'),
(875, 16, '2026-03-09 16:57:11'),
(876, 16, '2026-03-09 16:57:21'),
(877, 16, '2026-03-09 16:57:58'),
(878, 21, '2026-03-09 16:58:48'),
(879, 21, '2026-03-09 16:59:06'),
(880, 21, '2026-03-09 17:00:49'),
(881, 16, '2026-03-09 17:07:52'),
(882, 16, '2026-03-09 17:08:30'),
(883, 16, '2026-03-09 17:08:43'),
(884, 16, '2026-03-09 17:08:59'),
(885, 16, '2026-03-09 17:09:12'),
(886, 21, '2026-03-09 17:09:32'),
(887, 16, '2026-03-09 17:10:01'),
(888, 21, '2026-03-09 17:10:17'),
(889, 16, '2026-03-09 17:11:11'),
(890, 21, '2026-03-09 17:11:22'),
(891, 21, '2026-03-09 17:12:53'),
(892, 21, '2026-03-09 17:13:05'),
(893, 21, '2026-03-09 17:14:15'),
(894, 21, '2026-03-09 17:15:08'),
(895, 21, '2026-03-09 17:15:48'),
(896, 21, '2026-03-09 17:16:27'),
(897, 21, '2026-03-09 17:16:45'),
(898, 16, '2026-03-09 17:17:40'),
(899, 16, '2026-03-09 17:26:17'),
(900, 16, '2026-03-09 17:26:36'),
(901, 16, '2026-03-09 17:26:39'),
(902, 16, '2026-03-09 17:28:11'),
(903, 16, '2026-03-09 17:28:21'),
(904, 16, '2026-03-09 17:28:49'),
(905, 16, '2026-03-09 17:31:03'),
(906, 16, '2026-03-09 17:31:54'),
(907, 16, '2026-03-09 17:32:50'),
(908, 16, '2026-03-09 17:33:46'),
(909, 16, '2026-03-09 17:34:04'),
(910, 16, '2026-03-09 17:36:10'),
(911, 16, '2026-03-09 17:41:17'),
(912, 16, '2026-03-09 17:42:27'),
(913, 16, '2026-03-09 17:42:33'),
(914, 16, '2026-03-09 17:48:11'),
(915, 16, '2026-03-09 17:48:37'),
(916, 16, '2026-03-09 17:52:45'),
(917, 16, '2026-03-09 17:52:55'),
(918, 16, '2026-03-09 17:55:53'),
(919, 16, '2026-03-09 17:56:01'),
(920, 16, '2026-03-09 17:57:57'),
(921, 16, '2026-03-09 17:58:13'),
(922, 16, '2026-03-09 17:58:28'),
(923, 16, '2026-03-09 18:02:48'),
(924, 16, '2026-03-09 18:02:59'),
(925, 16, '2026-03-09 18:03:54'),
(926, 16, '2026-03-09 18:03:57'),
(927, 16, '2026-03-09 18:04:39'),
(928, 16, '2026-03-09 18:05:18'),
(929, 16, '2026-03-09 18:06:22'),
(930, 16, '2026-03-09 18:08:15'),
(931, 16, '2026-03-09 18:12:54'),
(932, 16, '2026-03-09 18:15:52'),
(933, 16, '2026-03-09 18:17:53'),
(934, 16, '2026-03-09 18:18:15'),
(935, 16, '2026-03-09 18:20:09'),
(936, 16, '2026-03-09 18:20:44'),
(937, 16, '2026-03-09 18:21:09'),
(938, 16, '2026-03-09 18:21:50'),
(939, 16, '2026-03-09 18:22:13'),
(940, 16, '2026-03-09 18:22:47'),
(941, 16, '2026-03-09 18:23:06'),
(942, 24, '2026-03-09 18:25:55'),
(943, 16, '2026-03-09 18:28:11'),
(944, 16, '2026-03-09 18:30:02'),
(945, 24, '2026-03-09 18:31:07'),
(946, 24, '2026-03-09 18:31:45'),
(947, 16, '2026-03-09 18:34:40'),
(948, 24, '2026-03-09 18:35:07'),
(949, 16, '2026-03-09 18:35:43'),
(950, 24, '2026-03-09 18:40:57'),
(951, 24, '2026-03-09 18:45:54'),
(952, 24, '2026-03-09 18:46:01'),
(953, 24, '2026-03-09 18:47:12'),
(954, 16, '2026-03-09 18:47:29'),
(955, 19, '2026-03-09 18:50:51'),
(956, 23, '2026-03-09 18:53:10'),
(957, 23, '2026-03-09 18:53:57'),
(958, 16, '2026-03-09 18:54:12'),
(959, 16, '2026-03-09 18:55:20'),
(960, 24, '2026-03-09 18:55:44'),
(961, 24, '2026-03-09 18:56:17'),
(962, 24, '2026-03-09 19:00:35'),
(963, 24, '2026-03-09 19:01:02'),
(964, 24, '2026-03-09 19:01:13'),
(965, 24, '2026-03-09 19:21:04'),
(966, 24, '2026-03-09 19:21:23'),
(967, 24, '2026-03-09 19:25:49'),
(968, 24, '2026-03-09 19:29:50'),
(969, 24, '2026-03-09 19:30:19'),
(970, 24, '2026-03-09 19:30:51'),
(971, 24, '2026-03-09 19:31:23'),
(972, 24, '2026-03-09 19:31:50'),
(973, 16, '2026-03-09 19:40:30'),
(974, 24, '2026-03-09 19:42:49'),
(975, 24, '2026-03-09 19:43:01'),
(976, 24, '2026-03-09 19:44:36'),
(977, 24, '2026-03-09 19:44:51'),
(978, 16, '2026-03-09 19:48:08'),
(979, 16, '2026-03-09 19:48:46'),
(980, 16, '2026-03-09 19:49:52'),
(981, 16, '2026-03-09 19:52:17'),
(982, 16, '2026-03-09 20:30:16'),
(983, 16, '2026-03-09 20:33:46'),
(984, 16, '2026-03-09 20:34:36'),
(985, 16, '2026-03-09 20:34:40'),
(986, 16, '2026-03-09 20:37:18'),
(987, 16, '2026-03-09 20:40:19'),
(988, 16, '2026-03-09 20:40:28'),
(989, 16, '2026-03-09 20:45:41'),
(990, 16, '2026-03-09 20:46:05'),
(991, 16, '2026-03-09 20:46:42'),
(992, 16, '2026-03-09 20:46:57'),
(993, 16, '2026-03-09 20:47:52'),
(994, 16, '2026-03-09 20:48:26'),
(995, 16, '2026-03-09 20:49:27'),
(996, 16, '2026-03-09 20:53:02'),
(997, 16, '2026-03-09 20:56:08'),
(998, 16, '2026-03-09 20:56:52'),
(999, 16, '2026-03-09 21:01:51'),
(1000, 16, '2026-03-09 21:03:36'),
(1001, 16, '2026-03-09 21:04:15'),
(1002, 16, '2026-03-09 21:08:47'),
(1003, 16, '2026-03-09 21:10:00'),
(1004, 16, '2026-03-09 21:13:42'),
(1005, 16, '2026-03-09 21:17:29'),
(1006, 16, '2026-03-09 21:21:56'),
(1007, 16, '2026-03-10 06:19:16'),
(1008, 16, '2026-03-10 06:21:28'),
(1009, 16, '2026-03-10 06:22:37'),
(1010, 16, '2026-03-10 06:22:53'),
(1011, 16, '2026-03-10 06:27:50'),
(1012, 16, '2026-03-10 06:28:14'),
(1013, 16, '2026-03-10 06:31:36'),
(1014, 16, '2026-03-10 06:31:41'),
(1015, 16, '2026-03-10 06:32:22'),
(1016, 16, '2026-03-10 06:35:16'),
(1017, 24, '2026-03-10 06:44:42'),
(1018, 24, '2026-03-10 06:44:45'),
(1019, 16, '2026-03-10 06:48:02'),
(1020, 24, '2026-03-10 06:48:53'),
(1021, 24, '2026-03-10 06:50:21'),
(1022, 24, '2026-03-10 06:55:41'),
(1023, 24, '2026-03-10 06:59:03'),
(1024, 24, '2026-03-10 07:00:25'),
(1025, 16, '2026-03-10 07:03:08'),
(1026, 16, '2026-03-10 07:04:37'),
(1027, 24, '2026-03-10 07:05:29'),
(1028, 16, '2026-03-10 07:08:14'),
(1029, 16, '2026-03-10 07:11:01'),
(1030, 16, '2026-03-10 07:15:45'),
(1031, 16, '2026-03-10 07:15:48'),
(1032, 24, '2026-03-10 07:16:11'),
(1033, 24, '2026-03-10 07:21:42'),
(1034, 24, '2026-03-10 07:22:21'),
(1035, 16, '2026-03-10 07:25:06'),
(1036, 16, '2026-03-10 07:25:27'),
(1037, 16, '2026-03-10 07:25:34'),
(1038, 16, '2026-03-10 07:25:41'),
(1039, 16, '2026-03-10 07:27:11'),
(1040, 16, '2026-03-10 07:29:12'),
(1041, 16, '2026-03-10 07:29:23'),
(1042, 16, '2026-03-10 07:36:10'),
(1043, 16, '2026-03-10 07:37:01'),
(1044, 16, '2026-03-10 07:37:30'),
(1045, 16, '2026-03-10 07:38:07'),
(1046, 16, '2026-03-10 07:38:21'),
(1047, 16, '2026-03-10 07:39:38'),
(1048, 16, '2026-03-10 07:39:47'),
(1049, 16, '2026-03-10 07:50:23'),
(1050, 16, '2026-03-10 07:50:46'),
(1051, 16, '2026-03-10 07:51:30'),
(1052, 16, '2026-03-10 07:54:42'),
(1053, 16, '2026-03-10 08:01:31'),
(1054, 16, '2026-03-10 08:05:06'),
(1055, 16, '2026-03-10 08:08:09'),
(1056, 16, '2026-03-10 08:08:36'),
(1057, 16, '2026-03-10 08:15:52'),
(1058, 16, '2026-03-10 08:16:08'),
(1059, 16, '2026-03-10 08:18:21'),
(1060, 16, '2026-03-10 08:18:35'),
(1061, 16, '2026-03-10 08:20:43'),
(1062, 16, '2026-03-10 08:23:42'),
(1063, 16, '2026-03-10 08:25:01'),
(1064, 16, '2026-03-10 08:25:09'),
(1065, 16, '2026-03-10 08:25:51'),
(1066, 16, '2026-03-10 08:33:21'),
(1067, 16, '2026-03-10 08:33:39'),
(1068, 16, '2026-03-10 08:34:08'),
(1069, 16, '2026-03-10 08:34:48'),
(1070, 16, '2026-03-10 08:35:26'),
(1071, 16, '2026-03-10 08:44:02'),
(1072, 16, '2026-03-10 08:48:25'),
(1073, 16, '2026-03-10 08:50:10'),
(1074, 16, '2026-03-10 08:50:26'),
(1075, 16, '2026-03-10 08:52:52'),
(1076, 16, '2026-03-10 08:53:08'),
(1077, 16, '2026-03-10 08:56:52'),
(1078, 16, '2026-03-10 08:57:34'),
(1079, 16, '2026-03-10 08:58:08'),
(1080, 16, '2026-03-10 09:02:01'),
(1081, 16, '2026-03-10 09:10:51'),
(1082, 16, '2026-03-10 09:16:49'),
(1083, 16, '2026-03-10 09:21:58'),
(1084, 16, '2026-03-10 09:26:31'),
(1085, 16, '2026-03-10 09:27:55'),
(1086, 16, '2026-03-10 09:29:09'),
(1087, 16, '2026-03-10 09:29:56'),
(1088, 16, '2026-03-10 09:57:26'),
(1089, 16, '2026-03-10 10:04:24'),
(1090, 16, '2026-03-10 10:08:41'),
(1091, 16, '2026-03-10 10:09:49'),
(1092, 16, '2026-03-10 10:33:04'),
(1093, 24, '2026-03-10 10:42:17'),
(1094, 24, '2026-03-10 11:09:25'),
(1095, 24, '2026-03-10 11:15:19'),
(1096, 24, '2026-03-10 11:15:38'),
(1097, 24, '2026-03-10 11:15:53'),
(1098, 24, '2026-03-10 11:22:56');

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int(11) NOT NULL,
  `referrer_id` int(11) NOT NULL,
  `referral_code` varchar(50) NOT NULL,
  `referred_email` varchar(255) DEFAULT NULL,
  `referred_user_id` int(11) DEFAULT NULL,
  `status` enum('sent','joined') DEFAULT 'sent',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`id`, `referrer_id`, `referral_code`, `referred_email`, `referred_user_id`, `status`, `created_at`) VALUES
(1, 13, 'LOFT2634738D', NULL, NULL, 'sent', '2025-11-18 16:49:23'),
(2, 14, 'LOFTD471E40C', NULL, NULL, 'sent', '2026-01-21 15:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `revenue`
--

CREATE TABLE `revenue` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `beds_size` enum('Small','Medium','Large') NOT NULL,
  `contract` int(11) NOT NULL,
  `matterport_scan` int(11) NOT NULL DEFAULT 0,
  `monthly_sub` int(11) NOT NULL DEFAULT 0,
  `upload_fee` int(11) NOT NULL DEFAULT 0,
  `photo_2d_staging` int(11) NOT NULL DEFAULT 0,
  `3d_staging` int(11) NOT NULL DEFAULT 0,
  `featured` int(11) NOT NULL DEFAULT 0,
  `total_revenue` int(11) DEFAULT NULL,
  `estimated_cost` int(11) NOT NULL DEFAULT 0,
  `profit` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `revenue`
--

INSERT INTO `revenue` (`id`, `property_id`, `beds_size`, `contract`, `matterport_scan`, `monthly_sub`, `upload_fee`, `photo_2d_staging`, `3d_staging`, `featured`, `total_revenue`, `estimated_cost`, `profit`, `created_at`) VALUES
(1, 3, 'Medium', 12, 2000, 5000, 1000, 1200, 1500, 800, 11512, 4000, 7512, '2025-09-01 20:35:35');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `property_id`, `review`, `rating`, `likes`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 9, 16, 'The perfect work-and-relax spot. I stayed here for a month while on a remote work trip. The internet was strong enough for Zoom calls, and the ambience of the place made it easy to stay focused. After work, I’d walk down to the beach or chill in the garden. One of the best stays I’ve had in Kenya.', NULL, 3, '2025-07-18 14:09:49', '2025-11-21 11:02:43', 0),
(2, 8, 19, 'The agent was very unfriendly', NULL, 0, '2025-07-23 11:52:05', '2025-11-09 06:56:02', 0),
(3, 8, 16, 'Average stay, room for improvement. The apartment looks nice and the location is great, but I had some issues with cleanliness when I arrived. The host did fix things after I contacted them, but it delayed my settling in. If maintenance is improved, it’ll be a much better experience.', NULL, 2, '2025-07-23 12:35:50', '2025-11-21 11:02:46', 0),
(4, 8, 17, 'The perfect work-and-relax spot. I stayed here for a month while on a remote work trip. The internet was strong enough for Zoom calls, and the ambience of the place made it easy to stay focused. After work, I’d walk down to the beach or chill in the garden. One of the best stays I’ve had in Kenya.', NULL, 1, '2025-11-19 06:14:57', '2025-11-26 10:05:51', 0),
(5, 13, 16, 'Average stay, room for improvement. The apartment looks nice and the location is great, but I had some issues with cleanliness when I arrived. The host did fix things after I contacted them, but it delayed my settling in. If maintenance is improved, it’ll be a much better experience.', NULL, 2, '2025-11-21 11:03:07', '2025-12-28 11:24:33', 0),
(6, 13, 16, 'wow', NULL, 0, '2025-11-21 11:03:19', '2025-11-21 18:31:08', 0),
(7, 13, 16, 'Average stay, room for improvement. The apartment looks nice and the location is great, but I had some issues with cleanliness when I arrived. The host did fix things after I contacted them, but it delayed my settling in. If maintenance is improved, it’ll be a much better experience.', NULL, 1, '2025-11-21 11:03:25', '2026-01-11 10:47:08', 0),
(8, 13, 16, 'The perfect work-and-relax spot. I stayed here for a month while on a remote work trip. The internet was strong enough for Zoom calls, and the ambience of the place made it easy to stay focused. After work, I’d walk down to the beach or chill in the garden. One of the best stays I’ve had in Kenya.', NULL, 1, '2025-11-21 11:03:35', '2026-03-07 18:22:53', 0),
(9, 9, 17, 'Is this unit still available?', NULL, 0, '2025-11-27 10:58:45', '2025-11-27 10:58:45', 0),
(10, 14, 24, 'Love this!', NULL, 0, '2026-01-11 12:20:14', '2026-01-11 12:20:14', 0),
(11, 14, 21, 'test', 3, 0, '2026-01-12 08:14:36', '2026-01-12 08:14:36', 0),
(12, 14, 21, 'test 2', 4, 1, '2026-01-12 08:24:29', '2026-01-12 08:45:53', 0),
(13, 14, 21, 'test 3', NULL, 0, '2026-01-12 08:24:57', '2026-01-12 08:24:57', 0),
(14, 14, 17, 'The perfect work-and-relax spot. I stayed here for a month while on a remote work trip. The internet was strong enough for Zoom calls, and the ambience of the place made it easy to stay focused. After work, I’d walk down to the beach or chill in the garden. One of the best stays I’ve had in Kenya.', 4, 0, '2026-01-12 08:51:36', '2026-01-12 08:51:36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `review_likes`
--

CREATE TABLE `review_likes` (
  `id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review_likes`
--

INSERT INTO `review_likes` (`id`, `review_id`, `user_id`, `created_at`) VALUES
(7, 1, 8, '2025-11-19 06:33:36'),
(9, 3, 8, '2025-11-19 06:56:35'),
(10, 1, 13, '2025-11-21 11:02:43'),
(11, 3, 13, '2025-11-21 11:02:46'),
(12, 5, 13, '2025-11-21 11:03:13'),
(13, 7, 13, '2025-11-21 13:32:32'),
(15, 4, 13, '2025-11-26 10:05:51'),
(16, 5, 14, '2025-12-28 11:24:33'),
(18, 12, 14, '2026-01-12 08:45:53'),
(19, 8, 14, '2026-03-07 18:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `sms_logs`
--

CREATE TABLE `sms_logs` (
  `id` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `response` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sms_logs`
--

INSERT INTO `sms_logs` (`id`, `phone`, `message`, `status`, `response`, `created_at`) VALUES
(1, '+254791488881', 'Your Loft verification code is: 561262. Valid for 5 minutes. Do not share this code.', 'Development Mode - Success', 'Mock response', '2025-12-27 13:21:55'),
(2, '+254791488881', 'Your Loft verification code is: 289599. Valid for 5 minutes. Do not share this code.', 'Development Mode - Success', 'Mock response', '2025-12-27 13:23:10'),
(3, '+254791488881', 'Your Loft verification code is: 101036. Valid for 5 minutes. Do not share this code.', 'Development Mode - Success', 'Mock response', '2025-12-27 13:29:03'),
(4, '+254791488881', 'Your Loft verification code is: 398882. Valid for 5 minutes. Do not share this code.', 'Development Mode - Success', 'Mock response', '2025-12-27 13:30:05'),
(5, '+254791488881', 'Your Loft verification code is: 404081. Valid for 5 minutes. Do not share this code.', 'Development Mode - Success', 'Mock response', '2025-12-27 13:30:18'),
(6, '+254791488881', 'Your Loft verification code is: 391587. Valid for 5 minutes. Do not share this code.', 'Development Mode - Success', 'Mock response', '2025-12-27 13:30:57'),
(7, '+254791488881', 'Your Loft verification code is: 860695. Valid for 5 minutes. Do not share this code.', 'Development Mode - Success', 'Mock response', '2025-12-27 14:01:52'),
(8, '+254791488881', 'Your Loft verification code is: 607787. Valid for 5 minutes. Do not share this code.', 'Development Mode - Success', 'Mock response', '2025-12-27 14:03:11'),
(9, '+254791488881', 'Your Loft verification code is: 128671. Valid for 5 minutes. Do not share this code.', 'Development Mode - Success', 'Mock response', '2025-12-27 14:07:07'),
(10, '+254791488881', 'Your Loft verification code is: 239064. Valid for 5 minutes. Do not share this code.', 'Development Mode - Success', 'Mock response', '2025-12-27 14:07:47'),
(11, '+254791488881', 'Your Loft verification code is: 664957. Valid for 5 minutes. Do not share this code.', 'Development Mode - Success', 'Mock response', '2025-12-27 14:15:26'),
(12, '+254791488881', 'Your Loft verification code is: 198108. Valid for 5 minutes. Do not share this code.', 'Development Mode - Success', 'Mock response', '2025-12-27 14:27:06'),
(13, '+254791488881', 'Your Loft verification code is: 849277. Valid for 5 minutes. Do not share this code.', 'Development Mode - Success', 'Mock response', '2025-12-27 14:29:00'),
(14, '+254791488881', 'Your Loft verification code is: 390047. Valid for 5 minutes. Do not share this code.', 'Development Mode - Success', 'Mock response', '2025-12-27 15:31:40'),
(15, '+254791488881', 'Your Loft verification code is: 400696. Valid for 5 minutes. Do not share this code.', 'Development Mode - Success', 'Mock response', '2025-12-27 15:35:08'),
(16, '+254791488881', 'Your Loft verification code is: 515898. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_ae6d78f1016bd94459a0b9253f532d78\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2025-12-27 17:36:35'),
(17, '+254791488881', 'Your Loft verification code is: 610104. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_6972107290c21e18cc7d6d6e87cbfbb0\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2025-12-27 17:41:39'),
(18, '+254791488881', 'Your Loft verification code is: 926186. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_904105fb44a72b7927f19d599b9e5975\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2025-12-27 17:42:19'),
(19, '+254791488881', 'Your Loft verification code is: 116795. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_baa5ffe2d8a865667830c64efa02b7e7\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2025-12-27 17:43:57'),
(20, '+254791488881', 'Your Loft verification code is: 107496. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_5dae8c7c60984e642a51ee0d5bb1637e\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2025-12-28 06:53:49'),
(21, '+254791488881', 'Your Loft verification code is: 528355. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_ac2cc0f0e0b19f4bed51b4f8c8863000\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2025-12-28 06:58:49'),
(22, '+254791488881', 'Your Loft verification code is: 405153. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_982ba959bfd7b7e7ecc2dfda7f4e4e19\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2025-12-28 08:45:12'),
(23, '+254791488881', 'Your Loft verification code is: 456779. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_b89cd30c634b14d43ceb6d8b3de4c929\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2025-12-28 09:13:45'),
(24, '+254791488881', 'Your Loft verification code is: 213446. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_a18e5cb31bf21e78b29e826ad1e3f78a\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2025-12-28 10:09:15'),
(25, '+254791488881', 'Your Loft verification code is: 933620. Valid for 5 minutes. Do not share this code.', 'Network Error - Fallback to Dev Mode', 'cURL error: Couldn\'t resolve host \'api.sandbox.africastalking.com\'', '2025-12-28 12:34:07'),
(26, '+254791488881', 'Your Loft verification code is: 497975. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_9d119dbdc1edcc337dfc990284939ebe\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2025-12-28 12:57:44'),
(27, '+254791488881', 'Your Loft verification code is: 986875. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_7f001eab7a9f39adeea9f2eeda8d2e44\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2026-01-11 10:17:14'),
(28, '+254791488881', 'Your Loft verification code is: 854047. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_f2b85841d01adacd73085cac6ff82b94\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2026-01-11 10:18:23'),
(29, '+254791488881', 'Your Loft verification code is: 293169. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_21af44ede39079652c5f1f02860a6b73\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2026-01-12 06:35:18'),
(30, '+254791488881', 'Your Loft verification code is: 769295. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_72a2fef06a5d4362b9b703189c56ab10\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2026-01-12 12:04:36'),
(31, '+254791488881', 'Your Loft verification code is: 329838. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_6198951f2a17f6e675c337a2613d7c39\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2026-01-21 09:31:30'),
(32, '+254791488881', 'Your Loft verification code is: 562560. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_42bca598da13b4b2ef15a5ca14cd930e\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2026-01-21 15:39:22'),
(33, '+254791488881', 'Your Loft verification code is: 413802. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_16e928dc6f2d58e75d425b4076998b2e\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2026-01-21 16:04:29'),
(34, '+254791488881', 'Your Loft verification code is: 149906. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_0cb0e2255d29a0443e2f012dd40986a4\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2026-03-07 08:55:31'),
(35, '+254791488881', 'Your Loft verification code is: 572653. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_b29ea65964e6894f647292815ba7b6f2\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2026-03-07 08:56:34'),
(36, '+254791488881', 'Your Loft verification code is: 956532. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_759e8cc725fab96f3020a8b2810ed4bd\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2026-03-07 20:34:54'),
(37, '+254791488881', 'Your Loft verification code is: 804054. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_ca24068d2d784c71326bb02ba8211492\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2026-03-07 20:44:53'),
(38, '+254791488881', 'Your Loft verification code is: 336890. Valid for 5 minutes. Do not share this code.', 'Success', '{\"SMSMessageData\":{\"Message\":\"Sent to 1/1 Total Cost: KES 0.8000 Message parts: 1\",\"Recipients\":[{\"cost\":\"KES 0.8000\",\"messageId\":\"ATXid_2dd9361c553c8f9dbd676367cce18814\",\"number\":\"+254791488881\",\"status\":\"Success\",\"statusCode\":101}]}}', '2026-03-07 21:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `logo_image` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `website`, `logo_image`, `contact_email`, `contact_phone`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 'house of leather', 'https://houseofleather.co.ke/', 'uploads/stores/1756545107_loft-studio.jpg', 'houseofleather@mail.com', '0222222888', '2025-07-23 10:38:16', '2025-08-30 09:21:27', 0),
(3, 'Furniture Ideal', 'https://ideal.com', 'uploads/stores/1756545253_loft-studio.jpg', 'ideal@mail.com', '0744444466', '2025-08-30 09:14:13', '2025-08-30 09:14:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `category` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `status` enum('open','in_progress','resolved','closed') NOT NULL DEFAULT 'open',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `auth_method` enum('firebase_google','firebase_email','phone') NOT NULL DEFAULT 'firebase_email',
  `password` varchar(255) DEFAULT NULL,
  `google_uid` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `is_suspended` tinyint(1) NOT NULL DEFAULT 0,
  `sus_reason` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `auth_method`, `password`, `google_uid`, `image`, `role`, `is_suspended`, `sus_reason`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 'Clark', 'Kent', 'kent@mail.com', NULL, 'firebase_email', '$2y$10$0WM5/j8HCNYJD4kyIPf8g.ZTCkmOZlEFYhHHzOkD/1MJLBpQ3jwcK', NULL, NULL, 'user', 0, NULL, '2025-07-15 10:08:15', '2025-07-15 17:47:48', 0),
(2, 'Loft', 'Admin', 'admin@loftstudio.com', NULL, 'firebase_email', '$2y$10$TFAFdgtBgpn.ICbQnik.H.Bjpi3S99nw6d/Wmy.IhjeacMH.GpRkS', NULL, NULL, 'admin', 0, NULL, '2025-07-15 10:38:40', '2025-08-28 21:50:20', 0),
(3, 'Dean', 'Winchester', 'deanw@mail.com', NULL, 'firebase_email', '$2y$10$mdHmJSC/pn8/lGWq68h.lO9wSRdGSL6pbF2xWMx2XMaKOqYWidXaq', NULL, NULL, 'user', 1, 'T%C Breach', '2025-08-18 14:17:39', '2025-08-29 09:29:17', 0),
(7, 'Loft', 'Admin', 'aloopat51@gmail.com', NULL, 'firebase_email', '$2y$10$.e5hhqGf7RDgc5b3NldK6O8t5Dg1DOJybmy8szEg6NlxKBpSqPiv2', NULL, NULL, 'admin', 0, NULL, '2025-10-19 20:23:32', '2025-10-20 09:58:48', 0),
(8, 'Pat', 'Aloo', 'aloemo77@gmail.com', NULL, 'firebase_email', '$2y$10$QvFtXNrjd2RtY4ZtZCQKReSHoRrBNehaJdU9yvx.iiL6fsJXIpO0u', '1kxEsv5QQIasD9Q6w74CoS8zTV93', NULL, 'user', 0, NULL, '2025-10-20 06:04:55', '2025-10-20 06:04:55', 0),
(9, 'Imani', 'Ragwa', 'imaniragwa@gmail.com', NULL, 'firebase_email', '$2y$10$cx/UeorpdFuDgLUgIE9FxuQu4ro7q.KRvxZK/GwfJTkIdlk0/MG/.', NULL, NULL, 'admin', 0, NULL, '2025-10-20 06:14:00', '2025-11-19 08:05:35', 0),
(11, 'Loft', 'Admin', 'adminpat@loft.com', NULL, 'firebase_email', '$2y$10$OSHmye3rfQGgaQNs7a9hKeG4WgeogzbWKLr9.oJtcnXZsmnO9YMF6', NULL, NULL, 'admin', 0, NULL, '2025-11-07 09:17:30', '2025-11-07 09:24:42', 0),
(12, 'Leon', 'Urio', 'leon@mail.com', NULL, 'firebase_email', '$2y$10$7aSQcIjeEUnYzP5QL7ZfaOwXWwV0VfZ3FIoEQSXo5vwy4uKfm1zdm', NULL, NULL, 'user', 0, NULL, '2025-11-18 15:35:21', '2025-11-18 15:35:21', 0),
(13, 'Ted', 'Jatang', 'ted@mail.com', NULL, 'firebase_email', '$2y$10$eONtIaxMN08Yxfpqzji6Be8Y6TjxtzfycrmfB2tqP.zAqjNnGEGO6', NULL, '/uploads/1763483575_691c9fb7cd4f3.jpeg', 'user', 0, NULL, '2025-11-18 16:09:20', '2025-11-18 16:32:55', 0),
(14, 'Pat', 'Liemo', 'aloopat@mail.com', '+254791488881', 'phone', '$2y$10$6apzPzoJ1dmopYL./Tp2DOmHs2AWbinoA8SQzoC.VCj68C25oIB76', NULL, '/loft-studio/uploads/profile_1768200247_696498377edc5.jpg', 'admin', 0, NULL, '2025-12-27 14:28:15', '2026-01-21 16:02:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `twofa_enabled` tinyint(1) DEFAULT 0,
  `language` varchar(10) DEFAULT 'en',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `user_id`, `twofa_enabled`, `language`, `created_at`, `updated_at`) VALUES
(1, 13, 0, 'en', '2025-11-18 16:48:32', '2025-11-21 15:13:11'),
(6, 8, 0, 'en', '2025-12-29 09:27:39', '2025-12-29 09:27:39'),
(7, 14, 0, 'en', '2026-01-21 15:44:52', '2026-01-21 15:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `verification_records`
--

CREATE TABLE `verification_records` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `verifier_id` int(11) DEFAULT NULL,
  `verification_type` enum('physical','legal','technical') NOT NULL,
  `status` enum('pending','in_progress','completed','rejected') DEFAULT 'pending',
  `documents` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Stores verification evidence and documents' CHECK (json_valid(`documents`)),
  `notes` text DEFAULT NULL,
  `started_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bookings_user` (`user_id`),
  ADD KEY `fk_bookings_property` (`property_id`);

--
-- Indexes for table `email_logs`
--
ALTER TABLE `email_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_created` (`created_at`);

--
-- Indexes for table `email_otp_storage`
--
ALTER TABLE `email_otp_storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_expires` (`expires_at`);

--
-- Indexes for table `favorites_models`
--
ALTER TABLE `favorites_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-model-user_id` (`user_id`),
  ADD KEY `fk_model_id` (`model_id`);

--
-- Indexes for table `favorites_properties`
--
ALTER TABLE `favorites_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk-user_id` (`user_id`),
  ADD KEY `fk-property_id` (`property_id`);

--
-- Indexes for table `furniture_models`
--
ALTER TABLE `furniture_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_store_id` (`store_id`);

--
-- Indexes for table `loft_tours`
--
ALTER TABLE `loft_tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_property_id` (`property_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_created_by` (`created_by`);

--
-- Indexes for table `loft_tour_analytics`
--
ALTER TABLE `loft_tour_analytics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `node_id` (`node_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `idx_tour_id` (`tour_id`),
  ADD KEY `idx_event_type` (`event_type`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `loft_tour_layers`
--
ALTER TABLE `loft_tour_layers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_node_id` (`node_id`),
  ADD KEY `idx_depth_order` (`depth_order`);

--
-- Indexes for table `loft_tour_nodes`
--
ALTER TABLE `loft_tour_nodes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_node_per_tour` (`tour_id`,`node_id`),
  ADD KEY `idx_tour_id` (`tour_id`),
  ADD KEY `idx_node_order` (`node_order`);

--
-- Indexes for table `model_views`
--
ALTER TABLE `model_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_model_view` (`model_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_notification` (`user_id`);

--
-- Indexes for table `otp_storage`
--
ALTER TABLE `otp_storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_phone` (`phone`),
  ADD KEY `idx_expires` (`expires_at`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `fk-reset-tokens-user_id` (`user_id`);

--
-- Indexes for table `payment_records`
--
ALTER TABLE `payment_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_reference` (`payment_reference`),
  ADD KEY `idx_property_id` (`property_id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_service_type` (`service_type`),
  ADD KEY `idx_payment_status` (`payment_status`),
  ADD KEY `idx_transaction_date` (`transaction_date`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_agent_id` (`agent_id`);

--
-- Indexes for table `property_images`
--
ALTER TABLE `property_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_property_id` (`property_id`),
  ADD KEY `idx_category` (`category`),
  ADD KEY `idx_is_hero` (`is_hero`);

--
-- Indexes for table `property_reviews`
--
ALTER TABLE `property_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `property_views`
--
ALTER TABLE `property_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_property_view` (`property_id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `referral_code` (`referral_code`),
  ADD KEY `referrer_id` (`referrer_id`),
  ADD KEY `referred_user_id` (`referred_user_id`);

--
-- Indexes for table `revenue`
--
ALTER TABLE `revenue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_revenue_property` (`property_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`),
  ADD KEY `fk_property_id` (`property_id`);

--
-- Indexes for table `review_likes`
--
ALTER TABLE `review_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_like` (`review_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sms_logs`
--
ALTER TABLE `sms_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_phone` (`phone`),
  ADD KEY `idx_created` (`created_at`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user` (`user_id`);

--
-- Indexes for table `verification_records`
--
ALTER TABLE `verification_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_property_id` (`property_id`),
  ADD KEY `idx_verifier_id` (`verifier_id`),
  ADD KEY `idx_verification_type` (`verification_type`),
  ADD KEY `idx_status` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1474;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `email_logs`
--
ALTER TABLE `email_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `email_otp_storage`
--
ALTER TABLE `email_otp_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `favorites_models`
--
ALTER TABLE `favorites_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `favorites_properties`
--
ALTER TABLE `favorites_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `furniture_models`
--
ALTER TABLE `furniture_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loft_tours`
--
ALTER TABLE `loft_tours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loft_tour_analytics`
--
ALTER TABLE `loft_tour_analytics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loft_tour_layers`
--
ALTER TABLE `loft_tour_layers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loft_tour_nodes`
--
ALTER TABLE `loft_tour_nodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `model_views`
--
ALTER TABLE `model_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `otp_storage`
--
ALTER TABLE `otp_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_records`
--
ALTER TABLE `payment_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `property_images`
--
ALTER TABLE `property_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `property_reviews`
--
ALTER TABLE `property_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `property_views`
--
ALTER TABLE `property_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1099;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `revenue`
--
ALTER TABLE `revenue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `review_likes`
--
ALTER TABLE `review_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sms_logs`
--
ALTER TABLE `sms_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_preferences`
--
ALTER TABLE `user_preferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `verification_records`
--
ALTER TABLE `verification_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `fk_bookings_property` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bookings_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorites_models`
--
ALTER TABLE `favorites_models`
  ADD CONSTRAINT `fk-model-user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_model_id` FOREIGN KEY (`model_id`) REFERENCES `furniture_models` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorites_properties`
--
ALTER TABLE `favorites_properties`
  ADD CONSTRAINT `fk-property_id` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk-user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `furniture_models`
--
ALTER TABLE `furniture_models`
  ADD CONSTRAINT `fk_store_id` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `loft_tours`
--
ALTER TABLE `loft_tours`
  ADD CONSTRAINT `loft_tours_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `loft_tours_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `loft_tour_analytics`
--
ALTER TABLE `loft_tour_analytics`
  ADD CONSTRAINT `loft_tour_analytics_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `loft_tours` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `loft_tour_analytics_ibfk_2` FOREIGN KEY (`node_id`) REFERENCES `loft_tour_nodes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `loft_tour_analytics_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `loft_tour_layers`
--
ALTER TABLE `loft_tour_layers`
  ADD CONSTRAINT `loft_tour_layers_ibfk_1` FOREIGN KEY (`node_id`) REFERENCES `loft_tour_nodes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `loft_tour_nodes`
--
ALTER TABLE `loft_tour_nodes`
  ADD CONSTRAINT `loft_tour_nodes_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `loft_tours` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_views`
--
ALTER TABLE `model_views`
  ADD CONSTRAINT `fk_model_view` FOREIGN KEY (`model_id`) REFERENCES `furniture_models` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `fk_user_notification` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD CONSTRAINT `fk-reset-token-user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_records`
--
ALTER TABLE `payment_records`
  ADD CONSTRAINT `fk_payment_property` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_payment_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `fk_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `property_images`
--
ALTER TABLE `property_images`
  ADD CONSTRAINT `property_images_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `property_reviews`
--
ALTER TABLE `property_reviews`
  ADD CONSTRAINT `property_reviews_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `property_reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `property_views`
--
ALTER TABLE `property_views`
  ADD CONSTRAINT `fk_property_view` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `referrals`
--
ALTER TABLE `referrals`
  ADD CONSTRAINT `referrals_ibfk_1` FOREIGN KEY (`referrer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `referrals_ibfk_2` FOREIGN KEY (`referred_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `revenue`
--
ALTER TABLE `revenue`
  ADD CONSTRAINT `fk_revenue_property` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `fk_property_id` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `review_likes`
--
ALTER TABLE `review_likes`
  ADD CONSTRAINT `review_likes_ibfk_1` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_likes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD CONSTRAINT `support_tickets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD CONSTRAINT `user_preferences_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `verification_records`
--
ALTER TABLE `verification_records`
  ADD CONSTRAINT `fk_verification_property` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_verification_verifier` FOREIGN KEY (`verifier_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
