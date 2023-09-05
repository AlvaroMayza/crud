-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Sep 2023 pada 07.53
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_guru`
--

CREATE TABLE `t_guru` (
  `f_idguru` int(11) NOT NULL,
  `f_nama` varchar(50) DEFAULT NULL,
  `f_deskripsi` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_guru`
--

INSERT INTO `t_guru` (`f_idguru`, `f_nama`, `f_deskripsi`) VALUES
(1, 'Jumanta Hamdayama', 'Guru Pendidikan Pancasila Kewarga Negaraan'),
(2, 'Nuraini Azizah', 'Guru Rekayasa Perangkat Lunak'),
(3, 'Nugroho N Agung Pribadi', 'Guru Rekayasa Perangkat Lunak'),
(4, 'Ardana Adam Sutrisno', 'Guru Rekayasa Perangkat Lunak dan Desain'),
(5, 'Abdul Wahid', 'Guru Olahraga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_jurusan`
--

CREATE TABLE `t_jurusan` (
  `f_idjurusan` int(11) NOT NULL,
  `f_namajurusan` varchar(80) NOT NULL,
  `f_deskripsi` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_jurusan`
--

INSERT INTO `t_jurusan` (`f_idjurusan`, `f_namajurusan`, `f_deskripsi`) VALUES
(1, 'RPL', NULL),
(2, 'DKV', NULL),
(3, 'AKL', NULL),
(4, 'PM', NULL),
(5, 'OTKP', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kelas`
--

CREATE TABLE `t_kelas` (
  `f_idkelas` int(11) NOT NULL,
  `f_nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_kelas`
--

INSERT INTO `t_kelas` (`f_idkelas`, `f_nama`) VALUES
(1, 'X'),
(2, 'XI'),
(3, 'XII');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_murid`
--

CREATE TABLE `t_murid` (
  `f_idmurid` int(11) NOT NULL,
  `f_namamurid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pelajaran`
--

CREATE TABLE `t_pelajaran` (
  `f_idpelajaran` int(11) NOT NULL,
  `f_namapelajaran` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_guru`
--
ALTER TABLE `t_guru`
  ADD PRIMARY KEY (`f_idguru`);

--
-- Indeks untuk tabel `t_jurusan`
--
ALTER TABLE `t_jurusan`
  ADD PRIMARY KEY (`f_idjurusan`);

--
-- Indeks untuk tabel `t_kelas`
--
ALTER TABLE `t_kelas`
  ADD PRIMARY KEY (`f_idkelas`);

--
-- Indeks untuk tabel `t_murid`
--
ALTER TABLE `t_murid`
  ADD PRIMARY KEY (`f_idmurid`);

--
-- Indeks untuk tabel `t_pelajaran`
--
ALTER TABLE `t_pelajaran`
  ADD PRIMARY KEY (`f_idpelajaran`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `t_guru`
--
ALTER TABLE `t_guru`
  MODIFY `f_idguru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `t_jurusan`
--
ALTER TABLE `t_jurusan`
  MODIFY `f_idjurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `t_kelas`
--
ALTER TABLE `t_kelas`
  MODIFY `f_idkelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `t_murid`
--
ALTER TABLE `t_murid`
  MODIFY `f_idmurid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_pelajaran`
--
ALTER TABLE `t_pelajaran`
  MODIFY `f_idpelajaran` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
