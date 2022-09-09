-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2022 at 10:29 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-highcharts`
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `yields` int(200) NOT NULL DEFAULT 10
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `yields`) VALUES
(1, 'Theresa Hill', 'mhowell@example.org', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8WDPsXpCQ5', '2019-09-03 05:13:10', '2022-09-09 05:13:10', 79),
(2, 'Khalil Nikolaus', 'wblick@example.com', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0fZ7j5WmLC', '2018-09-10 05:13:10', '2022-09-09 05:13:10', 15),
(3, 'Olin Bednar', 'wreilly@example.org', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3WuDjLINJC', '2020-09-30 05:13:10', '2022-09-09 05:13:10', 15),
(4, 'Ms. Birdie Mueller', 'pfeil@example.org', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2KsAqdq4Pd', '2021-09-28 05:13:10', '2022-09-09 05:13:10', 10),
(5, 'Elwin Jerde', 'reagan51@example.com', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YlTmfZtbO9', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 11),
(6, 'Kennith Kuhn', 'sigurd.jacobson@example.org', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'P6KLOy8uJZ', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(7, 'Prof. Moriah Runte', 'xwiza@example.com', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ot5csP30B6', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 13),
(8, 'Jailyn Murazik', 'cparker@example.net', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mvlWf2ojFT', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(9, 'Violet Dooley', 'purdy.rey@example.com', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pSnZYZkfs0', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(10, 'Abagail Raynor', 'mhowe@example.net', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OKPIJGCyxe', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(11, 'Dr. Doris Lehner', 'henriette.hane@example.com', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bdn06Ixj4i', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(12, 'Amir O\'Kon', 'kris.zachariah@example.net', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7TYJQrDeBA', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 17),
(13, 'Dr. Marianna Rolfson PhD', 'cassin.wilburn@example.net', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hyrif1lZh1', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(14, 'Prof. Julie Leuschke', 'stephon17@example.net', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YZm1FEnCI4', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(15, 'Ida Botsford', 'kimberly.strosin@example.net', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nxSSrEtulI', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(16, 'Delmer Mueller', 'reinhold43@example.org', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hT2nZFy8e8', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(17, 'Lea Kerluke', 'boehm.eleazar@example.org', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Br4z9iiIAq', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(18, 'Christy Runolfsson', 'hschulist@example.net', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NpqhezdUoi', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(19, 'Felicity Mraz', 'harris.florine@example.org', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qIFLmayL2V', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(20, 'Prof. Sigurd Moen', 'norris08@example.com', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gbpZO3pQDm', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(21, 'Frederic Klocko', 'mdouglas@example.net', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fnVUqUvQoC', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(22, 'Pink Weimann Jr.', 'virginie.streich@example.org', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'J8bzX1X87m', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(23, 'Mrs. Opal Hermiston', 'joyce11@example.com', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0ijSqyDmUU', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(24, 'Elton Hoppe', 'uwolff@example.com', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xWBERIh5l9', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(25, 'Dina Leannon', 'meggie.nolan@example.com', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WfvTPkkJ4F', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(26, 'Rosendo Kovacek', 'terrell.runolfsson@example.org', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GIdkaS1leN', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(27, 'Vanessa Keebler', 'allie.schroeder@example.org', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '97FgzRTq8e', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(28, 'Justen Hettinger', 'creola60@example.net', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'u9Lx9ZPe5m', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(29, 'Dr. Adeline Lang', 'ahaag@example.org', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OMQsbSZGZR', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(30, 'Taurean Miller', 'xlesch@example.org', '2022-09-09 05:13:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Id1hytVF8S', '2022-09-09 05:13:10', '2022-09-09 05:13:10', 10),
(31, 'Carol Harris', 'gorczany.zechariah@example.com', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PA8cRgElKs', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(32, 'Gunnar Mante', 'crooks.geovanni@example.org', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jpotsfqGEb', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(33, 'Brice Crist', 'nherzog@example.com', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UFPgyEo2QS', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(34, 'Arvilla Hudson DVM', 'kelsi.batz@example.net', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CRfKmaGwp6', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(35, 'Thora Corwin IV', 'twila65@example.com', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IhlJXia9Zk', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(36, 'Roy Botsford', 'torphy.jimmy@example.org', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UQakKYggPH', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(37, 'Abner Stehr', 'anna36@example.net', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '296GPDci7i', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(38, 'Murray Mitchell', 'green.linnie@example.net', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pUiH74mHPx', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(39, 'Johnny Bergstrom IV', 'qwiza@example.org', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aPAhBFCPxj', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(40, 'Adolphus Veum', 'ricky.hand@example.com', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vRqrZPYsse', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(41, 'Marshall Schumm PhD', 'qmills@example.org', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UXsLNKB5hB', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(42, 'Krystel Hessel', 'zieme.anjali@example.com', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g3mGSCL00K', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(43, 'Isadore Oberbrunner', 'gleichner.reva@example.com', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qLBl5DVjE6', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(44, 'Caesar Schuster', 'emmitt.howell@example.org', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HQOWGzMaL3', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(45, 'Ms. Zola Pagac III', 'cole38@example.org', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'x860w5nikp', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(46, 'Gennaro Volkman Jr.', 'reinhold.ankunding@example.net', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uhxFCqxFJj', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(47, 'Margarete Mills', 'teresa.zboncak@example.net', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rqNbFSOQay', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(48, 'Arlie Quitzon', 'addison87@example.net', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ubjrbqclsq', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(49, 'Julia Ruecker', 'hoppe.luigi@example.org', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WtHmrSTYEV', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(50, 'Pearl Lehner', 'elouise94@example.org', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dTDfbGaKy9', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(51, 'Lenora Conn', 'agusikowski@example.com', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'i9cXPRB6An', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(52, 'Miss Madilyn Paucek', 'german78@example.org', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1YCZhhFMCX', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(53, 'Eldon Beatty', 'magdalen80@example.org', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E3tJeR4lYS', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(54, 'Lura Kuhn', 'bernhard.cruz@example.org', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zMYnyLCgXy', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(55, 'Prof. Rosalinda Walter', 'harvey.velma@example.net', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NjKZ8WOSdE', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(56, 'Soledad Becker', 'etromp@example.net', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b0N5lSNFB7', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(57, 'Arielle Mante IV', 'mireille97@example.net', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '39mJsRhoz4', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(58, 'Easter Rowe', 'cronin.antone@example.com', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZXNUxBMObs', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(59, 'Dr. Emmitt O\'Keefe', 'jcronin@example.net', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hX4kPP5j8m', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10),
(60, 'Willa Donnelly', 'mina.frami@example.com', '2022-09-09 05:24:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5Z2X8w4GPo', '2022-09-09 05:24:22', '2022-09-09 05:24:22', 10);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
