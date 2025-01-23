-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Nov 2024 pada 12.55
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apartment_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2024-11-23-013637', 'App\\Database\\Migrations\\CreateUsersTable', 'default', 'App', 1732527183, 1),
(2, '2024-11-23-013647', 'App\\Database\\Migrations\\CreateRoomsTable', 'default', 'App', 1732527183, 1),
(3, '2024-11-23-013656', 'App\\Database\\Migrations\\CreateRatingsTable', 'default', 'App', 1732527183, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `sudah_sewa` varchar(255) NOT NULL,
  `mau_sewa` varchar(255) DEFAULT NULL,
  `rating` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `room_id`, `sudah_sewa`, `mau_sewa`, `rating`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 'yes', NULL, 4, '2024-11-25 10:08:55', '2024-11-25 10:08:55'),
(2, 8, 2, 'yes', NULL, 5, '2024-11-25 10:09:04', '2024-11-25 10:09:04'),
(3, 8, 3, 'yes', NULL, 5, '2024-11-25 10:09:16', '2024-11-25 10:09:16'),
(4, 8, 4, 'yes', NULL, 3, '2024-11-25 10:09:26', '2024-11-25 10:09:26'),
(5, 8, 5, 'yes', NULL, 2, '2024-11-25 10:09:36', '2024-11-25 10:09:36'),
(6, 8, 6, 'yes', NULL, 4, '2024-11-25 10:09:48', '2024-11-25 10:09:48'),
(7, 8, 7, 'yes', NULL, 5, '2024-11-25 10:09:59', '2024-11-25 10:09:59'),
(8, 8, 8, 'yes', NULL, 3, '2024-11-25 10:10:10', '2024-11-25 10:10:10'),
(9, 8, 9, 'yes', NULL, 4, '2024-11-25 10:10:20', '2024-11-25 10:10:20'),
(10, 8, 10, 'yes', NULL, 4, '2024-11-25 10:10:29', '2024-11-25 10:10:29'),
(11, 9, 1, 'yes', NULL, 3, '2024-11-25 10:12:07', '2024-11-25 10:12:07'),
(12, 9, 2, 'yes', NULL, 3, '2024-11-25 10:12:16', '2024-11-25 10:12:16'),
(13, 9, 3, 'yes', NULL, 4, '2024-11-25 10:12:24', '2024-11-25 10:12:24'),
(14, 9, 3, 'yes', NULL, 4, '2024-11-25 10:12:34', '2024-11-25 10:12:34'),
(15, 9, 4, 'yes', NULL, 5, '2024-11-25 10:12:44', '2024-11-25 10:12:44'),
(16, 9, 5, 'yes', NULL, 5, '2024-11-25 10:12:53', '2024-11-25 10:12:53'),
(17, 9, 6, 'yes', NULL, 4, '2024-11-25 10:13:17', '2024-11-25 10:13:17'),
(18, 9, 7, 'yes', NULL, 5, '2024-11-25 10:13:28', '2024-11-25 10:13:28'),
(19, 9, 8, 'yes', NULL, 4, '2024-11-25 10:13:44', '2024-11-25 10:13:44'),
(20, 9, 9, 'yes', NULL, 3, '2024-11-25 10:13:55', '2024-11-25 10:13:55'),
(21, 9, 10, 'yes', NULL, 4, '2024-11-25 10:14:04', '2024-11-25 10:14:04'),
(22, 10, 1, 'yes', NULL, 4, '2024-11-25 10:14:45', '2024-11-25 10:14:45'),
(23, 10, 2, 'yes', NULL, 3, '2024-11-25 10:14:56', '2024-11-25 10:14:56'),
(24, 10, 3, 'yes', NULL, 5, '2024-11-25 10:15:06', '2024-11-25 10:15:06'),
(25, 10, 4, 'yes', NULL, 2, '2024-11-25 10:15:17', '2024-11-25 10:15:17'),
(26, 10, 5, 'yes', NULL, 4, '2024-11-25 10:16:07', '2024-11-25 10:16:07'),
(27, 10, 6, 'yes', NULL, 3, '2024-11-25 10:16:26', '2024-11-25 10:16:26'),
(28, 10, 7, 'yes', NULL, 4, '2024-11-25 10:16:35', '2024-11-25 10:16:35'),
(29, 10, 8, 'yes', NULL, 3, '2024-11-25 10:16:44', '2024-11-25 10:16:44'),
(30, 10, 9, 'yes', NULL, 4, '2024-11-25 10:16:54', '2024-11-25 10:16:54'),
(31, 10, 10, 'yes', NULL, 3, '2024-11-25 10:17:01', '2024-11-25 10:17:01'),
(32, 11, 1, 'yes', NULL, 4, '2024-11-25 10:17:33', '2024-11-25 10:17:33'),
(33, 11, 2, 'yes', NULL, 4, '2024-11-25 10:17:41', '2024-11-25 10:17:41'),
(34, 11, 3, 'yes', NULL, 3, '2024-11-25 10:17:49', '2024-11-25 10:17:49'),
(35, 11, 4, 'yes', NULL, 5, '2024-11-25 10:18:05', '2024-11-25 10:18:05'),
(36, 11, 5, 'yes', NULL, 5, '2024-11-25 10:18:14', '2024-11-25 10:18:14'),
(37, 11, 6, 'yes', NULL, 4, '2024-11-25 10:19:07', '2024-11-25 10:19:07'),
(38, 11, 7, 'yes', NULL, 5, '2024-11-25 10:19:15', '2024-11-25 10:19:15'),
(39, 11, 8, 'yes', NULL, 2, '2024-11-25 10:19:30', '2024-11-25 10:19:30'),
(40, 11, 9, 'yes', NULL, 3, '2024-11-25 10:19:38', '2024-11-25 10:19:38'),
(41, 11, 10, 'yes', NULL, 2, '2024-11-25 10:19:47', '2024-11-25 10:19:47'),
(42, 12, 1, 'yes', NULL, 5, '2024-11-25 10:20:26', '2024-11-25 10:20:26'),
(43, 12, 2, 'yes', NULL, 5, '2024-11-25 10:20:37', '2024-11-25 10:20:37'),
(44, 12, 3, 'yes', NULL, 2, '2024-11-25 10:20:46', '2024-11-25 10:20:46'),
(45, 12, 4, 'yes', NULL, 4, '2024-11-25 10:20:54', '2024-11-25 10:20:54'),
(46, 12, 5, 'yes', NULL, 1, '2024-11-25 10:21:03', '2024-11-25 10:21:03'),
(47, 12, 6, 'yes', NULL, 4, '2024-11-25 10:21:22', '2024-11-25 10:21:22'),
(48, 12, 7, 'yes', NULL, 2, '2024-11-25 10:21:33', '2024-11-25 10:21:33'),
(49, 12, 8, 'yes', NULL, 2, '2024-11-25 10:21:42', '2024-11-25 10:21:42'),
(50, 12, 9, 'yes', NULL, 4, '2024-11-25 10:21:56', '2024-11-25 10:21:56'),
(51, 12, 10, 'yes', NULL, 1, '2024-11-25 10:24:58', '2024-11-25 10:24:58'),
(52, 13, 1, 'yes', NULL, 4, '2024-11-25 10:28:57', '2024-11-25 10:28:57'),
(53, 13, 2, 'yes', NULL, 2, '2024-11-25 10:29:05', '2024-11-25 10:29:05'),
(54, 13, 3, 'yes', NULL, 2, '2024-11-25 10:29:15', '2024-11-25 10:29:15'),
(55, 13, 4, 'yes', NULL, 3, '2024-11-25 10:29:23', '2024-11-25 10:29:23'),
(56, 13, 5, 'yes', NULL, 1, '2024-11-25 10:29:31', '2024-11-25 10:29:31'),
(57, 13, 6, 'yes', NULL, 4, '2024-11-25 10:29:50', '2024-11-25 10:29:50'),
(58, 13, 7, 'yes', NULL, 4, '2024-11-25 10:30:01', '2024-11-25 10:30:01'),
(59, 13, 8, 'yes', NULL, 3, '2024-11-25 10:30:13', '2024-11-25 10:30:13'),
(60, 13, 9, 'yes', NULL, 2, '2024-11-25 10:30:22', '2024-11-25 10:30:22'),
(61, 13, 10, 'yes', NULL, 4, '2024-11-25 10:33:03', '2024-11-25 10:33:03'),
(62, 14, 1, 'yes', NULL, 5, '2024-11-25 10:33:25', '2024-11-25 10:33:25'),
(63, 14, 2, 'yes', NULL, 4, '2024-11-25 10:33:34', '2024-11-25 10:33:34'),
(64, 14, 3, 'yes', NULL, 5, '2024-11-25 10:33:42', '2024-11-25 10:33:42'),
(65, 14, 4, 'yes', NULL, 5, '2024-11-25 10:33:50', '2024-11-25 10:33:50'),
(66, 14, 5, 'yes', NULL, 5, '2024-11-25 10:33:58', '2024-11-25 10:33:58'),
(67, 14, 6, 'yes', NULL, 5, '2024-11-25 10:34:17', '2024-11-25 10:34:17'),
(68, 14, 7, 'yes', NULL, 3, '2024-11-25 10:34:31', '2024-11-25 10:34:31'),
(69, 14, 8, 'yes', NULL, 3, '2024-11-25 10:34:39', '2024-11-25 10:34:39'),
(70, 14, 9, 'yes', NULL, 4, '2024-11-25 10:34:48', '2024-11-25 10:34:48'),
(71, 14, 10, 'yes', NULL, 5, '2024-11-25 10:34:56', '2024-11-25 10:34:56'),
(72, 14, 10, 'yes', NULL, 5, '2024-11-25 10:34:56', '2024-11-25 10:34:56'),
(73, 15, 1, 'yes', NULL, 4, '2024-11-25 10:35:40', '2024-11-25 10:35:40'),
(74, 15, 2, 'yes', NULL, 2, '2024-11-25 10:35:48', '2024-11-25 10:35:48'),
(75, 15, 3, 'yes', NULL, 4, '2024-11-25 10:35:55', '2024-11-25 10:35:55'),
(76, 15, 4, 'yes', NULL, 5, '2024-11-25 10:36:02', '2024-11-25 10:36:02'),
(77, 15, 5, 'yes', NULL, 4, '2024-11-25 10:36:13', '2024-11-25 10:36:13'),
(78, 15, 6, 'yes', NULL, 3, '2024-11-25 10:36:32', '2024-11-25 10:36:32'),
(79, 15, 7, 'yes', NULL, 2, '2024-11-25 10:36:40', '2024-11-25 10:36:40'),
(80, 15, 8, 'yes', NULL, 4, '2024-11-25 10:36:49', '2024-11-25 10:36:49'),
(81, 15, 9, 'yes', NULL, 4, '2024-11-25 10:36:58', '2024-11-25 10:36:58'),
(82, 15, 10, 'yes', NULL, 4, '2024-11-25 10:37:05', '2024-11-25 10:37:05'),
(83, 16, 1, 'yes', NULL, 4, '2024-11-25 10:37:45', '2024-11-25 10:37:45'),
(84, 16, 2, 'yes', NULL, 4, '2024-11-25 10:37:52', '2024-11-25 10:37:52'),
(85, 16, 3, 'yes', NULL, 3, '2024-11-25 10:38:01', '2024-11-25 10:38:01'),
(86, 16, 4, 'yes', NULL, 5, '2024-11-25 10:38:10', '2024-11-25 10:38:10'),
(87, 16, 5, 'yes', NULL, 4, '2024-11-25 10:38:18', '2024-11-25 10:38:18'),
(88, 16, 6, 'yes', NULL, 4, '2024-11-25 10:38:37', '2024-11-25 10:38:37'),
(89, 16, 7, 'yes', NULL, 5, '2024-11-25 10:38:45', '2024-11-25 10:38:45'),
(90, 16, 8, 'yes', NULL, 4, '2024-11-25 10:38:58', '2024-11-25 10:38:58'),
(91, 16, 9, 'yes', NULL, 3, '2024-11-25 10:39:07', '2024-11-25 10:39:07'),
(92, 16, 10, 'yes', NULL, 4, '2024-11-25 10:39:17', '2024-11-25 10:39:17'),
(93, 17, 1, 'yes', NULL, 5, '2024-11-25 10:39:35', '2024-11-25 10:39:35'),
(94, 17, 2, 'yes', NULL, 4, '2024-11-25 10:39:42', '2024-11-25 10:39:42'),
(95, 17, 3, 'yes', NULL, 2, '2024-11-25 10:39:53', '2024-11-25 10:39:53'),
(96, 17, 4, 'yes', NULL, 3, '2024-11-25 10:40:00', '2024-11-25 10:40:00'),
(97, 17, 5, 'yes', NULL, 3, '2024-11-25 10:40:08', '2024-11-25 10:40:08'),
(98, 17, 10, 'yes', NULL, 4, '2024-11-25 10:40:21', '2024-11-25 10:40:21'),
(99, 17, 8, 'yes', NULL, 2, '2024-11-25 10:40:34', '2024-11-25 10:40:34'),
(100, 17, 6, 'yes', NULL, 2, '2024-11-25 10:40:50', '2024-11-25 10:40:50'),
(101, 17, 6, 'yes', NULL, 5, '2024-11-25 10:41:21', '2024-11-25 10:41:21'),
(102, 17, 7, 'yes', NULL, 4, '2024-11-25 10:42:59', '2024-11-25 10:42:59'),
(103, 17, 9, 'yes', NULL, 4, '2024-11-25 10:43:13', '2024-11-25 10:43:13'),
(104, 2, 1, 'yes', NULL, 5, '2024-11-25 10:45:00', '2024-11-25 10:45:00'),
(105, 2, 2, 'yes', NULL, 2, '2024-11-25 10:45:08', '2024-11-25 10:45:08'),
(106, 2, 4, 'yes', NULL, 4, '2024-11-25 10:45:18', '2024-11-25 10:45:18'),
(107, 2, 5, 'yes', NULL, 4, '2024-11-25 10:45:34', '2024-11-25 10:45:34'),
(108, 2, 6, 'yes', NULL, 1, '2024-11-25 10:45:44', '2024-11-25 10:45:44'),
(109, 2, 8, 'yes', NULL, 5, '2024-11-25 10:45:54', '2024-11-25 10:45:54'),
(110, 2, 9, 'yes', NULL, 5, '2024-11-25 10:46:02', '2024-11-25 10:46:02'),
(111, 2, 10, 'yes', NULL, 5, '2024-11-25 10:46:10', '2024-11-25 10:46:10'),
(112, 18, 2, 'yes', NULL, 3, '2024-11-25 10:54:10', '2024-11-25 10:54:10'),
(113, 18, 3, 'yes', NULL, 5, '2024-11-25 10:54:20', '2024-11-25 10:54:20'),
(114, 18, 4, 'yes', NULL, 4, '2024-11-25 10:54:30', '2024-11-25 10:54:30'),
(115, 18, 5, 'yes', NULL, 3, '2024-11-25 10:54:42', '2024-11-25 10:54:42'),
(116, 18, 6, 'yes', NULL, 2, '2024-11-25 10:54:52', '2024-11-25 10:54:52'),
(117, 18, 7, 'yes', NULL, 4, '2024-11-25 10:55:07', '2024-11-25 10:55:07'),
(118, 18, 8, 'yes', NULL, 4, '2024-11-25 10:55:16', '2024-11-25 10:55:16'),
(119, 18, 9, 'yes', NULL, 4, '2024-11-25 10:55:25', '2024-11-25 10:55:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekom_rooms`
--

CREATE TABLE `rekom_rooms` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rekom_rooms`
--

INSERT INTO `rekom_rooms` (`id`, `user_id`, `room_id`, `created_at`) VALUES
(11, 9, 2, '2024-11-25 10:11:15'),
(12, 9, 3, '2024-11-25 10:11:15'),
(13, 9, 7, '2024-11-25 10:11:15'),
(14, 9, 1, '2024-11-25 10:11:15'),
(15, 9, 6, '2024-11-25 10:11:15'),
(16, 9, 9, '2024-11-25 10:11:15'),
(17, 9, 10, '2024-11-25 10:11:15'),
(18, 9, 4, '2024-11-25 10:11:15'),
(19, 9, 8, '2024-11-25 10:11:15'),
(20, 9, 5, '2024-11-25 10:11:15'),
(31, 10, 7, '2024-11-25 10:15:38'),
(32, 10, 6, '2024-11-25 10:15:38'),
(33, 10, 10, '2024-11-25 10:15:38'),
(34, 10, 5, '2024-11-25 10:15:38'),
(35, 10, 8, '2024-11-25 10:15:38'),
(36, 10, 9, '2024-11-25 10:15:38'),
(68, 13, 10, '2024-11-25 10:32:45'),
(69, 15, 1, '2024-11-25 10:35:26'),
(70, 15, 6, '2024-11-25 10:35:26'),
(71, 15, 7, '2024-11-25 10:35:26'),
(72, 15, 4, '2024-11-25 10:35:26'),
(73, 15, 3, '2024-11-25 10:35:26'),
(74, 15, 2, '2024-11-25 10:35:26'),
(75, 15, 10, '2024-11-25 10:35:26'),
(76, 15, 9, '2024-11-25 10:35:26'),
(77, 15, 5, '2024-11-25 10:35:26'),
(78, 15, 8, '2024-11-25 10:35:26'),
(79, 16, 1, '2024-11-25 10:37:30'),
(80, 16, 4, '2024-11-25 10:37:30'),
(81, 16, 6, '2024-11-25 10:37:30'),
(82, 16, 3, '2024-11-25 10:37:30'),
(83, 16, 7, '2024-11-25 10:37:30'),
(84, 16, 10, '2024-11-25 10:37:30'),
(85, 16, 2, '2024-11-25 10:37:30'),
(86, 16, 9, '2024-11-25 10:37:30'),
(87, 16, 5, '2024-11-25 10:37:30'),
(88, 16, 8, '2024-11-25 10:37:30'),
(106, 2, 7, '2024-11-25 10:46:13'),
(107, 2, 3, '2024-11-25 10:46:13'),
(108, 5, 1, '2024-11-25 10:47:00'),
(109, 5, 4, '2024-11-25 10:47:00'),
(110, 5, 7, '2024-11-25 10:47:00'),
(111, 5, 10, '2024-11-25 10:47:00'),
(112, 5, 9, '2024-11-25 10:47:00'),
(113, 5, 6, '2024-11-25 10:47:00'),
(114, 5, 3, '2024-11-25 10:47:00'),
(115, 5, 2, '2024-11-25 10:47:00'),
(116, 5, 5, '2024-11-25 10:47:00'),
(117, 5, 8, '2024-11-25 10:47:00'),
(128, 18, 1, '2024-11-25 10:55:30'),
(129, 18, 10, '2024-11-25 10:55:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `type`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Emerald Suite 1027 ( lantai 50 ) ', 'studio', 400000.00, '1732529062_08a8f7099a2354fcc63d.jpg', '2024-11-25 10:04:22', '2024-11-25 10:04:22'),
(2, 'Emerald Suite 0703 ( lantai 47 ) ', 'studio', 350000.00, '1732529101_c33bda5208f628a08c38.jpg', '2024-11-25 10:05:01', '2024-11-25 10:05:01'),
(3, 'Emerald 2809 ( lantai 28) ', 'studio', 250000.00, '1732529126_9ac3594af7b88415c3c2.jpg', '2024-11-25 10:05:26', '2024-11-25 10:05:26'),
(4, 'Emerald 2808 ( lantai 28 )  ', 'studio', 300000.00, '1732529143_dcad12fbed41c5abf6fc.jpg', '2024-11-25 10:05:43', '2024-11-25 10:05:43'),
(5, 'Emerald 2628 ( lantai 26 ) ', 'studio', 300000.00, '1732529163_8ad80115578d1ffc01b9.jpg', '2024-11-25 10:06:03', '2024-11-25 10:06:03'),
(6, 'Emerald 1511 ( Lantai 15 ) ', 'studio', 250000.00, '1732529179_10ab99a68303034f5d7a.jpg', '2024-11-25 10:06:19', '2024-11-25 10:06:19'),
(7, 'Emerald 1107 ( lantai 11 ) ', 'studio', 350000.00, '1732529205_83c19d4791bcc4aa2c56.jpg', '2024-11-25 10:06:45', '2024-11-25 10:06:45'),
(8, 'Barclay 0711 ( lantai 07 ) ', 'studio', 250000.00, '1732529236_d1cf34a8389eaffebc8b.jpg', '2024-11-25 10:07:16', '2024-11-25 10:07:16'),
(9, 'Barclay S0303 ( lantai 43 ) ', 'studio', 300000.00, '1732529258_1701dd5f887b5afea219.jpg', '2024-11-25 10:07:38', '2024-11-25 10:07:38'),
(10, 'Barclay 2919 ( lantai 29 )', 'studio', 250000.00, '1732529272_67deeee78e6cce5549d0.jpg', '2024-11-25 10:07:52', '2024-11-25 10:07:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `umur` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `status`, `umur`, `jenis_kelamin`, `alamat`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Active', '30', 'Male', 'Jl. Admin No. 1', 'admin@example.com', '$2y$10$YFXhrOyE2vZ7SbMvpLlNH.B6OE0nKjiVoSZgDH/Iq0oitJBzREWuW', 'Admin', '2024-11-24 04:11:40', '2024-11-24 04:11:40'),
(2, 'putra', 'mahasiswa', '22', 'Male', '', 'syaputra1@gmail.com', '$2y$10$NCYO7C7GmOgYrN5QBDrD6egZLZepuH6928qQcEZ9zDeOePXM17S0G', 'User', '2024-11-24 04:13:34', '2024-11-24 04:13:34'),
(3, 'angel', 'content creator', '22', 'Female', '', 'angel1@gmail.com', '$2y$10$FYoLGmi4qfHebaoobTrjMO4ag9eK7jvlP7Q.QPOqgCT7S2tezGQ0G', 'User', '2024-11-24 04:14:00', '2024-11-24 04:14:00'),
(4, 'rio', 'wirausaha', '22', 'Male', '', 'rio1@gmail.com', '$2y$10$qy30e4WJ6yr7zX6hqqBpjuy4H3OMRVcbuWXAx8s36U1fg2gX/XV5m', 'User', '2024-11-24 04:20:15', '2024-11-24 04:20:15'),
(5, 'joko', 'karyawan', '23', 'Male', '', 'joko1@gmail.com', '$2y$10$b09KMsI8iFOed8gtX4syreBcQs80Cuu4DHCOPt.nmYxF.ehXexiIW', 'User', '2024-11-24 04:27:36', '2024-11-24 04:27:36'),
(6, 'fadel', 'wirausaha', '22', 'Male', '', 'fadel1@gmail.com', '$2y$10$1wFfXDYDdjzcicXGbllDUOjyvHah76Lm9Fei/UNGYVraJDy/rmqui', 'User', '2024-11-24 05:50:32', '2024-11-24 05:50:32'),
(7, 'agung', 'mahasiswa', '21', 'Male', '', 'agung@gmai.com', '$2y$10$NdlRisvvnkEfqVX4VOIsaucihZZhNToIlnfKQXhXc6Csh.v8kyFqK', 'User', '2024-11-24 05:56:16', '2024-11-24 05:56:16'),
(8, 'user1', 'karyawan', '27', 'Male', '', 'user1@gmail.com', '$2y$10$zKeR5La2/BhXHbqWYI.bSuzbb6M6naOclrizY9NUM9anEpXvs7aKa', 'User', '2024-11-25 05:15:51', '2024-11-25 05:15:51'),
(9, 'user2', 'wirausaha', '27', 'Female', '', 'user2@gmail.com', '$2y$10$qN3NZGTuInaRZoBQ6SNcAeP5YicOeI/.TfaAy9B0QQk80LqU52q1.', 'User', '2024-11-25 05:16:18', '2024-11-25 05:16:18'),
(10, 'user3', 'karyawan', '22', 'Female', '', 'user3@gmail.com', '$2y$10$4bj0B4Apwe6dvYF5uxT4wu4qxk0GQRMY/ZsJ2dby9b6cTsaF4PsY6', 'User', '2024-11-25 05:16:50', '2024-11-25 05:16:50'),
(11, 'user4', 'karyawan', '24', 'Female', '', 'user4@gmail.com', '$2y$10$6LG0TgZ9//ITJlZZ0jG9Y.CYc0wce8vsn5UYVe31qQjeVKJJICH7C', 'User', '2024-11-25 05:17:31', '2024-11-25 05:17:31'),
(12, 'user5', 'karyawan', '23', 'Male', '', 'user5@gmail.com', '$2y$10$gFSo9oOKSpCWZgFek9QewO1grEampwjxh/ZljhcjhqVzcY3TIByMG', 'User', '2024-11-25 05:18:14', '2024-11-25 05:18:14'),
(13, 'user6', 'karyawan', '22', 'Female', '', 'user6@gmail.com', '$2y$10$90a0iHyq5PY/HQTfIBDNqefdUx4RYPNxK.0pGSw0kS1LaVW.gjWsa', 'User', '2024-11-25 05:18:43', '2024-11-25 05:18:43'),
(14, 'user7', 'wirausaha', '28', 'Male', '', 'user7@gmail.com', '$2y$10$CNF.IYLehABrZ4EJCcWvTOwR7RJXPsvI/g2MlX/BBBJNbnhX/ujrS', 'User', '2024-11-25 05:19:31', '2024-11-25 05:19:31'),
(15, 'user8', 'karyawan', '22', 'Male', '', 'user8@gmail.com', '$2y$10$2Gy6hM3ZRMGez1FuxxyMp.zdMc7EMcqMsXgXkfoWahPfmv.BcGBFC', 'User', '2024-11-25 05:20:37', '2024-11-25 05:20:37'),
(16, 'user9', 'karyawan', '29', 'Male', '', 'user9@gmail.com', '$2y$10$Xq4M6Fg3/DIM9ZE1Oy3KAeydPw9G4TdM4lYj/n.5F0800yUtN.IJu', 'User', '2024-11-25 05:20:57', '2024-11-25 05:20:57'),
(17, 'user10', 'karyawan', '26', 'Male', '', 'user10@gmail.com', '$2y$10$63BHDNotO6b43LAOXrGANeH7XuLGpf5AGm1s1ts/mujghOiToiuXy', 'User', '2024-11-25 05:21:18', '2024-11-25 05:21:18'),
(18, 'user12', 'karyawan', '27', 'Male', '', 'user12@gmail.com', '$2y$10$QO5nMKgxGRXSQqfq/vjjhOeAXiR1r5enAbSOo/CyXk5pMLhGCvo3q', 'User', '2024-11-25 10:53:38', '2024-11-25 10:53:38');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_user_id_foreign` (`user_id`),
  ADD KEY `ratings_room_id_foreign` (`room_id`);

--
-- Indeks untuk tabel `rekom_rooms`
--
ALTER TABLE `rekom_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT untuk tabel `rekom_rooms`
--
ALTER TABLE `rekom_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT untuk tabel `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
