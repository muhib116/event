-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 06, 2023 at 12:13 PM
-- Server version: 5.7.33
-- PHP Version: 8.1.7RC1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_managenemt`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertises`
--

CREATE TABLE `advertises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `end_at` datetime DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci,
  `settings` json DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `m_event_id` bigint(20) UNSIGNED NOT NULL,
  `discount_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_code_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'fixed/percentage',
  `discount_value` double NOT NULL DEFAULT '0',
  `applied_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'all_ticket/specific_ticket',
  `tickets` json DEFAULT NULL,
  `use_limit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'unlimited,one_use,limited',
  `limit_amount` int(11) NOT NULL DEFAULT '0',
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_date` date DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_lists`
--

CREATE TABLE `event_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `eventType` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `terms_and_conditions` text COLLATE utf8mb4_unicode_ci,
  `audience` text COLLATE utf8mb4_unicode_ci,
  `attention` text COLLATE utf8mb4_unicode_ci,
  `location` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locationTips` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_link` text COLLATE utf8mb4_unicode_ci,
  `eventCategory` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `website` text COLLATE utf8mb4_unicode_ci,
  `instagram` text COLLATE utf8mb4_unicode_ci,
  `twitter` text COLLATE utf8mb4_unicode_ci,
  `facebook` text COLLATE utf8mb4_unicode_ci,
  `settings` json DEFAULT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `weekly_notice` tinyint(1) NOT NULL DEFAULT '0',
  `hourly_notice` tinyint(1) NOT NULL DEFAULT '0',
  `admin_overview_notice` tinyint(1) NOT NULL DEFAULT '0',
  `can_withdraw_notice` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_lists`
--

INSERT INTO `event_lists` (`id`, `user_id`, `eventType`, `name`, `slug`, `description`, `terms_and_conditions`, `audience`, `attention`, `location`, `url`, `locationTips`, `video_link`, `map_link`, `eventCategory`, `timezone`, `start_date`, `start_time`, `end_date`, `end_time`, `website`, `instagram`, `twitter`, `facebook`, `settings`, `publish`, `created_at`, `updated_at`, `weekly_notice`, `hourly_notice`, `admin_overview_notice`, `can_withdraw_notice`) VALUES
(1, 3, 'live-event', 'Olga Bentley', 'olga-bentley', '<p>Tempora esse et aut</p>', 'Dignissimos ipsum ut', 'Perferendis adipisci', 'Ullam modi ipsum un', 'Exercitationem in qu', 'https://www.hobi.co', 'Eius aut quia porro', 'Sed quisquam velit q', 'Eveniet nisi ex nul', NULL, '-6', '2023-01-27', '12:47:00', '2023-01-31', '05:15:00', 'https://www.torunagabywu.com.au', 'https://www.fylomak.com', 'https://www.dicazyruxizil.org.uk', 'https://www.syd.org', '[]', 1, '2022-12-30 08:17:59', '2023-01-06 02:22:58', 0, 0, 0, 0),
(2, 3, 'online-event', 'Robin Moody', 'robin-moody', 'Est consequatur do', 'Totam ratione aperia', 'Obcaecati laboriosam', 'Libero rerum sed har', 'Fugit eos assumenda', 'https://www.kaxyd.cm', 'Est tempore volupta', 'Sint a vero sed nost', 'Quia laborum Facere', 'food-and-drink', '13', '2022-10-12', '05:30:00', '2022-12-01', '12:41:00', 'https://www.wezybozyxyratuz.ca', 'https://www.nejiluwibusetyp.tv', 'https://www.dune.cc', 'https://www.feqy.info', '[]', 1, '2022-12-31 08:58:36', '2023-01-01 09:13:29', 0, 0, 0, 0),
(3, 3, 'online-event', 'Denton Jennings', 'denton-jennings', '<p>Sit eu minim ullamco</p>', 'Maiores magna est v', 'Necessitatibus eveni', 'Minus adipisci esse', 'Ipsam omnis distinct', 'https://www.kakidezuhizy.com', 'Minus dolor corrupti', 'Eum eaque doloribus', 'Recusandae Officiis', NULL, '-4', '2023-01-07', '18:15:00', '2023-01-26', '14:58:00', 'https://www.sekawujita.me.uk', 'https://www.wukemonyfatame.me.uk', 'https://www.nomun.org.uk', 'https://www.qacyvaduwos.co', '[]', 1, '2023-01-01 09:38:32', '2023-01-06 02:32:35', 0, 0, 0, 0),
(4, 3, 'live-event', 'Breanna Booth', 'breanna-booth', 'Dolorum et amet dol', 'Eum irure est conseq', 'Ratione quaerat dolo', 'Aut non voluptate mo', 'Reiciendis sed excep', 'https://www.nijel.us', 'Corporis sed autem o', 'Praesentium atque ci', 'Omnis qui dignissimo', 'food-and-drink', '2', '2022-12-01', '07:51:00', '2022-12-20', '04:21:00', 'https://www.dijibemiziva.org', 'https://www.vujoh.cc', 'https://www.conuqelezorix.net', 'https://www.xubimohupyfydy.org', '[]', 1, '2023-01-01 10:08:52', '2023-01-05 09:23:01', 0, 0, 0, 0),
(5, 3, 'online-event', 'Tatiana Pierce', 'tatiana-pierce', 'Amet doloremque exc', 'Laboriosam quas ex', 'Sed doloremque aut d', 'Eum ullamco eum qui', 'Consequatur Fugiat', 'https://www.lasohul.biz', 'Quibusdam cupidatat', 'Similique illum fug', 'Ut aut omnis tempori', 'career', '8', '2022-11-08', '00:30:00', '2022-12-19', '11:33:00', 'https://www.xuhosyrilup.us', 'https://www.kejyqizef.net', 'https://www.lahadego.cm', 'https://www.gusyqemi.ws', '[]', 1, '2023-01-05 09:58:59', '2023-01-05 12:51:28', 0, 0, 0, 0),
(6, 3, 'online-event', 'Valentine Horn', 'valentine-horn', '<p>Et necessitatibus ci asf asdf asdf&nbsp;</p>', 'Mollit dolorem dolor', 'Obcaecati perspiciat asdfasdf&nbsp;', 'Illum elit ab exer aasdf asdf as fd', 'Quis perferendis in', 'asdf-', 'Placeat temporibus', 'Nihil earum voluptas', 'Autem est tempor ad', 'career', '-2', '2023-01-13', '18:48:00', '2023-01-27', '05:03:00', 'https://www.pybyjyq.com', 'https://www.xinifycejywi.me.uk', 'https://www.jyzevuka.com', 'https://www.ryty.me', '[]', 1, '2023-01-05 12:31:30', '2023-01-06 01:13:20', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `event_tickets`
--

CREATE TABLE `event_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `event_id` int(10) UNSIGNED NOT NULL,
  `ticketType` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_stock` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_limit` int(10) UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `purchase_limit` int(10) UNSIGNED DEFAULT NULL,
  `ticket_description` text COLLATE utf8mb4_unicode_ci,
  `isTransferFeesToGuest` tinyint(1) DEFAULT '0',
  `questions` json DEFAULT NULL,
  `perks` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sold` int(10) UNSIGNED DEFAULT '0',
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_tickets`
--

INSERT INTO `event_tickets` (`id`, `user_id`, `event_id`, `ticketType`, `ticket_name`, `ticket_stock`, `stock_limit`, `price`, `purchase_limit`, `ticket_description`, `isTransferFeesToGuest`, `questions`, `perks`, `sold`, `settings`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Paid', 'PHP', 'limited', 50, 5.00, 15, 'vfasd', NULL, '[]', 'asdf', 34, '{\"isHidden\": false}', '2022-12-30 08:18:23', '2022-12-30 10:26:51'),
(2, 3, 1, 'Free', 'Laravel', 'unlimited', NULL, 0.00, 3, 'asdf', NULL, '[]', 'asdf', 14, '{\"isHidden\": false}', '2022-12-30 08:18:46', '2022-12-30 10:26:51'),
(3, 3, 2, 'Paid', 'SDsf', 'limited', 10, 50.00, 3, 'asdf', NULL, '[]', 'asdf', 0, '{\"isHidden\": false}', '2022-12-31 08:59:04', '2022-12-31 08:59:04'),
(4, 3, 3, 'Paid', 'Laravel', 'limited', 50, 50.00, 2, 'asdfasdf', 1, '[]', 'asdfasdf', 1, '{\"isHidden\": false}', '2023-01-01 09:43:39', '2023-01-03 12:25:13'),
(5, 3, 4, 'Free', 'PHP', 'limited', 10, 0.00, 2, 'asdf', NULL, '[]', 'asdf', 0, '{\"isHidden\": false}', '2023-01-01 10:09:16', '2023-01-01 10:09:16'),
(6, 3, 4, 'Paid', 'Laravel', 'limited', 50, 10.00, 2, 'asdf', 1, '[]', 'asdf', 17, '{\"isHidden\": false}', '2023-01-02 09:26:31', '2023-01-05 09:18:27'),
(7, 3, 5, 'Paid', 'Gray Sutton', 'limited', 140, 5.00, 8, 'Id facilis earum ad', 1, '[]', 'Est molestiae repre', 2, '{\"isHidden\": false}', '2023-01-05 09:59:36', '2023-01-05 10:07:34'),
(8, 3, 6, 'Paid', 'Emelie Parisian', 'limited', 50, 12.00, 3, 'asfd', 1, '[]', 'sdfa', 8, '{\"isHidden\": false}', '2023-01-05 12:32:54', '2023-01-06 00:47:45');

-- --------------------------------------------------------

--
-- Table structure for table `event_views`
--

CREATE TABLE `event_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_list_id` bigint(20) UNSIGNED NOT NULL,
  `count` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_views`
--

INSERT INTO `event_views` (`id`, `event_list_id`, `count`, `created_at`, `updated_at`) VALUES
(1, 1, 12, '2022-12-30 10:50:14', '2022-12-30 16:24:23'),
(2, 2, 5, '2022-12-31 08:59:18', '2023-01-01 08:32:45'),
(3, 3, 7, '2023-01-01 09:46:32', '2023-01-03 12:24:56'),
(4, 4, 20, '2023-01-01 10:10:07', '2023-01-05 09:13:52'),
(5, 5, 3, '2023-01-05 09:59:46', '2023-01-05 22:08:13'),
(6, 6, 25, '2023-01-05 12:38:12', '2023-01-06 05:53:52');

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
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip_info` json DEFAULT NULL,
  `weekly_notice` tinyint(1) NOT NULL DEFAULT '0',
  `hourly_notice` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`id`, `firstName`, `lastName`, `email`, `phone`, `settings`, `created_at`, `updated_at`, `ip_info`, `weekly_notice`, `hourly_notice`) VALUES
(1, 'nasir', 'ullah khushi', 'entnasir23a@gmail.com', '223324', '{\"browser\": \"chrome\"}', '2022-12-30 08:19:22', '2023-01-06 05:57:18', '{\"ip\": \"37.111.194.194\", \"loc\": \"23.7260,90.4251\", \"org\": \"AS24389 GrameenPhone Ltd.\", \"city\": \"Dhaka\", \"postal\": \"1217\", \"readme\": \"https://ipinfo.io/missingauth\", \"region\": \"Dhaka\", \"country\": \"BD\", \"timezone\": \"Asia/Dhaka\"}', 0, 0),
(2, 'nas', 'rullah khushi', 'nasrullah23a@gmail.com', '23234', '{\"browser\": \"chrome\"}', '2023-01-01 09:24:25', '2023-01-06 04:38:01', '{\"ip\": \"37.111.194.194\", \"loc\": \"23.7260,90.4251\", \"org\": \"AS24389 GrameenPhone Ltd.\", \"city\": \"Dhaka\", \"postal\": \"1217\", \"readme\": \"https://ipinfo.io/missingauth\", \"region\": \"Dhaka\", \"country\": \"BD\", \"timezone\": \"Asia/Dhaka\"}', 0, 0),
(3, 'Muhib', NULL, 'muhibbullah611@gmail.com', '3435512002323', NULL, '2023-01-01 09:24:25', '2023-01-01 09:24:25', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foreign_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'gallery',
  `path` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `foreign_id`, `type`, `path`, `created_at`, `updated_at`) VALUES
(3, 1, 'banner', 'images\\banner-cba4f32752aeedbb6420fcea0db8672b-image.png', '2022-12-30 16:24:18', '2022-12-30 16:24:18'),
(5, 2, 'banner', 'images\\banner-3cbf84afa5bb61cb39a5b5c637b04eb2-pexels-craig-dennis-205421.jpg', '2023-01-01 08:40:30', '2023-01-01 08:40:30'),
(8, 3, 'banner', 'images\\banner-70482d73924d79cc1291d9f34c9f4a0c-pexels-andrea-piacquadio-840996.jpg', '2023-01-01 09:43:19', '2023-01-01 09:43:19'),
(9, 4, 'banner', 'images\\banner-b3c14330eda0157c4c992dbcb4ca8c17-Capture.PNG', '2023-01-01 10:08:56', '2023-01-01 10:08:56'),
(10, 5, 'banner', 'images\\banner-f140829d41a781cb7653271ea335d51c-pexels-eduardo-rosas-968631.jpg', '2023-01-05 09:59:20', '2023-01-05 09:59:20'),
(11, 6, 'banner', 'images\\banner-cb8bbaf470fb0fde04f2f25da31430f4-istockphoto-1385317854-612x612.jpg', '2023-01-05 12:32:02', '2023-01-05 12:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
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
(5, '2022_12_07_034502_create_categories_table', 1),
(6, '2022_12_07_035351_create_time_zones_table', 1),
(7, '2022_12_07_035730_create_m_events_table', 1),
(8, '2022_12_09_100430_create_tickets_table', 1),
(9, '2022_12_10_153130_create_discounts_table', 1),
(10, '2022_12_13_210046_create_event_lists_table', 1),
(11, '2022_12_14_141804_create_images_table', 1),
(12, '2022_12_14_202208_create_event_tickets_table', 1),
(13, '2022_12_15_130927_map_link', 1),
(14, '2022_12_15_205935_create_advertises_table', 1),
(15, '2022_12_17_123718_create_ticket_sales_table', 1),
(16, '2022_12_17_192517_create_site_settings_table', 1),
(17, '2022_12_19_061257_add_position_on_advertise_table', 1),
(18, '2022_12_20_211452_create_guests_table', 1),
(19, '2022_12_22_111028_create_ticket_designs_table', 1),
(20, '2022_12_22_184357_add_ip_info_to_guests_table', 1),
(21, '2022_12_23_203824_create_payment_details_table', 1),
(22, '2022_12_28_171947_create_ticket_numbers_table', 1),
(23, '2022_12_29_165817_add_uuid_to_ticket_sales_table', 1),
(25, '2022_12_30_164445_create_event_views_table', 2),
(28, '2022_12_30_184812_create_transactions_table', 3),
(29, '2022_12_30_201345_create_pages_table', 3),
(30, '2023_01_04_033628_create_jobs_table', 4),
(32, '2023_01_05_172816_add_notice_status_to_events_table', 5),
(33, '2023_01_06_094033_add_some_to_event_lists_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `m_events`
--

CREATE TABLE `m_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_tips` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eventType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eventCategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_zone` text COLLATE utf8mb4_unicode_ci,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_date` date NOT NULL,
  `end_time` time NOT NULL,
  `event_date_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` text COLLATE utf8mb4_unicode_ci,
  `instagram` text COLLATE utf8mb4_unicode_ci,
  `twitter` text COLLATE utf8mb4_unicode_ci,
  `facebook` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `settings` json DEFAULT NULL,
  `theme_id` int(11) NOT NULL DEFAULT '1',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` text COLLATE utf8mb4_unicode_ci,
  `map_link` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `image`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Imprint', 'imprint', '', 'Adipisci laudantium optio aut dolor. Atque rerum architecto velit iusto et qui. Corporis voluptatibus facere blanditiis voluptatem.', 0, '2023-01-01 08:34:18', '2023-01-03 12:36:42'),
(2, 'Data privacy', 'data-privacy', '', '<p>Nostrum nobis ex nobis ut repudiandae. Consequatur quidem optio nihil ut sed doloribus delectus perspiciatis. Nostrum nobis ex nobis ut repudiandae. Consequatur quidem optio nihil ut sed doloribus delectus perspiciatis. Nostrum nobis ex nobis ut repudiandae. Consequatur quidem optio nihil ut sed doloribus delectus perspiciatis. Nostrum nobis ex nobis ut repudiandae. Consequatur quidem optio nihil ut sed doloribus delectus perspiciatis.</p><p>&nbsp;</p><p>Nostrum nobis ex nobis ut repudiandae. Consequatur quidem optio nihil ut sed doloribus delectus perspiciatis.</p>', 0, '2023-01-01 08:34:18', '2023-01-05 14:06:58'),
(3, 'Terms & conditions', 'terms-conditions', '', 'Vel commodi necessitatibus eos ipsum quidem ut nisi a. Omnis in odit ea. Sit dolores velit vitae natus sit tempora quia sint.', 1, '2023-01-01 08:34:18', '2023-01-01 08:34:18');

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
('entnasir23a@gmail.com', '$2y$10$7.jOMKXKm35akKzDXieP6.Gkg.1..CdcS8veOE8ziyzE9.wgzP6Xu', '2023-01-02 14:50:32');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mpesa_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `user_id`, `bank_name`, `bank_number`, `account_name`, `paypal_info`, `stripe_info`, `mpesa_info`, `created_at`, `updated_at`) VALUES
(5, 3, NULL, NULL, NULL, 'super@gmail.com', NULL, NULL, '2023-01-05 09:26:56', '2023-01-05 09:26:56');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'commission', '3', NULL, '2022-12-30 10:23:04'),
(2, 'currency', '€', NULL, '2023-01-06 00:29:15'),
(3, 'home_banner_image', 'images/banner_63af106880575.png', NULL, '2022-12-30 10:23:04'),
(4, 'logo_image', 'images/Ticketprime_V2_Logo_dark-blue-dark-blue-brandname-transparent-background_63af1068829d0.png', NULL, '2022-12-30 10:23:04'),
(5, 'footer_logo_image', 'images/Ticketprime_V2_Logo_gold-white-brandname-transparent-background_63af106883f65.png', NULL, '2022-12-30 10:23:04'),
(6, 'home_banner_text', 'Exclusive events, priceless moments', NULL, '2022-12-30 10:23:04'),
(7, 'facebook_link', 'facebook.com', NULL, '2022-12-30 12:09:52'),
(8, 'twitter_link', 'twitter.com', NULL, '2022-12-30 12:09:52'),
(9, 'tiktok_link', NULL, NULL, '2022-12-30 10:23:04'),
(10, 'instagram_link', NULL, NULL, '2022-12-30 10:23:04'),
(11, 'youtube_link', NULL, NULL, '2022-12-30 10:23:04'),
(12, 'telegram_link', NULL, NULL, '2022-12-30 10:23:04'),
(13, 'fave_icon', 'images/Ticketprime_V2_Logo_white-white-brandname-transparent-background_63b7a10801af6.png', '2023-01-05 22:16:29', '2023-01-05 22:18:16'),
(14, 'copy_write', '© 2020 Karcis incorporated', '2023-01-05 22:21:47', '2023-01-05 22:21:47'),
(15, 'paypal_publish_key', NULL, '2023-01-05 22:28:09', '2023-01-06 06:13:17'),
(16, 'stripe_publish_key', NULL, '2023-01-05 22:36:55', '2023-01-06 06:13:17'),
(17, 'stripe_secret_key', NULL, '2023-01-05 22:36:55', '2023-01-06 06:13:17'),
(18, 'auth0_domain', NULL, '2023-01-05 22:36:55', '2023-01-06 06:13:17'),
(19, 'auth0_client_id', NULL, '2023-01-05 22:36:55', '2023-01-06 06:13:17');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `m_events_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_stock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_limit` int(11) NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `perks` json DEFAULT NULL,
  `isTransferFeesToGuest` tinyint(1) NOT NULL DEFAULT '0',
  `questions` json DEFAULT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_designs`
--

CREATE TABLE `ticket_designs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_ticket_id` bigint(20) UNSIGNED NOT NULL,
  `border_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#666666',
  `bg_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#FFFFFF',
  `text_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#000000',
  `sub_text_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#666666',
  `footer_text` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#666666',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_designs`
--

INSERT INTO `ticket_designs` (`id`, `event_ticket_id`, `border_color`, `bg_color`, `text_color`, `sub_text_color`, `footer_text`, `created_at`, `updated_at`) VALUES
(1, 1, '#666666', '#FFFFFF', '#000000', '#666666', '#666666', '2022-12-30 08:18:23', '2022-12-30 08:18:23'),
(2, 2, '#666666', '#FFFFFF', '#000000', '#666666', '#666666', '2022-12-30 08:18:46', '2022-12-30 08:18:46'),
(3, 3, '#666666', '#FFFFFF', '#000000', '#666666', '#666666', '2022-12-31 08:59:04', '2022-12-31 08:59:04'),
(4, 4, '#666666', '#FFFFFF', '#000000', '#666666', '#666666', '2023-01-01 09:43:39', '2023-01-01 09:43:39'),
(5, 5, '#666666', '#FFFFFF', '#000000', '#666666', '#666666', '2023-01-01 10:09:16', '2023-01-01 10:09:16'),
(6, 6, '#666666', '#FFFFFF', '#000000', '#666666', '#666666', '2023-01-02 09:26:31', '2023-01-02 09:26:31'),
(7, 7, '#666666', '#FFFFFF', '#000000', '#666666', '#666666', '2023-01-05 09:59:36', '2023-01-05 09:59:36'),
(8, 8, '#666666', '#FFFFFF', '#000000', '#666666', '#666666', '2023-01-05 12:32:54', '2023-01-05 12:32:54');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_numbers`
--

CREATE TABLE `ticket_numbers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guest_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_sale_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ticket_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_numbers`
--

INSERT INTO `ticket_numbers` (`id`, `guest_id`, `ticket_sale_id`, `ticket_number`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1PLDF1', 'used', NULL, '2022-12-30 13:21:05'),
(2, 1, 1, '19YYX2', NULL, NULL, NULL),
(3, 1, 1, '1VOQX3', NULL, NULL, NULL),
(4, 1, 1, '1NB894', NULL, NULL, NULL),
(5, 1, 1, '1UHO75', NULL, NULL, NULL),
(6, 1, 1, '1WW1Q6', NULL, NULL, NULL),
(7, 1, 1, '1YQCF7', NULL, NULL, NULL),
(8, 1, 1, '13CGH8', NULL, NULL, NULL),
(9, 1, 1, '177UI9', NULL, NULL, NULL),
(10, 1, 1, '1YLTQ10', NULL, NULL, NULL),
(11, 1, 1, '17QLV11', NULL, NULL, NULL),
(12, 1, 1, '15IPH12', NULL, NULL, NULL),
(13, 1, 1, '1PPY813', NULL, NULL, NULL),
(14, 1, 1, '1LJXL14', NULL, NULL, NULL),
(15, 1, 1, '1WR2A15', NULL, NULL, NULL),
(16, 1, 2, '23CUJ15', NULL, NULL, NULL),
(17, 1, 2, '2STWG16', NULL, NULL, NULL),
(18, 1, 2, '2HO3S17', NULL, NULL, NULL),
(19, 1, 3, '3AAJC18', NULL, NULL, NULL),
(20, 1, 3, '3C7XN19', NULL, NULL, NULL),
(21, 1, 3, '3NOMI20', NULL, NULL, NULL),
(22, 1, 3, '3XU9K21', NULL, NULL, NULL),
(23, 1, 3, '3XTMP22', NULL, NULL, NULL),
(24, 1, 3, '3SFMA23', NULL, NULL, NULL),
(25, 1, 3, '30BOW24', NULL, NULL, NULL),
(26, 1, 3, '3JAXZ25', NULL, NULL, NULL),
(27, 1, 3, '3QMLI26', NULL, NULL, NULL),
(28, 1, 3, '3ZFQU27', NULL, NULL, NULL),
(29, 1, 3, '3648G28', NULL, NULL, NULL),
(30, 1, 3, '3TZF329', NULL, NULL, NULL),
(31, 1, 3, '30Y7M30', NULL, NULL, NULL),
(32, 1, 3, '3DWDO31', NULL, NULL, NULL),
(33, 1, 3, '30ZWD32', NULL, NULL, NULL),
(34, 1, 4, '4B80633', NULL, NULL, NULL),
(35, 1, 4, '4ZRZG34', NULL, NULL, NULL),
(36, 1, 4, '4DMHR35', NULL, NULL, NULL),
(37, 1, 5, '576RF36', NULL, NULL, NULL),
(38, 1, 6, '6ZAH937', NULL, NULL, NULL),
(39, 1, 6, '6NWUH38', NULL, NULL, NULL),
(40, 1, 7, '72TSC39', NULL, NULL, NULL),
(41, 1, 8, '8NA8O40', NULL, NULL, NULL),
(42, 1, 8, '8UVFG41', NULL, NULL, NULL),
(43, 1, 9, '935UT42', NULL, NULL, NULL),
(44, 1, 10, '10ZQYR43', NULL, NULL, NULL),
(45, 1, 10, '10121944', NULL, NULL, NULL),
(46, 1, 11, '11X7C045', NULL, NULL, NULL),
(47, 1, 12, '12OTAX46', NULL, NULL, NULL),
(48, 1, 12, '12IABV47', NULL, NULL, NULL),
(49, 1, 13, '13FZN148', NULL, NULL, NULL),
(50, 1, 13, '13FQCR49', NULL, NULL, NULL),
(51, 1, 14, '147UAO50', NULL, NULL, NULL),
(52, 1, 15, '15Z4IO51', NULL, NULL, NULL),
(53, 1, 16, '16QWIL52', NULL, NULL, NULL),
(54, 1, 17, '17UZJS53', NULL, NULL, NULL),
(55, 1, 18, '18TJLA54', NULL, NULL, NULL),
(56, 1, 19, '19PKIS55', NULL, NULL, NULL),
(57, 1, 19, '19KCS956', NULL, NULL, NULL),
(58, 1, 20, '20EVYS57', NULL, NULL, NULL),
(59, 1, 21, '2196AG58', NULL, NULL, NULL),
(60, 1, 22, '22Z0OT59', NULL, NULL, NULL),
(61, 1, 23, '23HKUC60', NULL, NULL, NULL),
(62, 1, 24, '24JEJ561', NULL, NULL, NULL),
(63, 1, 25, '25T11Z62', NULL, NULL, NULL),
(64, 1, 25, '254F0F63', NULL, NULL, NULL),
(65, 1, 26, '26WXOX64', NULL, NULL, NULL),
(66, 1, 26, '267AMQ65', NULL, NULL, NULL),
(67, 1, 27, '27GZ3H66', NULL, NULL, NULL),
(68, 1, 27, '27JMRK67', NULL, NULL, NULL),
(69, 1, 28, '28KVZH68', NULL, NULL, NULL),
(70, 1, 28, '282Z4O69', NULL, NULL, NULL),
(71, 1, 29, '2928MI70', NULL, NULL, NULL),
(72, 1, 30, '30T7WW71', NULL, NULL, NULL),
(73, 2, 31, '3102PI72', NULL, NULL, NULL),
(74, 2, 32, '32ZKTE73', NULL, NULL, NULL),
(75, 2, 33, '33EOR674', NULL, NULL, NULL),
(76, 2, 34, '34X3F375', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_sales`
--

CREATE TABLE `ticket_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organizer_id` int(10) UNSIGNED DEFAULT NULL,
  `guest_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `commission` double(8,2) NOT NULL DEFAULT '0.00',
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` json DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'complete',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sales_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_sales`
--

INSERT INTO `ticket_sales` (`id`, `organizer_id`, `guest_id`, `ticket_id`, `ticket_type`, `quantity`, `commission`, `price`, `payment_method`, `settings`, `status`, `created_at`, `updated_at`, `sales_id`) VALUES
(1, 3, 1, 1, 'Paid', 15, 0.00, 5.00, 'Hand Cash', NULL, 'complete', '2022-12-30 08:19:30', '2022-12-30 08:19:30', '981ad438-15fd-44a2-98fa-fc6d2a61e16f'),
(2, 3, 1, 2, 'Free', 3, 0.00, 0.00, 'Hand Cash', NULL, 'complete', '2022-12-30 08:19:30', '2022-12-30 08:19:30', '981ad438-77e6-4d08-a4f7-da666da0bb16'),
(3, 3, 1, 1, 'Paid', 15, 0.00, 5.00, 'Hand Cash', NULL, 'complete', '2022-12-30 08:28:22', '2022-12-30 08:28:22', '981ad763-a7a1-4477-bca8-cfca55e126d2'),
(4, 3, 1, 2, 'Free', 3, 0.00, 0.00, 'Hand Cash', NULL, 'complete', '2022-12-30 08:28:22', '2022-12-30 08:28:22', '981ad763-be11-4d15-8e14-5153f05f522b'),
(5, 3, 1, 1, 'Paid', 1, 0.00, 5.00, 'Hand Cash', NULL, 'complete', '2022-12-30 10:23:39', '2022-12-30 10:23:39', '981b009f-2591-4f08-b396-d392c18e8f9a'),
(6, 3, 1, 2, 'Free', 2, 0.00, 0.00, 'Hand Cash', NULL, 'complete', '2022-12-30 10:23:39', '2022-12-30 10:23:39', '981b009f-3a35-4acf-94fc-4d06e5f21036'),
(7, 3, 1, 1, 'Paid', 1, 0.00, 5.00, 'Hand Cash', NULL, 'complete', '2022-12-30 10:24:09', '2022-12-30 10:24:09', '981b00cd-2eb9-4f79-8d52-2eb7d2a84975'),
(8, 3, 1, 2, 'Free', 2, 0.00, 0.00, 'Hand Cash', NULL, 'complete', '2022-12-30 10:24:09', '2022-12-30 10:24:09', '981b00cd-4294-4f23-839d-7b2784cce362'),
(9, 3, 1, 1, 'Paid', 1, 0.00, 5.00, 'Hand Cash', NULL, 'complete', '2022-12-30 10:25:59', '2022-12-30 10:25:59', '981b0174-b9e3-431b-84de-6e33e26ab094'),
(10, 3, 1, 2, 'Free', 2, 0.00, 0.00, 'Hand Cash', NULL, 'complete', '2022-12-30 10:25:59', '2022-12-30 10:25:59', '981b0174-cc39-45b0-a198-b21273fc1efe'),
(11, 3, 1, 1, 'Paid', 1, 0.00, 5.00, 'Hand Cash', NULL, 'complete', '2022-12-30 10:26:51', '2022-12-30 10:26:51', '981b01c4-03a3-4cf8-8603-ae1d0c764195'),
(12, 3, 1, 2, 'Free', 2, 0.00, 0.00, 'Hand Cash', NULL, 'complete', '2022-12-30 10:26:51', '2022-12-30 10:26:51', '981b01c4-16ce-4504-8df1-cdfba2e9b725'),
(13, 3, 1, 6, 'Paid', 2, 0.00, 10.00, 'Hand Cash', NULL, 'complete', '2023-01-02 11:40:02', '2023-01-02 11:40:02', '982124e3-4c5a-4cec-8f60-989abb968e23'),
(14, 3, 1, 4, 'Paid', 1, 0.00, 50.00, 'Hand Cash', NULL, 'complete', '2023-01-03 12:25:13', '2023-01-03 12:25:13', '98233807-3743-481b-bd9c-99fc33e7da6c'),
(15, 3, 1, 6, 'Paid', 1, 0.00, 10.00, 'Hand Cash', NULL, 'complete', '2023-01-03 21:56:18', '2023-01-03 21:56:18', '98240444-4133-4aab-9535-eedb42852fb0'),
(16, 3, 1, 6, 'Paid', 1, 0.00, 10.00, 'Hand Cash', NULL, 'complete', '2023-01-03 21:56:49', '2023-01-03 21:56:49', '98240473-b481-4509-94bb-21f3185dbdd7'),
(17, 3, 1, 6, 'Paid', 1, 0.00, 10.00, 'Hand Cash', NULL, 'complete', '2023-01-04 09:45:54', '2023-01-04 09:45:54', '9825020a-6e5b-45e8-937c-ada666c5e395'),
(18, 3, 1, 6, 'Paid', 1, 0.00, 10.00, 'Hand Cash', NULL, 'complete', '2023-01-04 09:46:43', '2023-01-04 09:46:43', '98250255-b7c8-4b82-b08e-47d5cb19cde9'),
(19, 3, 1, 6, 'Paid', 2, 0.00, 10.00, 'Hand Cash', NULL, 'complete', '2023-01-04 13:26:55', '2023-01-04 13:26:55', '98255114-f52f-423d-84bd-567ef4309ea2'),
(20, 3, 1, 6, 'Paid', 1, 0.00, 10.00, 'Hand Cash', NULL, 'complete', '2023-01-04 15:13:19', '2023-01-04 15:13:19', '98257722-3cc5-4e1b-9bc8-3667b1ecc7c3'),
(21, 3, 1, 6, 'Paid', 1, 0.00, 10.00, 'Hand Cash', NULL, 'complete', '2023-01-04 16:13:51', '2023-01-04 16:13:51', '98258cc8-fe62-4d66-8ea2-ad63cfe3575b'),
(22, 3, 1, 6, 'Paid', 1, 0.00, 10.00, 'Hand Cash', NULL, 'complete', '2023-01-04 16:21:01', '2023-01-04 16:21:01', '98258f58-89c7-41ea-8282-dbebbaa57b75'),
(23, 3, 1, 6, 'Paid', 1, 0.00, 10.00, 'Hand Cash', NULL, 'complete', '2023-01-05 08:51:13', '2023-01-05 08:51:13', '9826f178-0ba4-4772-9606-972ad6ec82fe'),
(24, 3, 1, 6, 'Paid', 1, 0.00, 10.00, 'Hand Cash', NULL, 'complete', '2023-01-05 08:56:07', '2023-01-05 08:56:07', '9826f338-975a-4427-b270-6716b57f4074'),
(25, 3, 1, 6, 'Paid', 2, 0.00, 10.00, 'Hand Cash', NULL, 'complete', '2023-01-05 09:12:18', '2023-01-05 09:12:18', '9826f902-4892-4510-b116-bd49f84e24b2'),
(26, 3, 1, 6, 'Paid', 2, 0.00, 10.00, 'Hand Cash', NULL, 'complete', '2023-01-05 09:18:27', '2023-01-05 09:18:27', '9826fb35-bac5-410b-a406-10511dc847e1'),
(27, 3, 1, 7, 'Paid', 2, 3.00, 5.00, 'Hand Cash', NULL, 'complete', '2023-01-05 10:07:34', '2023-01-05 10:07:34', '98270cc5-ed33-48c8-8464-dfd1e82d81e9'),
(28, 3, 1, 8, 'Paid', 2, 3.00, 12.00, 'Hand Cash', NULL, 'complete', '2023-01-05 12:41:28', '2023-01-05 12:41:28', '982743ce-cac3-40df-96db-d4e6505f2520'),
(29, 3, 1, 8, 'Paid', 1, 3.00, 12.00, 'Hand Cash', NULL, 'complete', '2023-01-05 12:45:33', '2023-01-05 12:45:33', '98274545-89b7-42c1-b567-486127fe6c27'),
(30, 3, 1, 8, 'Paid', 1, 3.00, 12.00, 'Hand Cash', NULL, 'complete', '2023-01-05 12:48:54', '2023-01-05 12:48:54', '98274678-cef7-4a53-8a67-33787f0a0136'),
(31, 3, 2, 8, 'Paid', 1, 3.00, 12.00, 'Hand Cash', NULL, 'complete', '2023-01-05 22:54:10', '2023-01-05 22:54:10', '98281eee-32c8-462f-9894-44ac6cf8f54c'),
(32, 3, 2, 8, 'Paid', 1, 3.00, 12.00, 'Hand Cash', NULL, 'complete', '2023-01-05 22:58:36', '2023-01-05 22:58:36', '98282083-d4ab-4b34-924b-2691bf50f5e9'),
(33, 3, 2, 8, 'Paid', 1, 3.00, 12.00, 'Hand Cash', NULL, 'complete', '2023-01-06 00:46:47', '2023-01-06 00:46:47', '98284735-24e0-42e9-b4b8-23e173a59f8f'),
(34, 3, 2, 8, 'Paid', 1, 3.00, 12.00, 'Hand Cash', NULL, 'complete', '2023-01-06 00:47:45', '2023-01-06 00:47:45', '9828478c-6e22-48eb-a4d9-6f8baeace197');

-- --------------------------------------------------------

--
-- Table structure for table `time_zones`
--

CREATE TABLE `time_zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event_list_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mpesa_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `event_list_id`, `amount`, `note`, `bank_name`, `bank_number`, `account_name`, `paypal_info`, `stripe_info`, `mpesa_info`, `first_name`, `last_name`, `email`, `phone`, `status`, `settings`, `created_at`, `updated_at`) VALUES
(4, 3, 5, 4.00, NULL, NULL, NULL, NULL, 'super@gmail.com', NULL, NULL, 'Organizer', 'User', 'org@gmail.com', NULL, 'paid', NULL, '2023-01-05 12:52:15', '2023-01-05 12:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interests` json DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'organizer' COMMENT 'admin/clients/organizer',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `interests`, `email`, `phone`, `email_verified_at`, `password`, `type`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'User', NULL, 'entnasir23a@gmail.com', NULL, '2022-12-30 08:17:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', 'Zpp6SUfwUlHPNPVmTGyXBqVTL8obnjAOSXNHKXBpnXmlG5gxi8yoXfoNfT7m', NULL, '2022-12-30 08:17:15', '2022-12-30 08:17:15'),
(2, 'Client', 'User', NULL, 'client@gmail.com', NULL, '2022-12-30 08:17:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'clients', 'DVb9ew0KZU', NULL, '2022-12-30 08:17:15', '2022-12-30 08:17:15'),
(3, 'Organizer', 'User', NULL, 'org@gmail.com', NULL, '2022-12-30 08:17:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'organizer', '9zUUQPoA5GsZPsZDwtTvsM4n6MuuEJZZvd7tcNqQDhi2Akg6Ast3YOoQxOJ2', NULL, '2022-12-30 08:17:15', '2022-12-30 08:17:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertises`
--
ALTER TABLE `advertises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discounts_m_event_id_foreign` (`m_event_id`);

--
-- Indexes for table `event_lists`
--
ALTER TABLE `event_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_tickets`
--
ALTER TABLE `event_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_views`
--
ALTER TABLE `event_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_views_event_list_id_foreign` (`event_list_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_events`
--
ALTER TABLE `m_events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `m_events_slug_unique` (`slug`),
  ADD UNIQUE KEY `m_events_custom_url_unique` (`custom_url`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_details_user_id_foreign` (`user_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `site_settings_name_unique` (`name`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_m_events_id_foreign` (`m_events_id`);

--
-- Indexes for table `ticket_designs`
--
ALTER TABLE `ticket_designs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_designs_event_ticket_id_foreign` (`event_ticket_id`);

--
-- Indexes for table `ticket_numbers`
--
ALTER TABLE `ticket_numbers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_numbers_guest_id_foreign` (`guest_id`),
  ADD KEY `ticket_numbers_ticket_sale_id_foreign` (`ticket_sale_id`);

--
-- Indexes for table `ticket_sales`
--
ALTER TABLE `ticket_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_zones`
--
ALTER TABLE `time_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_event_list_id_foreign` (`event_list_id`);

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
-- AUTO_INCREMENT for table `advertises`
--
ALTER TABLE `advertises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_lists`
--
ALTER TABLE `event_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `event_tickets`
--
ALTER TABLE `event_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `event_views`
--
ALTER TABLE `event_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `m_events`
--
ALTER TABLE `m_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_designs`
--
ALTER TABLE `ticket_designs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ticket_numbers`
--
ALTER TABLE `ticket_numbers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `ticket_sales`
--
ALTER TABLE `ticket_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `time_zones`
--
ALTER TABLE `time_zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `discounts`
--
ALTER TABLE `discounts`
  ADD CONSTRAINT `discounts_m_event_id_foreign` FOREIGN KEY (`m_event_id`) REFERENCES `m_events` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `event_views`
--
ALTER TABLE `event_views`
  ADD CONSTRAINT `event_views_event_list_id_foreign` FOREIGN KEY (`event_list_id`) REFERENCES `event_lists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD CONSTRAINT `payment_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_m_events_id_foreign` FOREIGN KEY (`m_events_id`) REFERENCES `m_events` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ticket_designs`
--
ALTER TABLE `ticket_designs`
  ADD CONSTRAINT `ticket_designs_event_ticket_id_foreign` FOREIGN KEY (`event_ticket_id`) REFERENCES `event_tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ticket_numbers`
--
ALTER TABLE `ticket_numbers`
  ADD CONSTRAINT `ticket_numbers_guest_id_foreign` FOREIGN KEY (`guest_id`) REFERENCES `guests` (`id`),
  ADD CONSTRAINT `ticket_numbers_ticket_sale_id_foreign` FOREIGN KEY (`ticket_sale_id`) REFERENCES `ticket_sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_event_list_id_foreign` FOREIGN KEY (`event_list_id`) REFERENCES `event_lists` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
