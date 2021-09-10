-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 10 Sep 2021 pada 15.51
-- Versi server: 5.7.33
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bncc_trainer_final_project_2021`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `jumlah_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama_barang`, `harga_barang`, `jumlah_barang`, `foto_barang`, `kategori_id`, `created_at`, `updated_at`) VALUES
(1, 'An enormous puppy.', 46539, '2', 'https://via.placeholder.com/800x600.png/001100?text=product+quas', '8', '2021-09-10 08:06:03', '2021-09-10 08:06:03'),
(2, 'Oh, how I wish you.', 15954, '0', 'https://via.placeholder.com/800x600.png/007777?text=product+quas', '7', '2021-09-10 08:06:03', '2021-09-10 08:06:03'),
(3, 'Alice. \'Of course.', 47146, '1', 'https://via.placeholder.com/800x600.png/00ff88?text=product+modi', '10', '2021-09-10 08:06:03', '2021-09-10 08:27:35'),
(4, 'It did so indeed.', 65056, '4', 'https://via.placeholder.com/800x600.png/00eeff?text=product+sit', '9', '2021-09-10 08:06:03', '2021-09-10 08:47:07'),
(5, 'Queen put on one.', 19774, '5', 'https://via.placeholder.com/800x600.png/0077aa?text=product+quia', '9', '2021-09-10 08:06:03', '2021-09-10 08:06:03'),
(6, 'King. \'Nearly two.', 49556, '5', 'https://via.placeholder.com/800x600.png/00ff88?text=product+voluptate', '7', '2021-09-10 08:06:03', '2021-09-10 08:06:03'),
(7, 'I wonder?\' As she.', 61149, '0', 'https://via.placeholder.com/800x600.png/003355?text=product+dolor', '6', '2021-09-10 08:06:03', '2021-09-10 08:06:03'),
(8, 'NO mistake about.', 55103, '3', 'https://via.placeholder.com/800x600.png/0088cc?text=product+recusandae', '5', '2021-09-10 08:06:03', '2021-09-10 08:06:03'),
(9, 'Alice started to.', 12639, '1', 'https://via.placeholder.com/800x600.png/00aa99?text=product+facilis', '3', '2021-09-10 08:06:03', '2021-09-10 08:06:03'),
(10, 'Alice, as she went.', 10960, '4', 'https://via.placeholder.com/800x600.png/0088aa?text=product+omnis', '6', '2021-09-10 08:06:03', '2021-09-10 08:06:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'repellendus', '2021-09-10 08:05:52', '2021-09-10 08:05:52'),
(2, 'vel', '2021-09-10 08:05:52', '2021-09-10 08:05:52'),
(3, 'velit', '2021-09-10 08:05:52', '2021-09-10 08:05:52'),
(4, 'recusandae', '2021-09-10 08:05:52', '2021-09-10 08:05:52'),
(5, 'eum', '2021-09-10 08:05:52', '2021-09-10 08:05:52'),
(6, 'odit', '2021-09-10 08:05:52', '2021-09-10 08:05:52'),
(7, 'reiciendis', '2021-09-10 08:05:52', '2021-09-10 08:05:52'),
(8, 'dicta', '2021-09-10 08:05:52', '2021-09-10 08:05:52'),
(9, 'autem', '2021-09-10 08:05:52', '2021-09-10 08:05:52'),
(10, 'ipsum', '2021-09-10 08:05:52', '2021-09-10 08:05:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_28_171845_create_barang_table', 1),
(5, '2021_05_28_172029_create_kategori_table', 1),
(6, '2021_05_29_141159_create_pesanan_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jumlah_pesanan` int(11) NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `total_harga` double(8,2) NOT NULL,
  `nomor_invoice` int(11) NOT NULL,
  `status` enum('Accepted','Pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `id_barang`, `id_user`, `jumlah_pesanan`, `alamat`, `kode_pos`, `total_harga`, `nomor_invoice`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 2, 'Jalan Bahagia', 11475, 94292.00, 1893765898, 'Pending', '2021-09-10 08:27:34', '2021-09-10 08:27:34'),
(2, 4, 2, 3, 'Jalan Sempurna', 11783, 195168.00, 1070769723, 'Pending', '2021-09-10 08:47:07', '2021-09-10 08:47:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('Admin','Member') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Member',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `no_telepon`, `kode_user`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pak Gober', 'gober@gmail.com', NULL, '$2y$10$i/F/fz1jwsr02n5BfOCf..P4as2vesh43qWkA/7q8VRqNc/.H5pb6', '(+62) 225 5006 764', 'QMrwRjD', 'Admin', NULL, '2021-09-10 08:05:47', '2021-09-10 08:05:47'),
(2, 'Muhamad Ndaru', 'ndaru@gmail.com', NULL, '$2y$10$M5ZxMPFvrjzlTQDGgwJSUultnwgLk3LFLd8tO.kh9EHzO826IEcwS', '0583 4611 8592', 'OCEUjMV', 'Member', NULL, '2021-09-10 08:05:47', '2021-09-10 08:05:47'),
(3, 'Makuta Himawan Adriansyah S.Pt', 'nurdiyanti.jane@natsir.info', NULL, '$2y$10$99FNRbcWjVLhvoC2/dt5n.DN0bLRQHYUjUztkR4me9k0Z6QlqLTte', '(+62) 22 4898 5072', '7QtYlhD', 'Member', NULL, '2021-09-10 08:05:47', '2021-09-10 08:05:47'),
(4, 'Qori Handayani S.E.I', 'knasyiah@maryati.biz.id', NULL, '$2y$10$ys6ifJn6JxQvkO/o7hcyeuBdSiirQDjI1t3F.fAHvKKRS493J1Ula', '021 3152 114', '00bif1i', 'Member', NULL, '2021-09-10 08:05:47', '2021-09-10 08:05:47'),
(5, 'Mustofa Emas Mandala', 'gnashiruddin@yahoo.co.id', NULL, '$2y$10$e8ZBgz.VLdcu.HNOsZgtFeKcueHFzXeP9wcePXngpLVoJ4MRhj..S', '0891 016 773', 'IxxiAOc', 'Member', NULL, '2021-09-10 08:05:48', '2021-09-10 08:05:48'),
(6, 'Diana Kasiyah Mulyani', 'artawan.suartini@nuraini.my.id', NULL, '$2y$10$ggo7RyfoLEPkeV01CR7JGuwAG9jH5sDlGlVoK6gMlxOXCdfxCmCUe', '(+62) 948 3077 870', 'bYiZ5nE', 'Member', NULL, '2021-09-10 08:05:48', '2021-09-10 08:05:48'),
(7, 'Yuliana Queen Astuti', 'zelda78@gmail.com', NULL, '$2y$10$1UnFHpfaB060y.JvDSv/Ve4EvBGTxeaxIJHxjrX84iWNNFPwxGgaa', '027 1690 832', 'bnv1e1Y', 'Member', NULL, '2021-09-10 08:05:48', '2021-09-10 08:05:48'),
(8, 'Viman Rahman Rajasa S.Pd', 'kzulaika@gmail.co.id', NULL, '$2y$10$GsUZL11.6hsJTUcm3gt9F.iD2P9ICKEKpzFwhIomq0YTFckKgmEfS', '(+62) 758 3848 504', 'z6ylWVj', 'Member', NULL, '2021-09-10 08:05:48', '2021-09-10 08:05:48'),
(9, 'Lintang Agustina', 'ayu47@agustina.web.id', NULL, '$2y$10$4ynsdsO64oik7kq8/pwmVefICOc6gv0Yw5Hcvu7o3OHHx.dKQv/yS', '0241 1746 9416', 'AfMOziy', 'Member', NULL, '2021-09-10 08:05:48', '2021-09-10 08:05:48'),
(10, 'Ophelia Irma Halimah S.T.', 'kpadmasari@permata.asia', NULL, '$2y$10$TwWZ5k06sjKN36fXXypgeubQyEB7XP6iXg5es6Ecj/.wpE7vKhwxC', '0643 6896 261', 'yX0hHmv', 'Member', NULL, '2021-09-10 08:05:48', '2021-09-10 08:05:48');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
