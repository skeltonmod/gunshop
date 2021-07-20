-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2021 at 06:00 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

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
-- Table structure for table `feeds`
--

CREATE TABLE `feeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poster` int(11) NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feeds`
--

INSERT INTO `feeds` (`id`, `poster`, `userid`, `file_location`, `created_at`, `updated_at`) VALUES
(1, 3, '647896849179985', '647896849179985_3_feed.json', '2021-07-19 19:57:29', '2021-07-19 19:57:29'),
(2, 2, '878859915986552', '878859915986552_2_feed.json', '2021-07-20 03:36:43', '2021-07-20 03:36:43'),
(3, 1, '866450606313123', '866450606313123_1_feed.json', '2021-07-20 03:46:07', '2021-07-20 03:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `recipient_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipient_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `sender_type`, `sender_id`, `recipient_type`, `recipient_id`, `status`, `created_at`, `updated_at`) VALUES
(5, 'App\\Models\\User', 3, 'App\\Models\\User', 2, 1, '2021-07-20 00:35:07', '2021-07-20 00:36:13'),
(6, 'App\\Models\\User', 1, 'App\\Models\\User', 2, 1, '2021-07-20 03:21:52', '2021-07-20 03:22:15');

-- --------------------------------------------------------

--
-- Table structure for table `malsync`
--

CREATE TABLE `malsync` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `mal_password` int(11) NOT NULL,
  `mal_email` int(11) NOT NULL
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
(21, '2021_07_16_053857_create_users_table', 4),
(22, '2021_07_17_112116_create_friendships_table', 5),
(23, '2021_07_17_124044_create_malsync_table', 6),
(24, '2021_07_19_140229_create_friendships_table', 6),
(25, '2021_07_19_140230_create_friendships_groups_table', 6),
(26, '2021_07_20_014009_create_friendships_table', 7),
(27, '2021_07_20_014010_create_friendships_groups_table', 7),
(28, '2021_07_20_031451_create_feeds_table', 8),
(29, '2019_05_03_000001_create_customer_columns', 9),
(30, '2019_05_03_000002_create_subscriptions_table', 9),
(31, '2019_05_03_000003_create_subscription_items_table', 9);

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
('017a97ab32d1e286da2faa230e0bce63e258e21fd7caf26964b7003ed345230168a6aecc0c1d94ce', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 01:12:37', '2021-07-17 01:12:37', '2022-07-17 09:12:37'),
('0238c0e6df8cf95e65826187a4a49813cb6249482f56407e954b7324cf1aee78d3bd82d8ba06892b', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 06:49:30', '2021-07-19 06:49:30', '2022-07-19 14:49:30'),
('036f76eaf52f20f8c19213996fd44b14fd8a155925bcb866efe92a277c2912792f8dd8413ec8f82b', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:27:32', '2021-07-15 23:27:32', '2022-07-16 07:27:32'),
('0438d361de32d5e05662125b91d115530fe9684473179fef574bec21de31668bae519348d01c29c4', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 23:56:23', '2021-07-18 23:56:23', '2022-07-19 07:56:23'),
('05e3fdeeee4ef1d076adb9ac3e53798ec899f8efb3600baef4264d8ab013e9519e1b4495b62ef5f3', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 06:09:42', '2021-07-19 06:09:42', '2022-07-19 14:09:42'),
('060ea1849426f3499177a36af25753f32edf860dd971dc31d6c02aed84ea50547e552c0fdff3611b', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 21:37:48', '2021-07-16 21:37:48', '2022-07-17 05:37:48'),
('067a8273a7a843663afa33aac7ab252639dddc9462be50793e99481a8ff80f481713937e95858280', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 05:30:48', '2021-07-19 05:30:48', '2022-07-19 13:30:48'),
('072bada90b969880bbf25653dc8959d618ff448a8aabe4b9625b55efec5d7f9e070a94307b1db3eb', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 01:30:12', '2021-07-17 01:30:12', '2022-07-17 09:30:12'),
('0802901aa44073ce322f358b4131da8d1fde75f9a453faefc01ff4c5d0cd6173ce96f64589b14c99', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-20 01:58:31', '2021-07-20 01:58:31', '2022-07-20 09:58:31'),
('09cd803c81801bc74be972dd450c633e278000ef92a4e63f9dc10c369268ea36798dca94d902c02b', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 17:52:48', '2021-07-19 17:52:48', '2022-07-20 01:52:48'),
('0b70017e0eec5476b858c074572c340d256025a103eeb78056e0880f19eb981c381bff187de5dff5', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 23:51:26', '2021-07-18 23:51:26', '2022-07-19 07:51:26'),
('0bb4b947b95d90a3d781fb4941a758390a0c00df56c14cdb3333091e21799aaa5e5514856a7382c3', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 06:18:08', '2021-07-19 06:18:08', '2022-07-19 14:18:08'),
('0d43867e99a5c06e12a9a4d4ca093e33af69340a6403aa5d60e97a38d700fd39743aeca72e6281f7', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 08:44:21', '2021-07-19 08:44:21', '2022-07-19 16:44:21'),
('0f432be6d3a1640a62b36a944f3309c3a0db5875f111663663742d48e59d83496d2b2f201c7752c6', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 00:36:53', '2021-07-19 00:36:53', '2022-07-19 08:36:53'),
('0f75ea7d65be810a33261156091bbd609dd427daada87899395c05bd86f9d9b13b77cc1995772b95', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 10:15:13', '2021-07-19 10:15:13', '2022-07-19 18:15:13'),
('0f807166da520afd31f7fbc475a450b3fe9b7acfb1b46aa556e457b52a41cf0ae0351bc44b57cf73', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 01:21:47', '2021-07-17 01:21:47', '2022-07-17 09:21:47'),
('0fc1cd4c949a9ae6641a6e8f34295479a1598b193af0bd3ff74b3d16b961849442869b7578fea7bd', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 22:16:57', '2021-07-18 22:16:57', '2022-07-19 06:16:57'),
('110a8a0197b5894bea138a94f24a2be68f3fbc9d376ec0e20636be926ea4d54c62784c6766ec9dd0', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:26:00', '2021-07-15 23:26:00', '2022-07-16 07:26:00'),
('12d65fec423aab3f784ce6d8bcbdfe946b89b332ed9b240e220fdfbbded06fd38346e76531de1c24', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 06:18:41', '2021-07-19 06:18:41', '2022-07-19 14:18:41'),
('15fd0b4704699e12723004a83c5e40f6896fb7e84eb8f4c7b7670c4e4c127cb62d01a430945ca9df', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 08:03:05', '2021-07-17 08:03:05', '2022-07-17 16:03:05'),
('1855a759702c16b340547a39f172b908487681b88ba58ac6f175cf99747e4a5ae1dfd75099f48454', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 03:16:41', '2021-07-17 03:16:41', '2022-07-17 11:16:41'),
('18d45b80366a775f403dfe8b2e0324f488f3c1fdc540ffe4dae2642e570c32d1c33d47019483bed1', 2, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 22:51:38', '2021-07-15 22:51:38', '2022-07-16 06:51:38'),
('1a511218a001d1e2e47c2a1467c1708b5f46e4c649d3ae70df3ab38c79948f313b51fcbb45351116', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:53:43', '2021-07-15 23:53:43', '2022-07-16 07:53:43'),
('1aa56c7b47541e996ae277c4d955d864e2cf3c9b8b526adfb6f7a04be4452c3e348940b9c03a1176', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 03:15:31', '2021-07-16 03:15:31', '2022-07-16 11:15:31'),
('1b034be1e30147fdef1be2fc9666adb6cba36e32e631cf348978e34abcedfb4666036c34db19db24', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 06:50:35', '2021-07-19 06:50:35', '2022-07-19 14:50:35'),
('1f9847ac8f53dc7cbf158869816413c234b770a2036ad7dd830996a6b635514c7692c5c9c0a43d6f', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:58:33', '2021-07-15 23:58:33', '2022-07-16 07:58:33'),
('229a7656fcecd35d817baaec04738122270fd454e3dad3b3c2c6f65ce9149cf94aa9ac80a05d3add', 3, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 07:27:35', '2021-07-19 07:27:35', '2022-07-19 15:27:35'),
('23edea7d01d5bce1df8a77ce11db162c63ecd3c3841f886be20ccc38edef6aff7ace6810b3c96c68', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 17:09:27', '2021-07-19 17:09:27', '2022-07-20 01:09:27'),
('243ea699090c314687f2d39de08e192a18e7402894921f6d15cb504ce56df9985dc5e795cd57978e', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 08:20:01', '2021-07-19 08:20:01', '2022-07-19 16:20:01'),
('24832a3a141b81100c6e5d696b4006185b2d840f8921960360272b5c175ee4437e7d61be19d59519', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 00:02:55', '2021-07-19 00:02:55', '2022-07-19 08:02:55'),
('266dec895d170430d1b1a8d1c51d9bf5e89042bf034d805377e170c05b2c1fe4b3ec4cb142b9cc92', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 23:40:55', '2021-07-18 23:40:55', '2022-07-19 07:40:55'),
('26b23e8a0d3733985560a5576e0863f7221ce23f5a17d40bef89733701e753043a5af1871524808a', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 07:28:45', '2021-07-19 07:28:45', '2022-07-19 15:28:45'),
('2a85fff606777b4e0818e78ba6622fe3f17683afebcfff1676c2ff1166423fb34623006b3e45b8f1', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:24:57', '2021-07-15 23:24:57', '2022-07-16 07:24:57'),
('2b109b1045e17cb2e2f976432b95dcf7e40b7a76cd426c30f55efe6ef5ce0c023e65bc101863cb45', 3, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 17:45:59', '2021-07-19 17:45:59', '2022-07-20 01:45:59'),
('2b12a35ae9e1ca3d25538e6fb82d97fbe494e9f355f6c22c6dcc413e8465ebc81109280de7cd769d', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 09:25:10', '2021-07-19 09:25:10', '2022-07-19 17:25:10'),
('2b684ca60691069a72411098d5c7b642b7a1b27f75b3807943075f17203c8ab8dcf4d065411a6fa9', 3, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 01:02:33', '2021-07-17 01:02:33', '2022-07-17 09:02:33'),
('2bdfe3b9ac6e0867fd76b83e5d27f3be180b85f45562025b0b1b960e229fb95c9c8873e35c140d9e', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 01:25:30', '2021-07-19 01:25:30', '2022-07-19 09:25:30'),
('2c132048c1d8f704c9ab2306964b3cc6061ccce1a45055c7249bc02c4a2af1f74447edd0bea111ea', 3, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 19:18:41', '2021-07-19 19:18:41', '2022-07-20 03:18:41'),
('2d97ac0f6df991773930b388257fda3dd845438baa21e256f0e915f00a0bcac30e2e18ad189f0742', 3, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 07:21:10', '2021-07-19 07:21:10', '2022-07-19 15:21:10'),
('2f665ed474e00c31c028d362dfbd5ccacd1c255b57930d4d34d088a6555273389bfd253264467242', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 16:56:15', '2021-07-19 16:56:15', '2022-07-20 00:56:15'),
('32b369cc5708367f9bb742f0acc2f9abc282f7b439912fe5c70089b71eafdd090e764b86be1d587e', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 00:32:24', '2021-07-19 00:32:24', '2022-07-19 08:32:24'),
('37fc085646dcc4f20e9a423def58adf12b0595353b31092fd49683154f1f6c76a52fcabc65373307', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:23:11', '2021-07-15 23:23:11', '2022-07-16 07:23:11'),
('3c03e5f65869f92d2e81e06d5daf488f4738e96df92a9256e01be0e4d6222711dd5875f506b168ec', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 23:50:56', '2021-07-18 23:50:56', '2022-07-19 07:50:56'),
('3c326325ba70ef88253ce493465384f9b139076706afa0b7497e3eb022e570514ca4550e542fbd33', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:55:13', '2021-07-15 23:55:13', '2022-07-16 07:55:13'),
('3d58f9279cea75eb05cacac3a167a76f1fbfccfbb4a7777741e4cb82954e49d1a70c7e3debdf1951', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 07:01:34', '2021-07-19 07:01:34', '2022-07-19 15:01:34'),
('3e10c6d2fa8cd16724e4b727f48101bcc2ba1ce193dc354bff1cf02ec8b5f7cf888fce37fa4232d6', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 00:45:26', '2021-07-19 00:45:26', '2022-07-19 08:45:26'),
('40a51ed4444ecb2524f3987f55b307a5ef9ccc523a0bcb9e03d41cdb4f7a59f83bc540fc120736ca', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:55:58', '2021-07-15 23:55:58', '2022-07-16 07:55:58'),
('413c403e3af00ca0b9a64025a1ea3f65227d64cbad6955dc1b3c0fd4d3acf9f7a4c052dcc40a57d5', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 05:21:50', '2021-07-19 05:21:50', '2022-07-19 13:21:50'),
('427a6c074711a130ffd5aca7722d53e88162edc68491cff85059c824bb5aa4249f3710e5e8a05268', 3, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-20 01:58:23', '2021-07-20 01:58:23', '2022-07-20 09:58:23'),
('42d2e9c7ca43b1284ecf64116e15ef3fb832970579b3117956abeef087a740f8920be6c6c1e14bd0', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 23:48:02', '2021-07-18 23:48:02', '2022-07-19 07:48:02'),
('474c7202e5af210d0e69a4a22ee61821f9a9a1e36666a8586c83dd6e971c8dad8f6450c33a5dbef5', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 01:42:57', '2021-07-16 01:42:57', '2022-07-16 09:42:57'),
('4820512023ec06c04e50881fc17e93ac2adc8c76a68c8d577211b990d7fc59a8040598980921a5a0', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 02:01:00', '2021-07-16 02:01:00', '2022-07-16 10:01:00'),
('48a41390eb5f042860f8f552045e138c30b19b6bebce55c3b7a7205e808bad5ee94cd9595f636eea', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 03:14:45', '2021-07-16 03:14:45', '2022-07-16 11:14:45'),
('4bec341976a0ba74df7b4851d81da4430d925016cf37985f8d707fef4b3dd399d1cd63a5a1cab278', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 04:41:50', '2021-07-19 04:41:50', '2022-07-19 12:41:50'),
('4c5bf32894525ef615087c676562511693df6174ce3368f21fa43a8ac952eb33adce9fe26d965648', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 02:27:02', '2021-07-17 02:27:02', '2022-07-17 10:27:02'),
('4d5931606a069043f3e33056f7eb498bec607ab61d16edac3feddae1c33a454df87c1cfd220e9dd2', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-20 03:22:04', '2021-07-20 03:22:04', '2022-07-20 11:22:04'),
('4d7092e82e9e70320e0ba3633cf32a4840f30b0a82c1b50c69fc9807febb0a8cd911f6f0569e6ced', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 01:06:21', '2021-07-19 01:06:21', '2022-07-19 09:06:21'),
('5093d4498f82a0c3c3a44c16a64ee7c62da4065a7ed12fa917e76f1425a5ef090ef8cfdda7097715', 3, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-20 03:14:34', '2021-07-20 03:14:34', '2022-07-20 11:14:34'),
('521a86bf72c4598e55197385023dd5cb427af1230ebd446c83c06b55f931d57a059bf97f70313a9e', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 01:31:34', '2021-07-19 01:31:34', '2022-07-19 09:31:34'),
('533c2e19528b069d242d16247be376f8739090b76d7a83ce582c44de8a25a733dc7192340b94d220', 3, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 07:58:38', '2021-07-19 07:58:38', '2022-07-19 15:58:38'),
('57036407080a8176361be9e0beb3389d875152b0e177d949deb3cd05bc8e1661a4631a1008f137fa', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 00:01:21', '2021-07-16 00:01:21', '2022-07-16 08:01:21'),
('57ffc18772f98344700bdd51d4536a45e3d2148f285b547e053ecea2b1bdd94c6f39ad64524e693c', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 07:20:29', '2021-07-19 07:20:29', '2022-07-19 15:20:29'),
('5880fd56cec38dc30ebc8d1faae50311196207d8dc65c7c500c6319daf36d3909fadcc2e027db477', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 00:03:24', '2021-07-19 00:03:24', '2022-07-19 08:03:24'),
('58fcac282d268d507deb445bb4eceb42d1dcca355b3037bcb14a69243561f9b3a2a3c2128d15afb9', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 10:14:43', '2021-07-19 10:14:43', '2022-07-19 18:14:43'),
('5935c23b1625a8d531e1a93cc65e942cc913d025468d369ef7e44813b8d6abb8c6ec163550ed9ad9', 3, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 06:51:17', '2021-07-19 06:51:17', '2022-07-19 14:51:17'),
('5bf39bc4a77abbfad8b5fc733d42be7450d4656870004f57e204c6cc0639d68bc3551c15ca129029', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 22:18:07', '2021-07-18 22:18:07', '2022-07-19 06:18:07'),
('5c1aa4be6127e15864437e44214f1aedb1d2fa44d14977e0ee110d530a0a21f7ae3d6befc99266f2', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 22:32:12', '2021-07-15 22:32:12', '2022-07-16 06:32:12'),
('5da8c2206db2465d293ff6dce5cb8268f2770e5630001e49213fc3895fb9dde8066185a3004cd7bf', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 21:13:47', '2021-07-16 21:13:47', '2022-07-17 05:13:47'),
('5dec37132d2ebbe17c2957fb285f65308e6dc8870bf4f047e22eff587644a8787efb4b2b24170402', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 08:43:55', '2021-07-19 08:43:55', '2022-07-19 16:43:55'),
('5f73cafa63fdb52eab25b61a773e372bc1583282e3e24ecb5d7a76000f537eaf750c13920a2752cb', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 01:16:42', '2021-07-19 01:16:42', '2022-07-19 09:16:42'),
('60950d2702882127ee5168d2568cc25ee38387aa2a6c3f364bd148f49095a737cd6882297923aba9', 3, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 10:30:50', '2021-07-19 10:30:50', '2022-07-19 18:30:50'),
('618a3bd71f09104f5fb9366bf2796cf6cd16a35f6c715a7d75289030958e18c56cbc536c687c6e7a', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 21:02:04', '2021-07-16 21:02:04', '2022-07-17 05:02:04'),
('61fd32d2b16352a4cd4c15581c274cfd498caefec1016f9fc34548a6a2e7f8879198e103fe36b984', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 21:01:54', '2021-07-16 21:01:54', '2022-07-17 05:01:54'),
('627f35dda7ec0d80215c99053fbba46d4889ea55b5c5980c478d5b571439a8df2db32b69345a0232', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 01:01:02', '2021-07-19 01:01:02', '2022-07-19 09:01:02'),
('663c40714979286210a06a637a6f4a3cab6a8c2ed9a9f28a8940ef1e887227cf3f71b51e0cd63d7e', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 21:35:31', '2021-07-16 21:35:31', '2022-07-17 05:35:31'),
('671a2325c3aa7e2f8c5346a015f1c6b722393c1a291375a01ee632054e5a1b12edea5e9324d3781d', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 00:44:37', '2021-07-19 00:44:37', '2022-07-19 08:44:37'),
('6879a0929de4644881b85bcb53f4121b4bb9f7520231c24522e182be2decbbfafb0ee060c169f123', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 17:48:08', '2021-07-19 17:48:08', '2022-07-20 01:48:08'),
('69306a897f793949fd2aaa93d252595b2233ce4caebc67ff2159f3e5ca705323ff62ec69d9de1ad3', 3, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 07:31:45', '2021-07-19 07:31:45', '2022-07-19 15:31:45'),
('698e7ba9fd3a01424a6926d9d63a6d91c27bd85b99113b846b9a1a56657e9f78738c20bf0d421f2e', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 02:02:38', '2021-07-17 02:02:38', '2022-07-17 10:02:38'),
('6d462da2faa06157c5c519706a27627f020b545b7062472dc9074ea8c462eb434d2faf8af5262e23', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 09:36:50', '2021-07-19 09:36:50', '2022-07-19 17:36:50'),
('6dbec45c470f4bf38ac71f939cc87e1ed9a249b7ed07019f5194626320718d5fec909a2cc56e174d', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 10:24:39', '2021-07-19 10:24:39', '2022-07-19 18:24:39'),
('6dd639d1dbd9279e95e744538447f4e995f0df69d843ba93b46b8b9774d259584efc5632e399ff5d', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 21:37:22', '2021-07-16 21:37:22', '2022-07-17 05:37:22'),
('736ba7b13cf7e9c3e9d90d9ae994ad0b2dccc60df40bf3fcf3d8210fdfad297db7460e17a0af090e', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 02:02:43', '2021-07-16 02:02:43', '2022-07-16 10:02:43'),
('739a76e91074080387b0468f2e44ad86bd8bf35184f61a294269a6b702cc6e343e1f23872c62916a', 3, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 08:07:38', '2021-07-19 08:07:38', '2022-07-19 16:07:38'),
('749080f5aa1d33f9355f0c411de31a47964da0d86a7c43a553c79e74ffe4d6759cf2e5ba1d438045', 3, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 06:44:12', '2021-07-19 06:44:12', '2022-07-19 14:44:12'),
('77ef3ceebaa55a20cfff4c7ff120d861ba4fd42f66260b713ab9cc21b083cca8dcdf5558d5689ecd', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-20 00:35:14', '2021-07-20 00:35:14', '2022-07-20 08:35:14'),
('78982fe0dc28bfce1d4c9364df3dcc64636516d92e03a7fd78a2ced88afee7a6cba666b3bc12647b', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 01:11:55', '2021-07-17 01:11:55', '2022-07-17 09:11:55'),
('79a0c3209cc23b26b8c8d50947613915cdac459924e363c5e56d219746afb6dc306cf540653a01ac', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 06:07:59', '2021-07-19 06:07:59', '2022-07-19 14:07:59'),
('7a21076cc0b3845b796e1caa91b1025fe55213528d28136e59167467381a27e91a6225931051e6ba', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 06:51:53', '2021-07-19 06:51:53', '2022-07-19 14:51:53'),
('7ba38f829ac7ea02c138cf11b42479ac32a9ba547a25d4bae69ba3e04a4cb353c866c48b75b91f9a', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 06:35:43', '2021-07-19 06:35:43', '2022-07-19 14:35:43'),
('7c950c57a645635ac4cb0050ffa69f1670ac921292d3abf9f34a67fb61b7b8aee44722edaa5e2244', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-20 03:21:39', '2021-07-20 03:21:39', '2022-07-20 11:21:39'),
('7d1098cbb92fc6350748fb72ba74033a426c4fdb4c5733dc044e48f628bf88c4ce75fbfb4ed4eab8', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 09:41:58', '2021-07-19 09:41:58', '2022-07-19 17:41:58'),
('7e174641f367cf80920c70a1df132c04e06a66170b58e9b59c59f2f954af0eb2d33ba8fe703d200b', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 06:58:37', '2021-07-19 06:58:37', '2022-07-19 14:58:37'),
('7f155faefbd272771ad23547eb932a98351832994ff46c2d7c0ce74af49829bb67d238bc23908ff0', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 20:59:52', '2021-07-16 20:59:52', '2022-07-17 04:59:52'),
('7fa1e20584bca6c8ac9a1a9156f8602efab98915d660865d5e932c44eaaa07d199daa58eccea7f53', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 01:39:08', '2021-07-19 01:39:08', '2022-07-19 09:39:08'),
('83e59a842bb4ddf41d01d436d123d256f47f34f8f929843ebee08d22900a0e278787a1217f094b0e', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 00:23:10', '2021-07-19 00:23:10', '2022-07-19 08:23:10'),
('841d993d378edc2203e00d9bf0ead38d0d222ae014e013075c13d97c220378c3ea178ca47f2b1473', 3, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 08:41:52', '2021-07-19 08:41:52', '2022-07-19 16:41:52'),
('8431493663b3d941a6a793d80cb143ca314e80583a686f6d8e725f5436f1c8ae9dfca1249d63a5a5', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 03:18:03', '2021-07-17 03:18:03', '2022-07-17 11:18:03'),
('8524ccf726b6ade61e4715f95d0358db259292a872806f43c06b6110b9f526909f1138564f833e79', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 23:46:52', '2021-07-18 23:46:52', '2022-07-19 07:46:52'),
('86315e29e76488dc56e6faf85243acbc8bc7c4e274ca55167fb3dc7e3e45160f0e2a25f7e6b38c28', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 17:45:32', '2021-07-19 17:45:32', '2022-07-20 01:45:32'),
('872680e881949fca6adff636edb62552e3ff84a5d9080cbb314ebc0dee30e258bbee249854bafcc6', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 23:51:13', '2021-07-18 23:51:13', '2022-07-19 07:51:13'),
('876fa55264d65663c3a31b2e1485a13f8c1caf92161b314d8a8200bcb1c3a60e304374c71f4e41ba', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 01:03:54', '2021-07-17 01:03:54', '2022-07-17 09:03:54'),
('880a5cf77273c980c2aa5f1ba6994cda007ec4ce9d33b6d760efec08c41890113a3c504e6fa84e3d', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 00:48:20', '2021-07-19 00:48:20', '2022-07-19 08:48:20'),
('8889562ff0afd1b126718f06a560b9e627da392b21de97dc548d374a97c07da845726287f34e3078', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 06:52:37', '2021-07-19 06:52:37', '2022-07-19 14:52:37'),
('88d80ee7f17991ad62b30229fd0e07b7ab27d68fa91fd4cd193116f331e18c2a2e647a226c75a065', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 22:40:09', '2021-07-15 22:40:09', '2022-07-16 06:40:09'),
('8b5f0916a6cf987f61440ac5140087748565e985029dc81365c6fdf30e914f3f5b6622e6d4b60fdf', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 01:05:00', '2021-07-17 01:05:00', '2022-07-17 09:05:00'),
('8db6d3b59876379cd7928f39cbacd693febf461227fa0b39c879606850471b407d235767f2e199bf', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 21:36:40', '2021-07-16 21:36:40', '2022-07-17 05:36:40'),
('8e3e2f69fbb477d9d6e18a0d231e22510788e1f490431befb412d7680f6693a4f21bee30ffe34eb0', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:59:08', '2021-07-15 23:59:08', '2022-07-16 07:59:08'),
('92c612b236771c4a5e6c641bee6c769a7ad73b4fec94aac4d54cfb8a33614289d2afc14c4381c5c9', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 21:14:02', '2021-07-16 21:14:02', '2022-07-17 05:14:02'),
('935647d2bd936071d6845dde158ba59f264575290fd7db841d294faa6b16de718ead5de6b488ea24', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 09:28:13', '2021-07-19 09:28:13', '2022-07-19 17:28:13'),
('941510cd37416c4d82fd23feccf67c33610acff828b061dc054dbaffb8cb1d20570a837ab025bba7', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 01:29:03', '2021-07-17 01:29:03', '2022-07-17 09:29:03'),
('94a1ba45d489bf94b82f053535e033d01c33d8a549ac564f8ce71685887bc1d1d29c9044a8688aca', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 04:34:53', '2021-07-17 04:34:53', '2022-07-17 12:34:53'),
('9567956ef6c70c2538d59ae02465450612e575a1c95969328649b2a9a7d04572d9edd9e66e8fe6b8', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 20:57:40', '2021-07-16 20:57:40', '2022-07-17 04:57:40'),
('95aadc695fe49bcaf8baef5b9a777d670815f39cb5854632f55fb761fad9ddb24df298a939af0c20', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 03:23:34', '2021-07-16 03:23:34', '2022-07-16 11:23:34'),
('972e59ff51cc593a7eff06d5b9c201893cae1e7903dd14b638ec6fb4352ccc4cf7ba44ec83d29119', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-20 03:14:52', '2021-07-20 03:14:52', '2022-07-20 11:14:52'),
('9af9f389a39eb2e2ba7d9449eebebd842902444ed02cb577a81a52b8434d7826d65c8063b013f593', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 10:11:09', '2021-07-19 10:11:09', '2022-07-19 18:11:09'),
('9b12245ee22b45acf5fb0e9363bc7948fb0267322aec769a7ba94c027859fcef3cd7995834696740', 3, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 06:44:05', '2021-07-19 06:44:05', '2022-07-19 14:44:05'),
('9c5c484ac37f7f5f5f4642847ad3d4a2f9b215cf2d7b867d6dd0e479eb7c84d4eae8da8cf08132be', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-20 01:54:54', '2021-07-20 01:54:54', '2022-07-20 09:54:54'),
('9c882da391fdf6a9ae8f434e95d12751d23a049e6221efd0a2a8ba2b846262078f3442da97b85714', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 10:14:13', '2021-07-19 10:14:13', '2022-07-19 18:14:13'),
('9cb5d9c40d85c6bbc7864f7133fe62c0a36f2a4151578521997dba589c7a54b43723777bb066286d', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 21:02:26', '2021-07-16 21:02:26', '2022-07-17 05:02:26'),
('9deb17810d63e04d097c8b72a26331c314aa5cf3421d9e58908d2083ef22ebc8fbb5deead2d5d5cb', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 04:34:32', '2021-07-19 04:34:32', '2022-07-19 12:34:32'),
('9df5f31ecd78680a23d8fbe116e5c75ecf32463c1337200b21a3078b8863f69c40549e97062fb04d', 3, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 07:02:17', '2021-07-19 07:02:17', '2022-07-19 15:02:17'),
('9e9e8ee75dd104e7f1a02ed7eacc8059079ac51cf995bfd110b56fa948726752b7b53cb1faaa3fa0', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 21:36:09', '2021-07-16 21:36:09', '2022-07-17 05:36:09'),
('9f4001aa39b1917c853e5312393550814832b920cb12711de363bb31d1c0db85e85e4e3dfc269abc', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 00:45:01', '2021-07-19 00:45:01', '2022-07-19 08:45:01'),
('a217bfe6abb06c426a42f2dc19f45c04967919d1668d66d52f4d50a082b321a7bbf28ca67ae97dc6', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 01:14:10', '2021-07-19 01:14:10', '2022-07-19 09:14:10'),
('a2e2a4f7d855a1f2fdde60bfcc035bf7cdcd3c039cc007ad5093d61142c6468ca450a06e6c3a18b9', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 01:20:00', '2021-07-17 01:20:00', '2022-07-17 09:20:00'),
('a2f05ab973e18667a4ac08dce9dd6f84c1eee440596642d2e1c25aa26b164d39f4e629843b1bd0a8', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 00:16:32', '2021-07-19 00:16:32', '2022-07-19 08:16:32'),
('a3cfc4e5ce94e6fcf4e4e3271395d976ae6c5d70c1f3909b45a8936a762695d97046d97e2f6747fe', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 23:47:50', '2021-07-18 23:47:50', '2022-07-19 07:47:50'),
('a4e6d2a37e3179fca24396d5891bb2351e5722a275aa99653da16e4a1c6929f86163b4d650120570', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 01:57:03', '2021-07-17 01:57:03', '2022-07-17 09:57:03'),
('b1661f8a53af9ddaa7cb5273bed969061ef07226d2b46791cc733eee49c66661397f2f82fbcd0cfa', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 23:22:10', '2021-07-18 23:22:10', '2022-07-19 07:22:10'),
('b1a0db24ed3726a490985b071d4022b028a338673a1a1b0da924a7b8fc0f792f4b08f36813dd66e7', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 07:47:07', '2021-07-17 07:47:07', '2022-07-17 15:47:07'),
('b1f266459680dba3006cff832ffec3bc8a3037bf4ed577b44249f2bf683fbc960419315c7defb47e', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 20:57:52', '2021-07-16 20:57:52', '2022-07-17 04:57:52'),
('b60d362f5ec79f133990c5bf950ea79846fcf3bb89619470f83cb0c8e19919625eced2908fcb5b9a', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 07:23:44', '2021-07-19 07:23:44', '2022-07-19 15:23:44'),
('b820fb5ea002502180539c6b0e62e548a5f34440205fa3bbece65198646614e395dbafdefe620119', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 00:58:41', '2021-07-19 00:58:41', '2022-07-19 08:58:41'),
('b862c5984c15c344fbed71efad6dec78035cd2adb5cf4c8824850e7b1c370d4bed6dc7feee641623', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 22:10:18', '2021-07-18 22:10:18', '2022-07-19 06:10:18'),
('bbbbc4269f08da48baf892c686a4afb8fe35f02c6f356a4b39f427f7fa8395c6ab9616bd8bafe5c5', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 23:51:48', '2021-07-18 23:51:48', '2022-07-19 07:51:48'),
('bcb81791cc28115f12ea70653e1d51d1ec7545f39a43c7855d72c7095ac4254b9c625d327db5d8ce', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 02:30:47', '2021-07-17 02:30:47', '2022-07-17 10:30:47'),
('bcd9ce4e7f4c58d203400d605c1822e133e09f546758d00cbf610cd73ab46cc76c2cd638dfcdb5d4', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 00:46:34', '2021-07-19 00:46:34', '2022-07-19 08:46:34'),
('bcf149797107e482d7741e5126509647581c48c2e4d32b62b040c9d9b8359dc2655ca188cfbb63bc', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 07:01:51', '2021-07-19 07:01:51', '2022-07-19 15:01:51'),
('beac3286f654f7be93b5e91ac31106a417d4ba0415d99c518365dd84035b569f17134d2f7c902a13', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:21:37', '2021-07-15 23:21:37', '2022-07-16 07:21:37'),
('bf6adc68943f91b033b38d0fd5ca46dd0ce31e973d3074e6f3d4fad4128bbe84cc837c25faebc62c', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 07:39:46', '2021-07-19 07:39:46', '2022-07-19 15:39:46'),
('bf8838eb3b3e5e4dd2dbfbc8338b5157f657eb2e95b780ac070ea4be4235e11d3968a7f854682f15', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 21:01:06', '2021-07-16 21:01:06', '2022-07-17 05:01:06'),
('bfe5a6037ee2ba241f2609db0520f7ca8969d6f0c0a3f9aba9618f839e828818bfbc4df4e76a5c29', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:58:31', '2021-07-15 23:58:31', '2022-07-16 07:58:31'),
('c0fa2fb80d14b3a086956764a68091a11ced96916c3e92a7e3c1b09082a8a218769eedbf2af125e2', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:58:36', '2021-07-15 23:58:36', '2022-07-16 07:58:36'),
('c10f091c610e8cbcc2cd96c863181a70ab5d2d4bccc914359fd1e9e1f9744f5bc6aac8b503cc63c8', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 01:42:01', '2021-07-16 01:42:01', '2022-07-16 09:42:01'),
('c1b83514d95c2fa2e42b8cab5c4e77379c0e1be178968e1d861f7d21c9dc40ca725b4dc13f73ebc9', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 00:39:02', '2021-07-19 00:39:02', '2022-07-19 08:39:02'),
('c220cd5e4fe12768924acdbba2b8c72a1e3c8de4a5d09942f499e0941151543b7cc7193725a16f0c', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 09:23:54', '2021-07-19 09:23:54', '2022-07-19 17:23:54'),
('c2ffe5f13d880fc72bd2dda364f092feee4b7ebbd8d9f0e69f3b092840d000cfdd9557b1586b2648', 3, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 09:24:36', '2021-07-19 09:24:36', '2022-07-19 17:24:36'),
('c3a99834c8a479227f142044405b14828aa12ddb3e9b0d44e2afc848893e812b4928d3cf8943184c', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 21:39:16', '2021-07-16 21:39:16', '2022-07-17 05:39:16'),
('c6c24bcc188f2618458125c098edcfdd702fbcbfbc3b1119c72c2f567039779c13aa997672e7f073', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 23:39:46', '2021-07-18 23:39:46', '2022-07-19 07:39:46'),
('c830fc98af31bba32437fbc196df07d06a96929bf11fa4853ba956dce4e22170166b868a5af97707', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 08:52:30', '2021-07-19 08:52:30', '2022-07-19 16:52:30'),
('c9a1918224ab3a21a1782e7adcc650c3505e8f1fdf9e4536f1af61c759710df0c085c26ee5b3d6d7', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 07:30:53', '2021-07-19 07:30:53', '2022-07-19 15:30:53'),
('c9d7dfb377eff1fd4ee007ba2c1da0c101b7c62476b1a0e83fafcf60d7d7cf39c5a759747eff89b1', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 06:53:42', '2021-07-19 06:53:42', '2022-07-19 14:53:42'),
('ca558102c9773704db1172b14be4647a7fec486dd841f039b76d717262ff3caf8cdef9c7135019bd', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-20 03:46:01', '2021-07-20 03:46:01', '2022-07-20 11:46:01'),
('ca5fb1ae1463262ac9b87bb225cc827463d7732d1bb45ea6d6cf0c8ad09bd123a7202b21e64c6e2a', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 23:50:23', '2021-07-18 23:50:23', '2022-07-19 07:50:23'),
('ca604c9eb276489972ee8500e74d4dd3faab634c17c5a3e2a56cc5c4e3526aec53d1d6dbe9a7aa15', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 00:16:06', '2021-07-19 00:16:06', '2022-07-19 08:16:06'),
('ccb9ec4b54d9e762d7203f89b9c8ea17358615b46f6a2120019a2067096e028e3c7eee43d7799a39', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 00:33:14', '2021-07-19 00:33:14', '2022-07-19 08:33:14'),
('cd2e5fca40c324262b15fbaa43e9bfa20c7126ccf9d178bdc820b34bb80874951b9caa4f0e83516a', 3, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 07:37:52', '2021-07-19 07:37:52', '2022-07-19 15:37:52'),
('cef8d83a74574d8967920d4f7de57790cf27e437be99997351d66411be708cc10263ada4b3cfeab3', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 22:18:51', '2021-07-18 22:18:51', '2022-07-19 06:18:51'),
('d019b7e0df5f6f324c5434d2e33336ca25dccb41c3c0c78f29551fc9704e32cb97f62fa425bf3cf9', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 02:11:06', '2021-07-17 02:11:06', '2022-07-17 10:11:06'),
('d1e58c2934dcec768187f2820a9e3384f4d1debea646232e27231b63a0f7677a775436c941a4cf48', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-20 00:36:03', '2021-07-20 00:36:03', '2022-07-20 08:36:03'),
('d32584712f250e6249d91a6e00aca364b147754abbab122645a6c1ead2039633643264939ccd2f0b', 3, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 07:29:41', '2021-07-19 07:29:41', '2022-07-19 15:29:41'),
('d44db55c73d3ecf9c62201073cc0be167c6976afedcf76ec6b65ff799ee35c16c09df7510378db81', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 23:23:36', '2021-07-18 23:23:36', '2022-07-19 07:23:36'),
('d766d7e1d7138a2abc563a2dbba72583d93b6e01f7c62b6ca18e0b9602a8f837dda97ed91702ac46', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 01:13:20', '2021-07-17 01:13:20', '2022-07-17 09:13:20'),
('db435cabe169ec24c3880118076bc8231b5f875892365f508d20d905af544924e92e21d909215de5', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 08:17:39', '2021-07-19 08:17:39', '2022-07-19 16:17:39'),
('db5d8c9429bf68281763196e5f056f6f6d09734b8235ff938748fdccf850687509676fd66ca8e18d', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 03:16:58', '2021-07-16 03:16:58', '2022-07-16 11:16:58'),
('db77ea2c98196b505994d0967448d82856e0bac038e0c6441b8ec1af669e164fd5414f16dbc2dbf8', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:22:06', '2021-07-15 23:22:06', '2022-07-16 07:22:06'),
('dd32223ed09a135e24d61230d99b645caf92a11b132d7e4ece20947e034e905a5c0cb10216129fdf', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 22:16:28', '2021-07-18 22:16:28', '2022-07-19 06:16:28'),
('de5042b344522d68a536cf397b8d3078915f4f4b517d7b33eabce8f8c004ba0eb74bdbe74521b0c8', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:47:49', '2021-07-15 23:47:49', '2022-07-16 07:47:49'),
('df9974a047550a2ff6dc4f437cbd88c074727ecdfbe6b0f25f07d317970aff02ad12885ee4fd3868', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 06:09:14', '2021-07-19 06:09:14', '2022-07-19 14:09:14'),
('e6d7a4c3006308b7b4e529325dd6f3532a7f1f7c6515f5973bd849055722047c3406d7c9708906d7', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 10:12:24', '2021-07-19 10:12:24', '2022-07-19 18:12:24'),
('e80d33f4ce66f2cb799a83c352533753e251b225a18f19aba51a2de6e4d799b5c058293c80c5e4fc', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 16:58:22', '2021-07-19 16:58:22', '2022-07-20 00:58:22'),
('e87ad9fe8ed867517047a0a251ca41c267f552656c4d20e4867a28705b94530b3897e474bbf197fd', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 01:04:17', '2021-07-17 01:04:17', '2022-07-17 09:04:17'),
('ea6a067440a7bae90444909c649f6ac1945a130637d6eda5e48b1a2a701b0ffbc7a3c08a521088bd', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-20 07:53:06', '2021-07-20 07:53:06', '2022-07-20 15:53:06'),
('ea96f607b3bcf4d5c7b1d4f1c472486ecfe6cccec0574b33e973af4b644c7e6d5e66536ff84c9782', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 01:13:46', '2021-07-17 01:13:46', '2022-07-17 09:13:46'),
('ebafc1c2d130c9a526b9e24659cb030939d5b619046862b9ac2da388ebe3ad6256fd77a49b01c23a', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-20 01:54:42', '2021-07-20 01:54:42', '2022-07-20 09:54:42'),
('ec1bd642678bc797f4eb4fc625f4f09981e1874956835ab7226a81743ba728cba274dd301ea83a22', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 23:50:08', '2021-07-18 23:50:08', '2022-07-19 07:50:08'),
('ec33a341874d0f4a0b4aafdab0147d0671cf01dd954f8e42ccc95ae70cbc1764fd1631ac618cb15b', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 00:20:01', '2021-07-19 00:20:01', '2022-07-19 08:20:01'),
('ed16e126fac024aa083903781fdcc814128996f8d7528dd50d87b179e85c8b239439f1a3ee437e54', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 22:21:30', '2021-07-18 22:21:30', '2022-07-19 06:21:30'),
('ed54d9e8ebb83ed2036d0b431e51fcc580865bf55bb36948f1239404789e22afe2002ce7520eb85c', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 23:49:24', '2021-07-15 23:49:24', '2022-07-16 07:49:24'),
('ed6bc3826678fb1c2cce3e72ab2494545c2dab1537cc6a40016f2daf6f66732d0f0c87aa495324fc', 3, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 06:59:15', '2021-07-19 06:59:15', '2022-07-19 14:59:15'),
('ee06bbc8670f39977d2163175e74303799245b0fe72c98388a76739e860f98c108daaa117916ed47', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 01:40:20', '2021-07-16 01:40:20', '2022-07-16 09:40:20'),
('eff5cdf1ba1505b2bd5d72ad9e0d3054937f64087c903649221c513abfc58268887c716aa3bfbee0', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 08:00:39', '2021-07-19 08:00:39', '2022-07-19 16:00:39'),
('f085c7c0a7c1c8a8346f5f1f073b026ca7034e8ce0353a664b9a713d5f060ea3be54229aaa04cca5', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 07:32:23', '2021-07-19 07:32:23', '2022-07-19 15:32:23'),
('f28eac7e5bb0258709676ea004690b2a45c55822b09d7c2884aad563f5469044da00e7e4da23108f', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 23:23:20', '2021-07-18 23:23:20', '2022-07-19 07:23:20'),
('f3656ff7f8f47f4e2b4cc4ecae16b50e6a422b3c3e5c3f2d68827b08924ee95cf3fa77575f737922', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-17 01:15:41', '2021-07-17 01:15:41', '2022-07-17 09:15:41'),
('f82651b1439fadee6193d51c851ded536500db25dad781614287ff5ac1d0675299aadeee8f1dfee0', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 06:17:47', '2021-07-19 06:17:47', '2022-07-19 14:17:47'),
('fa58a70d47bd049697b18f63c18d89c2b9e08ab38299c5afaebf2c9dd625a3089c570dcdc6b9ffa9', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 21:40:25', '2021-07-16 21:40:25', '2022-07-17 05:40:25'),
('fa9e1602bcf9d0de0636f691ee3a1177e614d951f83c223d52a0ee148a69a2cd89d8b2c0bd121daa', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 01:11:24', '2021-07-19 01:11:24', '2022-07-19 09:11:24'),
('fae1d40cf23a04772125a4972ff0b78d4dda3c07eee6f6ec8decb6557a5eb5e59343a5529db6608f', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2021-07-15 22:34:19', '2021-07-15 22:34:19', '2022-07-16 06:34:19'),
('fc8a1312d23a08e3492cebbaf43926882ad68e7f8b0f3af5036a0ec9e044b764d3813f81d7fc517f', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 09:23:05', '2021-07-19 09:23:05', '2022-07-19 17:23:05'),
('fdf7c78758761ce66fdb94c69841ac58573321d1cfc1c55ad90ef0e02c8b0c65c412f8cab51aca8c', 2, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 01:38:43', '2021-07-19 01:38:43', '2022-07-19 09:38:43'),
('fe38295d2eaea6959011e878bf612eb2b25b80763fb4e394d6bfa225e2ab3cc4875acf7f020c9837', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-18 21:16:11', '2021-07-18 21:16:11', '2022-07-19 05:16:11'),
('ff89b7fe2fb0a9e9095cb896cb494f18e0490e01fb9b580c50433e9feed8f2b1faacfa8abbf6031e', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-16 21:01:32', '2021-07-16 21:01:32', '2022-07-17 05:01:32'),
('ffe7f9386ec0736e11ff7af5ab1e74dd2f052ff5ed4c60cdacbcd022805545cead86fd24f4376776', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2021-07-19 04:24:42', '2021-07-19 04:24:42', '2022-07-19 12:24:42');

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
(2, NULL, 'Laravel Password Grant Client', 'ufX3vf75gRGDt3xVsqEie1Yy9d81JQ2RfO1DNqvy', 'users', 'http://localhost', 0, 1, 0, '2021-07-15 21:59:16', '2021-07-15 21:59:16'),
(3, NULL, 'Laravel Personal Access Client', 'nFRizUXXWKn2qn7ReKM4BkNeg8ua175NaAkkVPTk', NULL, 'http://localhost', 1, 0, 0, '2021-07-16 20:57:28', '2021-07-16 20:57:28'),
(4, NULL, 'Laravel Password Grant Client', '0j4v92vf7cxDUS3j3x4M7drIgb32v6YwssG4hEBz', 'users', 'http://localhost', 0, 1, 0, '2021-07-16 20:57:28', '2021-07-16 20:57:28');

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
(1, 1, '2021-07-15 21:59:16', '2021-07-15 21:59:16'),
(2, 3, '2021-07-16 20:57:28', '2021-07-16 20:57:28');

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
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) DEFAULT NULL,
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
  `type` enum('Standard','Admin','Premium') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Standard',
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `number`, `created_at`, `updated_at`, `remember_token`, `email_verified_at`, `type`, `userid`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`) VALUES
(1, 'spore32', 'abgaoe@gmail.com', '$2y$10$pOtg4hgInuNGxuXe8FCfSe1QvQTG0VhR3TJ/6hoBPRxwdiY6rdx8O', '09953875103', '2021-07-18 22:18:07', '2021-07-20 01:55:58', 'PitDLJaHYf', NULL, 'Premium', '866450606313123', 'cus_Jt1j82rQyY5HvF', NULL, NULL, NULL),
(2, 'skeltonmod', 'lodash@gmail.com', '$2y$10$RlQ.uIommcfGrBf.f/vyTemlsfYVE6Nr84ui5foDmVV/fTTNgHBwu', '09953875103', '2021-07-19 01:38:43', '2021-07-20 01:35:47', 'sq8ITEullm', NULL, 'Premium', '878859915986552', 'cus_Jt1PvCplhGk6sb', NULL, NULL, NULL),
(3, 'tordash32', 'dashtor@gmail.com', '$2y$10$MQMrZxFjRK2zG3NHnuxJvu6WLFZdWcT5uH3Nu5u8DjCaenzSXqrQS', '09953875103', '2021-07-19 06:44:05', '2021-07-19 06:44:05', 'EcvUMknbES', NULL, 'Standard', '647896849179985', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_friend_group`
--

CREATE TABLE `user_friend_group` (
  `friendship_id` int(10) UNSIGNED NOT NULL,
  `friend_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `friend_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `friends_sender_type_sender_id_index` (`sender_type`,`sender_id`),
  ADD KEY `friends_recipient_type_recipient_id_index` (`recipient_type`,`recipient_id`);

--
-- Indexes for table `malsync`
--
ALTER TABLE `malsync`
  ADD PRIMARY KEY (`id`),
  ADD KEY `malsync_user_id_index` (`user_id`),
  ADD KEY `malsync_mal_password_index` (`mal_password`),
  ADD KEY `malsync_mal_email_index` (`mal_email`);

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
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_price_unique` (`subscription_id`,`stripe_price`),
  ADD KEY `subscription_items_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `user_friend_group`
--
ALTER TABLE `user_friend_group`
  ADD UNIQUE KEY `unique` (`friendship_id`,`friend_id`,`friend_type`,`group_id`),
  ADD KEY `user_friend_group_friend_type_friend_id_index` (`friend_type`,`friend_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `malsync`
--
ALTER TABLE `malsync`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_friend_group`
--
ALTER TABLE `user_friend_group`
  ADD CONSTRAINT `user_friend_group_friendship_id_foreign` FOREIGN KEY (`friendship_id`) REFERENCES `friends` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
