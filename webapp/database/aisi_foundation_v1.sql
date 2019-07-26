-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2019 at 02:39 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aisi_foundation`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_barang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `foto` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_kategori_barang` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama`, `keterangan`, `foto`, `status`, `id_kategori_barang`, `created_at`, `updated_at`, `deleted_at`) VALUES
('1562933685', 'EPSON LCD Proyektor', 'EPSON LCD Proyektor Putih Tahun 2018', '1562933685_epson_lcd_white.jpg', '1', 2, '2019-07-25 17:36:35', '2019-07-25 17:36:35', NULL),
('1562940709', 'HP LCD Proyektor', 'HP LCD Proyektor Hitam - Silver Tahun 2017', '1562940709_hp_lcd.jpg', '1', 2, '2019-07-25 17:36:35', '2019-07-25 17:36:35', NULL),
('1562947460', 'ROL Kabel Steker', 'ROL Kabel Steker 6 Port', '1562947460_rol_kabel_steker.jpg', '1', 2, '2019-07-25 17:36:35', '2019-07-25 17:36:35', NULL),
('1562947595', 'Speaker Portable Besar', 'Speaker Ampli + Wireless Microphone Dorong', '1562947595_speaker_portable.jpg', '1', 2, '2019-07-25 17:36:35', '2019-07-25 17:36:35', NULL),
('1563149797', 'Meeting Room', 'Ruang Meeting Lantai 2 Kapasitas 8 Orang', '1563149797_meeting_room.jpg', '1', 3, '2019-07-25 17:36:35', '2019-07-25 17:36:35', NULL),
('1563149913', 'Layar Proyektor', 'Layar Proyektor Portable', '1563149913_layar_proyektor.jpg', '1', 3, '2019-07-25 17:36:35', '2019-07-25 17:36:35', NULL),
('1563150019', 'Epson Printer', 'Epson Printer White and Color', '1563150019_epson_printer.jpg', '1', 2, '2019-07-25 17:36:35', '2019-07-25 17:36:35', NULL),
('1563150087', 'Papan Tulis Kecil', 'Papan Tulis Kecil Ukuran 1 x 0.5 Meter', '1563150087_papan_tulis_kecil.jpg', '1', 3, '2019-07-25 17:36:35', '2019-07-25 17:36:35', NULL),
('1563150146', 'Spidol Papan Tulis', 'Spidol Snowman Merah, Hitam, Biru', '1563150146_spidol_papan_tulis.jpg', '1', 1, '2019-07-25 17:36:36', '2019-07-25 17:36:36', NULL),
('1563150218', 'Tas Dokumen', 'Tas / Map untuk Membawa Dokumen', '1563150218_bag_dokumen.jpg', '1', 1, '2019-07-25 17:36:36', '2019-07-25 17:36:36', NULL),
('1563150272', 'Toa Speaker Portable', 'Toa Speaker Portable kecil dengan Wireless dan Batrai', '1563150272_toa_mic_wireless.jpg', '1', 2, '2019-07-25 17:36:36', '2019-07-25 17:36:36', NULL),
('1563150312', 'Toa Portable Outdoor', 'Toa Speaker Portable untuk kegiatan Outdoor', '1563150312_TOA_portable.jpg', '1', 2, '2019-07-25 17:36:36', '2019-07-25 17:36:36', NULL),
('1564048178', 'ROL Kabel', 'ROL Kabel 10 Meter', '1564048178_kabel-rol_10_meter.jpg', '1', 2, '2019-07-25 17:36:35', '2019-07-25 17:36:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dana`
--

CREATE TABLE `dana` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kegiatan` bigint(20) UNSIGNED NOT NULL,
  `jumlah_pengajuan` decimal(8,0) DEFAULT NULL,
  `jumlah_pencairan` decimal(8,0) DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `tgl_pengajuan` date DEFAULT NULL,
  `tgl_pencairan` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dokumentasi`
--

CREATE TABLE `dokumentasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kegiatan` bigint(20) UNSIGNED NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `file` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_barang`
--

CREATE TABLE `kategori_barang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_barang`
--

INSERT INTO `kategori_barang` (`id`, `nama`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ATK', '2019-07-25 17:36:34', '2019-07-25 17:36:34', NULL),
(2, 'ELEKTRONIK', '2019-07-25 17:36:35', '2019-07-25 17:36:35', NULL),
(3, 'RUANGAN', '2019-07-25 17:36:35', '2019-07-25 17:36:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_lembaga` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proposal_kegiatan` text COLLATE utf8mb4_unicode_ci,
  `tgl_kegiatan` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lembaga`
--

CREATE TABLE `lembaga` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `no_hp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lembaga`
--

INSERT INTO `lembaga` (`id`, `id_user`, `nama`, `email`, `alamat`, `no_hp`, `keterangan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, 'Halvorson-Jones', 'alejandrin52@yahoo.com', '100 Smith Common Apt. 879\nO\'Reillyborough, NM 31884-8868', '1-445-605-4590 x92291', 'Nam facilis molestiae.', '2003-05-16 15:29:59', '1973-07-13 09:34:11', NULL),
(2, 50, 'Koss Group', 'alex29@gmail.com', '873 Kiehn Mountain Suite 823\nNicolasmouth, OH 00723-3032', '+1-720-488-0458', 'Culpa suscipit autem laboriosam iste.', '2018-04-06 21:21:02', '1986-08-30 07:00:09', NULL),
(3, 18, 'O\'Keefe, Walker and Leffler', 'orn.adriel@hotmail.com', '5930 Amalia Locks\nGlendachester, MS 83338', '+1 (364) 550-3205', 'Illum omnis aut quo nemo.', '1993-07-28 09:46:17', '2011-01-26 11:53:43', NULL),
(4, 16, 'Stracke-Rowe', 'jed21@walter.info', '4604 Kelli View Suite 237\nWatersshire, AK 50933', '758-810-4950', 'Ea aut non.', '2004-09-06 13:27:38', '2010-04-18 19:36:35', NULL),
(5, 52, 'Schimmel Group', 'gwen.wilderman@yahoo.com', '2777 Hartmann Camp Apt. 688\nGerdaside, AL 56547', '930-786-7701', 'Aperiam nesciunt iste velit similique.', '2011-01-24 04:59:34', '1972-11-21 00:43:36', NULL),
(6, 14, 'Williamson Ltd', 'fcummings@hotmail.com', '73079 Nikolaus Expressway\nWest Keithside, AK 54082', '(741) 299-3718 x381', 'Ad placeat placeat.', '2015-11-14 00:13:54', '1976-05-27 22:53:15', NULL),
(7, 45, 'McDermott, O\'Kon and Russel', 'qjacobson@nader.net', '8093 Krista Mall Apt. 196\nSusanamouth, DC 48626', '521.384.7054 x049', 'Rerum a ex beatae ut.', '2017-08-28 15:27:53', '1980-12-26 10:58:18', NULL),
(8, 37, 'Gusikowski, Miller and Boehm', 'tate.gibson@oberbrunner.com', '7501 Crooks Prairie Suite 286\nEast Santiago, SC 43327-1478', '818-490-2993 x00708', 'Doloremque molestias dolore natus itaque.', '1975-03-03 11:41:03', '2003-03-20 16:36:52', NULL),
(9, 48, 'McKenzie-Dare', 'lukas.nitzsche@mcglynn.biz', '66706 McGlynn Stream Suite 123\nMooremouth, VT 27888-4589', '1-334-589-1508 x177', 'Dolorem id iste voluptatem molestias.', '1992-04-25 23:11:41', '2001-09-10 19:42:18', NULL),
(10, 12, 'Purdy-Towne', 'pietro.bruen@erdman.biz', '711 Doyle Canyon\nNorth Antwanmouth, PA 67390-9697', '1-201-887-9066 x348', 'Laborum aut enim consequuntur.', '1990-09-01 19:25:29', '1999-10-11 14:41:27', NULL),
(11, 53, 'Carter, Labadie and Murphy', 'cassidy97@gmail.com', '590 Hilpert Dale Apt. 809\nBergeland, OR 63452', '249.961.8148', 'Aut molestiae quasi.', '2000-01-30 00:49:55', '1978-01-23 15:14:05', NULL),
(12, 47, 'Sanford, Prosacco and Okuneva', 'hmacejkovic@crooks.com', '61437 Nienow Harbor\nWest Kristyshire, NC 79212-2530', '614.873.1110', 'Libero laudantium et.', '1971-01-07 10:49:26', '2002-02-27 04:04:52', NULL),
(13, 32, 'Schaden, Kunde and Nader', 'wgoyette@gmail.com', '4365 Reynolds Fort Suite 979\nSouth Lillyland, CT 38599', '954-389-7056 x2227', 'Sapiente esse ut enim.', '1984-07-12 05:50:58', '1971-09-22 17:49:01', NULL),
(14, 38, 'Dibbert-Nikolaus', 'ima.parisian@terry.com', '68316 Goyette Prairie\nSouth Thelma, WY 03694-5011', '740-676-6212 x87620', 'Totam quo aut mollitia laborum non.', '1998-09-22 06:05:45', '2013-03-06 01:37:32', NULL),
(15, 40, 'Bernhard-Hamill', 'domenico23@yahoo.com', '89987 Ryan Lodge Apt. 186\nNew Baileyland, ID 99030-0080', '885-338-2498 x67646', 'Qui iure beatae.', '2013-04-10 16:57:49', '2019-03-27 23:22:18', NULL),
(16, 13, 'Rau-Little', 'luettgen.henry@yahoo.com', '554 Carissa Freeway\nNew Craigmouth, CT 87899', '1-748-577-6495 x34104', 'Corrupti voluptatem sit quam.', '1994-03-30 14:04:33', '2003-09-19 23:32:41', NULL),
(17, 26, 'Wilkinson Ltd', 'christiana39@treutel.com', '24674 Pollich Landing\nLehnershire, MA 12347-5900', '1-368-372-0062', 'Cum perspiciatis eligendi.', '2012-10-05 12:41:38', '1970-06-15 10:22:02', NULL),
(18, 19, 'Schmidt LLC', 'thiel.kamryn@gmail.com', '3728 Volkman Summit\nLake Ismael, DC 17260', '+1-241-945-1803', 'Incidunt cum exercitationem et aut.', '1974-01-05 22:31:52', '2000-01-14 07:12:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_user_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_02_224520_create_lembaga_table', 1),
(4, '2019_07_02_225047_create_kegiatan_table', 1),
(5, '2019_07_02_225345_create_dana_table', 1),
(6, '2019_07_02_225752_create_dokumentasi_table', 1),
(7, '2019_07_02_230011_create_kategori_barang_table', 1),
(8, '2019_07_02_230019_create_barang_table', 1),
(9, '2019_07_02_230251_create_peminjaman_table', 1),
(10, '2019_07_22_041944_create_peminjaman_barang_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_kegiatan` bigint(20) UNSIGNED DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `tgl_pinjam` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `id_user`, `id_kegiatan`, `keterangan`, `tgl_pinjam`, `tgl_kembali`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 17, NULL, 'Et tenetur facere.', '2019-07-23', '2019-07-27', 'DIPINJAM', '2011-04-07 17:46:44', '1986-09-16 12:58:21', NULL),
(2, 33, NULL, 'Quas voluptatum iusto aut.', '2019-07-22', '2019-07-29', 'DIPINJAM', '1986-08-19 03:15:07', '1998-08-17 05:58:43', NULL),
(3, 5, NULL, 'Aliquid recusandae et.', '2019-07-25', '2019-07-29', 'DIPINJAM', '1998-06-04 14:15:52', '2001-01-28 05:54:27', NULL),
(4, 47, NULL, 'Sed qui et excepturi omnis.', '2019-07-23', '2019-07-25', 'DIPINJAM', '1976-12-16 23:27:44', '2006-11-30 03:05:37', NULL),
(5, 13, NULL, 'Voluptas qui rem voluptas ea.', '2019-07-22', '2019-07-27', 'DIPINJAM', '2005-01-23 09:13:06', '1977-10-13 05:31:57', NULL),
(6, 14, NULL, 'Consequatur sit natus reiciendis voluptates eius.', '2019-07-28', '2019-07-28', 'DIPINJAM', '1985-02-28 02:21:19', '1986-07-09 22:18:40', NULL),
(7, 24, NULL, 'Voluptatem dolor laboriosam fuga amet eaque.', '2019-07-25', '2019-07-28', 'DIPINJAM', '1997-08-24 21:10:01', '2008-09-14 08:21:36', NULL),
(8, 13, NULL, 'Perferendis qui culpa minima.', '2019-07-28', '2019-07-29', 'DIPINJAM', '2001-02-24 05:09:44', '1994-12-11 19:02:17', NULL),
(9, 38, NULL, 'Aspernatur quae provident numquam quo.', '2019-07-27', '2019-07-28', 'DIKEMBALIKAN', '2000-12-27 17:22:32', '1974-05-07 01:38:08', NULL),
(10, 4, NULL, 'Qui minima culpa repudiandae explicabo.', '2019-07-27', '2019-07-27', 'DIPINJAM', '1976-07-09 03:27:11', '1980-06-16 04:21:19', NULL),
(11, 54, NULL, 'Consequatur voluptate eaque dolor.', '2019-07-27', '2019-07-28', 'DIPINJAM', '1976-09-22 00:23:05', '1973-11-21 13:15:22', NULL),
(12, 34, NULL, 'Nisi doloribus dolorem.', '2019-07-26', '2019-07-28', 'DIPINJAM', '1977-01-01 10:51:31', '1992-08-20 03:38:18', NULL),
(13, 15, NULL, 'Enim cumque facilis.', '2019-07-24', '2019-07-29', 'DIKEMBALIKAN', '2003-06-02 03:05:33', '1996-09-23 00:27:23', NULL),
(14, 44, NULL, 'Consequatur iste rem dignissimos harum est.', '2019-07-29', '2019-07-30', 'DIKEMBALIKAN', '1998-01-07 21:18:14', '2011-05-24 18:54:22', NULL),
(15, 44, NULL, 'Est accusamus similique.', '2019-07-25', '2019-07-27', 'DIPINJAM', '2012-07-11 11:02:10', '1994-11-07 19:36:14', NULL),
(16, 47, NULL, 'Veniam pariatur ratione sit repellat est.', '2019-07-27', '2019-07-29', 'DIKEMBALIKAN', '2004-10-03 20:30:35', '2006-08-29 21:38:12', NULL),
(17, 7, NULL, 'Animi facere dignissimos molestiae vitae quo.', '2019-07-24', '2019-07-27', 'DIPINJAM', '1990-04-14 21:29:21', '1985-03-22 03:54:50', NULL),
(18, 17, NULL, 'Culpa accusamus impedit aliquam.', '2019-07-25', '2019-07-29', 'DIPINJAM', '1974-11-26 19:19:29', '2002-08-03 11:17:00', NULL),
(19, 21, NULL, 'Asperiores officiis maiores nesciunt.', '2019-07-29', '2019-07-29', 'DIPINJAM', '2012-10-04 08:00:37', '1980-07-15 01:13:33', NULL),
(20, 51, NULL, 'Quos in veritatis ut provident.', '2019-07-29', '2019-07-29', 'DIKEMBALIKAN', '1984-06-08 19:19:27', '1999-01-01 09:33:09', NULL),
(21, 35, NULL, 'Beatae fugiat deleniti dolores.', '2019-07-23', '2019-07-25', 'DIPINJAM', '2009-06-08 20:46:41', '1977-12-26 05:13:04', NULL),
(22, 52, NULL, 'Excepturi delectus optio fugit.', '2019-07-22', '2019-07-29', 'DIKEMBALIKAN', '2000-12-13 18:14:35', '1993-01-19 18:31:58', NULL),
(23, 4, NULL, 'Id voluptas et quis.', '2019-07-24', '2019-07-26', 'DIKEMBALIKAN', '2010-10-28 06:21:05', '1978-02-26 06:24:31', NULL),
(24, 27, NULL, 'Facere soluta ullam voluptates qui.', '2019-07-26', '2019-07-29', 'DIKEMBALIKAN', '2007-02-16 14:02:04', '1993-06-10 17:46:44', NULL),
(25, 42, NULL, 'Aperiam doloremque voluptatibus.', '2019-07-25', '2019-07-26', 'DIPINJAM', '2019-02-07 12:07:22', '1985-05-23 17:36:28', NULL),
(26, 49, NULL, 'Est pariatur aspernatur et fuga.', '2019-07-27', '2019-07-28', 'DIKEMBALIKAN', '1978-01-06 13:35:04', '1987-10-03 10:50:02', NULL),
(27, 12, NULL, 'Autem itaque officia.', '2019-07-25', '2019-07-28', 'DIKEMBALIKAN', '2000-04-10 15:42:58', '1992-06-25 12:08:14', NULL),
(28, 38, NULL, 'Similique corporis quibusdam autem.', '2019-07-26', '2019-07-28', 'DIPINJAM', '2000-05-03 13:42:18', '1985-04-27 04:03:08', NULL),
(29, 7, NULL, 'Ea at modi ut cumque maiores.', '2019-07-22', '2019-07-26', 'DIKEMBALIKAN', '1994-08-29 04:27:45', '1978-03-29 10:44:58', NULL),
(30, 39, NULL, 'Nihil maiores vel fugiat possimus.', '2019-07-28', '2019-07-29', 'DIKEMBALIKAN', '1992-03-08 15:32:53', '1990-06-07 12:19:40', NULL),
(31, 25, NULL, 'Quis dolor corporis accusamus labore.', '2019-07-24', '2019-07-29', 'DIPINJAM', '1989-10-11 05:06:23', '1990-05-13 07:18:00', NULL),
(32, 37, NULL, 'Magni odio enim vel autem quia.', '2019-07-25', '2019-07-28', 'DIPINJAM', '2002-01-11 23:58:45', '2001-07-27 16:24:27', NULL),
(33, 14, NULL, 'Amet ducimus et et et.', '2019-07-25', '2019-07-26', 'DIPINJAM', '2016-09-10 09:31:57', '1976-01-31 01:39:21', NULL),
(34, 47, NULL, 'Sed molestiae quo aut.', '2019-07-29', '2019-07-29', 'DIPINJAM', '2011-07-25 16:31:33', '2013-09-10 14:39:32', NULL),
(35, 13, NULL, 'Eos qui exercitationem dolorem consequatur debitis.', '2019-07-26', '2019-07-29', 'DIPINJAM', '1981-12-16 01:29:35', '1977-01-07 11:06:22', NULL),
(36, 49, NULL, 'Amet ut porro cumque aut.', '2019-07-29', '2019-07-29', 'DIPINJAM', '2003-01-17 12:58:30', '1976-09-30 19:38:51', NULL),
(37, 38, NULL, 'Error quis temporibus sed.', '2019-07-24', '2019-07-26', 'DIKEMBALIKAN', '1991-12-10 21:57:42', '2009-02-05 19:05:08', NULL),
(38, 13, NULL, 'Et perspiciatis cum eaque consequatur quisquam.', '2019-07-24', '2019-07-25', 'DIPINJAM', '2010-05-27 09:55:15', '2015-10-31 19:55:43', NULL),
(39, 8, NULL, 'Sed perferendis dolor.', '2019-07-29', '2019-07-29', 'DIKEMBALIKAN', '2005-06-28 20:02:41', '2007-09-09 08:59:14', NULL),
(40, 43, NULL, 'Aperiam adipisci debitis beatae ab.', '2019-07-27', '2019-07-28', 'DIKEMBALIKAN', '1983-03-08 22:17:15', '2000-02-06 00:38:52', NULL),
(41, 9, NULL, 'Eum cumque sed numquam.', '2019-07-29', '2019-07-29', 'DIKEMBALIKAN', '1996-02-29 01:06:49', '2004-11-03 09:26:49', NULL),
(42, 17, NULL, 'Eligendi laudantium velit sint corporis.', '2019-07-27', '2019-07-28', 'DIPINJAM', '2013-10-27 03:19:20', '1997-01-19 22:12:14', NULL),
(43, 6, NULL, 'Cupiditate et laudantium non quo.', '2019-07-28', '2019-07-29', 'DIPINJAM', '2009-05-20 23:30:43', '2005-10-04 22:00:44', NULL),
(44, 38, NULL, 'Numquam sapiente at rem.', '2019-07-27', '2019-07-29', 'DIPINJAM', '1984-10-28 18:44:32', '2018-01-31 03:59:54', NULL),
(45, 31, NULL, 'Repellat rerum sunt.', '2019-07-30', '2019-07-30', 'DIKEMBALIKAN', '1972-03-22 03:29:20', '1991-02-10 15:56:23', NULL),
(46, 41, NULL, 'Rerum itaque et tenetur.', '2019-07-28', '2019-07-29', 'DIPINJAM', '1997-09-06 19:53:28', '1996-06-05 23:20:51', NULL),
(47, 22, NULL, 'Voluptatem veniam maxime.', '2019-07-26', '2019-07-26', 'DIPINJAM', '2001-01-28 20:34:57', '1973-12-25 00:13:02', NULL),
(48, 44, NULL, 'Ex adipisci voluptatibus ab.', '2019-07-25', '2019-07-27', 'DIKEMBALIKAN', '2014-11-06 04:35:56', '1991-11-28 19:56:51', NULL),
(49, 37, NULL, 'Dolores quasi illum pariatur.', '2019-07-27', '2019-07-28', 'DIPINJAM', '1981-03-07 09:14:39', '2011-07-20 00:47:38', NULL),
(50, 19, NULL, 'Sapiente dolor tempora officiis.', '2019-07-25', '2019-07-29', 'DIKEMBALIKAN', '1992-09-24 13:29:47', '2009-06-28 06:50:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman_barang`
--

CREATE TABLE `peminjaman_barang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_peminjaman` bigint(20) UNSIGNED NOT NULL,
  `kode_barang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peminjaman_barang`
--

INSERT INTO `peminjaman_barang` (`id`, `id_peminjaman`, `kode_barang`) VALUES
(1, 10, '1564048178'),
(2, 23, '1563150019'),
(3, 19, '1562933685'),
(4, 34, '1563150272'),
(5, 42, '1562947460'),
(6, 47, '1563150146'),
(7, 12, '1563150019'),
(8, 45, '1563149913'),
(9, 25, '1563150272'),
(10, 39, '1563150312'),
(11, 31, '1562947460'),
(12, 22, '1563150312'),
(13, 18, '1563150312'),
(14, 26, '1563150146'),
(15, 34, '1562933685'),
(16, 6, '1563150146'),
(17, 17, '1562947460'),
(18, 50, '1562933685'),
(19, 50, '1563149913'),
(20, 9, '1562933685'),
(21, 27, '1564048178'),
(22, 20, '1563149797'),
(23, 32, '1562947460'),
(24, 31, '1563150312'),
(25, 21, '1562940709'),
(26, 26, '1562947595'),
(27, 40, '1563150146'),
(28, 10, '1562940709'),
(29, 40, '1562940709'),
(30, 45, '1562947460'),
(31, 44, '1563149797'),
(32, 18, '1563150087'),
(33, 2, '1562940709'),
(34, 32, '1563150087'),
(35, 4, '1562940709'),
(36, 32, '1563150087'),
(37, 17, '1563150272'),
(38, 49, '1563149797'),
(39, 25, '1563150019'),
(40, 16, '1564048178'),
(41, 19, '1563150087'),
(42, 25, '1563150272'),
(43, 36, '1562947595'),
(44, 33, '1563150272'),
(45, 37, '1562947595'),
(46, 39, '1563150312'),
(47, 48, '1563150146'),
(48, 23, '1563150312'),
(49, 47, '1562933685'),
(50, 44, '1563149913'),
(51, 37, '1562940709'),
(52, 16, '1563150146'),
(53, 6, '1563150087'),
(54, 50, '1562940709'),
(55, 50, '1563150218'),
(56, 42, '1563150146'),
(57, 14, '1562933685'),
(58, 38, '1564048178'),
(59, 19, '1562947595'),
(60, 12, '1563149797'),
(61, 23, '1563149913'),
(62, 38, '1563150146'),
(63, 7, '1562947595'),
(64, 6, '1563150146'),
(65, 42, '1562947460'),
(66, 34, '1562947595'),
(67, 9, '1563150019'),
(68, 6, '1562940709'),
(69, 7, '1563150087'),
(70, 18, '1563150272'),
(71, 31, '1562933685'),
(72, 27, '1563150146'),
(73, 47, '1564048178'),
(74, 11, '1563150218'),
(75, 42, '1563150019'),
(76, 6, '1562947460'),
(77, 5, '1562947595'),
(78, 27, '1562933685'),
(79, 44, '1563150312'),
(80, 30, '1563150087'),
(81, 40, '1563150087'),
(82, 35, '1562947460'),
(83, 34, '1562947595'),
(84, 42, '1563150146'),
(85, 5, '1563149797'),
(86, 44, '1563150272'),
(87, 48, '1563149913'),
(88, 34, '1563150019'),
(89, 23, '1563150087'),
(90, 47, '1563150312'),
(91, 24, '1563150019'),
(92, 49, '1563150146'),
(93, 40, '1562933685'),
(94, 3, '1563150272'),
(95, 37, '1563150146'),
(96, 9, '1563150087'),
(97, 10, '1563150272'),
(98, 30, '1563150087'),
(99, 44, '1562933685'),
(100, 33, '1562947460');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `jenis_kelamin` int(11) DEFAULT NULL,
  `no_hp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validate_status` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `nama`, `alamat`, `jenis_kelamin`, `no_hp`, `foto`, `role`, `validate_status`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'administrator@aisifoundation.org', '$2y$10$rlXzKYEpx99pToBrHGdBQOsmTvPxzyLsJ0ZxOpD412QFi18MpDfQW', 'AISI Administrator', 'Depok', 1, '018329123', 'avatar-boy.png', 'ADMIN', 1, NULL, NULL, '2019-07-25 17:36:29', '2019-07-25 17:36:29'),
(2, 'staff@aisifoundation.org', '$2y$10$dyr85chONKPv5VCA7wYy7.eiMEaeTNV2jhAki397EJbIePkxzqQY6', 'Staff Yayasan AISI', 'Depok', 1, '018329123', 'avatar-boy.png', 'STAFF', 1, NULL, NULL, '2019-07-25 17:36:30', '2019-07-25 17:36:30'),
(3, 'imamfirmansyah27@gmail.com', '$2y$10$Eh9xm1/EA6wiggSiAfM0hO8nX4/uu1SOi1AHQ0A2QVPH9WIgiOz26', 'Imam Firmansyah', 'Depok', 1, '018329123', 'avatar-boy.png', 'UMUM', 1, NULL, NULL, '2019-07-25 17:36:30', '2019-07-25 17:36:30'),
(4, 'kpmd@gmail.com', '$2y$10$obTybfwrOF1wGzEjUkY7cupnucErXxj9B1xrZv3sWgi4le.e7STcG', 'KPMD Depok', 'Depok', 1, '018329123', 'avatar-boy.png', 'LEMBAGA', 1, NULL, NULL, '2019-07-25 17:36:30', '2019-07-25 17:36:30'),
(5, 'fmckenzie@gmail.com', '$2y$10$Fe41cPo85ZTG/zADW.v1AOzbgWFl56mE1WEWzkQ5poxgTpdRojKum', 'Ms. Kasandra Emmerich Sr.', '220 Obie Drives\nLuistown, NH 06316', 1, '+1.645.343.0839', 'avatar-boy.png', 'STAFF', 0, NULL, NULL, '2017-11-08 08:31:20', '1970-05-14 16:57:12'),
(6, 'sarai69@hotmail.com', '$2y$10$k2xS6J/ci.7zMlsZHwXoC.JG3RCH2dERCaO/smiTJK.JO2cRhOvF2', 'Haylie Halvorson Sr.', '342 Rohan Key Apt. 805\nSouth Billie, NY 85829', 0, '+1-613-823-6886', 'avatar-boy.png', 'UMUM', 0, NULL, NULL, '2017-12-29 02:37:03', '1989-07-11 10:20:55'),
(7, 'weimann.verdie@koss.com', '$2y$10$.YbemUEA176oMNGgDNe2M.4iumXih0/knhzgmLhbHdUWd/6iFue9u', 'Mr. Robb Kub IV', '510 Georgianna Park Suite 833\nNorth Caitlyn, NV 12990', 0, '730.242.9899 x16471', 'avatar-boy.png', 'ADMIN', 1, NULL, NULL, '1976-02-13 09:59:22', '1970-01-13 11:18:44'),
(8, 'vandervort.juvenal@dicki.com', '$2y$10$dd1LYVsZjDXc2IaNM2H7JO6rDScLLeOIsRb/fpHxZie3tPrpXGcLe', 'Ms. Lessie Heathcote', '2555 Abernathy Fort Apt. 545\nEast Rozella, UT 14555-3934', 1, '+1-390-705-6808', 'avatar-boy.png', 'ADMIN', 1, NULL, NULL, '2011-03-23 00:06:59', '1979-06-01 11:54:45'),
(9, 'koch.bonita@gmail.com', '$2y$10$AUfd4eal94R6GcXquVV3peAmntEiPbiRzF8s9FDK8rBYeQuNnncEG', 'Rosamond Wolf', '41545 Gaylord Roads Suite 163\nPollichfurt, AR 72919-5435', 1, '(820) 239-8749', 'avatar-boy.png', 'LEMBAGA', 1, NULL, NULL, '1996-05-09 08:53:44', '2018-06-25 06:30:46'),
(10, 'filomena.wiza@hotmail.com', '$2y$10$vZ5ldD4eXPuepMP2cvp2AO2VA6OFRVjdnrSGCKMSvALGsKtP1Ad6W', 'Robbie Feeney', '95235 Reichel Pines Suite 714\nGreenholtbury, WI 65515', 0, '734.354.5914', 'avatar-boy.png', 'STAFF', 1, NULL, NULL, '1974-11-20 12:21:26', '1988-11-04 09:45:41'),
(11, 'roberts.lois@ebert.com', '$2y$10$NuAefW9vogV8/D2ydFJnYeGWQDwbqkOJR48gIiwmbLfnFYGRFR10S', 'Prof. Maryse Ernser III', '31677 Payton Row Apt. 273\nKiannahaven, SD 36617-4923', 0, '+19713449534', 'avatar-boy.png', 'ADMIN', 1, NULL, NULL, '1970-10-07 03:27:11', '1979-06-02 22:11:16'),
(12, 'mateo.olson@buckridge.com', '$2y$10$VJAr9vs8515OoXJtgN9Et.Z1cdtQnhqCiAV7Z/s0rhFVmxRBwUh1W', 'Ms. Bernadine Dooley Jr.', '21303 Hessel Viaduct Apt. 689\nNorth Chayaborough, VA 71158-8043', 1, '917.219.9573', 'avatar-boy.png', 'LEMBAGA', 1, NULL, NULL, '1981-12-12 20:59:34', '1999-04-06 08:44:44'),
(13, 'ddamore@bednar.net', '$2y$10$stGJpPEI7Gn2YO/zULJ9jOFYFcYI7dVwUKY0Jyp591ssAL7Y.cdO.', 'Glen King', '337 Feil Ports Apt. 790\nSouth Joe, KY 88453-1595', 0, '+19256635390', 'avatar-boy.png', 'LEMBAGA', 0, NULL, NULL, '2019-03-30 20:11:07', '1984-07-05 11:02:13'),
(14, 'rex.schowalter@kerluke.com', '$2y$10$jcvZEtRcHwTJQOOYQVlRTOkJLWUA0Lokl2uQuequN6W6rJybZRf9e', 'Patricia Rolfson', '3103 Stark Locks Apt. 479\nWest Floy, TX 61403-4923', 1, '1-482-340-2737 x4264', 'avatar-boy.png', 'LEMBAGA', 0, NULL, NULL, '2018-04-15 12:36:05', '2010-02-18 05:34:47'),
(15, 'patience.donnelly@hotmail.com', '$2y$10$FTeQkCwxT1CH3MOTuqx/Mewir77bmlk5GsukULqKv2lWHTL9IXVjO', 'Ms. Erica Tillman PhD', '21803 Veum Junction Apt. 817\nLake Jeramieport, NV 67681-0573', 1, '(465) 805-3520 x957', 'avatar-boy.png', 'STAFF', 1, NULL, NULL, '1975-03-13 16:39:59', '1974-01-26 18:09:47'),
(16, 'kautzer.marty@yahoo.com', '$2y$10$aLq4AvWL.3mA9EtPpOfRPe8SnBFouqJz/JKMrswl3V73njBd6qP6e', 'Bernadette Keebler DDS', '35073 Pamela Glens Suite 335\nJeanetteview, MS 67914-4503', 1, '714-254-4279 x6505', 'avatar-boy.png', 'LEMBAGA', 1, NULL, NULL, '1996-03-06 23:19:40', '2000-05-31 06:55:05'),
(17, 'santa.gorczany@gmail.com', '$2y$10$l/WmIsuRLz5WdMf75fl4seLCvLMdPNzMkazXNLlF/xYkN1O84Pekq', 'Amara Volkman', '77743 Monserrate Orchard Apt. 569\nHermanntown, UT 68835', 0, '(876) 854-7730', 'avatar-boy.png', 'ADMIN', 1, NULL, NULL, '2006-01-07 14:30:23', '1974-10-24 17:56:53'),
(18, 'shields.chelsie@considine.com', '$2y$10$yWPxomc4do1KbbjMTKxNK.ml0pm6rCO59fayAC5NFynybqk8Y2CrS', 'Mr. Jerome Olson', '1617 Reva Glens\nEast Thelmaport, UT 70397', 1, '1-729-806-7245', 'avatar-boy.png', 'LEMBAGA', 0, NULL, NULL, '1985-07-15 08:52:41', '1976-02-27 07:07:50'),
(19, 'lindsay27@little.com', '$2y$10$1iCTc87H3WK/9s7VkePk.uEOi7/q1Q8rRLeIqtQc.kv9dhB5LskUa', 'Mrs. Burdette Walker MD', '38377 Santino Springs Suite 976\nLake Audie, ME 15992', 1, '1-924-616-9549 x547', 'avatar-boy.png', 'LEMBAGA', 1, NULL, NULL, '1997-07-06 18:14:13', '1983-04-03 17:28:15'),
(20, 'zieme.jocelyn@yahoo.com', '$2y$10$Z9.q0n.8ud/4qUp.Vp0AaOhhpSITbikEUkK.W4AX5kB91qj8cWwIy', 'Dr. Kellen Volkman', '590 Stoltenberg Square\nNorth Cali, IN 21209', 1, '652-982-7355 x7560', 'avatar-boy.png', 'STAFF', 1, NULL, NULL, '1980-06-02 23:54:48', '1975-01-24 21:40:11'),
(21, 'coy00@willms.biz', '$2y$10$KTT5sJ.mRVsBszhUEZ7ciOeSSRjiXtUuIugLIchUWxK7BmHxAI41.', 'Lamont Turner', '503 Mills Rest Apt. 735\nAltenwerthport, WV 40701-9819', 0, '1-930-704-5869', 'avatar-boy.png', 'UMUM', 0, NULL, NULL, '2005-05-18 08:58:25', '1972-01-17 23:11:28'),
(22, 'delpha.gerlach@gusikowski.org', '$2y$10$tTqKNrxTKW.5eePeBCCjtey1LytMmB9zaRtuZ7ORBfpJxmONgYZGC', 'Dawn Harvey', '425 Austyn Views Suite 217\nLake Andyberg, CT 51183-9941', 0, '(635) 886-9599', 'avatar-boy.png', 'ADMIN', 1, NULL, NULL, '1998-09-02 12:14:48', '2001-12-25 12:26:57'),
(23, 'dennis89@rippin.com', '$2y$10$ifrTGrxIvXd7b50JEqLgO.J9sr5uo/u4ozTuFGedOvE6E7.8/t84u', 'Prof. Moshe Wisozk IV', '399 Braun Spring Suite 186\nHackettport, OR 72554-6372', 0, '(486) 710-8101 x09393', 'avatar-boy.png', 'STAFF', 0, NULL, NULL, '2006-05-14 15:41:23', '1990-04-05 12:53:37'),
(24, 'dickinson.carey@cole.biz', '$2y$10$NkiJIc/9ZrxFAm/bvZjakO9fSQxbBDyoExiC3gTLFWCZnWxXoUhX.', 'Aaron Robel', '47566 Ryder Crest Suite 165\nVandervortbury, MS 88945-6243', 1, '+1 (487) 454-1501', 'avatar-boy.png', 'STAFF', 0, NULL, NULL, '2006-10-08 18:25:26', '1977-09-03 11:57:07'),
(25, 'dulce48@raynor.com', '$2y$10$V7NLvtjHRjlnJ4O6mSh1DO8CAT/q2GDuTyvgr8ZsEJSPN5udBQBjO', 'Lera Raynor', '25860 Dickens Place Apt. 323\nSouth Merlestad, VA 99571-8263', 0, '604-664-5015', 'avatar-boy.png', 'ADMIN', 1, NULL, NULL, '1988-06-13 07:30:40', '1978-09-25 10:08:26'),
(26, 'tlowe@haley.com', '$2y$10$ofL6L1JvirjsHOmK9LkTD.92NjmoKQg/WQK8ld7.xEebrkO7/jufy', 'Jonathon Wyman', '56377 Otho Summit\nPort Noble, MN 12041-4739', 0, '(394) 963-4291 x798', 'avatar-boy.png', 'LEMBAGA', 0, NULL, NULL, '2015-06-10 22:07:13', '2015-05-17 09:37:15'),
(27, 'larkin.georgiana@gmail.com', '$2y$10$Dqc/qlj43dDxgiBt2RAsuuOOx2d.qlcKB/YcC68COrzole4VuA7Ra', 'Dr. Jeremy Batz', '1716 Wehner Plaza Apt. 268\nRubieton, WY 60293-2273', 1, '617-708-6325 x31745', 'avatar-boy.png', 'ADMIN', 0, NULL, NULL, '1995-11-19 20:37:50', '2016-12-25 09:12:35'),
(28, 'batz.ignatius@yahoo.com', '$2y$10$p.crdTaEILGeaz.T77ZQO.sX87WVLHPLEGtxyzF6KesSFP/MH3puS', 'Prof. Tyrique Upton', '904 Maynard Villages\nSouth Oscarborough, NE 76084-0382', 1, '1-409-477-9010', 'avatar-boy.png', 'UMUM', 0, NULL, NULL, '1970-02-02 05:39:51', '2006-04-15 02:02:11'),
(29, 'mathias.fay@yahoo.com', '$2y$10$ywWhOj2tIQ5SV24FptNCnuTCp74Y/ahouoVTdbaiXHP7YDHKPedHS', 'Mrs. Mya Eichmann DDS', '722 Lavonne Route\nNorth Estefania, DE 76976', 1, '(750) 286-4214 x2646', 'avatar-boy.png', 'STAFF', 1, NULL, NULL, '2000-05-29 13:43:32', '1993-01-08 18:33:53'),
(30, 'conn.rahsaan@ferry.com', '$2y$10$nBMUzxS06rmyNzGxJ14Wteuh662UKyGsNetCEAJ/5319zW5tzO9iq', 'Tyreek Herzog', '6782 Hill Circles\nElveraville, NM 25368-9768', 0, '681-401-5615 x338', 'avatar-boy.png', 'UMUM', 0, NULL, NULL, '2018-03-29 16:02:04', '1993-10-19 01:07:50'),
(31, 'elinor.breitenberg@walter.com', '$2y$10$k1b5nkkoOEwLL0FmH7dWGeYBNSki2QehnyIxOnRq7vKHbXTtjVRnK', 'Prof. Schuyler Reichel MD', '186 Collins Extensions\nAlessandroside, CA 69024-9185', 1, '1-267-559-2237 x4772', 'avatar-boy.png', 'STAFF', 0, NULL, NULL, '1979-01-06 11:56:43', '1999-07-15 20:26:20'),
(32, 'gabe.ryan@hotmail.com', '$2y$10$IUqnPwTOQjQtJMPJPLh11umneBlRmXjikvaQH8cgX3qiFOxSZ3StS', 'Mr. Chad Walsh', '2806 Keira Harbors\nLynchton, NC 18978-9284', 0, '1-209-905-4121', 'avatar-boy.png', 'LEMBAGA', 0, NULL, NULL, '2010-11-21 15:22:03', '1996-09-19 20:28:02'),
(33, 'zyost@conn.com', '$2y$10$GgV6AegZ/TSNMeLIlSvCIOBDqmafLjfRjqn7PlEBJ87huiW89zcB.', 'Jerry Kutch V', '508 Princess Port Apt. 578\nPort Tressafort, WY 39080-9519', 0, '235-399-8309', 'avatar-boy.png', 'UMUM', 0, NULL, NULL, '1979-03-26 22:02:45', '2003-03-06 11:06:28'),
(34, 'janessa.armstrong@schmitt.info', '$2y$10$msY9BtmD2fZR/kn5pKTT7uWpkJWW.ml5P3PUmE3sG6sUnOMEInl4W', 'Miss Rossie Franecki IV', '39066 Kub Green Apt. 150\nEast Elfrieda, MN 80455-3536', 1, '313-209-3907 x410', 'avatar-boy.png', 'ADMIN', 0, NULL, NULL, '1988-11-01 02:39:22', '2005-02-25 17:28:00'),
(35, 'lockman.nico@hotmail.com', '$2y$10$qIDNtleMftzdXzxxYIoyoOqWXNihy5EajFJAXB6xlvl.ggL5Bx.AW', 'Annamarie Quigley', '714 Camylle Squares Apt. 088\nWest Cesarchester, WY 45840-3496', 1, '453-288-7355 x5174', 'avatar-boy.png', 'UMUM', 1, NULL, NULL, '2002-05-27 11:13:21', '2010-04-28 05:12:26'),
(36, 'schoen.annalise@torp.com', '$2y$10$1JFZ0ecbfmVCx4UIzRGXs.slSP.PrR6Yd9Gnp1lkfI/uVn5S2D9gS', 'Montana Roberts', '2807 Destini Corner Apt. 505\nNew Francesco, CT 94485', 0, '+19964549839', 'avatar-boy.png', 'STAFF', 0, NULL, NULL, '1982-10-07 02:14:37', '2002-02-17 04:13:31'),
(37, 'raphael91@gmail.com', '$2y$10$AMOpoS5BWyZlOY69hHpRW.Y/svoizg.xTEEydvdKObvEKlWQg5ZNe', 'Emilio Kreiger', '1944 Rosalyn Mill\nNew Nathanielfort, CO 84422', 0, '1-474-226-2727', 'avatar-boy.png', 'LEMBAGA', 1, NULL, NULL, '2002-01-15 06:17:38', '2004-10-10 09:50:18'),
(38, 'gklocko@hotmail.com', '$2y$10$Kc1Xb6pkrNpwUT.xjYB9b.Rm2JfWByl.zEC/1w9xSl4kcBE4Pak4C', 'Wava Heller', '4773 Collier Crescent Apt. 526\nTonyport, OR 95596-3102', 1, '(841) 709-9935', 'avatar-boy.png', 'LEMBAGA', 1, NULL, NULL, '1997-12-31 11:33:08', '2014-01-09 16:07:31'),
(39, 'frussel@jast.com', '$2y$10$Rw2jZKN/ZHdd2TFftWkJIOm06Wa7ZtoWn6aOHPuugB8XtdxcE/SDi', 'Crystal Heidenreich', '8262 Feest Glens\nLake Kamryn, AK 27588', 0, '1-369-693-0283', 'avatar-boy.png', 'STAFF', 1, NULL, NULL, '1976-12-18 10:29:23', '2002-11-02 09:19:49'),
(40, 'akihn@gmail.com', '$2y$10$zhCP9MBElWq6NrRHeYkEP.hKkn3oAF9UmzW9jdOl/rvV82EQE..YC', 'Grover McLaughlin', '4177 Kattie Ways Apt. 560\nNorth Hollyville, MN 75528-5924', 1, '(441) 462-6662', 'avatar-boy.png', 'LEMBAGA', 0, NULL, NULL, '2017-12-27 15:06:55', '2005-06-25 03:46:13'),
(41, 'thad.cummings@hotmail.com', '$2y$10$BXWGwADbIinm2WtiSuObP.oV8wcTJu6bx1.J9aqbMLKwroeeTEe1y', 'Ernie Hoppe PhD', '6376 Mohammad Hill\nNew Meggieborough, SD 85575-1962', 0, '(617) 901-7468', 'avatar-boy.png', 'ADMIN', 1, NULL, NULL, '1991-10-08 17:11:31', '2014-08-12 04:42:24'),
(42, 'leonie85@reynolds.com', '$2y$10$kdPToc2vSUGjdPP2v4nY0ORzwG4Cacpa/CHZ37SFkklw8PFTNdxKW', 'Malcolm Herman', '8919 Rico Fords Suite 454\nNew Finnhaven, IN 82232-7204', 0, '+1 (701) 705-3290', 'avatar-boy.png', 'ADMIN', 1, NULL, NULL, '2014-05-03 02:00:11', '2011-08-28 20:06:46'),
(43, 'smedhurst@hotmail.com', '$2y$10$d/hrNbAJ.YyA.eSPYZ9A7uUCzORg5YYkZgSxcilQRzHXaOjVTM92a', 'Marcus Collier III', '919 Annetta Highway\nHamillland, OR 32918', 1, '(679) 638-1243 x928', 'avatar-boy.png', 'ADMIN', 0, NULL, NULL, '1988-02-28 01:44:04', '1978-08-14 07:41:29'),
(44, 'wilfredo.christiansen@yahoo.com', '$2y$10$welYPEm.FohHTB45XSWfneFE4r3aPLlgHw1zuSKttDGex5eur0RDu', 'Nova Lynch', '7044 Annalise Creek Suite 478\nStiedemannfort, PA 72270', 1, '(865) 474-9255', 'avatar-boy.png', 'ADMIN', 0, NULL, NULL, '1998-08-25 21:28:10', '1995-07-10 16:26:23'),
(45, 'neal19@ullrich.info', '$2y$10$UE6mR7zxXmKrT0z8P9Ky1.14aCdwI6Dr5R3XyOVrOIKeIbrRbihCe', 'Alva Dickinson', '55724 Sandra Square\nSouth Darrellstad, ID 49725-4064', 0, '645-680-0602', 'avatar-boy.png', 'LEMBAGA', 0, NULL, NULL, '2015-07-18 12:36:01', '2011-06-20 08:59:46'),
(46, 'xsawayn@boehm.biz', '$2y$10$rDN0W0LUarFrFEehviqaoeHoNVUmAHYLS0tZxNrhPd2d7NcT.p55m', 'Dr. Karson Thompson Sr.', '473 Sofia Inlet Apt. 805\nMissouriton, AR 42178-2504', 1, '615-435-5291', 'avatar-boy.png', 'STAFF', 0, NULL, NULL, '1983-10-20 15:08:54', '2010-09-24 16:35:16'),
(47, 'grimes.drake@kunde.org', '$2y$10$SbQiisdCk1z8h26NsvJm9uZRp/.9ct6/vICbW0I47HDa6prgflJDe', 'Cecile Labadie I', '2682 Jalen Row Apt. 083\nPort Saigeside, ME 36567', 0, '+13175571016', 'avatar-boy.png', 'LEMBAGA', 0, NULL, NULL, '2018-07-12 17:21:20', '2018-06-24 15:44:42'),
(48, 'roger.pouros@yahoo.com', '$2y$10$Vgm3wVqt0uRXBzNWW9mNqueuQ6riGKQrvvR2kHAuDzc4Jem3yQ/CC', 'Ms. Eve Harvey PhD', '79195 Beahan Mission\nEast Rossietown, NJ 76616', 0, '(358) 510-0630 x479', 'avatar-boy.png', 'LEMBAGA', 1, NULL, NULL, '2009-11-22 01:35:52', '2000-12-10 20:46:47'),
(49, 'hayes.alize@gmail.com', '$2y$10$HuUJ3r.RG3WcFq/opbrQaOP28uzEBi2NYvIY8OgD7MvU/op8M6zua', 'Gregoria Gerlach', '382 Gottlieb Rue Apt. 290\nZemlakfurt, OR 54677-9405', 0, '+1-539-606-3660', 'avatar-boy.png', 'STAFF', 0, NULL, NULL, '1985-03-02 06:12:09', '2000-11-06 15:19:08'),
(50, 'clair.haley@borer.com', '$2y$10$e2lZf5kA/XEHM5NCzTpMKeux3DSRBTXh86KhAmF/IA3TK4gXuoPES', 'Ryan Cormier', '1137 Clay Rest Suite 309\nNew Taliastad, KS 32613', 1, '842-534-3690', 'avatar-boy.png', 'LEMBAGA', 0, NULL, NULL, '1970-11-01 05:45:24', '1976-06-19 04:12:29'),
(51, 'bailee00@yahoo.com', '$2y$10$7pTYm.vaPaLBYWrJ2w.VL.0Y/SYKfDeCtJ7Qob8vI0EwFRnLYxs5a', 'Owen Schuster', '40467 Rigoberto Mountain Suite 516\nWest Margarettaport, SC 37147', 0, '+1-281-551-5288', 'avatar-boy.png', 'STAFF', 0, NULL, NULL, '1988-06-01 15:17:34', '1979-01-01 12:17:40'),
(52, 'alexys77@bayer.com', '$2y$10$9JPmJAQxhsp/hfY2RNSGQ.2W2ifj1QMSHRTrljHdmA/GU7knZGTqy', 'Prof. Adelle Goyette', '6406 Katheryn Views\nNew Jed, WI 44333-1593', 0, '(963) 967-4644', 'avatar-boy.png', 'LEMBAGA', 1, NULL, NULL, '2009-11-04 19:23:21', '1973-03-03 17:42:03'),
(53, 'chad14@pouros.biz', '$2y$10$V9vAqJ8h9SUhSBWo.0LIVue5iKRtwtTto4Tsx03RBPzd0sMmaf34m', 'Dr. Arvel Runolfsdottir', '720 Kiley Green\nTimmothychester, MI 38626-7023', 1, '982-786-6183 x5530', 'avatar-boy.png', 'LEMBAGA', 0, NULL, NULL, '1994-10-30 00:56:13', '2006-07-14 11:11:25'),
(54, 'fraynor@leannon.com', '$2y$10$ZGhNi4B4r/2nKpHZWbgvROdeqQ1JU7cbcDm4iEjR5AqgNNBms9iru', 'Emelie Weber', '174 Pat Spurs\nNew Emily, TN 98111', 1, '(774) 314-1889 x8529', 'avatar-boy.png', 'UMUM', 0, NULL, NULL, '2014-08-29 04:19:55', '2003-11-25 05:59:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`),
  ADD KEY `barang_id_kategori_barang_foreign` (`id_kategori_barang`);

--
-- Indexes for table `dana`
--
ALTER TABLE `dana`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dana_id_kegiatan_foreign` (`id_kegiatan`);

--
-- Indexes for table `dokumentasi`
--
ALTER TABLE `dokumentasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokumentasi_id_kegiatan_foreign` (`id_kegiatan`);

--
-- Indexes for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kegiatan_id_lembaga_foreign` (`id_lembaga`);

--
-- Indexes for table `lembaga`
--
ALTER TABLE `lembaga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lembaga_id_user_foreign` (`id_user`);

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
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peminjaman_id_user_foreign` (`id_user`),
  ADD KEY `peminjaman_id_kegiatan_foreign` (`id_kegiatan`);

--
-- Indexes for table `peminjaman_barang`
--
ALTER TABLE `peminjaman_barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peminjaman_barang_id_peminjaman_foreign` (`id_peminjaman`),
  ADD KEY `peminjaman_barang_kode_barang_foreign` (`kode_barang`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dana`
--
ALTER TABLE `dana`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dokumentasi`
--
ALTER TABLE `dokumentasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lembaga`
--
ALTER TABLE `lembaga`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `peminjaman_barang`
--
ALTER TABLE `peminjaman_barang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_id_kategori_barang_foreign` FOREIGN KEY (`id_kategori_barang`) REFERENCES `kategori_barang` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dana`
--
ALTER TABLE `dana`
  ADD CONSTRAINT `dana_id_kegiatan_foreign` FOREIGN KEY (`id_kegiatan`) REFERENCES `kegiatan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dokumentasi`
--
ALTER TABLE `dokumentasi`
  ADD CONSTRAINT `dokumentasi_id_kegiatan_foreign` FOREIGN KEY (`id_kegiatan`) REFERENCES `kegiatan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD CONSTRAINT `kegiatan_id_lembaga_foreign` FOREIGN KEY (`id_lembaga`) REFERENCES `lembaga` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lembaga`
--
ALTER TABLE `lembaga`
  ADD CONSTRAINT `lembaga_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_id_kegiatan_foreign` FOREIGN KEY (`id_kegiatan`) REFERENCES `kegiatan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `peminjaman_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `peminjaman_barang`
--
ALTER TABLE `peminjaman_barang`
  ADD CONSTRAINT `peminjaman_barang_id_peminjaman_foreign` FOREIGN KEY (`id_peminjaman`) REFERENCES `peminjaman` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `peminjaman_barang_kode_barang_foreign` FOREIGN KEY (`kode_barang`) REFERENCES `barang` (`kode_barang`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
