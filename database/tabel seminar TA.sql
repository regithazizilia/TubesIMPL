-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Des 2023 pada 02.54
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas_akhir_ipl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `seminar ta1`
--

CREATE TABLE `seminar ta1` (
  `id_seminar` int(10) NOT NULL,
  `NIM` int(10) NOT NULL,
  `nama_mhs` varchar(30) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `tema` varchar(100) NOT NULL,
  `nilai_adm` int(5) NOT NULL,
  `nilai_bimbingan` int(5) NOT NULL,
  `nilai_pengujian` int(5) NOT NULL,
  `nilai_seminar` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `seminar ta2`
--

CREATE TABLE `seminar ta2` (
  `id_seminar` int(10) NOT NULL,
  `NIM` int(10) NOT NULL,
  `nama_mhs` varchar(30) NOT NULL,
  `Judul` varchar(100) NOT NULL,
  `tema` varchar(100) NOT NULL,
  `nilai_adm` int(5) NOT NULL,
  `nilai_bimbingan` int(5) NOT NULL,
  `nilai_pengujian` int(5) NOT NULL,
  `nilai_seminar` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `seminar ta1`
--
ALTER TABLE `seminar ta1`
  ADD PRIMARY KEY (`id_seminar`),
  ADD KEY `NIM` (`NIM`),
  ADD KEY `judul` (`judul`),
  ADD KEY `judul_2` (`judul`);

--
-- Indeks untuk tabel `seminar ta2`
--
ALTER TABLE `seminar ta2`
  ADD PRIMARY KEY (`id_seminar`),
  ADD KEY `NIM` (`NIM`,`Judul`,`tema`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
