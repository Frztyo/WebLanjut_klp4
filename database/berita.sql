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
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `user_id` int(20) NOT NULL,
  `kategori_id` int(20) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `file_upload` varchar(200) NOT NULL,
  `isi_berita` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `user_id`, `kategori_id`, `judul`, `file_upload`, `isi_berita`, `date_created`) VALUES
(12, 4, 3, 'mantap', '1616773706-gambar1.jpg', 'emang sangat mantap', '2024-10-24 00:45:57'),
(13, 4, 2, 'rftgyhjmk', '64280503-gambar6.png', 'dxcfvgbncvbnmdkbshfshfowef ruirh furfidsf ertrd et etyieru th ruigtuie tr', '2024-10-24 00:59:08'),
(14, 4, 3, 'enak sekali', '1296524846-gambar8.png', 'uih', '2024-10-24 01:16:45'),
(15, 4, 4, 'makanan enak', '1055681119-gambar5.jpeg', 'lamak rasonyo', '2024-10-24 01:23:25');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
