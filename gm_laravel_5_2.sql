-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2020 at 05:02 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gm_laravel_5.2`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2020_05_17_143647_add_role_to_users', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `username`) VALUES
(1, 'sidali djelouahi', 'sidalidjelouahi@gmail.com', '$2y$10$trtoH.LEL7wz5lWYAFxPJejYekZBlp3woxm7ZlfVGQY4VDLdRM3vS', 'Lh2fArZE5pUbyYnHLrOvqZdMUFLx67Nus4SuGXvbVu0rVgUVBais4AuP3Xv0', '2020-05-16 13:46:10', '2020-05-18 01:49:46', 3, 'sidali'),
(3, 'fofo', 'fodil@gmail.com', '$2y$10$gLtG0gDCC.Hln8k.gPtGn.14P6pHv6cQYOp4yhbIjgCq.mQnRciKm', 'kzX8bBJ2niqXRuOYM6UZIxNLZAK2rWYV1wvpktKIbdrza07tNNnyYyf6dWc6', '2020-05-17 13:51:22', '2020-05-18 01:35:29', 2, 'fofo'),
(4, 'bachir', 'bachir@gmail.com', '$2y$10$12VXCrYtTLyM2xzlnxGtQO1uqIDi5N7vcyXsUmgwkMpv3b.qyGxC6', 'gvY4cOUMIdmQ0tTN6Ej4n3xcO4WHuIQKG3lgXQSojJ77NVHSmnZZ8RNOzxgj', '2020-05-17 13:54:18', '2020-05-17 19:24:59', 2, 'bachir'),
(5, 'Mahmoud', 'mahmoud@gmail.com', '$2y$10$UU3XG/FqlhUhHBf0w0AikOuLumW4bzheWq2DmVCtAC9bE4XVmG97e', '51n6DIilchyUvPIRzORtOoFV6uUxwWgcxKyXkoJyXxzUeW8bnyAuAK2nm0F4', '2020-05-17 19:00:48', '2020-05-18 01:49:59', 1, 'mahmoud'),
(6, 'samir djelouahi', 'samir@gmail.com', '$2y$10$OyukKJcHiiD0unOo7HUtIe.SR8ucmGY1wMUSj.FjyYlHGTyheNr.u', 'U5fYcMPx3LTA1wdhnWAbOthHG7Y2LLQHAtL7GyeLbh9730tJPLL0gpm7spnX', '2020-05-17 19:43:53', '2020-05-18 01:50:11', 1, 'samir');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
