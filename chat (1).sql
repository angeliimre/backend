-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 14, 2023 at 11:28 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `realgroup` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `realgroup`, `created_at`, `updated_at`) VALUES
(16, '1_14', NULL, 0, '2023-02-18 20:16:48', '2023-02-18 20:16:48'),
(17, '2_14', NULL, 0, '2023-02-18 20:16:54', '2023-02-18 20:16:54'),
(18, '4_14', NULL, 0, '2023-02-18 20:20:27', '2023-02-18 20:20:27'),
(19, '14_15', NULL, 0, '2023-02-18 20:36:35', '2023-02-18 20:36:35'),
(20, '3_14', NULL, 0, '2023-02-18 20:45:52', '2023-02-18 20:45:52'),
(21, '14_14', NULL, 0, '2023-02-18 20:52:45', '2023-02-18 20:52:45'),
(22, '1_1', NULL, 0, '2023-02-18 21:36:32', '2023-02-18 21:36:32'),
(23, '1_39', NULL, 0, '2023-03-01 13:12:30', '2023-03-01 13:12:30'),
(24, '1_16', NULL, 0, '2023-03-01 13:14:03', '2023-03-01 13:14:03'),
(25, '14_16', NULL, 0, '2023-03-07 10:22:31', '2023-03-07 10:22:31'),
(26, '14_17', NULL, 0, '2023-03-07 10:28:29', '2023-03-07 10:28:29'),
(27, 'janik', NULL, 1, '2023-03-09 12:45:09', '2023-03-09 12:45:09'),
(28, 'bolondok', NULL, 1, '2023-03-09 12:51:47', '2023-03-09 12:51:47'),
(29, 'nana', NULL, 1, '2023-03-09 12:53:49', '2023-03-09 12:53:49'),
(30, 'sellok', NULL, 1, '2023-03-09 12:56:19', '2023-03-09 12:56:19'),
(31, 'teve', NULL, 1, '2023-03-09 12:59:24', '2023-03-09 12:59:24'),
(32, 'csopi', NULL, 1, '2023-03-09 13:01:14', '2023-03-09 13:01:14'),
(33, 'csopi2', NULL, 1, '2023-03-09 13:01:30', '2023-03-09 13:01:30'),
(34, 'csopi3', NULL, 1, '2023-03-09 13:01:42', '2023-03-09 13:01:42'),
(35, 'csopi5', NULL, 1, '2023-03-09 13:02:30', '2023-03-09 13:02:30'),
(37, 'csopi6', NULL, 1, '2023-03-09 13:02:45', '2023-03-09 13:02:45'),
(39, 'fradi', NULL, 1, '2023-03-09 13:08:18', '2023-03-09 13:08:18'),
(40, 'ute', NULL, 1, '2023-03-09 13:09:05', '2023-03-09 13:09:05'),
(41, '1_17', NULL, 0, '2023-03-09 20:13:37', '2023-03-09 20:13:37'),
(42, '2_15', NULL, 0, '2023-03-12 12:36:26', '2023-03-12 12:36:26'),
(43, '1_4', NULL, 0, '2023-03-13 12:19:22', '2023-03-13 12:19:22'),
(44, '1_profile', NULL, 0, '2023-03-13 13:13:41', '2023-03-13 13:13:41'),
(45, 'gazdmen', NULL, 1, '2023-03-13 13:48:47', '2023-03-13 13:48:47'),
(46, '1_45', NULL, 0, '2023-03-13 13:48:50', '2023-03-13 13:48:50'),
(47, 'triviador', NULL, 1, '2023-03-13 13:54:15', '2023-03-13 13:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `group_user`
--

CREATE TABLE `group_user` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `group_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_user`
--

INSERT INTO `group_user` (`id`, `user_id`, `group_id`, `created_at`, `updated_at`) VALUES
(13, 14, 16, '2023-02-18 20:16:48', '2023-02-18 20:16:48'),
(14, 1, 16, '2023-02-18 20:16:48', '2023-02-18 20:16:48'),
(15, 14, 17, '2023-02-18 20:16:54', '2023-02-18 20:16:54'),
(16, 2, 17, '2023-02-18 20:16:54', '2023-02-18 20:16:54'),
(17, 14, 18, '2023-02-18 20:20:27', '2023-02-18 20:20:27'),
(18, 4, 18, '2023-02-18 20:20:27', '2023-02-18 20:20:27'),
(19, 14, 19, '2023-02-18 20:36:35', '2023-02-18 20:36:35'),
(20, 15, 19, '2023-02-18 20:36:35', '2023-02-18 20:36:35'),
(21, 14, 20, '2023-02-18 20:45:52', '2023-02-18 20:45:52'),
(22, 3, 20, '2023-02-18 20:45:52', '2023-02-18 20:45:52'),
(23, 14, 21, '2023-02-18 20:52:45', '2023-02-18 20:52:45'),
(24, 14, 21, '2023-02-18 20:52:45', '2023-02-18 20:52:45'),
(25, 1, 22, '2023-02-18 21:36:32', '2023-02-18 21:36:32'),
(26, 1, 22, '2023-02-18 21:36:32', '2023-02-18 21:36:32'),
(27, 1, 23, '2023-03-01 13:12:30', '2023-03-01 13:12:30'),
(29, 1, 24, '2023-03-01 13:14:03', '2023-03-01 13:14:03'),
(30, 16, 24, '2023-03-01 13:14:03', '2023-03-01 13:14:03'),
(31, 14, 25, '2023-03-07 10:22:31', '2023-03-07 10:22:31'),
(32, 16, 25, '2023-03-07 10:22:31', '2023-03-07 10:22:31'),
(33, 14, 26, '2023-03-07 10:28:29', '2023-03-07 10:28:29'),
(34, 17, 26, '2023-03-07 10:28:29', '2023-03-07 10:28:29'),
(35, 17, 29, '2023-03-09 12:53:49', '2023-03-09 12:53:49'),
(36, 17, 29, '2023-03-09 12:53:49', '2023-03-09 12:53:49'),
(37, 17, 29, '2023-03-09 12:53:49', '2023-03-09 12:53:49'),
(38, 3, 30, '2023-03-09 12:56:19', '2023-03-09 12:56:19'),
(39, 4, 30, '2023-03-09 12:56:19', '2023-03-09 12:56:19'),
(40, 14, 30, '2023-03-09 12:56:19', '2023-03-09 12:56:19'),
(41, 15, 30, '2023-03-09 12:56:19', '2023-03-09 12:56:19'),
(42, 3, 31, '2023-03-09 12:59:24', '2023-03-09 12:59:24'),
(43, 4, 31, '2023-03-09 12:59:24', '2023-03-09 12:59:24'),
(44, 14, 31, '2023-03-09 12:59:24', '2023-03-09 12:59:24'),
(45, 15, 31, '2023-03-09 12:59:24', '2023-03-09 12:59:24'),
(46, 1, 32, '2023-03-09 13:01:14', '2023-03-09 13:01:14'),
(47, 3, 32, '2023-03-09 13:01:14', '2023-03-09 13:01:14'),
(48, 4, 32, '2023-03-09 13:01:14', '2023-03-09 13:01:14'),
(49, 1, 33, '2023-03-09 13:01:30', '2023-03-09 13:01:30'),
(50, 3, 33, '2023-03-09 13:01:31', '2023-03-09 13:01:31'),
(51, 14, 33, '2023-03-09 13:01:31', '2023-03-09 13:01:31'),
(52, 1, 34, '2023-03-09 13:01:42', '2023-03-09 13:01:42'),
(53, 3, 34, '2023-03-09 13:01:42', '2023-03-09 13:01:42'),
(54, 4, 34, '2023-03-09 13:01:42', '2023-03-09 13:01:42'),
(66, 1, 37, '2023-03-09 13:02:45', '2023-03-09 13:02:45'),
(67, 2, 37, '2023-03-09 13:02:45', '2023-03-09 13:02:45'),
(68, 14, 37, '2023-03-09 13:02:45', '2023-03-09 13:02:45'),
(69, 15, 37, '2023-03-09 13:02:45', '2023-03-09 13:02:45'),
(77, 1, 40, '2023-03-09 13:09:05', '2023-03-09 13:09:05'),
(78, 3, 40, '2023-03-09 13:09:05', '2023-03-09 13:09:05'),
(79, 4, 40, '2023-03-09 13:09:05', '2023-03-09 13:09:05'),
(80, 14, 40, '2023-03-09 13:09:05', '2023-03-09 13:09:05'),
(81, 17, 41, '2023-03-09 20:13:37', '2023-03-09 20:13:37'),
(82, 1, 41, '2023-03-09 20:13:37', '2023-03-09 20:13:37'),
(83, 2, 42, '2023-03-12 12:36:26', '2023-03-12 12:36:26'),
(84, 15, 42, '2023-03-12 12:36:26', '2023-03-12 12:36:26'),
(85, 1, 43, '2023-03-13 12:19:22', '2023-03-13 12:19:22'),
(86, 4, 43, '2023-03-13 12:19:22', '2023-03-13 12:19:22'),
(87, 1, 44, '2023-03-13 13:13:41', '2023-03-13 13:13:41'),
(88, 1, 45, '2023-03-13 13:48:47', '2023-03-13 13:48:47'),
(89, 2, 45, '2023-03-13 13:48:47', '2023-03-13 13:48:47'),
(90, 3, 45, '2023-03-13 13:48:47', '2023-03-13 13:48:47'),
(91, 4, 45, '2023-03-13 13:48:47', '2023-03-13 13:48:47'),
(92, 14, 45, '2023-03-13 13:48:47', '2023-03-13 13:48:47'),
(93, 15, 45, '2023-03-13 13:48:47', '2023-03-13 13:48:47'),
(94, 16, 45, '2023-03-13 13:48:47', '2023-03-13 13:48:47'),
(95, 17, 45, '2023-03-13 13:48:47', '2023-03-13 13:48:47'),
(96, 1, 46, '2023-03-13 13:48:50', '2023-03-13 13:48:50'),
(98, 1, 47, '2023-03-13 13:54:15', '2023-03-13 13:54:15'),
(99, 2, 47, '2023-03-13 13:54:15', '2023-03-13 13:54:15'),
(100, 3, 47, '2023-03-13 13:54:15', '2023-03-13 13:54:15'),
(101, 4, 47, '2023-03-13 13:54:15', '2023-03-13 13:54:15'),
(102, 14, 47, '2023-03-13 13:54:15', '2023-03-13 13:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `group_id` bigint UNSIGNED NOT NULL,
  `content` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `group_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 16, 'Szia!', NULL, NULL),
(2, 14, 16, 'Szia! Hogy vagy?', NULL, NULL),
(10, 14, 16, 'helloka', '2023-02-19 15:30:19', '2023-02-19 15:30:19'),
(12, 14, 16, 'csa', '2023-02-19 16:01:32', '2023-02-19 16:01:32'),
(13, 14, 17, 'szervusz', '2023-02-19 16:05:04', '2023-02-19 16:05:04'),
(14, 14, 16, 'hello', '2023-02-19 16:54:55', '2023-02-19 16:54:55'),
(15, 14, 16, 'mizu', '2023-02-19 16:55:28', '2023-02-19 16:55:28'),
(16, 14, 16, 'helloka', '2023-02-19 17:00:08', '2023-02-19 17:00:08'),
(17, 14, 16, 'na', '2023-02-19 17:00:33', '2023-02-19 17:00:33'),
(18, 14, 16, 'mivan', '2023-02-19 17:01:54', '2023-02-19 17:01:54'),
(19, 14, 16, 'semmi', '2023-02-19 17:03:13', '2023-02-19 17:03:13'),
(20, 14, 16, 'csa', '2023-03-01 12:11:46', '2023-03-01 12:11:46'),
(21, 14, 17, 'szia jocikam', '2023-03-09 18:57:22', '2023-03-09 18:57:22'),
(22, 14, 16, 'mizu', '2023-03-09 19:04:37', '2023-03-09 19:04:37'),
(23, 14, 17, 'szia uram', '2023-03-09 19:06:04', '2023-03-09 19:06:04'),
(24, 14, 17, 'hii', '2023-03-09 19:13:57', '2023-03-09 19:13:57'),
(25, 14, 16, 'fe', '2023-03-09 19:16:12', '2023-03-09 19:16:12'),
(26, 14, 16, 'csao', '2023-03-09 19:16:37', '2023-03-09 19:16:37'),
(27, 14, 16, 'hahaha', '2023-03-09 19:39:11', '2023-03-09 19:39:11'),
(28, 14, 17, 'hohoho', '2023-03-09 19:39:41', '2023-03-09 19:39:41'),
(29, 14, 17, 'milyen a napod?', '2023-03-09 19:46:00', '2023-03-09 19:46:00'),
(30, 14, 17, 'fewffffeffe', '2023-03-09 19:52:56', '2023-03-09 19:52:56'),
(31, 14, 16, 'gecc', '2023-03-09 19:54:43', '2023-03-09 19:54:43'),
(32, 14, 16, 'bgg', '2023-03-09 20:02:22', '2023-03-09 20:02:22'),
(33, 14, 16, 'zzzz', '2023-03-09 20:03:36', '2023-03-09 20:03:36'),
(34, 14, 16, 'na mar mukodik', '2023-03-09 20:03:59', '2023-03-09 20:03:59'),
(35, 14, 17, 'remelem nalad is jo', '2023-03-09 20:04:31', '2023-03-09 20:04:31'),
(36, 14, 16, 'mi a hazi tesverem', '2023-03-09 20:06:29', '2023-03-09 20:06:29'),
(37, 14, 17, 'kesz a matekod?', '2023-03-09 20:07:03', '2023-03-09 20:07:03'),
(38, 14, 16, 'jozsitol kerem epp a hazit el', '2023-03-09 20:07:31', '2023-03-09 20:07:31'),
(39, 14, 16, 'az jogyerek nem?', '2023-03-09 20:19:47', '2023-03-09 20:19:47'),
(40, 1, 16, 'igen igen', '2023-03-09 20:23:01', '2023-03-09 20:23:01'),
(41, 1, 16, 'ebben egyet ertek', '2023-03-09 20:23:23', '2023-03-09 20:23:23'),
(42, 1, 16, 'holnap valami?', '2023-03-09 20:24:06', '2023-03-09 20:24:06'),
(43, 1, 16, 'persze mehet', '2023-03-09 20:27:05', '2023-03-09 20:27:05'),
(44, 1, 16, 'persze mehet vd', '2023-03-09 20:28:27', '2023-03-09 20:28:27'),
(45, 14, 17, 'hogy vagy?', '2023-03-12 11:13:23', '2023-03-12 11:13:23'),
(46, 2, 17, 'koszi, egesz jol', '2023-03-12 11:15:36', '2023-03-12 11:15:36'),
(47, 2, 17, 'es te?', '2023-03-12 11:16:03', '2023-03-12 11:16:03'),
(48, 14, 17, 'egyre jobban', '2023-03-12 11:18:04', '2023-03-12 11:18:04'),
(49, 14, 17, NULL, '2023-03-12 11:19:26', '2023-03-12 11:19:26'),
(50, 14, 17, 'szep idonk van nem?', '2023-03-12 11:25:33', '2023-03-12 11:25:33'),
(51, 2, 17, 'mar hogy ne volna?', '2023-03-12 11:25:48', '2023-03-12 11:25:48'),
(52, 14, 17, 'csak ne essen', '2023-03-12 11:26:05', '2023-03-12 11:26:05'),
(53, 2, 17, 'sajna jonnek mar nagyon a felhok', '2023-03-12 11:26:25', '2023-03-12 11:26:25'),
(54, 14, 17, 'az a baj igen, esot is mond', '2023-03-12 11:26:57', '2023-03-12 11:26:57'),
(55, 14, 17, 'az a baj igen, esot is mond', '2023-03-12 11:29:13', '2023-03-12 11:29:13'),
(56, 14, 17, 'az a baj igen, esot is mond', '2023-03-12 11:29:29', '2023-03-12 11:29:29'),
(57, 2, 17, 'sajna jonnek mar nagyon a felhok', '2023-03-12 11:30:42', '2023-03-12 11:30:42'),
(58, 14, 17, 'jaja', '2023-03-12 11:39:57', '2023-03-12 11:39:57'),
(59, 2, 17, 'az gaz', '2023-03-12 11:40:16', '2023-03-12 11:40:16'),
(60, 14, 17, 'hat elegge ja', '2023-03-12 11:40:31', '2023-03-12 11:40:31'),
(61, 14, 17, 'hat mit mondjak, szerintem is', '2023-03-12 11:42:00', '2023-03-12 11:42:00'),
(62, 2, 17, 'akkor megin nem lesz foci?', '2023-03-12 11:42:37', '2023-03-12 11:42:37'),
(63, 14, 17, 'hat ugy nez ki ja', '2023-03-12 11:43:00', '2023-03-12 11:43:00'),
(64, 2, 17, 'basszus', '2023-03-12 11:43:19', '2023-03-12 11:43:19'),
(65, 14, 17, 'jajj ne mar', '2023-03-12 11:54:12', '2023-03-12 11:54:12'),
(66, 2, 17, 'na mondj meg valamit', '2023-03-12 12:06:12', '2023-03-12 12:06:12'),
(67, 14, 17, 'valami', '2023-03-12 12:08:36', '2023-03-12 12:08:36'),
(68, 2, 17, 'bovebben?', '2023-03-12 12:08:49', '2023-03-12 12:08:49'),
(69, 14, 17, 'egx joe mehetí?', '2023-03-12 12:10:09', '2023-03-12 12:10:09'),
(70, 2, 17, 'persz bro', '2023-03-12 12:10:27', '2023-03-12 12:10:27'),
(71, 14, 17, 'helyes', '2023-03-12 12:10:45', '2023-03-12 12:10:45'),
(72, 14, 17, 'unatkozom te', '2023-03-12 12:16:31', '2023-03-12 12:16:31'),
(73, 2, 17, 'hat en is batyja', '2023-03-12 12:16:50', '2023-03-12 12:16:50'),
(74, 14, 17, 'shiit', '2023-03-12 13:01:36', '2023-03-12 13:01:36'),
(75, 1, 43, 'szia lajos', '2023-03-13 12:41:22', '2023-03-13 12:41:22'),
(76, 1, 43, 'fewfe', '2023-03-13 12:48:11', '2023-03-13 12:48:11'),
(77, 1, 43, 'helloo', '2023-03-13 12:48:54', '2023-03-13 12:48:54'),
(78, 1, 16, 'szia matyi', '2023-03-13 12:56:59', '2023-03-13 12:56:59'),
(79, 1, 43, 'grtrs', '2023-03-13 13:03:46', '2023-03-13 13:03:46'),
(80, 1, 43, 'csaoka', '2023-03-13 13:04:17', '2023-03-13 13:04:17'),
(81, 1, 16, 'halihoo', '2023-03-13 13:05:22', '2023-03-13 13:05:22'),
(82, 1, 16, 'szervusz matyasom', '2023-03-13 13:07:37', '2023-03-13 13:07:37'),
(83, 1, 43, 'lalii', '2023-03-13 13:08:13', '2023-03-13 13:08:13'),
(84, 1, 16, 'csao', '2023-03-13 13:18:02', '2023-03-13 13:18:02'),
(85, 1, 43, 'lallikaa', '2023-03-13 13:18:43', '2023-03-13 13:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_05_173734_create_groups_table', 1),
(6, '2023_02_05_173855_create_group_user_table', 1),
(7, '2023_02_09_171551_create_files_table', 1),
(8, '2023_02_09_171717_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 9, '', '8e9dd397f2d446ae0c0286e3900542a70e9a842614bda845f1dcf76243e00b30', '[\"*\"]', NULL, NULL, '2023-02-10 11:21:30', '2023-02-10 11:21:30'),
(2, 'App\\Models\\User', 10, '', '2757f0fab44031f3ae399845bb165d335c679bcb5dc03151173c6bd94769abe1', '[\"*\"]', NULL, NULL, '2023-02-14 09:47:15', '2023-02-14 09:47:15'),
(3, 'App\\Models\\User', 11, '', '8b356c451aeffed4e99ad98e3185def99ea937dec40162ed241bce12c18f21c5', '[\"*\"]', NULL, NULL, '2023-02-14 10:14:23', '2023-02-14 10:14:23'),
(4, 'App\\Models\\User', 12, '', 'c3623518d59b98b2d09dec000cc21320b3ff62989d3bb7c0d35627776e861361', '[\"*\"]', NULL, NULL, '2023-02-14 10:28:34', '2023-02-14 10:28:34'),
(5, 'App\\Models\\User', 12, '', 'b6887c0fb25e9bd14607262bad7ce08c57e64fa158ea8e165710d219139ce9d6', '[\"*\"]', NULL, NULL, '2023-02-14 10:29:03', '2023-02-14 10:29:03'),
(6, 'App\\Models\\User', 13, '', 'da40ffa27a21b35272773501e28e582d5c37418ce369dc6189f27184fed52013', '[\"*\"]', NULL, NULL, '2023-02-14 10:58:44', '2023-02-14 10:58:44'),
(7, 'App\\Models\\User', 12, '', '3d63d680c9d5328da9fd2213a26b50d535291eec139221bedc896cc294a33ff9', '[\"*\"]', '2023-02-14 15:01:51', NULL, '2023-02-14 10:59:45', '2023-02-14 15:01:51'),
(8, 'App\\Models\\User', 11, '', '9127bf8750d0c76f2db3df059174f2f493cbfcb1b6e4f4d42b8fd2689a22f8df', '[\"*\"]', '2023-02-17 14:40:28', NULL, '2023-02-17 13:22:37', '2023-02-17 14:40:28'),
(9, 'App\\Models\\User', 1, '', '68846bdcaf0ca502a39d66634929cdf340044afea84a52500a9e86bc263faff7', '[\"*\"]', '2023-02-17 15:21:03', NULL, '2023-02-17 15:19:04', '2023-02-17 15:21:03'),
(10, 'App\\Models\\User', 14, '', 'aa542f79c64918fcf3a968ad160f714404095cb3f7bb5ba6a84ee4f442e01f52', '[\"*\"]', '2023-02-17 15:22:44', NULL, '2023-02-17 15:21:59', '2023-02-17 15:22:44'),
(11, 'App\\Models\\User', 1, '', 'fa36ddc1786d6ccf34369c29e65a6da3c6fad95c1aa4b97537594512dfac38e8', '[\"*\"]', '2023-02-17 15:34:09', NULL, '2023-02-17 15:22:56', '2023-02-17 15:34:09'),
(12, 'App\\Models\\User', 15, '', 'df5c95b3942334a6ffbed72458ddba924ae9a617064e8fbc12776505cea2cd67', '[\"*\"]', '2023-02-18 12:36:03', NULL, '2023-02-17 15:34:34', '2023-02-18 12:36:03'),
(13, 'App\\Models\\User', 14, '', '7f1693fc40fcb039e71b8fd51428b0333c3bdece949da23f6c324ce707463417', '[\"*\"]', '2023-02-18 22:33:00', NULL, '2023-02-18 12:36:18', '2023-02-18 22:33:00'),
(14, 'App\\Models\\User', 1, '', 'bddc4d62ec99a2d4c2078086fd4c9863f17ca3344dd09037d085f10765533185', '[\"*\"]', '2023-02-18 22:27:54', NULL, '2023-02-18 21:04:14', '2023-02-18 22:27:54'),
(15, 'App\\Models\\User', 14, '', 'db6d348463132269cf52faea3baa7a05d796f59fdae71c974d930b2f6df69c77', '[\"*\"]', '2023-02-19 21:56:39', NULL, '2023-02-19 15:08:04', '2023-02-19 21:56:39'),
(16, 'App\\Models\\User', 14, '', '413b3a2b73a13480bd199887971450f1fcc6ca7605a8de191c38d4f80a09d20a', '[\"*\"]', '2023-02-19 16:03:40', NULL, '2023-02-19 16:03:26', '2023-02-19 16:03:40'),
(17, 'App\\Models\\User', 1, '', 'c835cb9a80fa17f87af70a175a1ed2117d5fb9d6c202a6373f8c6bb99dc2086a', '[\"*\"]', '2023-02-19 16:53:52', NULL, '2023-02-19 16:03:46', '2023-02-19 16:53:52'),
(18, 'App\\Models\\User', 1, '', '5cc67fafb7472ee7a5738caaaaef36dce9c82cdb38dc812a140ce2d7f9eb5d1b', '[\"*\"]', '2023-02-19 17:03:55', NULL, '2023-02-19 16:54:05', '2023-02-19 17:03:55'),
(19, 'App\\Models\\User', 14, '', 'd5bd646aa0ee39a4ca7d4640df3a616a19189efc5c66205b503635b265737bf5', '[\"*\"]', '2023-02-23 11:42:26', NULL, '2023-02-23 11:20:49', '2023-02-23 11:42:26'),
(20, 'App\\Models\\User', 14, '', 'ac250e69effe0395ec4f1c81adfb16ca0df0cd522fc5fc6e427e89eb11cefc1e', '[\"*\"]', '2023-03-01 13:28:57', NULL, '2023-03-01 12:11:32', '2023-03-01 13:28:57'),
(21, 'App\\Models\\User', 14, '', 'c0c26777ecf3ef551309dcdae5e07cb518f37bd7cacd8e121bd2b74535ec113e', '[\"*\"]', '2023-03-07 10:26:42', NULL, '2023-03-07 10:09:07', '2023-03-07 10:26:42'),
(22, 'App\\Models\\User', 17, '', '3a2189701d223546142b6b1fd78cd9ad2740334676ed0ab1fa3d14220352482a', '[\"*\"]', '2023-03-07 10:27:23', NULL, '2023-03-07 10:27:08', '2023-03-07 10:27:23'),
(23, 'App\\Models\\User', 14, '', '03056296ae60ad3f5cee4496cdb6c577554a9e9fe776c999766d5b70e369af32', '[\"*\"]', '2023-03-07 11:00:46', NULL, '2023-03-07 10:28:11', '2023-03-07 11:00:46'),
(24, 'App\\Models\\User', 14, '', '2112ace72a5a360b8fb8648c38a482e2f78abebe55b71174e51ff0ea1f77e5ab', '[\"*\"]', '2023-03-07 14:59:14', NULL, '2023-03-07 14:43:51', '2023-03-07 14:59:14'),
(25, 'App\\Models\\User', 14, '', 'b813259b4d441729c341e3838e86d6731f9a23b934504eed86910d5288a3c948', '[\"*\"]', '2023-03-09 11:19:58', NULL, '2023-03-08 19:47:03', '2023-03-09 11:19:58'),
(26, 'App\\Models\\User', 14, '', '6ac64fe8eb0fe777550033e68ae60e969cac96035a544ad1fa38a6b53c7a30f7', '[\"*\"]', '2023-03-09 11:27:35', NULL, '2023-03-09 11:20:04', '2023-03-09 11:27:35'),
(27, 'App\\Models\\User', 14, '', 'f694bb68f318b860eb8601704541a87d885b5fda9bb4ee950cd64f64d5159ee8', '[\"*\"]', '2023-03-09 20:21:58', NULL, '2023-03-09 11:34:02', '2023-03-09 20:21:58'),
(28, 'App\\Models\\User', 17, '', 'f5cb546dba76d13b8c52a4a61860447365c44ca73375705fdcbda156a22a6141', '[\"*\"]', '2023-03-09 20:15:59', NULL, '2023-03-09 20:13:24', '2023-03-09 20:15:59'),
(29, 'App\\Models\\User', 1, '', '102ffa9c4cec3abf326258f661f2cfa63e4a5be987acc65ec8647d1b3b523e57', '[\"*\"]', '2023-03-09 20:28:41', NULL, '2023-03-09 20:16:06', '2023-03-09 20:28:41'),
(30, 'App\\Models\\User', 1, '', '4586b741373f8c1fdff284167633b5c453627d45647c1a7e2306d6fb1d691ac3', '[\"*\"]', '2023-03-09 20:28:38', NULL, '2023-03-09 20:25:23', '2023-03-09 20:28:38'),
(31, 'App\\Models\\User', 1, '', '5e29a28781e0d0e5e5290a9e8756c1d50873ca8cd3ba831ba7c98357ed1eb557', '[\"*\"]', '2023-03-12 11:12:32', NULL, '2023-03-12 11:11:28', '2023-03-12 11:12:32'),
(32, 'App\\Models\\User', 14, '', '3e51fefa4727c465380c75373a9be256d384f6f582a4ee0ad7f36f400735ba6f', '[\"*\"]', '2023-03-12 11:23:24', NULL, '2023-03-12 11:12:39', '2023-03-12 11:23:24'),
(33, 'App\\Models\\User', 2, '', '54da0a3a01a01111e2a999d66692237c79d572ca990e9a4d49b6513f5960f502', '[\"*\"]', '2023-03-12 11:23:37', NULL, '2023-03-12 11:14:51', '2023-03-12 11:23:37'),
(34, 'App\\Models\\User', 1, '', 'd4626b07177c2d2f0b3b02b436f7f16e6d57d23f43e821ac7aff565d31a5d9ce', '[\"*\"]', '2023-03-12 11:24:03', NULL, '2023-03-12 11:23:21', '2023-03-12 11:24:03'),
(35, 'App\\Models\\User', 14, '', 'a6ea688510e8cff8a6b3c323a58e24e9b73a330dccf6572392618119aea5a880', '[\"*\"]', '2023-03-12 15:20:29', NULL, '2023-03-12 11:24:18', '2023-03-12 15:20:29'),
(36, 'App\\Models\\User', 2, '', '4725464256790664443a82faae5c3468f307ca5508566a3c9587892e3d59ce3a', '[\"*\"]', '2023-03-12 11:32:40', NULL, '2023-03-12 11:24:40', '2023-03-12 11:32:40'),
(37, 'App\\Models\\User', 2, '', '19ecb4ea648c88dfb3ab53e0c26d72b4291be1d31a694040ad7e026e348e5b2f', '[\"*\"]', '2023-03-12 15:20:26', NULL, '2023-03-12 11:32:46', '2023-03-12 15:20:26'),
(38, 'App\\Models\\User', 1, '', '60c11c5e2983348628c7c3b58f04eb6b45a8963fbbbbf224ddeb1f4cfa87a8f2', '[\"*\"]', '2023-03-14 10:26:56', NULL, '2023-03-13 11:47:33', '2023-03-14 10:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Imre', 'imre.angeli@stud.uni-corvinus.hu', NULL, '$2y$10$FDGgTDqbun427xEA7mwGNe6ayzHAcIX4BdRMlqGm9wH1h5wcIGnlK', NULL, '2023-02-10 10:28:55', '2023-02-10 10:28:55'),
(2, 'József', 'imre.angeli22@stud.uni-corvinus.hu', NULL, '$2y$10$oEjkGt5OiHbygHVPx0y5Ce4tpTZ1VF9WJs4SntDSyqPbAUDe.sq7S', NULL, '2023-02-10 11:07:35', '2023-02-10 11:07:35'),
(3, 'Gizi', 'imre.angeli221@stud.uni-corvinus.hu', NULL, '$2y$10$LVEjkq8TPvJRFsNqQxjaK.lLw1iVyXNpM02iV3Qd2zRKzI5EOgStu', NULL, '2023-02-10 11:08:54', '2023-02-10 11:08:54'),
(4, 'Lajos', 'imre.angeli2211@stud.uni-corvinus.hu', NULL, '$2y$10$tK01YFpHObEAqewVw/A3P.otS/O7FNAN1VIfYPtl6xuT1idzPzuzK', NULL, '2023-02-10 11:10:08', '2023-02-10 11:10:08'),
(14, 'Matyi', 'angeliimre577@gmail.com', NULL, '$2y$10$gWjTHDFk1CbY.S7K.hxAKujSP9p0mxiF1kkfGpUPUPFORXDj5gS2e', NULL, '2023-02-17 15:21:59', '2023-02-17 15:21:59'),
(15, 'Simon', 'angeliimre5677@gmail.com', NULL, '$2y$10$RTJZd/hRXxc5bqxDxUkp9elejoXDp/r3o.zf7.0.feSipvxYOGUZi', NULL, '2023-02-17 15:34:34', '2023-02-17 15:34:34'),
(16, 'Misi', 'ms@ms.hu', NULL, '12345', NULL, NULL, NULL),
(17, 'Zoli', 'de@de.hu', NULL, '$2y$10$nHN1kHlUsVdP9NFL2dvB5uF31utSKMlJnpRrklVDc3fbhWjrXWkGG', NULL, '2023-03-07 10:27:08', '2023-03-07 10:27:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_user`
--
ALTER TABLE `group_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_user_user_id_foreign` (`user_id`),
  ADD KEY `group_user_group_id_foreign` (`group_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_id_foreign` (`user_id`),
  ADD KEY `messages_group_id_foreign` (`group_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `group_user`
--
ALTER TABLE `group_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `group_user`
--
ALTER TABLE `group_user`
  ADD CONSTRAINT `group_user_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `group_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
