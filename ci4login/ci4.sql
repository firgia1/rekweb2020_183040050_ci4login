-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2020 at 06:07 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', NULL, '2020-11-01 22:47:00'),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', '61a3cfb95ffb5ebe1cbf286e2b883188', '2020-11-01 23:01:24'),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', '61a3cfb95ffb5ebe1cbf286e2b883188', '2020-11-01 23:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(15, '::1', 'firgia', 5, '2020-11-01 22:26:04', 0),
(16, '::1', 'firgia', 5, '2020-11-01 22:26:09', 0),
(17, '::1', 'firgia', 5, '2020-11-01 22:26:11', 0),
(18, '::1', 'firgia', 5, '2020-11-01 22:31:40', 0),
(19, '::1', 'firgia', 5, '2020-11-01 22:31:58', 0),
(20, '::1', 'firgia', 5, '2020-11-01 22:32:12', 0),
(21, '::1', 'firgia', 5, '2020-11-01 22:32:19', 0),
(22, '::1', 'firgia', 5, '2020-11-01 22:33:41', 0),
(23, '::1', 'firgia', 5, '2020-11-01 22:33:46', 0),
(24, '::1', 'firgia', 5, '2020-11-01 22:33:47', 0),
(25, '::1', 'firgia', 5, '2020-11-01 22:33:48', 0),
(26, '::1', 'firgia', 5, '2020-11-01 22:33:48', 0),
(27, '::1', 'firgia', 5, '2020-11-01 22:33:49', 0),
(28, '::1', 'firgia', 5, '2020-11-01 22:33:54', 0),
(29, '::1', 'firgia', 7, '2020-11-01 22:38:48', 0),
(30, '::1', 'firgia', 7, '2020-11-01 22:38:54', 0),
(31, '::1', 'firgia', 7, '2020-11-01 22:39:05', 0),
(32, '::1', 'firgia', 7, '2020-11-01 22:39:14', 0),
(33, '::1', 'firgia3', 8, '2020-11-01 22:40:12', 0),
(34, '::1', 'gg', NULL, '2020-11-01 22:40:18', 0),
(35, '::1', 'firgia3', NULL, '2020-11-01 22:40:25', 0),
(36, '::1', 'firgia3', 8, '2020-11-01 22:40:34', 0),
(37, '::1', 'firgia', 7, '2020-11-01 22:40:41', 0),
(38, '::1', 'm.firgia1@gmail.com', 9, '2020-11-01 22:47:00', 1),
(39, '::1', 'm.firgia1@gmail.com', 9, '2020-11-01 22:59:58', 1),
(40, '::1', 'firgia3', NULL, '2020-11-01 23:01:29', 0),
(41, '::1', 'm.firgia3@gmail.com', 10, '2020-11-01 23:01:39', 1),
(42, '::1', 'm.firgia3@gmail.com', 10, '2020-11-01 23:03:08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_reset_attempts`
--

INSERT INTO `auth_reset_attempts` (`id`, `email`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, 'm.firgia3@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0', 'a3856b0d5fc52bcf0f14341b267305fa', '2020-11-01 23:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_tokens`
--

INSERT INTO `auth_tokens` (`id`, `selector`, `hashedValidator`, `user_id`, `expires`) VALUES
(2, 'fdde28baa8750c841ef796e9', '969c6ffd8a8f2ac326ce55b13ffeb0fd5bad46a195554c02e308b4f5bf1fc374', 10, '2020-12-01 23:03:08');

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'naruto', 'Masashi Kishimoto', 'Shonen Jump', 'naruto.png', NULL, NULL),
(2, 'One Piece', 'one-piece', 'Eichiro Oda', 'Gramedia', 'onepiece.png', NULL, NULL),
(6, 'komik', 'komik', 'gaga', 'gege', 'sasas', '2020-10-14 06:30:15', '2020-10-14 08:22:04'),
(8, '', '', '', '', '', '2020-10-14 06:30:54', '2020-10-14 06:30:54'),
(10, 'coba', 'coba', '', '', 'logo.png', '2020-10-15 08:01:42', '2020-10-15 08:01:42'),
(11, 'uu', 'uu', '', '', 'logo.png', '2020-10-15 08:01:49', '2020-10-15 08:01:49'),
(14, 'judul baru', 'judul-baru', 'haha', 'rubah', '1602768499_72dd78747d2b6d6f66a4.jpg', '2020-10-15 08:20:45', '2020-10-16 02:08:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-10-15-133847', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1602769559, 1),
(2, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1604287744, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Gaduh Saputra', 'Jr. Suharso No. 91, Sorong 30920, NTT', '2020-10-15 09:20:44', '2003-02-12 18:06:04'),
(2, 'Nadia Rika Riyanti', 'Dk. Bahagia  No. 133, Padangsidempuan 97636, Maluku', '2020-10-15 09:20:44', '1977-04-29 05:55:17'),
(3, 'Hamzah Siregar', 'Jr. Imam No. 478, Tebing Tinggi 50283, KalTim', '2020-10-15 09:20:44', '1979-05-01 08:45:21'),
(4, 'Panca Rajata S.Pt', 'Ds. Tambak No. 211, Administrasi Jakarta Utara 69645, Aceh', '2020-10-15 09:20:44', '2007-08-22 01:34:02'),
(5, 'Violet Agustina', 'Jr. Orang No. 319, Mataram 64865, Gorontalo', '2020-10-15 09:20:44', '1983-07-21 23:09:51'),
(6, 'Cengkir Zulkarnain', 'Kpg. Ciumbuleuit No. 583, Malang 65247, SulSel', '2020-10-15 09:20:45', '2013-04-11 19:23:27'),
(7, 'Almira Nuraini', 'Kpg. Setiabudhi No. 581, Banda Aceh 68501, SumUt', '2020-10-15 09:20:45', '1983-05-21 18:20:15'),
(8, 'Praba Dabukke', 'Gg. Villa No. 411, Tomohon 76444, Bengkulu', '2020-10-15 09:20:45', '2009-12-24 16:10:16'),
(9, 'Setya Prayoga', 'Gg. Kali No. 919, Banjarbaru 77250, SumBar', '2020-10-15 09:20:45', '2014-01-10 14:28:01'),
(10, 'Cayadi Wasita', 'Psr. Jambu No. 597, Manado 30331, Papua', '2020-10-15 09:20:45', '2008-03-28 00:20:57'),
(11, 'Hartana Budiman', 'Dk. Wahidin No. 405, Kendari 88621, SulTra', '2020-10-15 09:20:45', '2003-06-08 16:32:17'),
(12, 'Prayoga Prabowo', 'Dk. Sudiarto No. 170, Administrasi Jakarta Utara 57898, JaBar', '2020-10-15 09:20:45', '1972-10-15 07:30:46'),
(13, 'Cager Hutasoit', 'Ds. R.M. Said No. 287, Blitar 48263, KepR', '2020-10-15 09:20:45', '2006-06-06 20:51:21'),
(14, 'Rahmi Melani', 'Kpg. Bakti No. 446, Ambon 61500, Riau', '2020-10-15 09:20:45', '1979-05-12 05:38:55'),
(15, 'Ghaliyati Nuraini', 'Kpg. Bakti No. 464, Kendari 76063, KalUt', '2020-10-15 09:20:45', '2005-12-18 20:29:16'),
(16, 'Dimas Tampubolon', 'Ds. Basudewo No. 239, Batu 90922, Jambi', '2020-10-15 09:20:45', '1980-08-16 00:02:17'),
(17, 'Gandi Irawan', 'Dk. Elang No. 258, Pasuruan 60290, SumBar', '2020-10-15 09:20:45', '1997-11-05 03:09:12'),
(18, 'Lega Adika Napitupulu', 'Ds. Pasir Koja No. 291, Tegal 84806, Jambi', '2020-10-15 09:20:45', '2009-02-19 21:49:00'),
(19, 'Vino Margana Sihombing S.Sos', 'Psr. Abdul. Muis No. 426, Bukittinggi 84873, NTT', '2020-10-15 09:20:45', '1996-01-17 13:44:38'),
(20, 'Zelaya Ratih Prastuti M.Kom.', 'Kpg. Soekarno Hatta No. 773, Sorong 33272, KepR', '2020-10-15 09:20:45', '1985-09-14 15:45:35'),
(21, 'Balangga Samsul Lazuardi', 'Gg. Zamrud No. 3, Sibolga 12490, NTT', '2020-10-15 09:20:45', '1979-04-02 18:54:18'),
(22, 'Kenzie Karta Iswahyudi S.Gz', 'Ki. Industri No. 417, Palembang 23510, KalSel', '2020-10-15 09:20:45', '2002-02-07 04:43:07'),
(23, 'Ifa Astuti S.E.I', 'Dk. Sugiono No. 501, Pariaman 30857, Aceh', '2020-10-15 09:20:45', '2018-02-27 02:04:42'),
(24, 'Ratih Halimah', 'Gg. Baranang Siang Indah No. 555, Sukabumi 30206, BaBel', '2020-10-15 09:20:45', '1996-07-17 22:16:19'),
(25, 'Kezia Kuswandari', 'Ki. Pasir Koja No. 476, Payakumbuh 27118, Riau', '2020-10-15 09:20:45', '1999-06-01 07:20:11'),
(26, 'Chelsea Prastuti', 'Ki. Bagas Pati No. 96, Binjai 46720, Riau', '2020-10-15 09:20:45', '1987-01-28 09:02:45'),
(27, 'Zelaya Pertiwi', 'Jln. Yohanes No. 370, Palu 87693, Gorontalo', '2020-10-15 09:20:45', '1982-12-05 08:46:08'),
(28, 'Unjani Mardhiyah', 'Dk. Ahmad Dahlan No. 436, Palopo 69797, Aceh', '2020-10-15 09:20:45', '1980-06-03 18:38:32'),
(29, 'Hesti Irma Fujiati', 'Psr. B.Agam Dlm No. 680, Gunungsitoli 81418, NTT', '2020-10-15 09:20:45', '2007-12-07 22:36:12'),
(30, 'Usyi Laksmiwati', 'Psr. Bappenas No. 327, Sabang 14602, KepR', '2020-10-15 09:20:45', '2019-03-27 20:58:48'),
(31, 'Nabila Pratiwi', 'Dk. Jaksa No. 885, Jambi 89380, KalBar', '2020-10-15 09:20:45', '1997-10-30 03:08:37'),
(32, 'Cakrawala Natsir', 'Jr. Sukabumi No. 712, Pangkal Pinang 83631, NTT', '2020-10-15 09:20:45', '1971-11-28 13:49:45'),
(33, 'Ciaobella Betania Lestari', 'Jr. Otto No. 937, Malang 42178, JaBar', '2020-10-15 09:20:45', '2000-08-13 00:45:22'),
(34, 'Paramita Padmi Hassanah S.Sos', 'Ki. Zamrud No. 132, Batu 10508, JaTeng', '2020-10-15 09:20:45', '2000-10-14 11:03:43'),
(35, 'Suci Victoria Rahayu', 'Psr. Arifin No. 597, Pontianak 93729, DKI', '2020-10-15 09:20:45', '1999-02-26 09:19:48'),
(36, 'Padmi Susanti', 'Jln. Tubagus Ismail No. 417, Kediri 91295, Lampung', '2020-10-15 09:20:45', '2002-01-21 12:39:10'),
(37, 'Dinda Utami', 'Psr. Baabur Royan No. 234, Salatiga 95837, Bali', '2020-10-15 09:20:45', '2009-04-13 20:10:21'),
(38, 'Caturangga Mustofa', 'Ki. Cikutra Barat No. 501, Semarang 93794, SumBar', '2020-10-15 09:20:45', '1976-03-24 04:20:01'),
(39, 'Lutfan Hidayanto', 'Ds. Gegerkalong Hilir No. 677, Probolinggo 77925, JaTim', '2020-10-15 09:20:45', '1987-07-13 12:38:59'),
(40, 'Balapati Simanjuntak', 'Ki. Samanhudi No. 856, Banda Aceh 86224, SumBar', '2020-10-15 09:20:45', '2009-10-30 12:23:57'),
(41, 'Jinawi Januar', 'Jr. Sampangan No. 214, Palu 56624, SulUt', '2020-10-15 09:20:45', '2001-01-12 06:49:08'),
(42, 'Restu Wahyuni S.H.', 'Gg. Elang No. 320, Padang 29679, SumBar', '2020-10-15 09:20:45', '2014-01-13 05:02:23'),
(43, 'Irnanto Adhiarja Damanik', 'Jr. Gambang No. 19, Samarinda 29335, NTB', '2020-10-15 09:20:45', '1989-08-08 23:07:10'),
(44, 'Tira Nasyidah', 'Gg. Wahidin Sudirohusodo No. 363, Bekasi 93120, Gorontalo', '2020-10-15 09:20:45', '2006-01-04 14:59:40'),
(45, 'Paris Andriani', 'Gg. Hasanuddin No. 720, Manado 54560, DKI', '2020-10-15 09:20:45', '2000-09-04 21:45:33'),
(46, 'Akarsana Sihombing S.E.I', 'Psr. Wahidin Sudirohusodo No. 965, Bandar Lampung 59346, SulBar', '2020-10-15 09:20:45', '1980-03-09 15:34:09'),
(47, 'Ami Suartini', 'Ds. Kebonjati No. 427, Bogor 21167, NTT', '2020-10-15 09:20:45', '1974-01-03 11:21:03'),
(48, 'Chelsea Puspita', 'Dk. Juanda No. 235, Yogyakarta 99191, Bali', '2020-10-15 09:20:45', '1976-11-22 16:04:28'),
(49, 'Kunthara Pranowo', 'Ki. Baranang Siang Indah No. 816, Sungai Penuh 35601, JaBar', '2020-10-15 09:20:45', '1985-09-09 22:08:55'),
(50, 'Aslijan Najmudin', 'Ki. Gardujati No. 783, Tangerang 43320, NTT', '2020-10-15 09:20:45', '1994-03-01 19:24:42'),
(51, 'Julia Maryati', 'Gg. Yap Tjwan Bing No. 556, Mojokerto 63768, SulTeng', '2020-10-15 09:20:45', '1983-04-27 05:59:37'),
(52, 'Luluh Makara Waluyo', 'Ds. Ikan No. 37, Samarinda 65029, SulSel', '2020-10-15 09:20:45', '2013-03-04 10:59:44'),
(53, 'Nurul Zulaika', 'Ki. Ters. Buah Batu No. 458, Tangerang 27526, Bali', '2020-10-15 09:20:45', '1984-02-21 02:55:47'),
(54, 'Fathonah Nova Agustina S.I.Kom', 'Ds. Bacang No. 495, Padang 92259, KalUt', '2020-10-15 09:20:45', '2011-06-01 17:55:07'),
(55, 'Vera Usada S.Farm', 'Gg. Taman No. 500, Kotamobagu 92226, Riau', '2020-10-15 09:20:45', '1978-01-18 08:53:13'),
(56, 'Ophelia Zulfa Yuniar', 'Dk. Bawal No. 764, Administrasi Jakarta Utara 24651, DKI', '2020-10-15 09:20:45', '1970-04-24 15:01:09'),
(57, 'Johan Kusumo', 'Kpg. Sudiarto No. 726, Palu 70836, SulTra', '2020-10-15 09:20:45', '1995-12-14 06:22:13'),
(58, 'Ellis Astuti S.E.', 'Dk. Padma No. 185, Sawahlunto 50573, JaTim', '2020-10-15 09:20:45', '1984-08-04 01:05:48'),
(59, 'Maria Mulyani', 'Kpg. Sutami No. 7, Parepare 45648, BaBel', '2020-10-15 09:20:45', '1997-03-26 01:51:35'),
(60, 'Dinda Padmasari', 'Dk. Kyai Mojo No. 864, Palangka Raya 37840, Maluku', '2020-10-15 09:20:45', '2015-04-13 09:06:23'),
(61, 'Laila Pia Melani', 'Jln. Jaksa No. 961, Samarinda 38311, Bengkulu', '2020-10-15 09:20:45', '1970-02-26 19:53:37'),
(62, 'Maimunah Rahmawati', 'Jln. Sadang Serang No. 568, Palembang 44907, Lampung', '2020-10-15 09:20:45', '2003-04-05 21:20:05'),
(63, 'Hardi Nainggolan S.H.', 'Psr. Bayan No. 865, Kupang 40200, KalTim', '2020-10-15 09:20:45', '1994-09-14 19:05:03'),
(64, 'Putri Mulyani', 'Jln. Dipenogoro No. 597, Mojokerto 59547, DIY', '2020-10-15 09:20:45', '2019-01-11 08:55:28'),
(65, 'Indah Dinda Utami', 'Ki. Monginsidi No. 36, Padangsidempuan 83197, Bengkulu', '2020-10-15 09:20:45', '1989-06-13 15:50:31'),
(66, 'Enteng Saptono', 'Psr. Monginsidi No. 381, Sawahlunto 59568, SulSel', '2020-10-15 09:20:45', '1997-04-11 10:50:47'),
(67, 'Ibun Permadi S.Sos', 'Dk. Gambang No. 333, Makassar 52856, KalBar', '2020-10-15 09:20:45', '2012-02-06 05:40:03'),
(68, 'Putri Fujiati', 'Kpg. Sumpah Pemuda No. 294, Bukittinggi 16818, KalTim', '2020-10-15 09:20:45', '1993-03-02 12:47:04'),
(69, 'Tirtayasa Saragih', 'Ds. Baabur Royan No. 315, Metro 81986, MalUt', '2020-10-15 09:20:45', '1983-05-09 23:49:19'),
(70, 'Harimurti Hutapea', 'Jr. Batako No. 740, Cimahi 23188, SulTra', '2020-10-15 09:20:45', '2003-12-11 01:18:17'),
(71, 'Rama Aditya Salahudin S.T.', 'Kpg. Tambun No. 296, Serang 46249, Bengkulu', '2020-10-15 09:20:45', '1997-08-18 17:38:53'),
(72, 'Hardi Nababan', 'Kpg. Bacang No. 679, Administrasi Jakarta Timur 42401, Lampung', '2020-10-15 09:20:45', '1972-11-26 00:37:11'),
(73, 'Damu Cecep Rajasa', 'Dk. Bak Air No. 225, Kediri 60935, SumUt', '2020-10-15 09:20:45', '2016-04-06 22:07:48'),
(74, 'Winda Usada', 'Dk. Basuki Rahmat  No. 385, Banjar 37881, SumSel', '2020-10-15 09:20:45', '1985-01-31 17:34:34'),
(75, 'Limar Purwadi Simbolon', 'Jr. Sudiarto No. 491, Cilegon 41657, SulTeng', '2020-10-15 09:20:45', '2020-04-13 19:53:52'),
(76, 'Mila Sudiati', 'Jln. Bak Air No. 855, Administrasi Jakarta Pusat 56988, SulUt', '2020-10-15 09:20:45', '2009-05-22 22:06:41'),
(77, 'Ira Riyanti', 'Dk. Barasak No. 483, Bandar Lampung 68859, KalUt', '2020-10-15 09:20:45', '1986-05-31 10:26:36'),
(78, 'Tami Haryanti', 'Gg. Kalimalang No. 197, Dumai 69681, KalTim', '2020-10-15 09:20:45', '2006-07-12 14:14:49'),
(79, 'Usyi Anggraini M.Farm', 'Psr. Padma No. 862, Medan 50220, SulTra', '2020-10-15 09:20:45', '1992-08-26 12:08:26'),
(80, 'Gilda Amalia Rahimah', 'Ds. Flora No. 637, Blitar 25064, KalTim', '2020-10-15 09:20:45', '1974-12-26 12:01:50'),
(81, 'Rika Dewi Hassanah', 'Ki. Baung No. 496, Cilegon 44384, KalSel', '2020-10-15 09:20:45', '2014-01-09 21:44:24'),
(82, 'Hasta Sihotang', 'Dk. Soekarno Hatta No. 127, Ternate 28473, Jambi', '2020-10-15 09:20:45', '1977-01-12 13:22:06'),
(83, 'Wardaya Prabowo', 'Jr. PHH. Mustofa No. 201, Subulussalam 73757, PapBar', '2020-10-15 09:20:45', '1971-06-04 15:50:55'),
(84, 'Margana Permadi', 'Gg. Adisumarmo No. 796, Tual 83913, SulTeng', '2020-10-15 09:20:45', '1984-02-01 13:40:56'),
(85, 'Raden Mustofa S.Psi', 'Ki. Banceng Pondok No. 335, Pekanbaru 23090, SulBar', '2020-10-15 09:20:45', '2015-07-08 19:35:43'),
(86, 'Vega Dabukke S.T.', 'Psr. Sudirman No. 39, Sorong 65150, SumBar', '2020-10-15 09:20:45', '1982-10-04 15:58:27'),
(87, 'Kajen Saefullah S.Ked', 'Ds. Moch. Yamin No. 341, Lubuklinggau 96298, Jambi', '2020-10-15 09:20:45', '1985-05-14 08:21:13'),
(88, 'Nova Cinthia Pudjiastuti S.Ked', 'Dk. R.E. Martadinata No. 520, Tasikmalaya 85011, KepR', '2020-10-15 09:20:45', '2007-11-26 14:46:45'),
(89, 'Aisyah Farida S.Pd', 'Jln. Baranang Siang No. 209, Tebing Tinggi 55190, MalUt', '2020-10-15 09:20:45', '2014-11-18 04:37:26'),
(90, 'Jasmin Handayani', 'Jln. Camar No. 508, Tidore Kepulauan 85557, SulTra', '2020-10-15 09:20:45', '2007-01-28 20:59:09'),
(91, 'Uli Padmi Rahmawati', 'Kpg. Sadang Serang No. 224, Palu 26728, SulTra', '2020-10-15 09:20:45', '2015-03-13 05:25:15'),
(92, 'Azalea Faizah Oktaviani', 'Ds. Kebonjati No. 461, Lubuklinggau 90083, Riau', '2020-10-15 09:20:45', '2005-04-14 02:55:02'),
(93, 'Septi Winarsih', 'Ds. Gambang No. 319, Binjai 62825, Maluku', '2020-10-15 09:20:45', '1989-05-02 21:39:17'),
(94, 'Citra Zulaika', 'Ds. Asia Afrika No. 574, Tangerang 70534, SulUt', '2020-10-15 09:20:45', '1986-08-23 15:50:11'),
(95, 'Amelia Puspasari', 'Dk. Camar No. 134, Pekalongan 93382, Bengkulu', '2020-10-15 09:20:45', '2001-10-11 07:37:38'),
(96, 'Danuja Prabowo M.Kom.', 'Ds. Yogyakarta No. 715, Solok 14346, BaBel', '2020-10-15 09:20:45', '1978-04-10 11:52:45'),
(97, 'Cakrabirawa Embuh Marpaung', 'Kpg. Supono No. 222, Binjai 53007, Bengkulu', '2020-10-15 09:20:45', '2007-05-06 08:25:08'),
(98, 'Edi Adriansyah M.Pd', 'Gg. Suryo Pranoto No. 553, Singkawang 85386, Bengkulu', '2020-10-15 09:20:45', '2012-09-05 23:13:16'),
(99, 'Daliono Wibowo S.I.Kom', 'Jln. Baja No. 958, Kupang 52291, NTT', '2020-10-15 09:20:45', '2003-06-03 20:05:35'),
(100, 'Warsa Suryono', 'Gg. Veteran No. 796, Pagar Alam 29476, SulTeng', '2020-10-15 09:20:45', '2004-05-09 09:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 'm.firgia3@gmail.com', 'firgiaajj', '$2y$10$OhdourHWRHVO/Nza5B9GJeBgv6KmKwJmaXM0HdOlDPuYuOEuzgCMi', NULL, '2020-11-01 23:02:54', NULL, NULL, NULL, NULL, 1, 0, '2020-11-01 23:01:10', '2020-11-01 23:02:54', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
