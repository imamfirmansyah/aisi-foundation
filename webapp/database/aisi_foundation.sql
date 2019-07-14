# Host: localhost  (Version 5.5.5-10.1.31-MariaDB)
# Date: 2019-07-14 14:13:10
# Generator: MySQL-Front 5.4  (Build 4.148) - http://www.mysqlfront.de/

/*!40101 SET NAMES utf8 */;

#
# Structure for table "barang"
#

DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_barang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `foto` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "barang"
#

INSERT INTO `barang` VALUES (1,'1562920244','Kabel Rol','ELEKTRONIK',NULL,'1562947097_kabel-rol_10_meter.jpg','1','2019-07-12 08:30:44','2019-07-12 17:37:12',NULL),(2,'1562933685','Epson LCD Proyektor','ELEKTRONIK','Epson LCD White','1562933685_epson_lcd_white.jpg','1','2019-07-12 12:14:45','2019-07-12 17:38:58',NULL),(3,'1562940709','Proyektor LCD HP','ELEKTRONIK','LCD HP','1562940709_hp_lcd.jpg','1','2019-07-12 14:11:49','2019-07-12 17:39:24',NULL),(4,'1562947460','Kabel Steker','ELEKTRONIK','6 PORT','1562947460_rol_kabel_steker.jpg','1','2019-07-12 16:04:20','2019-07-12 17:29:07',NULL),(5,'1562947595','Speaker Portable Besar','ELEKTRONIK','2 Speaker portable bertenaga 220v dilengkapi dengan 1 mic wireless','1562947595_speaker_portable.jpg','1','2019-07-12 16:06:35','2019-07-12 18:05:56',NULL);

#
# Structure for table "dana"
#

DROP TABLE IF EXISTS `dana`;
CREATE TABLE `dana` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_kegiatan` int(11) NOT NULL,
  `jumlah_pengajuan` decimal(8,0) DEFAULT NULL,
  `jumlah_pencairan` decimal(8,0) DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `tgl_pengajuan` date DEFAULT NULL,
  `tgl_pencairan` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "dana"
#


#
# Structure for table "dokumentasi"
#

DROP TABLE IF EXISTS `dokumentasi`;
CREATE TABLE `dokumentasi` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_kegiatan` int(11) DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `file` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "dokumentasi"
#


#
# Structure for table "kegiatan"
#

DROP TABLE IF EXISTS `kegiatan`;
CREATE TABLE `kegiatan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_lembaga` int(11) NOT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proposal_kegiatan` text COLLATE utf8mb4_unicode_ci,
  `tgl_kegiatan` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "kegiatan"
#


#
# Structure for table "lembaga"
#

DROP TABLE IF EXISTS `lembaga`;
CREATE TABLE `lembaga` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `no_hp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "lembaga"
#

INSERT INTO `lembaga` VALUES (1,58,NULL,NULL,NULL,NULL,NULL,'2019-07-10 17:26:40','2019-07-10 17:26:40',NULL),(2,60,'KPMD','kpmd_lembaga@gmail.com','Jl. Nusantara Raya Depok','085781200013','Kesatuan Pelajar Muslim Depok','2019-07-13 14:47:59','2019-07-13 18:57:51',NULL);

#
# Structure for table "migrations"
#

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "migrations"
#

INSERT INTO `migrations` VALUES (25,'2014_10_12_000000_create_users_table',1),(26,'2014_10_12_100000_create_password_resets_table',1),(27,'2019_07_02_224520_CreateLembagaTable',1),(28,'2019_07_02_225047_CreateKegiatanTable',1),(29,'2019_07_02_225345_CreateDanaTable',1),(30,'2019_07_02_225752_CreateDokumentasiTable',1),(31,'2019_07_02_230019_CreateBarangTable',1),(32,'2019_07_02_230251_CreatePeminjamanTable',1);

#
# Structure for table "password_resets"
#

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "password_resets"
#


#
# Structure for table "peminjaman"
#

DROP TABLE IF EXISTS `peminjaman`;
CREATE TABLE `peminjaman` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_barang` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_kegiatan` int(11) DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `tgl_pinjam` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "peminjaman"
#


#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `jenis_kelamin` int(11) DEFAULT NULL,
  `no_hp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validate_status` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "users"
#

INSERT INTO `users` VALUES (1,'app.aisifoundation@gmail.com','$2y$10$.r.qGaESFAvfAgs/6biTg.1db4GJxZDcg0GLf7oK3DKBL0GNjPnTy','AISI Administrator','Depok',1,'018329123','','ADMIN',1,'2019-07-10 15:19:12',NULL,'DU1zMB9jZ1uHXZVz3uAQDv06enjmNOZeCOiy6OoMVmtsN7dkFRyo3LCl1cb9','2019-07-10 15:19:12','2019-07-10 15:19:12'),(3,'staff.aisifoundation@gmail.com','$2y$10$8MYmX3AAzFqTZ0Y/HOmGx.baKQHJXjf1./e41Y55FoFLnGERpHl5m','Staff Yayasan AISI','Depok',1,'018329123','1563039484_logo-aisi.png','STAFF',1,'2019-07-10 15:19:12',NULL,'fKWjX7DTLemCCTATvDoHEEFtl880eqnPNOuqmDGlQr10Ul5Ru5xoeCbit0uL','2019-07-10 15:19:12','2019-07-13 19:37:03'),(4,'imamfirmansyah27@gmail.com','$2y$10$994ZbGMakPBg8OCjFhxJSereJBsFtGfCho/m4JLkA1yloNhCZHiPa','Imam Firmansyah','Jl. Usman Dehir No. 86 Depok',1,'018329123','1563043843_imam_firmansyah.jpg','UMUM',1,'2019-07-10 15:19:12',NULL,'dH0yKh4bVvxqOZ9iR2o2yKGJqpojGTzFxjJOQ0zXa68ejlu4KlGbEsCLJL4a','2019-07-10 15:19:12','2019-07-13 18:56:23'),(5,'gino98@renner.com','$2y$10$.d1evNgM5x7nBNTQNGM.5e8RYLaqHYv.KFdlxw90lGYBtMgnskZpS','Allie Metz Jr.','3874 Alba Meadow\nEvechester, RI 35857-8704',0,'512.635.1083 x169','user/default.png','LEMBAGA',1,'2008-10-12 22:57:00',NULL,NULL,'2012-07-12 13:58:57','1997-07-09 02:46:02'),(6,'xheaney@gmail.com','$2y$10$aVWntxdCC1d47vfAnxXnZ.v7VDOet1v5/gC9r77AUCSegmWOuO4z6','Prof. Margot Maggio Sr.','28917 Nils Dale Apt. 224\nIcieshire, MS 51295-9052',0,'692-404-3924 x9220','user/default.png','STAFF',0,'2016-07-13 23:40:57',NULL,NULL,'2009-07-28 03:26:50','2002-10-19 12:42:27'),(7,'champlin.timmothy@hotmail.com','$2y$10$Lkih8IYuVPJ0O96bkdUJI.b6p9rKTn1oBejArnu190wZAsoebFT6i','Hulda Terry','715 Bogan Hills\nSouth Marleeland, NC 70739',0,'960.524.4104 x8374','user/default.png','STAFF',1,'2015-10-13 05:37:14',NULL,NULL,'2004-12-12 21:39:47','2005-12-05 22:22:34'),(8,'mabel.gaylord@gmail.com','$2y$10$3GwX0fPeZ7Fi/7WAVXeS5em615lSb9TE4mZ7DKFKoxZNN7SZGVo9C','Jillian O\'Reilly III','10411 Harold Path Suite 231\nKohlerville, MD 53596-8590',0,'654-719-8398 x297','user/default.png','ADMIN',1,'1994-05-01 13:32:45',NULL,NULL,'2017-03-25 23:19:01','1992-03-28 16:15:36'),(9,'dschmitt@yahoo.com','$2y$10$CdfXX/T/h8GvOrXtbicBKuXW1u752wNzL9PGXA5mpk899LtLROCMO','Estella Quigley III','754 Duncan Spurs\nOsinskitown, NJ 17046-4280',1,'998.467.7394 x01787','user/default.png','ADMIN',1,'2008-07-17 23:15:50',NULL,NULL,'1970-07-13 22:17:39','1991-12-11 14:17:52'),(10,'matt.lindgren@goyette.com','$2y$10$1SsOr0gh8ki47TZ1VB6So.PozLlRbJeCiDYux0TXggJ9TuCIKuOrC','Prof. Vanessa Marquardt','171 Ledner Groves Suite 528\nSchmitttown, TX 14624-9921',1,'+1-865-971-5949','user/default.png','UMUM',1,'2013-06-26 14:16:19',NULL,NULL,'1982-07-18 09:24:54','1989-10-09 22:02:48'),(11,'vickie11@cremin.com','$2y$10$g3.j9w5TRU9xFVQMoc04t.kNH0OR1cxAAibx/kwUku/V3eBsal7X6','Nina Huels','42011 Carmine Views Suite 618\nRosalindamouth, SC 20311-8627',1,'309-302-9441','user/default.png','ADMIN',0,'1990-01-12 01:46:18',NULL,NULL,'1987-12-19 21:35:13','2010-07-27 11:46:17'),(12,'celia.koch@thiel.com','$2y$10$Rsqh1TAKqlsBKi2sROIt/eyJXjXgyT3Q6Uurro9CXUAD1uIQfMlHK','Sheridan Olson','53183 Hiram View Suite 704\nEast Amaraborough, FL 11930',1,'+1-629-422-5038','user/default.png','STAFF',0,'2001-05-23 11:08:26',NULL,NULL,'1981-07-15 13:45:55','1988-06-20 22:30:55'),(13,'stracke.jarod@corkery.com','$2y$10$VLh153AFPH1uzCbwtXBajuq6B90hIaDHLZRGZgdTdt0gGJ4Stnz5S','Magnolia Witting','7543 Mckenzie Corners\nTorpland, CO 48530',0,'591.873.3017 x6359','user/default.png','UMUM',1,'2010-01-02 18:22:11',NULL,NULL,'2006-02-06 23:18:48','1979-02-18 18:08:04'),(14,'carolyne.dare@cassin.net','$2y$10$6SmvU6fXZaQ7MsJDKvkJ.u..v/DO8VqCgsasHvXvrYtKHww/6Cgkq','Brooks Crist','511 DuBuque Estates Apt. 104\nLake Miller, PA 59839-1406',1,'(979) 936-3254 x101','user/default.png','UMUM',0,'1995-11-29 03:55:20',NULL,NULL,'1994-10-22 13:00:42','2009-12-21 07:16:06'),(15,'eduardo97@emmerich.com','$2y$10$FaieA3JB5KiZ4PSVVMNhlOI8Uy5mrgUy3RAd/t/3T39zDFhpyZPb.','Gaetano Lindgren','324 Turner Common Apt. 165\nFrancescoport, MT 74864',1,'880-442-3054','user/default.png','UMUM',0,'1980-03-16 23:20:43',NULL,NULL,'1992-05-27 04:04:58','1985-03-16 13:42:11'),(16,'rebeka.mitchell@grady.com','$2y$10$VWp6Jivk3HKTM9D3HX1gduOKPWyGZwBWiKU.6pB8HrQJFOawcvFrS','Mr. Ulises Jones','76813 Liza Rest\nNorth Reganton, UT 65521',0,'461-295-3538 x9508','user/default.png','STAFF',0,'1978-09-19 18:27:32',NULL,NULL,'2010-02-17 08:25:26','1980-02-10 01:51:28'),(17,'larson.deonte@mcdermott.info','$2y$10$1szafxKb0UGgDipenG0rv.XtaJ54Gg43aymZes9Wz5abLny9IRrdC','Prof. Trevor Bergnaum','57673 Littel Spur Suite 049\nSouth Denis, PA 39858-1929',1,'1-719-529-2546 x9662','user/default.png','UMUM',0,'2008-10-31 00:13:51',NULL,NULL,'1989-09-20 04:50:25','1990-06-11 13:50:36'),(18,'macie61@gmail.com','$2y$10$fxbjZa9e4KDetZpeBChMouRW5NSeBshS.GHsQEKy3yg5b0b7H9feS','Sally Batz','25298 Roslyn Forks\nMustafahaven, RI 13946-7388',0,'1-607-287-7195 x3046','user/default.png','STAFF',0,'1973-04-21 08:38:22',NULL,NULL,'1996-07-25 02:54:15','2006-12-03 05:44:05'),(19,'rosalind43@yahoo.com','$2y$10$WAZMv5x54490BqF3cibSfurBDJEGwgZZfQ7kmk7mJheITn79ITG0y','Ms. Christelle Rolfson MD','5770 Daugherty Overpass\nNorth Loyceville, WI 75989',1,'+1 (701) 757-7809','user/default.png','STAFF',1,'1993-09-01 07:04:37',NULL,NULL,'1994-05-17 20:26:27','2002-03-10 03:51:55'),(20,'tremblay.chadd@yahoo.com','$2y$10$nZvJxrHB6IPtgbU.lSVnG.31WsuGpBz8K8wGS2fH7.B/9rwfZtac.','Mrs. Lue Bartell MD','16048 Berge Plain Suite 019\nJerdefurt, SC 53682-2187',0,'+1.470.439.9329','user/default.png','STAFF',1,'1976-05-02 23:21:32',NULL,NULL,'1977-02-09 14:09:45','1974-03-14 11:39:08'),(21,'vergie.metz@haag.biz','$2y$10$w8P6m99me7iXkZW8Lju2duJVPneT3Ri8HT4TSqUonFsmxrW6wkDha','Lavina Lemke','216 Crona Springs Suite 256\nHowellton, UT 54678',1,'1-762-770-5518 x702','user/default.png','ADMIN',0,'2010-06-12 10:29:09',NULL,NULL,'1994-08-18 22:33:10','2000-04-10 00:28:31'),(22,'anya45@yahoo.com','$2y$10$hJNyF7P3DvGiJzEVJ40II.CB1b9KVxpe7cNknMdzFzreWbiGmJvtK','Ansel King','83836 Barton Meadow Apt. 063\nLake Eugeneport, AL 89084',0,'391.500.7209 x16689','user/default.png','STAFF',1,'1997-07-16 13:09:10',NULL,NULL,'1989-06-29 21:46:32','2005-06-30 18:29:56'),(23,'hirthe.heath@yahoo.com','$2y$10$5YfvwDHhiuypB3wt.JNEBujKuDU5i4dIOSZnZYQQz/aYpiDUf9Z9K','Jettie Goldner PhD','2772 Julie Plaza\nWest Amayafort, VA 27081-5168',0,'490-710-1817','user/default.png','LEMBAGA',1,'2018-05-27 11:48:56',NULL,NULL,'1972-09-27 15:31:39','1993-10-23 10:44:15'),(24,'shirley.carter@gmail.com','$2y$10$b7TsaXrGX/eBEPPn1.D6euTaYTkXsovuzW6NlrAiR8euoESlS4JCW','Mr. Fidel Olson','941 Abby Island Suite 957\nNew Magdalenashire, UT 75534',1,'580-749-5021','user/default.png','LEMBAGA',0,'1972-09-16 13:42:43',NULL,NULL,'2000-07-16 17:54:35','1976-06-01 17:16:23'),(25,'lafayette30@gmail.com','$2y$10$ef9VBvbkUKY8nqZzXi9g/Ok/J4GZd5AeSnTKoUXpoCLj4Bjbkt5ky','Alanna Leffler','1823 Candice Roads Apt. 486\nClayberg, CA 42446',0,'616.436.3819 x172','user/default.png','UMUM',0,'1984-08-04 15:37:23',NULL,NULL,'1979-03-23 17:03:57','1999-04-08 21:47:55'),(26,'courtney04@hotmail.com','$2y$10$WHSMLtESEJoVas0HaRGnle8GY9DHQCFPmxP21ew8saULrZiYLIA3e','Chasity Bernier','5028 Douglas Unions Suite 305\nLydaberg, WV 35463',0,'1-747-729-1051 x37100','user/default.png','LEMBAGA',1,'1972-08-15 17:57:59',NULL,NULL,'1978-10-24 10:08:07','2004-10-09 00:48:44'),(27,'keebler.frieda@yahoo.com','$2y$10$lSMO2jiH7ZgVDoBGhxBHBec5PH1NASJzu34HXlznficOQ8PinzSP.','Jacques Gaylord V','11442 Nienow Manor\nKingburgh, OH 11853-4971',1,'(924) 764-5795 x311','user/default.png','LEMBAGA',0,'1990-03-15 07:30:45',NULL,NULL,'1996-07-29 00:50:15','1992-03-31 20:20:33'),(28,'ephraim48@yahoo.com','$2y$10$jeg.suE2Y9JoR79SKaunkOhJn.Ygev1xsDfiAOll6JFgUmxw5w0Pu','Prof. Rosendo Schumm','446 Noe Rue Apt. 352\nPort Antonina, KY 32092-8430',0,'+1-905-392-4260','user/default.png','STAFF',0,'1984-08-06 02:35:31',NULL,NULL,'1979-08-28 17:51:49','1973-02-23 11:23:01'),(29,'gcummings@will.com','$2y$10$MIblRaVmsqElOsCk6kJD6.ZFjyJMnpGeXlUNeBOaR6uLFQoQbHz4m','Prof. Alisha Stiedemann','5889 Fritsch Drive\nLake Kacey, NY 04570',1,'1-559-984-5059 x262','user/default.png','ADMIN',1,'1974-07-01 04:50:06',NULL,NULL,'2003-01-03 05:14:21','1976-10-23 07:41:03'),(30,'qromaguera@mante.org','$2y$10$.76yvM86uzSjfUN9BsiZO.daJXsy94iHG7pUH7eJzkf.7MTIM.Lxa','Alford Schultz','140 Swaniawski Alley\nFranciscachester, WV 24307',1,'1-565-365-4240 x442','user/default.png','ADMIN',1,'1999-04-17 08:13:45',NULL,NULL,'2002-01-27 11:36:43','2013-01-22 07:07:19'),(31,'misty.block@lesch.com','$2y$10$NPAqNCLsAkq0OfziW2OY6.4EnhJ1FIQT05JzPqGhF9QP131rwV.Qi','Winston Hudson','199 Leora Springs\nEast Ernieville, WY 90048',0,'272-360-6437 x220','user/default.png','ADMIN',1,'2013-08-28 19:29:36',NULL,NULL,'2015-09-23 19:45:35','1978-12-01 19:20:28'),(32,'parmstrong@bradtke.net','$2y$10$rztA0iQhjr5Wnkh32toMMOAM.KOcviJmOk9VvUCLEw.1zlVrR6TvG','Jerry Flatley I','6186 Kutch Tunnel Suite 042\nEast Ilaside, FL 53040',1,'519-791-6252','user/default.png','ADMIN',0,'2008-06-20 03:04:09',NULL,NULL,'1982-03-31 05:03:55','1970-07-16 01:40:15'),(33,'jayda.leannon@gmail.com','$2y$10$LVNwUBG87AfikzfEpD7HLe8niHA4KK7d0vzV8V3XetxhkvK9NJ0vW','Roscoe Langosh','142 Gilbert Avenue Apt. 589\nBruenport, MT 11708',1,'443-581-0939','user/default.png','UMUM',0,'1982-10-23 13:25:13',NULL,NULL,'2016-09-03 20:54:21','1988-01-30 23:42:02'),(34,'lily10@yahoo.com','$2y$10$tRAWUB7NYZu0h2bQLl/QceGSPPO/kpUnO2oNpgKa0D38LqjDB58Z.','Isadore Wisozk','6842 Luettgen Pass Apt. 029\nEast Margie, MO 90380',1,'+1 (703) 500-9251','user/default.png','LEMBAGA',1,'1974-04-07 15:36:43',NULL,NULL,'2018-07-28 11:13:15','1979-05-20 10:38:10'),(35,'littel.hilma@hotmail.com','$2y$10$9EmzozRZS4fOesfME.H5Pu4tZDqfE9gBMg/95.oLazr3lg4XlWqrq','Prof. Selmer Reilly','6924 Mabelle Fort Apt. 778\nLake Melisamouth, AK 24692-7778',0,'408.576.1057 x7023','user/default.png','UMUM',1,'2016-12-19 13:40:26',NULL,NULL,'1973-05-18 21:58:11','2008-07-26 01:10:53'),(36,'beer.izaiah@haag.com','$2y$10$O2s6XK0MJLzdFVpP0PoJB.49PXv9BSJ2V.kYov382A5yI4MJd6l7q','Adeline Trantow','50768 McCullough Drive\r\nSchambergerfurt, ND 27478-2898',1,'123135151','1563042354_avatar-girl.png','UMUM',0,'2014-06-01 01:10:15',NULL,NULL,'1993-08-17 10:03:11','2019-07-13 18:25:54'),(37,'alysa98@yahoo.com','$2y$10$XuP5cjl4H9m74ICDwk9dY.Sms354s/qkrMGtHvaxGlt3QEDiwHjtG','Sofia Yundt PhD','98057 Schumm Via Suite 469\nWest Mikelview, WY 29081-4038',0,'1-818-891-6925 x501','user/default.png','LEMBAGA',1,'1993-10-07 10:58:55',NULL,NULL,'1985-06-12 07:32:57','1988-12-18 19:14:40'),(38,'lhane@yahoo.com','$2y$10$i7.mwIl4C12zI/VmrRH84O8UO5WUv0k4KVnXHuhqmYLskhsw0udmm','Florian Kihn','4147 Gennaro Locks Suite 649\nEast Alenaport, TN 82593',1,'+1 (721) 781-7564','user/default.png','ADMIN',0,'2016-05-09 09:50:06',NULL,NULL,'2007-04-16 01:12:21','1989-12-18 17:33:44'),(39,'kflatley@hotmail.com','$2y$10$d/szSkjcm/qw1ZuENLQUjePy7avwNi85HIRna4YGK5s9jCQW720NO','Dessie Raynor','8548 Winfield Glens Apt. 450\nAndersonview, HI 37256-4050',1,'1-689-919-2223','user/default.png','LEMBAGA',0,'1979-04-13 19:20:01',NULL,NULL,'2014-02-20 14:29:17','2013-09-11 07:42:53'),(40,'schmeler.arjun@schmeler.biz','$2y$10$Lz.E7GSH1GO9KGZBsY2zv.2r8ubYvYV4FoQt7XSMc3X8rezVsTnAu','Kane Lebsack','207 Reynolds Meadow\nLake Enrique, FL 16631',1,'596-690-7893 x47718','user/default.png','STAFF',1,'1974-06-26 20:46:42',NULL,NULL,'1986-07-24 11:24:43','2007-02-11 14:49:05'),(41,'luettgen.coy@wiegand.com','$2y$10$.tVhpyQGDjH2wPEiJHAnw.AQ/5J7VL2HYLhugMuNvtrSROAoh.xUe','Raphael Smith','66096 Adell Estates\nLake Williebury, AR 90478',1,'567-345-1168 x955','user/default.png','STAFF',0,'2006-12-06 15:59:22',NULL,NULL,'2004-11-15 01:03:36','2009-03-10 08:34:50'),(42,'noemi66@gmail.com','$2y$10$Qb1E5Z0urPC9/z8p9SCW7uRjIBusQa4tyV7AX/VKWYV.XA3lo21fm','Angelita Bode','51131 Keyshawn Freeway\nMannmouth, MD 10534',1,'345-633-1920 x881','user/default.png','ADMIN',1,'1999-11-10 23:17:49',NULL,NULL,'1999-05-24 01:05:04','2004-08-30 12:17:11'),(43,'fkunze@yahoo.com','$2y$10$XYju8rlzI8NjuoeZkht1OOk2gW6gOvHr/16ct4VheAcUsrzECTe.W','Prof. Denis Schinner','54873 Kris Loaf\nDaughertyberg, NY 36770',0,'(914) 614-1632 x60857','user/default.png','UMUM',0,'2014-12-01 06:18:52',NULL,NULL,'1999-10-26 13:19:19','1983-06-23 05:51:12'),(44,'emilia34@rohan.org','$2y$10$8x.UJAr2ymXTRGLc2cZC3.XtxQPznjOQVRiIw.MoVLeXHrheUaNpW','Giovanny Lueilwitz','93681 Ava Expressway Apt. 879\nHilmaborough, TN 91165-2241',1,'+1-675-739-2730','user/default.png','UMUM',0,'1995-11-15 04:59:26',NULL,NULL,'1974-12-12 08:31:40','1971-10-02 00:44:34'),(45,'sabryna.murray@hotmail.com','$2y$10$Fy49jU46n3uOeBhu2fYSTueiq9ZCImBz3nPygPzT7Oqz5/L6jNITi','Daniela Powlowski II','40004 McKenzie Lock\nSwiftside, VT 97197-7406',0,'(712) 494-9878 x66409','user/default.png','ADMIN',0,'1996-08-25 18:49:09',NULL,NULL,'1989-09-30 02:03:23','1974-03-12 09:01:07'),(46,'becker.tracy@oberbrunner.com','$2y$10$VWrfTtBRyUeZllZeG81B9O8RsPe8fAScYQvGMBpeFj5pgGEt2gzTe','Dolly Hansen','9558 Wolf Ville Apt. 337\nMosciskifort, NH 46759-8403',1,'+1 (653) 899-3508','user/default.png','LEMBAGA',1,'2005-06-12 17:19:02',NULL,NULL,'1980-10-23 11:01:49','2016-05-21 12:33:38'),(47,'antonetta86@ohara.com','$2y$10$m1RrYZtB4A2pFCs9gkdgYuY.Xkh5CIIlYjojVaUZR8gXXrL.2/5SG','Derick Will V','60656 Kiehn Knolls Suite 785\nPort Clairemouth, AZ 12474-8193',1,'+1-393-964-0359','user/default.png','UMUM',1,'1998-06-18 13:55:22',NULL,NULL,'1984-05-02 03:37:25','1973-09-11 22:36:56'),(48,'kirsten.bernier@ohara.org','$2y$10$P8PjrO9u3W/a2MycGqKXU.pbuvaTb8WJQ.4o4fiDoJvSlsuS7fkM2','Dr. Gordon Koss','110 Nicholaus Springs\nNorth Oranton, MD 57454-4574',1,'905.838.9997 x419','user/default.png','UMUM',0,'1982-10-05 15:59:14',NULL,NULL,'1984-03-10 05:41:33','1985-04-27 03:46:40'),(49,'lemke.marcella@gaylord.biz','$2y$10$.PMzOA1ue5vfhfCCQcxrv.gavr.gib9pHRGTtowUsFK4lTYwwN6Mu','Declan Wilderman PhD','337 Lesly Field Suite 657\nHintzborough, TX 32559-3051',1,'673-626-0073 x6971','user/default.png','LEMBAGA',1,'2017-07-07 19:01:15',NULL,NULL,'2012-06-11 19:26:37','2003-06-13 09:55:23'),(50,'florine.ward@kunze.biz','$2y$10$egJhRLvwoE3Brp8uBSP7W.tB.dXZMZct8nuSIxlgpuF1dv0T7wX72','Carissa Gusikowski','291 Ottilie Walks\nNew Floy, WY 76078',0,'494-409-5804 x6763','user/default.png','STAFF',0,'1989-03-23 10:26:44',NULL,NULL,'1982-07-06 07:50:13','1977-12-22 15:31:27'),(51,'eunice81@gmail.com','$2y$10$2iIaF9eDlzytoAMgl/PgUOaU6Gm9RineLU4uSV9vpYbjS23B9vYrm','Shemar Reichel','7013 Alexanne Mountain\nEast Morganchester, OR 96024-2508',1,'790-342-4077','user/default.png','UMUM',1,'2005-10-21 03:58:00',NULL,NULL,'1992-02-27 10:26:28','1981-04-02 19:06:22'),(52,'lstroman@gmail.com','$2y$10$fa6YLPuTwVnO4x6CcvWTWOi7EmvkBFp4bodOvP2KfybAyMAjwm9hS','Vance Cormier','452 Lueilwitz Camp\nLabadiefurt, MI 81006',1,'694.283.1335 x4446','user/default.png','STAFF',0,'1992-03-20 01:28:11',NULL,NULL,'1987-01-19 21:27:28','2004-04-05 06:25:21'),(53,'meghan.satterfield@luettgen.com','$2y$10$jqVQ5rkqmwt6HpJ/9joL3uKgrcEsRsxveBK1oCMz6EAwgGdASaDAm','Nestor Eichmann','251 Margaretta Manors Suite 916\nJovannyshire, MI 14843',0,'+1.396.749.0261','user/default.png','STAFF',1,'1971-10-03 22:07:35',NULL,NULL,'1979-11-10 05:04:22','1995-05-19 06:36:23'),(54,'shanie.hermiston@christiansen.com','$2y$10$.kTJNLcf4eSjbSk6zKJ/dOxzIY5ZI7iqlyKPP5bcTyVrCymNyPbPy','Dr. Laurine Marks','206 Pouros Drives\nWest Gregorio, NY 81203-1503',1,'(407) 776-2692 x4611','user/default.png','ADMIN',1,'1983-12-07 12:26:08',NULL,NULL,'1988-10-16 00:10:47','2016-11-16 04:05:42'),(55,'lembaga@gmail.com','$2y$10$USqdVfCEZxVLkVTMbLU5SeopuXXA2TF8MSQmCQ4sNcWi3Z4ELL83C','Test Lembaga',NULL,NULL,NULL,NULL,'LEMBAGA',NULL,NULL,NULL,NULL,'2019-07-10 16:46:59','2019-07-10 16:46:59'),(56,'lembagalagi@gmail.com','$2y$10$.nzgM.a5PTyJUEHsJ81KwONLafBNSWxX8ShaC8j.xAPxjueRN7UvW','Test Lembaga LAgi',NULL,NULL,NULL,NULL,'LEMBAGA',NULL,NULL,NULL,NULL,'2019-07-10 16:53:10','2019-07-10 16:53:10'),(57,'relasilembaga@gmail.com','$2y$10$oXwng6DewStyXavSsMz/8uzvXJ.qu1X/cE6ur2wfZ0yIyWYE9tDUq','test relasi lembaga',NULL,NULL,NULL,NULL,'LEMBAGA',NULL,NULL,NULL,NULL,'2019-07-10 17:23:12','2019-07-10 17:23:12'),(58,'relasilembagalagi@gmail.com','$2y$10$D5MohNO2Re6L3fF/6dV15Omu5ODVRykAORRCek3ON2R3oahrSVKrq','test relasi lembaga lagi',NULL,NULL,NULL,NULL,'LEMBAGA',NULL,NULL,NULL,NULL,'2019-07-10 17:26:40','2019-07-10 17:26:40'),(59,'bukanlembaga@gmail.com','$2y$10$XO5RFtPYE4Qy.CDyTuIJlu83kjufwuTuq4rXxJH2xxeShwHqJYQlK','registrasi bukan lembaga',NULL,NULL,NULL,NULL,'UMUM',NULL,NULL,NULL,NULL,'2019-07-10 17:28:33','2019-07-10 17:28:33'),(60,'kpmd@gmail.com','$2y$10$cOGLsrGKRwxKzvDEIczlHujHpHlQgyYTu8N9YHuPfTFeNFW2/Q2vi','KPMD - Imam Firmansyah','Jl. Usman Dehir No. 86 Limo Depok',1,'085781200013','1563034878_avatar-boy.png','LEMBAGA',1,NULL,NULL,'QyhEhOOw3X5JM9FSTSTtubV6Qd2m6pS4KzZZZvOYdDv9fN26TLMyChRsAKly','2019-07-13 14:47:59','2019-07-13 18:57:23');
