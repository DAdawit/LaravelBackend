-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2023 at 03:01 PM
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
(1, 'Brody Buckley', '2023-11-11 03:55:29', '2023-11-11 03:55:29'),
(2, 'Otto Erickson', '2023-11-11 03:55:36', '2023-11-11 03:55:36'),
(3, 'Hasad Singleton', '2023-11-11 03:55:42', '2023-11-11 03:55:42'),
(4, 'Christen Hendrix', '2023-11-11 03:55:48', '2023-11-11 03:55:48'),
(5, 'Selma Houston', '2023-11-11 03:55:58', '2023-11-11 03:55:58'),
(6, 'Audra Love', '2023-11-11 03:56:05', '2023-11-11 03:56:05');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Cailin Russo', 'image/vMNfIyzZHV7aEItgK9q8KIrDzNqhhHB0lj3b75aq.png', '2023-11-11 03:45:17', '2023-11-11 03:45:17'),
(2, 'Ryder Wright', 'image/prynSrV9gQF6F6QYBJtISeMAogne52bUh3F0F4P8.png', '2023-11-11 03:45:31', '2023-11-11 03:45:31');

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
  `certificate_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `course_outline`, `training_id`, `venue_id`, `format_id`, `certificate_id`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 'Incidunt pariatur', '<h2>Why do we use it?</h2><p class=\"ql-align-justify\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p>Consectetur magnam v.</p>', '<h2>Why do we use it?</h2><p class=\"ql-align-justify\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p>Sint officia ab volu.</p>', 1, 1, 1, 2, '1979-03-31', '1982-05-11', '2023-11-11 04:31:14', '2023-11-11 06:37:50');

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
(1, 'Aubrey Floyd', '2023-11-11 03:46:15', '2023-11-11 03:46:15'),
(2, 'Ashton Gay', '2023-11-11 03:46:21', '2023-11-11 03:46:21'),
(3, 'Noelle Kramer', '2023-11-11 03:46:27', '2023-11-11 03:46:27'),
(4, 'Michael Gibson', '2023-11-11 03:46:33', '2023-11-11 03:46:33'),
(5, 'Ronan Mckinney', '2023-11-11 03:46:39', '2023-11-11 03:46:39'),
(6, 'Brody Hancock', '2023-11-11 03:46:44', '2023-11-11 03:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `heroes`
--

CREATE TABLE `heroes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `heroes`
--

INSERT INTO `heroes` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Busines Coaching & Consulting For Entrepreneur', 'Our organization provides customized development plans for professionals across diverse fields. These programs are designed to cater to varying levels of expertise, allowing participants to acquire the necessary skills while considering their career advancement', 'image/rndp9ut1UG3azlr2hOGLkkxbSL08JpmxJnkrbzXl.png', '2023-11-11 03:36:45', '2023-11-11 03:39:25'),
(3, 'Business Coaching & Consulting For Entrepreneur', 'Our organization provides customized development plans for professionals across diverse fields. These programs are designed to cater to varying levels of expertise, allowing participants to acquire the necessary skills while considering their career advancement', 'image/yEjQkUhtGtiEMjY08VwYZhpRtaWSFuYTiOTX1Yvn.png', '2023-11-11 03:41:09', '2023-11-11 03:41:09');

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
(58, '2014_10_12_000000_create_users_table', 1),
(59, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(60, '2019_08_19_000000_create_failed_jobs_table', 1),
(61, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(62, '2023_09_14_191927_create_tasks_table', 1),
(63, '2023_09_15_142533_create_products_table', 1),
(64, '2023_10_31_012645_create_categories_table', 1),
(65, '2023_10_31_013426_create_trainings_table', 1),
(66, '2023_10_31_055511_create_venues_table', 1),
(67, '2023_10_31_055512_create_certificates_table', 1),
(68, '2023_10_31_073950_create_formats_table', 1),
(69, '2023_10_31_131539_create_courses_table', 1),
(70, '2023_10_31_184622_create_schedules_table', 1),
(71, '2023_11_05_113316_create_contacts_table', 1),
(72, '2023_11_05_174912_create_books_table', 1),
(73, '2023_11_09_185230_create_heroes_table', 1),
(74, '2023_11_10_184232_create_social_media_table', 1);

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
(1, 'App\\Models\\User', 1, 'API Token ofkasuman', '21ebe93bab77b8f92b3718326418d8a486892a5238f2a08f729350ab71e86547', '[\"*\"]', NULL, NULL, '2023-11-11 03:33:37', '2023-11-11 03:33:37'),
(2, 'App\\Models\\User', 1, 'Api Token ofkasuman', '4c8677157b12d01c3560c43f55e2770f4b03cd1b796503e5dd29c9b5a4e1ba72', '[\"*\"]', '2023-11-11 04:31:39', NULL, '2023-11-11 03:34:30', '2023-11-11 04:31:39'),
(3, 'App\\Models\\User', 1, 'Api Token ofkasuman', '926f868cee982e083934316fedc632ade4cc0787a2eff1a8f7fd646e60389475', '[\"*\"]', '2023-11-11 06:46:50', NULL, '2023-11-11 05:47:03', '2023-11-11 06:46:50'),
(4, 'App\\Models\\User', 1, 'Api Token ofkasuman', '260f384a1033b38000e89301d04cbd515f54b79ecb3966b708980f699d2f33d6', '[\"*\"]', '2023-11-13 03:56:34', NULL, '2023-11-13 03:46:21', '2023-11-13 03:56:34');

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
  `venue_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `start_date`, `end_date`, `venue_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, '2023-11-11', '2023-11-22', 3, 1, '2023-11-11 06:44:53', '2023-11-11 06:44:53'),
(2, '2023-11-11', '2023-11-30', 1, 1, '2023-11-11 06:45:16', '2023-11-11 06:46:27');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `whatsUp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `facebook`, `linkedin`, `instagram`, `whatsUp`, `created_at`, `updated_at`) VALUES
(1, 'https://www.linkedin.com/feed/', 'https://www.linkedin.com/feed/', 'https://www.linkedin.com/feed/', 'https://www.linkedin.com/feed/', '2023-11-11 03:42:00', '2023-11-11 03:42:00');

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
(1, 'Sophia Ferguson', 1, '<p><span style=\"background-color: rgb(68, 70, 84); color: rgb(209, 213, 219);\">I corrected the function name to </span><code style=\"background-color: rgb(68, 70, 84); color: var(--tw-prose-code);\">$hero-&gt;update</code><span style=\"background-color: rgb(68, 70, 84); color: rgb(209, 213, 219);\"> and removed the unnecessary file existence check before deleting the old image. Also, note that the storage path for the new image is being updated in the database. Make sure your Hero model is set up to allow mass assignment for the \'image\' field.</span></p>', '2023-11-11 03:57:30', '2023-11-11 03:57:30'),
(2, 'Beau Ryan', 2, '<p><span style=\"background-color: rgb(68, 70, 84); color: rgb(209, 213, 219);\">I corrected the function name to </span><code style=\"background-color: rgb(68, 70, 84); color: var(--tw-prose-code);\">$hero-&gt;update</code><span style=\"background-color: rgb(68, 70, 84); color: rgb(209, 213, 219);\"> and removed the unnecessary file existence check before deleting the old image. Also, note that the storage path for the new image is being updated in the database. Make sure your Hero model is set up to allow mass assignment for the \'image\' field</span></p>', '2023-11-11 03:57:53', '2023-11-11 03:57:53'),
(3, 'Jelani Fry', 3, '<p><span style=\"color: rgb(209, 213, 219); background-color: rgb(68, 70, 84);\">I corrected the function name to </span><code style=\"color: var(--tw-prose-code); background-color: rgb(68, 70, 84);\">$hero-&gt;update</code><span style=\"color: rgb(209, 213, 219); background-color: rgb(68, 70, 84);\"> and removed the unnecessary file existence check before deleting the old image. Also, note that the storage path for the new image is being updated in the database. Make sure your Hero model is set up to allow mass assignment for the \'image\' field</span>Ut ipsum ut at alias.</p>', '2023-11-11 03:58:08', '2023-11-11 03:58:08'),
(4, 'Madonna White', 4, '<p><span style=\"color: rgb(209, 213, 219); background-color: rgb(68, 70, 84);\">I corrected the function name to </span><code style=\"color: var(--tw-prose-code); background-color: rgb(68, 70, 84);\">$hero-&gt;update</code><span style=\"color: rgb(209, 213, 219); background-color: rgb(68, 70, 84);\"> and removed the unnecessary file existence check before deleting the old image. Also, note that the storage path for the new image is being updated in the database. Make sure your Hero model is set up to allow mass assignment for the \'image\' field</span>Culpa ut earum quis .</p>', '2023-11-11 03:58:24', '2023-11-11 03:58:24'),
(5, 'Lenore Combs', 5, '<p><span style=\"color: rgb(209, 213, 219); background-color: rgb(68, 70, 84);\">I corrected the function name to </span><code style=\"color: var(--tw-prose-code); background-color: rgb(68, 70, 84);\">$hero-&gt;update</code><span style=\"color: rgb(209, 213, 219); background-color: rgb(68, 70, 84);\"> and removed the unnecessary file existence check before deleting the old image. Also, note that the storage path for the new image is being updated in the database. Make sure your Hero model is set up to allow mass assignment for the \'image\' field</span>Nihil sed repellendu.</p>', '2023-11-11 03:58:42', '2023-11-11 03:58:42'),
(6, 'Walker French', 6, '<p><span style=\"color: rgb(209, 213, 219); background-color: rgb(68, 70, 84);\">I corrected the function name to </span><code style=\"color: var(--tw-prose-code); background-color: rgb(68, 70, 84);\">$hero-&gt;update</code><span style=\"color: rgb(209, 213, 219); background-color: rgb(68, 70, 84);\"> and removed the unnecessary file existence check before deleting the old image. Also, note that the storage path for the new image is being updated in the database. Make sure your Hero model is set up to allow mass assignment for the \'image\' field</span>Optio, deserunt null.</p>', '2023-11-11 03:58:57', '2023-11-11 03:58:57');

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
(1, 'kasuman', 'admin@gmail.com', NULL, '$2y$10$Whp1P2cgzaBTYzTLV4whxe0Hrhfah/.PifhM9ufN99TetSJTGFDey', NULL, '2023-11-11 03:33:37', '2023-11-11 03:33:37');

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
(1, 'Georgia Schwartz', '2023-11-11 04:09:23', '2023-11-11 04:09:23'),
(2, 'Ivan Yang', '2023-11-11 04:09:27', '2023-11-11 04:09:27'),
(3, 'Wyatt Trevino', '2023-11-11 04:09:31', '2023-11-11 04:09:31');

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
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
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
  ADD KEY `courses_venue_id_foreign` (`venue_id`),
  ADD KEY `courses_certificate_id_foreign` (`certificate_id`);

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
-- Indexes for table `heroes`
--
ALTER TABLE `heroes`
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
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `formats`
--
ALTER TABLE `formats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `heroes`
--
ALTER TABLE `heroes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  ADD CONSTRAINT `courses_certificate_id_foreign` FOREIGN KEY (`certificate_id`) REFERENCES `certificates` (`id`) ON DELETE CASCADE,
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
