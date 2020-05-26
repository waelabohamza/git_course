-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2020 at 11:54 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobtech`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`) VALUES
(1, 'samsung'),
(2, 'realme'),
(3, 'huawei'),
(4, 'xiaomi'),
(5, 'apple');

-- --------------------------------------------------------

--
-- Table structure for table `mobiles`
--

CREATE TABLE `mobiles` (
  `mob_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `screen` varchar(255) NOT NULL,
  `screen_protect` varchar(255) NOT NULL,
  `screen_res` varchar(255) NOT NULL,
  `system` varchar(255) NOT NULL,
  `cpu` varchar(255) NOT NULL,
  `num_core` varchar(255) NOT NULL,
  `gpu` varchar(255) NOT NULL,
  `memory` varchar(255) NOT NULL,
  `ram` varchar(255) NOT NULL,
  `battery` varchar(255) NOT NULL,
  `camera_main` varchar(255) NOT NULL,
  `camera_feature` varchar(255) NOT NULL,
  `camera_video` varchar(255) NOT NULL,
  `camera_ultra` varchar(255) NOT NULL DEFAULT 'لا يوجد',
  `camera_tele` varchar(255) NOT NULL DEFAULT 'لا يوجد',
  `camera_depth` varchar(255) NOT NULL DEFAULT 'لا يوجد',
  `camera_micro` varchar(255) NOT NULL DEFAULT 'لا يوجد',
  `camera_self` varchar(255) NOT NULL,
  `camera_self_feature` varchar(255) NOT NULL,
  `camera_self_video` varchar(255) NOT NULL,
  `price_eg` varchar(255) NOT NULL DEFAULT 'غير متوفر',
  `price_sa` varchar(255) NOT NULL DEFAULT 'غير متوفر',
  `price_uae` varchar(255) NOT NULL DEFAULT 'غير متوفر',
  `price_jo` varchar(255) NOT NULL DEFAULT 'غير متوفر',
  `price_sy` varchar(255) NOT NULL DEFAULT 'غير متوفر',
  `price_alg` varchar(255) NOT NULL DEFAULT 'غير متوفر',
  `mob_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mobiles`
--

INSERT INTO `mobiles` (`mob_id`, `name`, `screen`, `screen_protect`, `screen_res`, `system`, `cpu`, `num_core`, `gpu`, `memory`, `ram`, `battery`, `camera_main`, `camera_feature`, `camera_video`, `camera_ultra`, `camera_tele`, `camera_depth`, `camera_micro`, `camera_self`, `camera_self_feature`, `camera_self_video`, `price_eg`, `price_sa`, `price_uae`, `price_jo`, `price_sy`, `price_alg`, `mob_cat`) VALUES
(3, 'Galaxy Z filp', 'Foldable Dynamic AMOLED 6.7 inches', 'لايوجد', '(425 ppi)FullHd', 'Android 10, One UI 2', 'Snapdragon 855+', 'ثماني الانوية', 'Adreno 640', '256GB', '8GB RAM', '3300 MAh', '12 MP, (f/1.8)', ' Dual Pixel PDAF, OIS ,LED flash, HDR  panorama', '4K@30/60fps,  HDR10+', '12 MP, f/2.2', 'لايوجد', 'لايوجد', 'لايوجد', '10 MP, f/2.4', 'HDR', '4K@30fps', 'eg', 'sa', 'ua', 'jo', 'sy', 'غير متوفر', 1),
(5, 'galaxy s20', '(Dynamic AMOLED) (6.2 inch)(HDR10+)(120Hz)', 'Corning Gorilla Glass 6', '563 ppi density QHD', 'Android 10, One UI 2', 'Snapdragon 865 / Exynos 990', 'ثماني', 'Adreno 650/Mali-G77 MP11', '128GB', '8GB', '(4000 MAh)شحن سريع ولاسلكي', '(12 MP) (f/1.8)', ' Dual Pixel PDAF, OIS', '8K@24fps, 4K@30/60fps \r\nHDR10+, stereo sound rec., gyro-EIS & OIS', '12 MP, f/2.2 (Super Steady video)', '64 MP, f/2.0 (PDAF, OIS, 1.1x optical zoom, 3x hybrid zoom)', 'لا يوجد', 'لا يوجد', '10 MP, f/2.2', 'Dual Pixel PDAF , Dual video call, Auto-HDR', '4K@30/60fps, 1080p@30fps', '1000', '2000', '3000', '4000', '5000', 'غير متوفر', 1),
(7, 'Galaxy S20 Ultra', '(Dynamic AMOLED)(6.9 inches)(HDR10+)', '(Gorilla Glass 6) ,(مقاوم للماء والغبار)', '(QHD)(~511 ppi density)', 'Android 10, One UI 2', 'Snapdragon 865 / Exynos 990', 'ثماني', '(Mali-G77 MP11) /(Adreno 650)', '128GB', '12G', '(Fast charging 45W)\r\n(Fast Qi/PMA wireless charging 15W)', '(108 MP)(f/1.8)', '(PDAF, OIS)(auto-HDR)(panorama)', '8K@24fps, 4K@30/60fps(stereo sound rec., gyro-EIS & OIS)', '(12 MP)(f/2.2)(Super Steady video)', '(48 MP)(f/3.5)( PDAF, OIS, 4x optical zoom, 10x hybrid zoom)', 'لا يوجد', 'لا يوجد', '(40 MP, f/2.2)', '(Dual video call, Auto-HDR)', '4K@30/60fps, 1080p@30fps', 'غير متوفر', 'غير متوفر', 'غير متوفر', 'غير متوفر', 'غير متوفر', 'غير متوفر', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'wael', 'wael@gmail.com', 'wael'),
(3, 'basel', 'basel@gmail.com', 'basel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `mobiles`
--
ALTER TABLE `mobiles`
  ADD PRIMARY KEY (`mob_id`),
  ADD KEY `mobiles` (`mob_cat`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mobiles`
--
ALTER TABLE `mobiles`
  MODIFY `mob_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mobiles`
--
ALTER TABLE `mobiles`
  ADD CONSTRAINT `mobiles` FOREIGN KEY (`mob_cat`) REFERENCES `categories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
