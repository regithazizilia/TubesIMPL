-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2024 at 05:41 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugasakhir2`
--

-- --------------------------------------------------------

--
-- Table structure for table `bimbingan`
--

CREATE TABLE `bimbingan` (
  `id_bimbingan` int(10) NOT NULL,
  `nama_dsn` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login dosen`
--

CREATE TABLE `login dosen` (
  `username` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login mahasiswa`
--

CREATE TABLE `login mahasiswa` (
  `username` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seminarta1`
--

CREATE TABLE `seminarta1` (
  `id_seminar` int(10) NOT NULL,
  `NIM` int(10) NOT NULL,
  `nama_mhs` varchar(30) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `tema` varchar(100) NOT NULL,
  `nilai_adm` int(5) NOT NULL,
  `nilai_bimbingan` int(5) NOT NULL,
  `nilai_pengujian` int(5) NOT NULL,
  `nilai_seminar` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seminarta2`
--

CREATE TABLE `seminarta2` (
  `id_seminar` int(10) NOT NULL,
  `NIM` int(10) NOT NULL,
  `nama_mhs` varchar(30) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `tema` varchar(100) NOT NULL,
  `nilai_adm` int(5) NOT NULL,
  `nilai_bimbingan` int(5) NOT NULL,
  `nilai_pengujian` int(5) NOT NULL,
  `nilai_seminar` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ta1`
--

CREATE TABLE `ta1` (
  `NIM` int(10) NOT NULL,
  `nama_mahasiswa` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_HP` int(12) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `angkatan` int(4) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `fakultas` varchar(30) NOT NULL,
  `tema` varchar(30) NOT NULL,
  `judul` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ta2`
--

CREATE TABLE `ta2` (
  `NIM` int(10) NOT NULL,
  `nama_mhs` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_HP` int(12) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `angkatan` int(3) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `fakultas` varchar(30) NOT NULL,
  `tema` varchar(30) NOT NULL,
  `judul` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwalbimbingan`
--

CREATE TABLE `tb_jadwalbimbingan` (
  `kode_jadwal` int(10) NOT NULL,
  `jam` time NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwalseminar`
--

CREATE TABLE `tb_jadwalseminar` (
  `kode_jadwal` int(10) NOT NULL,
  `NIM` int(10) NOT NULL,
  `nama_mhs` varchar(30) NOT NULL,
  `fakultas` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `jam` varchar(5) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelayakan`
--

CREATE TABLE `tb_kelayakan` (
  `status_kelayakan` tinyint(1) DEFAULT NULL,
  `NIM` int(10) NOT NULL,
  `nama_mhs` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bimbingan`
--
ALTER TABLE `bimbingan`
  ADD PRIMARY KEY (`id_bimbingan`);

--
-- Indexes for table `login dosen`
--
ALTER TABLE `login dosen`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `login mahasiswa`
--
ALTER TABLE `login mahasiswa`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `seminarta1`
--
ALTER TABLE `seminarta1`
  ADD PRIMARY KEY (`id_seminar`),
  ADD KEY `NIM` (`NIM`);

--
-- Indexes for table `seminarta2`
--
ALTER TABLE `seminarta2`
  ADD PRIMARY KEY (`id_seminar`),
  ADD KEY `NIM` (`NIM`);

--
-- Indexes for table `ta1`
--
ALTER TABLE `ta1`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `ta2`
--
ALTER TABLE `ta2`
  ADD PRIMARY KEY (`NIM`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tb_jadwalbimbingan`
--
ALTER TABLE `tb_jadwalbimbingan`
  ADD PRIMARY KEY (`kode_jadwal`);

--
-- Indexes for table `tb_jadwalseminar`
--
ALTER TABLE `tb_jadwalseminar`
  ADD PRIMARY KEY (`kode_jadwal`),
  ADD KEY `NIM` (`NIM`);

--
-- Indexes for table `tb_kelayakan`
--
ALTER TABLE `tb_kelayakan`
  ADD KEY `NIM` (`NIM`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `seminarta1`
--
ALTER TABLE `seminarta1`
  ADD CONSTRAINT `seminarta1_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `ta1` (`NIM`);

--
-- Constraints for table `seminarta2`
--
ALTER TABLE `seminarta2`
  ADD CONSTRAINT `seminarta2_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `ta2` (`NIM`);

--
-- Constraints for table `tb_jadwalseminar`
--
ALTER TABLE `tb_jadwalseminar`
  ADD CONSTRAINT `tb_jadwalseminar_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `ta1` (`NIM`),
  ADD CONSTRAINT `tb_jadwalseminar_ibfk_2` FOREIGN KEY (`NIM`) REFERENCES `ta2` (`NIM`);

--
-- Constraints for table `tb_kelayakan`
--
ALTER TABLE `tb_kelayakan`
  ADD CONSTRAINT `tb_kelayakan_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `ta1` (`NIM`),
  ADD CONSTRAINT `tb_kelayakan_ibfk_2` FOREIGN KEY (`NIM`) REFERENCES `ta2` (`NIM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
