-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 23, 2017 at 02:57 PM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `oceanedu_passinggrade`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_03_03_084851_create_passingGrade_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `passingGrade`
--

CREATE TABLE IF NOT EXISTS `passingGrade` (
  `kode` int(11) NOT NULL,
  `universitas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pg` decimal(8,2) NOT NULL,
  `dt2015` smallint(6) NOT NULL,
  `pt2015` smallint(6) NOT NULL,
  `dt2016` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `passingGrade`
--

INSERT INTO `passingGrade` (`kode`, `universitas`, `jurusan`, `pg`, `dt2015`, `pt2015`, `dt2016`, `created_at`, `updated_at`) VALUES
(311011, 'UNIVERSITAS INDONESIA', 'PENDIDIKAN DOKTER', '62.78', 54, 2829, 126, '2017-03-17 22:43:59', '2017-03-17 22:43:59'),
(311025, 'UNIVERSITAS INDONESIA', 'PENDIDIKAN DOKTER GIGI', '49.65', 39, 1100, 91, '2017-03-17 22:45:42', '2017-03-17 22:45:42'),
(311033, 'UNIVERSITAS INDONESIA', 'MATEMATIKA', '40.50', 30, 698, 70, '2017-03-17 22:46:55', '2017-03-17 22:46:55'),
(311041, 'UNIVERSITAS INDONESIA', 'FISIKA', '34.67', 30, 500, 70, '2017-03-17 22:48:04', '2017-03-17 22:48:04'),
(311055, 'UNIVERSITAS INDONESIA', 'KIMIA', '36.83', 27, 484, 70, '2017-03-17 22:49:08', '2017-03-17 22:49:08'),
(311063, 'UNIVERSITAS INDONESIA', 'BIOLOGI', '30.67', 30, 727, 70, '2017-03-17 22:50:04', '2017-03-17 22:50:04'),
(311071, 'UNIVERSITAS INDONESIA', 'FARMASI', '54.93', 30, 1189, 84, '2017-03-17 22:51:03', '2017-03-17 22:51:03'),
(311085, 'UNIVERSITAS INDONESIA', 'GEOGRAFI', '32.56', 30, 796, 70, '2017-03-17 22:52:00', '2017-03-17 22:52:00'),
(311093, 'UNIVERSITAS INDONESIA', 'TEKNIK SIPIL', '44.09', 24, 1127, 52, '2017-03-17 22:53:03', '2017-03-17 22:53:03'),
(311106, 'UNIVERSITAS INDONESIA', 'TEKNIK MESIN', '45.16', 24, 1065, 56, '2017-03-17 22:54:21', '2017-03-17 22:54:21'),
(311114, 'UNIVERSITAS INDONESIA', 'TEKNIK ELEKTRO', '50.77', 24, 822, 56, '2017-03-17 22:59:13', '2017-03-17 22:59:13'),
(311122, 'UNIVERSITAS INDONESIA', 'TEKNIK METALURGI & MATERIAL', '42.38', 24, 906, 56, '2017-03-17 23:00:06', '2017-03-17 23:00:06'),
(311136, 'UNIVERSITAS INDONESIA', 'ARSITEKTUR', '45.67', 24, 1194, 35, '2017-03-17 23:01:02', '2017-03-17 23:01:02'),
(311152, 'UNIVERSITAS INDONESIA', 'ILMU KEPERAWATAN', '43.00', 39, 830, 65, '2017-03-17 23:02:36', '2017-03-17 23:02:36'),
(311166, 'UNIVERSITAS INDONESIA', 'ILMU KOMPUTER', '55.99', 30, 1317, 84, '2017-03-17 23:03:31', '2017-03-17 23:03:31'),
(311182, 'UNIVERSITAS INDONESIA', 'TEKNIK INDUSTRI', '51.60', 24, 1076, 56, '2017-03-17 23:06:23', '2017-03-17 23:06:23'),
(311196, 'UNIVERSITAS INDONESIA', 'TEKNIK PERKAPALAN', '36.54', 18, 558, 42, '2017-03-17 23:07:52', '2017-03-17 23:07:52'),
(311203, 'UNIVERSITAS INDONESIA', 'TEKNIK LINGKUNGAN', '40.49', 18, 626, 42, '2017-03-17 23:10:32', '2017-03-17 23:10:32'),
(311211, 'UNIVERSITAS INDONESIA', 'TEKNIK KOMPUTER', '45.26', 18, 1028, 56, '2017-03-17 23:11:25', '2017-03-17 23:11:25'),
(311225, 'UNIVERSITAS INDONESIA', 'SISTEM INFORMASI', '42.38', 30, 1286, 84, '2017-03-17 23:12:13', '2017-03-17 23:12:13'),
(311233, 'UNIVERSITAS INDONESIA', 'ARSITEKTUR INTERIOR', '35.67', 18, 1035, 35, '2017-03-17 23:13:16', '2017-03-17 23:13:16'),
(311241, 'UNIVERSITAS INDONESIA', 'TEKNOLOGI BIOPROSES', '32.03', 18, 781, 35, '2017-03-17 23:14:16', '2017-03-17 23:14:16'),
(311255, 'UNIVERSITAS INDONESIA', 'GIZI', '30.17', 15, 1016, 42, '2017-03-17 23:15:02', '2017-03-17 23:15:02'),
(312013, 'UNIVERSITAS INDONESIA', 'ILMU HUKUM', '50.60', 75, 3330, 175, '2017-03-17 23:18:32', '2017-03-17 23:18:32'),
(312021, 'UNIVERSITAS INDONESIA', 'ARKEOLOGI INDONESIA', '28.90', 12, 307, 24, '2017-03-17 23:19:29', '2017-03-17 23:19:29'),
(312035, 'UNIVERSITAS INDONESIA', 'ILMU SEJARAH', '30.90', 18, 415, 24, '2017-03-17 23:20:11', '2017-03-17 23:20:11'),
(312051, 'UNIVERSITAS INDONESIA', 'ILMU KOMUNIKASI', '52.30', 27, 2964, 70, '2017-03-17 23:21:34', '2017-03-17 23:21:34'),
(312065, 'UNIVERSITAS INDONESIA', 'ILMU POLITIK', '40.20', 15, 784, 35, '2017-03-17 23:22:25', '2017-03-17 23:22:25'),
(312073, 'UNIVERSITAS INDONESIA', 'ILMU ADMINISTRASI NEGARA', '42.70', 12, 1044, 49, '2017-03-17 23:23:23', '2017-03-17 23:23:23'),
(312081, 'UNIVERSITAS INDONESIA', 'KRIMINOLOGI', '35.80', 24, 1260, 42, '2017-03-17 23:24:06', '2017-03-17 23:24:06'),
(312095, 'UNIVERSITAS INDONESIA', 'SOSIOLOGI', '35.70', 18, 830, 42, '2017-03-17 23:25:06', '2017-03-17 23:25:06'),
(312102, 'UNIVERSITAS INDONESIA', 'ILMU KESEJAHTERAAN SOSIAL', '36.30', 15, 968, 56, '2017-03-17 23:26:05', '2017-03-17 23:26:05'),
(312116, 'UNIVERSITAS INDONESIA', 'ANTROPOLOGI SOSIAL', '31.60', 23, 833, 56, '2017-03-18 00:00:21', '2017-03-18 00:00:21'),
(312124, 'UNIVERSITAS INDONESIA', 'ILMU EKONOMI', '49.70', 24, 1253, 63, '2017-03-18 00:01:17', '2017-03-18 00:01:17'),
(312132, 'UNIVERSITAS INDONESIA', 'ILMU ADMINISTRASI NIAGA', '43.80', 12, 964, 49, '2017-03-18 00:02:20', '2017-03-18 00:02:20'),
(312146, 'UNIVERSITAS INDONESIA', 'ILMU ADMINISTRASI FISKAL', '43.10', 12, 985, 49, '2017-03-18 00:03:24', '2017-03-18 00:03:24'),
(312154, 'UNIVERSITAS INDONESIA', 'MANAJEMEN', '50.80', 45, 2975, 140, '2017-03-18 00:04:14', '2017-03-18 00:04:14'),
(312162, 'UNIVERSITAS INDONESIA', 'AKUNTANSI', '56.40', 45, 2924, 140, '2017-03-18 00:05:08', '2017-03-18 00:05:08'),
(312176, 'UNIVERSITAS INDONESIA', 'ILMU HUBUNGAN INTERNASIONAL', '53.80', 15, 1686, 42, '2017-03-18 00:06:07', '2017-03-18 00:06:07'),
(312184, 'UNIVERSITAS INDONESIA', 'ILMU PERPUSTAKAAN', '30.40', 12, 826, 24, '2017-03-18 00:07:03', '2017-03-18 00:07:03'),
(312192, 'UNIVERSITAS INDONESIA', 'ILMU FILSAFAT', '30.20', 15, 438, 24, '2017-03-18 00:08:27', '2017-03-18 00:08:27'),
(312205, 'UNIVERSITAS INDONESIA', 'SASTRA INDONESIA', '31.00', 18, 701, 24, '2017-03-18 00:09:19', '2017-03-18 00:09:19'),
(312213, 'UNIVERSITAS INDONESIA', 'SASTRA DAERAH UNTUK SASTRA JAWA', '29.80', 18, 238, 24, '2017-03-18 00:10:06', '2017-03-18 00:10:06'),
(312221, 'UNIVERSITAS INDONESIA', 'SASTRA JEPANG', '39.70', 12, 970, 24, '2017-03-18 00:10:58', '2017-03-18 00:10:58'),
(312235, 'UNIVERSITAS INDONESIA', 'SASTRA CINA', '35.20', 12, 338, 24, '2017-03-18 00:11:53', '2017-03-18 00:11:53'),
(312243, 'UNIVERSITAS INDONESIA', 'SASTRA ARAB', '30.80', 12, 646, 24, '2017-03-18 00:12:37', '2017-03-18 00:12:37'),
(312251, 'UNIVERSITAS INDONESIA', 'SASTRA PERANCIS', '38.80', 12, 432, 24, '2017-03-18 00:13:23', '2017-03-18 00:13:23'),
(312265, 'UNIVERSITAS INDONESIA', 'SASTRA INGGRIS', '39.40', 12, 1458, 24, '2017-03-18 00:14:21', '2017-03-18 00:14:21'),
(312273, 'UNIVERSITAS INDONESIA', 'SASTRA JERMAN', '33.30', 12, 614, 24, '2017-03-18 00:15:13', '2017-03-18 00:15:13'),
(312281, 'UNIVERSITAS INDONESIA', 'SASTRA BELANDA', '28.20', 12, 429, 24, '2017-03-18 00:15:59', '2017-03-18 00:15:59'),
(312295, 'UNIVERSITAS INDONESIA', 'SASTRA RUSIA', '29.50', 14, 362, 24, '2017-03-18 00:16:54', '2017-03-18 00:16:54'),
(312302, 'UNIVERSITAS INDONESIA', 'BAHASA DAN KEBUDAYAAN KOREA', '37.10', 12, 857, 24, '2017-03-18 00:17:47', '2017-03-18 00:17:47'),
(351015, 'INSTITUT TEKNOLOGI BANDUNG', 'FAK. ILMU DAN TEKNOLOGI KEBUMIAN (FITB)', '52.90', 104, 1739, 112, '2017-03-10 19:43:39', '2017-03-10 19:44:06'),
(351023, 'INSTITUT TEKNOLOGI BANDUNG', 'FAK. TEKNIK PERTAMB. & PERMINYAKAN (FTTM)', '59.80', 136, 3061, 134, '2017-03-10 19:45:26', '2017-03-10 19:45:26'),
(351031, 'INSTITUT TEKNOLOGI BANDUNG', 'FAK. MATEMATIKA & ILMU PENGET. ALAM (FMIPA)', '47.80', 146, 2111, 158, '2017-03-10 19:50:14', '2017-03-10 19:50:14'),
(351045, 'INSTITUT TEKNOLOGI BANDUNG', 'FAKULTAS TEKNIK SIPIL & LINGKUNGAN (FTSL)', '56.50', 136, 2693, 136, '2017-03-10 19:52:07', '2017-03-10 19:52:07'),
(351053, 'INSTITUT TEKNOLOGI BANDUNG', 'SEKOLAH FARMASI (SF)', '54.40', 60, 1060, 80, '2017-03-10 19:53:34', '2017-03-10 19:53:34'),
(351061, 'INSTITUT TEKNOLOGI BANDUNG', 'SEKOLAH ILMU & TEKNO. HAYATI - PROG. SAINS', '49.30', 48, 774, 48, '2017-03-10 20:08:11', '2017-03-10 20:08:11'),
(351075, 'INSTITUT TEKNOLOGI BANDUNG', 'SEKOLAH TEK. ELEKTRO & INFORMATIKA (STEI)', '65.70', 168, 3163, 166, '2017-03-10 19:56:11', '2017-03-10 19:56:11'),
(351083, 'INSTITUT TEKNOLOGI BANDUNG', 'FAKULTAS TEKNOLOGI INDUSTRI (FTI)', '62.50', 144, 1993, 144, '2017-03-10 19:58:01', '2017-03-10 19:58:01'),
(351091, 'INSTITUT TEKNOLOGI BANDUNG', 'FAKULTAS TEKNIK MESIN & DIRGANTARA (FTMD)', '58.70', 112, 2794, 120, '2017-03-10 19:59:21', '2017-03-10 19:59:21'),
(351104, 'INSTITUT TEKNOLOGI BANDUNG', 'SEK. ARSITEKTUR, PERENC & PENGEMB KEBIJAKAN', '52.20', 80, 1881, 72, '2017-03-10 20:01:06', '2017-03-10 20:01:06'),
(351126, 'INSTITUT TEKNOLOGI BANDUNG', 'SEKOLAH ILMU & TEKNO HAYATI - PROG REKAYASA', '39.80', 80, 1159, 80, '2017-03-10 20:06:52', '2017-03-10 20:06:52'),
(352011, 'INSTITUT TEKNOLOGI BANDUNG', 'FAKULTAS SENIRUPA DAN DESAIN (FSRD)', '33.53', 88, 2199, 150, '2017-03-10 20:03:53', '2017-03-10 20:03:53'),
(352025, 'INSTITUT TEKNOLOGI BANDUNG', 'SEKOLAH BISNIS DAN MANAJEMEN (SBM)', '51.70', 136, 3429, 144, '2017-03-10 20:04:57', '2017-03-10 20:04:57'),
(361016, 'UNIVERSITAS PADJADJARAN', 'Pendidikan Dokter', '58.57', 125, 4030, 150, '2017-03-04 05:27:57', '2017-03-10 19:46:38'),
(361024, 'UNIVERSITAS PADJADJARAN', 'MATEMATIKA', '37.61', 50, 814, 72, '2017-03-16 04:00:02', '2017-03-16 04:00:02'),
(361032, 'UNIVERSITAS PADJADJARAN', 'KIMIA', '33.15', 50, 959, 66, '2017-03-16 04:01:33', '2017-03-16 04:01:33'),
(361046, 'UNIVERSITAS PADJADJARAN', 'Fisika', '30.12', 50, 782, 48, '2017-03-04 05:21:25', '2017-03-10 19:46:57'),
(361054, 'UNIVERSITAS PADJADJARAN', 'Biologi', '31.58', 60, 1057, 72, '2017-03-04 05:18:29', '2017-03-10 19:47:15'),
(361062, 'UNIVERSITAS PADJADJARAN', 'STATISTIKA', '39.20', 45, 920, 54, '2017-03-16 04:05:46', '2017-03-16 04:05:46'),
(361076, 'UNIVERSITAS PADJADJARAN', 'AGROTEKNOLOGI', '26.18', 154, 2444, 150, '2017-03-16 04:06:50', '2017-03-16 04:06:50'),
(361084, 'UNIVERSITAS PADJADJARAN', 'AGRIBISNIS', '30.81', 66, 2164, 78, '2017-03-16 04:08:43', '2017-03-16 04:08:43'),
(361092, 'UNIVERSITAS PADJADJARAN', 'PENDIDIKAN DOKTER GIGI', '44.96', 75, 2004, 90, '2017-03-16 04:10:56', '2017-03-16 04:10:56'),
(361105, 'UNIVERSITAS PADJADJARAN', 'ILMU PETERNAKAN', '23.40', 175, 2175, 210, '2017-03-16 04:12:23', '2017-03-16 04:12:23'),
(361113, 'UNIVERSITAS PADJADJARAN', 'PERIKANAN', '32.50', 130, 1, 120, '2017-03-16 04:14:28', '2017-03-16 04:14:28'),
(361121, 'UNIVERSITAS PADJADJARAN', 'ILMU KEPERAWATAN', '37.20', 70, 1651, 90, '2017-03-16 04:15:47', '2017-03-16 04:15:47'),
(361135, 'UNIVERSITAS PADJADJARAN', 'ILMU KELAUTAN', '25.80', 39, 1181, 48, '2017-03-16 04:17:50', '2017-03-16 04:17:50'),
(361143, 'UNIVERSITAS PADJADJARAN', 'TEKNOLOGI PANGAN', '31.80', 66, 2216, 75, '2017-03-16 04:19:24', '2017-03-16 04:19:24'),
(361151, 'UNIVERSITAS PADJADJARAN', 'TEKNIK PERTANIAN', '26.90', 66, 1182, 75, '2017-03-16 04:21:09', '2017-03-16 04:21:09'),
(361165, 'UNIVERSITAS PADJADJARAN', 'FARMASI', '47.50', 85, 2783, 96, '2017-03-16 04:22:33', '2017-03-16 04:22:33'),
(361173, 'UNIVERSITAS PADJADJARAN', 'TEKNIK GEOLOGI', '39.50', 87, 2832, 96, '2017-03-16 04:23:29', '2017-03-16 04:23:29'),
(361181, 'UNIVERSITAS PADJADJARAN', 'PSIKOLOGI', '46.40', 80, 2660, 96, '2017-03-16 04:25:26', '2017-03-16 04:25:26'),
(361195, 'UNIVERSITAS PADJADJARAN', 'GEOFISIKA', '32.50', 27, 679, 36, '2017-03-16 04:26:29', '2017-03-16 04:26:29'),
(361202, 'UNIVERSITAS PADJADJARAN', 'TEKNIK INFORMATIKA', '45.80', 40, 2925, 42, '2017-03-16 04:27:38', '2017-03-16 04:27:38'),
(362012, 'UNIVERSITAS PADJADJARAN', 'ILMU HUKUM', '44.80', 175, 4109, 228, '2017-03-16 20:27:18', '2017-03-16 20:27:18'),
(362026, 'UNIVERSITAS PADJADJARAN', 'AKUNTANSI', '54.50', 60, 2913, 72, '2017-03-16 20:28:31', '2017-03-16 20:28:31'),
(362034, 'UNIVERSITAS PADJADJARAN', 'EKONOMI PEMBANGUNAN', '46.50', 59, 1706, 72, '2017-03-16 20:44:07', '2017-03-16 20:44:07'),
(362042, 'UNIVERSITAS PADJADJARAN', 'MANAJEMEN', '51.50', 50, 3907, 72, '2017-03-16 20:45:21', '2017-03-16 20:45:21'),
(362056, 'UNIVERSITAS PADJADJARAN', 'ILMU ADMINISTRASI NEGARA', '45.30', 40, 1899, 60, '2017-03-16 20:46:22', '2017-03-16 20:46:22'),
(362064, 'UNIVERSITAS PADJADJARAN', 'ILMU HUBUNGAN INTERNASIONAL', '50.60', 40, 2078, 72, '2017-03-16 20:48:05', '2017-03-16 20:48:05'),
(362072, 'UNIVERSITAS PADJADJARAN', 'ILMU KESEJAHTERAAN SOSIAL', '28.60', 25, 977, 48, '2017-03-16 20:48:59', '2017-03-16 20:48:59'),
(362086, 'UNIVERSITAS PADJADJARAN', 'ILMU PEMERINTAHAN', '38.00', 40, 1412, 54, '2017-03-16 20:50:01', '2017-03-16 20:50:01'),
(362094, 'UNIVERSITAS PADJADJARAN', 'ANTROPOLOGI', '30.30', 25, 669, 30, '2017-03-16 20:52:31', '2017-03-16 20:52:31'),
(362101, 'UNIVERSITAS PADJADJARAN', 'ILMU ADMINISTRASI BISNIS', '35.30', 41, 2031, 60, '2017-03-16 20:53:33', '2017-03-16 20:53:33'),
(362115, 'UNIVERSITAS PADJADJARAN', 'SASTRA INDONESIA', '33.70', 53, 796, 54, '2017-03-16 20:55:45', '2017-03-16 20:55:45'),
(362123, 'UNIVERSITAS PADJADJARAN', 'SASTRA SUNDA', '29.60', 50, 610, 42, '2017-03-16 20:56:39', '2017-03-16 20:56:39'),
(362131, 'UNIVERSITAS PADJADJARAN', 'ILMU SEJARAH', '29.20', 53, 578, 42, '2017-03-16 20:57:29', '2017-03-16 20:57:29'),
(362145, 'UNIVERSITAS PADJADJARAN', 'SASTRA INGGRIS', '31.60', 42, 1565, 75, '2017-03-16 20:58:34', '2017-03-16 20:58:34'),
(362153, 'UNIVERSITAS PADJADJARAN', 'SASTRA PERANCIS', '30.50', 36, 390, 42, '2017-03-16 20:59:33', '2017-03-16 20:59:33'),
(362161, 'UNIVERSITAS PADJADJARAN', 'SASTRA JEPANG', '31.00', 36, 1046, 60, '2017-03-16 21:00:25', '2017-03-16 21:00:25'),
(362175, 'UNIVERSITAS PADJADJARAN', 'SASTRA RUSIA', '29.80', 31, 353, 30, '2017-03-16 21:01:30', '2017-03-16 21:01:30'),
(362183, 'UNIVERSITAS PADJADJARAN', 'SASTRA JERMAN', '27.50', 53, 618, 54, '2017-03-16 21:02:49', '2017-03-16 21:02:49'),
(362191, 'UNIVERSITAS PADJADJARAN', 'SASTRA ARAB', '29.90', 57, 690, 60, '2017-03-16 21:04:48', '2017-03-16 21:04:48'),
(362212, 'UNIVERSITAS PADJADJARAN', 'ILMU PERPUSTAKAAN', '33.70', 65, 1037, 72, '2017-03-16 21:06:20', '2017-03-16 21:06:20'),
(362226, 'UNIVERSITAS PADJADJARAN', 'SOSIOLOGI', '32.00', 25, 961, 36, '2017-03-16 21:08:29', '2017-03-16 21:08:29'),
(362286, 'UNIVERSITAS PADJADJARAN', 'TELEVISI DAN FILM', '45.90', 25, 2743, 45, '2017-03-16 21:09:34', '2017-03-16 21:09:34'),
(431013, 'UNIVERSITAS DIPONEGORO', 'KESEHATAN MASYARAKAT', '39.60', 120, 2232, 120, '2017-03-16 20:34:41', '2017-03-16 20:34:41'),
(431021, 'UNIVERSITAS DIPONEGORO', 'PENDIDIKAN DOKTER', '57.20', 72, 3274, 88, '2017-03-16 20:38:41', '2017-03-16 20:38:41'),
(431035, 'UNIVERSITAS DIPONEGORO', 'ILMU KEPERAWATAN', '40.50', 45, 1552, 60, '2017-03-16 20:40:52', '2017-03-16 20:40:52'),
(431043, 'UNIVERSITAS DIPONEGORO', 'ILMU GIZI', '39.60', 48, 1775, 48, '2017-03-16 20:42:39', '2017-03-16 20:42:39'),
(431051, 'UNIVERSITAS DIPONEGORO', 'MATEMATIKA', '35.90', 33, 535, 44, '2017-03-16 20:44:16', '2017-03-16 20:44:16'),
(431065, 'UNIVERSITAS DIPONEGORO', 'BIOLOGI', '30.90', 42, 689, 56, '2017-03-16 20:46:30', '2017-03-16 20:46:30'),
(431073, 'UNIVERSITAS DIPONEGORO', 'KIMIA', '33.20', 42, 627, 56, '2017-03-16 20:49:32', '2017-03-16 20:49:32'),
(431081, 'UNIVERSITAS DIPONEGORO', 'FISIKA', '30.50', 42, 592, 48, '2017-03-16 20:51:22', '2017-03-16 20:51:22'),
(431095, 'UNIVERSITAS DIPONEGORO', 'STATISTIKA', '34.00', 33, 841, 44, '2017-03-16 20:52:27', '2017-03-16 20:52:27'),
(431102, 'UNIVERSITAS DIPONEGORO', 'TEKNIK INFORMATIKA', '43.20', 42, 1905, 48, '2017-03-16 20:53:36', '2017-03-16 20:53:36'),
(431116, 'UNIVERSITAS DIPONEGORO', 'MANAJEMEN SD PERAIRAN', '24.20', 30, 821, 30, '2017-03-16 20:54:43', '2017-03-16 20:54:43'),
(431124, 'UNIVERSITAS DIPONEGORO', 'BUDIDAYA PERAIRAN', '23.60', 36, 840, 48, '2017-03-16 20:56:29', '2017-03-16 20:56:29'),
(431132, 'UNIVERSITAS DIPONEGORO', 'PEMANFAATAN SD PERIKANAN', '24.60', 30, 470, 40, '2017-03-16 20:57:50', '2017-03-16 20:57:50'),
(431146, 'UNIVERSITAS DIPONEGORO', 'ILMU KELAUTAN', '29.20', 48, 924, 72, '2017-03-16 20:58:42', '2017-03-16 20:58:42'),
(431154, 'UNIVERSITAS DIPONEGORO', 'OCEANOGRAFI', '27.80', 36, 781, 48, '2017-03-16 21:00:20', '2017-03-16 21:00:20'),
(431162, 'UNIVERSITAS DIPONEGORO', 'TEKNOLOGI HASIL PERIKANAN', '25.80', 30, 621, 40, '2017-03-16 21:01:20', '2017-03-16 21:01:20'),
(431176, 'UNIVERSITAS DIPONEGORO', 'TEKNIK SIPIL', '40.66', 72, 2208, 88, '2017-03-16 21:02:53', '2017-03-16 21:02:53'),
(431184, 'UNIVERSITAS DIPONEGORO', 'TEKNIK ARSITEKTUR', '40.87', 42, 1310, 48, '2017-03-16 21:04:05', '2017-03-16 21:04:05'),
(431192, 'UNIVERSITAS DIPONEGORO', 'TEKNIK MESIN', '40.60', 54, 1805, 64, '2017-03-16 21:05:20', '2017-03-16 21:05:20'),
(431205, 'UNIVERSITAS DIPONEGORO', 'TEKNIK KIMIA', '40.60', 66, 1190, 88, '2017-03-16 21:06:28', '2017-03-16 21:06:28'),
(431213, 'UNIVERSITAS DIPONEGORO', 'TEKNIK ELEKTRO', '40.00', 45, 1170, 60, '2017-03-16 21:07:21', '2017-03-16 21:07:21'),
(431221, 'UNIVERSITAS DIPONEGORO', 'TEKNIK P W K', '41.40', 42, 1505, 56, '2017-03-16 21:08:15', '2017-03-16 21:08:15'),
(431235, 'UNIVERSITAS DIPONEGORO', 'TEKNIK INDUSTRI', '41.20', 45, 1262, 64, '2017-03-16 21:09:07', '2017-03-16 21:09:07'),
(431243, 'UNIVERSITAS DIPONEGORO', 'TEKNIK LINGKUNGAN', '40.20', 36, 990, 48, '2017-03-16 21:09:59', '2017-03-16 21:09:59'),
(431251, 'UNIVERSITAS DIPONEGORO', 'TEKNIK PERKAPALAN', '39.60', 54, 1033, 52, '2017-03-16 21:11:16', '2017-03-16 21:11:16'),
(431265, 'UNIVERSITAS DIPONEGORO', 'TEKNIK GEOLOGI', '41.20', 24, 955, 40, '2017-03-16 21:12:30', '2017-03-16 21:12:30'),
(431273, 'UNIVERSITAS DIPONEGORO', 'TEKNIK GEODESI', '40.50', 30, 890, 40, '2017-03-16 21:14:09', '2017-03-16 21:14:09'),
(431281, 'UNIVERSITAS DIPONEGORO', 'SISTEM KOMPUTER', '40.80', 30, 859, 40, '2017-03-16 21:15:05', '2017-03-16 21:15:05'),
(431295, 'UNIVERSITAS DIPONEGORO', 'PETERNAKAN', '28.80', 72, 1396, 100, '2017-03-16 21:16:04', '2017-03-16 21:16:04'),
(432015, 'UNIVERSITAS DIPONEGORO', 'BAHASA & SASTRA INDONESIA', '30.20', 30, 655, 40, '2017-03-16 21:17:48', '2017-03-16 21:17:48'),
(432023, 'UNIVERSITAS DIPONEGORO', 'BAHASA & SASTRA INGGRIS', '36.00', 39, 1077, 32, '2017-03-16 21:18:42', '2017-03-16 21:18:42'),
(432031, 'UNIVERSITAS DIPONEGORO', 'SEJARAH INDONESIA', '29.80', 24, 336, 32, '2017-03-16 21:19:48', '2017-03-16 21:19:48'),
(432045, 'UNIVERSITAS DIPONEGORO', 'ILMU PERPUSTAKAAN', '24.00', 24, 929, 36, '2017-03-16 21:21:10', '2017-03-16 21:21:10'),
(432053, 'UNIVERSITAS DIPONEGORO', 'ILMU HUKUM', '44.40', 150, 3436, 200, '2017-03-16 21:22:15', '2017-03-16 21:22:15'),
(432061, 'UNIVERSITAS DIPONEGORO', 'MANAJEMEN', '45.20', 60, 3091, 90, '2017-03-16 21:23:07', '2017-03-16 21:23:07'),
(432075, 'UNIVERSITAS DIPONEGORO', 'ILMU EKONOMI & STUDI PEMB', '43.00', 45, 1088, 70, '2017-03-16 21:24:54', '2017-03-16 21:24:54'),
(432083, 'UNIVERSITAS DIPONEGORO', 'AKUNTANSI', '50.20', 60, 2692, 90, '2017-03-16 21:26:01', '2017-03-16 21:26:01'),
(432091, 'UNIVERSITAS DIPONEGORO', 'ILMU ADM. PUBLIK', '38.30', 36, 1333, 40, '2017-03-16 21:27:19', '2017-03-16 21:27:19'),
(432104, 'UNIVERSITAS DIPONEGORO', 'ILMU ADM. BISNIS', '35.60', 39, 1756, 44, '2017-03-16 21:28:18', '2017-03-16 21:28:18'),
(432112, 'UNIVERSITAS DIPONEGORO', 'PEMERINTAHAN', '34.50', 36, 1151, 32, '2017-03-16 21:29:17', '2017-03-16 21:29:17'),
(432126, 'UNIVERSITAS DIPONEGORO', 'KOMUNIKASI', '44.60', 33, 1861, 40, '2017-03-16 21:30:04', '2017-03-16 21:30:04'),
(432134, 'UNIVERSITAS DIPONEGORO', 'PSIKOLOGI', '42.20', 60, 2033, 80, '2017-03-16 21:30:50', '2017-03-16 21:30:50'),
(432142, 'UNIVERSITAS DIPONEGORO', 'BAHASA JEPANG', '30.50', 24, 606, 24, '2017-03-16 21:32:40', '2017-03-16 21:32:40'),
(432156, 'UNIVERSITAS DIPONEGORO', 'HUBUNGAN INTERNASIONAL', '45.50', 24, 1313, 24, '2017-03-16 21:33:32', '2017-03-16 21:33:32'),
(471011, 'UNIVERSITAS GADJAH MADA', 'BIOLOGI', '44.72', 57, 915, 88, '2017-03-17 03:28:33', '2017-03-17 03:28:33'),
(471025, 'UNIVERSITAS GADJAH MADA', 'FARMASI', '56.53', 72, 2164, 96, '2017-03-17 03:29:27', '2017-03-17 03:29:27'),
(471033, 'UNIVERSITAS GADJAH MADA', 'GEOGRAFI DAN ILMU LINGKUNGAN', '40.60', 30, 722, 40, '2017-03-17 03:30:36', '2017-03-17 03:30:36'),
(471041, 'UNIVERSITAS GADJAH MADA', 'KARTOGRAFI DAN PENGINDRAAN JAUH', '40.56', 21, 500, 28, '2017-03-17 03:31:39', '2017-03-17 03:31:39'),
(471055, 'UNIVERSITAS GADJAH MADA', 'PEMBANGUNAN WILAYAH', '51.26', 21, 534, 28, '2017-03-17 03:32:32', '2017-03-17 03:32:32'),
(471063, 'UNIVERSITAS GADJAH MADA', 'PENDIDIKAN DOKTER', '60.70', 53, 3188, 70, '2017-03-17 03:33:26', '2017-03-17 03:33:26'),
(471071, 'UNIVERSITAS GADJAH MADA', 'ILMU KEPERAWATAN', '45.04', 35, 934, 46, '2017-03-17 03:34:18', '2017-03-17 03:34:18'),
(471085, 'UNIVERSITAS GADJAH MADA', 'GIZI KESEHATAN', '52.04', 24, 1449, 32, '2017-03-17 03:35:13', '2017-03-17 03:35:13'),
(471093, 'UNIVERSITAS GADJAH MADA', 'PENDIDIKAN DOKTER GIGI', '53.35', 46, 1508, 61, '2017-03-17 03:36:36', '2017-03-17 03:36:36'),
(471106, 'UNIVERSITAS GADJAH MADA', 'KEDOKTERAN HEWAN', '45.19', 60, 973, 72, '2017-03-17 03:37:49', '2017-03-17 03:37:49'),
(471152, 'UNIVERSITAS GADJAH MADA', 'FISIKA', '39.20', 26, 347, 28, '2017-03-17 03:38:40', '2017-03-17 03:38:40'),
(471166, 'UNIVERSITAS GADJAH MADA', 'KIMIA', '43.50', 48, 574, 60, '2017-03-17 03:39:41', '2017-03-17 03:39:41'),
(471174, 'UNIVERSITAS GADJAH MADA', 'MATEMATIKA', '43.44', 21, 472, 28, '2017-03-17 03:40:44', '2017-03-17 03:40:44'),
(471182, 'UNIVERSITAS GADJAH MADA', 'ILMU KOMPUTER', '55.80', 27, 1029, 36, '2017-03-17 03:41:55', '2017-03-17 03:41:55'),
(471203, 'UNIVERSITAS GADJAH MADA', 'GEOFISIKA', '40.19', 23, 612, 20, '2017-03-17 03:43:55', '2017-03-17 03:43:55'),
(471211, 'UNIVERSITAS GADJAH MADA', 'ELEKTRONIKA DAN INSTRUMENTASI', '48.44', 27, 472, 36, '2017-03-17 03:45:00', '2017-03-17 03:45:00'),
(471225, 'UNIVERSITAS GADJAH MADA', 'AGRONOMI', '40.15', 21, 431, 30, '2017-03-17 03:45:52', '2017-03-17 03:45:52'),
(471241, 'UNIVERSITAS GADJAH MADA', 'ILMU TANAH', '39.02', 15, 344, 20, '2017-03-17 03:46:50', '2017-03-17 03:46:50'),
(471255, 'UNIVERSITAS GADJAH MADA', 'SOS.EK. PERTANIAN (AGROBISNIS)', '41.60', 24, 563, 32, '2017-03-17 03:47:54', '2017-03-17 03:47:54'),
(471263, 'UNIVERSITAS GADJAH MADA', 'ILMU HAMA & PENYAKIT TUMBUHAN', '40.16', 15, 341, 20, '2017-03-17 03:49:32', '2017-03-17 03:49:32'),
(471271, 'UNIVERSITAS GADJAH MADA', 'PENYULUHAN & KOMUNIKASI PERTANIAN', '39.30', 8, 165, 10, '2017-03-17 03:50:39', '2017-03-17 03:50:39'),
(471285, 'UNIVERSITAS GADJAH MADA', 'BUDIDAYA PERIKANAN', '45.53', 17, 340, 22, '2017-03-17 03:52:40', '2017-03-17 03:52:40'),
(471293, 'UNIVERSITAS GADJAH MADA', 'TEKNOLOGI HASIL PERIKANAN', '41.25', 17, 392, 22, '2017-03-17 03:58:22', '2017-03-17 03:58:22'),
(471306, 'UNIVERSITAS GADJAH MADA', 'MANAJ. SUMBER DAYA PERIKANAN', '38.69', 17, 351, 22, '2017-03-17 03:59:17', '2017-03-17 03:59:17'),
(471322, 'UNIVERSITAS GADJAH MADA', 'ILMU DAN INDUSTRI PETERNAKAN', '41.72', 72, 1089, 96, '2017-03-17 04:00:20', '2017-03-17 04:00:20'),
(471336, 'UNIVERSITAS GADJAH MADA', 'ARSITEKTUR', '52.61', 27, 1223, 36, '2017-03-17 04:01:20', '2017-03-17 04:01:20'),
(471344, 'UNIVERSITAS GADJAH MADA', 'PERENCANAAN WILAYAH DAN KOTA', '52.26', 24, 919, 36, '2017-03-17 04:02:42', '2017-03-17 04:02:42'),
(471352, 'UNIVERSITAS GADJAH MADA', 'TEKNIK GEODESI', '48.10', 33, 862, 48, '2017-03-17 04:04:17', '2017-03-17 04:04:17'),
(471366, 'UNIVERSITAS GADJAH MADA', 'TEKNIK GEOLOGI', '49.65', 36, 1335, 48, '2017-03-17 04:36:05', '2017-03-17 04:36:05'),
(471374, 'UNIVERSITAS GADJAH MADA', 'TEKNIK KIMIA', '55.62', 45, 912, 68, '2017-03-17 04:37:05', '2017-03-17 04:37:05'),
(471382, 'UNIVERSITAS GADJAH MADA', 'TEKNIK ELEKTRO', '55.65', 45, 965, 40, '2017-03-17 04:38:35', '2017-03-17 04:38:35'),
(471396, 'UNIVERSITAS GADJAH MADA', 'TEKNIK MESIN', '52.76', 48, 1536, 56, '2017-03-17 04:39:49', '2017-03-17 04:39:49'),
(471403, 'UNIVERSITAS GADJAH MADA', 'TEKNIK SIPIL', '54.60', 50, 1763, 66, '2017-03-17 04:40:55', '2017-03-17 04:40:55'),
(471411, 'UNIVERSITAS GADJAH MADA', 'TEKNIK NUKLIR', '50.30', 18, 440, 26, '2017-03-17 04:41:45', '2017-03-17 04:41:45'),
(471433, 'UNIVERSITAS GADJAH MADA', 'TEKNIK INDUSTRI', '54.00', 36, 1116, 44, '2017-03-17 04:46:18', '2017-03-17 04:46:18'),
(471441, 'UNIVERSITAS GADJAH MADA', 'TEKNIK PERTANIAN', '44.61', 30, 526, 36, '2017-03-17 04:47:15', '2017-03-17 04:47:15'),
(521012, 'UNIVERSITAS AIRLANGGA', 'PENDIDIKAN DOKTER', '58.61', 63, 2608, 88, '2017-03-16 23:47:42', '2017-03-16 23:47:42'),
(521026, 'UNIVERSITAS AIRLANGGA', 'PENDIDIKAN DOKTER GIGI', '45.30', 50, 1355, 58, '2017-03-16 23:49:09', '2017-03-16 23:49:09'),
(521042, 'UNIVERSITAS AIRLANGGA', 'KEDOKTERAN HEWAN', '31.20', 87, 1289, 95, '2017-03-16 23:56:42', '2017-03-16 23:56:42'),
(521056, 'UNIVERSITAS AIRLANGGA', 'MATEMATIKA', '37.80', 36, 495, 42, '2017-03-16 23:58:37', '2017-03-16 23:58:37'),
(521064, 'UNIVERSITAS AIRLANGGA', 'BIOLOGI', '34.80', 30, 550, 35, '2017-03-17 00:01:02', '2017-03-17 00:01:02'),
(521072, 'UNIVERSITAS AIRLANGGA', 'FISIKA', '37.80', 30, 313, 35, '2017-03-17 00:03:02', '2017-03-17 00:03:02'),
(521086, 'UNIVERSITAS AIRLANGGA', 'KIMIA', '38.70', 30, 430, 35, '2017-03-17 00:04:20', '2017-03-17 00:04:20'),
(521094, 'UNIVERSITAS AIRLANGGA', 'KESEHATAN MASYARAKAT', '42.80', 72, 1644, 84, '2017-03-17 00:05:52', '2017-03-17 00:05:52'),
(521115, 'UNIVERSITAS AIRLANGGA', 'BUDIDAYA PERAIRAN', '29.80', 56, 786, 63, '2017-03-17 00:07:47', '2017-03-17 00:07:47'),
(521123, 'UNIVERSITAS AIRLANGGA', 'Pendidikan Bidan', '37.20', 15, 669, 17, '2017-03-17 00:08:57', '2017-03-17 00:08:57'),
(521131, 'UNIVERSITAS AIRLANGGA', 'TEKNOBIOMEDIK', '32.80', 18, 710, 21, '2017-03-17 00:22:05', '2017-03-17 00:22:05'),
(521145, 'UNIVERSITAS AIRLANGGA', 'ILMU DAN TEKNOLOGI LINGKUNGAN', '34.50', 18, 598, 21, '2017-03-17 00:24:24', '2017-03-17 00:24:24'),
(521153, 'UNIVERSITAS AIRLANGGA', 'SISTEM INFORMASI', '42.80', 18, 666, 21, '2017-03-17 00:26:38', '2017-03-17 00:26:38'),
(522014, 'UNIVERSITAS AIRLANGGA', 'ILMU HUKUM', '44.80', 72, 1757, 84, '2017-03-17 00:27:47', '2017-03-17 00:27:47'),
(522022, 'UNIVERSITAS AIRLANGGA', 'ILMU ADMINISTRASI NEGARA', '39.70', 30, 832, 39, '2017-03-17 00:28:48', '2017-03-17 00:28:48'),
(522036, 'UNIVERSITAS AIRLANGGA', 'PSIKOLOGI', '40.20', 66, 1948, 73, '2017-03-17 00:30:00', '2017-03-17 00:30:00'),
(522044, 'UNIVERSITAS AIRLANGGA', 'SOSIOLOGI', '30.80', 30, 622, 35, '2017-03-17 00:31:13', '2017-03-17 00:31:13'),
(522052, 'UNIVERSITAS AIRLANGGA', 'ILMU POLITIK', '30.90', 30, 540, 35, '2017-03-17 00:32:12', '2017-03-17 00:32:12'),
(522066, 'UNIVERSITAS AIRLANGGA', 'ILMU HUBUNGAN INTERNASIONAL', '45.40', 30, 1006, 39, '2017-03-17 00:33:09', '2017-03-17 00:33:09'),
(522074, 'UNIVERSITAS AIRLANGGA', 'ANTROPOLOGI SOSIAL', '30.50', 30, 481, 35, '2017-03-17 00:34:17', '2017-03-17 00:34:17'),
(522082, 'UNIVERSITAS AIRLANGGA', 'EKONOMI PEMBANGUNAN', '34.60', 60, 967, 70, '2017-03-17 00:35:00', '2017-03-17 00:35:00'),
(522096, 'UNIVERSITAS AIRLANGGA', 'MANAJEMEN', '43.40', 105, 2295, 102, '2017-03-17 00:36:04', '2017-03-17 00:36:04'),
(522103, 'UNIVERSITAS AIRLANGGA', 'AKUNTANSI', '44.70', 90, 1961, 102, '2017-03-17 00:36:58', '2017-03-17 00:36:58'),
(522111, 'UNIVERSITAS AIRLANGGA', 'ILMU KOMUNIKASI', '45.70', 30, 1269, 39, '2017-03-17 00:38:14', '2017-03-17 00:38:14'),
(522125, 'UNIVERSITAS AIRLANGGA', 'ILMU SEJARAH', '30.90', 36, 343, 35, '2017-03-17 00:39:18', '2017-03-17 00:39:18'),
(522133, 'UNIVERSITAS AIRLANGGA', 'ILMU INFORMASI DAN PERPUSTAKAAN', '30.70', 27, 659, 32, '2017-03-17 03:23:20', '2017-03-17 03:23:20'),
(522141, 'UNIVERSITAS AIRLANGGA', 'SASTRA INGGRIS', '30.90', 48, 941, 56, '2017-03-17 03:24:08', '2017-03-17 03:24:08'),
(522155, 'UNIVERSITAS AIRLANGGA', 'SASTRA INDONESIA', '30.40', 57, 565, 56, '2017-03-17 03:25:02', '2017-03-17 03:25:02'),
(522163, 'UNIVERSITAS AIRLANGGA', 'SASTRA JEPANG', '30.80', 18, 369, 21, '2017-03-17 03:25:48', '2017-03-17 03:25:48'),
(522171, 'UNIVERSITAS AIRLANGGA', 'EKONOMI ISLAM', '30.30', 60, 1240, 70, '2017-03-17 03:26:28', '2017-03-17 03:26:28');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;