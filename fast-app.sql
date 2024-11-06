-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Nov 2024 pada 07.58
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fast-app`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi_room`
--

CREATE TABLE `reservasi_room` (
  `nama` varchar(250) NOT NULL,
  `nim` varchar(250) NOT NULL,
  `organisasi` varchar(250) NOT NULL,
  `unit_ruangan` varchar(250) NOT NULL,
  `tanggal_peminjaman` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `surat_permohonan` varchar(250) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `reservasi_room`
--

INSERT INTO `reservasi_room` (`nama`, `nim`, `organisasi`, `unit_ruangan`, `tanggal_peminjaman`, `tanggal_kembali`, `surat_permohonan`, `id`) VALUES
('Dika', '123456789', 'Himpunan Mahasiswa', 'Aula', '2024-12-01', '2024-12-02', 'uploads\\file_permohonan\\1730692316211.pdf', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `room`
--

CREATE TABLE `room` (
  `id` bigint(20) NOT NULL,
  `nama_ruangan` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `gambar_ruangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `room`
--

INSERT INTO `room` (`id`, `nama_ruangan`, `deskripsi`, `lokasi`, `gambar_ruangan`) VALUES
(6, 'Aula FST', 'Aula fst hdvcudsvc buc cjbcuiscb jcbsdc jh', 'L1 FST', 'uploads\\img\\1730692291247.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `reservasi_room`
--
ALTER TABLE `reservasi_room`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `reservasi_room`
--
ALTER TABLE `reservasi_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `room`
--
ALTER TABLE `room`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
