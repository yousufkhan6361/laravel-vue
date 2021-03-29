-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2021 at 01:25 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`, `category_status`, `created_at`, `updated_at`) VALUES
(7, 'category 6', 'category-6', 1, '2021-03-04 14:17:08', '2021-03-22 17:29:19'),
(8, 'category 2', 'category-2', 1, '2021-03-04 14:17:49', '2021-03-04 14:17:49'),
(9, 'category 3', 'category-3', 1, '2021-03-04 15:14:41', '2021-03-04 16:29:08'),
(10, 'category 10', 'category-10', 1, '2021-03-04 15:14:56', '2021-03-22 11:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pagename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pagetitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagepath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videourl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `pagename`, `pagetitle`, `content`, `content2`, `image1`, `image2`, `imagepath`, `videourl`, `created_at`, `updated_at`) VALUES
(1, 'home', 'Title', '<p>Content 1</p>', '<p>Content 2</p>', '20210304200119.png', '20210304200119.png', '/uploads/cms', 'file_example_MP4_480_1_5MG.mp4', '2021-03-04 15:01:19', '2021-03-22 13:53:09');

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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagepath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `image`, `imagepath`, `active`, `created_at`, `updated_at`) VALUES
(10, 10, '20210323181002.p4.png', NULL, 1, '2021-03-23 13:10:02', '2021-03-23 13:10:02'),
(11, 10, '20210323182526.f4.png', NULL, 1, '2021-03-23 13:25:26', '2021-03-23 13:25:26'),
(12, 10, '20210323182526.f5.png', NULL, 1, '2021-03-23 13:25:26', '2021-03-23 13:25:26'),
(14, 1, '20210323184225.rev-13.jpg', NULL, 1, '2021-03-23 13:42:25', '2021-03-23 13:42:25'),
(15, 1, '20210323184225.rev-14.jpg', NULL, 1, '2021-03-23 13:42:25', '2021-03-23 13:42:25'),
(16, 1, '20210323184225.rev-21.jpg', NULL, 1, '2021-03-23 13:42:25', '2021-03-23 13:42:25'),
(18, 13, '20210323184404.banner3.png', NULL, 1, '2021-03-23 13:44:04', '2021-03-23 13:44:04'),
(19, 13, '20210323184404.banner4.png', NULL, 1, '2021-03-23 13:44:04', '2021-03-23 13:44:04'),
(20, 13, '20210323184404.banner5.png', NULL, 1, '2021-03-23 13:44:04', '2021-03-23 13:44:04'),
(21, 13, '20210323184404.banner6.png', NULL, 1, '2021-03-23 13:44:04', '2021-03-23 13:44:04'),
(25, 1, '20210323185504.custom-website-design-development.png', NULL, 1, '2021-03-23 13:55:04', '2021-03-23 13:55:04'),
(29, 9, '20210323190726.rev-7.jpg', NULL, 1, '2021-03-23 14:07:26', '2021-03-23 14:07:26'),
(30, 9, '20210323190726.rev-8.jpg', NULL, 1, '2021-03-23 14:07:26', '2021-03-23 14:07:26'),
(31, 9, '20210323190726.rev-9.jpg', NULL, 1, '2021-03-23 14:07:26', '2021-03-23 14:07:26'),
(32, 9, '20210323190726.rev-10.jpg', NULL, 1, '2021-03-23 14:07:26', '2021-03-23 14:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `image`, `path`, `created_at`, `updated_at`) VALUES
(1, '1616455615.png', '/adminTheme/uploads/logo', NULL, '2021-03-22 18:26:55');

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
(4, '2021_02_22_191424_create_logos_table', 1),
(5, '2021_02_22_235830_create_cms_table', 1),
(6, '2021_03_04_165721_create_categories_table', 2),
(7, '2021_03_04_193102_create_products_table', 3),
(8, '2021_03_23_000521_create_galleries_table', 4);

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
  `cat_id` int(10) UNSIGNED DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` int(11) DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_price` double DEFAULT NULL,
  `new_price` double DEFAULT NULL,
  `imagepath` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cat_id`, `brand_id`, `title`, `slug`, `sku`, `short_description`, `long_description`, `old_price`, `new_price`, `imagepath`, `image`, `active`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Product Title 1', 'product-title', NULL, '<p>Short Description</p>', '<p>Long Description</p>', NULL, 10, '/uploads/product', '20210322211954.png', 1, '2021-03-22 14:49:58', '2021-03-22 16:19:54'),
(2, 8, NULL, 'Product Title 2', 'product-title-1', NULL, '<p>Short Description 2</p>', '<p>Long Description 2</p>', 22, 20, '/uploads/product', '20210322211708.jpg', 1, '2021-03-22 14:52:46', '2021-03-22 16:17:08'),
(6, 10, NULL, 'product 10', 'product-10', NULL, '<p>Short Description</p>', '<p>Long Description</p>', NULL, 10, '/uploads/product', '20210322213037.jpg', 1, '2021-03-22 15:04:32', '2021-03-22 16:30:37'),
(9, 8, NULL, 'Product Title', 'product-title-4', NULL, '<p>Short Description</p>', '<p>Long Description</p>', NULL, 20, '/uploads/product', '20210322204621.jpg', 1, '2021-03-22 15:46:22', '2021-03-22 15:46:22'),
(10, 8, NULL, 'Product Title', 'product-title-5', NULL, '<p>Short Description</p>', '<p>Long Description</p>', 22, 20, '/uploads/product', '20210322213057.png', 1, '2021-03-22 15:47:04', '2021-03-22 16:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `password`, `country`, `city`, `address`, `phone`, `image`, `state`, `zipcode`, `country_code`, `username`, `company_name`, `email_verified_at`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'joseph', 'joseph', 'joseph@gmail.com', '$2y$10$CyVUvmhZYm8KsAMGXys/ee.jplSFWnLpAiqoZ6/8cCMP8YIqGPAzy', 'joseph', 'rwerwr', 'fghfghfghfghfgh', '3453534534534', '20210226225804.png', 'fghfghfhfgh', '423423', NULL, NULL, NULL, NULL, 1, NULL, '2021-02-26 15:43:13', '2021-02-26 17:58:04'),
(4, 'john', 'john', 'john@gmail.com', '$2y$10$C0JVPsECArU5cRh1qSK/0.brgDVL2rqO.24Fi0lveuZ8PkLPowjl2', 'Albania', 'rwerwr', 'werwerw', '45645645654654645', '20210226230212.png', '423423423', '423423', NULL, NULL, NULL, NULL, 1, NULL, '2021-02-26 15:45:24', '2021-02-26 18:02:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
