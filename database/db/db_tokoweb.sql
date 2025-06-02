-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2025 at 11:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tokoweb`
--

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
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_10_31_061811_create_menu_table', 1),
(4, '2022_11_01_041110_create_table_role', 1),
(5, '2022_11_01_083314_create_table_user', 1),
(6, '2022_11_03_023905_create_table_submenu', 1),
(7, '2022_11_03_064417_create_tbl_akses', 1),
(8, '2022_11_08_024215_create_tbl_web', 1),
(9, '2022_11_15_131148_create_tbl_jenisbarang', 2),
(10, '2022_11_15_173700_create_tbl_satuan', 3),
(11, '2022_11_15_180434_create_tbl_merk', 4),
(12, '2022_11_16_120018_create_tbl_appreance', 5),
(13, '2022_11_25_141731_create_tbl_barang', 6),
(14, '2022_11_26_011349_create_tbl_customer', 7),
(16, '2022_11_28_151108_create_tbl_barangmasuk', 8),
(17, '2022_11_30_115904_create_tbl_barangkeluar', 9);

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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_akses`
--

CREATE TABLE `tbl_akses` (
  `akses_id` int(10) UNSIGNED NOT NULL,
  `menu_id` varchar(255) DEFAULT NULL,
  `submenu_id` varchar(255) DEFAULT NULL,
  `othermenu_id` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) NOT NULL,
  `akses_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_akses`
--

INSERT INTO `tbl_akses` (`akses_id`, `menu_id`, `submenu_id`, `othermenu_id`, `role_id`, `akses_type`, `created_at`, `updated_at`) VALUES
(296, '1667444041', NULL, NULL, '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(297, '1667444041', NULL, NULL, '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(298, '1667444041', NULL, NULL, '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(299, '1667444041', NULL, NULL, '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(300, '1668509889', NULL, NULL, '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(301, '1668509889', NULL, NULL, '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(302, '1668509889', NULL, NULL, '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(303, '1668509889', NULL, NULL, '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(304, '1668510437', NULL, NULL, '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(305, '1668510437', NULL, NULL, '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(306, '1668510437', NULL, NULL, '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(307, '1668510437', NULL, NULL, '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(308, '1668510568', NULL, NULL, '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(309, '1668510568', NULL, NULL, '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(310, '1668510568', NULL, NULL, '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(311, '1668510568', NULL, NULL, '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(312, NULL, '9', NULL, '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(313, NULL, '9', NULL, '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(314, NULL, '9', NULL, '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(315, NULL, '9', NULL, '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(320, NULL, '17', NULL, '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(321, NULL, '17', NULL, '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(322, NULL, '17', NULL, '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(323, NULL, '17', NULL, '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(324, NULL, '10', NULL, '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(325, NULL, '10', NULL, '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(326, NULL, '10', NULL, '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(327, NULL, '10', NULL, '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(332, NULL, '18', NULL, '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(333, NULL, '18', NULL, '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(334, NULL, '18', NULL, '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(335, NULL, '18', NULL, '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(336, NULL, '19', NULL, '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(337, NULL, '19', NULL, '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(338, NULL, '19', NULL, '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(339, NULL, '19', NULL, '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(340, NULL, '20', NULL, '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(341, NULL, '20', NULL, '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(342, NULL, '20', NULL, '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(343, NULL, '20', NULL, '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(344, NULL, NULL, '1', '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(345, NULL, NULL, '2', '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(346, NULL, NULL, '3', '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(347, NULL, NULL, '4', '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(349, NULL, NULL, '6', '2', 'view', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(350, NULL, NULL, '1', '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(351, NULL, NULL, '2', '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(352, NULL, NULL, '3', '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(353, NULL, NULL, '4', '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(354, NULL, NULL, '5', '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(355, NULL, NULL, '6', '2', 'create', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(356, NULL, NULL, '1', '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(357, NULL, NULL, '2', '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(358, NULL, NULL, '3', '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(359, NULL, NULL, '4', '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(360, NULL, NULL, '5', '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(361, NULL, NULL, '6', '2', 'update', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(362, NULL, NULL, '1', '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(363, NULL, NULL, '2', '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(364, NULL, NULL, '3', '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(365, NULL, NULL, '4', '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(366, NULL, NULL, '5', '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(367, NULL, NULL, '6', '2', 'delete', '2022-11-24 06:04:11', '2022-11-24 06:04:11'),
(368, '1667444041', NULL, NULL, '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(369, '1667444041', NULL, NULL, '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(370, '1667444041', NULL, NULL, '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(371, '1667444041', NULL, NULL, '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(372, '1668509889', NULL, NULL, '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(373, '1668509889', NULL, NULL, '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(374, '1668509889', NULL, NULL, '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(375, '1668509889', NULL, NULL, '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(376, '1668510437', NULL, NULL, '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(377, '1668510437', NULL, NULL, '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(378, '1668510437', NULL, NULL, '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(379, '1668510437', NULL, NULL, '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(381, '1668510568', NULL, NULL, '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(382, '1668510568', NULL, NULL, '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(383, '1668510568', NULL, NULL, '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(384, NULL, '9', NULL, '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(385, NULL, '9', NULL, '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(386, NULL, '9', NULL, '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(387, NULL, '9', NULL, '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(392, NULL, '17', NULL, '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(393, NULL, '17', NULL, '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(394, NULL, '17', NULL, '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(395, NULL, '17', NULL, '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(396, NULL, '10', NULL, '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(397, NULL, '10', NULL, '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(398, NULL, '10', NULL, '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(399, NULL, '10', NULL, '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(404, NULL, '18', NULL, '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(405, NULL, '18', NULL, '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(406, NULL, '18', NULL, '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(407, NULL, '18', NULL, '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(408, NULL, '19', NULL, '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(409, NULL, '19', NULL, '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(410, NULL, '19', NULL, '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(411, NULL, '19', NULL, '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(412, NULL, '20', NULL, '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(413, NULL, '20', NULL, '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(414, NULL, '20', NULL, '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(415, NULL, '20', NULL, '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(417, NULL, NULL, '2', '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(418, NULL, NULL, '3', '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(419, NULL, NULL, '4', '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(420, NULL, NULL, '5', '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(421, NULL, NULL, '6', '3', 'view', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(422, NULL, NULL, '1', '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(423, NULL, NULL, '2', '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(424, NULL, NULL, '3', '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(425, NULL, NULL, '4', '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(426, NULL, NULL, '5', '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(427, NULL, NULL, '6', '3', 'create', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(428, NULL, NULL, '1', '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(429, NULL, NULL, '2', '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(430, NULL, NULL, '3', '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(431, NULL, NULL, '4', '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(432, NULL, NULL, '5', '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(433, NULL, NULL, '6', '3', 'update', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(434, NULL, NULL, '1', '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(435, NULL, NULL, '2', '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(436, NULL, NULL, '3', '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(437, NULL, NULL, '4', '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(438, NULL, NULL, '5', '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(439, NULL, NULL, '6', '3', 'delete', '2022-11-24 06:08:11', '2022-11-24 06:08:11'),
(444, '1669390641', NULL, NULL, '2', 'view', '2022-11-25 08:38:23', '2022-11-25 08:38:23'),
(445, '1669390641', NULL, NULL, '2', 'create', '2022-11-25 08:38:31', '2022-11-25 08:38:31'),
(446, '1669390641', NULL, NULL, '2', 'update', '2022-11-25 08:38:31', '2022-11-25 08:38:31'),
(447, '1669390641', NULL, NULL, '2', 'delete', '2022-11-25 08:38:32', '2022-11-25 08:38:32'),
(448, '1669390641', NULL, NULL, '3', 'view', '2022-11-25 08:38:49', '2022-11-25 08:38:49'),
(449, '1669390641', NULL, NULL, '3', 'create', '2022-11-25 08:38:55', '2022-11-25 08:38:55'),
(450, '1669390641', NULL, NULL, '3', 'update', '2022-11-25 08:38:55', '2022-11-25 08:38:55'),
(451, '1669390641', NULL, NULL, '3', 'delete', '2022-11-25 08:38:57', '2022-11-25 08:38:57'),
(488, '1667444041', NULL, NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(489, '1667444041', NULL, NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(490, '1667444041', NULL, NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(491, '1667444041', NULL, NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(493, '1668509889', NULL, NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(494, '1668509889', NULL, NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(495, '1668509889', NULL, NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(497, '1669390641', NULL, NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(498, '1669390641', NULL, NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(499, '1669390641', NULL, NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(501, '1668510437', NULL, NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(502, '1668510437', NULL, NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(503, '1668510437', NULL, NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(504, '1668510568', NULL, NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(505, '1668510568', NULL, NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(506, '1668510568', NULL, NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(507, '1668510568', NULL, NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(508, NULL, '9', NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(509, NULL, '9', NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(510, NULL, '9', NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(511, NULL, '9', NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(512, NULL, '17', NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(513, NULL, '17', NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(514, NULL, '17', NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(515, NULL, '17', NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(520, NULL, '10', NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(521, NULL, '10', NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(522, NULL, '10', NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(523, NULL, '10', NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(524, NULL, '18', NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(525, NULL, '18', NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(526, NULL, '18', NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(527, NULL, '18', NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(532, NULL, '19', NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(533, NULL, '19', NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(534, NULL, '19', NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(535, NULL, '19', NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(540, NULL, '20', NULL, '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(541, NULL, '20', NULL, '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(542, NULL, '20', NULL, '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(543, NULL, '20', NULL, '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(545, NULL, NULL, '2', '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(546, NULL, NULL, '3', '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(547, NULL, NULL, '4', '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(548, NULL, NULL, '5', '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(549, NULL, NULL, '6', '4', 'view', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(550, NULL, NULL, '1', '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(551, NULL, NULL, '2', '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(552, NULL, NULL, '3', '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(553, NULL, NULL, '4', '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(554, NULL, NULL, '5', '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(555, NULL, NULL, '6', '4', 'create', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(556, NULL, NULL, '1', '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(557, NULL, NULL, '2', '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(558, NULL, NULL, '3', '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(559, NULL, NULL, '4', '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(560, NULL, NULL, '5', '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(561, NULL, NULL, '6', '4', 'update', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(562, NULL, NULL, '1', '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(563, NULL, NULL, '2', '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(564, NULL, NULL, '3', '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(565, NULL, NULL, '4', '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(566, NULL, NULL, '5', '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(567, NULL, NULL, '6', '4', 'delete', '2022-12-06 02:34:31', '2022-12-06 02:34:31'),
(664, '1667444041', NULL, NULL, '1', 'view', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(665, '1667444041', NULL, NULL, '1', 'create', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(666, '1667444041', NULL, NULL, '1', 'update', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(667, '1667444041', NULL, NULL, '1', 'delete', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(668, '1668509889', NULL, NULL, '1', 'view', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(669, '1668509889', NULL, NULL, '1', 'create', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(670, '1668509889', NULL, NULL, '1', 'update', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(671, '1668509889', NULL, NULL, '1', 'delete', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(672, '1669390641', NULL, NULL, '1', 'view', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(673, '1669390641', NULL, NULL, '1', 'create', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(674, '1669390641', NULL, NULL, '1', 'update', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(675, '1669390641', NULL, NULL, '1', 'delete', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(676, '1668510437', NULL, NULL, '1', 'view', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(677, '1668510437', NULL, NULL, '1', 'create', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(678, '1668510437', NULL, NULL, '1', 'update', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(679, '1668510437', NULL, NULL, '1', 'delete', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(680, '1668510568', NULL, NULL, '1', 'view', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(681, '1668510568', NULL, NULL, '1', 'create', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(682, '1668510568', NULL, NULL, '1', 'update', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(683, '1668510568', NULL, NULL, '1', 'delete', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(688, NULL, '9', NULL, '1', 'view', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(689, NULL, '9', NULL, '1', 'create', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(690, NULL, '9', NULL, '1', 'update', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(691, NULL, '9', NULL, '1', 'delete', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(692, NULL, '17', NULL, '1', 'view', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(693, NULL, '17', NULL, '1', 'create', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(694, NULL, '17', NULL, '1', 'update', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(695, NULL, '17', NULL, '1', 'delete', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(696, NULL, '28', NULL, '1', 'view', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(697, NULL, '28', NULL, '1', 'create', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(698, NULL, '28', NULL, '1', 'update', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(699, NULL, '28', NULL, '1', 'delete', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(700, NULL, '10', NULL, '1', 'view', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(701, NULL, '10', NULL, '1', 'create', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(702, NULL, '10', NULL, '1', 'update', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(703, NULL, '10', NULL, '1', 'delete', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(704, NULL, '18', NULL, '1', 'view', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(705, NULL, '18', NULL, '1', 'create', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(706, NULL, '18', NULL, '1', 'update', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(707, NULL, '18', NULL, '1', 'delete', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(708, NULL, '29', NULL, '1', 'view', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(709, NULL, '29', NULL, '1', 'create', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(710, NULL, '29', NULL, '1', 'update', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(711, NULL, '29', NULL, '1', 'delete', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(712, NULL, '19', NULL, '1', 'view', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(713, NULL, '19', NULL, '1', 'create', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(714, NULL, '19', NULL, '1', 'update', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(715, NULL, '19', NULL, '1', 'delete', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(716, NULL, '30', NULL, '1', 'view', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(717, NULL, '30', NULL, '1', 'create', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(718, NULL, '30', NULL, '1', 'update', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(719, NULL, '30', NULL, '1', 'delete', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(720, NULL, '20', NULL, '1', 'view', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(721, NULL, '20', NULL, '1', 'create', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(722, NULL, '20', NULL, '1', 'update', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(723, NULL, '20', NULL, '1', 'delete', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(724, NULL, NULL, '1', '1', 'view', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(725, NULL, NULL, '2', '1', 'view', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(726, NULL, NULL, '3', '1', 'view', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(727, NULL, NULL, '4', '1', 'view', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(728, NULL, NULL, '5', '1', 'view', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(729, NULL, NULL, '6', '1', 'view', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(730, NULL, NULL, '1', '1', 'create', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(731, NULL, NULL, '2', '1', 'create', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(732, NULL, NULL, '3', '1', 'create', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(733, NULL, NULL, '4', '1', 'create', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(734, NULL, NULL, '5', '1', 'create', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(735, NULL, NULL, '6', '1', 'create', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(736, NULL, NULL, '1', '1', 'update', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(737, NULL, NULL, '2', '1', 'update', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(738, NULL, NULL, '3', '1', 'update', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(739, NULL, NULL, '4', '1', 'update', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(740, NULL, NULL, '5', '1', 'update', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(741, NULL, NULL, '6', '1', 'update', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(742, NULL, NULL, '1', '1', 'delete', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(743, NULL, NULL, '2', '1', 'delete', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(744, NULL, NULL, '3', '1', 'delete', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(745, NULL, NULL, '4', '1', 'delete', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(746, NULL, NULL, '5', '1', 'delete', '2025-04-28 10:28:10', '2025-04-28 10:28:10'),
(747, NULL, NULL, '6', '1', 'delete', '2025-04-28 10:28:10', '2025-04-28 10:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appreance`
--

CREATE TABLE `tbl_appreance` (
  `appreance_id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `appreance_layout` varchar(255) DEFAULT NULL,
  `appreance_theme` varchar(255) DEFAULT NULL,
  `appreance_menu` varchar(255) DEFAULT NULL,
  `appreance_header` varchar(255) DEFAULT NULL,
  `appreance_sidestyle` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_appreance`
--

INSERT INTO `tbl_appreance` (`appreance_id`, `user_id`, `appreance_layout`, `appreance_theme`, `appreance_menu`, `appreance_header`, `appreance_sidestyle`, `created_at`, `updated_at`) VALUES
(2, '1', 'sidebar-mini', 'dark-mode', 'dark-menu', 'dark-header', 'default-menu', '2022-11-22 02:45:47', '2025-04-24 10:33:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `barang_id` int(255) NOT NULL,
  `jenisbarang_id` varchar(255) DEFAULT NULL,
  `satuan_id` varchar(255) DEFAULT NULL,
  `merk_id` varchar(255) DEFAULT NULL,
  `barang_kode` varchar(255) NOT NULL,
  `barang_nama` varchar(255) NOT NULL,
  `barang_slug` varchar(255) DEFAULT NULL,
  `barang_harga` varchar(255) NOT NULL,
  `barang_stok` varchar(255) NOT NULL,
  `barang_gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`barang_id`, `jenisbarang_id`, `satuan_id`, `merk_id`, `barang_kode`, `barang_nama`, `barang_slug`, `barang_harga`, `barang_stok`, `barang_gambar`, `created_at`, `updated_at`) VALUES
(5, '12', '7', '2', 'BRG-1669390175622', 'Motherboard', 'motherboard', '4000000', '0', 'image.png', '2022-11-25 08:30:12', '2022-11-25 08:30:12'),
(6, '13', '1', '7', 'BRG-1669390220236', 'Baut 24mm', 'baut-24mm', '1000000', '0', 'image.png', '2022-11-25 08:30:50', '2022-11-29 07:30:37'),
(8, '13', '7', '2', 'BRG-1745514943537', 'Walter White', 'walter-white', '10000', '0', 'D8YOMBGJ1UNh4eC7Q5Cc5YfOJKMB9YVDtmXLZrql.png', '2025-04-24 10:16:04', '2025-04-24 10:16:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barangkeluar`
--

CREATE TABLE `tbl_barangkeluar` (
  `bk_id` int(10) UNSIGNED NOT NULL,
  `bk_kode` varchar(255) NOT NULL,
  `barang_kode` varchar(255) NOT NULL,
  `bk_tanggal` varchar(255) NOT NULL,
  `bk_tujuan` varchar(255) DEFAULT NULL,
  `bk_jumlah` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_barangkeluar`
--

INSERT INTO `tbl_barangkeluar` (`bk_id`, `bk_kode`, `barang_kode`, `bk_tanggal`, `bk_tujuan`, `bk_jumlah`, `created_at`, `updated_at`) VALUES
(2, 'BK-1669811950758', 'BRG-1669390220236', '2025-04-15', 'Gudang Tasikmalaya', '20', '2022-11-30 05:39:22', '2025-05-02 01:35:56'),
(3, 'BK-1669812439198', 'BRG-1669390175622', '2025-04-15', 'Gudang Prindapan', '30', '2022-11-30 05:47:39', '2025-05-02 01:35:35'),
(4, 'BK-1746176511416', 'BRG-1745514943537', '2025-05-01', 'toko hijau', '14', '2025-05-02 02:02:15', '2025-05-02 02:02:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barangmasuk`
--

CREATE TABLE `tbl_barangmasuk` (
  `bm_id` int(10) UNSIGNED NOT NULL,
  `bm_kode` varchar(255) NOT NULL,
  `barang_kode` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `bm_tanggal` varchar(255) NOT NULL,
  `bm_jumlah` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_barangmasuk`
--

INSERT INTO `tbl_barangmasuk` (`bm_id`, `bm_kode`, `barang_kode`, `customer_id`, `bm_tanggal`, `bm_jumlah`, `created_at`, `updated_at`) VALUES
(1, 'BM-1669730554623', 'BRG-1669390220236', '2', '2022-11-01', '50', '2022-11-29 07:02:43', '2022-11-29 07:20:13'),
(2, 'BM-1669731639801', 'BRG-1669390175622', '2', '2022-11-30', '10', '2022-11-29 07:20:55', '2022-11-29 07:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_nama` varchar(255) NOT NULL,
  `customer_slug` varchar(255) NOT NULL,
  `customer_alamat` text DEFAULT NULL,
  `customer_notelp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_nama`, `customer_slug`, `customer_alamat`, `customer_notelp`, `created_at`, `updated_at`) VALUES
(2, 'Nohea Jethro Jonathan', 'nohea-jethro-jonathan', 'New Eridu', '082139127997', '2022-11-25 18:36:34', '2025-03-20 22:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hpp`
--

CREATE TABLE `tbl_hpp` (
  `hpp_id` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `barang_kode` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_beli` decimal(10,2) NOT NULL,
  `total_hpp` decimal(12,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenisbarang`
--

CREATE TABLE `tbl_jenisbarang` (
  `jenisbarang_id` int(255) UNSIGNED NOT NULL,
  `jenisbarang_nama` varchar(255) NOT NULL,
  `jenisbarang_slug` varchar(255) NOT NULL,
  `jenisbarang_ket` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_jenisbarang`
--

INSERT INTO `tbl_jenisbarang` (`jenisbarang_id`, `jenisbarang_nama`, `jenisbarang_slug`, `jenisbarang_ket`, `created_at`, `updated_at`) VALUES
(11, 'Elektronik', 'elektronik', NULL, '2022-11-25 08:24:18', '2022-11-25 08:25:39'),
(12, 'Perangkat Komputer', 'perangkat-komputer', NULL, '2022-11-25 08:26:15', '2022-11-25 08:27:16'),
(13, 'Besi', 'besi', NULL, '2022-11-25 08:27:33', '2022-11-25 08:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_laba_rugi`
--

CREATE TABLE `tbl_laba_rugi` (
  `laba_rugi_id` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `barang_kode` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_jual` decimal(10,2) NOT NULL,
  `harga_beli` decimal(10,2) NOT NULL,
  `laba` decimal(12,2) GENERATED ALWAYS AS ((`harga_jual` - `harga_beli`) * `jumlah`) STORED,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `menu_id` int(10) UNSIGNED NOT NULL,
  `menu_judul` varchar(255) NOT NULL,
  `menu_slug` varchar(255) NOT NULL,
  `menu_icon` varchar(255) NOT NULL,
  `menu_redirect` varchar(255) NOT NULL,
  `menu_sort` varchar(255) NOT NULL,
  `menu_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`menu_id`, `menu_judul`, `menu_slug`, `menu_icon`, `menu_redirect`, `menu_sort`, `menu_type`, `created_at`, `updated_at`) VALUES
(1667444041, 'Dashboard', 'dashboard', 'home', '/dashboard', '1', '1', '2022-11-15 03:51:04', '2025-04-28 10:46:12'),
(1668509889, 'Master Barang', 'master-barang', 'package', '-', '2', '2', '2022-11-15 03:58:09', '2025-04-28 10:46:12'),
(1668510437, 'Transaksi', 'transaksi', 'repeat', '-', '4', '2', '2022-11-15 04:07:17', '2025-04-28 10:46:12'),
(1668510568, 'Laporan', 'laporan', 'printer', '-', '5', '2', '2022-11-15 04:09:28', '2025-04-28 10:46:12'),
(1669390641, 'Supplier', 'supplier', 'user', '/customer', '3', '1', '2022-11-25 08:37:21', '2025-04-28 10:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_merk`
--

CREATE TABLE `tbl_merk` (
  `merk_id` int(10) UNSIGNED NOT NULL,
  `merk_nama` varchar(255) NOT NULL,
  `merk_slug` varchar(255) NOT NULL,
  `merk_keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_merk`
--

INSERT INTO `tbl_merk` (`merk_id`, `merk_nama`, `merk_slug`, `merk_keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Huawei', 'huawei', NULL, '2022-11-15 11:14:09', '2022-11-15 11:14:09'),
(2, 'Lenovo', 'lenovo', NULL, '2022-11-15 11:14:33', '2022-11-15 11:14:45'),
(7, 'Steel', 'steel', NULL, '2022-11-25 08:29:27', '2022-11-25 08:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `role_title` varchar(255) NOT NULL,
  `role_slug` varchar(255) NOT NULL,
  `role_desc` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`role_id`, `role_title`, `role_slug`, `role_desc`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super-admin', '-', '2022-11-15 03:51:04', '2022-11-15 03:51:04'),
(2, 'Admin', 'admin', '-', '2022-11-15 03:51:04', '2022-11-15 03:51:04'),
(3, 'Operator', 'operator', '-', '2022-11-15 03:51:04', '2022-11-15 03:51:04'),
(4, 'Manajer', 'manajer', NULL, '2022-12-06 02:33:27', '2022-12-06 02:33:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_satuan`
--

CREATE TABLE `tbl_satuan` (
  `satuan_id` int(10) UNSIGNED NOT NULL,
  `satuan_nama` varchar(255) NOT NULL,
  `satuan_slug` varchar(255) NOT NULL,
  `satuan_keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_satuan`
--

INSERT INTO `tbl_satuan` (`satuan_id`, `satuan_nama`, `satuan_slug`, `satuan_keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Kg', 'kg', NULL, '2022-11-15 10:50:38', '2022-11-24 05:39:04'),
(5, 'Pcs', 'pcs', NULL, '2022-11-24 05:39:15', '2022-11-24 05:39:21'),
(7, 'Qty', 'qty', NULL, '2022-11-24 05:39:59', '2022-11-24 05:39:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_submenu`
--

CREATE TABLE `tbl_submenu` (
  `submenu_id` int(10) UNSIGNED NOT NULL,
  `menu_id` varchar(255) NOT NULL,
  `submenu_judul` varchar(255) NOT NULL,
  `submenu_slug` varchar(255) NOT NULL,
  `submenu_redirect` varchar(255) NOT NULL,
  `submenu_sort` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_submenu`
--

INSERT INTO `tbl_submenu` (`submenu_id`, `menu_id`, `submenu_judul`, `submenu_slug`, `submenu_redirect`, `submenu_sort`, `created_at`, `updated_at`) VALUES
(9, '1668510437', 'Barang Masuk', 'barang-masuk', '/barang-masuk', '1', '2022-11-15 04:08:19', '2022-11-15 04:08:19'),
(10, '1668510437', 'Barang Keluar', 'barang-keluar', '/barang-keluar', '2', '2022-11-15 04:08:19', '2022-11-15 04:08:19'),
(17, '1668509889', 'Jenis', 'jenis', '/jenisbarang', '1', '2022-11-24 05:06:48', '2022-11-24 05:06:48'),
(18, '1668509889', 'Satuan', 'satuan', '/satuan', '2', '2022-11-24 05:06:48', '2022-11-24 05:06:48'),
(19, '1668509889', 'Merk', 'merk', '/merk', '3', '2022-11-24 05:06:48', '2022-11-24 05:06:48'),
(20, '1668509889', 'Barang', 'barang', '/barang', '4', '2022-11-24 05:06:48', '2022-11-24 05:06:48'),
(28, '1668510568', 'Lap Barang Masuk', 'lap-barang-masuk', '/lap-barang-masuk', '1', '2025-04-25 00:27:06', '2025-04-25 00:27:06'),
(29, '1668510568', 'Lap Barang Keluar', 'lap-barang-keluar', '/lap-barang-keluar', '2', '2025-04-25 00:27:06', '2025-04-25 00:27:06'),
(30, '1668510568', 'Lap Stok Barang', 'lap-stok-barang', '/lap-stok-barang', '3', '2025-04-25 00:27:06', '2025-04-25 00:27:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `barang_kode` varchar(50) NOT NULL,
  `customer_id` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_jual` decimal(10,2) NOT NULL,
  `harga_beli` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` varchar(255) NOT NULL,
  `user_nmlengkap` varchar(255) NOT NULL,
  `user_nama` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_foto` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `role_id`, `user_nmlengkap`, `user_nama`, `user_email`, `user_foto`, `user_password`, `created_at`, `updated_at`) VALUES
(1, '1', 'Super Administrator', 'superadmin', 'superadmin@gmail.com', 'XxLKFDK70eKjXFMlEBQUlkv8i9TZwsV2FJBubx35.webp', '25d55ad283aa400af464c76d713c07ad', '2022-11-15 03:51:04', '2025-04-24 10:31:51'),
(2, '2', 'Administrator', 'admin', 'admin@gmail.com', 'tRoTR992SCeRWeZv2DWRP3Xd5tbHHHssiqGaKZkP.png', '25d55ad283aa400af464c76d713c07ad', '2022-11-15 03:51:04', '2025-04-24 22:00:27'),
(3, '3', 'Operator', 'operator', 'operator@gmail.com', 'YWzbgqDUUXXEHoYjwNv9u35t4flythfxeeXXBmUu.webp', '25d55ad283aa400af464c76d713c07ad', '2022-11-15 03:51:04', '2025-04-24 22:02:07'),
(4, '4', 'Manajer', 'manajer', 'manajer@gmail.com', 'WqeKldTufrFuyLlFHY90UyPM6suvajAGMLgafXRS.jpg', '25d55ad283aa400af464c76d713c07ad', '2022-12-06 02:33:54', '2025-04-24 22:03:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_web`
--

CREATE TABLE `tbl_web` (
  `web_id` int(10) UNSIGNED NOT NULL,
  `web_nama` varchar(255) NOT NULL,
  `web_logo` varchar(255) NOT NULL,
  `web_deskripsi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_web`
--

INSERT INTO `tbl_web` (`web_id`, `web_nama`, `web_logo`, `web_deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'TOKOWEB', 'Jl5CAPhvz9EdVBNJUMYDfmeXdW2tsUD7uFa9Jeob.webp', 'TOKO WEB', '2022-11-15 03:51:04', '2025-04-24 22:06:10');

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tbl_akses`
--
ALTER TABLE `tbl_akses`
  ADD PRIMARY KEY (`akses_id`);

--
-- Indexes for table `tbl_appreance`
--
ALTER TABLE `tbl_appreance`
  ADD PRIMARY KEY (`appreance_id`);

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`barang_id`,`barang_kode`,`barang_nama`,`barang_harga`,`barang_stok`);

--
-- Indexes for table `tbl_barangkeluar`
--
ALTER TABLE `tbl_barangkeluar`
  ADD PRIMARY KEY (`bk_id`);

--
-- Indexes for table `tbl_barangmasuk`
--
ALTER TABLE `tbl_barangmasuk`
  ADD PRIMARY KEY (`bm_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_hpp`
--
ALTER TABLE `tbl_hpp`
  ADD PRIMARY KEY (`hpp_id`),
  ADD KEY `transaksi_id` (`transaksi_id`),
  ADD KEY `barang_kode` (`barang_kode`);

--
-- Indexes for table `tbl_jenisbarang`
--
ALTER TABLE `tbl_jenisbarang`
  ADD PRIMARY KEY (`jenisbarang_id`);

--
-- Indexes for table `tbl_laba_rugi`
--
ALTER TABLE `tbl_laba_rugi`
  ADD PRIMARY KEY (`laba_rugi_id`),
  ADD KEY `transaksi_id` (`transaksi_id`),
  ADD KEY `barang_kode` (`barang_kode`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tbl_merk`
--
ALTER TABLE `tbl_merk`
  ADD PRIMARY KEY (`merk_id`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  ADD PRIMARY KEY (`satuan_id`);

--
-- Indexes for table `tbl_submenu`
--
ALTER TABLE `tbl_submenu`
  ADD PRIMARY KEY (`submenu_id`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_web`
--
ALTER TABLE `tbl_web`
  ADD PRIMARY KEY (`web_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_akses`
--
ALTER TABLE `tbl_akses`
  MODIFY `akses_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=748;

--
-- AUTO_INCREMENT for table `tbl_appreance`
--
ALTER TABLE `tbl_appreance`
  MODIFY `appreance_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `barang_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_barangkeluar`
--
ALTER TABLE `tbl_barangkeluar`
  MODIFY `bk_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_barangmasuk`
--
ALTER TABLE `tbl_barangmasuk`
  MODIFY `bm_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_hpp`
--
ALTER TABLE `tbl_hpp`
  MODIFY `hpp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_jenisbarang`
--
ALTER TABLE `tbl_jenisbarang`
  MODIFY `jenisbarang_id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_laba_rugi`
--
ALTER TABLE `tbl_laba_rugi`
  MODIFY `laba_rugi_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1745861276;

--
-- AUTO_INCREMENT for table `tbl_merk`
--
ALTER TABLE `tbl_merk`
  MODIFY `merk_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  MODIFY `satuan_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_submenu`
--
ALTER TABLE `tbl_submenu`
  MODIFY `submenu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_web`
--
ALTER TABLE `tbl_web`
  MODIFY `web_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_hpp`
--
ALTER TABLE `tbl_hpp`
  ADD CONSTRAINT `tbl_hpp_ibfk_1` FOREIGN KEY (`transaksi_id`) REFERENCES `tbl_transaksi` (`transaksi_id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_laba_rugi`
--
ALTER TABLE `tbl_laba_rugi`
  ADD CONSTRAINT `tbl_laba_rugi_ibfk_1` FOREIGN KEY (`transaksi_id`) REFERENCES `tbl_transaksi` (`transaksi_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_laba_rugi_ibfk_2` FOREIGN KEY (`barang_kode`) REFERENCES `tbl_hpp` (`barang_kode`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
