-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2023 pada 10.14
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klinikci_anggrek`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berobat`
--

CREATE TABLE `berobat` (
  `id_berobat` int(11) NOT NULL,
  `id_pasien` int(5) DEFAULT NULL,
  `id_dokter` int(5) DEFAULT NULL,
  `tgl_berobat` date DEFAULT NULL,
  `keluhan_pasien` varchar(200) DEFAULT NULL,
  `hasil_diagnosa` varchar(200) DEFAULT NULL,
  `penatalaksanaan` enum('Rawat Jalan','Rawat Inap','Rujuk','Lainnya') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berobat`
--

INSERT INTO `berobat` (`id_berobat`, `id_pasien`, `id_dokter`, `tgl_berobat`, `keluhan_pasien`, `hasil_diagnosa`, `penatalaksanaan`) VALUES
(1, 9, 5, '2020-09-29', 'Batuk', 'Flu Biasa', 'Rawat Jalan'),
(5, 3, 1, '2020-09-29', 'Pusing', 'Vertigo', 'Rujuk'),
(7, 9, 5, '2020-09-29', 'Batuk Lebih Parah, Pusing', 'Flu Berat', 'Rawat Jalan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(5) NOT NULL,
  `nama_dokter` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama_dokter`) VALUES
(1, 'Alexander Paijo'),
(5, 'Martini'),
(7, 'Debby Sulistyowati');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(5) NOT NULL,
  `nama_obat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`) VALUES
(1, 'Bodrex'),
(3, 'Paramex'),
(7, 'Konidin'),
(9, 'Paracetamol');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(5) NOT NULL,
  `nama_pasien` varchar(40) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `umur` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `jenis_kelamin`, `umur`) VALUES
(1, 'Budi Santosa', 'L', 32),
(3, 'Ani Mardaleni', 'P', 24),
(7, 'Andi Saputra', 'L', 18),
(9, 'Ahmad Basuki', 'L', 34),
(11, 'Bunga', 'L', 18),
(12, 'Dono', 'L', 23);

-- --------------------------------------------------------

--
-- Struktur dari tabel `resep_obat`
--

CREATE TABLE `resep_obat` (
  `id_resep` int(11) NOT NULL,
  `id_berobat` int(11) DEFAULT NULL,
  `id_obat` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `resep_obat`
--

INSERT INTO `resep_obat` (`id_resep`, `id_berobat`, `id_obat`) VALUES
(3, 1, 1),
(5, 5, 1),
(7, 5, 3),
(9, 7, 3),
(11, 7, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'admin', 'admin', 'Hari Aspriyono'),
(3, 'admin2', 'admin2', 'Admin Satu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berobat`
--
ALTER TABLE `berobat`
  ADD PRIMARY KEY (`id_berobat`),
  ADD KEY `FK__pasien` (`id_pasien`),
  ADD KEY `FK__dokter` (`id_dokter`);

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indeks untuk tabel `resep_obat`
--
ALTER TABLE `resep_obat`
  ADD PRIMARY KEY (`id_resep`),
  ADD KEY `FK__berobat` (`id_berobat`),
  ADD KEY `FK__obat` (`id_obat`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berobat`
--
ALTER TABLE `berobat`
  MODIFY `id_berobat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `resep_obat`
--
ALTER TABLE `resep_obat`
  MODIFY `id_resep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `berobat`
--
ALTER TABLE `berobat`
  ADD CONSTRAINT `FK__dokter` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK__pasien` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `resep_obat`
--
ALTER TABLE `resep_obat`
  ADD CONSTRAINT `FK__berobat` FOREIGN KEY (`id_berobat`) REFERENCES `berobat` (`id_berobat`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK__obat` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
