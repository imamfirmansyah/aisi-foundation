-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2019 at 10:36 PM
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
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
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
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama`, `jenis_barang`, `keterangan`, `foto`, `status`, `created_at`, `updated_at`, `deletedAt`) VALUES
(1, 'sunt-1', 'vel', 'ELEKTRONIK', 'Magnam odio veniam placeat exercitationem est eum nobis expedita.', 'barang/default.png', 'TIDAK TERSEDIA', '2012-05-29 13:23:57', '2017-03-11 04:37:14', NULL),
(2, 'eaque-2', 'ipsam', 'ELEKTRONIK', 'Sit est quia officia libero omnis ut. Ea quas odit consequuntur aperiam recusandae est.', 'barang/default.png', 'TERSEDIA', '1996-07-26 15:02:31', '1980-04-23 01:05:51', NULL),
(3, 'enim-3', 'occaecati', 'RUANGAN', 'Veritatis est occaecati aliquid quia omnis quas doloribus fugit.', 'barang/default.png', 'TERSEDIA', '1986-07-12 02:23:50', '1988-11-11 03:11:41', NULL),
(4, 'omnis-4', 'minima', 'RUANGAN', 'Ut omnis repellendus voluptate aliquid. Nulla porro fuga quia doloribus expedita suscipit voluptas.', 'barang/default.png', 'TIDAK TERSEDIA', '1986-10-13 15:41:22', '1973-12-09 03:13:39', NULL),
(5, 'cumque-5', 'deserunt', 'RUANGAN', 'Reprehenderit atque ut aperiam animi vitae temporibus iure.', 'barang/default.png', 'TIDAK TERSEDIA', '1991-09-30 20:42:51', '1996-09-26 05:04:17', NULL),
(6, 'sint-6', 'blanditiis', 'RUANGAN', 'Sint dolor consequuntur suscipit molestias qui dolor aut necessitatibus.', 'barang/default.png', 'TIDAK TERSEDIA', '2017-06-24 00:58:33', '2013-02-19 12:14:59', NULL),
(7, 'dolore-7', 'id', 'ATK', 'Eum vel odit asperiores porro consequatur error optio. Et aut repellat soluta at eligendi mollitia.', 'barang/default.png', 'TIDAK TERSEDIA', '1988-01-03 05:34:45', '1978-06-15 20:43:05', NULL),
(8, 'aut-8', 'iusto', 'RUANGAN', 'Quibusdam voluptatem architecto temporibus ea.', 'barang/default.png', 'TIDAK TERSEDIA', '1996-04-13 03:39:13', '2014-07-15 21:50:29', NULL),
(9, 'commodi-9', 'ut', 'RUANGAN', 'Et expedita atque minus voluptate. Aut neque voluptate impedit quia rerum labore ex.', 'barang/default.png', 'TERSEDIA', '1985-11-19 21:56:04', '1992-04-16 08:46:22', NULL),
(10, 'hic-10', 'atque', 'ATK', 'Fugit porro iure veniam tenetur modi sunt qui quis.', 'barang/default.png', 'TIDAK TERSEDIA', '1970-03-05 00:38:51', '1994-05-08 13:11:37', NULL),
(11, 'in-11', 'eius', 'ATK', 'Non a unde sit ut et.', 'barang/default.png', 'TIDAK TERSEDIA', '2007-03-08 17:02:02', '1991-01-07 21:36:57', NULL),
(12, 'ipsam-12', 'possimus', 'ELEKTRONIK', 'Veniam aspernatur et nihil asperiores facere. Deserunt provident esse expedita est eaque optio esse.', 'barang/default.png', 'TERSEDIA', '1997-07-25 07:56:01', '1986-08-14 11:49:59', NULL),
(13, 'occaecati-13', 'consequatur', 'ELEKTRONIK', 'Et veniam voluptate et libero provident voluptates ipsam enim.', 'barang/default.png', 'TERSEDIA', '1982-01-29 23:20:44', '1981-06-11 03:50:11', NULL),
(14, 'quo-14', 'non', 'ELEKTRONIK', 'Id fugit est aut. Quis ut mollitia laboriosam pariatur doloremque officiis dolor.', 'barang/default.png', 'TERSEDIA', '1995-08-08 07:55:38', '1990-08-27 16:07:40', NULL),
(15, 'temporibus-15', 'repellendus', 'ATK', 'Voluptatem natus quis voluptatem qui. Quo vitae et minima repudiandae.', 'barang/default.png', 'TERSEDIA', '2004-03-18 03:05:56', '1995-07-15 10:50:33', NULL),
(16, 'repudiandae-16', 'dolores', 'ELEKTRONIK', 'Quia maxime et repudiandae suscipit repellat qui aliquid eos. Cupiditate amet repellendus a qui esse molestias aut.', 'barang/default.png', 'TERSEDIA', '2012-03-15 07:18:58', '1988-10-17 13:51:17', NULL),
(17, 'nihil-17', 'nisi', 'ATK', 'Quis sint voluptas aut similique occaecati animi harum. Voluptatem quae deleniti nisi fuga.', 'barang/default.png', 'TIDAK TERSEDIA', '1994-09-01 00:38:44', '1975-07-06 01:28:44', NULL),
(18, 'dolor-18', 'vitae', 'RUANGAN', 'Minus aliquam perspiciatis qui suscipit culpa ea cum quis. Deserunt quidem a unde cupiditate.', 'barang/default.png', 'TERSEDIA', '1983-03-10 03:16:57', '1973-06-16 03:49:32', NULL),
(19, 'doloremque-19', 'doloremque', 'RUANGAN', 'Et sint qui et laborum quos facilis.', 'barang/default.png', 'TIDAK TERSEDIA', '2015-09-28 12:26:27', '1997-05-31 04:00:39', NULL),
(20, 'et-20', 'exercitationem', 'ELEKTRONIK', 'Id nihil ipsum ipsum magnam eum consequuntur dolorem ipsa. Molestias libero occaecati velit sit nobis perferendis est.', 'barang/default.png', 'TIDAK TERSEDIA', '1996-05-19 18:49:51', '2006-08-16 03:10:11', NULL),
(21, 'omnis-21', 'quas', 'ATK', 'Ex quis molestiae reprehenderit omnis non nesciunt eaque vel. Reprehenderit quidem saepe odit cum.', 'barang/default.png', 'TERSEDIA', '2011-01-23 20:25:44', '2018-10-20 07:57:47', NULL),
(22, 'molestiae-22', 'at', 'RUANGAN', 'Nobis eius dicta perferendis et sit beatae.', 'barang/default.png', 'TERSEDIA', '2010-07-25 22:12:40', '2003-07-10 10:38:37', NULL),
(23, 'soluta-23', 'error', 'ELEKTRONIK', 'Sint doloremque repellendus et. Numquam ratione tenetur et quia quos aperiam adipisci.', 'barang/default.png', 'TIDAK TERSEDIA', '1976-08-28 03:43:15', '2000-10-21 06:42:39', NULL),
(24, 'est-24', 'temporibus', 'ATK', 'Earum quidem omnis sit corporis voluptatem dolore.', 'barang/default.png', 'TERSEDIA', '2017-10-17 03:31:37', '1983-12-31 00:14:01', NULL),
(25, 'labore-25', 'et', 'ELEKTRONIK', 'Temporibus nisi inventore incidunt aut. Reprehenderit sunt et quis voluptatum molestiae sapiente fugiat saepe.', 'barang/default.png', 'TIDAK TERSEDIA', '1977-08-10 05:20:32', '1990-06-14 17:44:04', NULL),
(26, 'doloremque-26', 'quis', 'RUANGAN', 'Molestiae omnis omnis ea quae non corrupti.', 'barang/default.png', 'TERSEDIA', '1973-09-01 06:07:08', '1990-10-24 22:46:29', NULL),
(27, 'impedit-27', 'porro', 'ELEKTRONIK', 'Consequuntur blanditiis omnis repudiandae nobis.', 'barang/default.png', 'TERSEDIA', '1986-10-14 07:03:25', '2014-01-25 08:03:57', NULL),
(28, 'ex-28', 'ex', 'RUANGAN', 'Voluptates velit quo praesentium nihil quod.', 'barang/default.png', 'TIDAK TERSEDIA', '1988-10-26 15:14:27', '1971-02-10 01:33:37', NULL),
(29, 'fugit-29', 'fuga', 'ATK', 'At ea sit debitis nostrum est.', 'barang/default.png', 'TIDAK TERSEDIA', '1971-11-01 09:48:29', '1982-12-12 06:25:45', NULL),
(30, 'non-30', 'voluptas', 'ELEKTRONIK', 'Harum repellendus eius pariatur est veritatis. Ea est recusandae molestias ut placeat.', 'barang/default.png', 'TERSEDIA', '1985-10-18 14:06:43', '2010-07-04 07:25:28', NULL),
(31, 'et-31', 'porro', 'ATK', 'Illo autem voluptatem enim ex. Quia minima voluptas ducimus nihil saepe ipsum.', 'barang/default.png', 'TIDAK TERSEDIA', '1984-01-13 09:56:11', '1973-05-06 05:35:20', NULL),
(32, 'illo-32', 'sit', 'RUANGAN', 'Itaque necessitatibus cum corporis quia iusto sint beatae.', 'barang/default.png', 'TERSEDIA', '2002-11-04 23:19:47', '1996-05-24 03:25:20', NULL),
(33, 'aperiam-33', 'quasi', 'RUANGAN', 'Voluptatem et aperiam et nemo id reprehenderit molestiae.', 'barang/default.png', 'TERSEDIA', '1972-11-05 23:01:51', '1995-06-24 04:55:23', NULL),
(34, 'vitae-34', 'animi', 'ELEKTRONIK', 'Dolores tenetur ut aliquam possimus. Asperiores assumenda velit culpa.', 'barang/default.png', 'TERSEDIA', '1975-04-08 11:46:59', '1995-07-14 07:25:11', NULL),
(35, 'eos-35', 'ab', 'ATK', 'Dolorum enim quam aspernatur et molestiae sunt.', 'barang/default.png', 'TIDAK TERSEDIA', '2005-09-12 16:23:17', '2003-11-12 06:23:02', NULL),
(36, 'illum-36', 'doloribus', 'RUANGAN', 'Laudantium quidem tenetur quia nihil excepturi et.', 'barang/default.png', 'TIDAK TERSEDIA', '1992-08-07 06:18:07', '2010-08-25 09:32:54', NULL),
(37, 'et-37', 'consequuntur', 'ELEKTRONIK', 'In eligendi aut velit aut sit rem. Vitae et illum dolore vitae maiores.', 'barang/default.png', 'TIDAK TERSEDIA', '1970-06-19 10:45:58', '2010-01-09 18:31:12', NULL),
(38, 'occaecati-38', 'laborum', 'ELEKTRONIK', 'Vel ipsum rerum quo reprehenderit quaerat.', 'barang/default.png', 'TIDAK TERSEDIA', '1979-01-23 07:18:12', '1993-01-12 15:13:34', NULL),
(39, 'quia-39', 'commodi', 'ELEKTRONIK', 'Est voluptatem sed fugiat enim.', 'barang/default.png', 'TIDAK TERSEDIA', '1993-11-29 12:42:58', '1978-10-24 21:31:42', NULL),
(40, 'ad-40', 'earum', 'ELEKTRONIK', 'Sed vitae culpa blanditiis libero qui dolorum commodi.', 'barang/default.png', 'TIDAK TERSEDIA', '1981-05-23 03:27:31', '1995-01-30 15:18:07', NULL),
(41, 'architecto-41', 'ex', 'RUANGAN', 'Qui aut ea ut omnis. Et voluptas corporis assumenda sint molestiae.', 'barang/default.png', 'TIDAK TERSEDIA', '1971-01-05 20:35:28', '2018-03-18 09:35:32', NULL),
(42, 'molestiae-42', 'a', 'RUANGAN', 'Libero sed deserunt voluptatem alias tenetur. Sed culpa velit vel et commodi.', 'barang/default.png', 'TIDAK TERSEDIA', '2014-08-22 02:18:17', '2018-04-19 18:34:14', NULL),
(43, 'pariatur-43', 'sequi', 'ATK', 'Reprehenderit laborum perferendis dicta necessitatibus.', 'barang/default.png', 'TERSEDIA', '1991-05-29 09:37:32', '1997-05-16 23:52:31', NULL),
(44, 'culpa-44', 'consequatur', 'ELEKTRONIK', 'A et et et ut asperiores ea.', 'barang/default.png', 'TIDAK TERSEDIA', '1980-01-15 08:01:37', '2005-06-06 10:15:10', NULL),
(45, 'iusto-45', 'illo', 'ATK', 'Minima doloribus perferendis nesciunt consequatur porro.', 'barang/default.png', 'TERSEDIA', '2012-02-29 22:28:43', '2017-12-13 08:28:37', NULL),
(46, 'tempora-46', 'accusamus', 'RUANGAN', 'Saepe aut quo vero necessitatibus.', 'barang/default.png', 'TIDAK TERSEDIA', '1973-02-19 09:30:07', '2009-01-06 06:58:22', NULL),
(47, 'at-47', 'tenetur', 'ELEKTRONIK', 'Dolor at aut ex magni unde alias.', 'barang/default.png', 'TERSEDIA', '1971-12-19 23:15:56', '2012-09-09 03:25:20', NULL),
(48, 'et-48', 'voluptatibus', 'ELEKTRONIK', 'Dignissimos sed est fuga aut mollitia eum. Voluptatem sint cum neque inventore placeat qui autem velit.', 'barang/default.png', 'TERSEDIA', '2009-03-10 04:22:53', '2015-01-01 00:58:28', NULL),
(49, 'quibusdam-49', 'perferendis', 'RUANGAN', 'Tempora qui dicta delectus quas quia sed tempore.', 'barang/default.png', 'TIDAK TERSEDIA', '1970-06-01 11:02:00', '1975-01-05 03:45:33', NULL),
(50, 'sint-50', 'vero', 'ATK', 'Consequatur saepe perferendis animi corrupti. Dolor cumque animi nihil aliquid facere perspiciatis est.', 'barang/default.png', 'TERSEDIA', '2015-01-13 00:36:54', '1972-02-04 17:51:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dana`
--

CREATE TABLE `dana` (
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
-- Dumping data for table `dana`
--

INSERT INTO `dana` (`id`, `id_kegiatan`, `jumlah_pengajuan`, `jumlah_pencairan`, `keterangan`, `tgl_pengajuan`, `tgl_pencairan`, `status`, `created_at`, `updated_at`, `deletedAt`) VALUES
(1, 35, '27507640', '9833906', 'Rerum voluptate.', '2006-12-01', '1994-11-19', 'DISETUJUI', '1985-07-16 21:52:11', '2019-05-17 23:28:39', NULL),
(2, 28, '88334546', '2306123', 'Quo eum.', '1971-11-13', '2011-06-28', 'DISETUJUI', '2017-05-24 03:09:01', '1984-09-27 04:03:18', NULL),
(3, 3, '42635883', '5308499', 'Id deleniti.', '2002-07-17', '2000-10-19', 'DITOLAK', '1972-07-03 21:53:54', '2015-09-17 21:57:32', NULL),
(4, 8, '34044070', '35677545', 'Incidunt consectetur et.', '1998-02-15', '2017-08-23', 'PROSES', '1993-02-24 07:37:18', '1978-03-21 00:32:15', NULL),
(5, 22, '63357729', '2443924', 'Repudiandae odit.', '2016-11-22', '2011-07-27', 'DISETUJUI', '1991-09-29 00:28:53', '1979-08-24 06:59:34', NULL),
(6, 46, '22336763', '31914961', 'Dolorem est.', '1982-03-08', '1999-08-05', 'DITOLAK', '2016-10-22 15:25:36', '1973-12-23 01:19:24', NULL),
(7, 22, '80868390', '55866403', 'Quibusdam omnis quo.', '2017-05-21', '1986-03-13', 'DISETUJUI', '1977-04-14 16:21:05', '1986-07-28 20:06:14', NULL),
(8, 48, '48542021', '54551951', 'Aut voluptate.', '2003-11-05', '1982-11-02', 'DITOLAK', '2002-11-06 09:21:35', '2008-01-11 00:36:00', NULL),
(9, 8, '18037819', '90699276', 'Voluptas sed.', '1997-11-19', '1984-10-12', 'PROSES', '2009-10-29 04:52:02', '1985-07-24 19:18:51', NULL),
(10, 50, '7921286', '73370938', 'Veritatis vel pariatur.', '1980-12-29', '1971-10-24', 'DISETUJUI', '2010-10-29 05:25:20', '1993-10-27 03:52:15', NULL),
(11, 48, '24873895', '75817755', 'Sit id suscipit.', '1974-12-09', '2005-06-16', 'DISETUJUI', '1973-11-26 03:16:31', '1976-09-09 18:18:51', NULL),
(12, 13, '62721083', '22700059', 'Et exercitationem.', '2014-11-30', '1994-08-07', 'DITOLAK', '1993-05-28 17:58:43', '1976-08-16 22:36:06', NULL),
(13, 2, '37893105', '31271798', 'Cumque aut et.', '1989-02-13', '1998-08-27', 'PROSES', '2009-03-31 11:29:20', '2004-11-20 17:31:51', NULL),
(14, 33, '12454998', '18822972', 'Veritatis laboriosam.', '1972-01-18', '1997-09-17', 'PROSES', '1997-01-16 22:19:44', '1990-04-30 07:10:44', NULL),
(15, 20, '49254324', '24294904', 'Non occaecati.', '1970-05-17', '1976-02-07', 'PROSES', '2000-06-22 06:13:23', '1976-09-19 12:32:19', NULL),
(16, 41, '32047965', '7074995', 'Voluptatem dolorum.', '1984-01-24', '2016-10-26', 'DITOLAK', '1995-04-08 19:46:50', '1977-02-24 14:57:07', NULL),
(17, 13, '91591917', '92319065', 'Maiores et.', '1970-11-19', '1987-12-17', 'DITOLAK', '2006-04-02 01:34:55', '1982-06-05 00:12:22', NULL),
(18, 10, '93178236', '10303600', 'Et blanditiis.', '1991-02-21', '1979-08-25', 'PROSES', '2003-08-29 21:34:37', '1986-06-28 15:51:12', NULL),
(19, 15, '50654580', '99168103', 'Voluptatem dolorem deleniti.', '1979-11-07', '1990-01-01', 'DISETUJUI', '1997-12-16 08:03:43', '1974-02-12 14:51:14', NULL),
(20, 25, '77098919', '1466700', 'Labore eius.', '1985-07-04', '2019-04-12', 'DISETUJUI', '2014-05-26 23:18:00', '1973-08-26 16:34:37', NULL),
(21, 43, '79500285', '9138779', 'Illum voluptatibus.', '1990-12-29', '1985-03-11', 'DITOLAK', '1989-11-07 07:03:17', '2005-09-19 12:33:16', NULL),
(22, 10, '82248915', '44261841', 'Et rerum.', '1974-06-05', '2001-07-28', 'DITOLAK', '1987-02-21 20:14:26', '1984-05-08 21:11:25', NULL),
(23, 42, '22034491', '75047204', 'Officia hic.', '2007-05-22', '1975-12-29', 'DISETUJUI', '1985-11-10 09:39:12', '2011-02-24 05:45:53', NULL),
(24, 44, '43925669', '78527061', 'Voluptatibus ut.', '1975-05-05', '2001-08-25', 'DITOLAK', '2011-12-05 17:38:17', '1990-10-13 02:06:54', NULL),
(25, 30, '39579240', '91661481', 'Dolorem ut temporibus.', '2007-05-14', '1978-09-14', 'DITOLAK', '1980-11-06 04:31:52', '1972-06-01 15:15:47', NULL),
(26, 47, '2884353', '11324062', 'Unde cumque.', '1999-04-29', '1995-07-10', 'PROSES', '2007-03-06 21:01:32', '1995-01-26 02:07:11', NULL),
(27, 22, '37260892', '54070970', 'Ea assumenda.', '2000-04-05', '1997-12-01', 'DITOLAK', '1992-09-24 18:02:42', '1995-03-01 04:58:31', NULL),
(28, 33, '51479927', '30152967', 'A quis maiores.', '1973-01-06', '1977-03-29', 'DISETUJUI', '1972-11-28 15:22:47', '2005-08-23 23:01:52', NULL),
(29, 39, '90283998', '94034474', 'Facere est.', '1973-12-21', '1970-04-06', 'PROSES', '1982-08-01 15:10:47', '1978-11-20 21:02:51', NULL),
(30, 4, '42680052', '64184370', 'Eos ratione ut.', '2015-07-30', '2006-06-11', 'DITOLAK', '1983-01-21 05:53:58', '1979-10-30 14:27:24', NULL),
(31, 40, '93894246', '19181767', 'Ex aut.', '1987-10-24', '2004-05-17', 'DISETUJUI', '1970-11-25 18:57:41', '1974-12-03 11:43:22', NULL),
(32, 46, '65592966', '4453201', 'Neque tenetur.', '2000-03-06', '2013-11-29', 'DISETUJUI', '1997-02-19 22:47:55', '1984-02-24 05:53:33', NULL),
(33, 6, '47766946', '67874471', 'Et nihil.', '2002-10-12', '1987-08-18', 'DISETUJUI', '1994-05-18 08:03:53', '1980-08-17 16:18:01', NULL),
(34, 30, '29341505', '4659281', 'Rerum molestias.', '2009-05-05', '1975-07-05', 'DISETUJUI', '1998-02-28 00:17:38', '1995-05-02 20:20:14', NULL),
(35, 8, '85772809', '46886955', 'Magnam ab.', '1987-01-22', '1990-06-09', 'PROSES', '2001-02-22 14:11:01', '1995-04-17 05:32:23', NULL),
(36, 28, '7798288', '12531510', 'Ab alias fugiat.', '1988-12-19', '1989-07-26', 'PROSES', '1986-08-18 13:53:57', '1971-03-30 16:05:52', NULL),
(37, 17, '98202367', '56533831', 'Aspernatur assumenda explicabo.', '2016-12-14', '2007-05-11', 'PROSES', '1982-03-07 13:11:26', '1994-05-05 13:15:20', NULL),
(38, 30, '62765392', '40416249', 'Perferendis perferendis.', '1998-01-08', '1999-02-19', 'DITOLAK', '1994-06-23 20:05:24', '2007-03-20 00:49:53', NULL),
(39, 22, '25372934', '26882255', 'Pariatur sit.', '1991-08-07', '1979-05-06', 'DISETUJUI', '1987-09-13 09:56:58', '1970-03-04 13:13:40', NULL),
(40, 50, '9349743', '73002229', 'Et tempore.', '2013-06-02', '1981-02-27', 'DISETUJUI', '2013-06-06 11:58:02', '1985-12-31 22:56:14', NULL),
(41, 41, '82888202', '33573874', 'Laudantium tempora qui.', '2017-11-11', '2017-02-22', 'DISETUJUI', '2007-07-30 22:50:04', '1987-10-30 06:33:55', NULL),
(42, 43, '81606209', '10365616', 'Quam et.', '1987-07-12', '2014-04-12', 'DISETUJUI', '1979-09-28 13:39:08', '1984-10-02 14:12:26', NULL),
(43, 41, '15944285', '10978777', 'Possimus et.', '1986-08-21', '2013-03-29', 'DISETUJUI', '2005-04-25 15:59:15', '2005-05-30 00:31:48', NULL),
(44, 48, '65764368', '99986872', 'Ut veritatis id.', '1997-09-17', '2017-11-08', 'DISETUJUI', '1985-11-08 18:02:53', '2002-05-04 05:37:10', NULL),
(45, 32, '92841316', '56981259', 'Mollitia eligendi.', '2010-10-15', '1993-08-26', 'PROSES', '2004-09-15 14:23:39', '2005-10-30 04:40:29', NULL),
(46, 30, '3657167', '81123048', 'Est repellendus repellat.', '1996-05-30', '1981-08-07', 'DITOLAK', '2004-10-31 14:37:36', '2012-06-25 01:20:30', NULL),
(47, 19, '18984245', '25468215', 'Sint aut aut.', '1975-04-25', '2016-01-12', 'DITOLAK', '1992-08-29 01:16:50', '2011-06-07 00:34:17', NULL),
(48, 44, '43846097', '3089237', 'Sed at rerum.', '1976-05-21', '2014-04-09', 'DISETUJUI', '1996-04-09 05:49:30', '2008-06-14 17:19:51', NULL),
(49, 8, '48597404', '40213888', 'Facere sint.', '1985-08-27', '2009-08-24', 'PROSES', '2006-09-27 06:19:21', '2016-10-21 16:48:37', NULL),
(50, 41, '97877613', '76541837', 'Voluptatem nihil accusantium.', '1983-07-10', '1992-03-23', 'DITOLAK', '2014-08-10 13:50:58', '2015-09-16 13:45:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dokumentasi`
--

CREATE TABLE `dokumentasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kegiatan` int(11) DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `file` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dokumentasi`
--

INSERT INTO `dokumentasi` (`id`, `id_kegiatan`, `keterangan`, `file`, `created_at`, `updated_at`, `deletedAt`) VALUES
(1, 26, 'Deleniti officia aut omnis.', 'dokumentasi/default.png', '1971-05-13 04:31:58', '1982-02-02 20:28:25', NULL),
(2, 26, 'Ut excepturi ut quas asperiores.', 'dokumentasi/default.png', '2005-06-06 21:39:49', '1986-11-02 03:08:55', NULL),
(3, 5, 'Animi sit accusantium magni.', 'dokumentasi/default.png', '1972-01-22 18:33:18', '2012-09-24 15:32:13', NULL),
(4, 9, 'Adipisci et officiis.', 'dokumentasi/default.png', '1972-11-13 13:56:54', '1975-02-22 02:54:58', NULL),
(5, 2, 'Molestiae mollitia assumenda quod.', 'dokumentasi/default.png', '1995-12-20 16:05:38', '1977-07-29 11:44:24', NULL),
(6, 16, 'Quae odio atque odit qui.', 'dokumentasi/default.png', '2004-04-02 07:34:53', '2012-04-21 21:37:51', NULL),
(7, 42, 'Dolores praesentium et autem.', 'dokumentasi/default.png', '2015-03-16 12:08:26', '2005-08-28 13:31:36', NULL),
(8, 1, 'Sequi quia eum quasi impedit impedit.', 'dokumentasi/default.png', '2009-01-19 16:43:36', '2007-09-28 13:49:08', NULL),
(9, 34, 'Iure nihil ab suscipit iure molestias.', 'dokumentasi/default.png', '1998-07-19 07:14:57', '1970-03-23 07:57:53', NULL),
(10, 24, 'Quasi illo harum sed.', 'dokumentasi/default.png', '1974-12-11 02:39:00', '2001-08-28 17:45:23', NULL),
(11, 39, 'Et vel saepe nesciunt.', 'dokumentasi/default.png', '2008-06-15 11:17:08', '2014-03-04 19:31:16', NULL),
(12, 19, 'Consectetur quia porro perferendis.', 'dokumentasi/default.png', '2011-05-02 13:05:28', '1994-08-19 13:57:30', NULL),
(13, 20, 'Et eius nihil fuga voluptas et.', 'dokumentasi/default.png', '2014-03-27 22:30:30', '1986-02-13 09:16:24', NULL),
(14, 11, 'Accusantium libero velit voluptatem labore.', 'dokumentasi/default.png', '1998-11-03 00:23:41', '2003-05-23 07:11:52', NULL),
(15, 43, 'Qui quo maiores et placeat.', 'dokumentasi/default.png', '2014-02-05 22:13:36', '1985-11-06 19:03:24', NULL),
(16, 40, 'Aut sed quis et.', 'dokumentasi/default.png', '2019-02-21 03:20:22', '2002-01-29 03:56:37', NULL),
(17, 49, 'Earum magni corporis culpa atque.', 'dokumentasi/default.png', '2018-08-30 00:02:46', '2007-02-28 05:39:43', NULL),
(18, 26, 'Unde quia eos.', 'dokumentasi/default.png', '1979-01-07 05:20:29', '2001-02-15 14:30:46', NULL),
(19, 30, 'Officiis accusamus adipisci harum delectus.', 'dokumentasi/default.png', '1986-07-12 02:05:26', '2004-06-11 17:58:20', NULL),
(20, 1, 'Exercitationem alias harum qui.', 'dokumentasi/default.png', '1970-09-08 08:20:50', '2012-05-28 01:51:58', NULL),
(21, 6, 'Blanditiis officiis officiis ut voluptatem dolores.', 'dokumentasi/default.png', '2003-02-16 19:08:42', '1990-10-20 03:04:28', NULL),
(22, 19, 'Assumenda natus nemo voluptas enim rem.', 'dokumentasi/default.png', '2008-04-23 15:27:12', '1980-07-21 12:03:31', NULL),
(23, 17, 'Optio non vel enim reiciendis.', 'dokumentasi/default.png', '1993-08-07 11:30:46', '1974-04-18 02:58:37', NULL),
(24, 7, 'Odit possimus et.', 'dokumentasi/default.png', '2008-05-31 13:50:03', '1992-10-18 20:39:26', NULL),
(25, 28, 'Amet inventore velit id aliquid.', 'dokumentasi/default.png', '2019-03-07 16:28:17', '2015-11-08 03:15:13', NULL),
(26, 20, 'Officiis eveniet et quibusdam vel.', 'dokumentasi/default.png', '1995-11-22 12:06:32', '2000-09-09 11:48:32', NULL),
(27, 11, 'Dolore consequatur dolorem sunt eos et.', 'dokumentasi/default.png', '2004-06-12 07:40:29', '1971-04-23 23:59:46', NULL),
(28, 23, 'Dolores est nam laudantium.', 'dokumentasi/default.png', '2013-04-24 16:22:59', '1998-07-12 04:09:48', NULL),
(29, 35, 'Vel magnam ab qui fugiat nihil.', 'dokumentasi/default.png', '1976-10-24 10:38:11', '2013-09-17 02:18:43', NULL),
(30, 31, 'Qui molestias id animi voluptas impedit.', 'dokumentasi/default.png', '1972-12-14 22:41:18', '2015-04-15 12:05:38', NULL),
(31, 35, 'Nam necessitatibus quia praesentium saepe et.', 'dokumentasi/default.png', '1974-07-04 14:53:21', '1979-10-15 06:28:03', NULL),
(32, 41, 'Et corrupti ea sint.', 'dokumentasi/default.png', '1977-02-02 16:42:33', '1982-10-04 04:11:32', NULL),
(33, 22, 'Perspiciatis eos earum.', 'dokumentasi/default.png', '2000-07-07 19:11:58', '2013-12-06 19:18:04', NULL),
(34, 46, 'Iste quo dignissimos eos quasi deserunt.', 'dokumentasi/default.png', '1992-02-01 08:02:19', '1970-10-28 21:02:07', NULL),
(35, 25, 'Quia provident in.', 'dokumentasi/default.png', '1974-01-25 14:33:25', '1995-08-21 08:06:57', NULL),
(36, 16, 'Nam est nihil quasi consectetur.', 'dokumentasi/default.png', '2012-01-10 08:55:41', '1974-09-02 04:12:11', NULL),
(37, 41, 'Et optio aspernatur praesentium illum impedit.', 'dokumentasi/default.png', '1985-02-28 04:39:29', '2017-03-15 22:42:45', NULL),
(38, 27, 'Recusandae iusto iure suscipit aut.', 'dokumentasi/default.png', '1990-09-19 05:35:17', '1983-08-13 06:32:45', NULL),
(39, 27, 'Aut architecto consectetur et.', 'dokumentasi/default.png', '2013-02-22 00:53:19', '1976-06-30 12:09:40', NULL),
(40, 48, 'Expedita inventore aut minus.', 'dokumentasi/default.png', '1970-10-12 12:25:05', '1990-04-05 00:02:59', NULL),
(41, 41, 'Nihil quaerat nihil et et.', 'dokumentasi/default.png', '2002-03-01 00:29:44', '1971-04-15 18:01:10', NULL),
(42, 45, 'Ad sunt molestiae dolores aut.', 'dokumentasi/default.png', '1986-01-15 10:48:13', '1978-03-17 13:28:55', NULL),
(43, 16, 'Possimus facere et voluptatem dolorem beatae.', 'dokumentasi/default.png', '2011-02-02 09:18:17', '1974-11-24 20:34:30', NULL),
(44, 3, 'Qui suscipit dolorem ad laudantium et.', 'dokumentasi/default.png', '1986-12-08 03:18:37', '1970-11-14 14:38:51', NULL),
(45, 2, 'Ea est provident voluptatibus perspiciatis dolores.', 'dokumentasi/default.png', '2017-09-09 15:45:45', '1981-06-27 01:22:22', NULL),
(46, 36, 'Expedita et cumque voluptas quam.', 'dokumentasi/default.png', '1972-12-23 15:11:46', '1996-12-09 04:35:43', NULL),
(47, 9, 'Et accusamus porro quibusdam pariatur ullam.', 'dokumentasi/default.png', '1988-06-01 22:02:08', '1970-12-12 04:46:31', NULL),
(48, 48, 'Quisquam voluptatibus nobis qui et.', 'dokumentasi/default.png', '1978-04-24 08:23:22', '1989-06-05 21:03:37', NULL),
(49, 15, 'Aut repudiandae labore fugit quisquam vel.', 'dokumentasi/default.png', '1971-07-15 01:16:10', '1977-05-18 02:30:46', NULL),
(50, 8, 'Quae distinctio pariatur.', 'dokumentasi/default.png', '1995-03-19 07:51:11', '1994-09-01 06:21:38', NULL),
(51, 50, 'Enim et quidem aut.', 'dokumentasi/default.png', '1981-01-26 02:09:10', '1989-09-11 12:49:34', NULL),
(52, 42, 'Deserunt eligendi voluptatem voluptas.', 'dokumentasi/default.png', '1988-12-16 13:48:48', '1990-12-15 20:57:34', NULL),
(53, 6, 'Sunt culpa vel tempora similique.', 'dokumentasi/default.png', '1998-09-07 04:13:42', '1995-03-31 09:41:27', NULL),
(54, 33, 'Impedit corrupti nesciunt at eos tenetur.', 'dokumentasi/default.png', '2000-05-05 03:45:42', '1973-12-13 02:28:05', NULL),
(55, 33, 'Dolor ut cumque omnis omnis dolores.', 'dokumentasi/default.png', '1978-07-04 22:13:20', '2004-08-18 19:02:44', NULL),
(56, 28, 'Sit aut vitae.', 'dokumentasi/default.png', '1998-07-27 11:18:30', '2008-10-08 18:52:05', NULL),
(57, 31, 'Blanditiis omnis nihil aspernatur deleniti.', 'dokumentasi/default.png', '2015-10-05 05:26:39', '2015-09-21 02:10:44', NULL),
(58, 13, 'Nobis in voluptatem molestias ut officia.', 'dokumentasi/default.png', '1992-08-07 23:59:07', '2005-12-25 09:12:49', NULL),
(59, 26, 'Eum in repellendus earum.', 'dokumentasi/default.png', '1985-11-12 08:41:21', '1976-12-29 18:20:24', NULL),
(60, 32, 'Reprehenderit numquam corporis repellendus.', 'dokumentasi/default.png', '2010-02-13 12:44:50', '2009-05-02 18:08:35', NULL),
(61, 3, 'Quia perspiciatis rerum aut.', 'dokumentasi/default.png', '1985-08-01 16:20:39', '1976-02-15 04:03:14', NULL),
(62, 48, 'Accusantium quia dolore id aut.', 'dokumentasi/default.png', '1987-06-23 18:50:06', '1991-02-11 04:37:38', NULL),
(63, 33, 'Quod similique commodi sunt necessitatibus.', 'dokumentasi/default.png', '1981-08-17 12:27:16', '2006-01-22 04:43:38', NULL),
(64, 9, 'Ut corporis quos eum.', 'dokumentasi/default.png', '1970-12-12 02:28:38', '1993-10-19 08:25:04', NULL),
(65, 47, 'Alias molestiae non.', 'dokumentasi/default.png', '2011-11-12 05:00:46', '1976-03-16 11:28:11', NULL),
(66, 44, 'Eaque qui labore.', 'dokumentasi/default.png', '1989-11-13 05:51:53', '2011-06-12 09:42:00', NULL),
(67, 1, 'Tenetur quo consequatur sequi nam qui.', 'dokumentasi/default.png', '1982-09-26 05:33:21', '2015-03-23 10:16:19', NULL),
(68, 1, 'Fugit est maiores.', 'dokumentasi/default.png', '2004-01-31 11:19:29', '1982-05-01 22:57:39', NULL),
(69, 31, 'A repellat vero consequatur.', 'dokumentasi/default.png', '1991-04-01 19:11:47', '1977-12-19 18:00:02', NULL),
(70, 17, 'Sequi unde possimus temporibus et.', 'dokumentasi/default.png', '2002-08-26 01:00:17', '1991-09-30 14:37:24', NULL),
(71, 12, 'Voluptatem aut culpa inventore.', 'dokumentasi/default.png', '1983-06-27 11:40:35', '2007-07-23 09:13:08', NULL),
(72, 27, 'Illo et iure ut consequatur autem.', 'dokumentasi/default.png', '2009-02-28 06:35:58', '2018-04-15 22:09:19', NULL),
(73, 17, 'Est consequatur error repellendus autem.', 'dokumentasi/default.png', '1975-03-02 04:44:30', '1983-10-16 05:35:58', NULL),
(74, 20, 'Veritatis sint iusto sed deserunt.', 'dokumentasi/default.png', '1984-11-12 20:30:15', '1990-12-08 00:11:46', NULL),
(75, 40, 'Rerum eius provident quisquam.', 'dokumentasi/default.png', '2012-04-26 01:02:55', '1999-07-28 03:02:59', NULL),
(76, 33, 'Sint hic atque similique illum.', 'dokumentasi/default.png', '2008-04-24 10:35:05', '2006-09-14 02:26:30', NULL),
(77, 5, 'Omnis sunt architecto quo sit perferendis.', 'dokumentasi/default.png', '1994-11-05 23:40:57', '2006-02-13 11:33:22', NULL),
(78, 21, 'Qui et dolores sed rem.', 'dokumentasi/default.png', '1987-04-20 03:00:17', '1982-11-16 12:40:48', NULL),
(79, 10, 'Quam odio quis sunt.', 'dokumentasi/default.png', '2011-07-19 04:52:07', '1975-08-30 12:23:35', NULL),
(80, 1, 'Deserunt quia dolores perspiciatis eaque.', 'dokumentasi/default.png', '2002-03-06 14:06:22', '2003-05-15 00:38:29', NULL),
(81, 27, 'Unde nulla ut quis quia dolor.', 'dokumentasi/default.png', '1993-06-12 10:32:06', '1975-10-05 14:34:46', NULL),
(82, 2, 'At velit illo vero.', 'dokumentasi/default.png', '2017-01-13 17:42:00', '2008-04-25 06:50:38', NULL),
(83, 22, 'Soluta aliquam et aut maxime dolores.', 'dokumentasi/default.png', '1999-10-26 14:41:50', '2009-06-07 02:00:05', NULL),
(84, 7, 'Expedita cum corrupti.', 'dokumentasi/default.png', '2000-08-31 16:35:14', '2004-03-26 16:48:42', NULL),
(85, 33, 'Illo molestiae et minus.', 'dokumentasi/default.png', '2004-04-29 09:45:24', '1995-04-14 06:13:58', NULL),
(86, 11, 'Nobis corporis dicta dolores nisi.', 'dokumentasi/default.png', '2003-11-20 17:16:57', '1972-04-08 01:16:37', NULL),
(87, 25, 'Veniam reiciendis doloribus officia id.', 'dokumentasi/default.png', '1997-03-03 16:38:06', '1978-06-20 06:02:29', NULL),
(88, 31, 'Molestiae error itaque sit dolorem.', 'dokumentasi/default.png', '1970-04-18 08:50:38', '2008-12-22 22:22:57', NULL),
(89, 41, 'Odit et qui.', 'dokumentasi/default.png', '1972-05-07 19:30:30', '1973-05-16 12:34:55', NULL),
(90, 9, 'Consectetur ratione tempora amet.', 'dokumentasi/default.png', '1981-05-12 06:17:05', '1995-10-17 04:58:17', NULL),
(91, 30, 'Tempore repellendus commodi inventore ut.', 'dokumentasi/default.png', '1980-06-27 03:24:52', '1990-10-01 15:00:23', NULL),
(92, 14, 'Magnam error voluptatem quas quam ut.', 'dokumentasi/default.png', '1983-09-16 05:27:07', '2009-03-28 05:31:20', NULL),
(93, 45, 'Ipsam sequi ullam aliquid reprehenderit vero.', 'dokumentasi/default.png', '1994-02-01 21:19:52', '2004-01-12 03:13:58', NULL),
(94, 39, 'Et qui voluptates.', 'dokumentasi/default.png', '1992-04-07 13:19:38', '1995-01-23 11:25:46', NULL),
(95, 42, 'Nulla facere incidunt doloribus magni necessitatibus.', 'dokumentasi/default.png', '1993-08-25 10:00:16', '1982-04-08 04:09:33', NULL),
(96, 23, 'Dolorum consequatur sit ipsum voluptas et.', 'dokumentasi/default.png', '1984-05-01 15:05:10', '1990-01-16 19:16:36', NULL),
(97, 42, 'Odio sed et deleniti voluptate.', 'dokumentasi/default.png', '2007-11-22 02:58:37', '1986-02-22 14:08:58', NULL),
(98, 11, 'Qui fuga expedita.', 'dokumentasi/default.png', '1997-08-17 02:08:18', '1982-08-01 17:09:52', NULL),
(99, 22, 'Autem velit aut quaerat dolorem.', 'dokumentasi/default.png', '1983-07-04 16:58:58', '1970-06-29 04:19:11', NULL),
(100, 11, 'Magnam sit culpa qui nemo.', 'dokumentasi/default.png', '1970-06-15 21:50:34', '1977-02-16 02:20:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
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
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id`, `id_lembaga`, `judul`, `deskripsi`, `proposal_kegiatan`, `tgl_kegiatan`, `status`, `created_at`, `updated_at`, `deletedAt`) VALUES
(1, 31, 'Suscipit voluptatem.', 'Reprehenderit ipsa autem provident.', 'kegiatan/test.doc', '1998-12-29', 'PENGAJUAN', '1988-07-19 12:39:25', '1999-04-25 11:01:47', NULL),
(2, 41, 'Repellat eos.', 'Labore sed voluptas sed reiciendis accusantium.', 'kegiatan/test.doc', '2018-11-11', 'DITOLAK', '2005-11-02 05:06:24', '1979-03-13 11:16:54', NULL),
(3, 30, 'Sed expedita.', 'In explicabo neque quod.', 'kegiatan/test.doc', '2008-12-01', 'DITOLAK', '1999-04-26 15:03:20', '2006-06-18 21:38:55', NULL),
(4, 16, 'Labore.', 'Ab expedita fugiat ullam nam.', 'kegiatan/test.doc', '1971-07-05', 'PENGAJUAN', '1988-12-25 01:46:36', '1973-05-06 13:50:51', NULL),
(5, 43, 'Aliquid at.', 'Sed optio in rem consequuntur aut.', 'kegiatan/test.doc', '2003-12-17', 'PENGAJUAN', '1970-07-24 03:19:07', '2005-05-26 20:38:23', NULL),
(6, 29, 'Molestiae.', 'Earum sunt ullam officia fugit exercitationem enim.', 'kegiatan/test.doc', '2019-05-18', 'DITOLAK', '2009-12-07 16:26:10', '2007-01-18 05:33:31', NULL),
(7, 27, 'Omnis.', 'Ab ipsam fugit eos nesciunt blanditiis id.', 'kegiatan/test.doc', '2007-11-11', 'PENGAJUAN', '1998-07-16 09:42:03', '1984-01-06 15:28:23', NULL),
(8, 5, 'Iure soluta.', 'Architecto qui qui quaerat.', 'kegiatan/test.doc', '1982-02-21', 'DITOLAK', '1994-07-31 02:32:12', '1999-11-04 01:35:16', NULL),
(9, 47, 'Quas.', 'Est facere nisi fugiat non sapiente.', 'kegiatan/test.doc', '2009-01-07', 'PENGAJUAN', '1976-02-08 13:51:22', '1995-11-26 15:43:11', NULL),
(10, 16, 'Odit non.', 'Sed deleniti vero rem atque provident ut.', 'kegiatan/test.doc', '1992-08-10', 'PENGAJUAN', '1971-04-23 08:01:33', '1974-12-26 01:21:59', NULL),
(11, 3, 'Rerum.', 'Dolores est quidem fugiat.', 'kegiatan/test.doc', '1978-10-02', 'DITOLAK', '1998-08-23 06:36:58', '2004-11-24 17:10:37', NULL),
(12, 38, 'Omnis.', 'Quasi eos voluptates quibusdam voluptatum.', 'kegiatan/test.doc', '1980-04-24', 'DITOLAK', '1996-05-20 00:56:13', '2011-06-24 10:15:05', NULL),
(13, 44, 'Sint.', 'Dolores dolorem impedit alias.', 'kegiatan/test.doc', '1988-03-19', 'DITOLAK', '2018-01-12 05:34:11', '2015-09-17 01:57:08', NULL),
(14, 14, 'Qui ipsa.', 'Natus enim velit voluptas molestiae unde voluptatem.', 'kegiatan/test.doc', '1999-12-08', 'PENGAJUAN', '1991-03-12 09:22:26', '1971-01-13 13:12:49', NULL),
(15, 28, 'Adipisci.', 'Nisi dolores dolorem accusamus corrupti.', 'kegiatan/test.doc', '1970-03-31', 'DITERIMA', '1984-05-14 17:26:23', '1987-04-05 06:48:38', NULL),
(16, 46, 'Ut libero.', 'Aut est harum quisquam et libero eligendi.', 'kegiatan/test.doc', '1998-05-15', 'PENGAJUAN', '2002-01-27 18:53:19', '1992-03-14 13:02:34', NULL),
(17, 12, 'Sequi excepturi.', 'Possimus consequatur aspernatur suscipit voluptatem voluptate ut.', 'kegiatan/test.doc', '1988-06-21', 'DITOLAK', '1984-05-01 11:38:53', '1992-03-02 15:21:34', NULL),
(18, 42, 'Culpa.', 'Autem est et consectetur qui est.', 'kegiatan/test.doc', '1997-04-30', 'PENGAJUAN', '2002-06-14 00:48:36', '1997-06-04 10:31:32', NULL),
(19, 4, 'Nesciunt velit.', 'Aut dicta occaecati dignissimos debitis illo.', 'kegiatan/test.doc', '1972-02-06', 'DITERIMA', '1982-05-29 02:38:10', '2019-03-08 19:54:42', NULL),
(20, 22, 'In vero.', 'Deleniti sunt temporibus similique.', 'kegiatan/test.doc', '2017-01-21', 'PENGAJUAN', '2009-06-13 05:46:30', '1972-12-02 19:31:31', NULL),
(21, 48, 'Ea reprehenderit.', 'Tempora doloribus maxime ipsam quaerat ex.', 'kegiatan/test.doc', '2000-11-26', 'DITOLAK', '1970-12-12 14:58:09', '1985-05-26 23:16:33', NULL),
(22, 50, 'Asperiores molestias.', 'Rem qui dolores minus laborum enim dicta.', 'kegiatan/test.doc', '2005-11-04', 'PENGAJUAN', '2019-02-09 06:15:05', '1986-07-30 01:45:31', NULL),
(23, 39, 'Ut.', 'Ducimus earum autem necessitatibus.', 'kegiatan/test.doc', '1975-01-19', 'PENGAJUAN', '1977-01-16 22:23:05', '2003-04-15 22:11:05', NULL),
(24, 43, 'Exercitationem.', 'Ex voluptas fuga quas.', 'kegiatan/test.doc', '1983-09-14', 'DITOLAK', '1988-08-29 11:16:33', '2002-06-01 00:38:45', NULL),
(25, 38, 'Qui.', 'Adipisci eos sint quidem.', 'kegiatan/test.doc', '2004-11-26', 'DITERIMA', '2016-10-15 04:47:21', '1974-10-19 01:41:51', NULL),
(26, 15, 'Vel.', 'Molestiae quis cumque magnam in.', 'kegiatan/test.doc', '1972-01-31', 'PENGAJUAN', '2002-04-13 21:00:12', '1985-12-09 10:23:35', NULL),
(27, 31, 'Voluptatem.', 'Omnis quos voluptates omnis.', 'kegiatan/test.doc', '1981-08-20', 'DITOLAK', '1989-07-16 00:31:31', '1971-11-06 04:38:45', NULL),
(28, 6, 'Dolor.', 'Culpa possimus aut iure sed.', 'kegiatan/test.doc', '2001-01-01', 'DITOLAK', '2003-04-12 01:48:21', '1984-12-11 01:16:27', NULL),
(29, 26, 'Ducimus qui.', 'Rem quia aspernatur fuga.', 'kegiatan/test.doc', '1998-02-06', 'DITOLAK', '1994-02-19 09:26:57', '2006-11-01 13:35:09', NULL),
(30, 39, 'Quia dolorem.', 'Incidunt id quia minima.', 'kegiatan/test.doc', '1975-09-05', 'DITERIMA', '1974-02-07 15:46:48', '1995-12-05 21:11:15', NULL),
(31, 42, 'Exercitationem.', 'Qui temporibus praesentium qui quidem incidunt laudantium.', 'kegiatan/test.doc', '2003-06-02', 'DITERIMA', '2008-03-28 00:44:28', '1981-08-28 06:45:51', NULL),
(32, 40, 'Ipsam doloremque.', 'Voluptatem ex illum et.', 'kegiatan/test.doc', '2013-09-09', 'DITERIMA', '1983-08-17 18:06:08', '1971-01-07 17:09:28', NULL),
(33, 7, 'Veritatis quia.', 'Eius debitis dolor laborum praesentium.', 'kegiatan/test.doc', '1998-06-12', 'PENGAJUAN', '2015-06-07 09:53:43', '1993-01-01 13:51:35', NULL),
(34, 35, 'Iste.', 'Est voluptate similique aspernatur necessitatibus.', 'kegiatan/test.doc', '2002-07-19', 'DITOLAK', '1998-10-10 12:59:01', '2008-10-11 07:59:29', NULL),
(35, 30, 'Enim aut.', 'Rerum sit expedita unde voluptates.', 'kegiatan/test.doc', '2004-05-31', 'PENGAJUAN', '1987-12-11 11:47:56', '1973-11-14 02:42:44', NULL),
(36, 40, 'Itaque.', 'Assumenda eveniet temporibus aut et.', 'kegiatan/test.doc', '2014-05-07', 'DITOLAK', '1997-06-12 03:04:07', '1979-05-25 02:19:09', NULL),
(37, 48, 'Officia quod.', 'Minima non assumenda ea aliquid omnis.', 'kegiatan/test.doc', '1979-08-23', 'DITERIMA', '2004-12-17 00:01:34', '1990-04-19 04:39:01', NULL),
(38, 41, 'Quasi omnis.', 'Delectus aut possimus aut libero impedit.', 'kegiatan/test.doc', '1975-04-26', 'DITERIMA', '1983-07-16 05:41:27', '1981-09-22 18:35:34', NULL),
(39, 13, 'Rerum sed.', 'Eveniet possimus qui et vel voluptas.', 'kegiatan/test.doc', '2006-04-02', 'DITOLAK', '2009-01-01 07:40:21', '1972-09-10 01:25:08', NULL),
(40, 20, 'Nobis.', 'Omnis ut ex sequi necessitatibus.', 'kegiatan/test.doc', '1999-10-20', 'PENGAJUAN', '1997-03-05 01:37:54', '1982-05-16 01:57:53', NULL),
(41, 4, 'Qui eos.', 'Ducimus quis ut cupiditate.', 'kegiatan/test.doc', '1971-11-25', 'DITERIMA', '2017-10-25 17:58:02', '2018-10-22 01:01:25', NULL),
(42, 33, 'Ipsa provident.', 'Quas labore voluptatibus rem est.', 'kegiatan/test.doc', '1999-09-18', 'DITERIMA', '2008-11-26 21:52:05', '1997-01-03 10:10:58', NULL),
(43, 35, 'A.', 'Earum eum sunt porro qui.', 'kegiatan/test.doc', '1976-07-27', 'PENGAJUAN', '2006-08-08 17:59:07', '1986-01-26 12:20:03', NULL),
(44, 5, 'Molestiae.', 'Alias quos blanditiis id natus deserunt.', 'kegiatan/test.doc', '1977-12-14', 'PENGAJUAN', '1970-09-13 12:23:05', '2012-04-02 22:02:21', NULL),
(45, 11, 'Et.', 'Harum vitae vitae ut blanditiis et aut.', 'kegiatan/test.doc', '2011-01-21', 'DITERIMA', '1980-09-28 09:03:55', '1994-04-09 10:00:50', NULL),
(46, 9, 'Suscipit.', 'Voluptatum recusandae eum dolorem sint atque tempore.', 'kegiatan/test.doc', '2011-04-05', 'DITOLAK', '1999-10-26 07:44:57', '1988-04-08 22:55:45', NULL),
(47, 12, 'Voluptatem consectetur.', 'Provident rerum deleniti qui saepe tenetur.', 'kegiatan/test.doc', '2010-03-26', 'DITOLAK', '1987-08-04 15:38:12', '2008-01-19 20:32:26', NULL),
(48, 26, 'Ipsa et.', 'Quia odit sit voluptates quis et autem.', 'kegiatan/test.doc', '1986-08-26', 'DITERIMA', '1972-03-09 21:36:28', '1988-07-20 07:04:05', NULL),
(49, 49, 'Nisi.', 'Consequatur qui quisquam eaque.', 'kegiatan/test.doc', '1992-07-27', 'DITERIMA', '1990-02-01 02:22:24', '2019-02-17 08:21:19', NULL),
(50, 11, 'Et placeat.', 'In et eius voluptas ad consequatur.', 'kegiatan/test.doc', '2013-04-01', 'DITOLAK', '1972-05-28 16:47:04', '1981-09-20 09:07:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lembaga`
--

CREATE TABLE `lembaga` (
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
-- Dumping data for table `lembaga`
--

INSERT INTO `lembaga` (`id`, `id_user`, `nama`, `email`, `alamat`, `no_hp`, `keterangan`, `created_at`, `updated_at`, `deletedAt`) VALUES
(1, 2, 'Rempel, Greenfelder and Labadie', 'bferry@white.com', '5858 Lucy Cape\nDestineybury, FL 41298-6640', '+1.231.255.2052', 'Aut consectetur commodi eum.', '1975-02-04 13:23:26', '1970-05-28 15:34:36', NULL),
(2, 3, 'Runte Inc', 'gonzalo.flatley@jacobi.info', '677 Judah Terrace Suite 985\nSouth Isai, NV 33394-6679', '574.204.1420', 'Placeat consequatur cupiditate ducimus.', '1984-08-14 05:49:59', '2010-11-21 09:04:53', NULL),
(3, 4, 'Hilpert, Spinka and Ruecker', 'cruickshank.uriel@feeney.biz', '97293 Norwood Hill\nWymanland, FL 00460-8985', '1-482-629-2012 x28272', 'Sed laborum quia quasi sed dolorem.', '2009-02-25 16:54:05', '1977-09-27 02:03:51', NULL),
(4, 5, 'Wuckert-Nader', 'maureen.lindgren@klein.info', '756 Ziemann Shore Suite 473\nNelliemouth, NH 38283', '897-553-9068 x165', 'Magnam unde voluptatibus.', '1993-11-17 01:33:30', '1990-02-09 09:08:41', NULL),
(5, 6, 'Blick-Auer', 'ruecker.lenore@gmail.com', '71503 Arianna Passage\nJerrodmouth, ID 86526', '(258) 481-8530', 'Reiciendis dolores ducimus ut praesentium.', '2007-08-27 11:37:02', '2002-12-26 14:20:37', NULL),
(6, 7, 'Moore Inc', 'felton41@gmail.com', '6315 Lubowitz Forges Apt. 082\nLake Zettaport, LA 33111-1899', '891.551.2433 x45751', 'Minima similique similique magnam nostrum impedit.', '1982-04-15 09:07:41', '1983-06-04 08:51:08', NULL),
(7, 8, 'Klein, Breitenberg and Reichert', 'barrows.loren@yahoo.com', '428 Kovacek Turnpike\nAftonside, WV 23564', '(994) 377-7589', 'Tempore nobis quidem cumque.', '2016-10-20 17:31:19', '2018-02-15 00:00:31', NULL),
(8, 9, 'Grady-Strosin', 'florine.hagenes@gmail.com', '72167 McCullough Trail Suite 169\nHomenickchester, VT 79717', '507.693.1043 x3260', 'Ad rerum repellat voluptas vero.', '2007-02-25 05:18:49', '1970-07-14 22:09:04', NULL),
(9, 10, 'Parisian, Hyatt and Flatley', 'parker.kody@yahoo.com', '195 Keith Gateway Apt. 661\nKonopelskihaven, GA 14735-1669', '203.890.2266 x8051', 'Voluptas aperiam ut nesciunt ipsam.', '1974-12-10 02:13:08', '1997-04-26 03:16:30', NULL),
(10, 11, 'Fay-Kohler', 'dach.nikita@gmail.com', '3578 Schulist Ranch\nEast Derick, DC 34981', '746-709-9036 x612', 'Repudiandae officia voluptate magni.', '2011-11-21 07:47:11', '1996-05-23 18:17:53', NULL),
(11, 12, 'Wolff, Labadie and Rosenbaum', 'herminio.emmerich@hotmail.com', '874 Willis Harbors\nPeggiemouth, DE 90480', '757-936-7768 x575', 'Nihil debitis sit unde.', '2013-09-12 05:21:43', '1984-04-28 12:24:08', NULL),
(12, 13, 'Gislason LLC', 'schuppe.blaise@jenkins.biz', '1493 Tyshawn Hollow\nLake Coralie, IN 66488', '402-241-3307 x468', 'Eveniet deleniti cupiditate facere autem.', '1983-02-11 20:07:02', '1994-10-04 14:39:26', NULL),
(13, 14, 'Erdman-Nicolas', 'alesch@gmail.com', '167 Turner Court\nSouth Davonbury, FL 35927', '674.619.9227', 'Voluptas est sed ipsam quo.', '2010-07-27 06:05:09', '2014-10-11 22:17:24', NULL),
(14, 15, 'Feest-Nolan', 'rory.skiles@hotmail.com', '52963 Carmela Stream\nTessport, WA 68387-3922', '1-338-705-9488', 'Itaque ducimus veritatis culpa iure.', '2017-10-28 12:23:56', '2001-05-06 12:42:20', NULL),
(15, 16, 'Heathcote-Beahan', 'donald96@hoeger.com', '30735 Grant Loop Apt. 901\nPort Ernestinefort, GA 13214', '370-245-4014 x4051', 'Rem et molestiae porro et.', '2018-08-14 06:56:11', '2001-07-06 20:48:56', NULL),
(16, 17, 'Stanton, Kovacek and Olson', 'marlon.becker@hilpert.com', '29152 Daugherty Drive Suite 383\nLornaland, ME 30595', '1-363-421-5168 x07008', 'Ducimus aut tempore ea consectetur.', '2006-02-17 15:17:59', '2004-12-15 04:51:34', NULL),
(17, 18, 'Rau Group', 'luettgen.elroy@beier.org', '31402 Chaim Crest\nDoyleberg, AK 24012', '+1 (204) 477-0428', 'Sint ut porro similique quia omnis.', '1994-05-22 23:54:07', '1985-06-02 18:06:23', NULL),
(18, 19, 'Ortiz-Krajcik', 'reichel.emelia@cummings.org', '455 Orie Stream Apt. 420\nLehnerton, NM 98043-3284', '1-449-702-0171 x06486', 'Quia laudantium voluptatibus.', '1987-01-03 18:47:54', '1980-10-19 17:14:45', NULL),
(19, 20, 'Kassulke PLC', 'khoppe@schmeler.com', '827 Malcolm Orchard\nKaiaview, IA 05106-4453', '524-871-0646', 'Est rerum tempore culpa adipisci.', '2005-04-23 12:22:29', '2005-07-02 22:30:06', NULL),
(20, 21, 'Gutkowski-Kiehn', 'brakus.nigel@hotmail.com', '1708 Perry Shores\nBatzport, MI 44715-0332', '360.786.2408', 'Error dolor ut accusantium rerum.', '2012-11-12 13:02:50', '2015-11-01 07:10:31', NULL),
(21, 22, 'Balistreri and Sons', 'otho90@hotmail.com', '682 King Village\nLake Ashtonmouth, AL 39388-4672', '249-273-7692 x3521', 'Voluptas et dolor quasi.', '1998-11-04 03:40:51', '1987-01-14 01:42:20', NULL),
(22, 23, 'Lindgren Group', 'trantow.jayden@gmail.com', '3727 Dangelo Run Apt. 364\nEast Dulce, MN 07032', '864-803-3824', 'Voluptas iure eveniet autem.', '2005-10-19 01:12:46', '1980-06-15 12:10:19', NULL),
(23, 24, 'Vandervort Inc', 'kertzmann.madaline@quitzon.info', '624 Vicenta Harbors Suite 203\nLake Avaside, TN 07324-7076', '+1.407.531.6372', 'Enim et omnis totam odit.', '1999-10-05 06:16:47', '1989-05-10 15:03:29', NULL),
(24, 25, 'Armstrong-Brown', 'kovacek.berneice@harber.com', '10571 Heathcote Forest\nEast Alvenashire, KS 67806', '329-524-0048', 'Nisi est sed et qui.', '1992-05-29 23:43:51', '1970-02-08 06:10:06', NULL),
(25, 26, 'Hirthe-Hessel', 'remington.abernathy@yahoo.com', '67325 Francisca Common\nNorth Ariellemouth, WI 55900-8840', '363-989-2019 x07816', 'Non eos autem voluptatem mollitia beatae.', '1992-07-01 22:17:02', '2019-05-18 12:42:05', NULL),
(26, 27, 'Bechtelar-O''Conner', 'helga16@gmail.com', '1367 Gulgowski Lodge\nPort Kailynville, UT 68175', '483.947.7454 x9956', 'Saepe dignissimos quisquam fugiat amet omnis.', '1982-06-05 10:56:00', '2001-10-18 09:41:58', NULL),
(27, 28, 'Donnelly-Spencer', 'sthompson@grady.info', '803 Marcus Valley Apt. 589\nBayerland, KY 05007-9906', '1-545-942-2091', 'Odit ut suscipit consectetur.', '2016-09-19 09:35:33', '2016-03-17 14:41:48', NULL),
(28, 29, 'Ebert Inc', 'dratke@friesen.com', '8126 Reva Ford\nWest Lawson, MD 35588-1471', '465-706-1091 x9201', 'Ipsa sunt consequatur ut.', '2002-04-14 00:14:28', '2018-05-17 15:32:00', NULL),
(29, 30, 'Dooley, Keeling and Halvorson', 'betty47@hotmail.com', '797 Celine Center\nLake Meaganborough, TN 58827-9394', '1-495-720-6956 x146', 'Dolorem magni exercitationem libero suscipit.', '1994-07-19 01:44:27', '1981-07-19 03:21:50', NULL),
(30, 31, 'Windler, Rice and Keeling', 'barrows.immanuel@funk.info', '6705 Armstrong Fall Apt. 829\nNew Michealhaven, CO 72545', '808.254.9839 x73276', 'Porro minus facilis fugit.', '2007-02-08 15:21:15', '2010-05-20 16:28:29', NULL),
(31, 32, 'Stamm-Wolff', 'robyn.oberbrunner@wintheiser.info', '1150 Kassulke Manor Apt. 325\nStromanbury, VA 56594-5649', '(913) 462-6450', 'Nesciunt dicta esse.', '1979-03-24 00:24:32', '1988-03-07 17:58:47', NULL),
(32, 33, 'Hudson, Nolan and O''Hara', 'dion89@rogahn.com', '699 Grimes Canyon\nEast Dudley, UT 21703', '(584) 619-6625 x815', 'Consectetur sapiente suscipit est excepturi sapiente.', '2014-05-13 12:33:19', '1997-01-08 19:22:27', NULL),
(33, 34, 'Hill-Langworth', 'ihand@johnson.org', '285 Kemmer Viaduct Apt. 523\nHicklefort, WA 23764-2961', '(624) 309-5569 x18048', 'Earum laboriosam repellendus.', '2003-08-18 02:54:54', '1981-11-09 09:04:24', NULL),
(34, 35, 'Hackett PLC', 'hester.nikolaus@yahoo.com', '689 Reynolds Rest\nNorth Elwyn, MD 59232', '+1.390.761.2524', 'Aspernatur sit cupiditate qui veniam similique.', '1980-01-19 13:39:22', '2019-04-22 19:28:32', NULL),
(35, 36, 'Hagenes-Wyman', 'gottlieb.deanna@gmail.com', '293 Cronin Oval Apt. 148\nWest Elainaburgh, UT 94357', '887-566-3933 x969', 'Nulla itaque ut sed quae.', '1972-04-15 23:07:28', '1997-11-30 18:20:04', NULL),
(36, 37, 'Aufderhar, Schamberger and Swift', 'america.schumm@yahoo.com', '8641 Dannie Mission\nNew Hellen, OK 77523-2408', '+1-831-941-1819', 'Quia aut optio rerum blanditiis nam.', '1976-05-22 20:12:03', '2006-01-10 21:20:10', NULL),
(37, 38, 'Schneider, Grimes and Schuster', 'hand.philip@grimes.net', '44165 Kieran Ports Apt. 511\nBlazeburgh, ND 54668', '809-852-7522', 'Repellendus voluptates omnis.', '1985-09-08 14:07:05', '1970-05-20 15:40:23', NULL),
(38, 39, 'Macejkovic-Parisian', 'droob@hotmail.com', '4027 Runte Court Suite 177\nZiemannbury, SD 06864', '659-774-0622', 'Ea qui quis distinctio aperiam.', '1999-02-18 13:27:08', '1993-09-16 04:17:07', NULL),
(39, 40, 'Kunze, Streich and Kshlerin', 'shields.ferne@gmail.com', '399 Zboncak Rest\nNorth Leonard, NH 69436', '(603) 563-4882 x23891', 'Qui ea blanditiis nobis.', '2017-11-19 16:04:26', '2017-06-20 05:06:19', NULL),
(40, 41, 'Boyer, Hoppe and Watsica', 'brenna.streich@lynch.com', '6274 Kevon Roads\nWest Wanda, NM 96788-1411', '856.786.5971 x3431', 'Eos iusto culpa minus.', '1986-12-30 16:23:39', '1973-09-24 13:47:50', NULL),
(41, 42, 'Grimes Ltd', 'vwintheiser@kovacek.com', '59114 Maurine Pines\nBoehmville, NY 06048', '+13163778435', 'Non nostrum molestiae qui.', '2000-01-23 07:03:04', '1972-06-05 07:31:20', NULL),
(42, 43, 'Mraz, Price and Daugherty', 'june91@lakin.com', '421 Mary Mall Suite 856\nAngelinefurt, MD 49615', '+1.665.230.3121', 'Ipsa quia eos non.', '1972-03-02 22:16:11', '2015-10-31 15:20:21', NULL),
(43, 44, 'Strosin, Gerhold and McCullough', 'rory57@bahringer.com', '8621 Lenora Shores\nNaomifort, IL 94000-1409', '303-555-9137', 'Consequuntur necessitatibus veniam.', '2002-03-22 05:36:22', '2003-07-29 07:16:53', NULL),
(44, 45, 'Glover Inc', 'ethelyn54@gmail.com', '66155 Kessler Mall Apt. 691\nNorth Fred, GA 11900', '(657) 273-5633', 'Est adipisci provident.', '1992-11-19 05:19:21', '1982-09-10 18:16:33', NULL),
(45, 46, 'Witting Group', 'emelie.friesen@gmail.com', '6305 Dewayne Flats\nRunolfssonside, KY 17020', '1-825-866-6022 x71820', 'Perspiciatis dolor aspernatur ut.', '1970-06-01 11:22:36', '2014-08-10 22:34:35', NULL),
(46, 47, 'Wintheiser Group', 'ruthe.romaguera@denesik.org', '98648 Purdy Trail\nKuphalville, WA 21235-8781', '625.378.3114 x9644', 'Dolor vel perferendis dolores consequuntur.', '1997-04-21 18:47:11', '1981-06-08 02:54:47', NULL),
(47, 48, 'Abernathy, Runolfsson and Heaney', 'treutel.shanie@hotmail.com', '644 Arely Well\nBeerside, MI 54489-0790', '1-504-922-7518 x4179', 'Maiores ut est similique sint aut.', '1971-02-12 03:29:04', '1974-07-26 09:59:03', NULL),
(48, 49, 'Williamson-Ernser', 'madilyn91@hamill.org', '253 Walsh Fields Apt. 020\nEast Orlo, WA 86234', '945.200.5809', 'Placeat voluptas laboriosam est itaque.', '1999-10-06 20:58:03', '2010-06-02 19:05:07', NULL),
(49, 50, 'Skiles-Kshlerin', 'leslie.kunde@schultz.com', '2606 Casper Lodge Suite 441\nMarksview, NM 87875', '(545) 734-3572 x546', 'Et quia dolorum.', '1986-04-23 08:44:54', '2009-05-25 06:22:18', NULL);

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
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
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
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `id_barang`, `id_user`, `id_kegiatan`, `keterangan`, `tgl_pinjam`, `tgl_kembali`, `status`, `created_at`, `updated_at`, `deletedAt`) VALUES
(1, 6, 16, 22, 'Totam accusamus omnis.', '1971-09-17', '1970-01-22', 'DIPINJAM', '2018-06-14 05:20:31', '1970-10-24 14:01:12', NULL),
(2, 9, 39, 36, 'Dolores est sunt rerum laudantium temporibus.', '2012-01-18', '1974-05-30', 'DIPINJAM', '2012-10-11 08:46:45', '1972-05-18 13:32:19', NULL),
(3, 25, 37, 43, 'Voluptas totam veniam numquam.', '2005-07-30', '2010-06-01', 'DIKEMBALIKAN', '1970-11-25 01:19:05', '1978-12-04 04:21:44', NULL),
(4, 47, 30, 16, 'Quod adipisci expedita illum nisi vitae.', '2017-02-16', '2004-04-14', 'DIPINJAM', '2006-01-18 14:08:32', '1992-04-25 08:51:46', NULL),
(5, 45, 13, 47, 'Excepturi quia est non.', '1998-02-06', '1972-02-02', 'DIKEMBALIKAN', '1976-06-27 11:26:17', '1989-10-19 16:12:03', NULL),
(6, 40, 38, 15, 'Alias maiores illum perspiciatis ullam commodi.', '2007-11-22', '1998-11-21', 'DIPINJAM', '1987-11-22 02:30:43', '2001-10-08 06:48:55', NULL),
(7, 31, 45, 6, 'Assumenda eius quia.', '2014-02-16', '2015-11-18', 'DIPINJAM', '2017-02-04 19:37:32', '1997-09-20 10:27:24', NULL),
(8, 23, 8, 34, 'Quasi sed quod perferendis fugit.', '2008-09-17', '1970-03-09', 'DIKEMBALIKAN', '2007-05-02 20:38:37', '1990-02-26 08:12:34', NULL),
(9, 33, 38, 1, 'Provident doloremque saepe tempora.', '2002-02-05', '1994-05-10', 'DIKEMBALIKAN', '2005-11-28 10:42:05', '2002-12-23 12:46:34', NULL),
(10, 23, 45, 17, 'Occaecati quasi ut sed.', '1978-08-29', '2005-01-21', 'DIKEMBALIKAN', '2008-09-12 21:56:30', '2010-09-26 08:51:36', NULL),
(11, 43, 9, 47, 'Magnam aliquid nemo quia aut cum.', '1997-09-12', '1991-07-08', 'DIPINJAM', '2011-05-06 18:15:28', '1974-08-25 22:26:13', NULL),
(12, 15, 35, 41, 'Rerum optio explicabo sapiente et.', '2006-05-30', '1990-04-04', 'DIKEMBALIKAN', '2012-12-25 11:09:16', '1971-07-05 01:32:12', NULL),
(13, 35, 45, 47, 'Dolor provident alias.', '1998-08-15', '1985-06-29', 'DIKEMBALIKAN', '1979-01-06 05:02:25', '2001-12-28 23:11:19', NULL),
(14, 31, 4, 25, 'Soluta est sint animi.', '1992-06-19', '2000-04-09', 'DIKEMBALIKAN', '1979-11-16 09:06:41', '1979-10-09 02:43:44', NULL),
(15, 18, 50, 22, 'Molestiae voluptatem et voluptate repudiandae.', '1992-02-10', '1994-08-23', 'DIPINJAM', '1982-01-26 22:24:00', '2002-06-24 11:26:57', NULL),
(16, 5, 29, 0, 'Rem et aut debitis omnis.', '1972-01-13', '2014-09-16', 'DIKEMBALIKAN', '2012-01-19 19:59:07', '2005-10-03 01:20:24', NULL),
(17, 15, 42, 27, 'Laboriosam eveniet adipisci occaecati totam.', '2017-09-03', '1996-09-03', 'DIKEMBALIKAN', '1992-04-02 06:04:38', '1996-07-11 17:25:57', NULL),
(18, 45, 41, 31, 'Incidunt doloribus ullam.', '1972-11-24', '2006-01-30', 'DIKEMBALIKAN', '2016-05-18 02:20:27', '1995-07-08 07:27:14', NULL),
(19, 33, 29, 30, 'Perferendis illo ducimus ipsum.', '1984-05-08', '1999-06-16', 'DIKEMBALIKAN', '1974-12-06 04:06:21', '1984-01-26 06:36:58', NULL),
(20, 10, 18, 21, 'Natus asperiores voluptates quia.', '2007-12-03', '2003-07-05', 'DIKEMBALIKAN', '2002-05-11 01:15:38', '2000-12-06 20:32:23', NULL),
(21, 15, 29, 35, 'Temporibus voluptates quaerat praesentium.', '2001-01-28', '1982-01-14', 'DIKEMBALIKAN', '1976-07-14 10:32:05', '2005-09-06 23:45:22', NULL),
(22, 16, 36, 9, 'Quia et magnam.', '2009-05-13', '2016-04-25', 'DIKEMBALIKAN', '2012-04-29 00:22:00', '1983-06-24 13:28:03', NULL),
(23, 14, 39, 2, 'Voluptatem qui itaque.', '1982-08-24', '2008-12-27', 'DIPINJAM', '2011-03-25 12:47:42', '2001-01-19 07:07:02', NULL),
(24, 44, 13, 10, 'Inventore amet placeat dolores.', '1971-03-19', '2015-04-08', 'DIKEMBALIKAN', '1978-05-15 21:56:41', '1999-09-16 23:20:17', NULL),
(25, 16, 20, 42, 'Rerum vero sunt.', '2000-08-08', '1974-06-05', 'DIPINJAM', '1985-05-20 18:26:05', '2013-10-16 20:19:31', NULL),
(26, 44, 17, 50, 'Sint perferendis aut.', '1993-09-29', '1986-04-26', 'DIKEMBALIKAN', '2008-12-10 22:35:43', '1971-01-04 20:21:40', NULL),
(27, 3, 21, 36, 'Tempora culpa numquam.', '1997-10-25', '2019-03-13', 'DIPINJAM', '2002-07-31 12:02:51', '2008-01-16 19:42:35', NULL),
(28, 38, 11, 41, 'Delectus consequuntur molestiae assumenda rerum.', '1996-09-06', '2003-09-26', 'DIPINJAM', '1986-11-25 22:40:30', '2009-09-10 19:51:09', NULL),
(29, 7, 11, 37, 'Commodi autem voluptatem hic ut voluptatum.', '2018-06-29', '2010-02-28', 'DIKEMBALIKAN', '1998-07-24 01:15:34', '2010-12-19 05:37:24', NULL),
(30, 40, 46, 46, 'Aut dicta et.', '2018-05-08', '1990-01-28', 'DIKEMBALIKAN', '1984-07-30 16:50:39', '2001-03-15 03:42:48', NULL),
(31, 8, 10, 27, 'Id omnis ex ad aliquid.', '2000-07-05', '1971-01-30', 'DIPINJAM', '1970-10-25 11:38:04', '1998-05-15 09:09:25', NULL),
(32, 25, 8, 32, 'Error dolor saepe magnam ea.', '2015-04-28', '2013-01-25', 'DIPINJAM', '1977-09-17 20:50:23', '1991-06-10 16:47:45', NULL),
(33, 41, 45, 50, 'Blanditiis consequatur maxime ut.', '1986-03-13', '1992-05-05', 'DIKEMBALIKAN', '2000-08-08 04:55:19', '1991-09-23 22:15:54', NULL),
(34, 7, 22, 14, 'Placeat ut accusantium deleniti laudantium repudiandae.', '1983-10-15', '1998-04-22', 'DIKEMBALIKAN', '2012-03-07 13:37:53', '1975-10-31 07:25:44', NULL),
(35, 22, 32, 26, 'Et dolores reprehenderit sed sit velit.', '2017-11-24', '1983-07-06', 'DIPINJAM', '2001-07-17 06:11:35', '2014-11-13 18:43:59', NULL),
(36, 21, 11, 36, 'Necessitatibus et vitae ducimus dolorum.', '1973-01-13', '2011-04-18', 'DIPINJAM', '2019-03-08 22:58:36', '1979-10-08 17:33:53', NULL),
(37, 42, 1, 5, 'Blanditiis explicabo consequuntur inventore.', '1975-01-05', '2017-10-13', 'DIPINJAM', '2015-10-14 20:11:30', '1982-07-04 13:34:38', NULL),
(38, 39, 7, 44, 'Odio ducimus excepturi autem.', '1992-06-15', '2011-12-28', 'DIKEMBALIKAN', '1980-05-25 22:04:02', '1983-10-18 01:04:32', NULL),
(39, 3, 7, 37, 'Sint maxime ipsam qui et atque.', '1994-05-16', '1998-03-26', 'DIPINJAM', '2004-11-11 02:19:52', '2003-07-29 12:30:18', NULL),
(40, 24, 42, 22, 'Quis est dignissimos vel minima.', '1997-08-06', '1998-07-11', 'DIPINJAM', '1997-01-07 15:36:50', '2018-03-29 11:31:31', NULL),
(41, 14, 24, 42, 'Officia qui voluptas ut odio atque.', '1984-11-22', '1985-10-24', 'DIPINJAM', '1990-04-01 13:01:59', '1975-09-04 20:56:43', NULL),
(42, 16, 37, 27, 'Id delectus et consectetur mollitia similique.', '1985-08-04', '1983-02-08', 'DIKEMBALIKAN', '2013-02-07 06:03:20', '2012-11-08 01:32:10', NULL),
(43, 50, 23, 0, 'Autem odit officiis.', '1997-03-20', '2011-11-23', 'DIKEMBALIKAN', '2011-05-07 15:54:01', '1984-05-02 18:15:05', NULL),
(44, 15, 10, 28, 'Et consequatur quia nobis atque neque.', '2015-02-24', '2012-10-08', 'DIKEMBALIKAN', '2001-03-21 10:34:30', '2000-07-07 05:40:52', NULL),
(45, 20, 6, 45, 'Maxime aut ad cumque modi iusto.', '1985-01-07', '1979-02-06', 'DIKEMBALIKAN', '1977-08-22 09:55:34', '1987-09-21 17:04:06', NULL),
(46, 44, 21, 16, 'Optio alias voluptas quia molestiae.', '1974-09-01', '1997-01-20', 'DIKEMBALIKAN', '1996-04-06 05:24:24', '1985-05-27 19:53:37', NULL),
(47, 10, 49, 26, 'Illo saepe culpa.', '2009-02-04', '1973-05-10', 'DIPINJAM', '2016-04-10 22:54:59', '2016-08-07 13:48:38', NULL),
(48, 23, 50, 11, 'Exercitationem quis deserunt non.', '2018-04-18', '1979-12-22', 'DIKEMBALIKAN', '1999-03-11 12:14:35', '2009-05-21 03:01:56', NULL),
(49, 42, 5, 43, 'Maxime aperiam rerum.', '1989-10-20', '2005-11-26', 'DIPINJAM', '1983-01-02 16:27:25', '1984-08-24 16:53:17', NULL),
(50, 44, 4, 35, 'Illo temporibus aliquid quis accusantium aut.', '1988-05-14', '1992-11-25', 'DIPINJAM', '1982-11-13 23:06:04', '2018-02-20 12:56:13', NULL);

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
(1, 'kincat@gmail.com', '$2y$10$2E273fJy7ci951s.6nNaMO4POI4wtb8YzYbcQMqxMKHWIpjbXWZgK', 'kincat only', 'depok', 1, '018329123', 'user/default.png', 'ADMIN', '2019-07-02 20:34:51', NULL, NULL, '2019-07-02 20:34:51', '2019-07-02 20:34:51'),
(2, 'grimes.eliane@gmail.com', '$2y$10$Y7XdMgPohRsZFpkMWOEmuepKAsRugLfQ5fMu4OfPnt.EvcMgsWQwW', 'Era Zemlak', '8715 Beaulah Expressway Suite 128\nNorth Marcia, ND 10263-5719', 0, '(327) 563-2007', 'user/default.png', 'STAFF', '1990-06-18 10:36:32', NULL, NULL, '1995-06-11 01:17:48', '2010-01-11 13:12:30'),
(3, 'rhoda97@rice.com', '$2y$10$sxKEepEDVafYro54zSYwguUfUeD0XTxdChihWmIfukpznUIG6Trdy', 'Cordell Buckridge', '314 Kilback Roads\nCotyport, HI 16304', 0, '+1 (334) 437-7089', 'user/default.png', 'ADMIN', '1974-11-29 10:08:45', NULL, NULL, '1975-07-20 00:25:41', '2008-03-03 04:13:58'),
(4, 'gutkowski.laurianne@dare.info', '$2y$10$mcBeg9CxiVDhm0uYugv2ne35jXvkj4pW/jSfe.Cl5JOORnz8Mzeqq', 'Korey Treutel DVM', '8338 Hazle Canyon Suite 340\nKleinport, NC 22602-8827', 1, '1-238-677-1444', 'user/default.png', 'UMUM', '1972-02-13 03:57:49', NULL, NULL, '2017-08-29 22:37:19', '1991-02-27 01:35:02'),
(5, 'fabiola.kemmer@yahoo.com', '$2y$10$bfPj3/.SCfbSNlekCHY1pe8X0mvKXNlqV86kIKI3gb8Qk0YeHrHh2', 'Kallie Conn II', '1748 Gutmann River\nSouth Gretchen, IN 91286', 1, '(250) 841-4336 x760', 'user/default.png', 'LEMBAGA', '1999-03-30 22:42:43', NULL, NULL, '1989-02-14 17:03:50', '2000-06-02 10:04:22'),
(6, 'eliane15@bahringer.com', '$2y$10$yo5Tt9hy0j0IGWXkoupsNuSnpiJGXXxAtmrBFIhzv03CaNZAPWUyW', 'Grace Luettgen', '4873 Sigmund Meadows\nNew Jackyfort, VA 18691', 0, '578.679.4615 x5928', 'user/default.png', 'STAFF', '1986-01-27 22:29:00', NULL, NULL, '2015-01-16 01:58:52', '1986-01-05 20:49:15'),
(7, 'ofisher@gmail.com', '$2y$10$JT3TQH7NttKRtRaAgrbA0uOWc/qGyH79cWwbSz11kFbzj4.wkyYlm', 'Dr. Ellis Kreiger', '1744 Deshaun Way\nKristianberg, SD 54354-3193', 0, '884.861.0993 x527', 'user/default.png', 'LEMBAGA', '2007-01-30 15:45:37', NULL, NULL, '1998-03-20 12:05:43', '1990-05-05 03:36:46'),
(8, 'mante.maci@hotmail.com', '$2y$10$yZ5UCzcHbbanPHyqygMxl.k9QPb6kRXLg/lZKqqVii.I5Nratsle2', 'Oswald Cummings', '572 Natalie Mews Suite 641\nNorth Donato, TX 31467', 0, '720-378-7601 x508', 'user/default.png', 'UMUM', '1993-01-27 13:31:48', NULL, NULL, '2002-03-08 20:17:02', '1993-08-29 08:05:40'),
(9, 'xgutkowski@muller.org', '$2y$10$Lj6wa5bMptuADrkVrH0Is.tFq6iJCHwQj9n/AbU5gcgQUT6oqgnHi', 'Cristal Koch', '93743 Sterling Loop\nKennyborough, NC 23556-4952', 0, '403.746.7792 x492', 'user/default.png', 'UMUM', '2011-03-06 05:35:42', NULL, NULL, '2015-03-08 12:55:18', '1994-11-09 16:00:22'),
(10, 'dtrantow@yahoo.com', '$2y$10$4b.QKLiGE2Fr1trjaVixEOMe0jtLGVYOCWaobzFTz4a7ZjgWJqpfy', 'Hulda Stokes', '98076 Brielle Manor Apt. 984\nPort Dawson, OH 13613-1887', 0, '1-751-382-2846 x1708', 'user/default.png', 'ADMIN', '2013-10-23 07:08:57', NULL, NULL, '2001-04-24 16:53:36', '2000-12-19 23:24:53'),
(11, 'isom30@frami.com', '$2y$10$fB0DtRv9oLlP2mVTnSiVg.suJTa.c2dhZJprxAE.4M/X9FF9q7zuK', 'Ted Oberbrunner V', '612 Kozey Skyway Suite 117\nReingerchester, NM 49177-3144', 0, '1-494-448-1381 x780', 'user/default.png', 'ADMIN', '1974-09-18 09:40:56', NULL, NULL, '1986-10-09 10:13:58', '2013-05-13 11:44:25'),
(12, 'theron.gerhold@reinger.net', '$2y$10$7wiTFlRudtvhsPpc/WeCDOJmH.QMCFnzvg6iL2euEpd50FJKRABzy', 'Ms. Beryl Hoppe Jr.', '31602 Frank River Suite 700\nKohlermouth, NH 88405-9565', 1, '(413) 250-1040 x61232', 'user/default.png', 'LEMBAGA', '1982-04-23 04:00:10', NULL, NULL, '1993-11-09 10:21:19', '1977-06-11 21:14:28'),
(13, 'aubree.stiedemann@hotmail.com', '$2y$10$omTftyB8AMV.if6hn3XlReXMp30yeTWG0KKroLSUPImY6YG3raj5y', 'Dr. Keagan Kreiger', '59941 Hahn Gardens Suite 764\nRowlandside, DE 36494-7468', 1, '309-869-4166', 'user/default.png', 'STAFF', '2011-09-27 12:12:54', NULL, NULL, '2011-03-16 07:22:30', '1985-11-28 11:04:36'),
(14, 'edwina.macejkovic@yahoo.com', '$2y$10$uY7r4Ztmsm/WFH7vvr5UvurhQH.KjvOd9r.SeGTXhwmm0eNG1WnuW', 'Prof. Asha Bode Sr.', '708 Salvatore Prairie Suite 789\nEast Raoulland, AZ 50704-1700', 0, '978.563.6539 x938', 'user/default.png', 'ADMIN', '1990-09-03 14:11:52', NULL, NULL, '1990-07-15 16:17:15', '2016-08-08 13:34:14'),
(15, 'heathcote.diana@padberg.com', '$2y$10$aYqF5Nqz4N2a8cLYp7isGOmyYRkJQuvi3Ps..eVes6CHyFTYRwBMW', 'Willie Wiza', '6762 Rodriguez Loop\nNormaburgh, PA 11516', 0, '703.884.6056 x292', 'user/default.png', 'ADMIN', '1982-05-12 21:41:01', NULL, NULL, '1971-11-07 17:19:51', '2019-04-07 03:31:14'),
(16, 'tlarkin@mohr.com', '$2y$10$9AEG879CzdsLbQ13tFOKmOB/6JeJwy3l9raJiMKXd4990LQrMQRhe', 'Dr. Eldridge Schulist', '7168 Harold Freeway Suite 340\nWest Declanport, IA 49392-8391', 1, '359-521-3749 x72159', 'user/default.png', 'LEMBAGA', '1985-09-10 06:36:25', NULL, NULL, '2009-01-23 02:27:18', '1970-03-06 20:53:56'),
(17, 'lora34@gutkowski.com', '$2y$10$31FQYY71flzNFjjyNYzZW.zAdqOXB4EiviXEd4bLp0c31u/QciMS.', 'Gina O''Keefe', '890 Cartwright Station Suite 620\nWest Orin, CT 49304-5897', 0, '1-732-237-8648', 'user/default.png', 'LEMBAGA', '1980-04-15 14:46:52', NULL, NULL, '1979-03-22 14:43:52', '2017-06-14 16:58:41'),
(18, 'alind@hotmail.com', '$2y$10$lZ52j8KDGBanLg5PFZQs/uwQnB7R1tFngpt6hDerVxRuYENE/9dYK', 'Lily Hartmann Sr.', '772 Velva Squares Apt. 914\nStellafort, NJ 38061-7748', 0, '+18744769331', 'user/default.png', 'LEMBAGA', '1975-09-07 17:01:32', NULL, NULL, '1992-02-03 16:29:46', '2012-11-23 02:20:07'),
(19, 'rafaela05@yahoo.com', '$2y$10$TXT0cmJjKL9wuJKceEApEO7Ng4PKaAlPVzLbTVS1GmJhKz8tHb5RS', 'Pauline Rath', '82209 Hershel Tunnel\nLehnerport, AZ 75969', 1, '481.981.3351 x787', 'user/default.png', 'STAFF', '2017-03-06 08:02:17', NULL, NULL, '1997-06-13 23:18:33', '1986-12-10 09:31:07'),
(20, 'schneider.margret@will.net', '$2y$10$fTeJTvorc.0nopOkmmkH4eB956ThjeV0K/bmU7pQOy/o338xVp8MK', 'Mr. Brock Turcotte', '2894 Beverly Key\nHelenemouth, AZ 74334-7533', 1, '(393) 895-9869 x83729', 'user/default.png', 'ADMIN', '1990-12-16 16:07:53', NULL, NULL, '1987-01-28 07:30:57', '2009-01-09 17:32:15'),
(21, 'johnson62@kirlin.biz', '$2y$10$jtiuQ5M4v8TrB9Lcs/k5jOauJxYGW17pgKXR4jr8wjueztavh3mIW', 'Delia Schroeder', '2488 Ulices Rapid\nMarcohaven, CT 15240-7352', 0, '1-309-579-6948', 'user/default.png', 'LEMBAGA', '1983-09-22 09:00:04', NULL, NULL, '1973-12-07 06:28:05', '2003-05-24 02:58:34'),
(22, 'smitham.rachael@boyle.info', '$2y$10$llESydCw5pw0dKOciZRc5OTjFKBgbBHOUmDRIbeG0ecZxDzVnjVuy', 'Karlie Dickinson', '801 Effie Hill Suite 314\nFriesenbury, IN 40160-3905', 1, '1-796-807-9110 x02450', 'user/default.png', 'ADMIN', '2014-06-09 23:44:25', NULL, NULL, '1997-02-16 19:46:44', '2014-02-25 07:04:25'),
(23, 'jocelyn27@yahoo.com', '$2y$10$vdmw/zRXIKXofeDPBgsJ2Ov1yWxrg4v/OWJTs43OdA4wJDUH1r8de', 'Larry Moore', '1674 Malinda Shoal\nNew Leolastad, ME 34447-2267', 1, '581.995.8701', 'user/default.png', 'LEMBAGA', '1970-01-28 20:00:37', NULL, NULL, '1998-01-30 14:52:56', '1971-09-11 01:13:57'),
(24, 'lcummings@hotmail.com', '$2y$10$3.bYi6jinNNIHoBBGTZc..pL.LjirdyhhZaLAhNlVwn0mltfNFGnq', 'Ms. Raegan Abbott III', '598 Keith Branch Apt. 022\nWest Hassieborough, NC 01195', 1, '(813) 696-4172', 'user/default.png', 'LEMBAGA', '1981-08-04 00:46:16', NULL, NULL, '1997-01-22 23:52:57', '1998-11-13 16:13:01'),
(25, 'soreilly@hyatt.com', '$2y$10$L0HzaYOQoBc6lQld/aBoQ.PH6GCIl15su8wmNfuI9DRJEndyfyGKC', 'Dorothea Johnston', '1875 Emery Court Suite 334\nAdalinefurt, WA 95199', 0, '246.493.2279', 'user/default.png', 'STAFF', '1987-11-13 13:24:16', NULL, NULL, '1988-03-22 17:48:45', '1990-04-10 22:58:20'),
(26, 'trempel@hotmail.com', '$2y$10$kKH16YoUs1Hb8XGKHnFI/eLLAIkzfDwHjwkstO97OaEfhLlTVbbFy', 'Prof. Isac Harvey V', '867 Stehr Ramp\nHoytland, NV 85350', 1, '739.743.0792', 'user/default.png', 'STAFF', '1981-10-12 22:26:52', NULL, NULL, '1989-04-12 12:28:41', '2002-02-26 15:58:16'),
(27, 'haley22@yahoo.com', '$2y$10$PLnesjyR81JQ17ORANnH1OwUp.5JrCDxfJobjX03F7OKg/cXUC5B2', 'Yasmeen Windler', '110 Abbott Squares Apt. 554\nWest Kaileemouth, NC 31815-8028', 0, '(289) 988-1062', 'user/default.png', 'STAFF', '2005-05-23 16:46:43', NULL, NULL, '1989-01-27 06:05:08', '1970-09-19 07:23:31'),
(28, 'kulas.wilford@yahoo.com', '$2y$10$V2nE3obGXoSCCXX8.KYHz.KDfhierLjvDGZQGtfumWi1G9vkigmly', 'Bella Kemmer', '108 Stoltenberg Streets\nNienowborough, DE 54895', 0, '652-379-3173', 'user/default.png', 'LEMBAGA', '2001-05-21 14:29:56', NULL, NULL, '1993-03-24 03:30:15', '1982-11-18 03:41:56'),
(29, 'dina43@gusikowski.com', '$2y$10$Oc5lclMCLqmsio.4NLFD.uMBPalrYtsIxRXipplmyV4Kd70knkQdq', 'Hilbert Hudson', '7579 Marlen Island Apt. 000\nBrownshire, UT 27936', 1, '1-328-559-6515', 'user/default.png', 'UMUM', '1999-11-28 11:44:05', NULL, NULL, '2003-08-11 18:01:46', '1973-02-22 22:57:30'),
(30, 'kaleigh03@bernier.net', '$2y$10$M/yu8zsB/wIhSsuZblVfM.ke4ZfqlLG/BT3I8T8f1dr87hbeVr4oO', 'Jacques McLaughlin PhD', '595 Mandy Ferry Apt. 485\nLindgrenberg, NJ 11933-3815', 1, '780.497.8052', 'user/default.png', 'ADMIN', '1999-09-08 20:10:38', NULL, NULL, '1977-09-13 03:56:16', '2000-03-28 13:54:45'),
(31, 'edwina48@metz.com', '$2y$10$kHfzRJ4MjLfbnWe/SoZ8Z.2SqV.c.wqdK9IN3W.Pjhk79hn3tgyJm', 'Wyman Schneider', '874 Roselyn Prairie\nJaskolskichester, ID 51236-5631', 1, '(492) 916-4174 x45329', 'user/default.png', 'STAFF', '1982-07-14 12:16:04', NULL, NULL, '2007-05-20 16:15:04', '1977-08-24 20:14:59'),
(32, 'makenzie.strosin@morissette.com', '$2y$10$u7MZjYWVhG/UGXp5rZFvn.XATb9ZVo.AuOA972ytUsTfqWJY94Kc6', 'Roxanne Mosciski', '40736 Morar Neck\nWest Justonchester, KS 76685-9280', 0, '1-392-327-1533 x56568', 'user/default.png', 'ADMIN', '1992-01-28 22:34:54', NULL, NULL, '2009-04-15 03:01:04', '2011-02-28 00:32:28'),
(33, 'malvina11@gmail.com', '$2y$10$nbqMQkApOzdYI5rUHxn9ce610XozZyub7gncCgpVf4Zrd.vaf1Is.', 'Kira Koepp', '72224 Bergstrom Cliffs\nSouth Frank, PA 95032-4830', 1, '(720) 428-2796 x3669', 'user/default.png', 'ADMIN', '1989-11-05 17:15:33', NULL, NULL, '1985-03-04 20:28:59', '1992-02-03 01:48:04'),
(34, 'lehner.prudence@kassulke.org', '$2y$10$2ufe3LMu6ha9wfhFbE8Ynu2QDZu99zI713dH3DNFffC7/Wa7lA7k6', 'Doyle Connelly', '9133 O''Connell Rest Apt. 539\nHammesview, VT 74248', 1, '(253) 976-3258 x2669', 'user/default.png', 'UMUM', '2001-11-22 00:00:46', NULL, NULL, '2016-06-15 21:46:34', '1981-01-16 14:07:29'),
(35, 'dorothy.kuhlman@hotmail.com', '$2y$10$0kCTZRRveig1jykkTC.jau2cCgjMjoY.JLXewzkN21mi5ngiHIGlq', 'Guillermo Harvey', '24583 Gibson Ford Apt. 755\nLake Antonettaton, WA 61439', 0, '(937) 645-8583 x662', 'user/default.png', 'STAFF', '2002-03-02 01:21:33', NULL, NULL, '1989-07-27 07:22:19', '2003-07-28 21:34:56'),
(36, 'rowena35@erdman.com', '$2y$10$7gMjJifoXK3DGN5O/zQ/Uu7qXeMM8l6XColY/rXqRI8dvIELBbFk2', 'Ivory Mante DDS', '305 Maynard Springs\nAmiyaville, IN 50849-7563', 1, '769.217.8325', 'user/default.png', 'ADMIN', '1999-02-20 09:43:33', NULL, NULL, '1981-08-04 15:57:25', '2010-03-14 07:36:32'),
(37, 'gisselle84@rath.com', '$2y$10$lkfAnsXArBi9C/c0Qr5pKOVrqMdw0lZyddha6xLyylDNDWfuYxKtC', 'Letitia Williamson', '863 Ruecker Freeway\nColeton, IL 13123-2226', 0, '(926) 312-8280 x95775', 'user/default.png', 'LEMBAGA', '1988-01-08 21:51:10', NULL, NULL, '1992-02-22 13:28:25', '2013-05-19 22:35:22'),
(38, 'shaniya70@hotmail.com', '$2y$10$DBRXSvMg2ND7zAB55f8oluTS3ny0L1/qF0kgs3GnZiEKV1oqUVfD6', 'Jany Ernser III', '11828 Conor Islands\nSpencerstad, WY 45312-1209', 1, '(310) 927-1090 x30322', 'user/default.png', 'STAFF', '2004-11-20 21:33:08', NULL, NULL, '1992-04-05 16:04:59', '1991-05-12 12:32:59'),
(39, 'jeffery33@gmail.com', '$2y$10$7VYA.rMRWAQTXAnDQBbiGOzXxO3OtklxaV5XoGRBBTKP2VD86N/Y.', 'Prof. Angeline Feeney', '7058 Imelda Valley Suite 082\nGulgowskiberg, AL 71414', 0, '+19062386083', 'user/default.png', 'LEMBAGA', '2016-04-28 18:00:15', NULL, NULL, '1999-09-02 22:54:44', '2013-01-01 11:14:36'),
(40, 'ardella66@grady.biz', '$2y$10$OvegePYVKwqq7EkaS2itpOdVT0yiK0xVvP.dXAFtUBZcX4qZg5jmK', 'Prof. Velda Hermann', '120 Samantha Plains Apt. 624\nNew Jillianbury, NV 32147', 1, '921.426.9793', 'user/default.png', 'ADMIN', '1989-01-15 00:21:51', NULL, NULL, '2009-12-09 04:31:53', '1986-03-23 16:08:51'),
(41, 'april07@sawayn.com', '$2y$10$m701nOMUYvhUzdvia9X8sudWRN6fu92KxoqWdoRc11GmsOHm.dgQ2', 'Dr. Anastasia Padberg', '61959 Jo Lock Apt. 002\nNew Dariusport, NY 37676', 0, '975.532.0476', 'user/default.png', 'ADMIN', '2008-06-03 04:11:07', NULL, NULL, '1987-03-13 21:12:52', '1995-03-15 16:31:51'),
(42, 'unitzsche@gorczany.com', '$2y$10$ZrkAlBZCr/X6LXujcFVN6.7irfNMojanpJnx9f4ypf2PUMgA4SDye', 'Shanie Berge', '60835 Bechtelar Ranch\nDarbyburgh, CA 80159-1569', 1, '795.937.6699 x73380', 'user/default.png', 'UMUM', '2018-06-05 13:18:00', NULL, NULL, '2000-02-07 01:07:15', '1980-06-06 07:29:37'),
(43, 'will.gerardo@christiansen.biz', '$2y$10$r.bKrE48/Y6ScU6HsdWRVuIcHIQeGV4pB0n/Kx0nrDz343Ky12tG6', 'Prof. Wendell Goyette', '819 Glen Fall Suite 045\nKeanustad, UT 59334-0153', 0, '+1.906.359.8963', 'user/default.png', 'UMUM', '2014-03-01 06:42:55', NULL, NULL, '1974-06-06 22:50:58', '1997-09-17 00:22:51'),
(44, 'florence00@schaefer.biz', '$2y$10$RQ./xSjDqjyVC3XlV1q7d.EQvXmyLMlM/4aR1ydSDuEtWmMcKtRjG', 'Summer Bailey', '7709 Casper Junction Apt. 384\nNorth Scottie, MD 09986-7224', 1, '1-710-985-7324 x9869', 'user/default.png', 'LEMBAGA', '1990-07-30 18:26:14', NULL, NULL, '1983-11-06 19:11:55', '2007-12-07 03:34:37'),
(45, 'okuvalis@yahoo.com', '$2y$10$1n.4jnm.2zN9jihZh6qeVub1r3mQDR3lZEG9gUfXwbzM1u3YQa9La', 'Bella West', '39121 Barrows Forge Apt. 700\nRuthieberg, UT 44166-6091', 1, '+1.676.923.0781', 'user/default.png', 'LEMBAGA', '2003-02-14 04:15:24', NULL, NULL, '1990-08-29 07:35:51', '2010-07-08 12:46:08'),
(46, 'quinn.crooks@quitzon.com', '$2y$10$ojqmmam0pC6LCuK1LSO7q.aGAZKH8rwgx52wCj2.3D18h6hAtQLd.', 'Karolann Casper', '48243 Celestine Avenue Suite 322\nKelliville, ND 80812', 1, '992.500.8369 x316', 'user/default.png', 'LEMBAGA', '2000-08-06 02:46:49', NULL, NULL, '1971-02-25 13:39:19', '1994-09-17 06:04:35'),
(47, 'maximillian.dubuque@okon.net', '$2y$10$Va..4GXpEqfrxErKkY75g./ZGs0ZmwLI4gvtOQRGAJeT3mFmZMK62', 'Al Carter', '29466 Spencer Mews\nEast Tabitha, OR 22443-2003', 0, '(370) 595-8983', 'user/default.png', 'STAFF', '2014-05-12 19:47:08', NULL, NULL, '2002-05-24 23:21:58', '2007-01-28 21:54:51'),
(48, 'qrippin@buckridge.com', '$2y$10$5z.le/mUPLcLmjR8s0H8x.Uy8trSxTPxvdSYj7V5.kSBdc6bY3HUS', 'Dr. Johnny Jenkins Jr.', '952 Parker Fall\nEast Elva, AZ 50806', 1, '(250) 996-1385 x079', 'user/default.png', 'ADMIN', '2009-05-19 23:47:56', NULL, NULL, '2019-01-08 19:05:26', '1992-11-11 17:51:06'),
(49, 'nicolas.thomas@stehr.com', '$2y$10$IIqpPvNujFDirW4OwZ7m3Oeo8jodXhq4JdFEqZuqz5u1hufb4bhWe', 'Dennis Smitham', '656 Kirlin Walk\nSouth Monserrat, MA 81033-3450', 1, '(781) 544-8883 x94585', 'user/default.png', 'ADMIN', '2016-07-21 06:07:05', NULL, NULL, '1996-07-04 15:56:21', '1999-09-03 09:25:35'),
(50, 'monty.ruecker@hotmail.com', '$2y$10$vniiXCEPvqLY5Ri.zUOXPeCp1b2BzVEjjNMA1K6NV9nAVf.LiqpuW', 'Angelica Lindgren', '575 Jacynthe Canyon Apt. 280\nEast Enid, DE 26358', 0, '(791) 576-4413 x10102', 'user/default.png', 'STAFF', '2005-09-28 16:08:13', NULL, NULL, '2001-05-30 06:26:00', '2002-03-15 12:43:09'),
(51, 'thompson.brisa@hotmail.com', '$2y$10$Vj/kLZWmylZ4KDhrCizWhukMYgxWfNsNrgAdP8ziHlxjz2bZECy4C', 'Aisha Batz', '4830 Hyman Shoals Apt. 729\nNorth Gabrielchester, NY 78435-9190', 0, '853-328-0532 x0241', 'user/default.png', 'LEMBAGA', '1985-06-15 18:19:00', NULL, NULL, '1986-08-26 01:22:02', '2011-06-12 17:39:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dana`
--
ALTER TABLE `dana`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokumentasi`
--
ALTER TABLE `dokumentasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lembaga`
--
ALTER TABLE `lembaga`
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
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
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
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `dana`
--
ALTER TABLE `dana`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `dokumentasi`
--
ALTER TABLE `dokumentasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `lembaga`
--
ALTER TABLE `lembaga`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
