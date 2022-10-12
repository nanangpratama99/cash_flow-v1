-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2022 at 11:36 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cash`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `idabsen` int(11) NOT NULL,
  `nim` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `absenmasuk` datetime DEFAULT NULL,
  `absenout` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`idabsen`, `nim`, `tanggal`, `absenmasuk`, `absenout`) VALUES
(1, '2002007', '2022-03-28', '2022-03-28 07:30:00', '2022-03-28 16:00:00'),
(2, '2002007', '2022-03-27', '2022-03-28 06:30:00', '2022-03-28 16:00:00'),
(3, '2002007', '2022-03-26', '2022-03-28 10:30:19', '2022-03-28 10:30:20'),
(4, '2002007', '2022-03-25', NULL, '2022-03-28 16:00:00'),
(5, '2002007', '2022-03-24', '2022-03-28 06:34:38', NULL),
(6, NULL, '2022-03-28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(25) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(200) NOT NULL,
  `kode` int(11) DEFAULT NULL,
  `email` int(11) DEFAULT NULL,
  `nidn` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`, `kode`, `email`, `nidn`) VALUES
(1, 'Admin Website', 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', 1, NULL, NULL),
(2, 'Admin Website', 'user', '5f4dcc3b5aa765d61d8327deb882cf99', 2, NULL, NULL),
(3, '', 'njir', 'a8f91612027128220252d7d68925b846', 2, NULL, NULL),
(5, '', 'hi', '49f68a5c8493ec2c0bf489821c21fc3b', 2, NULL, NULL),
(6, '', 'admin', '21232f297a57a5a743894a0e4a801fc3', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(25) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `umur` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kas`
--

CREATE TABLE `kas` (
  `id` int(25) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `jumlah` varchar(200) NOT NULL,
  `tanggal` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `keluar`
--

CREATE TABLE `keluar` (
  `id` int(25) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `jumlah` varchar(200) NOT NULL,
  `tanggal` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `id` int(25) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(200) NOT NULL,
  `kode` int(11) DEFAULT NULL,
  `nidn` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`id`, `nama`, `username`, `password`, `kode`, `nidn`, `email`) VALUES
(6, 'ha', 'ha', '925cc8d2953eba624b2bfedf91a91613', 2, NULL, NULL),
(7, 'haha', 'haha', '4e4d6c332b6fe62a63afe56171fd3725', 2, 23, NULL),
(8, 'haha', 'asd', '7815696ecbf1c96e6894b779456d330e', 2, 232, 'asd'),
(9, 'haha', 'admin', '21232f297a57a5a743894a0e4a801fc3', 2, 23, 'fakhriaja1219@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`idabsen`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kas`
--
ALTER TABLE `kas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `idabsen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kas`
--
ALTER TABLE `kas`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keluar`
--
ALTER TABLE `keluar`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
