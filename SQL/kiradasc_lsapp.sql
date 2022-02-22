-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 25, 2021 at 01:39 PM
-- Server version: 5.7.33
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kiradasc_lsapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent`, `created_at`, `updated_at`) VALUES
(1, 'Properties', NULL, '2019-10-25 08:35:03', '2019-10-25 08:35:03'),
(2, 'homes', 1, '2019-10-25 10:39:26', '2019-10-25 10:39:26'),
(3, 'shops', 1, '2019-10-25 10:43:49', '2019-10-25 10:43:49'),
(4, 'Vehicles', NULL, '2019-10-25 14:23:48', '2019-10-25 14:23:48'),
(6, 'cars', 4, '2019-11-03 03:55:05', '2019-11-03 03:55:05'),
(7, 'Services', NULL, '2019-11-03 03:55:25', '2019-11-03 03:55:25'),
(8, 'bikes', 4, '2020-01-17 15:40:17', '2020-01-17 15:40:17'),
(9, 'bus', 4, '2020-01-17 15:40:46', '2020-01-17 15:40:46'),
(10, 'hostels', 1, '2020-01-17 15:41:32', '2020-01-17 15:41:32'),
(11, 'cat', 7, '2020-01-17 15:42:45', '2020-01-17 15:42:45'),
(12, 'dress', 7, '2020-01-17 15:43:02', '2020-01-17 15:43:02'),
(13, 'events', 7, '2020-01-17 15:43:23', '2020-01-17 15:43:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_19_090853_create_posts_table', 2),
(5, '2019_10_24_171945_add_user_id_to_post', 3),
(6, '2019_10_25_095812_create_categories_table', 4),
(7, '2019_10_25_100919_add_credentials_to_users', 5),
(8, '2019_10_25_131741_create_categories_table', 6),
(9, '2019_10_25_133353_create_categories_table', 7),
(10, '2019_10_25_203314_add_c_id_posts', 8),
(11, '2019_10_31_230711_add_cid_to_posts', 9),
(12, '2019_11_02_200950_add_cid_to_posts', 10),
(13, '2019_11_17_143939_adding_cover_image_to_post', 11),
(14, '2019_11_19_172132_create_social_providers_table', 12),
(15, '2019_11_21_080057_updated_users', 13),
(16, '2019_11_21_080803_create_new_user', 14),
(17, '2019_12_06_162326_nullable_to_google', 15),
(18, '2020_01_15_110746_post_extend', 16),
(19, '2020_04_13_170030_email_verification', 17),
(20, '2020_04_14_111354_add_coverimage1', 18),
(21, '2020_04_14_112045_add_coverimages1', 19),
(22, '2020_04_14_174405_multiple_cover_images', 20),
(23, '2020_04_17_154953_add_wash_seat_to_posts', 21),
(24, '2020_04_17_160920_add_washroom_sitting', 22),
(25, '2020_04_17_161300_add_setting', 23),
(26, '2020_04_17_161610_add_wash_seatting', 24);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('comebeforeme25@yahoo.com', '$2y$10$pMNLJlv1mLJs7nqisDIVU.NjCf.SpyZbOwxg6ffqhpFHjyggxNajm', '2020-05-16 15:34:42'),
('aaa@hmai.com', '$2y$10$KuFumiiDN9S1eiz8qpQ8HOHoYmd31kxqLWw0BoPLhzklI0zpK/ZlS', '2020-05-16 15:40:04'),
('abdullahaljt@gmail.com', '$2y$10$/aZTwQ/QfXUqis8YI3uUyOibTLD4KgAvfCBXzVU/2Hl5YvIlySr5a', '2020-05-21 14:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `covered_area` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_of_products` int(11) DEFAULT NULL,
  `CC` int(11) DEFAULT NULL,
  `parking` tinyint(1) DEFAULT NULL,
  `mess` tinyint(1) DEFAULT NULL,
  `wifi` tinyint(1) DEFAULT NULL,
  `washroom` int(11) DEFAULT NULL,
  `beds` int(11) DEFAULT NULL,
  `num_of_portions` int(11) DEFAULT NULL,
  `exact_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rent_price` int(11) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_imag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_ima` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `A_washroom` int(11) DEFAULT NULL,
  `Sitting_Cap` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `category_id`, `cover_image`, `covered_area`, `num_of_products`, `CC`, `parking`, `mess`, `wifi`, `washroom`, `beds`, `num_of_portions`, `exact_address`, `area`, `rent_price`, `active`, `phone_no`, `cover_imag`, `cover_ima`, `A_washroom`, `Sitting_Cap`) VALUES
(100, '1 Kanal house', 'Brand new house. Never lived in.', '2020-05-13 14:49:03', '2020-05-13 14:49:03', 5, 2, 'maxresdefault (1)1589363343.jpg', '1 kanal', NULL, NULL, NULL, NULL, NULL, 4, 5, 2, '1200 c', 'Airline Housing Society', 45000, NULL, '03344035183', 'house1589363343.jpg', 'download (4)1589363343.jpg', NULL, NULL),
(102, 'Catering for big events', 'Our packages start from 10000. Minimum order is for 20 people and 500 per person deal.', '2020-05-13 14:54:50', '2020-05-13 14:54:50', 5, 11, 'It-is-not-a-diet-fad-Caterers-commit-to-20-less-meat-in-schools-and-hospitals_wrbm_large1589363690.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '421 block k2', 'Ahbab Housing Society', 10000, NULL, '03344035183', 'Catering1589363690.jpg', 'download (5)1589363690.jpg', NULL, NULL),
(103, 'corola', 'dasdasdasdasdasdasdsadasdasdasd', '2020-05-17 14:03:59', '2020-05-17 14:03:59', 14, 6, '71c62e721acc8217a46aa2813d97c04d1589742239.png', NULL, 12, 1600, NULL, NULL, NULL, NULL, NULL, NULL, 'near abc', 'Airline Housing Society', 1200, NULL, '031189827123', '835a66df9f188d49604101f9ffc94da2685940e21589742239.jpg', '167521589742239.jpg', NULL, NULL),
(104, 'New city hostel boys', 'sdvbbbbb', '2020-05-17 18:32:57', '2020-05-17 18:32:57', 14, 10, 'images (25)1589758377.jpg', NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, 'h block', 'LDA Avenue', 9000, NULL, '053211566', 'images (24)1589758377.jpg', 'image1589758377.webp', 1, NULL),
(105, 'milad function', 'sakslfjkalf', '2020-11-10 12:06:47', '2020-11-10 12:06:47', 41, 11, 'Screenshot (8)1605028007.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'daska', 'AR Cottages', 1000, NULL, '031515546', 'noimage1588721663.png', 'noimage1588721663.png', NULL, NULL),
(109, 'Bike', 'qd qjl wclob jsedvb olswdrv', '2020-12-21 11:12:55', '2020-12-21 11:12:55', 72, 8, 'bike1608567175.jpg', NULL, 29, 70, NULL, NULL, NULL, NULL, NULL, NULL, 'Sher Shah Colony', 'Airport Road', 2000, NULL, '03000000000', 'noimage1588721663.png', 'noimage1588721663.png', NULL, NULL),
(110, 'ccdcdscdc', 'cdscdcds', '2021-01-27 07:35:01', '2021-01-27 07:35:01', 93, 11, 'noimage1588721663.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cdcsdcfbf', 'Canal Bank Housing Scheme', 3333, NULL, '03333', 'noimage1588721663.png', 'noimage1588721663.png', NULL, NULL),
(111, 'gourmet caterings', 'all types', '2021-02-12 13:21:25', '2021-02-12 13:21:25', 59, 11, 'author31613154085.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'daska', 'Ahmad Housing Society', 2000, NULL, '03123131', 'author21613154085.jpg', 'author-big-thumb1613154085.jpg', NULL, NULL),
(112, 'old ciry', 'full featrad', '2021-02-12 14:29:46', '2021-02-12 14:29:46', 59, 10, 'bg11613158186.jpg', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 'daska', 'Ahmad Housing Society', 1000, NULL, '03123131', 'bg_thumb21613158186.jpg', 'post_simple11613158186.jpg', 1, NULL),
(113, 'Buggati', 'Fastest car in world for rent', '2021-02-22 13:13:03', '2021-02-22 13:13:03', 59, 6, 'WhatsApp Image 2021-02-09 at 12.31.13 AM1614017583.jpg', NULL, 1, 4500, NULL, NULL, NULL, NULL, NULL, NULL, 'Near hospital', 'Airline Housing Society', 10000, NULL, '0124124121', 'WhatsApp Image 2021-02-09 at 12.31.13 AM (1)1614017583.jpg', 'WhatsApp Image 2021-02-09 at 12.31.13 AM (2)1614017583.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_original` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `avatar`, `avatar_original`, `remember_token`, `created_at`, `updated_at`, `google_id`, `email_verified_at`) VALUES
(5, 'Abdullah Shahid', 'abdullahaljt@gmail.com', '$2y$10$QpLMj6t4kFBHM/nssuCFxuzMf.ndGxTeIqJrgDGJgFzZ2JW8yS06C', 'https://lh6.googleusercontent.com/-A6r1s-9TQvg/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcF9LnjoIEoH3Cx_KlvGGXeUiFAag/photo.jpg', 'https://lh6.googleusercontent.com/-A6r1s-9TQvg/AAAAAAAAAAI/AAAAAAAAAAA/ACHi3rcF9LnjoIEoH3Cx_KlvGGXeUiFAag/photo.jpg', 'zmxmUkxSMpxQepZls17aZxxtL67AdsxmyUqUds6EOosvqgiIexz03wVxsIWh', '2019-12-06 11:29:27', '2020-05-14 18:06:00', '108927466503309787426', NULL),
(6, 'New', 'aaa@hmai.com', '$2y$10$6G6X4db.OO9VA3YEUQY7Kubuoeoqt7IEsKBJy6ilddyI8VWcywxly', NULL, NULL, 'pHxYZr0PkJrWDEFyMixi5Va6eC5CBovhtCwCyobqf2WgTaFF0kUvJSjmaqtt', '2019-12-06 11:29:49', '2020-04-17 07:36:07', NULL, NULL),
(7, 'hello', 'aa@hmai.com', '$2y$10$v9dWwRkSKl1MtYJymX9Goe3FwhojZQtUzFkkaCm6MKOo5vLvhTS4y', NULL, NULL, NULL, '2019-12-06 11:30:54', '2019-12-06 11:30:54', NULL, NULL),
(8, 'Abdullah', 'fa17-bcs-064@cuilahore.edu.pk', '$2y$10$VH1GUScwaB.QFy1HBO/HWOHSIUYqqvHKv54E56UntAYnyru.UYi1y', NULL, NULL, 'kVQOwk8nPzj7dGi4Mu9wz6pxmcdJFsZ9F5kR3mZYbHhTylWpzoA4US1AWkXY', '2020-04-13 05:28:52', '2020-04-13 05:28:52', NULL, NULL),
(9, 'Abdullah', 'abc@yahoo.com', '$2y$10$WLr6ySDDCOlXAiTDjhbpM.ZzYzoBzgiR2qmCWkcwBPI9.OWUgnw0K', NULL, NULL, NULL, '2020-04-13 12:14:29', '2020-04-13 12:14:29', NULL, NULL),
(10, 'Abdullah', 'aaa@h1mai.com', '$2y$10$Bl.dFxEyICnNE7mtxaoKYuXKjWgaf28z8gqZASQprfMZndP0P1ATy', NULL, NULL, NULL, '2020-04-13 12:15:44', '2020-04-13 12:15:44', NULL, NULL),
(11, 'Rent Everything', 'everythingkiradas@gmail.com', NULL, 'https://lh3.googleusercontent.com/-C_EAPHP2j08/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJMUOFi_uGRsEWl_oRfvpzgUrc0-sw/photo.jpg', 'https://lh3.googleusercontent.com/-C_EAPHP2j08/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJMUOFi_uGRsEWl_oRfvpzgUrc0-sw/photo.jpg', 'Myl9IIOA2OpgLoSH6AcJavVPUwnIa4IfMC608td0QK1aOhGwY3zuChE9gdKD', '2020-05-02 22:09:07', '2020-05-02 22:09:07', '109130875583979978308', NULL),
(12, 'Saad Awais', 'saadawais122@gmail.com', '$2y$10$uwAnawyCaJztteY7FMijlO0ovuNAQNJxujTMVRHxNaaJZYaA9efFu', NULL, NULL, NULL, '2020-05-02 22:40:14', '2020-05-02 22:40:14', NULL, NULL),
(13, 'Ali Sajjad', 'alisajjad3895@gmail.com', NULL, 'https://lh5.googleusercontent.com/-oW89II0sMKI/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJMD84GvFp554m27gC1fXNB-_J26wA/photo.jpg', 'https://lh5.googleusercontent.com/-oW89II0sMKI/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJMD84GvFp554m27gC1fXNB-_J26wA/photo.jpg', 'QXBZedmSknw5tQwqfGnnvf9zlDA13dlKNN4e5rOFwRFEp6BSzWc6YAcLT5aC', '2020-05-03 04:29:00', '2020-05-03 04:29:00', '109920173206025418158', NULL),
(14, 'Omer Sheraz', 'omersheraz81@gmail.com', '$2y$10$2IU0tlrZTS/qnlzSZSDmNu.jR0LG40hStDcUiV1tZ5YPNgUs/5psy', 'https://lh3.googleusercontent.com/a-/AOh14Gjn0RkGbWuTOZmcZuJMbl8eB5diCOd_FOkSfepLmw', 'https://lh3.googleusercontent.com/a-/AOh14Gjn0RkGbWuTOZmcZuJMbl8eB5diCOd_FOkSfepLmw', 'iYhe2Niko8nWH3hO6KzxM0RY22P6Sx4iavADhOami79GefpfaFKynwuqI2Yk', '2020-05-03 15:34:02', '2020-05-14 18:32:26', '101469528804319427678', NULL),
(15, 'Ubaid Mufti', 'umufti13@gmail.com', NULL, 'https://lh6.googleusercontent.com/-s9whaws3NW8/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJPkdE9Jn35dqk5flQpw6wtMiXvfYg/photo.jpg', 'https://lh6.googleusercontent.com/-s9whaws3NW8/AAAAAAAAAAI/AAAAAAAAAAA/AAKWJJPkdE9Jn35dqk5flQpw6wtMiXvfYg/photo.jpg', 'gW7Cw4FANeIdhDMROt2caxhz0NZf8Ss5Rf5mdCghHcIZ2WJgw8YvaoyWIqOe', '2020-05-04 23:15:59', '2020-05-04 23:15:59', '115418196364191163314', NULL),
(16, 'Umair Shahid', 'umair0538@gmail.com', NULL, 'https://lh3.googleusercontent.com/a-/AOh14Gh2PehBv8LZzMpJEex7MY4pROE5vAjeZT8YQS4u1g', 'https://lh3.googleusercontent.com/a-/AOh14Gh2PehBv8LZzMpJEex7MY4pROE5vAjeZT8YQS4u1g', 'DpWvoZZ5SeuBfrBtHuizYEyg954g0pMD7TfpCVU5JyF8JhO0ILP1AzZQ3dxm', '2020-05-13 15:46:46', '2020-05-13 15:46:46', '114522562216152340388', NULL),
(17, 'Abdullah', 'comebeforeme25@yahoo.com', '$2y$10$U0fRse59YwIR0wjv/0u85urFHS3QXA4RBk8qcllC6QwdGuAoIb.8a', NULL, NULL, NULL, '2020-05-14 18:09:20', '2020-05-14 18:09:20', NULL, NULL),
(18, 'Abdullah Shahid', 'abc@abc.com', '$2y$10$2msrcZQPoBXlXc8HI2CbWO/P.qBF.hcAkbn7RrjiSi3qYHRFC0yQW', NULL, NULL, NULL, '2020-07-01 02:57:42', '2020-07-01 02:57:42', NULL, NULL),
(19, 'funny baba', 'asadjamal220@gmail.com', NULL, 'https://lh3.googleusercontent.com/a-/AOh14GhCVIJ5LPEfkNP5E3xyoQ_XEJqVVnSfevZ3J8rfnw', 'https://lh3.googleusercontent.com/a-/AOh14GhCVIJ5LPEfkNP5E3xyoQ_XEJqVVnSfevZ3J8rfnw', 'kl1ymjaWsoq7sM5qmhyrqGixUVGOhrRKTfPQwjdfuvOzfiNr5RwKOtMS9iUR', '2020-07-03 07:15:01', '2020-07-03 07:15:01', '114514964549093234859', NULL),
(20, 'Ned Bernier', 'a.utz@camp37.com', '$2y$10$q5r46ge63tfTXHZKEOSXWOCy2Le0Vymgk6VcBhBF3L0r076Aq4wxK', NULL, NULL, NULL, '2020-07-22 14:37:47', '2020-07-22 14:37:47', NULL, NULL),
(21, 'Flavie Murazik III', 'kstingel@gmail.com', '$2y$10$VBRGRK/qMC.mivM6a.kdNeKFNrzQtbK4hA/eMFTyoqeEt9hCfdfta', NULL, NULL, NULL, '2020-07-23 17:38:14', '2020-07-23 17:38:14', NULL, NULL),
(22, 'Melyssa Hettinger', 'ashleycrowley@rocketmail.com', '$2y$10$Zc.WRP9OooJPfXrFDIGtNu20juPqP4uh9wnOxX8EOr622wVtfM/lW', NULL, NULL, NULL, '2020-07-24 02:26:05', '2020-07-24 02:26:05', NULL, NULL),
(23, 'Martin Klocko', 'leeann.hickey@pogoenergy.com', '$2y$10$QgFlj8xgN4kye1KnPC9iWejbGg0aTBuc0Rbx7QS6IKX3q49OqnWgq', NULL, NULL, NULL, '2020-07-24 12:57:10', '2020-07-24 12:57:10', NULL, NULL),
(24, 'Scotty Emard', 'jtgrubb80@yahoo.com', '$2y$10$HhwDlzrz0Ens7k4rmqaU7u4yKWu3F.WBe190dgfdA8xwZRpDVZqZu', NULL, NULL, NULL, '2020-07-27 08:21:02', '2020-07-27 08:21:02', NULL, NULL),
(25, 'Jensen Gottlieb', 'elsa@spstr.is', '$2y$10$2bSdCRwe4HlOUwFPwl4CmO1X7jntst8Glah/3YImCmVQT924WrX3m', NULL, NULL, NULL, '2020-07-28 15:56:31', '2020-07-28 15:56:31', NULL, NULL),
(26, 'Mr. Oleta Spinka', 'amodejo1@gmail.com', '$2y$10$Wdq8XeYDgT3Xdbh/NixliuyAs3BlUBTOVtwCvM9CNr42yTuNH1.Ya', NULL, NULL, NULL, '2020-08-06 17:14:35', '2020-08-06 17:14:35', NULL, NULL),
(27, 'Shahzad Rauf', 'shahzadrauf976@gmail.com', NULL, 'https://lh3.googleusercontent.com/a-/AOh14Gigu8qHHQTbSdwjll0H_Ixp9WCR39BZb8DeD9pfnQ', 'https://lh3.googleusercontent.com/a-/AOh14Gigu8qHHQTbSdwjll0H_Ixp9WCR39BZb8DeD9pfnQ', 'pBzYPFbP8ZARQHhDDh7L568gPIREW7f79HhrTU1gamr6aDTK3xBkZbQKhCLD', '2020-08-08 23:59:59', '2020-08-08 23:59:59', '105780360860342706646', NULL),
(28, 'Perry Bogisich I', 'kminard@osteopathyforwellness.com', '$2y$10$VzJ7OcAwdgxoFUJn/qlAxul//OrxMJ1QvcqA005/kE8iOL1Oi/Xpq', NULL, NULL, NULL, '2020-08-10 00:03:09', '2020-08-10 00:03:09', NULL, NULL),
(29, 'Jeff Dare', 'moranmex75@hotmail.com', '$2y$10$vkj8v4uXGeLSRgiDfN9rU.8omfEx8aIwDvj/QVhmR04biIcFd.aca', NULL, NULL, NULL, '2020-08-13 17:27:43', '2020-08-13 17:27:43', NULL, NULL),
(30, 'Itzel Considine', 'cyrus@thecyruslawfirm.com', '$2y$10$qLyRbO/Z3pW65MtoFCwy9u2TDv.EV6Ykf7Kqh7OHur2d17OPy6At6', NULL, NULL, NULL, '2020-08-19 04:05:20', '2020-08-19 04:05:20', NULL, NULL),
(31, 'Dante Kunde', 'careylouise@hotmail.com', '$2y$10$notTTtiOSZ8E3QS.s9RAe.Y0txCEg6EJXgAfdATtubTPaWyAF6aNi', NULL, NULL, NULL, '2020-08-23 18:22:45', '2020-08-23 18:22:45', NULL, NULL),
(32, 'usk developers', 'uskdevs@gmail.com', NULL, 'https://lh5.googleusercontent.com/-s-aIlVS7Eh0/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuck2Ez1bCM9URVyKpqQPYNNvxE3eFA/photo.jpg', 'https://lh5.googleusercontent.com/-s-aIlVS7Eh0/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuck2Ez1bCM9URVyKpqQPYNNvxE3eFA/photo.jpg', 'ElgSDe5IMmRwxq1h8bx16NWfn4y0ASXrozZyye3X7MXuoyTS2JkLAGlDnk0a', '2020-08-24 06:46:44', '2020-08-24 06:46:44', '108112243899090909824', NULL),
(33, 'Maryam Herman', 'shawnakeehner@gmail.com', '$2y$10$xOqQpSwvctLxrHXQqscp3.Z7yBe7HOEI6v47FhpSPpswbyjkeQHDO', NULL, NULL, NULL, '2020-09-02 20:36:24', '2020-09-02 20:36:24', NULL, NULL),
(34, 'Marion Steuber', 'elizabethsteigauf@gmail.com', '$2y$10$qeoXvGvswhN6vHQhR5x.ZOUKj9AT.lPBEIMe8735CjaPDP3KK3wB6', NULL, NULL, NULL, '2020-09-03 16:49:08', '2020-09-03 16:49:08', NULL, NULL),
(35, 'Mose Heaney Jr.', 'cinziamiotto@virgilio.it', '$2y$10$aHjALUC6urHSYRSRFtPoDu.apTJwZSyvKeRybVFizmCzOgSHtdY5a', NULL, NULL, NULL, '2020-09-04 05:51:46', '2020-09-04 05:51:46', NULL, NULL),
(36, 'Mabelle Crooks', '2817331234@txt.att.net', '$2y$10$qDs/8zOQpaFHSn8u6EpQlep4TRzg.VhgaaezgZ0NlhtU.lt0yboce', NULL, NULL, NULL, '2020-09-06 14:04:57', '2020-09-06 14:04:57', NULL, NULL),
(37, 'Edwina Schneider', 'cpapincak@yahoo.com', '$2y$10$Y35Dfg3rHU2U40jm6UbPLuvoTaUCvZTrNecuyiwtwJPih42jpKQny', NULL, NULL, NULL, '2020-09-08 10:17:32', '2020-09-08 10:17:32', NULL, NULL),
(38, 'Destiney Durgan', 'leannhilton@hiltonmgmt.com', '$2y$10$PQJuyGYJKuEXDuWZHYNQNO5PtJSQEBGo9l7TpOYlDkKIj6yTQdXW6', NULL, NULL, NULL, '2020-09-12 06:11:45', '2020-09-12 06:11:45', NULL, NULL),
(39, 'Rachael O\'Connell', 'germain.lebeau@bmo.com', '$2y$10$CXpnSsQ30PiFGclSGtTZm.oRsmOh8cpj5s6jWi0LpfzReXvA0UleS', NULL, NULL, NULL, '2020-09-14 00:24:24', '2020-09-14 00:24:24', NULL, NULL),
(40, 'Alexa Cremin', 'maerchen13@gmail.com', '$2y$10$GtoKPFeCujN8Mwjlf/JtF.//kxUNOTXU6fy2GtRNmZdG3qeOca37a', NULL, NULL, NULL, '2020-09-22 22:24:05', '2020-09-22 22:24:05', NULL, NULL),
(41, 'OMER SHERAZ', 'fa17-bcs-009@cuilahore.edu.pk', NULL, 'https://lh6.googleusercontent.com/-_ofvCvcdyEQ/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucmaKcG3sJsRwXgrQrJfU1hOu7QwbQ/s96-c/photo.jpg', 'https://lh6.googleusercontent.com/-_ofvCvcdyEQ/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucmaKcG3sJsRwXgrQrJfU1hOu7QwbQ/s96-c/photo.jpg', 'xMHTje8ZoqMXqUjlJeNg5KowznscMhqq4ramEsGQqQmahDdi2aSqIkCViWsX', '2020-10-25 10:21:22', '2020-10-25 10:21:22', '111640688706858089793', NULL),
(42, 'Lilian Conroy', 'nymason@gmail.com', '$2y$10$Pir/GA5ZabNc69RMUVC74.6OAZsO1pk0di..7dZC7uIu2t5WTN3Nq', NULL, NULL, NULL, '2020-10-25 13:55:20', '2020-10-25 13:55:20', NULL, NULL),
(43, 'Ida Bogisich', 'orozcojackie83@csu.fullerton.edu', '$2y$10$EOoadRBd25kWt8sN4yj94uzA.NMpBakUtmupMkph412a46vncsegy', NULL, NULL, NULL, '2020-10-28 17:44:38', '2020-10-28 17:44:38', NULL, NULL),
(44, 'Hilma Zieme', 'bersford504@aol.com', '$2y$10$kCwLwEz8dR3JgWdQ2UQSCeXwZunhh.99j1K/WAGNlNIu4NamCFe4y', NULL, NULL, NULL, '2020-11-12 12:53:05', '2020-11-12 12:53:05', NULL, NULL),
(45, 'Autumn Schamberger', 'alestochi@gmail.com', '$2y$10$S764FnDJyXMbkd12CkgCDOEl.z.re9sVpCL75j/L3TgYWEeNx6pP.', NULL, NULL, NULL, '2020-11-17 06:54:01', '2020-11-17 06:54:01', NULL, NULL),
(46, 'Markus Nolan', 'bthomas@beccainc.com', '$2y$10$HzeCpGxgCWU/sdbaBirwCOL9gnH.v2M/Mcn94/Ck2K7M5WEFRxWf2', NULL, NULL, NULL, '2020-11-20 04:41:17', '2020-11-20 04:41:17', NULL, NULL),
(47, 'Chasity Graham', 'lauren.minor@yahoo.com', '$2y$10$rnHLooR80j1OjdokdTPnsOgzTA48jg.cwRSP.EeR51Y2jdICGJtPS', NULL, NULL, NULL, '2020-11-26 11:12:01', '2020-11-26 11:12:01', NULL, NULL),
(48, 'Property', '2323@hmai.com', '$2y$10$JLsoXHBhse0npowKU3SuSeqLzbTsF/wgyoP1btRidkOWU5ZZo452a', NULL, NULL, NULL, '2020-12-02 07:57:57', '2020-12-02 07:57:57', NULL, NULL),
(49, 'hello', 'check1@gmail.com', '$2y$10$WakDaJ7eyIHJWbdSFgzkf.OiwstCFRSmkMGoM/n4gPq691BKcSyr2', NULL, NULL, NULL, '2020-12-02 08:07:28', '2020-12-02 08:07:28', NULL, NULL),
(50, 'Abdullah', 'croos@gmail.com', '$2y$10$UKy.l3gV4gOGiLcGAxDi2OZNwazfAih50ufeQzVpc7y.NV5/H8KSy', NULL, NULL, NULL, '2020-12-02 09:05:03', '2020-12-02 09:05:03', NULL, NULL),
(51, 'Hello', 'check21@gmail.com', '$2y$10$BqUhQo/R5GeI2fPFALMetuWN5UD/2QWR3krLQIoCw//SiFyvUqaTS', NULL, NULL, NULL, '2020-12-04 07:42:42', '2020-12-04 07:42:42', NULL, NULL),
(52, 'Home', 'check133@gmail.com', '$2y$10$/ZZoYu1c7AxAkbDT61Z4kOYJM41ZfSjlveFIgoq71ouJW7tSmhLOS', NULL, NULL, NULL, '2020-12-04 08:01:09', '2020-12-04 08:01:09', NULL, NULL),
(53, 'Abdullah', 'aa@dcdc.com', '$2y$10$.Alq0//ClgJeyXM7SiM80eVJP2untuZsMNzx2EwIZG6CFzLoVW52K', NULL, NULL, NULL, '2020-12-04 08:09:23', '2020-12-04 08:09:23', NULL, NULL),
(54, 'Abdullah', 'aaa@hm5ai.com', '$2y$10$1pHyKmiV0zHE7Vz8sNazIObRb0AzRRTcKYpr3n05R7wddaYG5SkAi', NULL, NULL, NULL, '2020-12-04 08:10:21', '2020-12-04 08:10:21', NULL, NULL),
(55, 'Abdullah', 'aaa@hm555ai.com', '$2y$10$0zXpdBB82O272zq.9CFcf.vm.fYImar0L0Ee.7Y1epJTtx3rFz0S6', NULL, NULL, NULL, '2020-12-04 08:11:04', '2020-12-04 08:11:04', NULL, NULL),
(56, 'Abdullah', 'aaa@h45454mai.com', '$2y$10$6GGILQfCjALoOmGXVNwvK.Z9fPng3LpDFKpDHsSIzSShWaX3YG5S.', NULL, NULL, NULL, '2020-12-04 08:14:27', '2020-12-04 08:14:27', NULL, NULL),
(57, 'Abdullah', 'aaa@hm23113ai.com', '$2y$10$X4HX3F504wRAp4we1V80qe9uvIdNXki43cgzsQ9PzQb5V.jElZREu', NULL, NULL, NULL, '2020-12-04 08:15:26', '2020-12-04 08:15:26', NULL, NULL),
(58, 'umer', 's@gmail.com', '$2y$10$G7VdzqYzOPjGUfv55tg8cOvkryBX6j7HVPRbsz7VoRH/tPTHCmwr6', NULL, NULL, NULL, '2020-12-04 08:21:02', '2020-12-04 08:21:02', NULL, NULL),
(59, 'lorem', 'lorem@gmail.com', '$2y$10$J27DnMcWL.xtxAjYZx4JuOSDyMoxgwfWuVL4WiidMq0LRJ8Qfk.cO', NULL, NULL, 'mqgphS4AhkfPnJBvEmB1jtYxI5feL12EbeBgTbFUwKsVMfmnd547y5DXTajg', '2020-12-04 08:36:18', '2020-12-04 08:36:18', NULL, NULL),
(60, 'u', 'u', 'u', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'xnxx', 'x', 'xxx', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'y', 'y', 'y', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'Maynard Schneider', 'Philip.Rippin@hotmail.com', '$2y$10$8j0S/Fj3TJNKWBVa3J0u6.4VOu70WEVzCp8SE5YHdJ5g6SICk0HBe', NULL, NULL, NULL, '2020-12-06 16:22:33', '2020-12-06 16:22:33', NULL, NULL),
(65, 'Raphael Kertzmann PhD', 'casey_freeman19@yahoo.com', '$2y$10$dkqSh8PDYhUjjvOhz1P0YeHHvTg1oy9DOp2kTEAQa/1oKwcoj6eeC', NULL, NULL, NULL, '2020-12-08 21:09:40', '2020-12-08 21:09:40', NULL, NULL),
(66, 'Shahzad Rauf', 'rauf@gmail.com', '$2y$10$XCQp07FoJ7RwI4ok.3jde.u7BVWaY7YjDKcIvbC/867XJbiGuooGe', NULL, NULL, NULL, '2020-12-09 11:32:54', '2020-12-09 11:32:54', NULL, NULL),
(67, 'Rosanna Becker', 'abrakow@comcast.net', '$2y$10$fTw3tKMKOgDrqpR3O9LzmOl53pGFoa/YHJ1WShNdVpx6z5VnLTNw.', NULL, NULL, NULL, '2020-12-10 09:18:51', '2020-12-10 09:18:51', NULL, NULL),
(68, 'Lavada Kihn', 'lbarnett94@gmail.com', '$2y$10$vQCxpHqFZhat0MN8Hi.ZyOtMff94ZE/jH.stxI0u1yV67gO0OPMT.', NULL, NULL, NULL, '2020-12-13 09:15:33', '2020-12-13 09:15:33', NULL, NULL),
(69, 'Aida Hettinger', 'kawade84@yahoo.com', '$2y$10$P.PWJA5FQsjQa0Kp2nxQx.s4JC9wZKYdrLeAw3o0ASds57aeCEjh6', NULL, NULL, NULL, '2020-12-14 17:36:19', '2020-12-14 17:36:19', NULL, NULL),
(70, 'Yvonne Robel MD', 'martadunnchinchilla@hotmail.com', '$2y$10$OSXnDbqFfUqNnU/wtho0CuEA8Rc1o9M3ymOFoUpY3F97VUbgAPi7.', NULL, NULL, NULL, '2020-12-15 09:00:08', '2020-12-15 09:00:08', NULL, NULL),
(71, 'Shahzad Rauf', 'shahzad@gmail.com', '$2y$10$gwmAUaQ/0UXjS9SErqbIpO08j2WSR4XepXuZIyWzOi/5ee00J.2Iy', NULL, NULL, NULL, '2020-12-16 14:46:30', '2020-12-16 14:46:30', NULL, NULL),
(72, 'Shahzad Rauf', 'raufshahzad976@gmail.com', NULL, 'https://lh6.googleusercontent.com/-JWa5Hqxe2-M/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucmG3DkkhFXXF7f1j3-bGybAXYCWRA/s96-c/photo.jpg', 'https://lh6.googleusercontent.com/-JWa5Hqxe2-M/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucmG3DkkhFXXF7f1j3-bGybAXYCWRA/s96-c/photo.jpg', 'xTBXSBg8wPlSU4ZSBCc855cEE30N7mMP555FnJ0FSr4OlyfUfvvP2ZBe6sjB', '2020-12-16 16:27:18', '2020-12-16 16:27:18', '113515600160642576401', NULL),
(73, 'Bret Hane', 'tlino91@gmail.com', '$2y$10$vXjRqdCatUJBlCAKWbCuDuseeNpwPTf1Jy/RHRoaGfVAB4T8HDXQS', NULL, NULL, NULL, '2020-12-16 23:13:12', '2020-12-16 23:13:12', NULL, NULL),
(74, 'Caleb Schmitt', '8134842710@vtext.com', '$2y$10$9XcXvd4mcKuIGohFa6LxzOfkbZT/KrKI.65kv/yh2wesSdpVYHVru', NULL, NULL, NULL, '2020-12-19 03:34:22', '2020-12-19 03:34:22', NULL, NULL),
(75, 'Candelario Lind', 'sadaf@rogers.com', '$2y$10$cpxQFfd/EmAKIGAC.62ICezps688y4LaK2LwelG855jkaypqyea0K', NULL, NULL, NULL, '2020-12-19 20:56:40', '2020-12-19 20:56:40', NULL, NULL),
(76, 'Alejandra Kohler DVM', 'rgreene197051@aol.com', '$2y$10$utM6eRqmnCpvI7Y/g80sQeB3o1JO/ETS4PIJeqSp39ja9Bvghnzqm', NULL, NULL, NULL, '2020-12-20 19:43:07', '2020-12-20 19:43:07', NULL, NULL),
(77, 'Naeem', 'naeemisial@gmail.com', '$2y$10$Er2IaY4weDvuUYjxBrFnEuhzkXdUIyi8WXJLVb0hsW9AhuIAMa6T6', NULL, NULL, NULL, '2020-12-21 10:21:16', '2020-12-21 10:21:16', NULL, NULL),
(78, 'Alexane Kautzer', 'jmr226@yahoo.com', '$2y$10$2qHOpdEE9VKo/mm7ON64TuWCPOEN9l41ztFt.fHVEfVWktqLAB/hy', NULL, NULL, NULL, '2020-12-22 16:47:38', '2020-12-22 16:47:38', NULL, NULL),
(79, 'Kylee Huel III', 'axiompillow@yahoo.com', '$2y$10$chLTfI7aCdJthXPOyNIRyuM3Mw.IIyvIErEW5wi5ufE0oefWG3B1K', NULL, NULL, NULL, '2020-12-23 13:52:02', '2020-12-23 13:52:02', NULL, NULL),
(80, 'Octavia Bernier', 'pthanu@gmail.com', '$2y$10$Kk2r6T7cQromIZNwCh0V0.ZuCsGj8ea.G0KoxrA5t43dkZTWrF6Ua', NULL, NULL, NULL, '2020-12-28 23:24:58', '2020-12-28 23:24:58', NULL, NULL),
(81, 'Christiana Stamm', '5129819640@vtext.com', '$2y$10$8/n/kJnIXvwQiNnCErn8Eeo2vDvXmeSdkFpcPRrBlaq8xKyx2kJli', NULL, NULL, NULL, '2020-12-30 10:53:41', '2020-12-30 10:53:41', NULL, NULL),
(82, 'Dr. Freda Barton', 'carcareinc@aol.com', '$2y$10$Ussq3aqNaQS3LW7.9Gat/e.HSwf8K/Wn9oXNF7mMECGDu8OIxFh6e', NULL, NULL, NULL, '2020-12-30 11:43:39', '2020-12-30 11:43:39', NULL, NULL),
(83, 'Pietro McLaughlin', 'tdranatunga@yahoo.com', '$2y$10$4vvR1BxfqX1nxwcAQKQ22.AeEUasl/NknhJwdAojwa9Xk4Z7G/Ne.', NULL, NULL, NULL, '2020-12-31 13:08:49', '2020-12-31 13:08:49', NULL, NULL),
(84, 'Easton Bruen', 'teanyv@yahoo.com', '$2y$10$oHShhMqyzi8/hz8iRvRAue.iwU/C5ZbtVwfHlPb4Sn1s8lYC9sVAi', NULL, NULL, NULL, '2021-01-03 08:15:39', '2021-01-03 08:15:39', NULL, NULL),
(85, 'Maurine Gottlieb PhD', 'claudio.cerqueti@advantech.nl', '$2y$10$dsxjpSxREPsPwBmiLoCnf.UvvES5ddRcDrlVY8Hp5078mEXR3Kyki', NULL, NULL, NULL, '2021-01-04 04:47:49', '2021-01-04 04:47:49', NULL, NULL),
(86, 'Henry Bergstrom', 'mbtracy01@aol.com', '$2y$10$qbEY.gEhrqFBwWc2ovbVJu3DtZpjFraXfdHApj/iw5HDRqcvKJbOK', NULL, NULL, NULL, '2021-01-06 17:40:01', '2021-01-06 17:40:01', NULL, NULL),
(87, 'Celestine Gerlach', 'info@cannagreenexpress.io', '$2y$10$DfwxPJfyl6ICY17rMT/lNOgmLiTniQtwSb2NlZEHXazrfG/EEtaHC', NULL, NULL, NULL, '2021-01-08 12:35:10', '2021-01-08 12:35:10', NULL, NULL),
(88, 'Guiseppe Pollich', 'avinash.kochrekar@gmail.com', '$2y$10$cBg20XBTlcfRAVLI7ouuTeKgEgZdyC4rIbeeOPgdpneWHYlGcXIYe', NULL, NULL, NULL, '2021-01-13 10:54:24', '2021-01-13 10:54:24', NULL, NULL),
(89, 'Masood Adil', 'masoodadil84@gmail.com', '$2y$10$NRN42TE3sYhwXDWYA0DpRO8b3LHnIYgbxzhVtx3hbgiN4Frla.50y', NULL, NULL, NULL, '2021-01-14 16:15:41', '2021-01-14 16:15:41', NULL, NULL),
(90, 'Eugenia Bauch', 'evelyn.kruk@hotmail.com', '$2y$10$GUxR1SwOYqGFw5MeHGo3ZOYTbImYgtYddX3Ih8WX0wZbt4BZ3Mzfy', NULL, NULL, NULL, '2021-01-16 12:48:15', '2021-01-16 12:48:15', NULL, NULL),
(91, 'Gertrude Legros', 'kellybbrewer@hotmail.com', '$2y$10$Xe.gxHQPFs41iJuDUGnef.87xu7tRnBa92Z3yJrHPtEJz/ToscIKO', NULL, NULL, NULL, '2021-01-18 09:38:49', '2021-01-18 09:38:49', NULL, NULL),
(92, 'Kristopher Price', 'jsfletchjr1@yahoo.com', '$2y$10$.lHlOCvNiXJa2GVVYRIUauCAfRurJlH6.BHzP4vgG2XjDqwLkxeRS', NULL, NULL, NULL, '2021-01-19 16:53:20', '2021-01-19 16:53:20', NULL, NULL),
(93, 'Abdullah', 'abdullah.shahid@techclan.co', '$2y$10$7SUrsnArvPjDKvfO4pXat.//O/L2A.zQSdgNVk1n2hoe0AWib2vHW', NULL, NULL, NULL, '2021-01-27 07:33:55', '2021-01-27 07:33:55', NULL, NULL),
(94, 'Liam Harvey III', 'camin111@yahoo.com', '$2y$10$M.YzBsu5TyGuIbVyornM.OnjRmTzgWLT8lG.q9v83rzudccXyIZnu', NULL, NULL, NULL, '2021-02-01 12:48:17', '2021-02-01 12:48:17', NULL, NULL),
(95, 'Halle Kub', 'wbb4design@aol.com', '$2y$10$z/qVrNkzP5Y8kQc1PMsKh.FPBqI8ouu4hO13gjQ2Ws4bXTzhWuFfi', NULL, NULL, NULL, '2021-02-06 15:31:56', '2021-02-06 15:31:56', NULL, NULL),
(96, 'Michele Homenick', 'sittichai0801713081@gmail.com', '$2y$10$FLZG0bOL1ixLnkuU6rOlTOBqOomvHqgOAh8kyDn0KmGqtRpqwQphy', NULL, NULL, NULL, '2021-02-22 13:48:49', '2021-02-22 13:48:49', NULL, NULL),
(97, 'Shanelle Leannon', 'michaelgants99@gmail.com', '$2y$10$gZt8QPzhyds7voOPPV6C3.QX4IOxEs76UVrdd4HOeIkStqOAnTWu.', NULL, NULL, NULL, '2021-02-23 09:16:20', '2021-02-23 09:16:20', NULL, NULL),
(98, 'Edward Murphy', 'kunal@headfield.com', '$2y$10$3NPLbKrE.LpmZLLAOPITq.Hti/EMREmsIdvneinAhZvBAdbvADT8i', NULL, NULL, NULL, '2021-03-09 02:54:35', '2021-03-09 02:54:35', NULL, NULL),
(99, 'Delphia Sauer', 'Kelsi49@hotmail.com', '$2y$10$Wt6V1yJetReJ5Z2jvdvrquK3qHT/IA0IiG4NG.qlunSZk6CpUiMSu', NULL, NULL, NULL, '2021-03-11 09:26:14', '2021-03-11 09:26:14', NULL, NULL),
(100, 'Kelley Larson', 'jehusiphat@yahoo.com', '$2y$10$50CDWk3vXVJnkehOogshleLEDR1A775TXe.Dyl3ZFxgwi9gkY4uWe', NULL, NULL, NULL, '2021-03-16 07:03:00', '2021-03-16 07:03:00', NULL, NULL),
(101, 'Petra Kris', 'keithhill25@yahoo.com', '$2y$10$RGnlfh4V23E/LxA3STsAaewUEE.tKse.iReBjBNX9IE49NhAYcpma', NULL, NULL, NULL, '2021-03-19 12:10:45', '2021-03-19 12:10:45', NULL, NULL),
(102, 'Alfonsoler', 'anisimovaveronika@mail.com', '$2y$10$IOzylpq09zrdgNpjmop8ZOJLl.fiWokSQADuiZleuBcmAnEQj0KUe', NULL, NULL, NULL, '2021-03-23 13:16:59', '2021-03-23 13:16:59', NULL, NULL),
(103, 'Angelo Bernier', 's.griffon@yahoo.com', '$2y$10$3Ygh.4QwSj395R.xZ0aPzuylSRbpGX1GSl2Qs4Pe0JG/D/RazvV0W', NULL, NULL, NULL, '2021-03-31 16:33:59', '2021-03-31 16:33:59', NULL, NULL),
(104, 'Violet Botsford MD', 'conwaywill823@gmail.com', '$2y$10$5nnF7GErA.iUUa0RNT0qVOl8GfQJ85jsOivwoxV3QgSog4zKiM7ua', NULL, NULL, NULL, '2021-04-07 20:53:25', '2021-04-07 20:53:25', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
