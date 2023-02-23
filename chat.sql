-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 23, 2023 at 12:46 PM
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(16, '1_14', NULL, '2023-02-18 20:16:48', '2023-02-18 20:16:48'),
(17, '2_14', NULL, '2023-02-18 20:16:54', '2023-02-18 20:16:54'),
(18, '4_14', NULL, '2023-02-18 20:20:27', '2023-02-18 20:20:27'),
(19, '14_15', NULL, '2023-02-18 20:36:35', '2023-02-18 20:36:35'),
(20, '3_14', NULL, '2023-02-18 20:45:52', '2023-02-18 20:45:52'),
(21, '14_14', NULL, '2023-02-18 20:52:45', '2023-02-18 20:52:45'),
(22, '1_1', NULL, '2023-02-18 21:36:32', '2023-02-18 21:36:32');

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
(26, 1, 22, '2023-02-18 21:36:32', '2023-02-18 21:36:32');

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
(19, 14, 16, 'semmi', '2023-02-19 17:03:13', '2023-02-19 17:03:13');

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
(19, 'App\\Models\\User', 14, '', 'd5bd646aa0ee39a4ca7d4640df3a616a19189efc5c66205b503635b265737bf5', '[\"*\"]', '2023-02-23 11:42:26', NULL, '2023-02-23 11:20:49', '2023-02-23 11:42:26');

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
(15, 'Simon', 'angeliimre5677@gmail.com', NULL, '$2y$10$RTJZd/hRXxc5bqxDxUkp9elejoXDp/r3o.zf7.0.feSipvxYOGUZi', NULL, '2023-02-17 15:34:34', '2023-02-17 15:34:34');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `group_user`
--
ALTER TABLE `group_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
