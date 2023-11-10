-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2023 at 06:58 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tadreeb`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `schedule_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `firstName`, `lastName`, `email`, `phoneNumber`, `course_id`, `schedule_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Giselle', 'Bowen', 'tysafoxura@mailinator.com', '12345542112', 1, NULL, 'approved', '2023-11-06 07:03:52', '2023-11-07 09:16:33'),
(2, 'Giselle', 'Bowen', 'tysafoxura@mailinator.com', '12345542112', 1, NULL, 'approved', '2023-11-06 07:03:53', '2023-11-07 11:20:18'),
(3, 'Illiana', 'Russell', 'voga@mailinator.com', '11165134747', 2, NULL, 'rejected', '2023-11-06 07:04:05', '2023-11-07 09:17:06'),
(4, 'Timothy', 'Kennedy', 'fiqonozy@mailinator.com', '16093379732', NULL, 4, 'pending', '2023-11-07 09:21:04', '2023-11-07 09:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sophia Stone', '2023-11-03 06:27:07', '2023-11-03 06:27:07'),
(2, 'August Spencer', '2023-11-03 06:27:11', '2023-11-03 06:27:11'),
(3, 'Akeem Miranda', '2023-11-03 06:27:14', '2023-11-03 06:27:14'),
(4, 'Lyle Tillman', '2023-11-03 06:27:18', '2023-11-03 06:27:18'),
(5, 'Callie Wood', '2023-11-03 22:49:51', '2023-11-03 22:49:51'),
(10, 'Marshall Norris', '2023-11-07 09:34:45', '2023-11-07 09:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `fullName`, `location`, `phoneNumber`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Rachel Patel', 'Quae quod error quod', '15955489493', 'cohof@mailinator.com', '2023-11-05 10:49:23', '2023-11-05 10:49:23'),
(5, 'Zenaida Sellers', 'Animi quia suscipit', '16354689185', 'wusywazav@mailinator.com', '2023-11-07 09:23:06', '2023-11-07 09:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `course_outline` text NOT NULL,
  `training_id` bigint(20) UNSIGNED NOT NULL,
  `venue_id` bigint(20) UNSIGNED NOT NULL,
  `format_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `fee` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `course_outline`, `training_id`, `venue_id`, `format_id`, `start_date`, `end_date`, `fee`, `created_at`, `updated_at`) VALUES
(1, 'Quam vel Nam occaeca', 'Dolore accusamus dol', 'Sint et molestias ve', 1, 3, 1, '2023-11-06', '2016-07-30', 80, '2023-11-03 09:19:32', '2023-11-06 15:03:05'),
(2, 'A sit animi nostru', 'Nobis aperiam sunt e', 'Veniam qui amet di', 1, 2, 3, '2023-11-06', '2023-11-29', 31, '2023-11-03 09:20:07', '2023-11-06 15:03:45'),
(3, 'In dolore hic in vol', 'Sed veniam et do bl', 'Deserunt consectetur', 3, 3, 1, '2023-11-08', '2023-11-23', 25, '2023-11-03 09:49:01', '2023-11-06 15:05:29'),
(4, 'Eum laborum consequa', 'Accusantium enim ali', 'Cupiditate amet lab', 3, 1, 1, '2023-11-07', '2023-11-25', 8, '2023-11-03 09:49:43', '2023-11-06 15:05:55'),
(6, 'Ipsum duis et ut ame', 'Libero id aut expedi', 'In at debitis nulla', 5, 4, 1, '2023-11-06', '2023-11-16', 11, '2023-11-03 09:50:10', '2023-11-06 15:09:54'),
(7, 'Aliqua Do pariatur', 'Sunt vel elit quas', 'Voluptatem quae aliq', 5, 3, 1, '1987-04-08', '1990-09-23', 83, '2023-11-03 09:51:21', '2023-11-03 09:51:21'),
(10, 'Labore incidunt nih', 'Assumenda officia qu', 'Et nostrud anim ipsa', 2, 1, 1, '2023-11-06', '2023-11-30', 50, '2023-11-03 11:47:22', '2023-11-06 15:04:49'),
(11, 'Quam vel Nam', 'Cupidatat atque face', 'Cupiditate est aut', 1, 2, 2, '2023-11-06', '2023-12-09', 92, '2023-11-06 10:36:19', '2023-11-06 15:04:12'),
(12, 'Eum necessitatibus f', 'Saepe corporis itaqu', 'Sit do vitae sit il', 2, 2, 2, '2023-11-07', '2023-11-17', 26, '2023-11-07 06:55:36', '2023-11-07 06:55:36'),
(14, 'Similique quis earum', 'Est occaecat laboru', 'Dignissimos dolores', 1, 3, 1, '2023-11-07', '2023-11-16', 64, '2023-11-07 09:13:52', '2023-11-07 09:13:52'),
(15, 'Fuga Totam porro do', 'Doloremque quas exce', 'Omnis in sapiente ea', 1, 1, 3, '2023-11-09', '2023-11-22', 2, '2023-11-07 09:35:26', '2023-11-07 09:35:26'),
(16, 'Dolor cupiditate vol', 'Illum veniam tempo', 'Iste praesentium est', 1, 2, 3, '2023-11-08', '2023-11-18', 88, '2023-11-08 02:41:51', '2023-11-08 02:41:51'),
(17, 'Nam anim consequuntu', 'Quia odio maxime ips', 'Vero cillum nostrum', 1, 3, 1, '1990-12-13', '1991-11-25', 43, '2023-11-08 02:42:50', '2023-11-08 02:42:50'),
(18, 'Dolore quaerat quo a', 'Ut occaecat amet la', 'Eveniet nulla nesci', 1, 3, 3, '1989-11-12', '2013-06-07', 78, '2023-11-08 02:43:52', '2023-11-08 02:43:52'),
(19, 'Mollit quia iure et', 'Et molestiae veniam', 'Eu id anim perferen', 1, 5, 3, '1990-02-03', '2001-08-28', 83, '2023-11-08 02:47:21', '2023-11-08 02:47:21'),
(20, 'Quae pariatur Volup', 'Tempore mollit recu', 'Voluptas in magnam v', 1, 4, 2, '1990-09-01', '1997-07-22', 61, '2023-11-08 02:47:29', '2023-11-08 02:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `formats`
--

CREATE TABLE `formats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `formats`
--

INSERT INTO `formats` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Classroom Training', '2023-11-03 06:23:15', '2023-11-03 06:23:15'),
(2, 'Online Training', '2023-11-03 06:23:19', '2023-11-03 06:23:19'),
(3, 'In-House Solution', '2023-11-03 06:23:23', '2023-11-03 06:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(39, '2014_10_12_000000_create_users_table', 1),
(40, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(41, '2019_08_19_000000_create_failed_jobs_table', 1),
(42, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(43, '2023_09_14_191927_create_tasks_table', 1),
(44, '2023_09_15_142533_create_products_table', 1),
(45, '2023_10_31_012645_create_categories_table', 1),
(46, '2023_10_31_013426_create_trainings_table', 1),
(47, '2023_10_31_055511_create_venues_table', 1),
(48, '2023_10_31_073950_create_formats_table', 1),
(49, '2023_10_31_131539_create_courses_table', 1),
(50, '2023_10_31_184622_create_schedules_table', 1),
(51, '2023_11_05_113316_create_contacts_table', 2),
(54, '2023_11_05_174912_create_books_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API Token ofkasuman', '9bf7bbfd13346402b9dc6228dcd61752ab0baca0b230df7bd6f0416e0abe4b34', '[\"*\"]', NULL, NULL, '2023-11-03 06:22:22', '2023-11-03 06:22:22'),
(2, 'App\\Models\\User', 1, 'Api Token ofkasuman', '940fd1581e5a7defe20e2dd729a578533c8386960a839344b5ae30d20cf6fd85', '[\"*\"]', '2023-11-03 07:59:51', NULL, '2023-11-03 06:23:04', '2023-11-03 07:59:51'),
(3, 'App\\Models\\User', 1, 'Api Token ofkasuman', 'cc9b50c03374517b52d05ee7c6c4dee0aa63d4a36034016c6ac5292ec099c8aa', '[\"*\"]', '2023-11-03 22:46:43', NULL, '2023-11-03 08:46:57', '2023-11-03 22:46:43'),
(4, 'App\\Models\\User', 1, 'Api Token ofkasuman', 'e4c27cef4f000dbf3e513d75e65b14d396afee63ea429d158800a3998b26aab9', '[\"*\"]', '2023-11-04 09:09:33', NULL, '2023-11-03 22:49:35', '2023-11-04 09:09:33'),
(5, 'App\\Models\\User', 1, 'Api Token ofkasuman', '3a915463664a817ca229dbfd68c84e8cd587d0d0c13656584b609f46ad0c8537', '[\"*\"]', '2023-11-05 04:43:36', NULL, '2023-11-05 04:40:52', '2023-11-05 04:43:36'),
(6, 'App\\Models\\User', 1, 'Api Token ofkasuman', '39b08a13d73f1b2fe4059849b13371e23e5d0b7c56b840d9e9e2295b76e72ddd', '[\"*\"]', '2023-11-06 16:42:46', NULL, '2023-11-06 01:32:39', '2023-11-06 16:42:46'),
(7, 'App\\Models\\User', 1, 'Api Token ofkasuman', 'cbb36e12b986e09a6c82d85c8fa8b941482a69ea88f7f727e2e4f74717337ea3', '[\"*\"]', '2023-11-07 03:41:20', NULL, '2023-11-07 03:24:56', '2023-11-07 03:41:20'),
(8, 'App\\Models\\User', 1, 'Api Token ofkasuman', '4c3b2433d5bd6fa25032448f42eb1ba95f8738e1875e9f00c02dc823a60283fa', '[\"*\"]', '2023-11-07 03:46:02', NULL, '2023-11-07 03:42:07', '2023-11-07 03:46:02'),
(9, 'App\\Models\\User', 1, 'Api Token ofkasuman', '090fecadcf83036d8b4e2589a05dd7c22b55294115c725deb41edf561d4d469f', '[\"*\"]', '2023-11-07 04:25:39', NULL, '2023-11-07 03:46:47', '2023-11-07 04:25:39'),
(10, 'App\\Models\\User', 1, 'Api Token ofkasuman', 'ea1af0bb780e05e28f12b7c81f9e9933612aab23cc6b9b2d47c2b04d8b987e23', '[\"*\"]', '2023-11-07 05:31:43', NULL, '2023-11-07 04:26:46', '2023-11-07 05:31:43'),
(11, 'App\\Models\\User', 1, 'Api Token ofkasuman', '398a44d7b99a5f960f6fcfd51c6925d6cc1627ba033f296cc82438e1f7ea9a10', '[\"*\"]', '2023-11-07 09:07:56', NULL, '2023-11-07 05:42:25', '2023-11-07 09:07:56'),
(12, 'App\\Models\\User', 1, 'Api Token ofkasuman', '35ac3d9a0ec5f05a08fc7ba03959bc974a39a6f21a81fa7326ca2a3d33e79ed3', '[\"*\"]', '2023-11-07 09:17:27', NULL, '2023-11-07 09:09:08', '2023-11-07 09:17:27'),
(13, 'App\\Models\\User', 1, 'Api Token ofkasuman', '675d3b642551854783bacd07d45ff6465d79355f6b7d05c9abe67d9c5b37d8de', '[\"*\"]', '2023-11-07 11:02:58', NULL, '2023-11-07 09:33:43', '2023-11-07 11:02:58'),
(14, 'App\\Models\\User', 1, 'Api Token ofkasuman', '8f152737873a1543526c3918a7cf5ed1239e25fc8c6076ae00eb1fd1b722a284', '[\"*\"]', '2023-11-07 16:41:29', NULL, '2023-11-07 11:02:58', '2023-11-07 16:41:29'),
(15, 'App\\Models\\User', 1, 'Api Token ofkasuman', '05041f51af86651af1888ecbe09060aab3f1d0bd65f3bfa7a6df9b4d3980193d', '[\"*\"]', '2023-11-07 16:49:39', NULL, '2023-11-07 16:49:00', '2023-11-07 16:49:39'),
(16, 'App\\Models\\User', 1, 'Api Token ofkasuman', '2ff12ba9afcc0ef7c0f7542d77b911ece29264c2dff03b76141d51b78c024ba9', '[\"*\"]', '2023-11-07 16:49:42', NULL, '2023-11-07 16:49:42', '2023-11-07 16:49:42'),
(17, 'App\\Models\\User', 1, 'Api Token ofkasuman', '3f510a121177c2d676330fcfdbe4fd3edec20d0d37e286c3ba2b4660ceafbc02', '[\"*\"]', '2023-11-08 02:47:45', NULL, '2023-11-08 02:20:57', '2023-11-08 02:47:45');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `fee` int(11) NOT NULL,
  `venue_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `start_date`, `end_date`, `fee`, `venue_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, '2023-11-07', '2023-11-17', 25, 2, 2, '2023-11-03 11:51:55', '2023-11-06 15:10:57'),
(2, '2023-11-06', '2023-11-24', 99, 4, 2, '2023-11-03 15:00:01', '2023-11-06 15:11:10'),
(3, '2023-11-06', '2023-11-23', 24, 4, 2, '2023-11-03 15:00:08', '2023-11-06 15:11:26'),
(4, '2023-11-06', '1973-12-26', 211, 3, 1, '2023-11-03 15:00:23', '2023-11-06 15:10:21'),
(6, '2023-11-06', '2023-11-18', 36, 3, 1, '2023-11-03 15:35:27', '2023-11-06 15:10:34'),
(7, '2023-11-06', '2004-02-28', 73, 2, 6, '2023-11-06 15:12:15', '2023-11-06 15:12:15'),
(8, '2023-11-15', '2023-12-08', 13, 4, 7, '2023-11-06 15:12:43', '2023-11-06 15:12:43'),
(10, '2023-11-09', '2023-11-23', 76, 4, 10, '2023-11-07 06:56:39', '2023-11-07 06:56:53'),
(11, '2003-02-27', '2023-11-23', 80, 3, 12, '2023-11-07 06:57:21', '2023-11-07 06:57:21'),
(13, '2023-11-09', '2000-05-31', 26, 2, 2, '2023-11-07 07:40:35', '2023-11-07 07:40:35'),
(14, '2023-11-07', '2023-11-23', 89, 3, 14, '2023-11-07 09:15:01', '2023-11-07 09:15:01'),
(15, '2002-10-17', '1993-07-28', 49, 2, 14, '2023-11-07 09:15:16', '2023-11-07 09:15:16'),
(16, '2023-11-08', '2023-11-17', 41, 4, 11, '2023-11-08 02:44:54', '2023-11-08 02:44:54'),
(17, '2023-11-08', '2023-11-08', 10, 4, 1, '2023-11-08 02:47:45', '2023-11-08 02:47:45');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `priority` varchar(255) NOT NULL DEFAULT 'medium',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `name`, `category_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Shana Gates', 3, 'Ab neque ea rem null', '2023-11-03 06:27:32', '2023-11-03 06:27:32'),
(2, 'Lydia Davis', 4, 'Aut quas ut expedita', '2023-11-03 06:27:36', '2023-11-03 06:27:36'),
(3, 'Nelle Lawrence', 1, 'Minus voluptatem cul', '2023-11-03 06:27:41', '2023-11-03 06:27:41'),
(4, 'Dana Walker', 4, 'Fugiat enim quae qu', '2023-11-03 06:27:48', '2023-11-03 06:27:48'),
(5, 'Wynne Todd', 2, 'At ipsa iste vero d', '2023-11-03 06:27:52', '2023-11-03 06:27:52'),
(6, 'Melissa Garrett', 3, 'Debitis ullam consec', '2023-11-03 10:15:29', '2023-11-03 10:15:29'),
(11, 'Winifred Alston', 1, 'Laborum aliquid quis', '2023-11-07 16:32:50', '2023-11-07 16:32:50'),
(12, 'Tarik Schneider', 4, 'Iusto nihil quaerat', '2023-11-07 16:32:57', '2023-11-07 16:32:57'),
(13, 'Alfreda Terrell', 10, 'Aperiam aut animi q', '2023-11-08 02:41:15', '2023-11-08 02:41:15'),
(14, 'Axel Morris', 4, 'Magna consequat Qui', '2023-11-08 02:41:23', '2023-11-08 02:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kasuman', 'dawit@gmail.com', NULL, '$2y$10$1eT5l8.CVcYJ2e1YbvsqL.VtaYBx1ebTc4yLYi6CrtBzP/Cm57PR2', NULL, '2023-11-03 06:22:22', '2023-11-07 03:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Kiara Bishop', '2023-11-03 06:26:41', '2023-11-03 06:26:41'),
(2, 'Rhona Cole', '2023-11-03 06:26:46', '2023-11-03 06:26:46'),
(3, 'Alisa Mcdaniel', '2023-11-03 06:26:50', '2023-11-03 06:26:50'),
(4, 'Destiny Bush', '2023-11-03 06:26:55', '2023-11-03 06:26:55'),
(5, 'Dubai', '2023-11-07 06:30:06', '2023-11-07 06:30:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_course_id_foreign` (`course_id`),
  ADD KEY `books_schedule_id_foreign` (`schedule_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_format_id_foreign` (`format_id`),
  ADD KEY `courses_training_id_foreign` (`training_id`),
  ADD KEY `courses_venue_id_foreign` (`venue_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `formats`
--
ALTER TABLE `formats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_venue_id_foreign` (`venue_id`),
  ADD KEY `schedules_course_id_foreign` (`course_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trainings_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `formats`
--
ALTER TABLE `formats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_schedule_id_foreign` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_format_id_foreign` FOREIGN KEY (`format_id`) REFERENCES `formats` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_training_id_foreign` FOREIGN KEY (`training_id`) REFERENCES `trainings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_venue_id_foreign` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_venue_id_foreign` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trainings`
--
ALTER TABLE `trainings`
  ADD CONSTRAINT `trainings_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
