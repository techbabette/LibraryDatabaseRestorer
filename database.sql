-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2024 at 06:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

-- Set SQL mode and start transaction
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;

-- Set the time zone
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--
DROP DATABASE IF EXISTS `books`;
CREATE DATABASE IF NOT EXISTS `books` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `books`;

-- --------------------------------------------------------

--
-- Table structure for table `access_levels`
--

DROP TABLE IF EXISTS `access_levels`;
CREATE TABLE `access_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `access_level` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `access_levels`
--

INSERT INTO `access_levels` (`id`, `name`, `access_level`, `created_at`, `updated_at`) VALUES
(1, 'Logged out', -1, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(2, 'Everyone', 0, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(3, 'Logged in', 1, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(4, 'Admin', 2, '2024-03-05 04:19:44', '2024-03-05 04:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `last_name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Yuval Noah', 'Harari', NULL, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(2, 'Sun', 'Tzu', NULL, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(3, 'Stephen', 'King', NULL, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(4, 'Steven', 'Pinker', NULL, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(5, 'Vaclav', 'Smith', NULL, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(6, 'Wendy', 'Foster', NULL, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(7, 'Bart Denton', 'Ehrman', NULL, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(8, 'Henrik', 'Fexeus', NULL, '2024-03-05 04:19:44', '2024-03-05 04:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `img` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `number_owned` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `category_id`, `author_id`, `name`, `img`, `description`, `number_owned`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'The Art of War', 'the_art_of_war.jpg', 'The art of war is a good book', 2, NULL, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(2, 1, 1, 'Sapiens', 'sapiens.jpg', 'A historical overview of human evolution and civilization, addressing how humans became the dominant species and shaped their societies, economies, and cultures', 2, NULL, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(3, 3, 1, 'Homo Deus', 'homo_deus.jpg', ' Homo Deus explores the projects, dreams and nightmares that will shape the twenty-first century—from overcoming death to creating artificial life. It asks the fundamental questions: Where do we go from here? And how will we protect this fragile world from our own destructive powers? This is the next stage of evolution. This is Homo Deus.', 2, NULL, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(4, 5, 8, 'The Art of Reading Minds', 'the_art_of_reading_minds.jpg', 'How would you like to know what the people around you are thinking? Do you want to network like a pro, persuade your boss to give you that promotion, and finally become the life of every party? Now, with Henrik Fexeus\'s expertise, you can. ', 2, NULL, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(5, 5, 8, 'The Art of Social Excellence', 'the_art_of_social_excellence.jpg', 'Henrik teaches a type of social skill reserved for a privileged few – until now. People with social finesse are more often appointed leaders, gets promoted faster and can quickly create meaningful and deep relationships with others. ', 2, NULL, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(6, 3, 5, 'Numbers don\'t lie', 'numbers_dont_lie.jpg', 'Vaclav Smil\'s mission is to make facts matter. An environmental scientist, policy analyst, and a hugely prolific author, he is Bill Gates\' go-to guy for making sense of our world. In Numbers Don\'t Lie, Smil answers questions such as: What\'s worse for the environment--your car or your phone? How much do the world\'s cows weigh (and what does it matter)? And what makes people happy? ', 3, NULL, '2024-03-05 04:19:44', '2024-03-05 04:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `text`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'History', NULL, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(2, 'Sci-Fi', NULL, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(3, 'Popular science', NULL, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(4, 'Linguistics', NULL, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(5, 'Popular Psychology', NULL, '2024-03-05 04:19:44', '2024-03-05 04:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `email_verification_tokens`
--

DROP TABLE IF EXISTS `email_verification_tokens`;
CREATE TABLE `email_verification_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
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
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `book_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-03-05 04:19:45', '2024-03-05 04:19:45'),
(2, 2, 2, '2024-03-05 04:19:45', '2024-03-05 04:19:45'),
(3, 3, 2, '2024-03-05 04:19:45', '2024-03-05 04:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `access_level_id` bigint(20) UNSIGNED NOT NULL,
  `link_position_id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(20) NOT NULL,
  `to` varchar(50) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `weight` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `access_level_id`, `link_position_id`, `text`, `to`, `icon`, `weight`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'City Library', 'Home', NULL, 100, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(2, 2, 1, 'Home', 'Home', NULL, 100, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(3, 2, 1, 'Books', 'Books', NULL, 90, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(4, 3, 1, 'Your books', 'Your books', NULL, 89, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(5, 1, 1, 'Login', 'Login', NULL, 80, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(6, 1, 1, 'Register', 'Register', NULL, 79, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(7, 3, 1, 'Contact', 'Contact', NULL, 70, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(8, 2, 1, 'Author', 'Author', NULL, 0, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(9, 2, 3, 'Facebook', 'https://www.facebook.com/', 'icomoon-free:facebook', 100, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(10, 2, 3, 'Twitter', 'https://www.twitter.com/', 'la:twitter', 90, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(11, 2, 3, 'Documentation', './documentation.pdf', 'fa-file', 80, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(12, 2, 3, 'Sitemap', './sitemap.xml', 'bx:sitemap', 70, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(13, 2, 4, 'Individual book', 'Book preview', NULL, 0, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(14, 4, 1, 'Admin', 'Admin Dashboard', NULL, 85, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(15, 4, 5, 'Dashboard', 'Admin Dashboard', 'material-symbols:dashboard', 100, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(16, 4, 5, 'Control Panel', 'Admin Control', 'ant-design:control-outlined', 95, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(17, 4, 5, 'Logs', 'Admin Logs', 'akar-icons:paper', 90, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(18, 4, 6, 'Back to main site', 'Home', 'ri:logout-box-line', 100, '2024-03-05 04:19:44', '2024-03-05 04:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `link_positions`
--

DROP TABLE IF EXISTS `link_positions`;
CREATE TABLE `link_positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `link_positions`
--

INSERT INTO `link_positions` (`id`, `position`, `created_at`, `updated_at`) VALUES
(1, 'navbar', '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(2, 'header', '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(3, 'footer', '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(4, 'hidden', '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(5, 'adminNavbar', '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(6, 'adminFooter', '2024-03-05 04:19:44', '2024-03-05 04:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

DROP TABLE IF EXISTS `loans`;
CREATE TABLE `loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `extended` tinyint(1) DEFAULT 0,
  `end` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `book_id`, `user_id`, `extended`, `end`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 0, '2024-03-25 04:19:45', NULL, '2024-03-05 04:19:45', '2024-03-05 04:19:45'),
(2, 3, 1, 0, '2024-03-25 04:19:45', NULL, '2024-03-05 04:19:45', '2024-03-05 04:19:45'),
(3, 4, 1, 0, '2024-03-25 04:19:45', NULL, '2024-03-05 04:19:45', '2024-03-05 04:19:45'),
(4, 5, 1, 0, '2024-03-25 04:19:45', NULL, '2024-03-05 04:19:45', '2024-03-05 04:19:45'),
(5, 6, 1, 0, '2024-03-25 04:19:45', NULL, '2024-03-05 04:19:45', '2024-03-05 04:19:45'),
(6, 6, 2, 0, '2024-03-25 04:19:45', NULL, '2024-03-05 04:19:45', '2024-03-05 04:19:45'),
(7, 5, 2, 0, '2024-03-25 04:19:45', NULL, '2024-03-05 04:19:45', '2024-03-05 04:19:45'),
(8, 1, 3, 0, '2024-03-25 04:19:45', NULL, '2024-03-05 04:19:45', '2024-03-05 04:19:45'),
(9, 2, 3, 0, '2024-03-25 04:19:45', NULL, '2024-03-05 04:19:45', '2024-03-05 04:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `issuer` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message_type_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `message_type_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Hello', 'Hello how are you', '2024-03-05 04:19:45', '2024-03-05 04:19:45'),
(2, 2, 1, 'Issue', 'Hello I have an issue', '2024-03-05 04:19:45', '2024-03-05 04:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `message_types`
--

DROP TABLE IF EXISTS `message_types`;
CREATE TABLE `message_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message_types`
--

INSERT INTO `message_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Error', '2024-03-05 04:19:45', '2024-03-05 04:19:45'),
(2, 'Inquiry', '2024-03-05 04:19:45', '2024-03-05 04:19:45'),
(3, 'General', '2024-03-05 04:19:45', '2024-03-05 04:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '10create_categories_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '20create_authors_table', 1),
(4, '30create_access_levels_table', 1),
(5, '45create_link_positions_table', 1),
(6, '50create_links_table', 1),
(7, '60create_books_table', 1),
(8, '70create_users_table', 1),
(9, '71create_password_reset_tokens_table', 1),
(10, '72create_loans_table', 1),
(11, '73create_favorites_table', 1),
(12, '75create_failed_jobs_table', 1),
(13, '76create_email_verification_tokens_table', 1),
(14, '79create_personal_access_tokens_table', 1),
(15, '80create_message_types_table', 1),
(16, '85create_messages_table', 1),
(17, '90create_logs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `access_level_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(50) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `access_level_id`, `name`, `last_name`, `email`, `email_verified_at`, `password`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 4, 'First', 'Last', 'ilija.krstic.155.21@ict.edu.rs', '2024-03-05 04:19:44', '$2y$12$gcnbxsYnt77ekOzumk6QeesULW/F/dlSI.5/5gscL/GEDFvcGiXVq', 'My address 123', NULL, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(2, 3, 'Name', 'Lastname', 'email2@gmail.com', '2024-03-05 04:19:44', '$2y$12$nHLV/XzML9S5WcYJy518PuO7dXRQ1I3ORR2F8AlW65bRNRvjabkNe', 'My address 123', NULL, '2024-03-05 04:19:44', '2024-03-05 04:19:44'),
(3, 3, 'Name', 'Lastname', 'email3@gmail.com', '2024-03-05 04:19:44', '$2y$12$EQoTu6/oUKndthyQNJ/IPOrKFABqGMKhWa8A59u/kAr3UDvzlUW3W', 'My address 123', NULL, '2024-03-05 04:19:45', '2024-03-05 04:19:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_levels`
--
ALTER TABLE `access_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_category_id_foreign` (`category_id`),
  ADD KEY `books_author_id_foreign` (`author_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_text_unique` (`text`);

--
-- Indexes for table `email_verification_tokens`
--
ALTER TABLE `email_verification_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_verification_tokens_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_book_id_foreign` (`book_id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `links_access_level_id_foreign` (`access_level_id`),
  ADD KEY `links_link_position_id_foreign` (`link_position_id`);

--
-- Indexes for table `link_positions`
--
ALTER TABLE `link_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loans_book_id_foreign` (`book_id`),
  ADD KEY `loans_user_id_foreign` (`user_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_id_foreign` (`user_id`),
  ADD KEY `messages_message_type_id_foreign` (`message_type_id`);

--
-- Indexes for table `message_types`
--
ALTER TABLE `message_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `message_types_name_unique` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_reset_tokens_user_id_foreign` (`user_id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_access_level_id_foreign` (`access_level_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_levels`
--
ALTER TABLE `access_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `email_verification_tokens`
--
ALTER TABLE `email_verification_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `link_positions`
--
ALTER TABLE `link_positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message_types`
--
ALTER TABLE `message_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
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
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `email_verification_tokens`
--
ALTER TABLE `email_verification_tokens`
  ADD CONSTRAINT `email_verification_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `links`
--
ALTER TABLE `links`
  ADD CONSTRAINT `links_access_level_id_foreign` FOREIGN KEY (`access_level_id`) REFERENCES `access_levels` (`id`),
  ADD CONSTRAINT `links_link_position_id_foreign` FOREIGN KEY (`link_position_id`) REFERENCES `link_positions` (`id`);

--
-- Constraints for table `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `loans_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `loans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_message_type_id_foreign` FOREIGN KEY (`message_type_id`) REFERENCES `message_types` (`id`),
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD CONSTRAINT `password_reset_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_access_level_id_foreign` FOREIGN KEY (`access_level_id`) REFERENCES `access_levels` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
