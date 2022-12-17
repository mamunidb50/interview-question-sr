-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 12:16 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `med_question`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_post` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_id` bigint(20) UNSIGNED NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(6, '2020_08_28_072131_create_blog_categories_table', 3),
(7, '2020_08_28_072234_create_blogs_table', 3),
(8, '2020_08_28_103502_create_variants_table', 3),
(10, '2020_08_28_104103_create_blog_tags_table', 3),
(14, '2020_08_28_063029_create_products_table', 4),
(15, '2020_08_28_103644_create_product_images_table', 4),
(16, '2020_08_31_065549_create_product_variants_table', 4),
(19, '2020_08_31_073704_create_product_variant_prices_table', 5),
(20, '2020_08_31_081510_create_product_variant_price_relation_table', 5);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `sku`, `description`, `created_at`, `updated_at`) VALUES
(1, 'T-Shirt', '1001', 'Quality product in low cost', '2020-08-25 11:06:51', '2022-12-16 05:11:20'),
(28, 'T-Shirt 1', '1000', 'Quality product in low cost', '2022-12-16 02:02:10', '2022-12-16 05:11:10'),
(29, 'T-Shirt 2', '1002', 'Quality product in low cost', '2022-12-16 03:16:42', '2022-12-16 11:45:10'),
(32, 'T-Shirt 3', '1003', 'Quality product in low cost', '2022-12-15 18:00:00', '2022-12-16 11:51:06'),
(33, 'T-Shirt 4', '1004', 'Quality product in low cost', '2022-12-16 03:34:53', '2022-12-16 11:49:05'),
(34, 'T-Shirt 5', '1005', 'Quality product in low cost', '2022-12-16 03:53:25', '2022-12-16 11:50:23'),
(36, 'T-Shirt 6', '1006', 'Quality product in low cost', '2022-12-16 03:59:11', '2022-12-16 11:52:39'),
(40, 'T-Shirt 7', '1007', 'Quality product in low cost', '2022-12-16 10:07:31', '2022-12-16 11:53:27'),
(41, 'T-Shirt 8', '1008', 'Quality product in low cost', '2022-12-16 10:50:05', '2022-12-16 11:54:36');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `file_path`, `thumbnail`, `created_at`, `updated_at`) VALUES
(8, 28, '1635062530-61751302f0a90.jpg', NULL, '2021-10-24 02:02:10', '2021-10-24 02:02:10'),
(9, 28, '1635062531-6175130327db4.jpg', NULL, '2021-10-24 02:02:11', '2021-10-24 02:02:11'),
(10, 29, '1635067002-6175247a8a59c.jpg', NULL, '2021-10-24 03:16:42', '2021-10-24 03:16:42'),
(11, 29, '1635067002-6175247a9b6ad.jpg', NULL, '2021-10-24 03:16:42', '2021-10-24 03:16:42'),
(12, 33, '1635068093-617528bd6e411.jpg', NULL, '2021-10-24 03:34:53', '2021-10-24 03:34:53'),
(13, 33, '1635068093-617528bd7d03b.jpg', NULL, '2021-10-24 03:34:53', '2021-10-24 03:34:53'),
(28, 40, '1635264451-617827c3841eb.jpg', NULL, '2021-10-26 10:07:31', '2021-10-26 10:07:31'),
(29, 41, '1635267006-617831beb676b.jpg', NULL, '2021-10-26 10:50:06', '2021-10-26 10:50:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `variant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `variant`, `variant_id`, `product_id`, `created_at`, `updated_at`) VALUES
(127, 'Green', 1, 28, '2021-10-24 02:02:11', '2022-12-16 04:56:23'),
(128, 'M', 2, 28, '2021-10-24 02:02:11', '2022-12-16 04:56:23'),
(130, 'Pink', 1, 29, '2021-10-24 03:16:43', '2022-12-16 04:45:10'),
(131, 'M', 2, 29, '2021-10-24 03:16:43', '2022-12-16 04:45:10'),
(132, 'Blue', 1, 32, '2021-10-24 03:29:26', '2022-12-16 04:47:53'),
(133, 'Red', 1, 32, '2021-10-24 03:29:26', '2022-12-16 04:47:53'),
(134, 'M', 2, 32, '2021-10-24 03:29:27', '2022-12-16 04:47:53'),
(135, 'Black', 1, 33, '2021-10-24 03:34:53', '2022-12-16 04:49:05'),
(136, 'White', 1, 33, '2021-10-24 03:34:53', '2022-12-16 04:49:05'),
(137, 'slim', 6, 33, '2021-10-24 03:34:53', '2021-10-24 03:34:53'),
(138, 'Green', 1, 34, '2021-10-24 03:53:25', '2022-12-16 04:50:23'),
(139, 'Pink', 1, 36, '2021-10-24 03:59:11', '2022-12-16 04:52:39'),
(140, 'Red', 1, 36, '2021-10-24 03:59:11', '2022-12-16 04:52:39'),
(155, 'M', 2, 36, '2021-10-26 10:06:03', '2022-12-16 04:52:39'),
(156, 'White', 1, 40, '2021-10-26 10:07:31', '2022-12-16 04:53:27'),
(157, 'M', 2, 40, '2021-10-26 10:07:31', '2022-12-16 04:19:03'),
(158, 'L', 2, 40, '2021-10-26 10:07:31', '2022-12-16 04:19:03'),
(159, 'Red', 1, 41, '2021-10-26 10:50:06', '2022-12-16 04:54:36'),
(160, 'M', 2, 41, '2021-10-26 10:50:06', '2022-12-16 04:54:36'),
(161, 'Red', 1, 40, '2022-12-16 04:19:03', '2022-12-16 04:53:27'),
(162, 'Blue', 1, 29, '2022-12-16 04:45:10', '2022-12-16 04:45:10'),
(163, 'L', 2, 29, '2022-12-16 04:45:10', '2022-12-16 04:45:10'),
(164, 'L', 2, 32, '2022-12-16 04:47:53', '2022-12-16 04:47:53'),
(165, 'M', 2, 33, '2022-12-16 04:49:05', '2022-12-16 04:49:05'),
(166, 'L', 2, 33, '2022-12-16 04:49:05', '2022-12-16 04:49:05'),
(167, 'Red', 1, 34, '2022-12-16 04:50:23', '2022-12-16 04:50:23'),
(168, 'L', 2, 34, '2022-12-16 04:50:23', '2022-12-16 04:50:23'),
(169, 'XL', 2, 34, '2022-12-16 04:50:23', '2022-12-16 04:50:23'),
(170, 'L', 2, 36, '2022-12-16 04:52:39', '2022-12-16 04:52:39'),
(171, 'Pink', 1, 41, '2022-12-16 04:54:36', '2022-12-16 04:54:36'),
(172, 'L', 2, 41, '2022-12-16 04:54:36', '2022-12-16 04:54:36'),
(173, 'Navy', 1, 28, '2022-12-16 04:56:23', '2022-12-16 04:56:23'),
(174, 'L', 2, 28, '2022-12-16 04:56:23', '2022-12-16 04:56:23'),
(175, 'Red', 1, 1, '2022-12-16 05:10:33', '2022-12-16 05:10:33'),
(176, 'Green', 1, 1, '2022-12-16 05:10:33', '2022-12-16 05:10:33'),
(177, 'M', 2, 1, '2022-12-16 05:10:33', '2022-12-16 05:10:33'),
(178, 'L', 2, 1, '2022-12-16 05:10:33', '2022-12-16 05:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_prices`
--

CREATE TABLE `product_variant_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_1` bigint(20) UNSIGNED DEFAULT NULL,
  `product_variant_2` bigint(20) UNSIGNED DEFAULT NULL,
  `product_variant_3` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variant_prices`
--

INSERT INTO `product_variant_prices` (`id`, `product_variant_1`, `product_variant_2`, `product_variant_3`, `price`, `stock`, `product_id`, `created_at`, `updated_at`) VALUES
(10, 176, 177, NULL, 200, 50, 28, '2021-10-24 02:02:11', '2022-12-16 05:11:10'),
(11, 130, 160, NULL, 500, 50, 29, '2021-10-24 03:16:43', '2022-12-16 04:45:10'),
(12, 162, 165, NULL, 200, 5, 32, '2021-10-24 03:29:27', '2022-12-16 04:51:06'),
(13, 162, 168, NULL, 150, 7, 32, '2021-10-24 03:29:27', '2022-12-16 04:51:06'),
(14, 161, 165, NULL, 5000, 6, 33, '2021-10-24 03:34:54', '2022-12-16 04:49:05'),
(15, 161, 166, NULL, 5000, 7, 33, '2021-10-24 03:34:54', '2022-12-16 04:49:05'),
(16, 138, 168, NULL, 400, 4, 34, '2021-10-24 03:53:25', '2022-12-16 04:50:23'),
(17, 139, 165, NULL, 500, 60, 36, '2021-10-24 03:59:12', '2022-12-16 04:52:39'),
(18, 139, 170, NULL, 500, 60, 36, '2021-10-24 03:59:12', '2022-12-16 04:52:40'),
(23, 156, 165, NULL, 400, 5, 40, '2021-10-26 10:07:32', '2022-12-16 04:53:27'),
(24, 156, 170, NULL, 200, 4, 40, '2021-10-26 10:07:32', '2022-12-16 04:53:27'),
(25, 167, 165, NULL, 300, 10, 41, '2021-10-26 10:50:07', '2022-12-16 04:54:36'),
(26, 167, 165, NULL, 600, 3, 40, '2022-12-16 04:19:03', '2022-12-16 04:53:27'),
(27, 167, 170, NULL, 500, 2, 40, '2022-12-16 04:19:03', '2022-12-16 04:53:27'),
(28, 130, 163, NULL, 800, 50, 29, '2022-12-16 04:45:10', '2022-12-16 04:45:10'),
(29, 162, 160, NULL, 500, 50, 29, '2022-12-16 04:45:10', '2022-12-16 04:45:10'),
(30, 162, 163, NULL, 800, 50, 29, '2022-12-16 04:45:10', '2022-12-16 04:45:10'),
(31, 167, 165, NULL, 200, 5, 32, '2022-12-16 04:47:53', '2022-12-16 04:51:06'),
(32, 167, 168, NULL, 150, 7, 32, '2022-12-16 04:47:53', '2022-12-16 04:51:06'),
(33, 136, 165, NULL, 5000, 6, 33, '2022-12-16 04:49:05', '2022-12-16 04:49:05'),
(34, 136, 166, NULL, 5000, 7, 33, '2022-12-16 04:49:05', '2022-12-16 04:49:05'),
(35, 138, 169, NULL, 400, 4, 34, '2022-12-16 04:50:23', '2022-12-16 04:50:23'),
(36, 167, 168, NULL, 400, 4, 34, '2022-12-16 04:50:23', '2022-12-16 04:50:23'),
(37, 167, 169, NULL, 400, 4, 34, '2022-12-16 04:50:23', '2022-12-16 04:50:23'),
(38, 167, 165, NULL, 500, 60, 36, '2022-12-16 04:52:40', '2022-12-16 04:52:40'),
(39, 167, 170, NULL, 500, 60, 36, '2022-12-16 04:52:40', '2022-12-16 04:52:40'),
(40, 167, 172, NULL, 300, 10, 41, '2022-12-16 04:54:36', '2022-12-16 04:54:36'),
(41, 171, 165, NULL, 300, 10, 41, '2022-12-16 04:54:36', '2022-12-16 04:54:36'),
(42, 171, 172, NULL, 300, 10, 41, '2022-12-16 04:54:36', '2022-12-16 04:54:36'),
(43, 176, 178, NULL, 200, 50, 28, '2022-12-16 04:56:23', '2022-12-16 05:11:10'),
(44, 173, 177, NULL, 200, 50, 28, '2022-12-16 04:56:23', '2022-12-16 05:11:10'),
(45, 173, 178, NULL, 200, 50, 28, '2022-12-16 04:56:23', '2022-12-16 05:11:10'),
(46, 175, 177, NULL, 200, 50, 1, '2022-12-16 05:10:33', '2022-12-16 05:10:33'),
(47, 175, 178, NULL, 200, 50, 1, '2022-12-16 05:10:34', '2022-12-16 05:10:34'),
(48, 176, 177, NULL, 200, 50, 1, '2022-12-16 05:10:34', '2022-12-16 05:10:34'),
(49, 176, 178, NULL, 200, 50, 1, '2022-12-16 05:10:34', '2022-12-16 05:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, 'Admin', 'admin@example.com', NULL, '$2y$10$UJ715JKZNPqiChkHZUHxce5gzNcm47dYPaRE.T68hHwe/KWnSqvCu', NULL, '2020-08-28 00:03:42', '2020-08-28 00:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Color', 'asdfadsf', NULL, '2020-08-31 08:53:32'),
(2, 'Size', 'adfsasdf', NULL, '2020-08-31 08:54:28'),
(6, 'Style', 'Description', '2020-08-31 09:46:24', '2020-08-31 09:46:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_blog_category_id_foreign` (`blog_category_id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_slug_unique` (`slug`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_tags_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variants_variant_id_foreign` (`variant_id`),
  ADD KEY `product_variants_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_variant_prices`
--
ALTER TABLE `product_variant_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variant_prices_product_id_foreign` (`product_id`),
  ADD KEY `product_variant_prices_product_variant_1_foreign` (`product_variant_1`),
  ADD KEY `product_variant_prices_product_variant_2_foreign` (`product_variant_2`),
  ADD KEY `product_variant_prices_product_variant_3_foreign` (`product_variant_3`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `variants_title_unique` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `product_variant_prices`
--
ALTER TABLE `product_variant_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_categories` (`id`);

--
-- Constraints for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD CONSTRAINT `blog_tags_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_variants_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_variant_prices`
--
ALTER TABLE `product_variant_prices`
  ADD CONSTRAINT `product_variant_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_variant_prices_product_variant_1_foreign` FOREIGN KEY (`product_variant_1`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_variant_prices_product_variant_2_foreign` FOREIGN KEY (`product_variant_2`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_variant_prices_product_variant_3_foreign` FOREIGN KEY (`product_variant_3`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
