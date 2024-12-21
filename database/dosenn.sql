-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Des 2024 pada 17.10
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
-- Database: `tekom_2b`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosenn`
--

CREATE TABLE `dosenn` (
  `id` int(11) NOT NULL,
  `nip` char(15) NOT NULL,
  `nama_dosen` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `prodi_id` int(11) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosenn`
--

INSERT INTO `dosenn` (`id`, `nip`, `nama_dosen`, `email`, `prodi_id`, `notelp`, `alamat`) VALUES
(10, '78573485', 'yori', 'yori@gmail.com', 6, '0843264532', 'padng'),
(13, '123456789', 'fghjfgh', 'dfghjk@gmail.com', 0, '0987654323', 'dfghjklghj'),
(14, '34567890678', 'bnmcvbnm', 'sdfghj@gmail.com', 0, '0987654321321', 'sdfghjkvbn');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosenn`
--
ALTER TABLE `dosenn`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD KEY `prodi_id` (`prodi_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dosenn`
--
ALTER TABLE `dosenn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
