-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2020 at 03:04 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `kode` varchar(8) NOT NULL,
  `jenis` int(11) NOT NULL,
  `judul` varchar(68) NOT NULL,
  `tanggal` date NOT NULL,
  `pengarang` varchar(45) NOT NULL,
  `penerbit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `kode`, `jenis`, `judul`, `tanggal`, `pengarang`, `penerbit`) VALUES
(5, '24MF0J6T', 1, 'Pemograman Berorientasi Objek dengan Java', '2020-11-26', 'Warsun Najib', 'DTETI FT UGM'),
(6, '1OT67PKK', 3, 'Pengembagan Aplikasi Permainan dengan Greenfoot', '2018-11-26', 'Faishal Aditama', 'DTETI FT UGM'),
(7, 'D04JFVY3', 1, 'Pengantar Teknologi Informasi', '2018-11-26', 'M Suryanto', 'Gamapress'),
(8, '5OMCIOKZ', 2, 'Teknik Referensi Menulis Karya Ilmiah', '2014-12-01', 'Dian Ferriswara', 'Bentang Pustaka');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` int(5) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `tempat_lahir` varchar(41) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jurusan`, `tanggal`) VALUES
(4, 44681, 'Diaz Amaliana', 'Gunungkidul', '1997-10-28', 'S1 Teknologi Informasi', '2016-08-01'),
(5, 44683, 'Estri Puji Lestari', 'Sleman', '1998-08-27', 'S1 Teknologi Informasi', '2016-08-01'),
(6, 44694, 'Lely Monalisa', 'Purworejo', '1998-08-05', 'S1 Teknik Elektro', '2016-08-01'),
(7, 44467, 'Faishal Reza', 'Yogyakarta', '1998-06-06', 'S1 Teknik Elektro', '2016-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `nim` int(5) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `kode` varchar(8) NOT NULL,
  `judul` varchar(68) NOT NULL,
  `pinjam` date NOT NULL,
  `kembali` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `nim`, `nama`, `jurusan`, `kode`, `judul`, `pinjam`, `kembali`) VALUES
(11, 44683, 'Estri Puji Lestari', 'S1 Teknologi Informasi', 'D04JFVY3', 'Pengantar Teknologi Informasi', '2020-11-26', '2020-12-01'),
(13, 44681, 'Diaz Amaliana', 'S1 Teknologi Informasi', 'D04JFVY3', 'Pengantar Teknologi Informasi', '2020-11-26', '2020-12-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`,`kode`) USING BTREE;

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`,`nim`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
