-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2022 at 01:51 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rayyan_medical_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_barang`
--

CREATE TABLE `data_barang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenisBarang_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `distributor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `tgl_keluar` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_barang`
--

INSERT INTO `data_barang` (`id`, `jenisBarang_id`, `user_id`, `distributor_id`, `qty`, `tgl_masuk`, `tgl_keluar`, `created_at`, `updated_at`) VALUES
(2, 1, 2, 1, 20, '2021-11-24', NULL, '2021-11-24 02:16:26', '2021-11-24 02:16:26'),
(4, 1, 2, NULL, 20, NULL, '2021-11-24', '2021-11-24 02:17:40', '2021-11-24 02:17:40');

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`id`, `name`, `vendor`, `email`, `no_telp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Wulan Aryani', 'UD Hutapea Pudjiastuti', 'safitri.gina@example.com', '0879 4749 636', NULL, '2021-11-23 23:44:38', '2021-11-23 23:44:38'),
(2, 'Jarwa Wasita M.Kom.', 'CV Firgantoro Tbk', 'kuswandari.karsa@example.net', '0567 1404 175', NULL, '2021-11-23 23:44:38', '2021-11-23 23:44:38'),
(3, 'Viman Adriansyah', 'PD Melani Prayoga Tbk', 'indah.padmasari@example.com', '(+62) 831 870 120', NULL, '2021-11-23 23:44:38', '2021-11-23 23:44:38'),
(4, 'Sakura Juli Zulaika S.E.I', 'PD Mulyani Tbk', 'kezia12@example.com', '0264 0201 822', NULL, '2021-11-23 23:44:38', '2021-11-23 23:44:38'),
(5, 'Sakura Kuswandari S.IP', 'PD Nababan', 'zizi.kusmawati@example.com', '0989 5273 658', NULL, '2021-11-23 23:44:38', '2021-11-23 23:44:38'),
(6, 'Daruna Artanto Simbolon', 'PD Farida Saptono', 'permadi.luluh@example.com', '(+62) 766 0268 1306', NULL, '2021-11-23 23:44:38', '2021-11-23 23:44:38'),
(7, 'Tania Andriani', 'Perum Yuliarti (Persero) Tbk', 'rini.putra@example.com', '(+62) 930 7864 5101', NULL, '2021-11-23 23:44:38', '2021-11-23 23:44:38'),
(8, 'Ida Paulin Rahayu', 'UD Yulianti Puspasari (Persero) Tbk', 'yulianti.vera@example.net', '(+62) 778 8135 1259', NULL, '2021-11-23 23:44:38', '2021-11-23 23:44:38'),
(9, 'Cinthia Wirda Kuswandari', 'PD Latupono', 'lurhur.narpati@example.net', '(+62) 24 0137 8127', NULL, '2021-11-23 23:44:38', '2021-11-23 23:44:38'),
(10, 'Gaman Wijaya S.Kom', 'CV Mandasari Mustofa', 'firmansyah.umi@example.com', '(+62) 588 4740 809', NULL, '2021-11-23 23:44:38', '2021-11-23 23:44:38');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_barang`
--

CREATE TABLE `jenis_barang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_barang` int(11) NOT NULL,
  `nama_barang` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stok` int(11) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_barang`
--

INSERT INTO `jenis_barang` (`id`, `kode_barang`, `nama_barang`, `image`, `stok`, `harga`, `created_at`, `updated_at`) VALUES
(1, 101, 'Tabung Oksigen m2', 'foto-barang/4gOpgDbltgwQzsrBHSF0V9Gn4ExR0svwA9Lj8PIm.png', 100, 650000, '2021-11-24 02:14:36', '2021-11-24 02:14:36'),
(2, 102, 'Tabung Oksigen m3', 'foto-barang/yV0rsFolLMjx5ZP4a9bvf4aTzmhO3wQx2p6Kj9vT.png', 50, 700000, '2021-11-24 02:21:24', '2021-11-24 02:21:24');

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
(5, '2021_10_17_152736_add_admin_to_user_table', 1),
(6, '2021_10_21_130351_add_iskaryawan_to_tabel_user', 1),
(7, '2021_10_21_134656_create_distributor_table', 1),
(8, '2021_10_28_074004_add_table_barang_to_database', 1),
(9, '2021_10_28_091404_add_table_jenis_barang_to_database', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `is_karyawan` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `image`, `email`, `password`, `alamat`, `no_telp`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `is_admin`, `is_karyawan`) VALUES
(1, 'Daffa Fathan', 'Fanthom', NULL, 'daffa@gmail.com', '$2y$10$b5dbE/jUxDdrUMAqnwcz3.NThuPWQse/bdFcssecKPjVmeb8KVRMC', 'Disini', '+62123456789', NULL, NULL, '2021-11-23 23:44:38', '2021-11-23 23:44:38', 1, 0),
(2, 'Grey', 'Grey', NULL, 'grey@gmail.com', '$2y$10$e8Pi1B8qSGUJsDATPeijaeiYSXI6BEw7w1QQWLm83pp6ykqFFkxZ6', 'Disini', '+62123456787', NULL, NULL, '2021-11-23 23:44:38', '2021-11-23 23:44:38', 0, 1),
(3, 'Iko', 'Koko', 'foto-user/NyrdDtkR8I0Pb3W3S8oDQTYZgLH3e4tGxZhe8yrD.png', 'iko@gmail.com', '$2y$10$YqRqDDGNhF4RGQyImSGEl.MPgM4mDgqV94BA6XtqbibanY91Kv1dm', 'Disini', '(+62) 123456789', NULL, NULL, '2021-11-24 02:23:16', '2021-11-24 02:23:16', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `distributor_email_unique` (`email`),
  ADD UNIQUE KEY `distributor_no_telp_unique` (`no_telp`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jenis_barang`
--
ALTER TABLE `jenis_barang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jenis_barang_kode_barang_unique` (`kode_barang`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_no_telp_unique` (`no_telp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_barang`
--
ALTER TABLE `data_barang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `distributor`
--
ALTER TABLE `distributor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_barang`
--
ALTER TABLE `jenis_barang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
