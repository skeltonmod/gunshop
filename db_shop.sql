-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 17, 2021 at 02:24 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_15_135335_create_people_table', 1),
(5, '2021_07_15_140607_create_users_table', 2),
(16, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(17, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(18, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(19, '2016_06_01_000004_create_oauth_clients_table', 3),
(20, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3),
(21, '2021_07_16_053857_create_users_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('036f76eaf52f20f8c19213996fd44b14fd8a155925bcb866efe92a277c2912792f8dd8413ec8f82b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:27:32', '2021-07-15 23:27:32', '2022-07-16 07:27:32'),
('110a8a0197b5894bea138a94f24a2be68f3fbc9d376ec0e20636be926ea4d54c62784c6766ec9dd0', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:26:00', '2021-07-15 23:26:00', '2022-07-16 07:26:00'),
('18d45b80366a775f403dfe8b2e0324f488f3c1fdc540ffe4dae2642e570c32d1c33d47019483bed1', 2, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 22:51:38', '2021-07-15 22:51:38', '2022-07-16 06:51:38'),
('1a511218a001d1e2e47c2a1467c1708b5f46e4c649d3ae70df3ab38c79948f313b51fcbb45351116', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:53:43', '2021-07-15 23:53:43', '2022-07-16 07:53:43'),
('1aa56c7b47541e996ae277c4d955d864e2cf3c9b8b526adfb6f7a04be4452c3e348940b9c03a1176', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 03:15:31', '2021-07-16 03:15:31', '2022-07-16 11:15:31'),
('1f9847ac8f53dc7cbf158869816413c234b770a2036ad7dd830996a6b635514c7692c5c9c0a43d6f', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:58:33', '2021-07-15 23:58:33', '2022-07-16 07:58:33'),
('2a85fff606777b4e0818e78ba6622fe3f17683afebcfff1676c2ff1166423fb34623006b3e45b8f1', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:24:57', '2021-07-15 23:24:57', '2022-07-16 07:24:57'),
('37fc085646dcc4f20e9a423def58adf12b0595353b31092fd49683154f1f6c76a52fcabc65373307', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:23:11', '2021-07-15 23:23:11', '2022-07-16 07:23:11'),
('3c326325ba70ef88253ce493465384f9b139076706afa0b7497e3eb022e570514ca4550e542fbd33', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:55:13', '2021-07-15 23:55:13', '2022-07-16 07:55:13'),
('40a51ed4444ecb2524f3987f55b307a5ef9ccc523a0bcb9e03d41cdb4f7a59f83bc540fc120736ca', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:55:58', '2021-07-15 23:55:58', '2022-07-16 07:55:58'),
('474c7202e5af210d0e69a4a22ee61821f9a9a1e36666a8586c83dd6e971c8dad8f6450c33a5dbef5', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 01:42:57', '2021-07-16 01:42:57', '2022-07-16 09:42:57'),
('4820512023ec06c04e50881fc17e93ac2adc8c76a68c8d577211b990d7fc59a8040598980921a5a0', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 02:01:00', '2021-07-16 02:01:00', '2022-07-16 10:01:00'),
('48a41390eb5f042860f8f552045e138c30b19b6bebce55c3b7a7205e808bad5ee94cd9595f636eea', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 03:14:45', '2021-07-16 03:14:45', '2022-07-16 11:14:45'),
('57036407080a8176361be9e0beb3389d875152b0e177d949deb3cd05bc8e1661a4631a1008f137fa', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 00:01:21', '2021-07-16 00:01:21', '2022-07-16 08:01:21'),
('5c1aa4be6127e15864437e44214f1aedb1d2fa44d14977e0ee110d530a0a21f7ae3d6befc99266f2', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 22:32:12', '2021-07-15 22:32:12', '2022-07-16 06:32:12'),
('736ba7b13cf7e9c3e9d90d9ae994ad0b2dccc60df40bf3fcf3d8210fdfad297db7460e17a0af090e', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 02:02:43', '2021-07-16 02:02:43', '2022-07-16 10:02:43'),
('88d80ee7f17991ad62b30229fd0e07b7ab27d68fa91fd4cd193116f331e18c2a2e647a226c75a065', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 22:40:09', '2021-07-15 22:40:09', '2022-07-16 06:40:09'),
('8e3e2f69fbb477d9d6e18a0d231e22510788e1f490431befb412d7680f6693a4f21bee30ffe34eb0', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:59:08', '2021-07-15 23:59:08', '2022-07-16 07:59:08'),
('95aadc695fe49bcaf8baef5b9a777d670815f39cb5854632f55fb761fad9ddb24df298a939af0c20', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 03:23:34', '2021-07-16 03:23:34', '2022-07-16 11:23:34'),
('beac3286f654f7be93b5e91ac31106a417d4ba0415d99c518365dd84035b569f17134d2f7c902a13', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:21:37', '2021-07-15 23:21:37', '2022-07-16 07:21:37'),
('bfe5a6037ee2ba241f2609db0520f7ca8969d6f0c0a3f9aba9618f839e828818bfbc4df4e76a5c29', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:58:31', '2021-07-15 23:58:31', '2022-07-16 07:58:31'),
('c0fa2fb80d14b3a086956764a68091a11ced96916c3e92a7e3c1b09082a8a218769eedbf2af125e2', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:58:36', '2021-07-15 23:58:36', '2022-07-16 07:58:36'),
('c10f091c610e8cbcc2cd96c863181a70ab5d2d4bccc914359fd1e9e1f9744f5bc6aac8b503cc63c8', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 01:42:01', '2021-07-16 01:42:01', '2022-07-16 09:42:01'),
('db5d8c9429bf68281763196e5f056f6f6d09734b8235ff938748fdccf850687509676fd66ca8e18d', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 03:16:58', '2021-07-16 03:16:58', '2022-07-16 11:16:58'),
('db77ea2c98196b505994d0967448d82856e0bac038e0c6441b8ec1af669e164fd5414f16dbc2dbf8', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:22:06', '2021-07-15 23:22:06', '2022-07-16 07:22:06'),
('de5042b344522d68a536cf397b8d3078915f4f4b517d7b33eabce8f8c004ba0eb74bdbe74521b0c8', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:47:49', '2021-07-15 23:47:49', '2022-07-16 07:47:49'),
('ed54d9e8ebb83ed2036d0b431e51fcc580865bf55bb36948f1239404789e22afe2002ce7520eb85c', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:49:24', '2021-07-15 23:49:24', '2022-07-16 07:49:24'),
('ee06bbc8670f39977d2163175e74303799245b0fe72c98388a76739e860f98c108daaa117916ed47', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 01:40:20', '2021-07-16 01:40:20', '2022-07-16 09:40:20'),
('fae1d40cf23a04772125a4972ff0b78d4dda3c07eee6f6ec8decb6557a5eb5e59343a5529db6608f', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 22:34:19', '2021-07-15 22:34:19', '2022-07-16 06:34:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '6yby2gamG2u1GyiwkBbBiaVppdQ6bbJr1HHDVNpU', NULL, 'http://localhost', 1, 0, 0, '2021-07-15 21:59:16', '2021-07-15 21:59:16'),
(2, NULL, 'Laravel Password Grant Client', 'ufX3vf75gRGDt3xVsqEie1Yy9d81JQ2RfO1DNqvy', 'users', 'http://localhost', 0, 1, 0, '2021-07-15 21:59:16', '2021-07-15 21:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-07-15 21:59:16', '2021-07-15 21:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `type` enum('Standard','Admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Standard'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `number`, `created_at`, `updated_at`, `remember_token`, `email_verified_at`, `type`) VALUES
(1, 'gvim80', 'abgaoe@gmail.com', '$2y$10$.XC9O5bq.urKkA5aFKtJ9OipQShPF7CG9YDUpoOxCWB9H2F0XRlv2', '09953875103', '2021-07-15 22:34:19', '2021-07-15 22:34:19', NULL, NULL, 'Standard'),
(2, 'Elijah', 'spore@gmail.com', '$2y$10$UjBhp8kfhgTVvrj8Zq5ZWO2dotxtmktpBT0lixt2TtNcJb0Gx67O.', '2123333', '2021-07-15 22:51:38', '2021-07-15 22:51:38', NULL, NULL, 'Standard');

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
