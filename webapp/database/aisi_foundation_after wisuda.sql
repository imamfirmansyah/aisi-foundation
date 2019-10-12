-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2019 at 05:31 AM
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
('1562933685', 'EPSON LCD Proyektor', 'EPSON LCD Proyektor Putih Tahun 2018', '1562933685_epson_lcd_white.jpg', '1', 2, '2019-08-07 18:01:51', '2019-08-07 18:01:51', NULL),
('1562940709', 'HP LCD Proyektor', 'HP LCD Proyektor Hitam - Silver Tahun 2017', '1562940709_hp_lcd.jpg', '1', 2, '2019-08-07 18:01:52', '2019-08-07 18:01:52', NULL),
('1562947460', 'ROL Kabel Steker', 'ROL Kabel Steker 6 Port', '1562947460_rol_kabel_steker.jpg', '1', 2, '2019-08-07 18:01:52', '2019-08-07 18:01:52', NULL),
('1562947595', 'Speaker Portable Besar', 'Speaker Ampli + Wireless Microphone Dorong', '1562947595_speaker_portable.jpg', '1', 2, '2019-08-07 18:01:52', '2019-08-07 18:01:52', NULL),
('1563149797', 'Meeting Room', 'Ruang Meeting Lantai 2 Kapasitas 8 Orang', '1563149797_meeting_room.jpg', '1', 3, '2019-08-07 18:01:52', '2019-08-07 18:01:52', NULL),
('1563149913', 'Layar Proyektor', 'Layar Proyektor Portable', '1563149913_layar_proyektor.jpg', '1', 3, '2019-08-07 18:01:52', '2019-08-07 18:01:52', NULL),
('1563150019', 'Epson Printer', 'Epson Printer White and Color', '1563150019_epson_printer.jpg', '1', 2, '2019-08-07 18:01:52', '2019-08-07 18:01:52', NULL),
('1563150087', 'Papan Tulis Kecil', 'Papan Tulis Kecil Ukuran 1 x 0.5 Meter', '1563150087_papan_tulis_kecil.jpg', '1', 3, '2019-08-07 18:01:52', '2019-08-07 18:01:52', NULL),
('1563150146', 'Spidol Papan Tulis', 'Spidol Snowman Merah, Hitam, Biru', '1563150146_spidol_papan_tulis.jpg', '1', 1, '2019-08-07 18:01:52', '2019-08-07 18:01:52', NULL),
('1563150218', 'Tas Dokumen', 'Tas / Map untuk Membawa Dokumen', '1563150218_bag_dokumen.jpg', '1', 1, '2019-08-07 18:01:52', '2019-08-07 18:01:52', NULL),
('1563150272', 'Toa Speaker Portable', 'Toa Speaker Portable kecil dengan Wireless dan Batrai', '1563150272_toa_mic_wireless.jpg', '1', 2, '2019-08-07 18:01:52', '2019-08-07 18:01:52', NULL),
('1563150312', 'Toa Portable Outdoor', 'Toa Speaker Portable untuk kegiatan Outdoor', '1563150312_TOA_portable.jpg', '1', 2, '2019-08-07 18:01:52', '2019-08-07 18:01:52', NULL),
('1564048178', 'ROL Kabel', 'ROL Kabel 10 Meter', '1564048178_kabel-rol_10_meter.jpg', '1', 2, '2019-08-07 18:01:52', '2019-08-07 18:01:52', NULL);

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

--
-- Dumping data for table `dana`
--

INSERT INTO `dana` (`id`, `id_kegiatan`, `jumlah_pengajuan`, `jumlah_pencairan`, `keterangan`, `tgl_pengajuan`, `tgl_pencairan`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '6000000', '4500000', 'Silahkan datang ke yayasan tanpa diwakilkan, terima kasih', '2019-08-08', '2019-08-15', 'DISETUJUI', '2019-08-07 20:50:41', '2019-08-07 20:51:29', NULL);

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

--
-- Dumping data for table `dokumentasi`
--

INSERT INTO `dokumentasi` (`id`, `id_kegiatan`, `keterangan`, `file`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Dalam link tersebut terdapat beberapa file dokumentasi berupa foto-foto, daftar absensi acara dan rincian penggunaan dana yang digunakan selama acara', 'https://docs.google.com/forms/d/e/1FAIpQLSflTkyW5RkzYbnVOOKFoUpSuI-5of7HYJ17csSmcSyHzuhdLg/viewform', '2019-08-07 20:50:41', '2019-08-07 20:56:07', NULL);

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
(1, 'ATK', '2019-08-07 18:01:51', '2019-08-07 18:01:51', NULL),
(2, 'ELEKTRONIK', '2019-08-07 18:01:51', '2019-08-07 18:01:51', NULL),
(3, 'RUANGAN', '2019-08-07 18:01:51', '2019-08-07 18:01:51', NULL);

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
  `pesan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id`, `id_lembaga`, `nama`, `deskripsi`, `proposal_kegiatan`, `tgl_kegiatan`, `status`, `pesan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 8, 'Seminar Kepahlawanan', 'Seminar Kepahlawanan Bertajuk kemedekaan, dihadiri oleh seluruh pelajar sekota Depok, baik SMP maupun SMA', '1565235682_proposal_kegiatan.pdf', '2019-08-17', 'DENGAN_LAPORAN', 'Silahkan Datang ke Yayasan pada tangal 10 Agustus 2019, Pukul 13:00 dengan membawa cetak Proposal untuk melakukan presentasi', '2019-08-07 20:41:22', '2019-08-07 20:56:07', NULL);

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
(1, 50, 'Adams, Littel and Gaylord', 'mkozey@schroeder.com', '675 Baron Pines Suite 469\nGrantmouth, DE 47689-9912', '+1 (671) 341-4847', 'Reiciendis sit voluptas adipisci doloribus architecto.', '1981-12-18 05:12:51', '1981-04-23 18:01:39', NULL),
(2, 12, 'Jakubowski, Schowalter and Welch', 'neha52@quigley.com', '8828 Rebeca Vista Apt. 163\nTurnerside, MT 14970', '1-935-806-6689', 'Ut tempora dolor impedit.', '2012-10-25 22:41:02', '1997-10-18 18:02:16', NULL),
(3, 17, 'Breitenberg and Sons', 'damian41@gmail.com', '192 McKenzie Stravenue\nSouth Mckaylaport, WI 48617', '775-700-2650 x115', 'Quia exercitationem reprehenderit eum.', '1978-01-16 23:04:36', '2012-05-29 13:06:50', NULL),
(4, 19, 'Breitenberg, Stokes and Bernhard', 'august.schultz@hotmail.com', '159 Susan Port\nEast Erna, CA 11474-1963', '987.689.0281 x11803', 'Repellendus iste laudantium.', '1978-04-14 03:19:31', '1972-08-19 17:32:48', NULL),
(5, 20, 'Weber-Shields', 'murray.steve@powlowski.biz', '34059 Erich Row\nGerhardhaven, NM 50889-4573', '(490) 797-3161', 'Ut cupiditate ex vitae.', '2001-01-01 02:47:00', '1973-11-25 02:13:38', NULL),
(6, 49, 'Witting LLC', 'laurence.nicolas@metz.com', '850 Caterina Isle\nWest Dasia, AZ 55312-7396', '(406) 462-7485 x750', 'Nisi quis ex minima nobis.', '1978-09-09 02:52:44', '2008-06-13 06:41:11', NULL),
(7, 39, 'Dickens-Gottlieb', 'sanford.daren@gmail.com', '7496 Bahringer Way\nLake Glenda, ME 59241', '+16467811241', 'Necessitatibus autem voluptas neque.', '2007-01-13 16:35:27', '1997-09-13 02:25:43', NULL),
(8, 4, 'Kesatuan Pelajar Muslim Depok', 'kkoss@hyatt.com', '5099 Swaniawski Circle Apt. 231\r\nZiemannshire, AL 71274-1360', '5854551019108', 'Corrupti labore et impedit eligendi.', '1980-10-11 20:31:42', '2019-08-07 20:55:01', NULL),
(9, 14, 'Hauck, Ferry and Kautzer', 'julianne01@walker.com', '6006 Rohan Island Apt. 593\nLake Alexisville, MI 14120-0865', '(892) 956-3014 x41220', 'Minima voluptas et.', '2004-07-09 08:52:34', '2003-10-02 13:53:44', NULL),
(10, 51, 'Koss-Greenfelder', 'oconner.maybell@hotmail.com', '76422 Tamara Springs Apt. 044\nWest Alejandrin, NV 05607-6831', '+1-704-541-0784', 'Repellat rerum libero repellat ut.', '1996-11-27 01:29:27', '1981-09-22 20:17:43', NULL),
(11, 29, 'Farrell and Sons', 'ymclaughlin@gmail.com', '29022 Sage Dale Suite 543\nLake Viviannemouth, CA 17574-0007', '(213) 880-0476', 'Est quis vitae ullam.', '1973-07-03 04:52:39', '2012-05-25 17:18:31', NULL),
(12, 26, 'Hyatt PLC', 'weissnat.quincy@hotmail.com', '9297 Randall Skyway\nCarrollhaven, UT 46117-4941', '514-881-4188', 'Dolor enim consequatur impedit reprehenderit aut.', '1975-04-15 05:35:12', '2004-01-01 17:57:04', NULL),
(13, 25, 'Lebsack, Halvorson and Howe', 'kayley.keeling@yahoo.com', '822 Astrid Shoals\nDurganmouth, MN 57220-5828', '+1 (919) 640-2451', 'Et et quis autem nesciunt.', '1983-06-27 20:50:58', '1987-07-16 23:58:37', NULL),
(14, 37, 'Daniel, Rosenbaum and West', 'hmorissette@yahoo.com', '907 Nitzsche Plaza Suite 252\nEast Urbanport, RI 60174', '389-795-3731 x4190', 'Numquam voluptates ea.', '1999-09-23 05:09:54', '1975-04-24 22:54:30', NULL),
(15, 7, 'Mills, Huels and Morissette', 'garrett.wolf@berge.com', '68552 Cierra Landing Suite 598\nHoppefurt, GA 82724-5860', '696-517-1426 x9856', 'Soluta quis qui reprehenderit mollitia.', '2017-09-05 05:21:28', '1989-09-05 18:32:20', NULL);

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
(1, 4, NULL, 'Peminjaman Barang KPMD Depok', '2019-08-10', '2019-08-11', 'DIKEMBALIKAN', '2019-08-07 20:37:50', '2019-08-07 21:06:27', NULL),
(2, 3, NULL, 'Peminjaman Barang Imam Firmansyah', '2019-08-10', '2019-08-12', 'DIPINJAM', '2019-08-07 20:39:37', '2019-08-07 20:39:37', NULL),
(3, 3, NULL, 'contoh peminjaman', '2019-08-23', '2019-08-24', 'DIPINJAM', '2019-08-07 22:00:40', '2019-08-07 22:00:40', NULL),
(4, 3, NULL, 'smaple keterangan', '2019-08-10', '2019-08-13', 'DIPINJAM', '2019-08-07 22:05:46', '2019-08-07 22:05:46', NULL);

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
(1, 1, '1562933685'),
(2, 1, '1562947460'),
(4, 2, '1563150272'),
(5, 2, '1564048178'),
(6, 3, '1562933685'),
(7, 3, '1562947460'),
(8, 3, '1563149797'),
(9, 3, '1564048178'),
(10, 4, '1563150019'),
(11, 4, '1563150218');

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
(1, 'administrator@aisifoundation.org', '$2y$10$U2.Oo2zFR0y9DddBbMZ1SOXYClltbowyLAekFoBxbnI3cQoBcHR9O', 'AISI Administrator', 'Depok', 1, '018329123', 'avatar-boy.png', 'ADMIN', 1, NULL, '727jzTy0oykfPY7Mwk4aZWhqm56wOSElXw5kulGvvKpa7n9NQLG25nRQ8Y7o', '2019-08-07 18:01:45', '2019-08-07 18:01:45'),
(2, 'staff@aisifoundation.org', '$2y$10$a10C6AWpRraSepQiwmPl9OUiNEOef.hDy0zkjeRYymI.h3GTTz3ne', 'Staff Yayasan AISI', 'Depok', 1, '018329123', 'avatar-boy.png', 'STAFF', 1, NULL, '7wtaL6eV7c8vJmm4YzuOtSqNwDnk0nEhBChvOqlUCImPkXFUD872f3gFf9Lx', '2019-08-07 18:01:45', '2019-08-07 18:01:45'),
(3, 'imamfirmansyah27@gmail.com', '$2y$10$SYVxc.4O4xejtEMu8c5XMuwAkN1LkE5bz.or5RmEJRul3hCXuIhgG', 'Imam Firmansyah', 'Depok', 1, '018329123', 'avatar-boy.png', 'UMUM', 1, NULL, 'Q3HYtYu5qWFxyyixYm6uWdFdrLgwdoaje3DjFKHy1Kzfcl2ZUVO9GlobwL9u', '2019-08-07 18:01:45', '2019-08-07 18:01:45'),
(4, 'kpmd@gmail.com', '$2y$10$KGkchlI/x.F1S5W2t1bTouaojix.n1i4/wEGM/ykV3EqLNc/8vshW', 'KPMD Depok', 'Depok', 1, '018329123', 'avatar-boy.png', 'LEMBAGA', 1, NULL, NULL, '2019-08-07 18:01:45', '2019-08-07 18:01:45'),
(5, 'ransom.hermiston@gmail.com', '$2y$10$4TgL/hG6sARNbIqKo3IFpOtp7zjA7yg0tN5rH2PlkM.2geYlm..eC', 'Nannie Lubowitz', '23396 Bridie Circles Apt. 384\nBrooklynland, VT 35896', 1, '520.933.2746 x603', 'avatar-boy.png', 'ADMIN', 1, NULL, NULL, '2019-05-08 22:21:02', '1989-06-15 16:41:48'),
(6, 'jdurgan@gmail.com', '$2y$10$BQeT13Rh6ZmF7bYsdKooJu.OEdFV206ABUJzRdl.IRuIDYrhTMd8S', 'Kaley Rath', '774 Jena Corners\nSouth Jimmie, MI 01140', 1, '924-806-9138 x9920', 'avatar-boy.png', 'ADMIN', 1, NULL, NULL, '1997-04-17 22:52:05', '2016-02-11 10:22:47'),
(7, 'mswift@leffler.info', '$2y$10$eFIuIUs5Nes8mNqEZrqrsOjDBiyGRV9pKvU7iUHd5Gqc0z7MHUuA6', 'Floyd Rodriguez II', '28810 Royal Streets\nFritschport, IA 43673-5646', 0, '1-632-563-3279', 'avatar-boy.png', 'LEMBAGA', 1, NULL, NULL, '1996-09-14 10:29:26', '1985-04-26 02:35:50'),
(8, 'omaggio@yahoo.com', '$2y$10$Wv8i/Cm8lIf2md0t7b518.e/mc5K4qSP7MuvizvRtqm67crk2cw9.', 'Madonna Olson I', '80235 Franecki Fords\nStokesstad, OR 68934-7336', 1, '1-985-637-2114 x0977', 'avatar-boy.png', 'STAFF', 0, NULL, NULL, '2005-09-11 10:56:39', '1986-06-22 01:10:25'),
(9, 'antonietta49@gmail.com', '$2y$10$G3OJ6ZQFIuN9EU/hjVMFNu6TEonjFJHeoyTD271.nkJXkV8XLDI16', 'Toney Zulauf', '5046 Belle Mall\nHowellfort, MT 27964-3879', 1, '(547) 221-1495 x7438', 'avatar-boy.png', 'STAFF', 0, NULL, NULL, '2015-03-25 15:45:30', '1994-02-05 22:25:29'),
(10, 'schaden.malinda@johnson.info', '$2y$10$jQ4Hw0mU7yJaKnb0tWNbDuiwMLPoSLA1xlVpazGJa2nJjcEi69rVy', 'Mrs. Shaylee Paucek III', '95033 Hagenes Motorway Suite 015\nWillton, NV 68496', 0, '642.402.6748', 'avatar-boy.png', 'ADMIN', 1, NULL, NULL, '1998-07-17 05:53:54', '1999-01-26 07:47:24'),
(11, 'kihn.ernestine@yahoo.com', '$2y$10$C1/0uxK58GfIQmoE2IS8.ugZKa7XpGdlgrrHr/gt3IZaGQLAMPcL6', 'Dr. Cesar Torp', '68104 Miller Road Apt. 541\nDareport, SD 33182-9544', 0, '445.234.5292 x4351', 'avatar-boy.png', 'UMUM', 1, NULL, NULL, '1984-07-04 09:14:30', '2002-07-10 22:35:23'),
(12, 'cecelia67@yahoo.com', '$2y$10$AbmZTIjfzpjlYYDZ3Dty0ODz1m8bQ9IXWeGOvvL.n4TzC0vaRQ9.i', 'Dr. Oran Botsford', '78474 Sauer Cliffs Apt. 029\nKasandrahaven, OH 62712-5048', 0, '1-981-660-1804', 'avatar-boy.png', 'LEMBAGA', 0, NULL, NULL, '1993-07-14 23:06:30', '2000-05-21 04:24:09'),
(13, 'qkassulke@kirlin.org', '$2y$10$qqhGZIY.I2CzYIr88BuYt.cCH.apobP6mdLXfHVgtc.aHSlFkVqGG', 'Miss Tiffany Spinka DDS', '20607 Marjory Stravenue Apt. 386\nGeorgetown, CT 95435-6548', 1, '729.873.8702', 'avatar-boy.png', 'STAFF', 0, NULL, NULL, '2016-10-01 07:28:38', '1970-04-19 18:19:12'),
(14, 'aliya.klein@hotmail.com', '$2y$10$vBvDphdbUQjKGuUyDMe4TuaXy5h252KF2WDbwb3PfnGiF1FEckb6a', 'Meredith Hudson', '990 Rick Isle\nMeaganhaven, SD 55428-2064', 1, '+1.583.557.9015', 'avatar-boy.png', 'LEMBAGA', 1, NULL, NULL, '1970-04-28 01:54:54', '1975-11-11 17:38:23'),
(15, 'myrtle30@gmail.com', '$2y$10$jGIQ5qRI9oC10bihTpECj./VudBpZqKq9GyDoVV2F2WTqCa3hEHmq', 'Prof. Maurice Koch', '3723 Aisha Knoll\nLake Retta, OK 47748', 1, '+1-275-647-1959', 'avatar-boy.png', 'ADMIN', 1, NULL, NULL, '1998-01-15 22:41:37', '1974-07-05 09:52:17'),
(16, 'areinger@gmail.com', '$2y$10$drRSGVSko5kP1ws5PxxPh.BrHS68miY05FPOvcdt4njEELoAAYGYO', 'Kaci Fisher', '12268 Samantha Plains Apt. 958\nOsinskiside, IL 51352-2342', 1, '659.527.5801', 'avatar-boy.png', 'UMUM', 0, NULL, NULL, '1990-12-18 12:19:16', '1974-06-14 22:45:47'),
(17, 'domenic59@yahoo.com', '$2y$10$ND/pXyyP.fwy60/5oGSJdOd4U6l3Ez7pQKivQdp/tkoBkoSwd8LXO', 'Dr. Evie Turner', '51889 Bogisich Mountains\nEast Hermina, NE 28796-2452', 1, '682.210.3242', 'avatar-boy.png', 'LEMBAGA', 0, NULL, NULL, '2010-09-22 17:41:55', '1995-05-06 13:30:18'),
(18, 'vilma.ankunding@greenholt.com', '$2y$10$t9xtD13M0qn8/1Z5lLhLTOAwiDzyPG24SOmP/2JtIrYxo9zO6xLwS', 'Miss Elaina Stark V', '67668 Sauer Summit\nPort Joellechester, WI 26760-2215', 0, '+19788680236', 'avatar-boy.png', 'STAFF', 1, NULL, NULL, '1994-10-11 23:08:03', '1971-09-08 10:27:31'),
(19, 'fjohnston@gmail.com', '$2y$10$QZBNEQVzjBjdVhPRftgaeOIA9rUnN82BhgCEjIzc4Bft.2yR605mG', 'Hanna Effertz', '697 Helen Trafficway Apt. 681\nBartolettishire, IA 59445', 0, '(687) 932-5826 x4051', 'avatar-boy.png', 'LEMBAGA', 0, NULL, NULL, '1993-04-30 07:27:10', '1987-05-20 09:22:53'),
(20, 'rpfeffer@gmail.com', '$2y$10$OPRMI56iKb3vR9aK2ty8V.2JYI7sE5KHtKrEQhImm0BkTv7m3YicO', 'Travon Langosh', '8877 Hackett Vista\nWest Petermouth, PA 43192-3982', 1, '673.922.3205 x1139', 'avatar-boy.png', 'LEMBAGA', 1, NULL, NULL, '2017-06-07 03:40:22', '2001-01-03 00:02:20'),
(21, 'ibruen@kuhlman.net', '$2y$10$y1ALtU5zb4e1mFDkDO73wuF2tTpQ7sH4lfJKcKUa5HYnvLfDki8om', 'Jaycee Waters', '88267 Rath Vista Apt. 229\nPort Chesterhaven, IL 91938', 1, '1-278-235-9296 x7582', 'avatar-boy.png', 'UMUM', 0, NULL, NULL, '1981-08-28 09:16:58', '1992-06-18 14:28:52'),
(22, 'tia75@boyle.biz', '$2y$10$KefRi2bvALFCf.cUT9AM3eq2duhMpeJycOaqXmBv7r/vtXuPiOWji', 'Prof. Lempi Stehr III', '76655 Durgan Union Apt. 339\nTorpshire, MS 88281', 0, '1-823-890-9681 x08008', 'avatar-boy.png', 'UMUM', 1, NULL, NULL, '1981-12-21 13:26:15', '1991-05-12 04:27:27'),
(23, 'robb.jacobson@fahey.com', '$2y$10$mOvptX3XzwzIQaNb4vsNl.lQJovzoRNbvTXhISlEn5grcyPXZVor.', 'Dr. Ervin Halvorson', '239 Ruecker Mountain Suite 320\nKertzmannhaven, PA 57609-0241', 1, '1-637-527-2427 x26109', 'avatar-boy.png', 'STAFF', 0, NULL, NULL, '1991-04-08 08:31:20', '1971-03-10 16:52:29'),
(24, 'jayne.stiedemann@schimmel.biz', '$2y$10$cHUveUNZbOPzeApFv9m/IevRW8blMNqMgLH8KlOQsir1EUuc03/R.', 'Norberto Stehr PhD', '90891 Quentin Spring\nParisianborough, CT 37570-5756', 1, '(462) 371-9729 x5449', 'avatar-boy.png', 'STAFF', 1, NULL, NULL, '1972-09-02 03:31:45', '1982-07-29 15:34:26'),
(25, 'andre.ratke@gmail.com', '$2y$10$ujN3tSC84ql6eq2E7NnX5OJqC5.iHJcYZppMaFUYq/8NpJ4ccyuja', 'Providenci Harris', '59481 Volkman Mall\nLake Diamond, KY 25099', 0, '673-264-6477 x6432', 'avatar-boy.png', 'LEMBAGA', 1, NULL, NULL, '1972-12-09 16:12:37', '2013-12-28 01:09:33'),
(26, 'bjakubowski@hane.com', '$2y$10$HkOUG7JWjMKU7B1jgyTcXOKdeKX.bbhFLWwuHXQ81md0JVusN4nji', 'Cleora Emard PhD', '552 Heaney Keys Suite 582\nNorth Kaycee, HI 39458', 1, '+14183853175', 'avatar-boy.png', 'LEMBAGA', 0, NULL, NULL, '1986-01-25 19:56:00', '1981-06-22 22:55:53'),
(27, 'damore.flavio@hotmail.com', '$2y$10$3ddghMxNCBwoRG14FDF4iewAEYQGH16qgAky3qiEdpCSw/ORXQA82', 'Waylon Fay MD', '32230 Volkman Isle\nCelineville, KY 36779', 1, '+1 (234) 362-7109', 'avatar-boy.png', 'STAFF', 0, NULL, NULL, '1972-05-04 17:10:59', '1974-08-29 15:12:47'),
(28, 'maxwell.reichert@yahoo.com', '$2y$10$IkWxUL0Nfvxxnnj3ZGFMY.yTN1LDek6iqd8mlSTg0yfbSlz8Oy2kG', 'Mrs. Bridget Effertz II', '868 Kuvalis Lock Apt. 157\nUllrichshire, PA 30887-3489', 0, '978-674-1755 x295', 'avatar-boy.png', 'ADMIN', 0, NULL, NULL, '2000-09-16 19:48:39', '2001-01-04 01:16:10'),
(29, 'hbednar@gmail.com', '$2y$10$HAdovqVldqLWRFIhjr8LQe55tE70Pd.Cb.QlRYoxfmFWdw6uvFJEa', 'Vilma Eichmann', '597 Stephania Plains Apt. 454\nEast Kolby, IN 36705-9806', 0, '(228) 934-0099 x63523', 'avatar-boy.png', 'LEMBAGA', 1, NULL, NULL, '2002-11-27 01:16:21', '1974-09-01 13:05:36'),
(30, 'zoila84@hegmann.net', '$2y$10$9Ou3MMXeJE5RbN1FjFeDJO6RHB4InVPkinM2KVoDoxfBYvgFKh9o.', 'Haven Daugherty', '28918 Doug Drive\nNanniefort, GA 54011-1672', 0, '1-417-940-2510 x45327', 'avatar-boy.png', 'UMUM', 0, NULL, NULL, '2011-09-16 21:44:40', '2018-09-12 15:23:20'),
(31, 'tanya.bins@stoltenberg.info', '$2y$10$2F9vdslD4j/Z8Zd7bWX.ZecnSilLkKvCa/KmV9.vDyGsPyMYP47AG', 'Mr. Bradley Hills MD', '61965 Lavina Pike Suite 225\nLake Elwyn, WA 58431', 1, '1-779-814-5581', 'avatar-boy.png', 'STAFF', 1, NULL, NULL, '1980-08-11 09:20:56', '2016-08-20 07:53:07'),
(32, 'darmstrong@hotmail.com', '$2y$10$fHmR6/nLvsFhFqZsJWDfeOnKxQ.oTdmB.XbJ4bmY47sIDvtmOkyyO', 'Lexus Cummerata', '71932 Kuhlman Shore Suite 473\nHodkiewiczchester, NM 47012-0906', 1, '537-601-9725 x1590', 'avatar-boy.png', 'STAFF', 1, NULL, NULL, '2002-01-30 18:29:05', '1991-05-19 06:58:31'),
(33, 'gilbert.frami@gmail.com', '$2y$10$wxXW60NBRnoSSnCZL3vPcOmqovTIkfxCSiWdJnAukzBM.0H9/bQ8K', 'Trevor Blanda I', '16138 Bednar Green Suite 240\nNorth Nevaton, ME 48582-8992', 1, '+1 (550) 801-2259', 'avatar-boy.png', 'ADMIN', 0, NULL, NULL, '2013-06-23 16:25:06', '1989-08-21 00:41:11'),
(34, 'buster.hane@kutch.org', '$2y$10$ypL/kObmQlIxTUdxfDHTwOVmN8PkhgBhg.2TsyoNh3YE9aI6z8mvW', 'Miss Delfina Blick', '9259 Aiyana Vista\nWest Juanachester, OK 57925', 0, '893-435-0480 x90025', 'avatar-boy.png', 'ADMIN', 0, NULL, NULL, '1997-03-17 08:35:50', '2010-06-27 10:36:38'),
(35, 'adell03@gmail.com', '$2y$10$KNPWE7a0acR2X3dEQVD5zODNmnJaGOVAVZugdDl1OV.3z1dHSFxh.', 'Selmer Cassin', '4350 Nellie Lakes\nLake Josianne, ID 82425-4950', 0, '+1-572-596-5981', 'avatar-boy.png', 'UMUM', 1, NULL, NULL, '2009-05-31 20:10:17', '1987-12-04 17:16:16'),
(36, 'annamae.murray@yahoo.com', '$2y$10$PIElEXswO1hCwvgJU1mneu/wDO5A1QaA7MoyiUgquYtMW.1/6cY6G', 'Prof. Adrienne Adams I', '51188 Tod Manor Suite 542\nRippinburgh, PA 46369-3586', 0, '1-456-257-7049 x441', 'avatar-boy.png', 'STAFF', 1, NULL, NULL, '2005-10-14 20:12:46', '1983-03-09 16:34:08'),
(37, 'cale78@gmail.com', '$2y$10$sTW1reom835cXucummatNOTRVqImo/BmGAzunhV.oAOW52jnGcQS2', 'Ms. Brianne Harvey DVM', '14464 Hauck Plains\nKittymouth, WY 96652', 1, '1-926-348-0138 x5032', 'avatar-boy.png', 'LEMBAGA', 1, NULL, NULL, '1992-06-17 15:46:25', '1998-03-01 02:44:39'),
(38, 'mstiedemann@kuhlman.com', '$2y$10$BJBMWdKQENXOBQ/BMGmy2OpsXU4dQMlAyn4sapB5.LepIkE2GQ7bS', 'Max Kassulke', '39484 Zulauf Mountains\nFelipaborough, MI 52180', 0, '+1 (370) 665-6713', 'avatar-boy.png', 'ADMIN', 1, NULL, NULL, '1978-01-07 20:18:20', '1994-04-03 10:13:56'),
(39, 'kmurphy@corkery.biz', '$2y$10$Gn0/O7PhT2PbXW.Qtqz1U.uW9oGcbsJgIbxH4hiH0ONOeskQ1732W', 'Sarai Bernhard PhD', '316 O\'Hara Underpass Suite 966\nSpinkatown, MN 08282-6345', 1, '1-441-826-8042', 'avatar-boy.png', 'LEMBAGA', 0, NULL, NULL, '1991-12-25 20:03:53', '1984-06-20 17:46:08'),
(40, 'alexandrine.ullrich@hotmail.com', '$2y$10$uujyBV4lEWOz4DFn7jtxzeRJ0R0ZLPKVivpTk9ie.zixHGBjszCfy', 'Mrs. Ettie Batz I', '467 Brakus Ways Apt. 805\nRaynorchester, MD 40751-9761', 1, '921-909-4408', 'avatar-boy.png', 'STAFF', 0, NULL, NULL, '1978-10-19 19:31:11', '2009-02-27 02:43:32'),
(41, 'bettye.beahan@kub.com', '$2y$10$w1kHTNhqeQOwFAUg4g2kI.UzyWhwmbKyq5VF1ohgxe24JeSju7haC', 'Sabrina Toy', '303 Katelin Overpass\nSouth Lessie, NV 72318', 0, '521.673.8467 x989', 'avatar-boy.png', 'STAFF', 1, NULL, NULL, '1984-10-18 01:55:38', '2007-09-01 06:13:36'),
(42, 'rosanna23@maggio.net', '$2y$10$IE5b7mLuMPayaz1vrUcuTe/Zt2324ugnOPefE5zg76Jl3tkGoJKHG', 'Javier Harber PhD', '965 Bode Lock Apt. 939\nShanahanhaven, IA 35011', 0, '(657) 509-4674', 'avatar-boy.png', 'STAFF', 0, NULL, NULL, '2003-12-15 06:00:23', '1985-03-31 15:47:48'),
(43, 'feest.montana@hotmail.com', '$2y$10$vBShsZjOsir2iZ5ILGLyeeekNM1KdSg86HHq6L.raFWREk06xy.PW', 'Wanda Hermiston V', '7949 Moen Drives Apt. 699\nSunnytown, MI 20816-0537', 1, '608.860.7243', 'avatar-boy.png', 'UMUM', 0, NULL, NULL, '1976-12-21 17:57:17', '1992-06-15 18:40:10'),
(44, 'ibrakus@thompson.biz', '$2y$10$6v9vSWBPZzaNOT1g09wx9.XLjQp2lqnbZVPSkUGmqeSeM1sFoFXOC', 'Trey Towne', '7453 June Mount\nLourdesfort, KS 87295-4929', 1, '(776) 653-4669 x254', 'avatar-boy.png', 'STAFF', 0, NULL, NULL, '1995-09-05 10:31:17', '1985-07-29 09:04:23'),
(45, 'mariana.legros@yahoo.com', '$2y$10$LSxQfztxQC9Lhbl72VCQYuDeWYQjvxEXYlhOlnwEuwymNaS4PBCAu', 'Sadie Brekke', '337 Rosella Ridges\nAureliatown, LA 32224-9161', 0, '(520) 532-3935', 'avatar-boy.png', 'UMUM', 1, NULL, NULL, '1988-06-09 08:03:53', '1997-03-04 09:34:06'),
(46, 'christop18@yahoo.com', '$2y$10$hMXd1hd4CH5QTIpM.x9D4eROqHN62lXQ8GTKnr.C4O.XtRk2jHrUy', 'Narciso Goodwin', '6895 Dach Locks Suite 175\nHillsshire, NC 46366-0963', 1, '736.865.0142 x16029', 'avatar-boy.png', 'UMUM', 1, NULL, NULL, '1970-06-28 22:38:39', '2010-05-07 06:22:44'),
(47, 'cesar.weimann@yahoo.com', '$2y$10$JQYPEWxWh/lNB.BjJgQm9OUEc1VvaCfSy0idII6oEbD2ct3q8HAEa', 'Marlen Klocko', '21732 Anibal Ford Suite 199\nPricechester, TX 26323-4787', 1, '+1-865-230-3715', 'avatar-boy.png', 'LEMBAGA', 0, NULL, NULL, '1991-07-21 20:52:23', '1977-04-27 22:31:11'),
(48, 'mhyatt@yahoo.com', '$2y$10$JIKyCyJCynnfNtLVz1vqT.VzAq0m3QXyMYa6M5yh7XN00.hdnupoi', 'Mrs. Abbie Gleichner', '6835 Mattie Plains Suite 041\nTorreyland, VA 91334', 0, '1-680-717-3377', 'avatar-boy.png', 'ADMIN', 1, NULL, NULL, '2009-08-08 15:48:36', '1989-06-20 00:58:20'),
(49, 'johan96@terry.com', '$2y$10$IlxzWOey7D99RtuDmu/mDeWB6midCG0c/lrf4CqUImmwW7MiuF2Li', 'Obie Buckridge', '95364 Graham Cliffs\nSouth Amyaside, SC 48887', 0, '1-463-969-4042 x2820', 'avatar-boy.png', 'LEMBAGA', 1, NULL, NULL, '1981-05-23 18:46:10', '1972-08-14 23:20:48'),
(50, 'brent03@roberts.com', '$2y$10$yWd3ml5/DS8Fw7WBaz.UAOQRDEOJC2MMbpU1ExJIxmkYvXrhAkfNi', 'Trace Keebler IV', '30332 Alexandrine Estates Apt. 252\nEast Thaddeusbury, GA 85590', 0, '735-716-0773 x02507', 'avatar-boy.png', 'LEMBAGA', 1, NULL, NULL, '2012-02-06 05:48:27', '1983-10-08 08:20:28'),
(51, 'jarret.hahn@olson.com', '$2y$10$Ju1vj0Jow3fi56EuXCOLyuMGU35Jb/VLtEUIU3efhHJUlLmGdExoW', 'Clay Hamill MD', '673 Stamm Lane\nNew Cristobalmouth, IN 79355', 0, '+1-774-403-1664', 'avatar-boy.png', 'LEMBAGA', 0, NULL, NULL, '1991-02-15 14:45:39', '2007-11-04 22:58:21'),
(52, 'jakayla.abbott@gmail.com', '$2y$10$vYk467ZQ7yCVDNkzmtN.L.N8ZAn5UV69UXPvVnwBVDRnlw0ReTat.', 'Elinore Bode', '52431 Prosacco Lane\nNorth Layne, SC 53185', 0, '964.571.2573', 'avatar-boy.png', 'ADMIN', 1, NULL, NULL, '1974-04-19 14:51:52', '1999-11-27 08:10:24'),
(53, 'glover.emerson@yahoo.com', '$2y$10$XUHNJVMg/jvHuo96Gl5I8eajqXBmUDX.qytkx9uhE1t61q9Z9mHli', 'Roger Hammes', '1095 Dorris Dale Apt. 990\nWest Scotty, LA 53715-7808', 0, '(636) 715-6684 x98844', 'avatar-boy.png', 'ADMIN', 0, NULL, NULL, '1980-08-02 05:01:55', '2015-03-23 14:16:16'),
(54, 'pchamplin@hotmail.com', '$2y$10$3302vAYS8QUR1r9HzDvCA.PaAkHqmcfycjIMHbaL3hrSDI6PeS20a', 'Simone Aufderhar', '318 Garrick Rapids Suite 597\nEzratown, VA 38933', 1, '528-515-7160', 'avatar-boy.png', 'ADMIN', 1, NULL, NULL, '2014-11-10 07:30:18', '1973-09-14 06:29:04');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dokumentasi`
--
ALTER TABLE `dokumentasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lembaga`
--
ALTER TABLE `lembaga`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `peminjaman_barang`
--
ALTER TABLE `peminjaman_barang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- Constraints for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`);

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
