-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2019 at 07:04 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_aisi`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_barang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_barang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `foto` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `kode_barang`, `nama`, `jenis_barang`, `keterangan`, `foto`, `status`, `created_at`, `updated_at`, `deletedAt`) VALUES
(1, 'perferendis-1', 'ea', 'RUANGAN', 'Dignissimos quibusdam hic libero veniam. Et autem cupiditate deleniti est voluptatibus aut.', 'barang/default.png', 'ACTIVE', '1988-05-23 23:03:34', '2017-01-28 12:56:02', NULL),
(2, 'quia-2', 'delectus', 'ELEKTRONIK', 'Sunt quasi cum nesciunt et.', 'barang/default.png', 'INACTIVE', '2010-08-19 03:02:22', '2012-12-05 05:30:21', NULL),
(3, 'commodi-3', 'voluptates', 'ATK', 'Aut quia dolore at minus voluptatem et nesciunt. Odio deserunt omnis deserunt provident est.', 'barang/default.png', 'ACTIVE', '2000-02-14 15:32:58', '1995-03-20 00:47:37', NULL),
(4, 'minima-4', 'et', 'ATK', 'Aut eaque est et excepturi ut est ad sunt.', 'barang/default.png', 'INACTIVE', '1994-10-27 16:48:28', '2016-03-02 03:56:39', NULL),
(5, 'a-5', 'quisquam', 'ELEKTRONIK', 'Mollitia numquam beatae voluptatem non eum. Hic nobis voluptatem placeat itaque.', 'barang/default.png', 'ACTIVE', '1974-12-02 02:02:14', '2016-05-16 22:09:24', NULL),
(6, 'voluptatem-6', 'sapiente', 'RUANGAN', 'Consequatur necessitatibus ipsa alias modi et autem numquam ut. Sed ab aut excepturi ut.', 'barang/default.png', 'INACTIVE', '1971-03-16 18:21:25', '1996-04-19 10:08:30', NULL),
(7, 'impedit-7', 'neque', 'ELEKTRONIK', 'Reprehenderit exercitationem dolorum repellat animi labore quaerat. Sunt est sed placeat.', 'barang/default.png', 'ACTIVE', '2006-10-18 03:48:58', '2000-11-25 05:28:42', NULL),
(8, 'assumenda-8', 'ut', 'ATK', 'Itaque et corrupti aliquid sunt quis quisquam. Unde maxime ut quos similique earum ad voluptas.', 'barang/default.png', 'ACTIVE', '2015-10-01 22:21:59', '2017-05-08 15:53:25', NULL),
(9, 'deserunt-9', 'sunt', 'ATK', 'Dignissimos quidem velit reiciendis dolores veritatis. Saepe odio et voluptas repudiandae.', 'barang/default.png', 'ACTIVE', '2013-01-08 15:13:18', '2013-08-20 05:33:02', NULL),
(10, 'rem-10', 'harum', 'ELEKTRONIK', 'Error omnis amet voluptas eos nam quas.', 'barang/default.png', 'INACTIVE', '1977-04-30 17:25:46', '1971-02-13 18:37:52', NULL),
(11, 'laudantium-11', 'tempore', 'ATK', 'Molestiae aliquam officia eveniet dolores nulla. Rerum deleniti et consequatur maiores nulla harum.', 'barang/default.png', 'INACTIVE', '1986-03-22 20:37:25', '1977-11-15 05:43:11', NULL),
(12, 'nihil-12', 'nihil', 'RUANGAN', 'Quia unde eos deleniti aut quos. Quibusdam est ab consequatur animi sed.', 'barang/default.png', 'ACTIVE', '1987-01-06 09:33:09', '2006-12-21 11:32:36', NULL),
(13, 'tenetur-13', 'tempore', 'ATK', 'Dolore quia dolorem et reiciendis id eius. Voluptatem expedita unde dolore voluptas voluptas occaecati nemo labore.', 'barang/default.png', 'ACTIVE', '1986-09-09 02:13:22', '2003-05-18 15:21:25', NULL),
(14, 'at-14', 'dolor', 'ELEKTRONIK', 'Consequatur libero voluptatibus ducimus officiis architecto tempora odio. Quibusdam cumque sint laborum quia fugiat.', 'barang/default.png', 'ACTIVE', '1990-01-17 17:22:48', '2019-04-30 11:14:45', NULL),
(15, 'aliquid-15', 'labore', 'ELEKTRONIK', 'Et et quo consequatur ullam dolorem atque.', 'barang/default.png', 'INACTIVE', '2005-05-02 02:50:37', '2011-02-02 20:43:56', NULL),
(16, 'ad-16', 'delectus', 'ELEKTRONIK', 'Officiis quia eveniet et consequatur commodi quasi nulla.', 'barang/default.png', 'INACTIVE', '1996-10-13 22:22:43', '1998-05-04 23:58:08', NULL),
(17, 'corporis-17', 'reprehenderit', 'RUANGAN', 'Id numquam consectetur maxime aut. Non est quam quod eveniet.', 'barang/default.png', 'ACTIVE', '2019-05-04 18:06:10', '1984-05-28 07:53:33', NULL),
(18, 'ut-18', 'quae', 'RUANGAN', 'Voluptas aut ducimus consequuntur ullam voluptatem rem sed. Harum inventore odio nam.', 'barang/default.png', 'INACTIVE', '1977-06-08 22:05:48', '1974-04-10 21:39:33', NULL),
(19, 'laudantium-19', 'vel', 'ELEKTRONIK', 'Aspernatur tenetur inventore qui nemo aliquid et minus. Quos magnam officiis possimus consequatur ab similique quod.', 'barang/default.png', 'ACTIVE', '2003-07-02 21:36:54', '2017-12-03 01:18:26', NULL),
(20, 'ratione-20', 'illo', 'ATK', 'Et non praesentium in autem ullam saepe.', 'barang/default.png', 'ACTIVE', '1995-02-18 21:58:41', '1995-10-03 17:12:37', NULL),
(21, 'ut-21', 'quo', 'ELEKTRONIK', 'Rerum optio sint ut earum sint.', 'barang/default.png', 'ACTIVE', '2013-07-07 02:42:51', '2015-09-24 23:39:00', NULL),
(22, 'quia-22', 'praesentium', 'RUANGAN', 'Qui sunt maiores sit suscipit amet ut.', 'barang/default.png', 'ACTIVE', '2005-06-23 07:19:44', '2004-03-11 14:41:24', NULL),
(23, 'illum-23', 'nihil', 'ATK', 'Nihil est labore eos voluptatem sed cupiditate vel aut. Nemo fugit eligendi fugiat harum quod cupiditate alias eum.', 'barang/default.png', 'INACTIVE', '1985-07-04 05:43:01', '1989-04-21 05:25:51', NULL),
(24, 'exercitationem-24', 'cumque', 'ATK', 'Omnis sint ad et rerum. Ut sit error expedita quis consequatur.', 'barang/default.png', 'INACTIVE', '1983-02-04 23:35:53', '1990-10-28 13:46:18', NULL),
(25, 'in-25', 'laborum', 'ELEKTRONIK', 'Hic ut aperiam debitis sunt quo atque omnis est.', 'barang/default.png', 'ACTIVE', '1975-06-11 20:58:12', '1987-03-17 06:25:08', NULL),
(26, 'in-26', 'aut', 'RUANGAN', 'Atque cum recusandae voluptatem nobis.', 'barang/default.png', 'INACTIVE', '1999-07-14 15:52:29', '2006-02-12 14:28:38', NULL),
(27, 'rerum-27', 'nemo', 'ELEKTRONIK', 'Sequi cupiditate architecto saepe. Aliquid est ea aspernatur officia aspernatur.', 'barang/default.png', 'ACTIVE', '1979-02-21 11:31:09', '2007-02-28 03:43:36', NULL),
(28, 'quisquam-28', 'voluptatem', 'ELEKTRONIK', 'Ut aut error eum placeat. Alias ipsam sapiente aut qui velit sunt.', 'barang/default.png', 'INACTIVE', '2005-01-24 05:31:07', '2017-01-23 10:56:48', NULL),
(29, 'unde-29', 'sit', 'RUANGAN', 'Impedit reiciendis occaecati facilis illum. Beatae adipisci dolore dignissimos est magnam tenetur impedit.', 'barang/default.png', 'ACTIVE', '2012-06-09 11:25:23', '2019-04-13 08:53:44', NULL),
(30, 'quos-30', 'voluptate', 'ATK', 'Quaerat sunt at dolorem sunt itaque consectetur ut. Quos tempora quaerat ad voluptas quis quia.', 'barang/default.png', 'ACTIVE', '2001-06-05 22:18:37', '1970-04-17 21:18:40', NULL),
(31, 'expedita-31', 'sit', 'ATK', 'Et at tempore ducimus architecto omnis corporis. Est at iusto rem maiores nihil eum.', 'barang/default.png', 'INACTIVE', '1993-07-22 04:29:14', '1980-09-04 22:29:39', NULL),
(32, 'recusandae-32', 'sint', 'ELEKTRONIK', 'Ut consequuntur ea qui nostrum iure.', 'barang/default.png', 'ACTIVE', '1973-08-22 01:01:24', '1993-04-16 02:58:17', NULL),
(33, 'officia-33', 'ea', 'ELEKTRONIK', 'Quam enim veniam nesciunt dolor itaque a. Ad temporibus atque enim suscipit nihil sed ut.', 'barang/default.png', 'ACTIVE', '1983-12-09 20:37:17', '2010-12-07 21:55:30', NULL),
(34, 'est-34', 'ut', 'ATK', 'Voluptate aut suscipit quia numquam. Recusandae alias repellendus recusandae eveniet reprehenderit optio voluptatem.', 'barang/default.png', 'INACTIVE', '1970-09-16 11:35:59', '1995-12-07 03:04:39', NULL),
(35, 'cumque-35', 'pariatur', 'ATK', 'Facilis et at quia. Dolor quo dolore veniam quasi ex consectetur facere eum.', 'barang/default.png', 'INACTIVE', '1998-05-07 09:45:17', '1981-05-24 17:53:26', NULL),
(36, 'eos-36', 'labore', 'ELEKTRONIK', 'Ut modi laborum ut deleniti autem autem aspernatur totam.', 'barang/default.png', 'INACTIVE', '1980-01-02 12:32:35', '1971-09-25 17:12:38', NULL),
(37, 'et-37', 'quis', 'ELEKTRONIK', 'Sint occaecati perferendis quidem dolores. Sed quia voluptatibus provident inventore.', 'barang/default.png', 'INACTIVE', '1998-01-28 22:40:17', '1995-04-01 01:54:31', NULL),
(38, 'iste-38', 'eveniet', 'ELEKTRONIK', 'Nostrum reprehenderit laudantium non delectus.', 'barang/default.png', 'INACTIVE', '2012-11-03 01:44:46', '1998-11-26 22:53:59', NULL),
(39, 'tempore-39', 'sint', 'ATK', 'Sunt sequi sit quod dolores fugiat nulla. Laboriosam dignissimos et velit quia.', 'barang/default.png', 'INACTIVE', '1997-04-10 09:20:02', '1979-04-18 00:02:38', NULL),
(40, 'velit-40', 'dolor', 'ATK', 'Aspernatur sint explicabo numquam qui soluta. Harum tenetur hic cumque excepturi atque reprehenderit quibusdam.', 'barang/default.png', 'INACTIVE', '1976-02-05 22:17:39', '2017-04-17 22:24:20', NULL),
(41, 'ut-41', 'quaerat', 'RUANGAN', 'Rerum omnis iusto et consequatur consectetur. Consequatur eius alias inventore omnis ipsum aliquam.', 'barang/default.png', 'ACTIVE', '2014-03-14 20:59:05', '2008-08-24 04:41:55', NULL),
(42, 'molestiae-42', 'quibusdam', 'ATK', 'Aperiam non alias aut voluptatibus. Doloribus incidunt ipsam dolorum id sed dolore.', 'barang/default.png', 'ACTIVE', '2006-06-18 01:28:02', '2013-01-17 14:31:22', NULL),
(43, 'perferendis-43', 'ut', 'RUANGAN', 'Quibusdam dolorem reiciendis vel nihil et soluta. Eligendi exercitationem est in porro possimus inventore neque.', 'barang/default.png', 'ACTIVE', '1997-01-17 16:24:20', '1971-12-27 06:17:19', NULL),
(44, 'quidem-44', 'dolor', 'RUANGAN', 'Aliquid hic reiciendis ut consectetur deserunt odit atque.', 'barang/default.png', 'ACTIVE', '1980-10-06 15:29:10', '1974-03-25 08:08:49', NULL),
(45, 'distinctio-45', 'consequatur', 'ELEKTRONIK', 'Fugit amet quibusdam illo quas eum provident et. Est consequatur blanditiis tempore natus.', 'barang/default.png', 'INACTIVE', '1973-06-18 12:35:07', '2002-02-20 11:11:25', NULL),
(46, 'ab-46', 'asperiores', 'RUANGAN', 'Aliquid sapiente eaque illo.', 'barang/default.png', 'INACTIVE', '1982-07-05 20:28:20', '2004-12-08 10:42:04', NULL),
(47, 'eum-47', 'consequatur', 'ATK', 'Ut esse tempora aliquid quae quia. Tempore aut aut quia aliquid itaque.', 'barang/default.png', 'INACTIVE', '1981-08-21 16:45:00', '1983-09-04 16:37:17', NULL),
(48, 'saepe-48', 'error', 'ATK', 'Molestias et laboriosam sed et repellendus.', 'barang/default.png', 'INACTIVE', '2012-05-12 13:53:35', '1989-10-15 17:15:53', NULL),
(49, 'nulla-49', 'vel', 'ATK', 'Praesentium consequatur ratione aut qui. Culpa pariatur quas id in.', 'barang/default.png', 'ACTIVE', '2016-11-29 21:34:33', '2005-01-13 05:48:53', NULL),
(50, 'porro-50', 'illo', 'RUANGAN', 'Suscipit veritatis ut dicta sit vel rem. Incidunt itaque cumque in enim.', 'barang/default.png', 'ACTIVE', '2011-02-06 03:43:29', '1970-11-20 02:01:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `danas`
--

CREATE TABLE `danas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kegiatan` int(11) NOT NULL,
  `jumlah_pengajuan` decimal(8,0) DEFAULT NULL,
  `jumlah_pencairan` decimal(8,0) DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `tgl_pengajuan` date DEFAULT NULL,
  `tgl_pencairan` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danas`
--

INSERT INTO `danas` (`id`, `id_kegiatan`, `jumlah_pengajuan`, `jumlah_pencairan`, `keterangan`, `tgl_pengajuan`, `tgl_pencairan`, `status`, `created_at`, `updated_at`, `deletedAt`) VALUES
(1, 7, '31034679', '50835057', 'Ipsam nihil doloremque.', '2013-06-20', '1978-04-01', 'DITOLAK', '2017-07-16 12:41:28', '1986-08-18 23:24:45', NULL),
(2, 6, '76952257', '57797603', 'Modi neque quasi.', '1976-01-02', '2019-06-11', 'DITOLAK', '2018-01-24 20:17:18', '1979-06-22 09:23:52', NULL),
(3, 41, '9776306', '18600498', 'Non dolorem et.', '1973-05-01', '1989-05-22', 'DITOLAK', '1976-02-14 19:12:18', '2006-08-05 06:03:42', NULL),
(4, 12, '50973857', '50587222', 'Deleniti qui.', '1991-07-09', '1996-07-20', 'DITOLAK', '2005-05-05 18:53:22', '2008-01-17 04:15:28', NULL),
(5, 48, '79911568', '75171353', 'Excepturi voluptatem esse.', '2009-03-01', '2011-12-15', 'DITOLAK', '1994-10-02 00:59:50', '1988-07-13 02:06:20', NULL),
(6, 9, '43585761', '46187292', 'Eveniet in necessitatibus.', '2013-06-10', '2005-09-12', 'DISETUJUI', '1979-04-15 07:45:07', '1976-03-21 20:35:56', NULL),
(7, 46, '96796011', '10966442', 'Autem dolor.', '1999-02-15', '1989-01-23', 'DITOLAK', '2010-11-19 01:27:04', '1986-06-08 05:02:18', NULL),
(8, 46, '48044536', '70314926', 'Et sit nihil.', '1976-08-28', '1986-05-17', 'DISETUJUI', '1995-11-28 15:58:56', '1987-10-19 02:13:51', NULL),
(9, 27, '55647643', '46985710', 'A velit quia.', '2005-04-14', '2009-03-19', 'DITOLAK', '1997-12-26 00:49:43', '1977-10-18 20:16:24', NULL),
(10, 13, '26685107', '31417520', 'Et sed.', '2000-05-22', '2019-04-04', 'DISETUJUI', '2007-08-25 10:19:24', '1976-11-29 18:02:47', NULL),
(11, 23, '91559347', '91037281', 'Tenetur qui id.', '2015-06-06', '1997-11-13', 'DISETUJUI', '2017-10-22 18:40:49', '2000-10-28 23:10:02', NULL),
(12, 14, '73997401', '8582300', 'Occaecati quis.', '2011-03-13', '2019-04-15', 'DITOLAK', '2004-10-11 00:56:31', '2016-05-27 12:39:15', NULL),
(13, 18, '94423194', '68916621', 'Recusandae nostrum suscipit.', '1994-02-19', '1990-05-31', 'DITOLAK', '1976-11-09 07:41:44', '1999-03-02 13:53:16', NULL),
(14, 14, '18630347', '74337329', 'Est velit quia.', '1999-03-19', '1979-05-04', 'DITOLAK', '1985-06-29 13:16:49', '1987-12-15 22:02:47', NULL),
(15, 18, '36963386', '88713530', 'Provident animi non.', '1970-12-13', '1981-06-16', 'DISETUJUI', '2007-06-04 08:02:40', '1998-02-28 15:39:12', NULL),
(16, 42, '75360862', '89058478', 'Facere eum.', '1989-08-14', '1979-05-27', 'DITOLAK', '1995-03-15 10:06:36', '1985-07-25 02:18:39', NULL),
(17, 18, '68815379', '90873639', 'Magnam voluptatem aspernatur.', '1991-09-05', '1981-02-07', 'DISETUJUI', '2005-09-09 16:21:10', '2002-01-11 04:00:29', NULL),
(18, 24, '4269347', '39609964', 'Itaque asperiores omnis.', '1970-02-25', '1992-10-07', 'DISETUJUI', '1993-05-24 18:51:07', '1977-06-11 07:37:00', NULL),
(19, 37, '17635647', '10734377', 'Deleniti ipsum porro.', '2017-10-11', '1974-01-15', 'DITOLAK', '2014-05-17 08:07:34', '1984-07-26 23:42:35', NULL),
(20, 21, '5913134', '67782871', 'Laboriosam possimus.', '2006-02-14', '1993-07-10', 'DITOLAK', '1979-12-21 13:03:02', '1986-01-19 07:07:14', NULL),
(21, 3, '81952469', '96624087', 'Nam et ea.', '1982-03-27', '1979-12-29', 'DISETUJUI', '2007-08-19 03:52:47', '1985-01-27 15:27:01', NULL),
(22, 5, '14637540', '2133337', 'Accusamus vero consectetur.', '2018-11-28', '2005-03-06', 'DISETUJUI', '1987-09-06 22:44:12', '2005-10-24 07:26:39', NULL),
(23, 19, '54031216', '6708241', 'Sit explicabo.', '1998-05-02', '2002-10-27', 'DITOLAK', '1993-08-18 04:51:06', '2017-10-07 21:48:18', NULL),
(24, 24, '55271221', '44074693', 'Cumque inventore.', '1996-08-01', '2016-07-22', 'DISETUJUI', '1971-11-30 15:08:25', '1999-01-22 10:31:19', NULL),
(25, 4, '22294503', '38043414', 'Ut qui.', '1999-12-10', '1983-06-22', 'DITOLAK', '1977-05-22 09:35:22', '1994-12-21 02:59:16', NULL),
(26, 34, '82802312', '69389481', 'Qui qui quia.', '1990-07-06', '1999-04-24', 'DISETUJUI', '1988-06-27 06:34:19', '2009-01-28 22:21:49', NULL),
(27, 46, '6148309', '37553670', 'Placeat laudantium ad.', '2005-03-29', '1976-12-17', 'DITOLAK', '1972-05-06 15:25:53', '1987-07-17 21:32:39', NULL),
(28, 35, '46495135', '74922062', 'Consequuntur id.', '1986-01-15', '2008-07-20', 'DITOLAK', '2010-05-13 08:17:39', '1989-06-08 05:31:53', NULL),
(29, 1, '83007793', '3761191', 'Facere laborum porro.', '2006-12-10', '2008-04-03', 'DISETUJUI', '1978-12-01 08:41:54', '2009-05-09 18:03:13', NULL),
(30, 32, '61632230', '40817081', 'Corrupti illum soluta.', '1980-11-08', '1971-07-14', 'DITOLAK', '1998-09-28 08:50:41', '1975-05-27 07:02:40', NULL),
(31, 24, '36771380', '43646122', 'Earum et voluptatem.', '1974-01-03', '2004-01-29', 'DITOLAK', '1988-01-01 03:59:38', '2001-01-21 16:33:48', NULL),
(32, 16, '88309466', '26253585', 'Vitae cum distinctio.', '1995-09-01', '2002-05-04', 'DITOLAK', '1996-11-27 09:06:42', '2008-07-28 10:02:41', NULL),
(33, 6, '91254205', '87755727', 'Aspernatur iure exercitationem.', '2010-12-06', '1973-12-03', 'DITOLAK', '1998-11-17 12:44:39', '2014-06-07 14:16:29', NULL),
(34, 25, '84472346', '50007031', 'Qui distinctio ex.', '2016-12-02', '1988-01-26', 'DITOLAK', '1993-10-18 13:28:58', '1995-03-05 00:45:19', NULL),
(35, 50, '71953653', '98349012', 'Omnis unde assumenda.', '1987-06-30', '2018-10-03', 'DISETUJUI', '2003-07-03 06:07:49', '1977-04-02 17:15:31', NULL),
(36, 2, '94630556', '93546244', 'Ipsum nihil consequatur.', '1984-02-24', '2007-09-15', 'DISETUJUI', '1995-02-14 05:00:08', '1998-09-20 08:41:56', NULL),
(37, 37, '84136494', '59955912', 'Nostrum fuga.', '1984-03-06', '1988-09-03', 'DISETUJUI', '1972-08-12 04:07:37', '2011-08-13 11:36:24', NULL),
(38, 5, '10370711', '15135546', 'Non sed.', '1988-11-18', '1982-10-22', 'DISETUJUI', '1983-06-25 17:53:10', '1986-09-01 18:28:37', NULL),
(39, 44, '42755349', '71590240', 'Consequatur veritatis.', '1979-12-30', '2002-11-09', 'DISETUJUI', '2009-08-27 15:51:37', '2009-10-03 21:21:45', NULL),
(40, 44, '24220854', '79497459', 'Autem est.', '1987-03-27', '1985-09-03', 'DISETUJUI', '1982-10-23 17:55:59', '2000-06-11 22:31:09', NULL),
(41, 41, '68685391', '81268234', 'Quos qui accusamus.', '1973-11-18', '2009-10-05', 'DITOLAK', '1973-11-07 23:13:25', '2018-03-03 19:59:32', NULL),
(42, 49, '35469518', '92416399', 'Illum officia.', '1987-04-09', '1982-04-08', 'DITOLAK', '1990-11-20 08:25:28', '1972-06-02 12:05:51', NULL),
(43, 36, '6466837', '64938118', 'Odit cum.', '2016-02-24', '1974-09-13', 'DISETUJUI', '1972-11-20 11:57:52', '2002-04-21 03:48:47', NULL),
(44, 17, '24690791', '52206092', 'Aut dolorum autem.', '2009-06-15', '1998-10-05', 'DITOLAK', '1971-03-01 12:10:49', '2006-12-25 15:02:17', NULL),
(45, 2, '18646303', '39599526', 'Facere accusantium.', '1993-02-24', '2014-03-11', 'DITOLAK', '1988-02-15 17:49:50', '1977-09-09 17:09:51', NULL),
(46, 46, '78029210', '8737613', 'Reprehenderit culpa.', '1984-12-10', '1978-02-28', 'DITOLAK', '2003-03-30 14:22:35', '2005-09-24 23:40:36', NULL),
(47, 39, '33196067', '63491129', 'Quidem incidunt.', '1979-05-25', '1998-01-26', 'DITOLAK', '2013-09-28 19:29:13', '2015-09-28 21:51:17', NULL),
(48, 17, '85949692', '75141996', 'Officiis odit.', '2016-05-08', '1990-05-11', 'DISETUJUI', '2017-07-06 18:42:03', '2010-11-16 22:18:57', NULL),
(49, 22, '49268782', '69119352', 'Molestiae quibusdam et.', '1971-03-29', '2009-12-25', 'DISETUJUI', '1970-03-27 19:53:25', '2005-06-23 09:19:02', NULL),
(50, 1, '58013372', '22159270', 'Eum quasi.', '1988-04-29', '2004-03-10', 'DISETUJUI', '1986-07-21 21:09:31', '1987-08-20 22:46:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dokumentasis`
--

CREATE TABLE `dokumentasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kegiatan` int(11) DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `file` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dokumentasis`
--

INSERT INTO `dokumentasis` (`id`, `id_kegiatan`, `keterangan`, `file`, `created_at`, `updated_at`, `deletedAt`) VALUES
(1, 2, 'Rerum assumenda quia et.', 'dokumentasi/default.png', '1975-12-24 18:55:15', '1990-07-29 03:34:53', NULL),
(2, 33, 'Id ipsum consequatur.', 'dokumentasi/default.png', '2012-05-18 01:26:22', '1986-09-12 01:24:50', NULL),
(3, 27, 'Quisquam dolor ut nostrum.', 'dokumentasi/default.png', '1983-12-30 17:47:12', '1991-11-26 12:24:10', NULL),
(4, 10, 'Beatae aut consequuntur expedita earum.', 'dokumentasi/default.png', '1987-02-14 17:43:04', '2011-12-10 09:03:25', NULL),
(5, 16, 'Nobis sequi quo ipsa amet earum.', 'dokumentasi/default.png', '1975-04-12 17:31:08', '1993-01-04 18:28:05', NULL),
(6, 15, 'Maxime in illum consequatur commodi.', 'dokumentasi/default.png', '1998-04-14 15:46:55', '2016-12-26 16:05:42', NULL),
(7, 27, 'Ullam et nemo architecto quam eos.', 'dokumentasi/default.png', '2006-08-17 05:28:05', '1978-04-05 20:32:10', NULL),
(8, 44, 'Sint aut et explicabo laboriosam.', 'dokumentasi/default.png', '1995-04-22 21:08:12', '2006-11-18 20:54:08', NULL),
(9, 8, 'Soluta quibusdam occaecati ex.', 'dokumentasi/default.png', '2001-10-30 02:28:58', '1981-09-25 14:49:26', NULL),
(10, 28, 'Est est veritatis.', 'dokumentasi/default.png', '1973-12-19 10:53:19', '2007-10-02 04:22:14', NULL),
(11, 48, 'Est aut aut rerum est.', 'dokumentasi/default.png', '1988-01-25 22:30:03', '1971-12-20 23:49:02', NULL),
(12, 31, 'Assumenda consectetur consequatur numquam.', 'dokumentasi/default.png', '1986-03-10 00:14:12', '1990-08-30 22:36:37', NULL),
(13, 4, 'Voluptatem et iure.', 'dokumentasi/default.png', '1986-06-27 19:05:28', '1997-04-14 02:52:09', NULL),
(14, 43, 'Eos incidunt aut cumque.', 'dokumentasi/default.png', '1976-11-19 16:49:20', '2018-03-24 06:48:14', NULL),
(15, 3, 'Veritatis omnis aut laudantium odit laborum.', 'dokumentasi/default.png', '1976-06-04 14:42:08', '1990-04-28 00:40:53', NULL),
(16, 31, 'Ea iure facere impedit molestiae.', 'dokumentasi/default.png', '2000-08-05 23:41:50', '1978-02-16 00:18:56', NULL),
(17, 30, 'In a pariatur architecto et aliquam.', 'dokumentasi/default.png', '1988-02-18 13:37:03', '1973-06-24 08:07:15', NULL),
(18, 11, 'Velit voluptatem veritatis quas.', 'dokumentasi/default.png', '1987-11-22 21:34:27', '1980-06-02 21:30:35', NULL),
(19, 29, 'Quo adipisci corporis eos fugit.', 'dokumentasi/default.png', '1994-10-31 15:22:03', '1980-03-12 07:29:13', NULL),
(20, 9, 'Voluptatem est et quo aut.', 'dokumentasi/default.png', '1976-04-02 04:48:44', '2010-09-08 01:27:31', NULL),
(21, 38, 'Fuga officia enim qui.', 'dokumentasi/default.png', '1972-12-31 10:54:30', '1974-01-22 08:22:07', NULL),
(22, 21, 'Inventore eos nesciunt.', 'dokumentasi/default.png', '2010-04-21 09:35:24', '1990-06-23 01:26:20', NULL),
(23, 41, 'Sed sit labore fugit.', 'dokumentasi/default.png', '1975-08-13 16:22:00', '2005-07-25 19:37:37', NULL),
(24, 10, 'Et eius iusto dolorem.', 'dokumentasi/default.png', '1989-09-15 10:19:20', '1978-08-19 11:02:17', NULL),
(25, 39, 'Ut in autem ea.', 'dokumentasi/default.png', '2016-08-13 01:48:49', '1991-07-18 16:46:36', NULL),
(26, 47, 'Quia voluptatem nihil officia omnis.', 'dokumentasi/default.png', '1972-05-27 11:29:47', '1985-01-14 05:02:22', NULL),
(27, 6, 'Sint ducimus et.', 'dokumentasi/default.png', '1989-04-16 08:52:57', '2008-09-06 03:14:19', NULL),
(28, 37, 'Ex laborum aut iste.', 'dokumentasi/default.png', '1987-05-18 00:53:53', '1971-09-27 04:27:19', NULL),
(29, 40, 'Quae aperiam sapiente labore.', 'dokumentasi/default.png', '1992-04-29 21:29:44', '2010-10-11 19:31:32', NULL),
(30, 50, 'Quia suscipit qui nesciunt accusantium.', 'dokumentasi/default.png', '1975-12-15 15:42:22', '2019-04-01 03:35:14', NULL),
(31, 22, 'Ipsum voluptatem in doloribus.', 'dokumentasi/default.png', '2012-05-21 23:07:33', '1978-07-06 04:01:06', NULL),
(32, 7, 'Consequatur dolorem voluptas.', 'dokumentasi/default.png', '2004-01-04 05:25:29', '2005-08-21 08:35:51', NULL),
(33, 24, 'Odio sed quia.', 'dokumentasi/default.png', '1999-09-27 08:25:56', '2000-09-10 15:57:08', NULL),
(34, 3, 'Tempora ratione consectetur est totam rerum.', 'dokumentasi/default.png', '2017-11-01 09:11:42', '1974-11-12 05:25:45', NULL),
(35, 26, 'Cupiditate sit nostrum rerum autem distinctio.', 'dokumentasi/default.png', '2017-10-09 20:11:50', '1972-04-22 04:54:32', NULL),
(36, 46, 'Voluptatum dolores provident quis voluptatem.', 'dokumentasi/default.png', '1998-08-20 20:44:49', '2012-06-12 23:46:26', NULL),
(37, 30, 'Atque tempore a aut.', 'dokumentasi/default.png', '2003-01-23 21:00:05', '1971-10-02 01:09:42', NULL),
(38, 36, 'Accusantium laudantium molestiae.', 'dokumentasi/default.png', '2014-12-07 22:37:40', '1975-05-05 10:58:06', NULL),
(39, 2, 'Voluptates adipisci asperiores praesentium.', 'dokumentasi/default.png', '2008-06-04 17:24:50', '1988-12-27 00:10:24', NULL),
(40, 34, 'Sunt iste quia eum iusto in.', 'dokumentasi/default.png', '1977-07-08 10:01:49', '1977-08-10 10:56:59', NULL),
(41, 24, 'Dolor quia vitae.', 'dokumentasi/default.png', '1985-10-10 13:28:40', '1973-10-05 16:47:10', NULL),
(42, 5, 'Repudiandae aut inventore ad nobis.', 'dokumentasi/default.png', '1996-10-12 17:46:41', '1986-07-19 12:11:04', NULL),
(43, 49, 'Dicta porro quas sit provident laudantium.', 'dokumentasi/default.png', '1986-03-11 14:08:08', '1982-04-25 08:08:04', NULL),
(44, 46, 'Voluptate et voluptas quia voluptas.', 'dokumentasi/default.png', '1979-07-09 12:42:47', '2000-04-01 19:00:56', NULL),
(45, 2, 'Hic modi quo ratione quidem.', 'dokumentasi/default.png', '1971-04-15 09:10:25', '2012-09-09 01:39:25', NULL),
(46, 11, 'Dolorum dolores dolorem est perferendis autem.', 'dokumentasi/default.png', '2011-10-29 18:37:53', '1977-02-16 10:56:47', NULL),
(47, 13, 'Aspernatur quia ipsa vel voluptatibus nisi.', 'dokumentasi/default.png', '1995-10-20 06:18:13', '1987-12-24 06:20:47', NULL),
(48, 35, 'Eveniet error quia maxime.', 'dokumentasi/default.png', '1995-11-23 19:31:26', '2009-03-15 16:06:20', NULL),
(49, 6, 'Eveniet illum rerum.', 'dokumentasi/default.png', '1987-03-22 03:11:36', '1993-07-14 07:02:09', NULL),
(50, 49, 'Aliquid sed ratione autem aspernatur.', 'dokumentasi/default.png', '1992-06-06 07:12:58', '2007-07-26 12:39:04', NULL),
(51, 19, 'Quis quam necessitatibus officia.', 'dokumentasi/default.png', '2014-02-28 13:19:32', '2000-05-19 08:29:45', NULL),
(52, 7, 'Id sunt et facilis et.', 'dokumentasi/default.png', '2008-01-17 18:47:42', '1975-01-01 20:49:39', NULL),
(53, 41, 'Saepe ut aut dolorem aperiam.', 'dokumentasi/default.png', '2003-11-14 17:18:49', '1995-03-16 13:24:43', NULL),
(54, 49, 'Et voluptates impedit ea nostrum.', 'dokumentasi/default.png', '1971-09-29 00:18:39', '2010-01-06 13:06:11', NULL),
(55, 33, 'Occaecati occaecati dolore cum explicabo.', 'dokumentasi/default.png', '2011-09-02 18:25:31', '1980-08-04 17:09:49', NULL),
(56, 40, 'Alias molestiae quibusdam animi.', 'dokumentasi/default.png', '1982-11-12 19:10:28', '1993-11-26 17:49:54', NULL),
(57, 47, 'Eos excepturi ipsum nobis ea.', 'dokumentasi/default.png', '2009-04-01 05:40:28', '2014-02-27 05:14:07', NULL),
(58, 49, 'Porro voluptatem reiciendis dolores.', 'dokumentasi/default.png', '1970-09-30 14:50:26', '2004-06-19 08:15:01', NULL),
(59, 49, 'Alias numquam dolores sunt provident tempora.', 'dokumentasi/default.png', '2019-03-14 14:09:24', '1997-03-01 00:52:31', NULL),
(60, 9, 'Recusandae qui nobis et.', 'dokumentasi/default.png', '2000-03-16 08:33:54', '1997-05-11 04:42:42', NULL),
(61, 14, 'Magni et distinctio minus.', 'dokumentasi/default.png', '1983-03-21 17:57:57', '1983-11-29 19:58:36', NULL),
(62, 40, 'Aut tempora et ratione odio dolores.', 'dokumentasi/default.png', '1979-03-24 00:13:01', '2018-10-09 12:35:30', NULL),
(63, 40, 'Libero reiciendis quia.', 'dokumentasi/default.png', '1986-09-21 10:13:04', '2001-03-17 16:44:14', NULL),
(64, 43, 'Et doloremque vel non.', 'dokumentasi/default.png', '1983-09-05 19:56:03', '1983-10-05 07:20:12', NULL),
(65, 30, 'Dignissimos praesentium tempora necessitatibus eum.', 'dokumentasi/default.png', '1995-08-05 21:11:06', '2000-09-28 22:46:34', NULL),
(66, 36, 'Rerum ea non et.', 'dokumentasi/default.png', '2015-11-06 18:56:58', '2017-01-07 00:34:29', NULL),
(67, 47, 'Cupiditate quae ut culpa laboriosam.', 'dokumentasi/default.png', '2011-04-09 03:37:30', '2003-10-18 05:09:59', NULL),
(68, 42, 'Cupiditate aut nam.', 'dokumentasi/default.png', '1996-08-10 06:59:31', '2019-06-23 20:43:05', NULL),
(69, 3, 'Laudantium consequuntur neque rerum iusto laboriosam.', 'dokumentasi/default.png', '1983-01-27 15:26:02', '2002-04-16 05:21:56', NULL),
(70, 46, 'Cumque saepe magni.', 'dokumentasi/default.png', '1991-10-01 17:10:18', '1997-07-24 04:12:20', NULL),
(71, 26, 'Dolor est nihil autem harum.', 'dokumentasi/default.png', '1993-09-06 17:44:55', '1995-02-27 12:53:32', NULL),
(72, 12, 'Asperiores voluptate eaque laudantium.', 'dokumentasi/default.png', '2014-11-01 02:25:49', '2006-02-18 13:43:39', NULL),
(73, 4, 'Ut non ea incidunt harum.', 'dokumentasi/default.png', '2001-12-27 10:49:52', '1981-12-17 22:52:05', NULL),
(74, 5, 'Nemo corrupti hic hic aperiam.', 'dokumentasi/default.png', '1970-06-14 09:06:21', '1992-03-30 08:04:57', NULL),
(75, 44, 'Qui eaque et.', 'dokumentasi/default.png', '2008-06-24 12:03:02', '1973-09-14 07:19:33', NULL),
(76, 37, 'Ut officia odio voluptate.', 'dokumentasi/default.png', '1974-09-25 15:41:54', '2008-05-01 16:36:23', NULL),
(77, 45, 'Dolores ex voluptatem sunt vitae blanditiis.', 'dokumentasi/default.png', '1997-05-12 11:18:10', '2017-09-03 01:34:14', NULL),
(78, 41, 'Aut alias voluptatum eos aut.', 'dokumentasi/default.png', '1972-11-25 16:21:10', '1993-04-07 02:20:13', NULL),
(79, 15, 'Et non eos.', 'dokumentasi/default.png', '1986-11-08 19:20:54', '1998-05-15 09:54:27', NULL),
(80, 21, 'Dignissimos doloribus quia explicabo.', 'dokumentasi/default.png', '1973-11-17 06:51:59', '1975-11-13 08:16:01', NULL),
(81, 5, 'Veritatis sed aut iusto fugiat.', 'dokumentasi/default.png', '1987-07-27 15:17:19', '1979-08-20 01:06:38', NULL),
(82, 25, 'Rerum sit quis placeat natus ratione.', 'dokumentasi/default.png', '1987-09-27 16:18:08', '1995-09-20 22:02:02', NULL),
(83, 29, 'Dolore suscipit vero et.', 'dokumentasi/default.png', '1979-07-08 19:19:58', '1993-05-28 12:28:36', NULL),
(84, 45, 'Et neque aspernatur voluptas.', 'dokumentasi/default.png', '2013-09-26 19:10:56', '2013-12-26 21:41:57', NULL),
(85, 35, 'Et minima harum.', 'dokumentasi/default.png', '1995-07-12 23:20:37', '1997-03-05 02:31:13', NULL),
(86, 33, 'Veritatis incidunt et illum quia.', 'dokumentasi/default.png', '1980-10-17 21:29:49', '2010-06-29 01:36:40', NULL),
(87, 27, 'Quasi architecto aspernatur repellat veniam vitae.', 'dokumentasi/default.png', '1990-03-16 04:34:31', '2007-07-12 05:21:14', NULL),
(88, 5, 'Fugiat at sapiente deserunt aliquid.', 'dokumentasi/default.png', '1986-09-18 23:18:41', '1976-01-19 18:46:05', NULL),
(89, 6, 'Repellat cum et molestiae.', 'dokumentasi/default.png', '1983-12-06 21:24:47', '2012-09-14 15:30:25', NULL),
(90, 10, 'Distinctio totam laboriosam ullam.', 'dokumentasi/default.png', '1985-05-05 10:37:02', '1981-10-04 09:37:57', NULL),
(91, 20, 'Eos sit ut cumque.', 'dokumentasi/default.png', '1977-07-31 06:44:46', '2002-08-15 00:08:47', NULL),
(92, 15, 'Officiis et asperiores aliquam.', 'dokumentasi/default.png', '1996-05-27 20:45:59', '1990-08-24 01:59:17', NULL),
(93, 37, 'Amet est corrupti quia assumenda ipsam.', 'dokumentasi/default.png', '1980-02-19 08:06:17', '2009-10-21 18:53:42', NULL),
(94, 15, 'Est numquam nobis eum inventore.', 'dokumentasi/default.png', '1981-01-04 02:06:36', '2007-11-22 00:57:25', NULL),
(95, 44, 'Occaecati sunt qui alias.', 'dokumentasi/default.png', '2002-02-16 10:16:10', '1992-08-08 23:07:47', NULL),
(96, 21, 'Voluptas omnis voluptas dicta.', 'dokumentasi/default.png', '1971-02-26 21:17:36', '1999-07-06 03:55:48', NULL),
(97, 49, 'Ducimus possimus quos alias quod ea.', 'dokumentasi/default.png', '1989-10-13 06:08:04', '1999-07-10 22:53:21', NULL),
(98, 40, 'Aut non inventore.', 'dokumentasi/default.png', '2010-01-08 16:34:12', '1994-09-23 03:51:24', NULL),
(99, 16, 'Officia maxime eos.', 'dokumentasi/default.png', '1993-11-27 19:20:42', '1988-12-16 06:44:21', NULL),
(100, 8, 'Maxime facere odit sint.', 'dokumentasi/default.png', '1999-12-13 19:23:46', '1983-05-27 19:22:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kegiatans`
--

CREATE TABLE `kegiatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_lembaga` int(11) NOT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proposal_kegiatan` text COLLATE utf8mb4_unicode_ci,
  `tgl_kegiatan` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kegiatans`
--

INSERT INTO `kegiatans` (`id`, `id_lembaga`, `judul`, `deskripsi`, `proposal_kegiatan`, `tgl_kegiatan`, `status`, `created_at`, `updated_at`, `deletedAt`) VALUES
(1, 41, 'Dr.', 'Ex in deserunt laborum nobis qui.', 'kegiatan/test.doc', '2007-05-29', 'DITERIMA', '1972-04-12 21:23:45', '1970-09-28 21:43:59', NULL),
(2, 21, 'Mrs.', 'Iure sequi facere ipsa accusantium consequatur.', 'kegiatan/test.doc', '1989-11-10', 'DITOLAK', '1975-12-03 12:23:58', '1985-09-01 11:16:30', NULL),
(3, 31, 'Ms.', 'Non tenetur animi assumenda aut.', 'kegiatan/test.doc', '2002-05-02', 'DITERIMA', '1988-02-24 20:27:17', '2003-02-01 07:07:43', NULL),
(4, 28, 'Dr.', 'Et et est et aspernatur voluptas consequatur porro.', 'kegiatan/test.doc', '2009-01-02', 'PENGAJUAN', '1994-02-28 08:39:13', '1984-04-04 05:11:03', NULL),
(5, 48, 'Prof.', 'Enim natus et nam non aliquam voluptates aperiam.', 'kegiatan/test.doc', '1972-01-27', 'DITERIMA', '2003-06-22 20:36:10', '1973-04-17 21:22:11', NULL),
(6, 9, 'Dr.', 'Itaque adipisci tenetur ut fugiat aut.', 'kegiatan/test.doc', '1995-03-19', 'DITERIMA', '1982-12-08 19:45:41', '1993-03-11 09:34:53', NULL),
(7, 43, 'Prof.', 'Eos est quis sed.', 'kegiatan/test.doc', '1980-12-28', 'DITOLAK', '2009-02-03 19:43:04', '2014-02-12 21:05:01', NULL),
(8, 4, 'Miss', 'Ipsam distinctio adipisci inventore tempore dolores.', 'kegiatan/test.doc', '2008-11-12', 'DITERIMA', '1981-01-06 23:27:21', '1987-01-11 03:44:02', NULL),
(9, 26, 'Prof.', 'Ex atque adipisci perspiciatis aut itaque.', 'kegiatan/test.doc', '2010-10-31', 'DITOLAK', '1974-10-25 15:53:48', '1972-05-21 13:25:55', NULL),
(10, 42, 'Dr.', 'Eveniet alias eius temporibus.', 'kegiatan/test.doc', '1983-05-08', 'PENGAJUAN', '2003-06-22 03:33:50', '2004-03-01 17:53:46', NULL),
(11, 3, 'Prof.', 'Facilis et vero voluptatem qui consequatur nihil.', 'kegiatan/test.doc', '1983-07-22', 'DITOLAK', '2008-07-10 14:41:32', '2000-12-22 19:44:08', NULL),
(12, 31, 'Miss', 'Dolorem ut inventore molestias earum.', 'kegiatan/test.doc', '2005-07-02', 'DITERIMA', '1998-06-04 04:33:51', '1991-04-13 01:10:48', NULL),
(13, 18, 'Dr.', 'Facilis sint itaque molestiae.', 'kegiatan/test.doc', '1988-01-24', 'DITERIMA', '1977-08-09 05:42:49', '2006-09-16 11:44:03', NULL),
(14, 50, 'Mr.', 'Iure vero quia ut placeat illum voluptas.', 'kegiatan/test.doc', '1988-06-25', 'PENGAJUAN', '1993-08-16 22:47:40', '2000-08-11 20:40:29', NULL),
(15, 32, 'Dr.', 'Repellendus ex ipsum animi.', 'kegiatan/test.doc', '2003-01-23', 'DITERIMA', '2011-10-05 03:08:18', '1977-06-25 00:16:06', NULL),
(16, 12, 'Dr.', 'Optio sed autem omnis.', 'kegiatan/test.doc', '1983-08-24', 'DITOLAK', '2009-01-14 04:03:05', '1983-09-06 20:35:28', NULL),
(17, 7, 'Ms.', 'Ea tempore sunt et necessitatibus distinctio.', 'kegiatan/test.doc', '1980-04-26', 'DITERIMA', '2005-11-23 21:58:37', '2013-03-08 22:29:20', NULL),
(18, 11, 'Ms.', 'Consequatur doloribus ipsa labore corrupti magni.', 'kegiatan/test.doc', '2013-01-31', 'DITERIMA', '1978-03-06 21:11:40', '1982-08-02 02:05:52', NULL),
(19, 27, 'Mr.', 'Deserunt autem tempora eos magnam quia.', 'kegiatan/test.doc', '1987-01-08', 'PENGAJUAN', '1999-11-14 06:25:25', '2004-11-27 03:52:39', NULL),
(20, 2, 'Miss', 'Blanditiis illo doloribus dolores.', 'kegiatan/test.doc', '1997-06-30', 'DITERIMA', '1973-01-21 01:58:25', '1998-03-11 16:59:28', NULL),
(21, 35, 'Prof.', 'Debitis nulla molestias sit itaque minus.', 'kegiatan/test.doc', '2001-03-03', 'DITOLAK', '1993-09-04 13:58:42', '1984-04-30 18:21:49', NULL),
(22, 41, 'Mrs.', 'Ducimus nihil dolores sed fuga molestias alias iste.', 'kegiatan/test.doc', '1970-09-02', 'DITERIMA', '1992-02-15 13:50:29', '2016-03-01 02:38:13', NULL),
(23, 37, 'Ms.', 'Blanditiis omnis placeat aut.', 'kegiatan/test.doc', '1993-02-01', 'DITERIMA', '1999-07-02 06:00:40', '1972-11-25 15:44:55', NULL),
(24, 13, 'Prof.', 'Voluptas occaecati sit sint error.', 'kegiatan/test.doc', '1994-05-30', 'PENGAJUAN', '1985-12-27 07:51:57', '2015-01-08 01:07:10', NULL),
(25, 37, 'Ms.', 'Illo officia doloremque et ducimus.', 'kegiatan/test.doc', '1982-08-05', 'PENGAJUAN', '1979-07-06 05:32:50', '1990-08-26 02:40:55', NULL),
(26, 23, 'Mr.', 'Vitae iure voluptatem rem aut.', 'kegiatan/test.doc', '1976-03-04', 'DITERIMA', '2000-09-05 05:51:28', '1987-11-30 10:35:27', NULL),
(27, 21, 'Miss', 'Odio magnam rerum et quis nihil ut.', 'kegiatan/test.doc', '1988-08-21', 'PENGAJUAN', '1970-12-24 05:05:10', '2006-12-26 12:13:54', NULL),
(28, 22, 'Miss', 'Provident ex fuga molestiae deleniti maxime.', 'kegiatan/test.doc', '2007-12-02', 'DITERIMA', '2016-10-23 17:03:03', '2018-07-17 08:18:11', NULL),
(29, 49, 'Mrs.', 'Quia non iure nisi.', 'kegiatan/test.doc', '2004-10-11', 'DITERIMA', '1970-01-30 00:20:27', '1998-02-21 20:57:00', NULL),
(30, 34, 'Ms.', 'Aliquam voluptate molestiae amet deserunt.', 'kegiatan/test.doc', '1998-05-21', 'DITERIMA', '2015-03-02 06:19:36', '1971-03-28 23:15:36', NULL),
(31, 8, 'Mr.', 'Dolores nostrum earum est quos dolorem.', 'kegiatan/test.doc', '1989-09-22', 'PENGAJUAN', '1986-08-02 12:08:40', '2001-01-01 15:28:08', NULL),
(32, 38, 'Miss', 'Totam ut suscipit aliquid.', 'kegiatan/test.doc', '2000-07-29', 'DITERIMA', '2010-03-30 23:33:09', '2013-03-12 07:28:49', NULL),
(33, 2, 'Prof.', 'Perferendis assumenda voluptatibus autem minus est.', 'kegiatan/test.doc', '2017-01-12', 'DITERIMA', '2009-03-10 15:50:51', '1983-12-16 07:40:56', NULL),
(34, 39, 'Mr.', 'Voluptatibus quo veniam eos eaque.', 'kegiatan/test.doc', '2001-01-19', 'PENGAJUAN', '2002-06-12 15:14:14', '2015-10-03 12:01:24', NULL),
(35, 36, 'Dr.', 'Quasi aut reiciendis adipisci.', 'kegiatan/test.doc', '2012-10-21', 'DITERIMA', '2015-04-18 06:30:42', '2018-10-13 01:45:56', NULL),
(36, 33, 'Prof.', 'Neque adipisci itaque debitis.', 'kegiatan/test.doc', '1970-03-25', 'PENGAJUAN', '2010-10-31 00:15:13', '1999-05-10 06:24:19', NULL),
(37, 4, 'Mr.', 'Enim dolore voluptatem reprehenderit harum et.', 'kegiatan/test.doc', '1984-01-26', 'DITERIMA', '1976-03-02 19:17:51', '1999-06-25 20:47:27', NULL),
(38, 27, 'Dr.', 'In ut itaque voluptatem similique vero.', 'kegiatan/test.doc', '1997-07-30', 'DITOLAK', '1982-08-30 05:36:37', '1979-10-24 21:02:47', NULL),
(39, 39, 'Prof.', 'Est velit doloremque totam rem excepturi.', 'kegiatan/test.doc', '1975-10-25', 'DITOLAK', '1975-06-08 09:46:27', '1998-02-14 18:12:42', NULL),
(40, 30, 'Prof.', 'Dolor voluptatum aut corrupti.', 'kegiatan/test.doc', '1996-10-19', 'DITERIMA', '2019-03-20 17:20:35', '1983-02-18 21:37:26', NULL),
(41, 35, 'Prof.', 'Dolorem voluptate delectus id aperiam.', 'kegiatan/test.doc', '1994-09-12', 'DITOLAK', '2004-12-02 16:31:35', '1971-05-18 10:45:20', NULL),
(42, 33, 'Mrs.', 'Fugit quia sint delectus dignissimos.', 'kegiatan/test.doc', '2016-03-07', 'DITOLAK', '1974-08-01 03:21:24', '2013-11-20 08:11:48', NULL),
(43, 40, 'Dr.', 'Ex aperiam sed natus dolores officiis.', 'kegiatan/test.doc', '2006-06-23', 'PENGAJUAN', '1994-12-02 20:00:07', '2014-05-26 03:26:39', NULL),
(44, 3, 'Prof.', 'Omnis qui aut saepe accusantium.', 'kegiatan/test.doc', '1980-05-27', 'PENGAJUAN', '2004-11-01 07:57:28', '1980-11-23 16:05:01', NULL),
(45, 41, 'Ms.', 'Consectetur quod nostrum dolor commodi odit.', 'kegiatan/test.doc', '2008-02-26', 'DITOLAK', '2001-11-19 11:25:03', '2005-12-05 12:39:56', NULL),
(46, 26, 'Mr.', 'Praesentium culpa eos est at.', 'kegiatan/test.doc', '1978-12-24', 'DITOLAK', '1978-09-29 07:04:40', '2003-05-29 04:01:06', NULL),
(47, 12, 'Prof.', 'Placeat et dolores placeat.', 'kegiatan/test.doc', '1977-04-11', 'PENGAJUAN', '2003-01-05 01:05:54', '1993-01-28 23:26:38', NULL),
(48, 35, 'Prof.', 'Magni error inventore qui.', 'kegiatan/test.doc', '2015-12-08', 'PENGAJUAN', '1975-08-04 07:37:44', '2017-10-13 12:08:42', NULL),
(49, 32, 'Prof.', 'Quaerat sed accusamus odit eum atque repellat.', 'kegiatan/test.doc', '1974-04-09', 'DITERIMA', '2003-03-11 09:36:44', '1992-12-20 16:56:21', NULL),
(50, 30, 'Mr.', 'Qui dolores animi qui ea esse.', 'kegiatan/test.doc', '1985-05-29', 'DITOLAK', '2019-01-16 00:03:30', '2008-01-19 19:03:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lembagas`
--

CREATE TABLE `lembagas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `no_hp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lembagas`
--

INSERT INTO `lembagas` (`id`, `id_user`, `nama`, `email`, `alamat`, `no_hp`, `keterangan`, `created_at`, `updated_at`, `deletedAt`) VALUES
(1, 2, 'Hamill, Orn and Barrows', 'cornelius.rogahn@turner.info', '4744 Walter Gardens Apt. 414\nEast Rashad, NM 43696', '+15747226591', 'Molestias nam necessitatibus voluptatem reprehenderit labore.', '1979-12-05 02:27:57', '2007-12-14 15:14:36', NULL),
(2, 3, 'Treutel-Schowalter', 'everett13@gorczany.com', '5978 West Parkways\nEast Willahaven, IN 20795-2803', '354-372-2938 x05614', 'Reprehenderit consectetur perspiciatis quam.', '1970-06-26 01:04:26', '2009-11-09 01:00:54', NULL),
(3, 4, 'Frami and Sons', 'hettinger.zita@gmail.com', '1752 Adolfo Oval Suite 212\nHesselburgh, MN 07906-4789', '580.997.1778', 'Corrupti perspiciatis eveniet nisi.', '2016-03-08 00:51:19', '1984-08-17 00:20:08', NULL),
(4, 5, 'Schneider, Champlin and Reinger', 'julianne33@huels.com', '84748 Meda Wells\nNorth Hester, WV 82563-6667', '(838) 841-2250 x91785', 'Quas iste omnis nemo architecto adipisci.', '1972-03-19 18:00:07', '1973-12-02 04:34:08', NULL),
(5, 6, 'Gislason Ltd', 'mraz.jaida@hotmail.com', '9296 Dickinson Street\nLeannville, CO 59237-9432', '+1 (467) 213-9520', 'Adipisci sint commodi.', '1992-09-18 06:53:07', '1999-04-23 23:30:01', NULL),
(6, 7, 'Gibson-Dickinson', 'heather.casper@white.biz', '418 Muller Light Apt. 294\nNew Iva, OK 92414-5725', '1-361-879-8196 x939', 'Officiis qui enim animi ut sit.', '2018-08-21 17:24:29', '1984-02-10 22:14:17', NULL),
(7, 8, 'Shields, Stehr and Hammes', 'cummerata.mohammad@effertz.com', '909 Haley Crest\nLake Coltton, TX 18302', '1-641-795-6512 x6781', 'Rem illum quibusdam earum iure.', '1979-08-31 23:47:10', '1999-01-24 16:53:08', NULL),
(8, 9, 'Boyer-Heaney', 'camilla47@yahoo.com', '41944 Nicolas Dam\nDejashire, VT 46520-8496', '(408) 737-8607 x44171', 'Assumenda vitae autem non impedit ducimus.', '1984-02-03 13:28:44', '1990-10-19 14:20:54', NULL),
(9, 10, 'Lakin Group', 'marisa26@yahoo.com', '989 Holly Rapids Apt. 511\nLoweshire, IL 45982-2546', '(889) 955-6218 x189', 'Ea et et.', '2011-09-05 08:07:45', '1999-01-28 18:23:59', NULL),
(10, 11, 'King, Rogahn and Hagenes', 'dbode@gmail.com', '25823 Sipes Trafficway Suite 089\nWest Jude, WI 03021', '+1-394-851-6247', 'Ut sequi neque et quis.', '1976-02-22 14:15:57', '1988-04-07 20:35:47', NULL),
(11, 12, 'Gutmann-Mitchell', 'ohara.louisa@balistreri.com', '683 Veum Mountain Suite 940\nMatteoton, TN 64120', '287.494.4217', 'Doloribus voluptatem veniam.', '2005-04-27 12:20:56', '1988-05-06 00:43:28', NULL),
(12, 13, 'Wilderman, Schneider and Legros', 'qfriesen@yahoo.com', '49098 Friedrich River\nWaldoberg, SC 21251-7890', '1-854-408-1244', 'Ut aliquam non sit.', '1990-12-10 21:37:34', '1997-09-25 07:36:27', NULL),
(13, 14, 'Mosciski Group', 'gmaggio@yahoo.com', '748 Ashlee Lodge\nBridieport, NV 89698-9254', '+18029261012', 'Ea mollitia quae itaque nulla.', '1978-06-13 23:54:49', '2015-01-17 03:16:48', NULL),
(14, 15, 'Mayer-O''Connell', 'nathanael48@yahoo.com', '43442 Bins Lodge\nRomagueraton, WA 90165-9876', '1-580-660-0272 x174', 'Aut deleniti voluptate alias et.', '1973-08-09 12:45:17', '2005-06-28 14:10:55', NULL),
(15, 16, 'Schmitt Inc', 'babernathy@hotmail.com', '3679 Gerlach Freeway Suite 288\nNew Isabellefort, CT 97304-8080', '824-905-2758', 'Nobis ipsam commodi.', '1977-06-20 05:50:38', '1999-02-18 00:20:26', NULL),
(16, 17, 'Considine-Steuber', 'stracke.rey@hotmail.com', '887 Harrison Knoll\nJayport, NJ 89423', '(541) 821-5149 x5952', 'Accusantium excepturi dolores totam incidunt.', '2010-04-10 02:56:27', '1983-10-17 10:08:22', NULL),
(17, 18, 'Rolfson, Leffler and Rippin', 'amir.spencer@hotmail.com', '8872 Ebba Estates\nParisianstad, OK 23829', '+1-782-781-6614', 'Corrupti adipisci vel minus asperiores.', '2012-09-12 14:57:28', '1980-08-08 21:34:56', NULL),
(18, 19, 'Howe Ltd', 'alexis.huels@yahoo.com', '527 Gibson Village\nNew Alannachester, TN 32421-8179', '(508) 496-0769', 'Illo tempora non voluptatem saepe est.', '2004-02-25 12:37:33', '1991-02-17 10:44:37', NULL),
(19, 20, 'Kertzmann LLC', 'kuhic.lucile@okuneva.com', '88119 Beier Divide\nHodkiewiczland, NM 40871', '+1-851-870-7900', 'Ab voluptatem libero laborum labore.', '1973-04-30 00:12:07', '1973-04-21 11:18:01', NULL),
(20, 21, 'Crist, Skiles and Roberts', 'nathaniel.beatty@bosco.com', '128 Yundt Valleys\nDanielaport, AR 28078-2592', '259.264.1063', 'Sed at recusandae.', '2018-10-20 02:48:31', '1999-06-06 04:15:19', NULL),
(21, 22, 'Sauer, Hand and Hill', 'eusebio.mitchell@fisher.com', '230 Lowell Islands\nLake Davionhaven, SD 21072-3575', '898.909.1448 x407', 'Distinctio dolores deleniti et eaque.', '2011-02-26 12:29:56', '2011-02-22 17:53:46', NULL),
(22, 23, 'Bayer and Sons', 'sherwood41@mohr.biz', '576 Jaskolski Street\nEast Marlinview, RI 49878-9370', '+1.489.723.2074', 'Numquam nisi similique adipisci.', '1988-09-06 18:46:09', '2002-10-19 22:03:00', NULL),
(23, 24, 'Christiansen, Champlin and Dibbert', 'nathan.lang@yahoo.com', '43133 Connelly Radial\nSelmerberg, ID 04923', '1-768-446-5354 x899', 'Nihil ut ab cumque minus.', '1972-09-11 09:15:47', '1988-05-01 20:06:24', NULL),
(24, 25, 'Harvey-Lueilwitz', 'rprosacco@hotmail.com', '7385 McDermott Shores Suite 311\nBoscomouth, IN 25700', '497-657-9113 x4401', 'Natus et sequi.', '1971-12-25 01:04:49', '1971-12-06 05:30:01', NULL),
(25, 26, 'O''Conner and Sons', 'howell.kelsie@spinka.com', '78058 Weston Passage\nEliezerside, NH 65033', '1-589-610-2902 x8237', 'In consequatur sint dolores voluptas.', '2012-01-04 10:26:48', '1974-11-13 23:33:46', NULL),
(26, 27, 'Kozey, Kilback and Bernhard', 'hannah.gerhold@keebler.com', '70162 Barney Extension\nSavionmouth, GA 42433', '808.540.6796 x14234', 'In dolores odit consequatur.', '2016-04-21 13:14:09', '1998-08-03 15:08:25', NULL),
(27, 28, 'Ruecker-Collier', 'obogisich@jones.info', '9005 Schmidt Valleys\nJessyburgh, MO 49930', '1-260-423-5579 x74075', 'Deleniti iste et vitae.', '1997-12-10 11:26:18', '1994-06-19 13:21:56', NULL),
(28, 29, 'Schroeder Inc', 'brad.denesik@hotmail.com', '13990 Kamron River\nLake Rosaborough, KS 02417-7347', '+18475737157', 'Deleniti ullam et iste officiis.', '2001-09-16 05:03:04', '1981-08-22 19:05:31', NULL),
(29, 30, 'Kling-Spencer', 'chesley01@kuphal.com', '81024 Wiza Key\nNorth Adolphland, ME 57537-2952', '441-512-4938', 'Libero cupiditate doloribus earum sunt.', '2017-04-18 04:26:03', '1977-05-30 08:30:19', NULL),
(30, 31, 'Jenkins and Sons', 'jbogisich@gmail.com', '2140 Dorothy Route Suite 293\nWest Deborahstad, MS 89692-5685', '414.472.7002', 'Esse harum exercitationem ad perferendis deleniti.', '2016-03-27 11:34:54', '1992-11-26 10:48:25', NULL),
(31, 32, 'Ondricka LLC', 'vcronin@nicolas.com', '4514 Tyrese Ports\nLake Elfrieda, MN 09911', '(709) 994-7506 x85240', 'Quod consectetur nihil ducimus.', '1993-08-31 06:35:23', '2008-09-21 01:41:06', NULL),
(32, 33, 'Ruecker, Oberbrunner and Koss', 'geraldine52@hotmail.com', '20416 Crooks Neck\nMariettahaven, SD 63229', '810-677-5306', 'Deleniti ut provident provident.', '2017-04-19 17:59:42', '2014-05-13 23:26:10', NULL),
(33, 34, 'Gleason-Kuhn', 'dconsidine@gleichner.biz', '2737 Joyce Oval Apt. 780\nLake Elyssa, WI 72893-4766', '797.492.6590', 'Delectus illum ut iste architecto.', '2010-03-21 22:01:27', '1978-04-07 04:38:07', NULL),
(34, 35, 'Lang Ltd', 'bosco.ettie@hotmail.com', '33324 Autumn Bridge Apt. 187\nDelphiaberg, OH 12364', '1-752-513-2399 x48574', 'Excepturi fuga quod repellat molestias doloremque.', '2013-06-11 17:43:02', '1994-12-30 00:33:23', NULL),
(35, 36, 'Adams-Howe', 'franecki.glennie@kling.biz', '2494 Crist Forest\nAugustview, CO 96150-9913', '1-940-499-0918', 'Totam non iusto similique cumque.', '1989-07-19 18:59:12', '2003-10-11 06:43:28', NULL),
(36, 37, 'Douglas-Boehm', 'flangosh@doyle.biz', '373 Rohan Extension\nNorth Kallie, MS 09644', '1-674-352-8993 x438', 'Eum et iste autem quibusdam.', '1989-10-09 16:06:12', '2004-03-31 12:49:12', NULL),
(37, 38, 'Herzog-Kshlerin', 'lpowlowski@wiegand.net', '5061 Hugh Drive\nNorth Joshchester, IN 48062', '(336) 400-3362 x598', 'Accusantium dolores accusantium iusto vitae.', '2011-09-05 02:12:14', '1993-09-29 15:19:41', NULL),
(38, 39, 'Labadie-Stanton', 'soledad88@hotmail.com', '2812 Tess Square Suite 471\nJulietport, OR 07068', '1-906-414-9069 x38710', 'Aliquam et qui non aut.', '1990-11-10 01:12:30', '2003-04-28 17:41:58', NULL),
(39, 40, 'Lang-Raynor', 'myrl87@prohaska.net', '689 Hermiston Glens Apt. 884\nLelaton, SC 17053', '1-953-908-5311 x143', 'Enim voluptatum non.', '1984-02-11 08:02:27', '2018-01-25 19:18:06', NULL),
(40, 41, 'Graham Inc', 'joshua75@ohara.com', '655 Paucek Avenue\nEast Jerodside, MS 20425', '+1 (416) 765-0511', 'Aut est consectetur quidem voluptatem distinctio.', '1998-04-26 05:08:16', '2005-12-19 02:36:36', NULL),
(41, 42, 'Rogahn-Corkery', 'fgreen@hotmail.com', '99744 Kirlin Stravenue\nRennershire, LA 63396', '(582) 380-0346 x5877', 'Exercitationem voluptatem provident cum.', '2003-08-27 00:39:15', '1987-04-11 04:01:37', NULL),
(42, 43, 'Orn, Romaguera and Schowalter', 'quincy.hand@gmail.com', '334 Kub Shores Apt. 847\nAndersonton, WV 39415', '273.852.4561 x0200', 'Soluta ut alias dolore.', '1994-04-30 13:33:56', '1972-09-27 15:35:31', NULL),
(43, 44, 'Frami, Vandervort and Mueller', 'beier.josiah@kertzmann.org', '3026 Schimmel Village\nNorth Jacklynland, RI 80146', '1-456-564-4151 x108', 'Dolorem omnis odit dolor maxime.', '2003-07-18 18:25:34', '2013-07-22 21:42:34', NULL),
(44, 45, 'Stark and Sons', 'nathan.cole@kerluke.biz', '923 Sporer Wells\nStammside, VA 71169-1817', '791.307.7669 x36315', 'Possimus quibusdam sunt sunt.', '2008-01-02 10:55:47', '2005-02-24 06:56:29', NULL),
(45, 46, 'Schulist PLC', 'lonny42@yahoo.com', '343 Gottlieb Parkway\nNew Elwin, HI 39295-3337', '1-589-616-8608', 'Ut et molestias odit sit.', '2013-11-29 02:59:05', '1980-12-03 16:26:16', NULL),
(46, 47, 'Rau and Sons', 'fschmidt@runolfsdottir.com', '53161 Rosamond Turnpike Apt. 229\nProsaccochester, AR 04831', '+1.545.286.9877', 'Aliquam sit velit perferendis nam corporis.', '1975-05-28 00:03:59', '2010-04-07 16:31:50', NULL),
(47, 48, 'Oberbrunner Inc', 'estelle.schaefer@hotmail.com', '76254 Murl Locks Apt. 023\nKohlerport, RI 99886-9212', '362.830.9762 x5767', 'Esse hic consequuntur id quod.', '1978-07-14 17:07:47', '1983-07-28 23:51:22', NULL),
(48, 49, 'King, Rath and Prosacco', 'frami.dominic@gmail.com', '3862 Greenfelder Vista Suite 163\nKulasport, OR 05811', '485-836-8552 x48888', 'Labore non modi.', '2000-10-15 15:06:36', '1972-02-23 12:34:49', NULL),
(49, 50, 'Gulgowski-Bogan', 'derek27@wintheiser.com', '3441 Francisca Valleys Suite 283\nMitchellchester, MD 21246-2935', '+1-787-275-8357', 'Labore modi nulla est velit.', '1994-10-07 21:22:34', '1974-04-28 10:20:53', NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_02_224520_CreateLembagaTable', 1),
(4, '2019_07_02_225047_CreateKegiatanTable', 1),
(5, '2019_07_02_225345_CreateDanaTable', 1),
(6, '2019_07_02_225752_CreateDokumentasiTable', 1),
(7, '2019_07_02_230019_CreateBarangTable', 1),
(8, '2019_07_02_230251_CreatePeminjamanTable', 1);

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
-- Table structure for table `peminjamans`
--

CREATE TABLE `peminjamans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_kegiatan` int(11) DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `tgl_pinjam` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peminjamans`
--

INSERT INTO `peminjamans` (`id`, `id_barang`, `id_user`, `id_kegiatan`, `keterangan`, `tgl_pinjam`, `tgl_kembali`, `status`, `created_at`, `updated_at`, `deletedAt`) VALUES
(1, 3, 47, 19, 'Culpa vel animi.', '1976-01-20', '1975-09-26', 'INACTIVE', '1984-11-12 02:11:51', '2003-05-27 03:08:33', NULL),
(2, 49, 17, 6, 'Velit modi sequi molestiae sed.', '1983-06-06', '2003-01-11', 'INACTIVE', '1976-07-17 05:10:25', '1979-07-18 11:35:21', NULL),
(3, 19, 44, 45, 'Beatae maiores quo.', '1988-11-10', '2005-06-13', 'ACTIVE', '2003-01-14 00:49:59', '2009-05-16 16:41:07', NULL),
(4, 11, 34, 16, 'Eaque provident sed qui soluta reprehenderit.', '2018-10-17', '1978-04-07', 'ACTIVE', '1984-11-13 09:56:30', '1982-05-12 19:22:07', NULL),
(5, 10, 36, 28, 'Sunt autem neque.', '2011-03-23', '1982-09-20', 'ACTIVE', '1997-10-28 05:50:10', '2006-05-08 01:04:34', NULL),
(6, 3, 15, 49, 'Labore sit ea rem praesentium.', '1996-10-11', '1993-07-13', 'INACTIVE', '2006-03-27 17:44:19', '1974-11-24 22:50:13', NULL),
(7, 43, 12, 15, 'Et sit delectus et ea.', '1988-06-02', '1999-03-16', 'INACTIVE', '2002-04-16 17:38:19', '2011-05-05 06:15:28', NULL),
(8, 21, 28, 44, 'Et ipsa eos sit.', '1993-03-29', '1970-03-17', 'ACTIVE', '2014-02-05 17:09:41', '1982-10-11 07:26:25', NULL),
(9, 29, 10, 20, 'Odit fuga tempora consequatur.', '2004-09-15', '2000-07-15', 'INACTIVE', '2011-07-13 06:08:56', '1987-02-12 23:48:28', NULL),
(10, 21, 35, 26, 'Qui eius consequuntur saepe natus.', '1982-06-14', '2008-05-25', 'ACTIVE', '2006-02-26 10:26:46', '1988-11-03 23:57:50', NULL),
(11, 43, 42, 50, 'Vel laboriosam recusandae.', '2009-01-25', '1979-09-30', 'INACTIVE', '2005-04-13 21:30:53', '1981-05-20 17:37:33', NULL),
(12, 30, 19, 35, 'Laborum corporis atque dolores.', '1975-05-10', '1978-05-11', 'INACTIVE', '1971-12-05 21:07:07', '2012-12-23 21:23:34', NULL),
(13, 32, 32, 23, 'Maiores iusto aperiam voluptatum quo aut.', '2003-03-01', '2012-01-04', 'INACTIVE', '1983-01-04 21:05:32', '2002-08-07 16:50:00', NULL),
(14, 13, 10, 43, 'Natus non qui at.', '1986-01-31', '2011-04-09', 'ACTIVE', '2004-08-24 19:21:11', '2006-06-24 01:56:56', NULL),
(15, 34, 4, 3, 'Qui asperiores accusantium.', '1995-04-17', '2011-09-14', 'INACTIVE', '2007-07-10 09:31:36', '1999-04-09 21:55:49', NULL),
(16, 23, 43, 27, 'Molestiae et quasi.', '1974-05-13', '1988-05-11', 'ACTIVE', '2009-06-03 16:29:16', '1992-07-22 10:42:36', NULL),
(17, 7, 46, 39, 'Eius consequatur rem alias.', '1985-09-13', '1986-09-26', 'INACTIVE', '1977-12-09 18:48:47', '1989-10-17 23:06:45', NULL),
(18, 23, 49, 30, 'Sapiente placeat assumenda dolore.', '2005-07-08', '2007-10-27', 'INACTIVE', '1971-01-23 05:06:41', '1998-05-18 00:02:16', NULL),
(19, 11, 16, 33, 'Ut consequatur voluptatum quas et qui.', '1994-01-11', '1993-09-10', 'ACTIVE', '2004-04-10 13:03:19', '1987-04-22 19:32:19', NULL),
(20, 46, 24, 23, 'Expedita earum alias tenetur quo.', '2019-05-26', '2018-02-24', 'ACTIVE', '1991-09-06 01:59:28', '1986-11-25 14:37:52', NULL),
(21, 20, 45, 5, 'Modi alias omnis quis et aut.', '2008-07-13', '1989-04-18', 'INACTIVE', '2017-03-19 02:22:54', '1989-11-19 00:58:07', NULL),
(22, 13, 6, 34, 'Quidem reiciendis et quo ex vel.', '2004-12-13', '1981-07-03', 'ACTIVE', '1976-01-19 11:27:31', '1971-09-13 18:06:21', NULL),
(23, 13, 31, 43, 'Reiciendis nulla laborum laboriosam qui.', '1976-11-12', '2002-05-02', 'ACTIVE', '1993-05-09 13:36:57', '2017-10-18 19:07:57', NULL),
(24, 25, 48, 21, 'Error soluta sequi et.', '1996-09-05', '2007-07-06', 'INACTIVE', '1980-03-10 22:01:31', '1991-02-04 12:20:47', NULL),
(25, 9, 4, 27, 'Id expedita sint laboriosam.', '2013-02-22', '1973-03-18', 'ACTIVE', '1983-02-09 01:19:13', '1981-12-02 17:10:28', NULL),
(26, 3, 18, 39, 'Molestiae excepturi aut.', '1990-06-20', '2015-08-02', 'ACTIVE', '1996-09-23 04:35:41', '1991-05-27 14:43:40', NULL),
(27, 3, 42, 1, 'Laboriosam animi corporis vero et eveniet.', '1981-10-18', '1996-02-12', 'ACTIVE', '2010-12-28 12:07:17', '2017-03-09 05:28:29', NULL),
(28, 9, 50, 8, 'Odit sint et aut voluptatem.', '2001-04-06', '2014-12-19', 'ACTIVE', '1977-02-22 00:52:11', '1976-12-13 16:16:51', NULL),
(29, 5, 14, 39, 'Sunt et dicta qui officiis.', '2014-12-06', '2001-08-30', 'ACTIVE', '1988-05-28 14:58:19', '1972-04-20 09:12:36', NULL),
(30, 28, 26, 23, 'Qui tenetur et et.', '1994-01-17', '2004-05-04', 'ACTIVE', '2013-07-07 14:02:49', '2014-08-20 11:44:30', NULL),
(31, 1, 41, 47, 'Optio inventore modi maxime.', '1995-09-24', '2013-09-07', 'INACTIVE', '1991-04-23 11:24:32', '1976-12-10 11:36:02', NULL),
(32, 27, 50, 38, 'Doloremque rerum voluptatem eaque qui impedit.', '2017-02-15', '2004-12-29', 'ACTIVE', '1985-08-25 21:15:31', '2015-08-11 22:04:35', NULL),
(33, 39, 2, 38, 'Deleniti id fugit cum.', '2017-10-19', '2019-04-28', 'INACTIVE', '2017-06-28 03:40:42', '2014-01-22 17:06:09', NULL),
(34, 37, 8, 22, 'Minus eveniet quae eveniet exercitationem.', '2010-07-02', '2006-05-02', 'INACTIVE', '1988-10-30 05:40:27', '1983-10-08 19:03:07', NULL),
(35, 50, 19, 17, 'Quia voluptas et et quo.', '1992-09-19', '2008-12-17', 'ACTIVE', '1970-08-07 08:28:26', '1990-10-11 18:45:29', NULL),
(36, 20, 5, 9, 'Quia incidunt consectetur.', '1978-08-11', '2011-12-03', 'ACTIVE', '1978-10-13 13:26:07', '1989-01-11 06:28:37', NULL),
(37, 42, 17, 1, 'Dolor ea est est voluptatum rerum.', '1998-06-27', '2015-08-15', 'ACTIVE', '1993-07-16 21:42:50', '1980-08-13 01:24:56', NULL),
(38, 16, 13, 29, 'Dolorum aut vel quas vel amet.', '1999-03-20', '1972-05-08', 'ACTIVE', '2009-09-26 16:04:48', '1979-04-11 10:52:06', NULL),
(39, 38, 3, 0, 'In maiores eaque quod.', '1977-07-25', '2004-09-08', 'INACTIVE', '1980-05-03 22:44:23', '2007-09-02 06:59:34', NULL),
(40, 15, 22, 36, 'At dignissimos deserunt explicabo deserunt vero.', '2007-05-05', '1995-01-13', 'INACTIVE', '1978-01-24 17:53:38', '1981-07-02 21:44:22', NULL),
(41, 36, 1, 12, 'Quidem autem explicabo quidem.', '1972-04-25', '1980-11-23', 'INACTIVE', '2019-03-31 07:56:50', '1994-06-09 14:55:49', NULL),
(42, 5, 44, 39, 'Sed distinctio vel deleniti.', '1971-07-10', '1998-11-19', 'ACTIVE', '2006-01-15 19:35:43', '2006-05-14 22:04:46', NULL),
(43, 3, 29, 35, 'Omnis sint neque.', '2010-11-07', '2012-05-19', 'ACTIVE', '1993-05-21 07:37:08', '1974-06-19 09:55:11', NULL),
(44, 25, 11, 13, 'Ut molestiae alias ad amet.', '1978-11-26', '2014-06-11', 'INACTIVE', '1988-01-20 02:26:47', '2008-06-17 11:17:44', NULL),
(45, 8, 5, 36, 'Temporibus facere totam ut et.', '2015-06-10', '1992-03-04', 'ACTIVE', '1970-09-09 13:46:48', '1973-05-10 22:13:34', NULL),
(46, 9, 8, 26, 'Rerum deserunt et provident odit.', '1971-01-10', '2001-02-09', 'INACTIVE', '2011-08-23 04:19:19', '2004-01-05 12:59:20', NULL),
(47, 15, 8, 28, 'Reiciendis nobis et.', '2004-08-01', '1971-06-23', 'INACTIVE', '1987-10-31 14:47:25', '2019-03-18 16:27:12', NULL),
(48, 43, 49, 33, 'Ut odio similique odit.', '1993-12-20', '1996-02-29', 'ACTIVE', '2000-07-12 22:01:25', '1994-09-21 19:03:41', NULL),
(49, 1, 3, 3, 'Quibusdam sapiente earum consequuntur distinctio.', '1995-08-11', '1986-08-26', 'INACTIVE', '1994-07-04 04:40:19', '1997-04-19 21:38:47', NULL),
(50, 25, 14, 45, 'Sint sed quasi veritatis ea facere.', '2007-01-16', '1978-07-05', 'INACTIVE', '2018-05-30 02:54:25', '1987-09-08 08:22:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `jenis_kelamin` int(11) DEFAULT NULL,
  `no_hp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `nama`, `alamat`, `jenis_kelamin`, `no_hp`, `foto`, `role`, `email_verified_at`, `deletedAt`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kincat@gmail.com', '$2y$10$eP6Xn9N7hS.4T2x1GgEj0uKYLUh1qhdMLiAh4DwOi8C3c4CBuit9W', 'kincat only', 'depok', 1, '018329123', 'user/default.png', 'ADMIN', '2019-07-02 17:02:49', NULL, NULL, '2019-07-02 17:02:49', '2019-07-02 17:02:49'),
(2, 'hgusikowski@bergstrom.biz', '$2y$10$ZjeeUCcO88laIC66n87YXuCnRi1lv2A/ovFrTPfHbjARDLYWFTfbC', 'Olen Krajcik', '287 Hoppe Knolls\nCasperport, AL 69607-3642', 1, '+1 (827) 659-3713', 'user/default.png', 'STAFF', '2015-03-20 23:16:51', NULL, NULL, '1991-04-24 21:09:40', '2003-07-27 10:06:21'),
(3, 'kyle.wisozk@bednar.com', '$2y$10$2V2ql5lXWNS2w.C8r5tcbu1SJOcIjmNruYbiW5t9NjtivTOCW/wPS', 'Madison Leffler', '840 Johns Plains\nNorth Rebekah, ID 46973', 1, '489-977-8736 x5315', 'user/default.png', 'LEMBAGA', '1979-09-06 03:11:28', NULL, NULL, '2015-03-15 23:13:57', '1997-11-11 21:38:12'),
(4, 'odell41@hotmail.com', '$2y$10$KqtHsGQxlqktv4sxftOM8OO.Q72TRCWO2ZTMsXEzs0DrBT/18u.pm', 'Billy Veum Sr.', '65418 Batz Trace\nEast Pinkie, NE 60457', 1, '(975) 899-3245', 'user/default.png', 'STAFF', '1984-08-10 14:05:05', NULL, NULL, '2002-09-21 22:10:09', '1973-09-19 21:59:21'),
(5, 'nrice@osinski.com', '$2y$10$BXGeksAcHo9RwfnXs1i74uFUw5OyRbTQfsHgoMkqCRZNnQnWc0mTe', 'Anna Bednar PhD', '9399 Ward Ridges\nSouth Arnaldo, NC 66402', 0, '+1-659-550-5609', 'user/default.png', 'STAFF', '2015-02-22 18:11:45', NULL, NULL, '1974-03-02 01:08:12', '1995-09-20 16:32:31'),
(6, 'zula11@yahoo.com', '$2y$10$bTpUgGQFHb.VnOaFhiPUauMxRUFVlYeKVKhQpCVFAwIRE8/UVs.Hm', 'Beverly Mayer', '507 Jaydon Gardens Apt. 696\nJaylinshire, RI 31376', 1, '1-787-985-4724 x95762', 'user/default.png', 'STAFF', '2000-07-26 16:00:17', NULL, NULL, '1985-08-28 23:39:05', '1975-04-01 16:02:21'),
(7, 'homenick.clementine@willms.net', '$2y$10$x9wtd6fchMT20OhSZWmfkO9PLU8xK1cSzMa.VmBfP2YHaWEzx/eH6', 'Ivory Ziemann', '687 Brakus Key\nNorth Kadefurt, WI 91456', 0, '(250) 910-0556 x0454', 'user/default.png', 'UMUM', '1978-07-05 21:15:25', NULL, NULL, '1975-01-26 07:14:33', '2001-08-30 00:18:06'),
(8, 'shanon92@collins.com', '$2y$10$/lNynAc6i18xmLS3v.UyCe7fxzyNroNd4V9c/kG2iRn/F1rprNYZS', 'Eliseo Pollich', '5455 Bridie Pike Suite 520\nWest Warrenburgh, UT 33205-5536', 0, '+1-682-513-2157', 'user/default.png', 'UMUM', '1982-05-09 23:50:11', NULL, NULL, '1972-11-26 14:56:00', '1990-07-20 04:41:29'),
(9, 'sabryna51@deckow.com', '$2y$10$zfEAYwmtK64Q3N5.BCDkEOU8TJTlhAMRIkRBiB1XF5dM848dnu6Em', 'Sonny Schneider Jr.', '947 Trantow Alley Suite 052\nNorth Vancebury, OK 45866', 0, '618.659.1143', 'user/default.png', 'LEMBAGA', '1998-03-29 05:56:40', NULL, NULL, '1982-05-21 01:32:21', '1986-04-19 03:25:16'),
(10, 'christop76@yahoo.com', '$2y$10$IVRE7ZyXWVy7MIR/ZIF6.uBXDDU.doZm9xasMhnCVuBOG8vZe4OA6', 'Jane Mann', '9855 Shaun Groves Apt. 202\nTatumview, GA 80452-9796', 0, '305-999-7382', 'user/default.png', 'ADMIN', '1976-12-06 13:35:41', NULL, NULL, '1993-04-09 18:35:34', '1976-08-04 02:59:18'),
(11, 'icollins@smitham.net', '$2y$10$4/QxuyJl3sERV8Q/OjdVROZPHrInKse7gD9TvwqIFNmCIngmN9v5u', 'Dr. Vern Jakubowski V', '898 Diego Shore\nDeontechester, IL 66674', 0, '376-302-0492 x60551', 'user/default.png', 'LEMBAGA', '2018-06-05 22:29:28', NULL, NULL, '2008-03-23 03:45:53', '2006-11-04 19:33:56'),
(12, 'bstokes@gmail.com', '$2y$10$RUPpcqXtJgec3spoRLvI5O5.ewp9epXhaxNqZU76DiPnMJjmTCaae', 'Dr. Annalise Hamill', '13454 Jason Cape\nNew Creola, WV 14444', 0, '314-761-2442 x570', 'user/default.png', 'STAFF', '1993-10-06 12:02:01', NULL, NULL, '2009-07-25 00:53:32', '1979-03-23 02:07:21'),
(13, 'dimitri52@gmail.com', '$2y$10$B5oA7x3nXhPKj8kz/kAWEukTfExMkfdrGkteVSDg6bCe40CEskkne', 'Ignatius Kunze', '2116 Reynold Greens\nJacobistad, NM 62265', 1, '947-239-3392', 'user/default.png', 'ADMIN', '2017-11-10 16:17:10', NULL, NULL, '2003-09-22 23:22:07', '1991-01-04 12:13:04'),
(14, 'clarabelle.armstrong@hotmail.com', '$2y$10$enm0vCBu/t5NtxBLrDamNeYbSYz2pk7Ga.cn.PS.E2M6V10EcsTuu', 'Roderick Hintz', '19258 Dina Estates Apt. 779\nMyrlchester, NC 13833-1304', 0, '(339) 267-9048 x5767', 'user/default.png', 'STAFF', '1973-02-15 05:47:14', NULL, NULL, '1975-08-09 19:55:23', '2000-05-21 02:55:31'),
(15, 'raufderhar@aufderhar.com', '$2y$10$/xsCchS56SpX272yBnxqQ.XIn3V1pSwHJZ9XzHTD74BtrFodsINhC', 'Camren Kuphal', '294 Kris Loop Apt. 806\nEast Lonnie, MA 89273', 0, '885.352.5703 x81307', 'user/default.png', 'UMUM', '1989-12-03 20:39:23', NULL, NULL, '1994-09-17 14:21:55', '1984-12-11 06:42:57'),
(16, 'elouise.wehner@rippin.net', '$2y$10$7eEd3FiwVl8h4w.4ipedAu1qyekJMUISU/4KQxtHIkCk5nlI45KNO', 'Josianne Prosacco', '5282 Frankie Row\nCorkeryfurt, AL 13026-3651', 1, '(346) 668-7933 x81533', 'user/default.png', 'LEMBAGA', '2011-12-03 18:03:01', NULL, NULL, '2010-09-16 00:16:08', '2016-06-10 21:24:25'),
(17, 'hertha.lang@yahoo.com', '$2y$10$.yPZGSs5GDORgLONyfKAnuymlIxOGE7PbdNKuvZ6dPfqrIPgecKzO', 'Aniyah Corkery', '785 Christiansen Squares Suite 655\nSouth Jalyn, MI 09328-7642', 0, '+14427856689', 'user/default.png', 'LEMBAGA', '1981-09-21 09:12:31', NULL, NULL, '1980-01-01 03:53:22', '2002-03-16 07:08:26'),
(18, 'abdullah.nikolaus@green.net', '$2y$10$wRaWgRmBzywPmeVjBxu4G.MjoAm5tebcqL9v1NA/I46ZxaY0IemEK', 'Prof. Dagmar Renner DDS', '4988 Winston Squares\nNorth Addie, OH 17691-9837', 1, '1-321-886-3438', 'user/default.png', 'UMUM', '2005-06-20 08:38:30', NULL, NULL, '1989-02-22 21:55:35', '1977-09-14 14:34:53'),
(19, 'rodriguez.bennett@gutmann.com', '$2y$10$JB8ad1.NF7rX7D/GSw4aoe2bWu.UQXi5h1AzRFQJeGibdklEBtRgS', 'Harmon Kertzmann', '66920 Adriana Path\nLake Judsonfort, MA 94028-0511', 1, '334.435.6676 x916', 'user/default.png', 'UMUM', '1981-05-04 17:52:17', NULL, NULL, '2013-11-23 19:36:57', '2014-07-15 11:01:10'),
(20, 'jacobi.scotty@yahoo.com', '$2y$10$zgoJZGA30D9u2CUHTjzW4OLDp7jwdz2RT7ZVObEZ6MPsL2kM9d0Bq', 'Verla Ziemann', '439 Waelchi Manors\nWest Easterhaven, RI 37285-5882', 0, '510-363-8262 x11828', 'user/default.png', 'UMUM', '1995-08-27 18:59:58', NULL, NULL, '1981-11-08 14:55:11', '1975-11-27 13:35:11'),
(21, 'wilma.lindgren@yahoo.com', '$2y$10$t.Nm5lGDorMFC5eV5gQjQuQXdjAwQB4ID.GwFTydYC28fzTDI.Ub2', 'Jamel Davis', '38345 Constantin Square\nWillmshaven, SC 44519-7497', 0, '218-795-2758 x021', 'user/default.png', 'LEMBAGA', '1980-10-11 13:30:06', NULL, NULL, '1983-07-08 21:49:37', '1981-03-04 02:04:00'),
(22, 'duncan24@yahoo.com', '$2y$10$Gx7aLpsfJ8r49gBomtgRPu9vzVDTgZdnOq85E5JShUfuOu9nwk.vK', 'Marielle Bednar', '389 Sadie Village\nVirginiaport, NV 52800', 0, '657.369.9994 x9772', 'user/default.png', 'LEMBAGA', '2003-11-23 20:12:16', NULL, NULL, '1971-12-30 22:32:00', '1977-02-02 02:55:12'),
(23, 'ruben27@shanahan.com', '$2y$10$cibCK7lHQTdEFFmdj8lEa.jGZ8zHo47pIkti3pB4PEZVhGBRso7vS', 'Mr. Erwin Conn', '90736 Jan Heights\nMossieside, RI 88512-2905', 0, '(823) 469-8598 x424', 'user/default.png', 'STAFF', '2011-10-19 07:54:35', NULL, NULL, '2017-03-17 17:00:57', '1999-04-30 13:51:00'),
(24, 'pking@hotmail.com', '$2y$10$gfLQBJvPd7dpKNqsw0g4FeiG.18A5qKXsa19Es8FQJjW9FXW9N6HW', 'Mr. Darion Wunsch DVM', '556 Syble Ways Suite 905\nBreitenbergport, NV 82084-8186', 1, '231-843-1342 x972', 'user/default.png', 'LEMBAGA', '1971-04-16 03:45:49', NULL, NULL, '1990-10-03 19:29:59', '2011-11-14 23:15:34'),
(25, 'sydney80@yahoo.com', '$2y$10$Sdf2jQpSiULpG0wbRsxGneBZSzQS0y6wDr7bHPSRWQsTX.BFW.aBa', 'Hardy Kris', '17834 Ward Corners\nNorth Enrique, PA 18752', 0, '(302) 774-9054', 'user/default.png', 'UMUM', '2004-03-15 11:42:30', NULL, NULL, '1974-09-30 22:43:59', '2013-01-06 14:54:45'),
(26, 'june.hansen@yahoo.com', '$2y$10$roxz6GVWlicmsvGviwEmYOpH/omfrboI.ECbTPbVeCgi9CewlM8yu', 'Eugene Denesik', '412 Lindgren Street\nEast Mariam, NE 87625-7309', 0, '982.246.8218', 'user/default.png', 'STAFF', '1971-03-19 04:10:47', NULL, NULL, '1976-08-04 07:25:13', '1973-10-15 23:47:00'),
(27, 'ckuvalis@yahoo.com', '$2y$10$Ga/ImcT2sh.4a2N5DwZVL.GeghIaNhVSwF7mcbOADV.rstyAGTLF6', 'Paul Funk', '835 Ismael Islands\nLake Trystan, IA 31038-1681', 0, '+1-621-713-3838', 'user/default.png', 'STAFF', '1973-08-29 15:14:04', NULL, NULL, '1986-04-01 18:30:51', '1988-08-05 03:10:55'),
(28, 'tblock@moen.com', '$2y$10$LZPeRAsUXtky.UmBJdB5F.pFEWWSd42rZSf/P4l6u3gHGazzjteBy', 'Eloisa Gusikowski', '230 Koepp Forest Apt. 748\nRiceville, LA 88166-0446', 1, '1-827-248-4390', 'user/default.png', 'ADMIN', '1990-01-28 21:15:42', NULL, NULL, '2014-08-23 22:17:05', '1980-06-25 18:51:49'),
(29, 'rbeer@corkery.com', '$2y$10$8uEFhty3FPwgNKbCNUhGbuV4aChHdJ3CrJIJIs4KJq8El0LbsRB1S', 'Neha Swaniawski', '221 Auer Port\nWest Luis, NH 57541', 1, '845.837.4969', 'user/default.png', 'ADMIN', '1996-11-13 02:37:30', NULL, NULL, '1975-08-05 02:12:44', '1990-01-04 06:15:18'),
(30, 'deckow.frederick@adams.net', '$2y$10$6z9FMopWBCvWx6pfRwnCeu7oh9RYLyvLI1TIhZyZj.5pOa1mTMTPy', 'Prof. Laron Spinka', '72709 Ryley Rue Suite 513\nNorth Tessieside, MA 02790', 0, '(620) 993-6770', 'user/default.png', 'UMUM', '2016-12-10 19:06:57', NULL, NULL, '1990-08-18 07:35:48', '1974-01-08 03:15:45'),
(31, 'maximillia68@rowe.org', '$2y$10$lLCGJjCxKfmSpOdKOMh2j.0rmRSA9SyzfAiDxStolQA5/HLpXA4jy', 'Joelle Donnelly II', '58747 Hills Estate\nWest Violet, ND 03991', 1, '+1 (429) 854-0290', 'user/default.png', 'LEMBAGA', '1996-06-16 22:22:35', NULL, NULL, '1992-02-13 06:52:39', '2010-05-17 18:00:27'),
(32, 'emmet.bahringer@harber.info', '$2y$10$jLdyN8tl4SVJzLP7.sBjJOh1UciJTJ9fd963s2pcqw/8.Hih2lKf6', 'Dr. Jacey Mante', '2123 Gilda Brooks\nKochchester, DE 76842-3098', 0, '1-998-744-3484 x67414', 'user/default.png', 'ADMIN', '1976-01-31 16:14:19', NULL, NULL, '1999-03-24 22:34:03', '2001-10-09 14:14:33'),
(33, 'boyd.thiel@gmail.com', '$2y$10$etZr7xif9KZGcPCcFdMLhOlyS.9Fpbnf8fATt0F0BI3Xr8X/wWV92', 'Ron Bradtke II', '2324 Kemmer Gardens\nNew Bohaven, MD 83420', 0, '957.925.7042 x3215', 'user/default.png', 'UMUM', '2001-06-19 03:15:06', NULL, NULL, '1974-01-06 17:00:16', '2011-01-13 02:33:54'),
(34, 'ohaag@yahoo.com', '$2y$10$IvmwXXwyNFmbbR1rE/e0f..SNoR0ftIYP7KSfMD9PMcCOng5Ry4AK', 'Joany Denesik IV', '8441 Armstrong Radial Suite 140\nBetsyburgh, GA 48787-9543', 1, '807.479.0922', 'user/default.png', 'STAFF', '2010-12-06 18:59:40', NULL, NULL, '1986-10-23 13:32:37', '1980-11-02 17:10:03'),
(35, 'weissnat.prudence@hammes.com', '$2y$10$b7MppTu.try4NhMD2KhE/OC7MIM8e8h3rwR91yNdmH9rXek7RV04e', 'Garett Murazik', '7378 Monahan Park Apt. 721\nNorth Michael, NC 80344', 1, '1-305-381-7726 x8528', 'user/default.png', 'UMUM', '2014-10-21 22:55:05', NULL, NULL, '2019-01-03 02:34:46', '2009-07-27 17:30:34'),
(36, 'ygreenholt@sawayn.info', '$2y$10$zr82yFVhVHwZxDcKks581O9JBYombCNFt5/F6Z4ceEbhNgfCze8fS', 'Rozella Ryan', '778 Walker Prairie\nEast Conor, KS 08393', 0, '670.640.4827 x543', 'user/default.png', 'STAFF', '2015-01-19 23:30:21', NULL, NULL, '1991-01-28 08:56:32', '1977-03-11 23:17:53'),
(37, 'stephany.jones@witting.com', '$2y$10$8HYmIOjL5M/kIXxbAX34F.F2/HSV4EPASfXelwa9kOyAJovqs.60W', 'Prof. Dee Considine PhD', '26434 Nolan Rapid\nNorth Keaton, UT 60544-1459', 1, '626.986.2959 x5198', 'user/default.png', 'STAFF', '2009-05-12 17:07:04', NULL, NULL, '2019-05-18 23:33:11', '1991-05-07 16:40:57'),
(38, 'keebler.zora@swift.com', '$2y$10$h/GIoZ/Tg5MIhWRD1gSQUOnaISaKgqOc.jU8qF/oIi1rHLEHmFo9K', 'Ahmed Hagenes', '810 Cassin Prairie Apt. 342\nWest Evangelineside, ID 29913-9298', 0, '1-565-200-6345 x0187', 'user/default.png', 'UMUM', '1989-05-15 15:31:34', NULL, NULL, '2011-02-28 19:40:13', '1981-09-06 20:47:09'),
(39, 'mabshire@hotmail.com', '$2y$10$bofltFQtJZjttR4hrhvrt.FK1sXqYWn/IlR2fLW7afxkWlzZ9/GVm', 'Alberto Predovic', '650 Vicenta Island Suite 378\nDachview, DE 45080-9126', 0, '1-268-444-1897 x5706', 'user/default.png', 'ADMIN', '1989-05-29 21:57:03', NULL, NULL, '1979-07-27 12:06:48', '1992-06-11 18:23:34'),
(40, 'goldner.gino@hotmail.com', '$2y$10$kV4ssLOaGgXxBGDW/bHN4Ow8JAWfy21ss9j8B4mNpdnSrIEY8wNs.', 'Rafael Marvin', '5330 Rosetta Flats Suite 060\nWest Cassandra, NM 62255-0703', 1, '1-335-446-4153', 'user/default.png', 'STAFF', '2008-08-17 06:36:30', NULL, NULL, '1996-01-08 07:11:27', '1998-02-25 17:50:24'),
(41, 'xvonrueden@gmail.com', '$2y$10$sX/cktabHxJZpzAXIZJ7UuJbp8Js8wVfk/FXnZldghSlWE.IIyV.O', 'Adelbert Gleichner I', '47716 Jennifer Tunnel\nHerminioview, AZ 37268', 1, '(906) 821-9370', 'user/default.png', 'STAFF', '1978-06-22 18:33:32', NULL, NULL, '2012-06-22 02:00:40', '2000-07-20 22:12:12'),
(42, 'ashleigh65@hotmail.com', '$2y$10$AIhSZYKcDj/B40mdg.JJw.D9xd5hW2VWxa8qC7VXFyIanXJ6Ui6IK', 'Cesar Mills', '19060 Kiehn Tunnel\nSouth Kameronmouth, OR 86166', 1, '998-867-2345 x54910', 'user/default.png', 'UMUM', '1996-02-14 06:10:29', NULL, NULL, '1993-05-08 23:36:44', '2016-12-20 15:28:27'),
(43, 'keshawn82@gmail.com', '$2y$10$mZAdOBW4jg3vHj1ntawzVuG32xbRiR9.G8ELkbOkkR8q/UEDbT5Ya', 'Dr. Bessie Ratke', '58181 Kristina Trail Suite 188\nTowneberg, MI 14051-0932', 1, '1-886-501-3880 x21687', 'user/default.png', 'UMUM', '1980-08-25 04:03:07', NULL, NULL, '2001-10-16 06:44:13', '1992-05-06 04:38:08'),
(44, 'conn.terrance@hotmail.com', '$2y$10$3enzHftze9YoK7FsYMSKJOq2EfLNH7.Tx434CR06cEzhf7IAzwBC.', 'Alek Barrows', '83365 Collins Ferry Suite 511\nSouth Gretafurt, SC 67429', 0, '1-304-649-8024 x690', 'user/default.png', 'LEMBAGA', '2019-06-22 07:44:02', NULL, NULL, '1989-05-08 13:43:25', '1987-05-10 20:36:34'),
(45, 'stanford.lebsack@daugherty.net', '$2y$10$ERfrdrUEtkYnM5QlsQWMXucwtIaocG/8lwg3lYt4lMGphyjDXI3.G', 'Lucius Kertzmann', '328 Guillermo Burgs Apt. 956\nKeeblermouth, MS 49475-8218', 1, '1-461-821-9571 x35925', 'user/default.png', 'ADMIN', '1983-05-19 14:07:22', NULL, NULL, '2014-07-29 04:31:15', '1997-10-13 12:39:11'),
(46, 'ischiller@rutherford.net', '$2y$10$z1GcVI4bnf5b6D7OxhzoAOAK/eW.SGyCWImzCk5rQydb9mfQxqXJe', 'Jailyn Cole', '564 Edgar Stream Suite 956\nBrandoberg, AR 65472', 0, '609.970.5143 x5371', 'user/default.png', 'UMUM', '1998-05-04 04:31:44', NULL, NULL, '1981-12-25 20:15:10', '1970-07-16 21:54:03'),
(47, 'ratke.emmet@cruickshank.com', '$2y$10$Yq9NHZ3aqu5RMRwMT3sxAuvNpAm3.pT0OIthMTn8kTTRnPK89e5Ue', 'Athena Blick V', '454 Littel Plain\nLake Meta, DE 14887-8376', 0, '685.864.2152 x466', 'user/default.png', 'STAFF', '1999-08-24 11:17:12', NULL, NULL, '1989-05-06 10:36:11', '1999-01-19 11:57:41'),
(48, 'estroman@cassin.com', '$2y$10$CUpvHJuyOhdXhceTk5ieReCbeqjPEGEOV4euztMe3PY7AHXADfWWC', 'Adonis Altenwerth Jr.', '191 Dach Vista Suite 752\nAbshirehaven, OR 45884-5580', 1, '1-959-916-7483 x42092', 'user/default.png', 'STAFF', '1981-10-29 18:26:43', NULL, NULL, '1983-12-13 08:44:13', '2015-06-21 11:22:49'),
(49, 'dhomenick@kshlerin.net', '$2y$10$XwRfDVMs5feuJ35PT6WMDeyidFTgV9kCIURC.wKLok7Rn6pvJYkqG', 'Marguerite Lind', '63600 Stroman Unions\nBradlyberg, WA 55429-5348', 0, '+16078323419', 'user/default.png', 'LEMBAGA', '2008-05-15 08:55:08', NULL, NULL, '1982-08-16 09:50:24', '1982-11-03 15:45:24'),
(50, 'lbechtelar@gmail.com', '$2y$10$VCzgJFvEG9Z3mlY5vl/7y.q30NdOVVENkAG.lY/EFi2SOSuexDEXq', 'Mrs. Brandyn Blanda', '60170 Gibson Meadow\nNew Garrett, CO 33414', 0, '247.723.7885 x4746', 'user/default.png', 'UMUM', '1983-12-03 20:56:36', NULL, NULL, '2000-10-25 02:02:08', '1992-09-28 18:33:42'),
(51, 'maymie.goodwin@yahoo.com', '$2y$10$r14becEhr57xWXfGq5FdO.iMGNV/76IIPJjaPlrv8Pplflj3PbHaS', 'Katelyn Williamson', '53747 Renee Crest\nKuhnmouth, DC 12109-0603', 1, '(262) 385-1237 x754', 'user/default.png', 'ADMIN', '1990-08-09 23:41:48', NULL, NULL, '1992-01-31 05:26:46', '1984-12-08 18:56:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danas`
--
ALTER TABLE `danas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokumentasis`
--
ALTER TABLE `dokumentasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatans`
--
ALTER TABLE `kegiatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lembagas`
--
ALTER TABLE `lembagas`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `peminjamans`
--
ALTER TABLE `peminjamans`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `danas`
--
ALTER TABLE `danas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `dokumentasis`
--
ALTER TABLE `dokumentasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `kegiatans`
--
ALTER TABLE `kegiatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `lembagas`
--
ALTER TABLE `lembagas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `peminjamans`
--
ALTER TABLE `peminjamans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
