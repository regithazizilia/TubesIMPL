-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2024 at 08:40 PM
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
-- Database: `seminar`
--

-- --------------------------------------------------------

--
-- Table structure for table `bimbingan`
--

CREATE TABLE `bimbingan` (
  `id_bimbingan` int(10) NOT NULL,
  `id_seminar` int(10) NOT NULL,
  `id_dsn1` bigint(10) NOT NULL,
  `id_dsn2` bigint(10) NOT NULL,
  `pers1` tinyint(1) DEFAULT NULL,
  `pers2` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bimbingan`
--

INSERT INTO `bimbingan` (`id_bimbingan`, `id_seminar`, `id_dsn1`, `id_dsn2`, `pers1`, `pers2`) VALUES
(3, 3, 2251000001, 2251000004, 1, NULL),
(4, 6, 2251000004, 2251000005, NULL, 1),
(5, 7, 2251000003, 2251000002, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seminar`
--

CREATE TABLE `seminar` (
  `id_seminar` int(10) NOT NULL,
  `NIM` bigint(10) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `tema` varchar(100) DEFAULT NULL,
  `nilai_adm` int(5) DEFAULT NULL,
  `nilai_bimbingan` int(5) DEFAULT NULL,
  `nilai_pengujian` int(5) DEFAULT NULL,
  `nilai_seminar` int(5) DEFAULT NULL,
  `ta` int(1) DEFAULT NULL,
  `kelayakan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seminar`
--

INSERT INTO `seminar` (`id_seminar`, `NIM`, `judul`, `tema`, `nilai_adm`, `nilai_bimbingan`, `nilai_pengujian`, `nilai_seminar`, `ta`, `kelayakan`) VALUES
(3, 3411211080, 'rtshjh5', 'ytdjuyk', 43, 67, 67, 59, 1, 'Layak Maju'),
(6, 3411211081, 'rye', 'yu', 21, 76, 44, 47, 2, NULL),
(7, 3411211047, 'erg', 'tyh', 10, 87, 99, 65, 2, 'Tidak Layak Maju');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwalbimbingan`
--

CREATE TABLE `tb_jadwalbimbingan` (
  `kode_jadwal` int(10) NOT NULL,
  `id_seminar` int(10) NOT NULL,
  `jam` varchar(10) NOT NULL,
  `tanggal` datetime NOT NULL,
  `bimbingan` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_jadwalbimbingan`
--

INSERT INTO `tb_jadwalbimbingan` (`kode_jadwal`, `id_seminar`, `jam`, `tanggal`, `bimbingan`) VALUES
(10, 3, '21:00', '2024-01-19 17:51:51', 1),
(11, 3, '08:00', '2024-01-25 17:51:52', 2),
(12, 3, '08:00', '2024-02-01 17:53:30', 3),
(13, 3, '17:00', '2024-02-13 17:53:34', 4),
(14, 3, '08:00', '2024-02-22 17:53:37', 5),
(15, 6, '06:00', '2024-01-18 01:09:22', 1),
(16, 6, '09:00', '2024-01-21 01:09:24', 2),
(17, 6, '21:00', '2024-01-19 01:09:26', 3),
(18, 6, '14:00', '2024-01-20 01:09:27', 4),
(19, 6, '21:00', '2024-01-03 01:09:28', 5),
(20, 7, '08:00', '2024-01-26 02:26:14', 1),
(21, 7, '07:00', '2024-01-16 02:26:19', 2),
(22, 7, '16:00', '2024-01-20 00:00:00', 3),
(23, 7, '08:00', '2024-01-13 02:26:31', 4),
(24, 7, '16:00', '2024-01-21 02:26:38', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwalseminar`
--

CREATE TABLE `tb_jadwalseminar` (
  `kode_jadwal` int(10) NOT NULL,
  `id_seminar` int(10) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `lokasi` varchar(20) NOT NULL,
  `jam` varchar(5) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_jadwalseminar`
--

INSERT INTO `tb_jadwalseminar` (`kode_jadwal`, `id_seminar`, `kelas`, `lokasi`, `jam`, `tanggal`) VALUES
(2, 3, 'hfbz', 'dhztg', 'sfv', '2024-01-10 14:03:53'),
(3, 6, 'trh', 'ytru', '07:00', '2024-01-23 18:10:44'),
(4, 7, 'uyk', 'uykuy', 'yj', '2024-01-18 19:27:07');

-- --------------------------------------------------------

--
-- Table structure for table `user_dosen`
--

CREATE TABLE `user_dosen` (
  `username` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama_dsn` varchar(30) NOT NULL,
  `NID` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_dosen`
--

INSERT INTO `user_dosen` (`username`, `password`, `nama_dsn`, `NID`) VALUES
('DianRahayu', '2251000001', 'Dian Rahayu Amira', 2251000001),
('FirmanUtama', '2251000003', 'Firman Utama', 2251000003),
('JuanAndhika', '2251000002', 'Juan Andhika', 2251000002),
('NadyaAfrilia', '2251000004', 'Nadya Afrilia ', 2251000004),
('RaihanMalik', '2251000005', 'Raihan Dehan Malik', 2251000005);

-- --------------------------------------------------------

--
-- Table structure for table `user_mahasiswa`
--

CREATE TABLE `user_mahasiswa` (
  `username` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `NIM` bigint(10) NOT NULL,
  `nama_mhs` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `fakultas` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `angkatan` int(4) NOT NULL,
  `no_hp` bigint(12) NOT NULL,
  `alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_mahasiswa`
--

INSERT INTO `user_mahasiswa` (`username`, `password`, `NIM`, `nama_mhs`, `email`, `fakultas`, `jurusan`, `tempat`, `tanggal_lahir`, `angkatan`, `no_hp`, `alamat`) VALUES
('AdindaRahma ', '3411211081', 3411211081, 'Adinda Rahma Illawati', 'adinda@gmail.com', 'Kedokteran', 'Kedokteran Gigi', 'Batujajar', '2002-11-20', 2021, 891221878291, 'Jakarta'),
('ErwinMaulana', '3411211047', 3411211047, 'Erwin Maulana', 'erwinmaulana@gmail.com', 'Teknik Mesin', 'Teknik Mesin', 'Cimahi', '2002-10-13', 2020, 89755612819, 'Cimahi'),
('HanaPutri', '3411211033', 3411211033, 'Hana Putri Alayya', 'hanaa@gmail.com', 'Psikologi', 'Psikologi', 'Bandung', '2002-07-24', 2019, 88952940271, 'Surabaya'),
('MuhammadIrsyad', '3411211053', 3411211053, 'Muhammad Irsyad Hidayat', 'irsyadd@gmail.com', 'Informatika', 'Informatika', 'Cimahi', '2002-04-08', 2020, 81783564712, 'Bandung'),
('RegithaZizilia', '3411211080', 3411211080, 'Regitha Zizilia', 'regithawz@gmail.com', 'Kedokteran', 'Kedokteran Umum', 'Bandung', '2002-12-22', 2021, 81320397877, 'dszg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bimbingan`
--
ALTER TABLE `bimbingan`
  ADD PRIMARY KEY (`id_bimbingan`);

--
-- Indexes for table `seminar`
--
ALTER TABLE `seminar`
  ADD PRIMARY KEY (`id_seminar`),
  ADD KEY `NIM` (`NIM`);

--
-- Indexes for table `tb_jadwalbimbingan`
--
ALTER TABLE `tb_jadwalbimbingan`
  ADD PRIMARY KEY (`kode_jadwal`),
  ADD KEY `id_seminar` (`id_seminar`);

--
-- Indexes for table `tb_jadwalseminar`
--
ALTER TABLE `tb_jadwalseminar`
  ADD PRIMARY KEY (`kode_jadwal`),
  ADD KEY `NIM` (`id_seminar`);

--
-- Indexes for table `user_dosen`
--
ALTER TABLE `user_dosen`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user_mahasiswa`
--
ALTER TABLE `user_mahasiswa`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `NIM` (`NIM`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bimbingan`
--
ALTER TABLE `bimbingan`
  MODIFY `id_bimbingan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seminar`
--
ALTER TABLE `seminar`
  MODIFY `id_seminar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_jadwalbimbingan`
--
ALTER TABLE `tb_jadwalbimbingan`
  MODIFY `kode_jadwal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_jadwalseminar`
--
ALTER TABLE `tb_jadwalseminar`
  MODIFY `kode_jadwal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `seminar`
--
ALTER TABLE `seminar`
  ADD CONSTRAINT `seminar_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `user_mahasiswa` (`NIM`);

--
-- Constraints for table `tb_jadwalbimbingan`
--
ALTER TABLE `tb_jadwalbimbingan`
  ADD CONSTRAINT `tb_jadwalbimbingan_ibfk_1` FOREIGN KEY (`id_seminar`) REFERENCES `seminar` (`id_seminar`);

--
-- Constraints for table `tb_jadwalseminar`
--
ALTER TABLE `tb_jadwalseminar`
  ADD CONSTRAINT `tb_jadwalseminar_ibfk_1` FOREIGN KEY (`id_seminar`) REFERENCES `seminar` (`id_seminar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
