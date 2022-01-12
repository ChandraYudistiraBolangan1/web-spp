-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 12, 2022 at 01:31 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_spp`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kelas` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kompetensi_keahlian` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `kompetensi_keahlian`, `created_at`, `updated_at`) VALUES
(2, 'X RPL 2', 'Rekayasa Perangkat Lunak', '2021-07-20 02:19:17', '2021-07-20 02:19:17'),
(3, 'X MM', 'Multimedia', '2021-07-20 02:19:17', '2021-07-20 02:19:17'),
(4, 'XI RPL 2', 'Rekayasa Perangkat Lunak', '2021-07-20 03:30:11', '2021-07-20 03:30:11');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_07_01_123554_create_petugas_table', 1),
(6, '2021_07_01_123659_create_kelas_table', 1),
(7, '2021_07_01_123746_create_spp_table', 1),
(8, '2021_07_10_224442_create_permission_tables', 1),
(9, '2021_07_15_072638_create_siswa_table', 1),
(10, '2021_07_15_072759_create_pembayaran_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 15),
(3, 'App\\Models\\User', 16),
(3, 'App\\Models\\User', 17),
(3, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 19);

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
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_pembayaran` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `nisn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_bayar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bulan_bayar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_bayar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_bayar` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `kode_pembayaran`, `petugas_id`, `siswa_id`, `nisn`, `tanggal_bayar`, `bulan_bayar`, `tahun_bayar`, `jumlah_bayar`, `created_at`, `updated_at`) VALUES
(6, 'SPPRXW1LN', 5, 8, '1010101', '2021-12-22 16:11:43', 'September', '2021', 170000, '2021-12-22 09:11:43', '2021-12-22 09:11:43'),
(7, 'SPPRF0EMY', 5, 8, '1010101', '2021-12-22 16:12:47', 'Januari', '2021', 170000, '2021-12-22 09:12:47', '2021-12-22 09:12:47'),
(8, 'SPPRGN4G4', 5, 8, '1010101', '2021-12-22 16:13:08', 'Februari', '2021', 170000, '2021-12-22 09:13:08', '2021-12-22 09:13:08'),
(9, 'SPPROO4U5', 5, 8, '1010101', '2021-12-22 16:13:32', 'Maret', '2021', 170000, '2021-12-22 09:13:32', '2021-12-22 09:13:32'),
(10, 'SPPRTUJZX', 5, 8, '1010101', '2021-12-22 16:13:50', 'April', '2021', 170000, '2021-12-22 09:13:50', '2021-12-22 09:13:50'),
(11, 'SPPRSCMMQ', 6, 12, '210012021', '2021-12-22 20:10:51', 'Januari', '2021', 170000, '2021-12-22 13:10:51', '2021-12-22 13:10:51'),
(12, 'SPPRYV331', 6, 11, '1291929', '2021-12-22 20:11:11', 'Januari', '2021', 170000, '2021-12-22 13:11:11', '2021-12-22 13:11:11'),
(13, 'SPPRM0YND', 6, 10, '120021021', '2021-12-22 20:11:22', 'Januari', '2021', 170000, '2021-12-22 13:11:22', '2021-12-22 13:11:22'),
(14, 'SPPRDMIPM', 6, 9, '102910', '2021-12-22 20:11:34', 'Januari', '2021', 170000, '2021-12-22 13:11:34', '2021-12-22 13:11:34'),
(15, 'SPPR8WQXY', 5, 12, '210012021', '2021-12-28 16:08:51', 'Februari', '2022', 175000, '2021-12-28 09:08:51', '2021-12-28 09:08:51');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'create-siswa', 'web', '2021-07-20 02:19:13', '2021-07-20 02:19:13'),
(2, 'read-siswa', 'web', '2021-07-20 02:19:13', '2021-07-20 02:19:13'),
(3, 'update-siswa', 'web', '2021-07-20 02:19:13', '2021-07-20 02:19:13'),
(4, 'delete-siswa', 'web', '2021-07-20 02:19:13', '2021-07-20 02:19:13'),
(5, 'create-users', 'web', '2021-07-20 02:19:13', '2021-07-20 02:19:13'),
(6, 'read-users', 'web', '2021-07-20 02:19:13', '2021-07-20 02:19:13'),
(7, 'update-users', 'web', '2021-07-20 02:19:13', '2021-07-20 02:19:13'),
(8, 'delete-users', 'web', '2021-07-20 02:19:13', '2021-07-20 02:19:13'),
(9, 'create-spp', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(10, 'read-spp', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(11, 'update-spp', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(12, 'delete-spp', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(13, 'create-kelas', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(14, 'read-kelas', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(15, 'update-kelas', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(16, 'delete-kelas', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(17, 'create-roles', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(18, 'read-roles', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(19, 'update-roles', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(20, 'delete-roles', 'web', '2021-07-20 02:19:15', '2021-07-20 02:19:15'),
(21, 'create-permissions', 'web', '2021-07-20 02:19:15', '2021-07-20 02:19:15'),
(22, 'read-permissions', 'web', '2021-07-20 02:19:15', '2021-07-20 02:19:15'),
(23, 'update-permissions', 'web', '2021-07-20 02:19:15', '2021-07-20 02:19:15'),
(24, 'delete-permissions', 'web', '2021-07-20 02:19:15', '2021-07-20 02:19:15'),
(25, 'create-pembayaran', 'web', '2021-07-20 02:19:15', '2021-07-20 02:19:15'),
(26, 'read-pembayaran', 'web', '2021-07-20 02:19:15', '2021-07-20 02:19:15'),
(28, 'delete-pembayaran', 'web', '2021-07-20 02:19:15', '2021-07-20 02:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kode_petugas` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_petugas` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id`, `user_id`, `kode_petugas`, `nama_petugas`, `jenis_kelamin`, `created_at`, `updated_at`) VALUES
(5, 12, 'PTGRCOXGD', 'chandra yudistira bolangan', 'Laki-laki', '2021-12-22 09:00:01', '2021-12-22 09:01:13'),
(6, 14, 'PTGRM1TRJ', 'chandra bolangan', 'Laki-laki', '2021-12-22 09:06:54', '2021-12-22 09:06:54'),
(7, 19, 'PTGRPQOK5', 'adminpetugas', 'Laki-laki', '2022-01-12 00:02:47', '2022-01-12 00:02:47');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-07-20 02:19:15', '2021-07-20 02:19:15'),
(2, 'petugas', 'web', '2021-07-20 02:19:16', '2021-07-20 02:19:16'),
(3, 'siswa', 'web', '2021-07-20 02:19:17', '2021-07-20 02:19:17');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(28, 1),
(2, 2),
(10, 2),
(14, 2),
(26, 2);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_siswa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nisn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nis` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_siswa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telepon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `kode_siswa`, `nisn`, `nis`, `nama_siswa`, `jenis_kelamin`, `alamat`, `no_telepon`, `user_id`, `kelas_id`, `created_at`, `updated_at`) VALUES
(8, 'SSWRJCIIV', '1010101', '1010101', 'chandra', 'Laki-laki', 'jalan blablabla', '0091029021', 13, 2, '2021-12-22 09:04:14', '2021-12-22 09:04:14'),
(9, 'SSWR8SWAH', '102910', '10291209', 'winda', 'Laki-laki', 'jlawdawdad', '0120120210', 15, 2, '2021-12-22 13:07:45', '2021-12-22 13:07:45'),
(10, 'SSWRWZWWW', '120021021', '1200120210', 'citra', 'Perempuan', 'adosoadkaw', '102021010', 16, 3, '2021-12-22 13:08:26', '2021-12-22 13:08:26'),
(11, 'SSWRRYGIG', '1291929', '2919219', 'yusuf', 'Laki-laki', 'awdadawd', '0210210210', 17, 3, '2021-12-22 13:08:53', '2021-12-22 13:08:53'),
(12, 'SSWR3LFD7', '210012021', '12010201', 'komis', 'Laki-laki', 'ajsdjasdjad', '2100120', 18, 3, '2021-12-22 13:09:17', '2021-12-22 13:09:17');

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nominal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id`, `tahun`, `nominal`, `created_at`, `updated_at`) VALUES
(1, '2020', '165000', '2021-07-20 02:19:15', '2021-07-20 02:19:15'),
(2, '2021', '170000', '2021-07-20 02:19:15', '2021-07-20 02:19:15'),
(3, '2022', '175000', '2021-07-20 02:19:15', '2021-07-20 02:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(12, 'chandrayudistira', 'Chandrayudistira992@gmail.com', NULL, '$2y$10$Dzt0saDfNslT46AMxqY8su2Ft1thqAzj/ygTpzzv5lHlCuD6nSjOm', NULL, NULL, NULL, '2021-12-22 09:00:01', '2021-12-22 09:00:28'),
(13, 'chandra', 'Chandrayudistira909@gmail.com', NULL, '$2y$10$qezEWAPu.l8c3zcTWpuO.eUwyA2rUzc9SBuJHtYl6thO1CR7SHmsW', NULL, NULL, NULL, '2021-12-22 09:04:14', '2021-12-22 09:04:42'),
(14, 'chandra123', 'Chandrayudistira909@example.com', NULL, '$2y$10$JNrAdPB9ud.AwzxSElxQmehKdflWUxTyFC1ako7Rp.8lFCqSoeJo.', NULL, NULL, NULL, '2021-12-22 09:06:54', '2021-12-22 09:07:23'),
(15, 'winda', NULL, NULL, '$2y$10$2qZL8tP1yGv5NyU9z7doPOluu269DKUkxUxdmx.Mok.ztHc63FIT6', NULL, NULL, NULL, '2021-12-22 13:07:45', '2021-12-22 13:07:45'),
(16, 'citra', NULL, NULL, '$2y$10$ewm4PzDVEdE8jjMakA/7YegHjX2.ftWLUU7mFEGFkJ49JxnnENiyq', NULL, NULL, NULL, '2021-12-22 13:08:26', '2021-12-22 13:08:26'),
(17, 'yusuf', NULL, NULL, '$2y$10$cqcaUaKSg0HqahKmms6sKO7/zBpLdTU/dniYIgzU5Emw68V/wZWN.', NULL, NULL, NULL, '2021-12-22 13:08:53', '2021-12-22 13:08:53'),
(18, 'komis', NULL, NULL, '$2y$10$/IpNG44kz/TPWiHP9LN/ieNrVSpfU88S5NE8zYrpugwA02sBVYBUW', NULL, NULL, NULL, '2021-12-22 13:09:17', '2021-12-22 13:09:17'),
(19, 'adminpetugas', NULL, NULL, '$2y$10$cUkGuBELPIpy3WBX56jrquoh2284gYMzZzZsx577iobA9yYi2eTeS', NULL, NULL, NULL, '2022-01-12 00:02:46', '2022-01-12 00:02:46');

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
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembayaran_petugas_id_foreign` (`petugas_id`),
  ADD KEY `pembayaran_siswa_id_foreign` (`siswa_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `petugas_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_user_id_foreign` (`user_id`),
  ADD KEY `siswa_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_petugas_id_foreign` FOREIGN KEY (`petugas_id`) REFERENCES `petugas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `petugas`
--
ALTER TABLE `petugas`
  ADD CONSTRAINT `petugas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
