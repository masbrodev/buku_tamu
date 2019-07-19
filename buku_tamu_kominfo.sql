-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2019 at 10:18 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buku_tamu_kominfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `coba`
--

CREATE TABLE IF NOT EXISTS `coba` (
  `username` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coba`
--

INSERT INTO `coba` (`username`, `pass`) VALUES
('poipoi', 'poipoip'),
('oipoipoi', 'oipoipoi'),
('uiiuyiuyiu', 'yuyiyiuyoiuy'),
('oiuyoiuyiouy', 'iouyoiuy');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE IF NOT EXISTS `links` (
  `ID` int(5) NOT NULL,
  `User_id` int(5) DEFAULT NULL,
  `Nama` varchar(150) NOT NULL,
  `Alamat` varchar(255) NOT NULL,
  `Tujuan` varchar(222) DEFAULT NULL,
  `Keperluan` varchar(100) NOT NULL,
  `Pesan` varchar(50) NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`ID`, `User_id`, `Nama`, `Alamat`, `Tujuan`, `Keperluan`, `Pesan`, `Created_at`) VALUES
(7, 2, 'iuoiuoi', 'uoiuoi', 'uoiuo', '', '', '2019-07-01 18:44:39'),
(8, 2, 'iuoiuo', 'uoiuoi', 'uoiuoi', '', '', '2019-07-01 18:44:45'),
(9, 2, 'iuoiuiou', 'oiuoiu', 'oiuoiuj', '', '', '2019-07-01 18:44:53'),
(10, 2, 'nama', 'alamat', 'tujuan', '', '', '2019-07-01 19:11:04'),
(12, 4, 'usama', 'jember', 'pkl', 'pkl', '', '2019-07-02 17:01:54'),
(17, 3, 'ppp', '', '', '', '', '2019-07-03 20:51:26'),
(19, 5, 'kikki', 'jakarta', 'sek kominfo', 'koordinasii', 'siapppp', '2019-07-04 04:49:28'),
(20, 5, 'bay', 'sbr', 'kasek', 'rapat', 'opopop', '2019-07-04 04:50:05'),
(21, 6, 'ooo', 'ooo', 'ooo', 'ooo', '', '2019-07-04 05:23:49'),
(25, 5, 'usa', 'lumajang', 'ketua', 'pkl', 'm.,m.', '2019-07-06 05:38:31'),
(27, 4, 'ihkjk', 'hqre', 're', 'e', '', '2019-07-07 07:03:34'),
(28, 4, 'kjgkdcw', 'mhhv', 'mhvkh', 'vh', '', '2019-07-07 07:03:53'),
(29, 2, 'hihiuhiu', 'iuyiuy', 'iuyiu', 'yiuyi', '', '2019-07-07 08:26:50'),
(30, 5, 'iuhiuh', 'iuhiuhi', 'uhiuhi', 'uhiuhi', ',m,m,m,m', '2019-07-07 08:30:20'),
(31, NULL, '', '', NULL, '', 'jljlk', '2019-07-07 10:16:46'),
(32, NULL, '', '', NULL, '', 'knknk', '2019-07-07 10:16:53'),
(33, 5, 'pupoiqpo', 'ipoip', 'oipoi', 'poip', '', '2019-07-07 15:14:41'),
(34, 5, 'uoiuoiuiuoiu', 'oiuoiuoi', 'uoiuoiu', 'oiuoiuo', '', '2019-07-07 15:45:32'),
(35, 5, 'iyoiio', 'uoiuoiu', 'oiuoiuo', 'iuoiuio', '', '2019-07-07 15:49:40'),
(36, 4, 'apdojad', 'pjad', 'poand', 'inopo', '', '2019-07-07 16:17:04'),
(37, 5, 'ipio', 'ipoi', 'poipo', 'ipo', '', '2019-07-07 16:31:57'),
(38, 5, 'ipio', 'ipoi', 'poipo', 'ipo', '', '2019-07-07 16:31:57'),
(39, 5, 'ijlkj', 'lkjlkj', 'lkjkl', 'jl', '', '2019-07-07 16:45:30'),
(40, 5, 'jlk', 'jkljl', 'kjlk', 'jlkj', '', '2019-07-07 16:45:58'),
(41, 5, ';lk;lk', ';lk', ';lk', ';lk', '', '2019-07-07 16:51:38'),
(43, 5, 'kkjkj', 'kjkjk', 'kjkjk', 'jkjkj', '', '2019-07-09 05:40:16'),
(44, 5, 'uouiuo', 'iuoiu', 'oiuoiu', 'oiu', '', '2019-07-09 11:41:07'),
(45, 5, 'nmnmnmnmnm', 'nmnm', 'nmnm', 'nmnm', '', '2019-07-10 09:27:10'),
(46, 5, 'satu', 'ui', 'uoi', 'uo', '', '2019-07-10 14:34:39'),
(47, 5, 'oneeee', 'q', 'q', 'q', '', '2019-07-10 14:36:54'),
(48, 5, 'dua', 'oipoi', 'poip', 'oip', '', '2019-07-11 11:06:39'),
(49, 5, 'aaa', 'aaa', 'aaa', 'aa', '', '2019-07-11 11:53:08'),
(50, 5, 'per', 'opo', 'po', 'pop', '', '2019-07-11 13:07:20'),
(51, 5, 'qqqq', 'qqqq', 'q', 'qq', '', '2019-07-11 18:00:22');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('-7NFCZzRdDN3RprHPelLelBdIiErt2u_', 1562935761, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"flash":{},"passport":{"user":5}}'),
('ggy7nUh4lZUvGsnBU8Ee5ATqYVR8LOIN', 1562955425, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"flash":{},"passport":{"user":5}}'),
('wCsXDKOKyWsjTTpYwNDHVfUH2blXDAOM', 1562938098, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"flash":{},"passport":{"user":5}}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(5) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`) VALUES
(2, 'p', '$2a$10$6R4hN3nVtamYJT6h.YXF0O2p7x/wU2lj5iyNW7kHtopRsACPCSpyS', 'p'),
(3, 'q', '$2a$10$kO8mzVQk8t0CKCLmM.jBROAzSsTx7Pc7FoWALAbnh.grl9LQtAvkO', 'q'),
(4, 'jou', '$2a$10$uQUpQtMyTKYmQRTlLtnqmu14j6yBHQjRNdsQRH3b7DNJxaHI/LU8K', 'ilham jou'),
(5, 'usa', '$2a$10$.OwwpaME.OOraiAO3bTYhONQ26QnoSlX.sFi5bWwyXCpkL09OMIou', 'usa mania'),
(6, 'p', '$2a$10$dcoim8utB5rWs2sGK/DpjOkyk/qZXRh96T2fGAdkC0oFPQtGdFl7S', 'p'),
(7, '123', '$2a$10$9ClcP68DzbMEbouIkhF5y.kX1zjPfwAmhHnfIauzE29G38usGXNNe', 'jou'),
(8, 'oiindf', '$2a$10$Yyaklb.voe2IQ4MjlWSSYuG3cFjxJ8yoA030McQJEoUZv3BDDUfUq', 'wadio');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_links_users` (`User_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `links`
--
ALTER TABLE `links`
  ADD CONSTRAINT `fk_links_users` FOREIGN KEY (`User_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
