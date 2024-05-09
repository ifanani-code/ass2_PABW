-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Bulan Mei 2024 pada 06.57
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
-- Database: `desa_tanggap`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int(11) NOT NULL,
  `id_masyarakat` int(11) NOT NULL,
  `kategori_laporan` varchar(255) NOT NULL,
  `judul_laporan` varchar(255) NOT NULL,
  `deskripsi_laporan` text NOT NULL,
  `tanggal_laporan` datetime NOT NULL,
  `status_laporan` enum('Baru','Sedang Diproses','Selesai') NOT NULL DEFAULT 'Baru',
  `lampiran` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `id_masyarakat`, `kategori_laporan`, `judul_laporan`, `deskripsi_laporan`, `tanggal_laporan`, `status_laporan`, `lampiran`) VALUES
(1, 1, 'Sampah', 'Sampah menumpuk di jalan', 'Jalan depan rumah saya penuh dengan sampah yang sudah berhari-hari tidak diangkut.', '2024-05-09 10:00:00', 'Baru', 'foto_sampah1.jpg'),
(2, 2, 'Penerangan Jalan', 'Lampu jalan mati', 'Lampu jalan di depan rumah saya sudah mati beberapa hari ini.', '2024-05-09 11:00:00', 'Baru', 'foto_lampu_mati1.jpg'),
(3, 3, 'Fasilitas Umum', 'Taman rusak', 'Peralatan bermain di taman dekat rumah saya rusak.', '2024-05-09 12:00:00', 'Baru', 'foto_taman_rusak1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`),
  ADD KEY `id_masyarakat` (`id_masyarakat`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD CONSTRAINT `laporan_ibfk_1` FOREIGN KEY (`id_masyarakat`) REFERENCES `masyarakat_desa` (`id_masyarakat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
