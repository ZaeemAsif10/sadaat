-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2022 at 04:45 PM
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
-- Database: `sadaat`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin@example.com', 'superadmin', NULL, '$2y$10$04D4VxiS5fbr8ll6towqjeTK21rP8MHxERjgpTeES5rdLD0c9bIsi', NULL, '2020-09-11 22:33:43', '2020-09-11 22:33:43'),
(2, 'Admin', 'admin@gmail.com', 'admin', NULL, '$2y$10$.7HeNIXmdognq7i3eQ8YzOg/EXqzrJsSB0BqfXQBa8iB86JClmCs2', NULL, '2020-09-20 10:35:35', '2020-09-20 10:35:35'),
(3, 'Client', 'client@example.com', 'client', NULL, '$2y$10$Nf4rahrK4DohTyAPdJWGeuEHddulfF0D3bANvI9mLNT7svLT88Pge', NULL, '2020-09-20 10:45:00', '2020-09-20 10:45:00'),
(4, 'Test Admin', 'test@gmail.com', 'test', NULL, '$2y$10$i8mt.IzUxq9mq/3euOJ8E.CF7gprJCVNyV.mR8Vdn2LQgcLo/8kCi', NULL, '2020-09-25 13:18:32', '2020-09-25 13:18:32');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_img`, `brand_status`, `created_at`, `updated_at`) VALUES
(15, 'ds', '1654596480.jpg', 0, '2022-06-07 09:08:00', '2022-06-07 09:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `catagory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catagory_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`id`, `catagory_name`, `catagory_img`, `brand_status`, `created_at`, `updated_at`) VALUES
(5, 'Ruth Navarro', '1654667426.png', 0, '2022-06-08 04:48:54', '2022-06-08 04:50:26'),
(8, 'Debra Terry', '1654667649.jpg', 0, '2022-06-08 04:52:45', '2022-06-08 04:54:09'),
(9, 'as', '1654674838.png', 0, '2022-06-08 06:53:58', '2022-06-08 06:53:58'),
(10, 'as', '1654675178.jpg', 0, '2022-06-08 06:59:38', '2022-06-08 06:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_group_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_group_id`, `name`, `company_name`, `tax_number`, `email`, `phone`, `address`, `city`, `state`, `p_code`, `country`, `status`, `created_at`, `updated_at`) VALUES
(1, '2', 'Marvin Juarez', 'Scott and Oconnor Traders', '627', 'feby@mailinator.com', '(175) 220-7851', 'Excepteur tempora vo', 'Sequi praesentium qu', 'Modi reiciendis inve', 'Nemo illo est aspern', 'Commodi in accusamus', '0', '2022-06-15 12:33:36', '2022-06-15 12:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `name`, `percentage`, `created_at`, `updated_at`) VALUES
(2, 'Silas Gibbs', '20', '2022-06-07 12:20:22', '2022-06-07 12:20:31');

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
(29, '2014_10_12_000000_create_users_table', 1),
(30, '2014_10_12_100000_create_password_resets_table', 1),
(31, '2019_08_19_000000_create_failed_jobs_table', 1),
(32, '2020_07_24_184706_create_permission_tables', 1),
(33, '2020_09_12_043205_create_admins_table', 2),
(34, '2022_06_05_235112_create_warehouses_table', 3),
(35, '2022_06_06_005449_create_ware_houses_table', 4),
(36, '2022_06_06_062958_create_brands_table', 5),
(37, '2022_06_06_100115_create_suppliers_table', 6),
(38, '2022_06_07_075015_create_customer_groups_table', 7),
(39, '2022_06_07_075922_create_units_table', 7),
(40, '2022_06_07_102110_create_catagories_table', 8),
(41, '2022_06_07_100446_create_customers_table', 9),
(42, '2022_06_07_133628_create_products_table', 10),
(43, '2022_06_09_075322_create_products_table', 11),
(44, '2022_06_09_105734_add_pcq_to_products_table', 12),
(45, '2022_06_08_070710_create_purchases_table', 13),
(46, '2022_06_13_073952_create_sales_table', 14),
(47, '2022_06_15_121317_create_product_sales_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(1, 'App\\User', 1),
(1, 'App\\User', 3),
(1, 'App\\Models\\Admin', 4),
(6, 'App\\Models\\Admin', 2),
(6, 'App\\User', 3),
(6, 'App\\Models\\Admin', 4),
(7, 'App\\Models\\Admin', 2),
(7, 'App\\Models\\Admin', 3),
(7, 'App\\Models\\Admin', 4),
(8, 'App\\Models\\Admin', 2);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard.view', 'admin', 'dashboard', '2020-07-25 10:43:33', '2020-07-25 10:43:33'),
(2, 'dashboard.edit', 'admin', 'dashboard', '2020-07-25 10:43:33', '2020-07-25 10:43:33'),
(3, 'blog.create', 'admin', 'blog', '2020-07-25 10:43:33', '2020-07-25 10:43:33'),
(4, 'blog.view', 'admin', 'blog', '2020-07-25 10:43:33', '2020-07-25 10:43:33'),
(5, 'blog.edit', 'admin', 'blog', '2020-07-25 10:43:33', '2020-07-25 10:43:33'),
(6, 'blog.delete', 'admin', 'blog', '2020-07-25 10:43:33', '2020-07-25 10:43:33'),
(7, 'blog.approve', 'admin', 'blog', '2020-07-25 10:43:33', '2020-07-25 10:43:33'),
(8, 'admin.create', 'admin', 'admin', '2020-07-25 10:43:33', '2020-07-25 10:43:33'),
(9, 'admin.view', 'admin', 'admin', '2020-07-25 10:43:33', '2020-07-25 10:43:33'),
(10, 'admin.edit', 'admin', 'admin', '2020-07-25 10:43:33', '2020-07-25 10:43:33'),
(11, 'admin.delete', 'admin', 'admin', '2020-07-25 10:43:33', '2020-07-25 10:43:33'),
(12, 'admin.approve', 'admin', 'admin', '2020-07-25 10:43:33', '2020-07-25 10:43:33'),
(13, 'role.create', 'admin', 'role', '2020-07-25 10:43:33', '2020-07-25 10:43:33'),
(14, 'role.view', 'admin', 'role', '2020-07-25 10:43:33', '2020-07-25 10:43:33'),
(15, 'role.edit', 'admin', 'role', '2020-07-25 10:43:33', '2020-07-25 10:43:33'),
(16, 'role.delete', 'admin', 'role', '2020-07-25 10:43:33', '2020-07-25 10:43:33'),
(17, 'role.approve', 'admin', 'role', '2020-07-25 10:43:33', '2020-07-25 10:43:33'),
(18, 'profile.view', 'admin', 'profile', '2020-07-25 10:43:33', '2020-07-25 10:43:33'),
(19, 'profile.edit', 'admin', 'profile', '2020-07-25 10:43:33', '2020-07-25 10:43:33');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_sale_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_purchase_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_catagory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_cost` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_feature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `product_different_warehouse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `product_add_warehouse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `product_detail` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_warehouse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_warehouse_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `product_promotional_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `product_promotional_start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_promotional_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_code`, `product_img`, `product_unit`, `product_sale_unit`, `product_purchase_unit`, `product_brand`, `product_catagory`, `product_cost`, `product_price`, `product_method`, `product_feature`, `product_different_warehouse`, `product_add_warehouse`, `product_detail`, `product_warehouse`, `product_warehouse_price`, `product_promotional_price`, `product_promotional_start`, `product_promotional_end`, `created_at`, `updated_at`, `product_quantity`) VALUES
(2, 'Amena Simmons', 'hMaIyH34', '1654868010.jpg', '12', 'khan', 'khan', '15', '8', '12', '583', 'Aliqua Incididunt e', 'hMaIyH34', 'yes', 'yes', '<p>Id nemo deserunt har.<img src=\"data:image/png;base64,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\" style=\"width: 25%;\" data-filename=\"start_remove-c851bdf8d3127a24e2d137a55b1b427378cd17385b01aec6e59d5d4b5f39d2ec.png\"></p>', '9', 'zx', 'as', '2022-06-14', '2022-06-22', '2022-06-10 12:33:30', '2022-06-10 13:29:26', '126');
INSERT INTO `products` (`id`, `product_name`, `product_code`, `product_img`, `product_unit`, `product_sale_unit`, `product_purchase_unit`, `product_brand`, `product_catagory`, `product_cost`, `product_price`, `product_method`, `product_feature`, `product_different_warehouse`, `product_add_warehouse`, `product_detail`, `product_warehouse`, `product_warehouse_price`, `product_promotional_price`, `product_promotional_start`, `product_promotional_end`, `created_at`, `updated_at`, `product_quantity`) VALUES
(3, 'Jayme Valenzuela', 'wxBt05nb', '1654868534.jpg', '4', 'Leandra Gayd', 'Leandra Gayd', '15', '5', '3', '484', 'Excepturi reprehende', 'yes', 'yes', 'yes', '<p>Voluptatem. Incididu.<img src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEBLAEsAAD/4QCBRXhpZgAASUkqAAgAAAACAA4BAgBTAAAAJgAAABIBAwABAAAAAQAAAAAAAABNb2Rlcm4gbGFwdG9wIHdpdGggZW1wdHkgc2NyZWVuIG9uIHdoaXRlIGJhY2tncm91bmQuIE1vY2t1cCBkZXNpZ24uIENvcHkgc3BhY2UgdGV4dP/hBXlodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+Cjx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iPgoJPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KCQk8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczpwaG90b3Nob3A9Imh0dHA6Ly9ucy5hZG9iZS5jb20vcGhvdG9zaG9wLzEuMC8iIHhtbG5zOklwdGM0eG1wQ29yZT0iaHR0cDovL2lwdGMub3JnL3N0ZC9JcHRjNHhtcENvcmUvMS4wL3htbG5zLyIgICB4bWxuczpHZXR0eUltYWdlc0dJRlQ9Imh0dHA6Ly94bXAuZ2V0dHlpbWFnZXMuY29tL2dpZnQvMS4wLyIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIiB4bWxuczpwbHVzPSJodHRwOi8vbnMudXNlcGx1cy5vcmcvbGRmL3htcC8xLjAvIiAgeG1sbnM6aXB0Y0V4dD0iaHR0cDovL2lwdGMub3JnL3N0ZC9JcHRjNHhtcEV4dC8yMDA4LTAyLTI5LyIgeG1sbnM6eG1wUmlnaHRzPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvcmlnaHRzLyIgcGhvdG9zaG9wOkNyZWRpdD0iR2V0dHkgSW1hZ2VzL2lTdG9ja3Bob3RvIiBHZXR0eUltYWdlc0dJRlQ6QXNzZXRJRD0iMTE4MjI0MTgwNSIgeG1wUmlnaHRzOldlYlN0YXRlbWVudD0iaHR0cHM6Ly93d3cuaXN0b2NrcGhvdG8uY29tL2xlZ2FsL2xpY2Vuc2UtYWdyZWVtZW50P3V0bV9tZWRpdW09b3JnYW5pYyZhbXA7dXRtX3NvdXJjZT1nb29nbGUmYW1wO3V0bV9jYW1wYWlnbj1pcHRjdXJsIiA+CjxkYzpjcmVhdG9yPjxyZGY6U2VxPjxyZGY6bGk+T3ZzaWFua2FTdHVkaW88L3JkZjpsaT48L3JkZjpTZXE+PC9kYzpjcmVhdG9yPjxkYzpkZXNjcmlwdGlvbj48cmRmOkFsdD48cmRmOmxpIHhtbDpsYW5nPSJ4LWRlZmF1bHQiPk1vZGVybiBsYXB0b3Agd2l0aCBlbXB0eSBzY3JlZW4gb24gd2hpdGUgYmFja2dyb3VuZC4gTW9ja3VwIGRlc2lnbi4gQ29weSBzcGFjZSB0ZXh0PC9yZGY6bGk+PC9yZGY6QWx0PjwvZGM6ZGVzY3JpcHRpb24+CjxwbHVzOkxpY2Vuc29yPjxyZGY6U2VxPjxyZGY6bGkgcmRmOnBhcnNlVHlwZT0nUmVzb3VyY2UnPjxwbHVzOkxpY2Vuc29yVVJMPmh0dHBzOi8vd3d3LmlzdG9ja3Bob3RvLmNvbS9waG90by9saWNlbnNlLWdtMTE4MjI0MTgwNS0/dXRtX21lZGl1bT1vcmdhbmljJmFtcDt1dG1fc291cmNlPWdvb2dsZSZhbXA7dXRtX2NhbXBhaWduPWlwdGN1cmw8L3BsdXM6TGljZW5zb3JVUkw+PC9yZGY6bGk+PC9yZGY6U2VxPjwvcGx1czpMaWNlbnNvcj4KCQk8L3JkZjpEZXNjcmlwdGlvbj4KCTwvcmRmOlJERj4KPC94OnhtcG1ldGE+Cjw/eHBhY2tldCBlbmQ9InciPz4K/+IMWElDQ19QUk9GSUxFAAEBAAAMSExpbm8CEAAAbW50clJHQiBYWVogB84AAgAJAAYAMQAAYWNzcE1TRlQAAAAASUVDIHNSR0IAAAAAAAAAAAAAAAAAAPbWAAEAAAAA0y1IUCAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARY3BydAAAAVAAAAAzZGVzYwAAAYQAAABsd3RwdAAAAfAAAAAUYmtwdAAAAgQAAAAUclhZWgAAAhgAAAAUZ1hZWgAAAiwAAAAUYlhZWgAAAkAAAAAUZG1uZAAAAlQAAABwZG1kZAAAAsQAAACIdnVlZAAAA0wAAACGdmlldwAAA9QAAAAkbHVtaQAAA/gAAAAUbWVhcwAABAwAAAAkdGVjaAAABDAAAAAMclRSQwAABDwAAAgMZ1RSQwAABDwAAAgMYlRSQwAABDwAAAgMdGV4dAAAAABDb3B5cmlnaHQgKGMpIDE5OTggSGV3bGV0dC1QYWNrYXJkIENvbXBhbnkAAGRlc2MAAAAAAAAAEnNSR0IgSUVDNjE5NjYtMi4xAAAAAAAAAAAAAAASc1JHQiBJRUM2MTk2Ni0yLjEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAADzUQABAAAAARbMWFlaIAAAAAAAAAAAAAAAAAAAAABYWVogAAAAAAAAb6IAADj1AAADkFhZWiAAAAAAAABimQAAt4UAABjaWFlaIAAAAAAAACSgAAAPhAAAts9kZXNjAAAAAAAAABZJRUMgaHR0cDovL3d3dy5pZWMuY2gAAAAAAAAAAAAAABZJRUMgaHR0cDovL3d3dy5pZWMuY2gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAZGVzYwAAAAAAAAAuSUVDIDYxOTY2LTIuMSBEZWZhdWx0IFJHQiBjb2xvdXIgc3BhY2UgLSBzUkdCAAAAAAAAAAAAAAAuSUVDIDYxOTY2LTIuMSBEZWZhdWx0IFJHQiBjb2xvdXIgc3BhY2UgLSBzUkdCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGRlc2MAAAAAAAAALFJlZmVyZW5jZSBWaWV3aW5nIENvbmRpdGlvbiBpbiBJRUM2MTk2Ni0yLjEAAAAAAAAAAAAAACxSZWZlcmVuY2UgVmlld2luZyBDb25kaXRpb24gaW4gSUVDNjE5NjYtMi4xAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB2aWV3AAAAAAATpP4AFF8uABDPFAAD7cwABBMLAANcngAAAAFYWVogAAAAAABMCVYAUAAAAFcf521lYXMAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAKPAAAAAnNpZyAAAAAAQ1JUIGN1cnYAAAAAAAAEAAAAAAUACgAPABQAGQAeACMAKAAtADIANwA7AEAARQBKAE8AVABZAF4AYwBoAG0AcgB3AHwAgQCGAIsAkACVAJoAnwCkAKkArgCyALcAvADBAMYAywDQANUA2wDgAOUA6wDwAPYA+wEBAQcBDQETARkBHwElASsBMgE4AT4BRQFMAVIBWQFgAWcBbgF1AXwBgwGLAZIBmgGhAakBsQG5AcEByQHRAdkB4QHpAfIB+gIDAgwCFAIdAiYCLwI4AkECSwJUAl0CZwJxAnoChAKOApgCogKsArYCwQLLAtUC4ALrAvUDAAMLAxYDIQMtAzgDQwNPA1oDZgNyA34DigOWA6IDrgO6A8cD0wPgA+wD+QQGBBMEIAQtBDsESARVBGMEcQR+BIwEmgSoBLYExATTBOEE8AT+BQ0FHAUrBToFSQVYBWcFdwWGBZYFpgW1BcUF1QXlBfYGBgYWBicGNwZIBlkGagZ7BowGnQavBsAG0QbjBvUHBwcZBysHPQdPB2EHdAeGB5kHrAe/B9IH5Qf4CAsIHwgyCEYIWghuCIIIlgiqCL4I0gjnCPsJEAklCToJTwlkCXkJjwmkCboJzwnlCfsKEQonCj0KVApqCoEKmAquCsUK3ArzCwsLIgs5C1ELaQuAC5gLsAvIC+EL+QwSDCoMQwxcDHUMjgynDMAM2QzzDQ0NJg1ADVoNdA2ODakNww3eDfgOEw4uDkkOZA5/DpsOtg7SDu4PCQ8lD0EPXg96D5YPsw/PD+wQCRAmEEMQYRB+EJsQuRDXEPURExExEU8RbRGMEaoRyRHoEgcSJhJFEmQShBKjEsMS4xMDEyMTQxNjE4MTpBPFE+UUBhQnFEkUahSLFK0UzhTwFRIVNBVWFXgVmxW9FeAWAxYmFkkWbBaPFrIW1hb6Fx0XQRdlF4kXrhfSF/cYGxhAGGUYihivGNUY+hkgGUUZaxmRGbcZ3RoEGioaURp3Gp4axRrsGxQbOxtjG4obshvaHAIcKhxSHHscoxzMHPUdHh1HHXAdmR3DHeweFh5AHmoelB6+HukfEx8+H2kflB+/H+ogFSBBIGwgmCDEIPAhHCFIIXUhoSHOIfsiJyJVIoIiryLdIwojOCNmI5QjwiPwJB8kTSR8JKsk2iUJJTglaCWXJccl9yYnJlcmhya3JugnGCdJJ3onqyfcKA0oPyhxKKIo1CkGKTgpaymdKdAqAio1KmgqmyrPKwIrNitpK50r0SwFLDksbiyiLNctDC1BLXYtqy3hLhYuTC6CLrcu7i8kL1ovkS/HL/4wNTBsMKQw2zESMUoxgjG6MfIyKjJjMpsy1DMNM0YzfzO4M/E0KzRlNJ402DUTNU01hzXCNf02NzZyNq426TckN2A3nDfXOBQ4UDiMOMg5BTlCOX85vDn5OjY6dDqyOu87LTtrO6o76DwnPGU8pDzjPSI9YT2hPeA+ID5gPqA+4D8hP2E/oj/iQCNAZECmQOdBKUFqQaxB7kIwQnJCtUL3QzpDfUPARANER0SKRM5FEkVVRZpF3kYiRmdGq0bwRzVHe0fASAVIS0iRSNdJHUljSalJ8Eo3Sn1KxEsMS1NLmkviTCpMcky6TQJNSk2TTdxOJU5uTrdPAE9JT5NP3VAnUHFQu1EGUVBRm1HmUjFSfFLHUxNTX1OqU/ZUQlSPVNtVKFV1VcJWD1ZcVqlW91dEV5JX4FgvWH1Yy1kaWWlZuFoHWlZaplr1W0VblVvlXDVchlzWXSddeF3JXhpebF69Xw9fYV+zYAVgV2CqYPxhT2GiYfViSWKcYvBjQ2OXY+tkQGSUZOllPWWSZedmPWaSZuhnPWeTZ+loP2iWaOxpQ2maafFqSGqfavdrT2una/9sV2yvbQhtYG25bhJua27Ebx5veG/RcCtwhnDgcTpxlXHwcktypnMBc11zuHQUdHB0zHUodYV14XY+dpt2+HdWd7N4EXhueMx5KnmJeed6RnqlewR7Y3vCfCF8gXzhfUF9oX4BfmJ+wn8jf4R/5YBHgKiBCoFrgc2CMIKSgvSDV4O6hB2EgITjhUeFq4YOhnKG14c7h5+IBIhpiM6JM4mZif6KZIrKizCLlov8jGOMyo0xjZiN/45mjs6PNo+ekAaQbpDWkT+RqJIRknqS45NNk7aUIJSKlPSVX5XJljSWn5cKl3WX4JhMmLiZJJmQmfyaaJrVm0Kbr5wcnImc951kndKeQJ6unx2fi5/6oGmg2KFHobaiJqKWowajdqPmpFakx6U4pammGqaLpv2nbqfgqFKoxKk3qamqHKqPqwKrdavprFys0K1ErbiuLa6hrxavi7AAsHWw6rFgsdayS7LCszizrrQltJy1E7WKtgG2ebbwt2i34LhZuNG5SrnCuju6tbsuu6e8IbybvRW9j74KvoS+/796v/XAcMDswWfB48JfwtvDWMPUxFHEzsVLxcjGRsbDx0HHv8g9yLzJOsm5yjjKt8s2y7bMNcy1zTXNtc42zrbPN8+40DnQutE80b7SP9LB00TTxtRJ1MvVTtXR1lXW2Ndc1+DYZNjo2WzZ8dp22vvbgNwF3IrdEN2W3hzeot8p36/gNuC94UThzOJT4tvjY+Pr5HPk/OWE5g3mlucf56noMui86Ubp0Opb6uXrcOv77IbtEe2c7ijutO9A78zwWPDl8XLx//KM8xnzp/Q09ML1UPXe9m32+/eK+Bn4qPk4+cf6V/rn+3f8B/yY/Sn9uv5L/tz/bf///+0ApFBob3Rvc2hvcCAzLjAAOEJJTQQEAAAAAACIHAJQAA5PdnNpYW5rYVN0dWRpbxwCeABTTW9kZXJuIGxhcHRvcCB3aXRoIGVtcHR5IHNjcmVlbiBvbiB3aGl0ZSBiYWNrZ3JvdW5kLiBNb2NrdXAgZGVzaWduLiBDb3B5IHNwYWNlIHRleHQcAm4AGEdldHR5IEltYWdlcy9pU3RvY2twaG90b//bAEMAAgEBAQEBAgEBAQICAgICBAMCAgICBQQEAwQGBQYGBgUGBgYHCQgGBwkHBgYICwgJCgoKCgoGCAsMCwoMCQoKCv/bAEMBAgICAgICBQMDBQoHBgcKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCv/AABEIAVMB/QMBEQACEQEDEQH/xAAfAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgv/xAC1EAACAQMDAgQDBQUEBAAAAX0BAgMABBEFEiExQQYTUWEHInEUMoGRoQgjQrHBFVLR8CQzYnKCCQoWFxgZGiUmJygpKjQ1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4eLj5OXm5+jp6vHy8/T19vf4+fr/xAAfAQADAQEBAQEBAQEBAAAAAAAAAQIDBAUGBwgJCgv/xAC1EQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5ufo6ery8/T19vf4+fr/2gAMAwEAAhEDEQA/AP38oAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgCrca5otnKYLvWLWJx1SS4VSPwJoAj/AOEm8N/9DBY/+Baf40XQB/wlHho8DxFY/wDgWn+NF0Af8JR4a/6GKx/8C0/xpXQB/wAJN4b/AOhhsf8AwLT/ABp3QAfE/hodfENiPrdp/jRdAJ/wlXhfGf8AhJLD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AUAFABQAUAFABQAUAFABQAUAFABQB/FZ/wAEqITL+2/8I1H8XjfTF+v79P8AGgD+1OgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoA/k//wCDkWHyP+CrXxQUnrfWrY+trEf60AfuN/wbAnP/AAQ2+CZ/6a+KP/Uo1agD76oAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKAP4s/+CScQm/bw+DcLfx+PtJA983MdAH9plABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQB/KR/wAHLsL2/wDwVg+Jp2jBlsG69c2Nuf60Aft7/wAGv/8Ayg1+CWf+evij/wBSjVqAPvqgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoA/i5/wCCP0fnf8FCPgjA2QG+ImjgYHf7VHQB/aNQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAfyp/8ABzvaiD/grD8RTt+/HprcdTnTbWgR+2X/AAbADH/BDb4JD/pr4o/9SjVqBn31QAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAfxg/8ABGNRc/8ABRz4GW5Und8StFA56f6ZFQB/Z9QAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAfy0f8HRNsYf+CqnjxlUfNZ6S2T76ZaUCR+z3/BsCSf+CG3wTJOczeKef+5o1agZ980AFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFAH8ZH/BEuIT/8FLvgRErdfiZouQf+vyKgD+zegAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoAKACgAoA/l3/4Omrcw/8ABVLxjKoX5tJ0d+ffTbYf0oEfsd/wbA8f8ENvgnxj994o4/7mjVqBn31QAUAFABQAUAFABQAUAFAB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ABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAFABQAUAf/2Q==\" data-filename=\"istockphoto-1182241805-170667a.jpg\" style=\"width: 25%;\"></p>', '9', '78', '141', '2012-07-22', '2005-04-06', '2022-06-10 12:42:14', '2022-06-10 12:42:14', '572');

-- --------------------------------------------------------

--
-- Table structure for table `product_sales`
--

CREATE TABLE `product_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_unit_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_total_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sales`
--

INSERT INTO `product_sales` (`id`, `sale_id`, `product_id`, `product_name`, `product_qty`, `product_code`, `product_unit_price`, `product_total_price`, `created_at`, `updated_at`) VALUES
(19, 1, '2', 'Amena Simmons', '34', 'hMaIyH34', '6', '19822', '2022-06-20 13:13:49', '2022-06-20 13:13:49');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double DEFAULT NULL,
  `total_tax` double DEFAULT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_cost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` double NOT NULL,
  `due_ammount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_amount` double DEFAULT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `user_id`, `warehouse_id`, `supplier_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `due_ammount`, `paid_amount`, `payment_status`, `document`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 9, 4, 2, 27, 78, 97, 108, NULL, NULL, '0', '6', 108, '108', NULL, 3, '1655731572.png', 'Recusandae4Aut omni', 0, '2022-06-20 09:37:45', '2022-06-20 13:43:33');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_products`
--

CREATE TABLE `purchase_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` int(255) DEFAULT NULL,
  `product_id` int(255) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `net_unit_cost` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_products`
--

INSERT INTO `purchase_products` (`id`, `purchase_id`, `product_id`, `name`, `code`, `qty`, `net_unit_cost`, `total`, `created_at`, `updated_at`) VALUES
(26, 1, 3, 'Jayme Valenzuela', 'wxBt05nb', '4', '4', '16', '2022-06-20 13:43:33', '2022-06-20 13:43:33'),
(27, 1, 3, 'Jayme Valenzuela', 'wxBt05nb', '23', '4', '92', '2022-06-20 13:43:33', '2022-06-20 13:43:33');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'admin', '2020-07-25 10:43:33', '2020-07-25 10:43:33'),
(6, 'Admin', 'admin', '2020-08-13 09:44:25', '2020-08-14 02:10:53'),
(7, 'Client', 'admin', '2020-09-20 10:44:27', '2020-09-20 10:44:27'),
(8, 'Test Role', 'admin', '2020-09-25 13:17:53', '2020-09-25 13:17:53'),
(9, 'khan', 'admin', '2022-06-05 21:36:55', '2022-06-05 21:36:55'),
(10, 'hanji', 'admin', '2022-06-05 22:30:46', '2022-06-05 22:30:46'),
(11, 'j', 'admin', '2022-06-06 13:20:35', '2022-06-06 13:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 6),
(1, 7),
(1, 8),
(1, 10),
(1, 11),
(2, 1),
(2, 6),
(2, 8),
(2, 10),
(2, 11),
(3, 1),
(3, 6),
(3, 9),
(3, 10),
(3, 11),
(4, 1),
(4, 6),
(4, 7),
(4, 9),
(4, 10),
(4, 11),
(5, 1),
(5, 6),
(5, 9),
(5, 10),
(5, 11),
(6, 1),
(6, 6),
(6, 9),
(6, 10),
(6, 11),
(7, 1),
(7, 6),
(7, 9),
(7, 10),
(7, 11),
(8, 1),
(8, 8),
(8, 10),
(8, 11),
(9, 1),
(9, 6),
(9, 8),
(9, 10),
(9, 11),
(10, 1),
(10, 8),
(10, 10),
(10, 11),
(11, 1),
(11, 8),
(11, 10),
(11, 11),
(12, 1),
(12, 8),
(12, 10),
(12, 11),
(13, 1),
(13, 6),
(13, 9),
(13, 10),
(13, 11),
(14, 1),
(14, 6),
(14, 7),
(14, 9),
(14, 10),
(14, 11),
(15, 1),
(15, 9),
(15, 10),
(15, 11),
(16, 1),
(16, 9),
(16, 10),
(16, 11),
(17, 1),
(17, 9),
(17, 10),
(17, 11),
(18, 1),
(18, 10),
(18, 11),
(19, 1),
(19, 10),
(19, 11);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `customer_id` int(255) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `item` int(11) DEFAULT NULL,
  `total_qty` double DEFAULT NULL,
  `total_discount` double DEFAULT NULL,
  `total_tax` double DEFAULT NULL,
  `total_cost` double DEFAULT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `payment_status` int(11) DEFAULT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staf_note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `customer_id`, `warehouse_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `paid_amount`, `payment_status`, `document`, `staf_note`, `sale_note`, `sale_status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 9, 1, 34, NULL, NULL, NULL, NULL, NULL, 0, 23, 19822, NULL, 4, '1655706070.jpg', NULL, NULL, 1, '2022-06-20 05:21:10', '2022-06-20 13:13:49');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `company_name`, `vat_number`, `email`, `phone`, `address`, `city`, `state`, `p_code`, `country`, `image`, `created_at`, `updated_at`) VALUES
(4, 'Keane Johnson', 'Shepard and Burks Plc', '229', 'gije@mailinator.com', '8', 'Placeat fugit accu', 'Omnis ut eaque omnis', 'Placeat non dolorum', 'Et pariatur Omnis a', 'Veritatis mollitia c', '1654608054.jpg', '2022-06-07 12:20:47', '2022-06-07 12:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_code`, `unit_name`, `unit_status`, `created_at`, `updated_at`) VALUES
(3, 'Porro quis autem sun', 'khan', '0', '2022-06-07 09:08:14', '2022-06-07 09:08:14'),
(4, 'Minus culpa aperiam', 'Cailin Walsh', '0', '2022-06-07 09:08:26', '2022-06-07 09:08:26'),
(5, 'Possimus cillum bla', 'Leandra Gayd', '0', '2022-06-07 09:08:34', '2022-06-07 09:08:59');

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
(1, 'Maniruzzaman Akash', 'manirujjamanakash@gmail.com', NULL, '$2y$10$/WuShlzx6A2xlSdg521Uj./pHpEGB04rB/toeltFTQQnFsR6MY/eG', NULL, '2020-07-25 10:43:33', '2020-07-25 10:43:33'),
(3, 'test2', 'admin@akijfood.com', NULL, '$2y$10$/4YK7i2fVqdTfm0WAJM3lOnApbJx4w9vxUBZyjN3HqBTnV0zmcwO.', NULL, '2020-08-14 02:28:22', '2020-08-14 03:07:31'),
(8, 'admin@gmail.com', '12345678@gmail.com', NULL, '$2y$10$ZRWTIKwtLudwRI9XFwcPVuBhDtCt2GTGvhVPw.vQ0i07mV5lJ.Hsa', NULL, '2022-06-05 21:25:43', '2022-06-05 21:25:43'),
(9, 'admin@gmail.com', 'callcenter@gmail.com', NULL, '$2y$10$awqzwYjJ3gWgVxkKyPV1Ku2cxpUQMyI2iMBzeK5opYEBwbS7Zzmx2', NULL, '2022-06-05 21:32:34', '2022-06-05 21:38:41'),
(10, 'sa', 'calqwlcessssssssnter@gmail.com', NULL, '$2y$10$Nzad/ci/XsD2P6v..tsMAO69Y2e.gHuQujhAWBKH6rE5.wcic2saK', NULL, '2022-06-05 21:36:05', '2022-06-05 21:57:24'),
(11, 'qwq', 'wqwq@gmail.com', NULL, '$2y$10$gsj5HB2D01cIWw1HqS7z8uNycVg3clBQjxLIP4x4trkoGmDMr52P2', NULL, '2022-06-05 21:58:08', '2022-06-05 21:58:08'),
(12, 'asd', 'aa@gmail.com', NULL, '$2y$10$yUMjAsfz4v5v484Vp/NMfetrsj./kf1MTDfANOtgmgnTdWMiICyJq', NULL, '2022-06-05 22:10:10', '2022-06-05 22:10:10'),
(13, 'khanjee', 'superadmin@example.com', NULL, '$2y$10$1SFY4x1ObSQBUzQUQO3kWO.fd2mqXXnMgCJO/mGzAgpAc4qCzd2pG', NULL, '2022-06-05 22:20:25', '2022-06-05 22:20:25'),
(14, '123456@example.com', '123456@gmail.com', NULL, '$2y$10$RDXeBrqAo4MdWoe38JEWbuHtolpCDNrhyE3gVtZl3wQmBj4RyYdwq', NULL, '2022-06-05 22:25:26', '2022-06-05 22:26:05'),
(15, '123456@example.com', '12@gmailcom', NULL, '$2y$10$i50NPQxJcj8WuDo7kB2tfO7jHizwv6LhXXABm13tucKiexcpz98Eq', NULL, '2022-06-05 22:26:49', '2022-06-05 22:26:49'),
(16, '123456@example.com', '123456@example.com', NULL, '$2y$10$ZoA5xL2QWbQ4mmmPF2JGIOB1IdsqLi5jy.28ZRXO7c7Dt5OYjYCAi', NULL, '2022-06-05 22:32:22', '2022-06-05 22:32:22');

-- --------------------------------------------------------

--
-- Table structure for table `ware_houses`
--

CREATE TABLE `ware_houses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wareh_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wareh_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wareh_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wareh_address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wareh_stock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `wareh_quantiy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `wareh_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ware_houses`
--

INSERT INTO `ware_houses` (`id`, `wareh_name`, `wareh_email`, `wareh_phone`, `wareh_address`, `wareh_stock`, `wareh_quantiy`, `wareh_status`, `created_at`, `updated_at`) VALUES
(9, 'Penelope Willis', 'wikibug@mailinator.com', '+1 (995) 502-4046', 'Magnam doloribus aut', '38', 'hexasyla', 0, '2022-06-07 11:09:31', '2022-06-07 11:09:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sales`
--
ALTER TABLE `product_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_sales_sale_id_index` (`sale_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_products`
--
ALTER TABLE `purchase_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `ware_houses`
--
ALTER TABLE `ware_houses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ware_houses_wareh_email_unique` (`wareh_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_sales`
--
ALTER TABLE `product_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_products`
--
ALTER TABLE `purchase_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ware_houses`
--
ALTER TABLE `ware_houses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_sales`
--
ALTER TABLE `product_sales`
  ADD CONSTRAINT `product_sales_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
