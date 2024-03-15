-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 05, 2023 at 03:00 PM
-- Server version: 5.7.43
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bettergl_suggestionBox`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HOD_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department`, `HOD_email`, `created_at`, `updated_at`) VALUES
(1, 'Communications', 'claudiah@betterglobeforestry.com', NULL, NULL),
(2, 'Finance', 'lawrence@betterglobeforestry.com', NULL, NULL),
(3, 'Forestry', 'samuel@betterglobeforestry.com', NULL, NULL),
(4, 'Human Resources', 'hr@betterglobeforestry.com', NULL, NULL),
(5, 'IT', 'liazurah@betterglobeforestry.com', NULL, NULL),
(6, 'Miti Magazine', 'jan@betterglobeforestry.com', NULL, NULL),
(7, 'M&E', 'lawrence@betterglobeforestry.com', NULL, NULL),
(8, 'Operations', 'lawrence@betterglobeforestry.com', NULL, NULL),
(9, 'QMS', 'lawrence@betterglobeforestry.com', NULL, NULL);

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_27_102137_create_departments_table', 1),
(6, '2022_01_27_102509_create_suggestions_table', 1),
(7, '2022_02_07_092635_create_roles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('samuel@betterglobeforestry.com', '$2y$10$g2sfvo7ugYjsfdciGnFfVuTLyTRwvT3SPB3QmQYPCPAXlFGfdwKie', '2022-04-11 10:23:49'),
('lawrence@betterglobeforestry.com', '$2y$10$7Ka3Jlh.pAusy6npqw2GTuKa535/OGycmCkobHVms0VNc0Qd7A.Na', '2022-04-25 10:19:56');

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `user_id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 51, 'CM', NULL, NULL),
(3, 55, 'CM', NULL, NULL),
(4, 57, 'HR', NULL, NULL);




-- ///////////////////////////////
-- Table users
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supervisor_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_manager` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

-- INSERT INTO `users` (`id`, `name`, `job_title`, `email`, `phone_number`, `provider`, `country`, `site`, `dept`, `superrvisor_email`, `office_manager`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
-- (1, 'Michael Mwangi Njogu', 'Information Security Manager', 'edwink@betterglobeforestry.com', '+254717606015', 'Safaricom', 'Kenya', 'Head Office', 'IT', 'jpd@betterglobeforestry.com', 1, NULL, '$2y$10$AzghalurnEXnB', 'M8fDCRQFuG6YNSBs2i.ElaiFHLwbJaxvLacOGnu6', 'aWBCLvjaxEW5r7ZhSt9pAjXEC8b05dWvHmZcAQIifwdXGPbwvbPvw2V2NDW8', '2022-02-20 18:01:39', '2023-07-03 15:37:26'),
--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `job_title`, `email`, `phone_number`, `provider`, `country`, `site`, `dept`, `supervisor_email`, `office_manager`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Michael Mwangi Njogu', 'Information Security Manager', 'edwink@betterglobeforestry.com', '+254714572978', 'Safaricom', 'Kenya', 'Head Office', 'IT', 'jpd@betterglobeforestry.com', 1, NULL, '$2y$10$RBoXAO7XpEov1T0VOyRK/eDZPRry5Mrcy2IEBIWvVasor9fIbZFVu', 'aWBCLvjaxEW5r7ZhSt9pAjXEC8b05dWvHmZcAQIifwdXGPbwvbPvw2V2NDW8', '2022-02-20 18:01:39', '2023-07-03 15:37:26'),
(32, 'John Njenga', 'Site Manager Dokolo', 'john@betterglobeforestry.com', '+254724392504', 'Safaricom', 'Kenya', 'Dokolo', 'Forestry', 'samuel@betterglobeforestry.com', 0, NULL, '$2y$10$IwwNNYLZKUOOYKzYVxiou.jwh4puUOFxTZnWz2JLNIVVEKrGu4f2C', 'fYFyns0CnSzq0VnX1JsHzdRLBuiVvM0YnI6YU1U25kUn2xJz1TK0qw8u2RFF', '2022-02-22 17:11:28', '2022-12-14 10:00:12'),
(33, 'Onesmus Mbula Kyania', 'Agroforestry Agent 7Forks', 'onesmus@betterglobeforesty.com', '+254727847899', 'Safaricom', 'Kenya', '7Forks', 'Forestry', ' florence@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(34, 'Florence Muli Muthui', 'Site Manager Farmers Programme 7Forks', 'florence@betterglobeforestry.com', '+254714335099', 'Safaricom', 'Kenya', '7Forks', 'Forestry', 'samuel@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(35, 'William Otieno Odede', 'Agroforestry Agent 7Forks', 'william.o@betterglobeforestry.com', '+254700239192', 'Safaricom', 'Kenya', '7Forks', 'Forestry', ' florence@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(37, 'Fredrick Ochieng Otieno', 'Agroforestry Agent 7Forks', 'fredrick@betterglobeforestry.com', '+254748067715', 'Safaricom', 'Kenya', '7Forks', 'Forestry', ' florence@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(38, 'Nancy Auma Ganda', 'Agroforestry Agent 7Forks', 'ganda@betterglobeforestry.com', '+254748067723', 'Safaricom', 'Kenya', '7 Forks', 'Forestry', 'florence@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(39, 'Antony Mwokani Ashiono', 'Agroforestry Agent 7Forks', 'antony.a@betterglobeforestry.com', '+254743306835', 'Safaricom', 'Kenya', '7 Forks', 'Forestry', 'florence@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(40, 'James Mwangi Kihumba ', 'Agroforestry Agent 7Forks', 'kihumba@betterglobeforestry.com', '+254748067724', 'Safaricom', 'Kenya', '7 Forks', 'Forestry', 'florence@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(41, 'William Liyayi Mwondi', 'Agroforestry Agent 7Forks', 'William.m@betterglobeforestry.com', '+254748067722', 'Safaricom', 'Kenya', '7Forks', 'Forestry', ' florence@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(42, 'Arshiphord Kamau Ngigi', 'Agroforestry Agent 7Forks', 'arshiphord@betterglobeforestry.com', '+254728159210', 'Safaricom', 'Kenya', '7Forks', 'Forestry', ' florence@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(43, 'John Njeru Nzioka', 'Agroforestry Agent 7Forks', 'johnn@betterglobeforestry.com', '+254720463892', 'Safaricom', 'Kenya', '7Forks', 'Forestry', ' florence@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(45, 'January Nzioka Muthoka', 'Monitoring & Evaluation Officer  GIC 7Forks', 'January@betterglobeforestry.com', '+254705542540', 'Safaricom', 'Kenya', '7Forks', 'Forestry', ' florence@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(46, 'Samuel Kariuki Njiru', 'Monitoring & Evaluation Officer  GIC 7Forks', 'samuel.k@betterglobeforestry.com', '+254716483897', 'Safaricom', 'Kenya', '7Forks', 'Forestry', ' florence@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(47, 'Fredrick Ochieng Okumu', 'Head Office Monitoring & Evaluation Officer', 'frederick.och@betterglobeforestry.com', '+254748858276', 'Safaricom', 'Kenya', '7Forks', 'Monitoring and Evaluation', 'Lawrence@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(48, 'Anne Njeri Mwaura', 'Staff Welfare ', 'NULL', '+254723680416', 'Safaricom', 'Kenya', 'Head Office', 'Human Resource', 'lydia@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(49, 'Lawrence Muema Mulandi', 'Director of Finance and Operations', 'lawrence@betterglobeforestry.com', '+254724374483', 'Safaricom', 'Kenya', 'Head Office', 'Finance & Accounts', 'jpd@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(50, 'Edwin Mwaki Mudaki', 'Accountant ', 'edwin@betterglobeforestry.com', '+254724830154', 'Safaricom', 'Kenya', 'Head Office', 'Finance & Accounts', ' betty@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(51, 'Jean Paul Deprins', 'Managing Director', 'jpd@betterglobeforestry.com', '+254722262061', 'Safaricom', 'Kenya', 'Head Office', 'Top Management', 'jpd@betterglobeforestry.com', 1, NULL, '$2y$10$dN5qrD220BAq/Shk8kOLcO2QzfqcApHXqNYDplNHpsMmjKfx0/otK', 'gTsKeG0Fid5cRj8s5axvfYNCaJibVeW13r8BJnAgDxioidH9lmiJbg8Fok5G', '2022-02-22 17:11:28', '2022-11-26 16:00:58'),
(52, 'Jan Jozef Maria Vandenabeele', 'Senior  Director Forestry', 'jan@betterglobeforestry.com', '+254721796811', 'Safaricom', 'Kenya', 'Head Office', 'Top Management', 'jpd@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(53, 'Samuel Nakhayo Nakhone', 'Executive Director Forestry', 'samuel@betterglobeforestry.com', '+254720071419', 'Safaricom', 'Kenya', 'Head Office', 'Forestry', 'jpd@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(55, 'Claudiah Caroline  Deprins', 'Deputy Director Communication ', 'claudiah@betterglobeforestry.com', '+254719619006', 'Safaricom', 'Kenya', 'Head Office', 'Communications', 'jpd@betterglobeforestry.com', 1, NULL, '$2y$10$TeQBaik10MMheW8BeMkiW.b5/O2AmiWy2lql7Ib6sGJLJ3ZM50Df.', 'fmQv9AZzXtN83SSuyerncDSuOaBpbgY60O7WjOlYCqfO1A0xuPy0GvNKUZmP', '2022-02-22 17:11:28', '2023-03-29 17:23:47'),
(56, 'Henry Dennis Njuguna Muthoni', 'Head Office Plantations Manager', 'henry@betterglobeforestry.com', '+254722767198', 'Safaricom', 'Kenya', 'Head Office', 'Forestry', 'samuel@betterglobeforestry.com', 0, NULL, '$2y$10$C.R71OqZtPT/CwWzVCUAuuSmZDHKeEyYfJMfUYiJPvZADuHQ1MPo2', 'QShFBX0T3uZXFv11WJg2xFlIFvG41iSsuLbx89IzmtCgpNSeTqJMy6M4Rm9U', '2022-02-22 17:11:28', '2023-03-15 15:44:59'),
(57, 'Lydia Kathure Kubai', 'Deputy Director Human resource ', 'lydia@betterglobeforestry.com', '+254726143129', 'Safaricom', 'Kenya', 'Head Office', 'Human Resource', 'jpd@betterglobeforestry.com', 1, NULL, '$2y$10$MHVCwWKH/d532004lUTek.wpPAN7TEVNTEzwYqrT3VSaJ/pCiiI9m', 'wjQcFwgw4eRURx45yzM3Q020z0YopoCZ0npM6iNC1sTHMVYFiTS8xd4RupBH', '2022-02-22 17:11:28', '2022-11-23 18:27:45'),
(58, 'Rosemary Mwende Mutua', 'Procurement Officer', 'rosemary@betterglobeforestry.com', '+254720646650', 'Safaricom', 'Kenya', 'Head Office', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(59, 'Alex Kithome Muthami', 'Head Office Nursery Manager', 'alex.k@betterglobeforestry.com', '+254727893772', 'Safaricom', 'Kenya', 'Head Office', 'Forestry', 'samuel@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(60, 'Liazurah Alex Ishugah', 'Systems & Administration Manager', 'liazurah@betterglobeforestry.com', '+254721496946', 'Safaricom', 'Kenya', 'Head Office', 'IT', 'jpd@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(61, 'Betty Kawira Mwiti', 'Accounts Manager and Document Controller', 'betty@betterglobeforestry.com', '+254716473023', 'Safaricom', 'Kenya', 'Head Office', 'Finance & Accounts', 'lawrence@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(62, 'Dorothy Ndeve Muinde', 'Operations Manager', 'operations@betterglobeforestry.com', '+254721876902', 'Safaricom', 'Kenya', 'Head Office', 'Operations', 'lawrence@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(63, 'Halima Abdulkadir Mohammed', 'FSC Officer', 'halima@betterglobeforestry.com', '+254719865951', 'Safaricom', 'Kenya', 'Head Office', 'Forestry', 'samuel@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(64, 'Kangaro Mbwese', 'Security Guard Kiambere', NULL, '+254703133561', 'Safaricom', 'Kenya', 'Kiambere', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(65, 'Kyalo Mwangangi', 'Security Guard Kiambere', NULL, '+254719595148', 'Safaricom', 'Kenya', 'Kiambere', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(66, 'Josphat Musyimi Mutambuki', 'Plantation Maintenance Staff Kiambere', NULL, '+254714470148', 'Safaricom', 'Kenya', 'Kiambere ', 'Forestry', 'osore@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(67, 'Security Guard Kiambere', NULL, NULL, '+254704388974', 'Safaricom', 'Kenya', 'Kiambere ', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$hch.ttw2g4WUObkN.uSaFezw4ZDDNYeIdqo1r68YWY21CXuHkbNw2', NULL, '2022-02-22 17:11:28', '2022-02-22 17:11:28'),
(68, 'Nichorus Nthiga Kathiga', 'Security Guard Kiambere', NULL, '+254723613091', 'Safaricom', 'Kenya', 'Kiambere', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(69, 'Munyoki Mwisiwa', 'Security Guard Kiambere', NULL, '+254703352479', 'Safaricom', 'Kenya', 'Kiambere', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(70, 'David Muthami Ngoto', 'Security Guard Kiambere', NULL, '+254715622885', 'Safaricom', 'Kenya', 'Kiambere', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(71, 'Patrick Muthengi Katoi', 'Security Guard Kiambere', NULL, '+254715494487', 'Safaricom', 'Kenya', 'Kiambere', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(72, 'Muthengi Kithome', 'Security Guard Kiambere', NULL, '+254710166590', 'Safaricom', 'Kenya', 'Kiambere', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(73, 'Maithya Makua', 'Security Guard Kiambere', NULL, '+254702997738', 'Safaricom', 'Kenya', 'Kiambere', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(74, 'Plantation Maintenance Staff Kiambere', NULL, NULL, '+254720059415', 'Safaricom', 'Kenya', 'Kiambere', 'Forestry', 'osore@betterglobeforestry.com', 0, NULL, '$2y$10$hch.ttw2g4WUObkN.uSaFezw4ZDDNYeIdqo1r68YWY21CXuHkbNw2', NULL, '2022-02-22 17:11:28', '2022-02-22 17:11:28'),
(75, 'Musyoka Masyuko', 'Plantation Maintenance Staff Kiambere', NULL, '+254729815538', 'Safaricom', 'Kenya', 'Kiambere', 'Forestry', 'osore@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(76, 'Simon Muteti Mwangangi', 'Plantation Maintenance Staff Kiambere', NULL, '+254704351644', 'Safaricom', 'Kenya', 'Kiambere', 'Forestry', 'osore@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(77, 'Plantation Maintenance Staff Kiambere', NULL, NULL, '+254798249744', 'Safaricom', 'Kenya', 'Kiambere', 'Forestry', 'osore@betterglobeforestry.com', 0, NULL, '$2y$10$hch.ttw2g4WUObkN.uSaFezw4ZDDNYeIdqo1r68YWY21CXuHkbNw2', NULL, '2022-02-22 17:11:28', '2022-02-22 17:11:28'),
(78, 'Plantation Maintenance Staff Kiambere', NULL, NULL, '+254715917290', 'Safaricom', 'Kenya', 'Kiambere', 'Forestry', 'osore@betterglobeforestry.com', 0, NULL, '$2y$10$hch.ttw2g4WUObkN.uSaFezw4ZDDNYeIdqo1r68YWY21CXuHkbNw2', NULL, '2022-02-22 17:11:28', '2022-02-22 17:11:28'),
(79, 'Robert Kilonzo Mutemi', 'Plantation Maintenance Staff Kiambere', NULL, '+254714011388', 'Safaricom', 'Kenya', 'Kiambere', 'Forestry', 'osore@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(80, 'Joseph Mutemi  Masila', 'Plantation Maintenance Staff Kiambere', NULL, '+254704388915', 'Safaricom', 'Kenya', 'Kiambere', 'Forestry', 'osore@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(81, 'Peter Mwandikwa Kakuli', 'Plantation Maintenance Staff Kiambere', NULL, '+254704337479', 'Safaricom', 'Kenya', 'Kiambere', 'Forestry', 'osore@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(82, 'Joseph Mwendwa Mathitu', 'Plantation Maintenance Staff Kiambere', NULL, '+254791814279', 'Safaricom', 'Kenya', 'Kiambere', 'Forestry', 'osore@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(83, 'Shandrack Munyoki Masavi', 'Plantation Maintenance Staff Kiambere', NULL, '+254719682519', 'Safaricom', 'Kenya', 'Kiambere', 'Forestry', 'osore@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(84, 'Kyalo Muneeni', 'Plantation Maintenance Staff Kiambere', NULL, '+254798058277', 'Safaricom', 'Kenya', 'Kiambere', 'Forestry', 'osore@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(85, 'Musyoka Kithome', 'Plantation Maintenance Staff Kiambere', NULL, '+254707309545', 'Safaricom', 'Kenya', 'Kiambere', 'Forestry', 'osore@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(86, 'John Muema Muthui', 'Plantation Maintenance Staff Kiambere', NULL, '+254799134863', 'Safaricom', 'Kenya', 'Kiambere', 'Forestry', 'osore@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:33'),
(87, 'Wakwaya Rabuogi Osore', 'Forest Technician Kiambere', 'osore@betterglobeforestry.com', '+254792337061', 'Safaricom', 'Kenya', 'Kiambere', 'Forestry', 'henry@betterglobeforestry.com', 0, NULL, '$2y$10$x/71tO4qP0OWEjNqcGTxReLHzaXFZikAMs0rMTCnZXsFw05.16T82', 'uZo1dL23FBsKOdvTubnFtsiwsYT0rTBfC6EOKmJLg45vKJYzTOKCEcmgpZpy', '2022-02-22 17:11:28', '2022-08-19 10:02:06'),
(88, 'Kilonzo Kimau', 'Security Guard Kiambere', 'kilonzokimau@gmail.com', '+254795506706', 'Safaricom', 'Kenya', 'Kiambere', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-11-23 18:31:03'),
(89, 'Security Kiambere', NULL, NULL, '+254704922091', 'Safaricom', 'Kenya', 'Kiambere', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$hch.ttw2g4WUObkN.uSaFezw4ZDDNYeIdqo1r68YWY21CXuHkbNw2', NULL, '2022-02-22 17:11:28', '2022-02-22 17:11:28'),
(90, 'Mwendwa Muthengi', 'Security Guard Kiambere', NULL, '+254716618612', 'Safaricom', 'Kenya', 'Kiambere Site', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(91, 'Joseph Muthukumi Mwanzia', 'Head of Security Kiambere', NULL, '+254716413678', 'Safaricom', 'Kenya', 'Kiambere Site', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(92, 'Security Guard', NULL, NULL, '+254748395509', 'Safaricom', 'Kenya', 'Kiambere Site', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$hch.ttw2g4WUObkN.uSaFezw4ZDDNYeIdqo1r68YWY21CXuHkbNw2', NULL, '2022-02-22 17:11:28', '2022-02-22 17:11:28'),
(93, 'Mathew Munyoki Muthui', 'Security Guard Kiambere', NULL, '+254792746633', 'Safaricom', 'Kenya', 'Kiambere Site', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(94, 'Head Heavy Equipment', NULL, NULL, '+254723953719', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$hch.ttw2g4WUObkN.uSaFezw4ZDDNYeIdqo1r68YWY21CXuHkbNw2', NULL, '2022-02-22 17:11:28', '2022-02-22 17:11:28'),
(95, 'Karisa Johnson Sulubu', 'Head of Nursery Nyongoro', NULL, '+254728842677', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Forestry', 'tobias@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(96, 'Gobu Kokane Lango ', 'Security Guard Nyongoro', NULL, '+254706029008', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(97, 'Bocha Mohamed Kokane', 'Security Guard Nyongoro', NULL, '+254704769152', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(98, 'Hussein Shora  Abalanga', 'Security Guard Nyongoro', NULL, '+254726088596', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(99, 'Waticho Wayamo Kunyo', 'Security Guard Nyongoro', NULL, '+254716831173', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(100, 'Ronald Muhanda Mukhwana', 'Plantation Maintenance Staff Nyongoro', NULL, '+254723128464', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Forestry', 'stephen@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(101, 'Mohamed Kono Dara', 'Security Guard Nyongoro', NULL, '+254717003572', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(102, 'Maulid Said Lango', 'Security Guard Nyongoro', NULL, '+254718461903', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(103, 'Kulisa Godana Shora', 'Security Guard Nyongoro', NULL, '+254715616326', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(104, 'Hussein Kani Guyo', 'Security Guard Nyongoro', NULL, '+254714651393', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(105, 'Hussein Guyole Kunyo', 'Security Guard Nyongoro', NULL, '+254703975172', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(106, 'Katana Changawa  Emanuel', 'Security Guard Nyongoro', NULL, '+254714210715', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(107, 'Joseph Wachira Gichobi', 'Handyman Nyongoro', NULL, '+254726082961', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(108, 'Herbert Wekesa Chobola', 'Plantation Maintenance Staff Nyongoro', NULL, '+254701608498', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Forestry', 'stephen@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(109, 'Walter Oduor Odhiambo', 'Plantation Maintenance Staff Nyongoro', NULL, '+254710302225', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Forestry', 'stephen@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(110, 'Mwaringa Thomas Ngowa', 'Security Guard Nyongoro', NULL, '+254791707807', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(111, 'Tabu Kazungu Kitsao', 'Security Guard Nyongoro', NULL, '+254711956916', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(112, 'Shandrack Lughanjei Mtanga', 'Plantation Maintenance Staff Nyongoro', NULL, '+254710360044', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Forestry', 'stephen@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(113, 'Karo Komora Komora', 'Plantation Maintenance Staff Nyongoro', NULL, '+254711355382', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Forestry', 'stephen@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(114, 'Plantation Maintenance Staff Nyongoro', NULL, NULL, '+254713762530', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Forestry', 'stephen@betterglobeforestry.com', 0, NULL, '$2y$10$hch.ttw2g4WUObkN.uSaFezw4ZDDNYeIdqo1r68YWY21CXuHkbNw2', NULL, '2022-02-22 17:11:28', '2022-02-22 17:11:28'),
(115, 'Mohamed Wario Boru', 'Security Guard Nyongoro', NULL, '+254708602886', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(116, 'Bakari Salado Algi', 'Plantation Maintenance Staff Nyongoro', NULL, '+254712857459', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Forestry', 'stephen@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(117, 'Abdula Salim Barisa ', 'Plantation Maintenance Staff Nyongoro', NULL, '+254710117899', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Forestry', 'stephen@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(118, 'Mohamed Maalim Boru', 'Security Guard Nyongoro', NULL, '+254716830553', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(119, 'Bakari Salim Kunyo', 'Security Guard Nyongoro', NULL, '+254713161942', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(120, 'Harison Kiponda Mwagandi', 'Security Guard Nyongoro', NULL, '+254714833567', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(121, 'Isaa Mohamed Kumbi', 'Security Guard Nyongoro', NULL, '+254701129770', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(122, 'Alii Abaharo ', 'Security Guard Nyongoro', NULL, '+254700289184', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(123, 'Patrick Safari Ponda', 'Tractor Driver Nyongoro', NULL, '+254727688669', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(124, 'Osman Dido Boru', 'Security Guard Nyongoro', NULL, '+254704620039', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(125, 'Elijah Njuguna Njoroge ', 'Plantation Maintenance Staff Nyongoro', NULL, '+254719619782', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Forestry', 'stephen@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(126, 'Suleiman Hashako Albado', 'Plantation Maintenance Staff Nyongoro', NULL, '+254742465255', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Forestry', 'stephen@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(127, 'Halkano Abadiba Gobu', 'Security Guard Nyongoro', NULL, '+254705589376', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(128, 'Barisa Omar Barisa', 'Plantation Maintenance Staff Nyongoro', NULL, '+254715213114', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Forestry', 'stephen@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(129, 'Ali Guyo Kali', 'Plantation Maintenance Staff Nyongoro', NULL, '+254707397230', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Forestry', 'stephen@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(130, 'Daniel Mukhongi Okumu', 'Plantation Maintenance Staff Nyongoro', NULL, '+254715637388', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Forestry', 'stephen@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(131, 'Mtawali John Karisa', 'Plantation Maintenance Staff Nyongoro', NULL, '+254720087284', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Forestry', 'stephen@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(132, 'Yakub Adano  Golo', 'Security Guard Nyongoro', NULL, '+254727827616', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(133, 'Gideon Benjamin Barisa ', 'Plantation Maintenance Staff Nyongoro', NULL, '+254704930918', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Forestry', 'stephen@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(134, 'Rashid Mzee Ali', 'Tractor Driver / Mechanic Nyongoro', NULL, '+254705856565', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(135, 'Wycliffe  Matendechere Owiti', 'Site Mechanic Nyongoro', NULL, '+254714486881', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(136, 'Godana Hamisi Dara', 'Tractor Driver Nyongoro', NULL, '+254725681357', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(138, 'Mwachinga Changawa Kapombe', 'Security Guard Nyongoro', NULL, '+254707065590', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(139, 'Tobias Odiko Otiende', 'Site Manager Nursery Nyongoro', 'tobias@betterglobeforestry.com', '+254702591978', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Forestry', 'alex.k@betterglobeforestry.com', 0, NULL, '$2y$10$ylSt5WdoE0RdM5L9OS5cDeDDgZ/gPjma40OMtxgqqbN/b3xLBvtw.', 'JOoUzMZr2xssyCAMCgbCELxwgje6S8Z2Xr0DbjRw1RJVnzXOyPpWG9QoyNEZ', '2022-02-22 17:11:28', '2023-02-27 12:36:58'),
(140, 'Ladislaus Okoth Adebe', 'Monitoring & Evaluation Officer Nyongoro', 'ladislaus@betterglobeforestry.com', '+254716041560', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Monitoring and Evaluation', 'Lawrence@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(142, 'Tractor Driver Nyongoro', NULL, NULL, '+254729788439', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$hch.ttw2g4WUObkN.uSaFezw4ZDDNYeIdqo1r68YWY21CXuHkbNw2', NULL, '2022-02-22 17:11:28', '2022-02-22 17:11:28'),
(143, 'Hassan Galgalo', 'Tractor Driver Nyongoro', NULL, '+254725791426', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(147, ' Kayongo Charles', 'Site Manager Nursery Dokolo', 'charles@betterglobeforestry.com', '+256782962187', 'MTN', 'Uganda', 'Dokolo', 'Forestry', 'john@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(148, 'Bob Bonny Ocen', 'Agro-Forestry Agent Dokolo', 'bonny@betterglobeforestry.com', '+256774123471', 'MTN', 'Uganda', 'Dokolo', 'Forestry', 'john@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(149, 'Omwandi Silas', 'Agro-Forestry Agent Dokolo', 'silas@betterglobeforestry.com', '+256781402344', 'MTN', 'Uganda', 'Dokolo', 'Forestry', 'john@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(150, 'Agro-Forestry Agent', NULL, 'vicky@betterglobeforestry.com', '+256783445529', 'MTN', 'Uganda', 'Dokolo', 'Forestry', 'john@betterglobeforestry.com', 0, NULL, '$2y$10$hch.ttw2g4WUObkN.uSaFezw4ZDDNYeIdqo1r68YWY21CXuHkbNw2', NULL, '2022-02-22 17:11:28', '2022-02-22 17:19:07'),
(151, ' Opito Lameck', 'Agro-Forestry Agent Dokolo', 'lameck@betterglobeforestry.com', '+256771445490', 'MTN', 'Uganda', 'Dokolo', 'Forestry', 'john@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(152, 'Richard Pope Ogole', 'Agro-Forestry Agent Dokolo', 'pope@betterglobeforestry.com', '+256774272630', 'MTN', 'Uganda', 'Dokolo', 'Forestry', 'john@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(153, ' Harriet Akullu', 'Agro-Forestry Agent Dokolo', 'logistics@betterglobeforestry.com', '+256784056655', 'MTN', 'Uganda', 'Dokolo', 'Forestry', 'john@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(154, ' Bonny Odongo', 'Nursery Technician Dokolo', 'bonny.odongo@betterglobeforestry.com', '+256784809064', 'MTN', 'Uganda', 'Dokolo', 'Forestry', 'john@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-02-22 17:11:28', '2022-07-29 13:38:34'),
(155, 'Monitoring and Evaluation Officer', NULL, 'moses@betterglobeforestry.com', '+256775034861', 'MTN ', 'Uganda', 'Dokolo', 'ME', 'joseph@betterglobeforestry.com', 0, NULL, '$2y$10$hch.ttw2g4WUObkN.uSaFezw4ZDDNYeIdqo1r68YWY21CXuHkbNw2', NULL, '2022-02-22 17:11:28', '2022-02-22 17:17:19'),
(156, 'Kokane Lango Godhana', 'Assistant to Head of Security Nyongoro', NULL, '+254717468508', 'Safaricom', 'Kenya', 'Nyongoro', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-03-08 17:39:09', '2022-07-29 13:38:34'),
(157, 'Abdullahi Bocha Shora', 'Acting Head of Security Nyongoro', NULL, '+254729979160', 'Safaricom', 'Kenya', 'Nyongoro Site', 'Operations', 'Logistics.nyo@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-03-08 17:39:09', '2022-07-29 13:38:34'),
(158, 'Antony Mwangangi Ivutha', 'Security Guard Kiambere', NULL, '+254726630129', 'Safaricom', 'Kenya', 'Kiambere Site', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-03-08 17:39:09', '2022-07-29 13:38:34'),
(159, 'Japheth Kilungya Mutemi', 'Assistant to Head of Security Kiambere', NULL, '+254718902617', 'Safaricom', 'Kenya', 'Kiambere Site', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-03-08 17:39:09', '2022-07-29 13:38:34'),
(160, 'Joel Onyango Odimo', 'Miti Magazine Editor', 'joel@betterglobeforestry.com', '+254710823574', 'Safaricom', 'Kenya', 'Head Office', 'Miti Department', 'jan@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-07-29 13:38:34', '2022-07-29 13:38:34'),
(161, 'Ogwal Moses ', 'Security Guard Dokolo', NULL, '+256784419944', 'MTN', 'Uganda', 'Dokolo', 'Operations', 'procurement.dkl@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-07-29 13:38:34', '2022-07-29 13:38:34'),
(162, 'Opio Paul ', 'Security Guard Dokolo', NULL, '+256781237237', 'MTN', 'Uganda', 'Dokolo', 'Operations', 'procurement.dkl@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-07-29 13:38:34', '2022-07-29 13:38:34'),
(163, 'Obongi Lameck', 'Security Guard Dokolo', NULL, '+256773774633', 'MTN', 'Uganda', 'Dokolo', 'Operations', 'procurement.dkl@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-07-29 13:38:34', '2022-07-29 13:38:34'),
(164, 'Daniel Muthengi Karungu', 'Security Guard Kiambere ', NULL, '+254796896434', 'Safaricom', 'Kenya', 'Kiambere Site', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-07-29 13:38:34', '2022-07-29 13:38:34'),
(165, 'Jane Mbatha Mulonzya', 'Security Guard Kiambere ', NULL, '+254712274044', 'Safaricom', 'Kenya', 'Kiambere Site', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-07-29 13:38:34', '2022-07-29 13:38:34'),
(167, 'Dominic Muteti Mwangangi', 'Security Guard Kiambere ', NULL, '+254718581516', 'Safaricom', 'Kenya', 'Kiambere', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-07-29 13:38:34', '2022-07-29 13:38:34'),
(168, 'Peter Mutua Gitune', 'Security Guard Kiambere ', NULL, '+254796149555', 'Safaricom', 'Kenya', 'Kiambere', 'Operations', 'operations@betterglobeforestry.com', 0, NULL, '$2y$10$0Vy/FzE3oK4Si8L7kDfuGOexXNveGrdIoC6WM67YN5tQ4vtTLfReC', NULL, '2022-07-29 13:38:34', '2022-07-29 13:38:34'),
(169, 'Nshemereirwe Gauda', 'AGRO FORESTRY AGENT', 'gauda@betterglobeforestry.com', '+256773977372', 'MTN', 'Uganda', 'Dokolo', 'Forestry', 'john@betterglobeforestry.com', 0, NULL, '$2y$10$XmCJSxyEebSRYmgstR3ARuIuThuF3l0CeTMC5wjqJX4a0f6HbAosu', NULL, '2023-04-20 16:15:08', '2023-04-20 16:20:27'),
(171, 'Leah Amongi', 'AGRO FORESTRY AGENT', 'leah@betterglobeforestry.com', '+256772310054', 'MTN', 'Uganda', 'Dokolo', 'Forestry', 'john@betterglobeforestry.com', 0, NULL, '$2y$10$CDGeBKq8U5VLhqvlv2P8POkR9f33lz7jZOU.sYLDc9HjIREe48iiq', NULL, '2023-04-20 16:24:29', '2023-04-20 16:24:29'),
(172, 'Jimmy Lemmo', 'AGRO FORESTRY AGENT', 'jimmy@betterglobeforestry.com', '+256782793824', 'MTN', 'Uganda', 'Dokolo', 'Forestry', 'john@betterglobeforestry.com', 0, NULL, '$2y$10$hQojloZ35qaNmAufiUelDOYXYvknXNaHk.xn8qiWbG98he6OLcrNi', NULL, '2023-04-20 16:26:56', '2023-04-20 16:26:56'),
(173, 'Sam Ojuka', 'AGRO FORESTRY AGENT', 'sam@betterglobeforestry.com', '+256772050869', 'MTN', 'Uganda', 'Dokolo', 'Forestry', 'john@betterglobeforestry.com', 0, NULL, '$2y$10$cFXStqgiTyuu0HFchvzEvetW6m0LLXUbD7m3nhbtoRqBghMGGJjtS', NULL, '2023-04-20 16:30:15', '2023-04-20 16:30:15'),
(174, 'FSC OFFICER', NULL, 'fsc@betterglobeforestry.com', '+254791511763', NULL, NULL, 'Head Office', 'Forestry', 'samuel@betterglobeforestry.com', 0, NULL, '$2y$10$H0oMXPP1.BFRLJkADYmFve/oGpmdtzwuFnRtZH4g6VgXWzGEDRS1C', NULL, '2023-07-11 17:39:04', '2023-07-11 17:39:04'),
(175, 'Programs Officer', NULL, 'victor@betterglobeforestry.com', '+254757537062', NULL, NULL, '7 Forks', 'Forestry', 'samuel@betterglobeforestry.com', 0, NULL, '$2y$10$Cj7B5C4n4HNdUzB30TMtsODDyL/podoGmyVQxY053pc1FNqc2p1e6', NULL, '2023-07-11 17:44:50', '2023-07-11 17:44:50'),
(176, 'Site Logistics Officer Dokolo', NULL, 'procurement.dkl@betterglobeforestry.com', '256754392898', NULL, NULL, 'Dokolo', 'Operations', 'lawrence@betterglobeforestry.com', 0, NULL, '$2y$10$hkpE.qMylx6MSfZ.eWSuz.4volKKp0ZS2g.Erybrk8Wx52kt4Sa42', NULL, '2023-09-01 13:52:47', '2023-09-01 13:52:47'),
(177, 'Security Guard', NULL, 'susanakagendonthiga@gmail.com', '254740278450', NULL, NULL, 'Kiambere', 'Operations', 'lawrence@betterglobeforestry.com', 0, NULL, '$2y$10$iQz1s7ymxD8hpcVuiC5Jc.9YJFXlUKDxlGwqn0oCF/uflh7Vkr1K.', NULL, '2023-09-01 13:56:48', '2023-09-01 13:56:48'),
(178, 'Security Guard', NULL, 'jaconmwangangi2023@hmail.com', '254796481303', NULL, NULL, 'Kiambere', 'Operations', 'lawrence@betterglobeforestry.com', 0, NULL, '$2y$10$imncU0rSRHWyS0uLcGtwnup4yTxJlnKCSz4imvGlA14BzU2Ke0fgC', NULL, '2023-09-01 13:58:16', '2023-09-01 13:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `query` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `access_role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`id`, `user_id`, `department_id`, `query`, `type`, `response`, `addressed`, `access_role`, `created_at`, `updated_at`) VALUES
(33, 54, 6, 'Hi, Thank you', 'email sent', NULL, 'closed', 'CM', '2022-03-11 16:27:32', '2022-04-13 15:09:00'),
(34, 1, 4, 'it would be encouraging of officers from head office can also have tshirts branded with bgf logo...', 'email sent', 'Thank you for your suggestion. However, please note that the T-shirts are part of PPEs especially for the site team and they wear them for identification purposes. E.g., for the farmers program when the staff is visiting the farmers, they wear them so that the farmer can know he/she is from Better Globe forestry Ltd. The company ensures that it provides each employee with all the necessary equipment for their respective roles in order to do their job properly.', 'open', 'HR', '2022-03-12 02:18:59', '2022-03-21 14:19:04'),
(35, 91, 4, 'Thanks you Madam and your team we have got two security guards the work will improve a lot', 'email sent', NULL, 'closed', 'HR', '2022-03-17 00:25:53', '2022-03-21 14:20:54'),
(36, 91, 4, 'Thanks you Madam and your team we have received 16 Tourches night shift will improve.', 'email sent', 'Thank you for the feedback. Keep up the good work.', 'open', 'HR', '2022-03-17 11:36:51', '2022-03-21 13:55:42'),
(37, 55, 1, 'hi', 'email sent', 'testing done', 'closed', 'CM', '2022-03-30 10:02:06', '2022-04-13 15:10:33'),
(38, 55, 1, 'quize', 'email sent', NULL, 'closed', 'CM', '2022-03-31 13:07:59', '2022-04-13 15:09:23'),
(39, 87, 1, 'Training well done.', 'email sent', NULL, 'closed', 'CM', '2022-03-31 13:10:14', '2022-04-13 15:08:34'),
(40, 60, 1, 'Testing the App.', 'email sent', NULL, 'closed', 'CM', '2022-03-31 13:30:06', '2022-06-15 11:10:32'),
(41, 159, 3, 'collection for dead mukao', 'email sent', 'Good morning, We believe this is being addressed. They should be collected progressively per compartment. kindly confirm if you have noticed an improvement.', 'closed', 'CM', '2022-04-05 08:57:57', '2022-06-29 16:52:50'),
(42, 159, 2, 'my salary reduction', 'email sent', 'First, Look at the payslip to determine what caused the deduction. If it\'s still not clear, Tell the site forester the indicated cause on the payslip and he can explain some more, or send the question to the Deputy Director of Human resources.', 'closed', 'CM', '2022-04-05 09:04:14', '2022-06-29 16:52:41'),
(43, 159, 4, 'Rainfall cathment(quaters.', 'email sent', 'Thank you for your suggestion', 'open', 'HR', '2022-04-05 09:10:36', '2022-04-27 16:08:22'),
(44, 86, 3, 'Windthrown trees looks as waste in plantation', 'email sent', 'Good morning, We believe this is being addressed. They should be collected progressively per compartment. kindly confirm if you have noticed an improvement.', 'closed', 'CM', '2022-04-05 16:06:35', '2022-06-29 16:58:16'),
(45, 55, 1, 'testing', 'email sent', 'testing ongoing', 'closed', 'CM', '2022-04-14 10:30:43', '2022-04-14 12:37:04'),
(46, 55, 5, 'Testing', 'email sent', 'suggest.', 'closed', 'CM', '2022-04-14 10:45:56', '2022-06-15 11:10:18'),
(47, 159, 1, 'Repair for our device.', 'email sent', 'Which device? The right department for this question is the operations department.', 'closed', 'CM', '2022-04-22 09:20:27', '2022-06-29 16:52:16'),
(48, 159, 8, 'Repair for our device', 'email sent', 'Good morning, I believe this was addressed. In the future kindly clarify the device you are talking about.', 'closed', 'CM', '2022-04-22 10:06:47', '2022-06-29 16:51:56'),
(49, 66, 8, 'Shortage of drinking water', 'email sent', 'We believe this was addressed. kindly confirm.', 'closed', 'CM', '2022-04-23 09:56:35', '2022-07-06 10:57:41'),
(50, 159, 3, 'fencing at 001-0023', 'email sent', 'Good afternoon, Your question or suggestion is not clear.', 'closed', 'CM', '2022-04-23 09:57:41', '2022-06-29 16:51:42'),
(51, 85, 4, 'Life is too high salary is low', 'email sent', 'Its true cost of living is very high. However, for us all to get a higher pay we have to ensure we do our best in our respective roles. Work as a team to ensure all trees planted survive and we have zero mortality. Then definately the company will make  profit and we can now request for a salary raise.', 'open', 'HR', '2022-04-23 11:58:27', '2022-04-27 16:02:52'),
(52, 87, 1, 'Staff complaining the app takes a few minutes then disappears before sending the text', 'email sent', 'The issue has been forwarded to IT department', 'closed', 'CM', '2022-04-23 12:08:22', '2022-07-05 17:51:50'),
(53, 80, 1, 'provide house allowance ad credit 4 staff', 'email sent', 'Good Afternoon, kindly send your question to the Human resource department. Questions or suggestions related to allowances are addressed by the Deputy director of human resources with input from the relevant HOD.', 'closed', 'CM', '2022-04-23 12:23:31', '2022-06-29 16:58:51'),
(55, 76, 4, 'MAJI HATUNA', 'email sent', 'Thanks i will take contact with you', 'closed', 'HR', '2022-04-25 11:50:24', '2022-07-18 14:38:31'),
(56, 159, 8, 'security house in our plantation', 'email sent', NULL, 'closed', 'CM', '2022-04-25 15:26:30', '2022-07-05 17:51:09'),
(57, 82, 2, 'shinda ya mafuta maji tunashota na punda', 'email sent', 'We were experiencing fuel shortages all over the country. We believe however this was addressed. kindly confirm.', 'closed', 'CM', '2022-04-25 17:13:16', '2022-07-06 10:56:10'),
(58, 83, 2, 'Salary advance', 'email sent', 'Good morning, kindly send your question to the Human resource department. Questions or suggestions related to salaries are addressed by the Deputy director of human resources.', 'closed', 'CM', '2022-04-25 17:19:00', '2022-06-29 16:56:43'),
(59, 76, 3, 'HATUNA MACHINI YA MAJI', 'email sent', NULL, 'closed', 'CM', '2022-04-26 11:42:50', '2022-06-21 13:17:55'),
(60, 86, 2, ' windthrown mukau trees looks like waste in plantation needs to be collected', 'email sent', 'Thank you for bringing this to our attention. I believe this was addressed, kindly confirm.', 'closed', 'CM', '2022-04-26 11:46:29', '2022-06-29 16:57:12'),
(61, 84, 4, 'as a company can it provides a visit for other site for staff', 'email sent', 'This is already happening. Different staff visits the sites, especially from the head office to the various sites to interact, listen, etc. However, as we continue to grow the company shall look into the possibility of organizing group visits by staff to different sites.\nThanks.', 'open', 'HR', '2022-04-27 16:29:49', '2022-07-29 18:05:39'),
(65, 1, 2, 'this is a good test', 'email sent', NULL, 'closed', 'CM', '2022-05-18 16:35:03', '2022-06-15 11:08:47'),
(66, 54, 7, 'This is a test', 'email sent', NULL, 'closed', 'CM', '2022-05-18 16:35:03', '2022-06-15 11:08:58'),
(67, 61, 2, 'this is finance test', 'email sent', NULL, 'closed', 'CM', '2022-05-18 16:40:03', '2022-06-15 11:07:18'),
(68, 57, 4, 'testing', 'email sent', NULL, 'closed', 'HR', '2022-05-19 15:16:02', '2022-05-19 15:19:51'),
(69, 55, 1, 'test', 'email sent', NULL, 'closed', 'CM', '2022-05-19 15:17:02', '2022-05-19 15:19:42'),
(70, 1, 1, 'I wish to send a complain that this is a test', 'email sent', NULL, 'closed', 'CM', '2022-05-19 15:18:05', '2022-06-21 11:06:04'),
(71, 60, 5, 'test', 'email sent', NULL, 'closed', 'CM', '2022-05-19 15:23:02', '2022-06-15 11:07:31'),
(72, 57, 4, 'testing', 'email sent', 'okay', 'closed', 'HR', '2022-05-19 15:23:03', '2022-07-18 14:39:55'),
(73, 55, 1, 'new test', 'email sent', 'response to the new test', 'closed', 'CM', '2022-05-19 15:25:03', '2022-06-15 11:07:40'),
(74, 1, 5, 'live test final after changes', 'email sent', NULL, 'closed', 'CM', '2022-05-20 18:01:02', '2022-06-15 11:07:47'),
(75, 60, 5, 'test', 'email sent', NULL, 'closed', 'CM', '2022-05-27 10:03:02', '2022-06-15 11:07:57'),
(76, 60, 5, 'testing', 'email sent', NULL, 'closed', 'CM', '2022-05-27 11:52:02', '2022-06-15 11:08:05'),
(77, 60, 5, 'testing for kiambere', 'email sent', NULL, 'closed', 'CM', '2022-05-30 15:54:02', '2022-06-15 11:06:26'),
(78, 87, 1, 'testing the Communication application App', 'email sent', NULL, 'closed', 'CM', '2022-05-30 15:54:02', '2022-06-15 11:06:14'),
(79, 88, 4, 'salary', 'email sent', 'Please clarify more about your salary request', 'open', 'HR', '2022-05-30 15:55:02', '2022-07-18 14:40:43'),
(80, 90, 8, 'thanks for the company make a plan for starting to collect dead tree in plantation', 'email sent', 'Thank you for your feedback, Continuous improvement is the way to go.\nAre all the dead trees now collected, or is the exercise still ongoing?', 'closed', 'CM', '2022-05-30 15:57:05', '2022-06-29 12:07:04'),
(81, 86, 8, NULL, 'email sent', NULL, 'closed', 'CM', '2022-05-30 16:04:03', '2022-06-21 10:54:54'),
(83, 108, 5, 'salary inreament', 'email sent', 'Good morning, kindly send your question to the Human resource department. Questions or suggestions related to salaries are addressed by the Deputy director of human resources.', 'closed', 'CM', '2022-05-30 16:34:03', '2022-06-29 16:57:21'),
(85, 156, 5, 'request salary top up', 'email sent', 'Good morning, kindly send your question to the Human resource department. Questions or suggestions related to salaries are addressed by the Deputy director of human resources.', 'closed', 'CM', '2022-05-30 16:35:02', '2022-06-29 12:05:01'),
(86, 108, 5, 'regular training', 'email sent', NULL, 'closed', 'CM', '2022-05-30 16:42:03', '2022-06-15 11:05:39'),
(87, 156, 5, 'training', 'email sent', NULL, 'closed', 'CM', '2022-05-31 08:14:03', '2022-06-15 11:03:17'),
(88, 133, 3, 'regular training', 'email sent', NULL, 'closed', 'CM', '2022-05-31 08:28:02', '2022-06-15 11:03:27'),
(89, 100, 3, 'salary ingriment', 'email sent', 'Good morning, kindly send your question to the Human resource department. Questions or suggestions related to salaries are addressed by the Deputy director of human resources.', 'closed', 'CM', '2022-05-31 08:29:02', '2022-06-29 16:56:37'),
(90, 66, 5, NULL, 'email sent', NULL, 'closed', 'CM', '2022-05-31 09:00:03', '2022-06-15 11:03:38'),
(91, 91, 1, 'testing communication app', 'email sent', NULL, 'closed', 'CM', '2022-05-31 09:01:03', '2022-06-15 11:04:58'),
(92, 34, 1, 'testing application app', 'email sent', NULL, 'closed', 'CM', '2022-05-31 14:23:03', '2022-06-15 11:05:15'),
(93, 158, 1, NULL, 'email sent', NULL, 'closed', 'CM', '2022-06-07 15:56:02', '2022-06-15 11:04:30'),
(94, 158, 1, 'Thank you for this new communication app, now we training others to know.', 'email sent', NULL, 'closed', 'CM', '2022-06-07 16:15:02', '2022-06-15 11:04:41'),
(95, 71, 1, 'nilitengeza gate ya hapa site ,kuna zawadi kutoka kwa kampuni?', 'email sent', NULL, 'closed', 'CM', '2022-06-08 14:50:03', '2022-06-15 10:55:43'),
(96, 90, 2, 'am asking weather is good to send payslip to the workers tree day or two days allier so that everyone should look if they is any complain  itatuliwe mapema.', 'email sent', 'Good morning, kindly send your question to the Human resource department. Questions or suggestions related to payslips or salaries are addressed by the Deputy director of human resources.', 'closed', 'CM', '2022-06-14 14:58:03', '2022-06-29 12:04:05'),
(97, 159, 8, NULL, 'email sent', NULL, 'closed', 'CM', '2022-06-16 09:08:02', '2022-06-21 10:38:14'),
(98, 49, 2, 'TEST', 'email sent', NULL, 'closed', 'CM', '2022-06-17 16:29:02', '2022-06-21 10:37:19'),
(99, 55, 1, 'TEST', 'email sent', NULL, 'closed', 'CM', '2022-06-17 16:29:02', '2022-06-21 10:37:03'),
(100, 57, 4, 'test', 'email sent', NULL, 'closed', 'HR', '2022-06-17 16:29:02', '2022-07-18 14:41:10'),
(101, 61, 2, 'testing', 'email sent', NULL, 'closed', 'CM', '2022-06-17 16:30:06', '2022-06-21 10:37:53'),
(102, 63, 3, 'TEST', 'email sent', NULL, 'closed', 'CM', '2022-06-17 16:30:06', '2022-06-21 10:37:43'),
(103, 47, 7, 'test', 'email sent', NULL, 'closed', 'CM', '2022-06-17 16:32:03', '2022-06-21 10:37:36'),
(104, 34, 4, 'taste', 'email sent', 'okay', 'open', 'HR', '2022-06-17 16:35:02', '2022-07-18 14:41:28'),
(105, 1, 5, 'Test for Claudiah new requests', 'email sent', NULL, 'closed', 'CM', '2022-06-21 01:33:02', '2022-06-21 10:38:45'),
(106, 158, 1, 'Kiambere security we have started using walk talkies to report occurrences and they are effective in whole plantation, thank you.', 'email sent', 'Thank you for your feedback. We appreciate it.', 'closed', 'CM', '2022-06-21 12:37:03', '2022-06-29 12:00:48'),
(107, 147, 5, 'Test', 'email sent', NULL, 'closed', 'CM', '2022-06-24 12:50:02', '2022-06-27 10:09:31'),
(108, 152, 5, 'Test', 'email sent', NULL, 'closed', 'CM', '2022-06-24 12:58:03', '2022-06-27 10:09:21'),
(109, 148, 5, 'TEST', 'email sent', NULL, 'closed', 'CM', '2022-06-24 12:59:03', '2022-06-27 10:08:56'),
(110, 154, 5, 'TEST', 'email sent', NULL, 'closed', 'CM', '2022-06-24 12:59:03', '2022-06-27 10:09:12'),
(112, 149, 1, 'TEST', 'email sent', NULL, 'closed', 'CM', '2022-06-24 13:01:02', '2022-06-27 10:10:28'),
(113, 151, 5, 'Test', 'email sent', NULL, 'closed', 'CM', '2022-06-24 13:01:02', '2022-06-27 10:10:22'),
(114, 153, 5, 'trial', 'email sent', NULL, 'closed', 'CM', '2022-06-24 13:04:02', '2022-06-27 10:10:33'),
(115, 45, 8, 'Repairs of worn motorcycle', 'email sent', 'We are first putting some measures in place. This was communicated by the forestry HOD on June the 6th and plans were adapted accordingly.', 'closed', 'CM', '2022-06-25 13:50:03', '2022-07-06 10:52:43'),
(116, 34, 3, 'testing', 'email sent', NULL, 'closed', 'CM', '2022-06-25 13:50:03', '2022-06-27 10:11:01'),
(117, 43, 3, 'training on communication app done.', 'email sent', NULL, 'closed', 'CM', '2022-06-25 13:50:03', '2022-06-27 10:11:32'),
(118, 46, 3, 'Just a test whether the process is working', 'email sent', NULL, 'closed', 'CM', '2022-06-25 13:51:10', '2022-06-27 10:08:19'),
(119, 35, 3, 'testing', 'email sent', NULL, 'closed', 'CM', '2022-06-25 13:51:10', '2022-06-27 10:11:39'),
(120, 33, 8, 'Engine oil is essential to our bikes requesting for refilling soon the mailage has past', 'email sent', NULL, 'closed', 'CM', '2022-06-25 13:54:04', '2022-06-30 13:02:08'),
(121, 35, 2, 'Testing', 'email sent', NULL, 'closed', 'CM', '2022-06-25 13:56:03', '2022-06-27 10:03:59'),
(122, 148, 5, 'TEST', 'email sent', NULL, 'closed', 'CM', '2022-06-27 14:25:02', '2022-06-29 11:51:35'),
(123, 158, 8, 'am really appreciating for having these gargets (walkie-talkies) because they are making operations a bit easier, thanks.', 'email sent', 'Thanks for your positive feedback. It\'s appreciated. We always aim for continuous improvement to ensure we achieve the company\'s objectives. \'\'Ensuring the trees planted survive and thrive\".', 'closed', 'CM', '2022-07-02 12:51:02', '2022-07-13 12:39:53'),
(124, 39, 4, 'faulty clocking in device', 'email sent', 'Antony,\nWe shall follow up with your supervisor to find out what is the problem. However, in the future, if you encounter any challenges please ensure you immediately inform your supervisor so that she communicates with the ICT department.', 'open', 'HR', '2022-07-30 13:04:03', '2022-08-01 10:18:49'),
(125, 43, 4, 'Salary deduction through clocking in and out device.', 'email sent', 'Njeru,\nThe company delights in paying all the staff their full salary at all times. However, as you are aware, we have a time and attendance policy that highlights all the deductions and why they occur. Please ensure that you comply with the policy by doing what is right the first time and at all times and there will be no deductions from the salary.\nThanks.', 'open', 'HR', '2022-07-30 13:04:03', '2022-08-01 10:11:21'),
(126, 41, 1, 'We are not getting our monthly minutes feedback why?', 'email sent', 'Good morning William, To enable me to investigate further, kindly let me know which meeting you are referring to. Is it the Health and safety meeting?', 'closed', 'CM', '2022-07-30 13:05:04', '2023-01-05 15:54:02'),
(128, 162, 5, 'TESTING SECURITY', 'email sent', NULL, 'closed', 'CM', '2022-08-03 16:52:03', '2023-01-05 15:52:53'),
(129, 161, 5, 'TEST FOR SECURITY', 'email sent', NULL, 'closed', 'CM', '2022-08-04 08:57:03', '2023-01-05 15:52:47'),
(131, 108, 3, '3', 'email sent', NULL, 'closed', 'CM', '2022-08-17 17:30:03', '2023-01-05 15:52:28'),
(132, 110, 4, 'salary increament', 'email sent', 'Your request is well received. However, for us all to get a higher pay we have to ensure we do our best in our respective roles. Work as a team to ensure all trees planted survive and we have zero mortality. Then definitely the company will make profit and we can now request for a salary raise.', 'open', 'HR', '2022-08-17 17:46:04', '2022-10-19 17:33:35'),
(133, 87, 1, 'some staff raised a concern that the App is not working', 'email sent', NULL, 'closed', 'CM', '2022-10-03 08:01:03', '2023-01-05 15:53:11'),
(134, 62, 8, 'Testing', 'email sent', NULL, 'closed', 'CM', '2022-10-03 10:59:03', '2023-01-05 15:52:11'),
(135, 55, 1, 'Goffs is the universal language of kindness', 'email sent', NULL, 'closed', 'CM', '2022-10-04 14:34:04', '2023-01-05 15:52:18'),
(136, 159, 8, NULL, 'email sent', NULL, 'closed', 'CM', '2022-10-04 14:48:03', '2023-01-05 15:52:03'),
(137, 49, 5, 'Test', 'email sent', NULL, 'closed', 'CM', '2022-10-04 14:48:04', '2023-01-05 15:51:53'),
(138, 159, 8, 'lrequest  to employ the Head of security.', 'email sent', NULL, 'closed', 'CM', '2022-10-16 14:25:03', '2023-01-05 15:53:59'),
(139, 159, 8, 'requesting to build small temporary house  at comp A016 the area where there is new seedlings.', 'email sent', NULL, 'closed', 'CM', '2022-10-17 09:30:04', '2023-01-05 15:53:56'),
(140, 55, 1, 'test', 'email sent', NULL, 'closed', 'CM', '2022-12-01 11:44:04', '2023-01-05 15:51:33'),
(142, 49, 1, 'test', 'email sent', NULL, 'closed', 'CM', '2022-12-01 12:19:05', '2023-01-05 15:49:32'),
(143, 126, 4, '1', 'email sent', NULL, 'open', 'HR', '2022-12-06 14:13:04', '2022-12-06 14:15:05'),
(145, 162, 4, 'Testing for security', 'email sent', NULL, 'open', 'HR', '2022-12-08 10:57:04', '2022-12-08 11:00:04'),
(146, 161, 4, 'testing for security', 'email sent', NULL, 'open', 'HR', '2022-12-08 11:00:05', '2022-12-08 11:03:05'),
(147, 108, 4, 'Is the issue of bonus for some of us who did not use sick leave exist, advise please.', 'email sent', 'Herbert, we appreciate the fact that 2022 you did not take any sick leave. Keep it up and keep on doing your best in your respective roles. Kindly note that when analyzing the performance for the year 2022 for all the staff, we also considered staff sick leave report to determine the overall performance. \nNB: All staff who never went for any sick leave in year 2022 , this positively impacted their overall performance.\nThanks and we trust that this year 2023 you will keep up with the same spirit and also positively influence your other team members .', 'open', 'HR', '2022-12-26 18:42:03', '2023-02-01 16:56:43'),
(148, 55, 1, 'xxxxxxx', 'email sent', NULL, 'closed', 'CM', '2023-01-08 19:46:04', '2023-04-24 12:08:32'),
(149, 87, 1, '1', 'email sent', NULL, 'open', 'CM', '2023-02-01 16:36:03', '2023-02-01 16:39:04'),
(150, 55, 1, 'tttttty', 'email sent', NULL, 'closed', 'CM', '2023-02-03 15:49:04', '2023-04-24 12:08:48'),
(151, 55, 4, 'test', 'email sent', NULL, 'open', 'HR', '2023-03-21 12:07:03', '2023-03-21 12:09:04'),
(152, 173, 1, 'Test messege', 'email sent', 'Good morning.\nHope you are catching on well and ready to execute the company\'s objectives and targets to the best of your ability.', 'open', 'CM', '2023-04-22 11:00:04', '2023-04-24 12:07:35'),
(153, 169, 3, 'test message', 'email sent', 'Received.\nHope you are getting well integrated.', 'open', 'CM', '2023-04-22 11:01:03', '2023-04-24 12:04:13'),
(154, 171, 1, 'Just for learning purpose', 'email sent', 'Good morning. Noted and received. \nHope you progressing well.', 'open', 'CM', '2023-04-22 11:01:04', '2023-04-24 12:02:35'),
(155, 1, 1, 'This is just a routine maintainance test kindly ignore', 'email sent', NULL, 'open', 'CM', '2023-04-25 12:09:04', '2023-04-25 12:12:04'),
(156, 165, 1, '8', 'email sent', NULL, 'open', 'CM', '2023-05-13 09:05:04', '2023-05-13 09:06:05'),
(157, 55, 1, 'testing', 'email sent', NULL, 'open', 'CM', '2023-06-08 16:49:04', '2023-06-08 16:51:04'),
(158, 1, 1, 'This is my test to Elvis introduction', 'email sent', NULL, 'open', 'CM', '2023-06-29 11:27:04', '2023-06-29 11:30:07'),
(159, 87, 8, 'training of the new security on how to use communication app.', 'email sent', NULL, 'open', 'CM', '2023-08-16 11:43:04', '2023-08-16 11:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `s_m_s_progress`
--

CREATE TABLE `s_m_s_progress` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `query` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `progress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--


--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_department_unique` (`department`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suggestions_user_id_foreign` (`user_id`),
  ADD KEY `suggestions_department_id_foreign` (`department_id`);

--
-- Indexes for table `s_m_s_progress`
--
ALTER TABLE `s_m_s_progress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `s_m_s_progress`
--
ALTER TABLE `s_m_s_progress`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD CONSTRAINT `suggestions_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `suggestions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
