-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Okt 2020 pada 14.45
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas_akhir_2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ekstrakurikuler`
--

CREATE TABLE `ekstrakurikuler` (
  `idekstrakurikuler` int(11) NOT NULL,
  `nama_eks` varchar(20) DEFAULT NULL,
  `keterangan` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `ekstrakurikuler`
--

INSERT INTO `ekstrakurikuler` (`idekstrakurikuler`, `nama_eks`, `keterangan`) VALUES
(30, 'Karate', 'asdasfasdasdfasd'),
(31, 'Berenang', 'asdasfasdasd'),
(32, 'Memanah', 'asdasfasdasd'),
(33, 'Basket', 'asdasfasd'),
(34, 'Futsal', 'asdasfasdasd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ekstrakurikuler_has_info_sekolah`
--

CREATE TABLE `ekstrakurikuler_has_info_sekolah` (
  `ekstrakurikuler_idekstrakurikuler` int(11) NOT NULL,
  `info_sekolah_idinfo_sekolah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `ekstrakurikuler_has_info_sekolah`
--

INSERT INTO `ekstrakurikuler_has_info_sekolah` (`ekstrakurikuler_idekstrakurikuler`, `info_sekolah_idinfo_sekolah`) VALUES
(30, 20532804),
(30, 20532989),
(30, 23478823),
(30, 23948234),
(31, 20532804),
(31, 23478823),
(31, 23948234),
(32, 23478823),
(33, 20532804),
(33, 20532989),
(33, 23948234),
(34, 20532804),
(34, 20532989),
(34, 23948234);

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto_sekolah`
--

CREATE TABLE `foto_sekolah` (
  `idfoto_sekolah` int(11) NOT NULL,
  `nama_foto` varchar(20) DEFAULT NULL,
  `extention` varchar(5) DEFAULT NULL,
  `info_sekolah_idinfo_sekolah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `foto_sekolah`
--

INSERT INTO `foto_sekolah` (`idfoto_sekolah`, `nama_foto`, `extention`, `info_sekolah_idinfo_sekolah`) VALUES
(58, 'download (3)', 'jpg', 23948234),
(59, 'download (2)', 'jpg', 23948234),
(60, 'download', 'jpg', 23948234),
(63, 'download', 'jpg', 20532989),
(65, '20170516_112729', 'jpg', 20532804),
(66, 'download (1)', 'jpg', 20532804),
(67, 'preview (1)', 'png', 23478823),
(69, 'a0747725074_10', 'jpg', 20532989);

-- --------------------------------------------------------

--
-- Struktur dari tabel `info_sekolah`
--

CREATE TABLE `info_sekolah` (
  `npsn` int(15) NOT NULL,
  `nama_sekolah` varchar(45) DEFAULT NULL,
  `alamat_sekolah` varchar(60) DEFAULT NULL,
  `notelp_sekolah` varchar(15) DEFAULT NULL,
  `kecamatan` varchar(15) DEFAULT NULL,
  `agama` varchar(10) NOT NULL,
  `nama_kepala_sekolah` varchar(30) NOT NULL,
  `jam_sekolah` varchar(15) DEFAULT NULL,
  `status_sekolah` varchar(25) DEFAULT NULL,
  `keterangan_status_sekolah` varchar(100) DEFAULT NULL,
  `users_id_users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `info_sekolah`
--

INSERT INTO `info_sekolah` (`npsn`, `nama_sekolah`, `alamat_sekolah`, `notelp_sekolah`, `kecamatan`, `agama`, `nama_kepala_sekolah`, `jam_sekolah`, `status_sekolah`, `keterangan_status_sekolah`, `users_id_users`) VALUES
(20532804, 'SD YBPK-3', 'Jl. Wiyung Pasar 20, Kec. Wiyung', '031234234', 'Wiyung', 'All', 'Joko Prihanto', '07.00-15.00', 'Tervalidasi', NULL, 22),
(20532989, 'SD RADEN PAKU 2', 'Jl. Gentengkali No.33, Surabaya', '0812334353', 'Benowo', 'All', 'masrifah', '07.00-12.00', 'Tervalidasi', NULL, 21),
(23478823, 'SD MAJU JAYA', 'Jl. ksadfjhksd', '0293402385', 'Benowo', 'All', 'ASDAF', '07.00-15.00', 'Tervalidasi', NULL, 23),
(23948234, 'SD Al Azhar Kepala Gading', 'JL. Bhaskara 1 no 31', '092384235', 'Benowo', 'Islam', 'Supardi', '07.00-15.00', 'Tervalidasi', NULL, 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `info_sekolah_has_kriteria_detail`
--

CREATE TABLE `info_sekolah_has_kriteria_detail` (
  `info_sekolah_idinfo_sekolah` int(10) NOT NULL,
  `kriteria_detail_iddetail_kriteria` int(11) NOT NULL,
  `nilai` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `info_sekolah_has_kriteria_detail`
--

INSERT INTO `info_sekolah_has_kriteria_detail` (`info_sekolah_idinfo_sekolah`, `kriteria_detail_iddetail_kriteria`, `nilai`) VALUES
(20532804, 6, '5'),
(20532804, 7, '2013'),
(20532804, 8, '10'),
(20532804, 9, '3'),
(20532804, 10, '100'),
(20532804, 11, '0'),
(20532804, 12, '1539'),
(20532804, 13, '2000'),
(20532804, 14, '16'),
(20532804, 15, '3'),
(20532804, 16, '2'),
(20532804, 17, '1'),
(20532804, 18, '3500000'),
(20532804, 19, '500000'),
(20532804, 20, '200000'),
(20532804, 21, '150000'),
(20532804, 22, '-7.3137464'),
(20532804, 23, '112.6302993'),
(20532989, 6, '5'),
(20532989, 7, '2013'),
(20532989, 8, '18'),
(20532989, 9, '6'),
(20532989, 10, '150'),
(20532989, 11, '0'),
(20532989, 12, '930'),
(20532989, 13, '930'),
(20532989, 14, '15'),
(20532989, 15, '0'),
(20532989, 16, '1'),
(20532989, 17, '0'),
(20532989, 18, '750000'),
(20532989, 19, '100000'),
(20532989, 20, '50000'),
(20532989, 21, '100000'),
(20532989, 22, '-7.2812000'),
(20532989, 23, '112.7714000'),
(23478823, 6, '5'),
(23478823, 7, '2013'),
(23478823, 8, '13'),
(23478823, 9, '10'),
(23478823, 10, '315'),
(23478823, 11, '2'),
(23478823, 12, '4000'),
(23478823, 13, '3000'),
(23478823, 14, '14'),
(23478823, 15, '10'),
(23478823, 16, '1'),
(23478823, 17, '2'),
(23478823, 18, '500000'),
(23478823, 19, '30000'),
(23478823, 20, '40000'),
(23478823, 21, '100000'),
(23478823, 22, '-6.2008406'),
(23478823, 23, '106.7987143'),
(23948234, 6, '5'),
(23948234, 7, '2015'),
(23948234, 8, '24'),
(23948234, 9, '15'),
(23948234, 10, '314'),
(23948234, 11, '2'),
(23948234, 12, '2000'),
(23948234, 13, '1000'),
(23948234, 14, '24'),
(23948234, 15, '10'),
(23948234, 16, '1'),
(23948234, 17, '2'),
(23948234, 18, '2000000'),
(23948234, 19, '200000'),
(23948234, 20, '300000'),
(23948234, 21, '150000'),
(23948234, 22, '-7.2443513'),
(23948234, 23, '112.790592');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `idkriteria` int(11) NOT NULL,
  `nama_kriteria` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`idkriteria`, `nama_kriteria`) VALUES
(1, 'Fasilitas'),
(2, 'Akademis'),
(3, 'Ekstrakurikuler'),
(4, 'Lokasi'),
(5, 'Biaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_bobot`
--

CREATE TABLE `kriteria_bobot` (
  `idKriteria_bobot` int(11) NOT NULL,
  `kriteria_1` int(11) NOT NULL,
  `kriteria_2` int(11) NOT NULL,
  `bobot` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kriteria_bobot`
--

INSERT INTO `kriteria_bobot` (`idKriteria_bobot`, `kriteria_1`, `kriteria_2`, `bobot`) VALUES
(66, 2, 2, 1),
(67, 1, 1, 1),
(68, 3, 3, 1),
(69, 4, 4, 1),
(70, 5, 5, 1),
(71, 1, 2, 0.5),
(72, 1, 3, 3),
(73, 1, 4, 2),
(74, 1, 5, 0.5),
(75, 2, 3, 3),
(76, 2, 4, 2),
(77, 2, 5, 0.5),
(78, 3, 4, 0.3333333333333333),
(79, 3, 5, 0.25),
(80, 4, 5, 0.5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_detail`
--

CREATE TABLE `kriteria_detail` (
  `iddetail_kriteria` int(11) NOT NULL,
  `detail` varchar(45) DEFAULT NULL,
  `kriteria_idkriteria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria_detail`
--

INSERT INTO `kriteria_detail` (`iddetail_kriteria`, `detail`, `kriteria_idkriteria`) VALUES
(6, 'Akreditasi', 2),
(7, 'Tahun Kurikulum', 2),
(8, 'Jumlah Staf', 2),
(9, 'Jumlah Guru Bersertifikasi', 2),
(10, 'Jumlah Lulusan', 2),
(11, 'Internet', 1),
(12, 'Luas Sekolah (M2)', 1),
(13, 'Luas Tanah Terbuka (M2)', 1),
(14, 'Jumlah Kelas Keseluruhan', 1),
(15, 'Jumlah Kelas yang terdapat AC', 1),
(16, 'Jumlah Perpustakaan', 1),
(17, 'Jumlah Laboratorium', 1),
(18, 'Uang Gedung', 5),
(19, 'Uang Daftar Ulang', 5),
(20, 'Uang SPP', 5),
(21, 'Uang Seragam', 5),
(22, 'koor_X', 4),
(23, 'koor_Y', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating`
--

CREATE TABLE `rating` (
  `users_id` int(11) DEFAULT NULL,
  `info_sekolah_id` int(11) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `kriteria_idkriteria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `rating`
--

INSERT INTO `rating` (`users_id`, `info_sekolah_id`, `rating`, `kriteria_idkriteria`) VALUES
(23, 20532804, 3, 4),
(1, 20532989, 4, 2),
(1, 20532989, 3, 3),
(1, 20532804, 3, 1),
(1, 20532804, 4, 4),
(1, 20532989, 5, 5),
(21, 20532804, 3, 3),
(21, 20532989, 5, 3),
(21, 23478823, 2, 3),
(21, 23948234, 4, 3),
(22, 20532804, 4, 3),
(22, 20532989, 5, 3),
(26, 23948234, 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `review`
--

CREATE TABLE `review` (
  `idreview` int(11) NOT NULL,
  `isi_review` varchar(100) DEFAULT NULL,
  `tanggal` datetime DEFAULT current_timestamp(),
  `info_sekolah_idinfo_sekolah` int(11) NOT NULL,
  `users_id_users` int(11) NOT NULL,
  `kriteria_idkriteria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `review`
--

INSERT INTO `review` (`idreview`, `isi_review`, `tanggal`, `info_sekolah_idinfo_sekolah`, `users_id_users`, `kriteria_idkriteria`) VALUES
(12, 'tes', '2020-09-08 00:22:16', 20532804, 23, 2),
(13, 'hahah', '2020-09-08 11:56:27', 20532989, 1, 2),
(14, 'Tes', '2020-09-15 00:47:04', 23948234, 26, 2),
(15, 'asdawd', '2020-10-26 19:19:37', 20532804, 1, 1),
(16, 'Haloo', '2020-10-26 19:21:28', 20532804, 1, 3),
(17, 'tes', '2020-10-26 19:22:09', 20532804, 1, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkriteria_bobot`
--

CREATE TABLE `subkriteria_bobot` (
  `idsub_bobot` int(11) NOT NULL,
  `sub_1` int(11) DEFAULT NULL,
  `sub_2` int(11) DEFAULT NULL,
  `bobot` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `subkriteria_bobot`
--

INSERT INTO `subkriteria_bobot` (`idsub_bobot`, `sub_1`, `sub_2`, `bobot`) VALUES
(1, 6, 6, 1),
(3, 7, 7, 1),
(4, 8, 8, 1),
(5, 9, 9, 1),
(6, 10, 10, 1),
(7, 11, 11, 1),
(8, 12, 12, 1),
(9, 13, 13, 1),
(10, 14, 14, 1),
(11, 15, 15, 1),
(12, 16, 16, 1),
(13, 17, 17, 1),
(14, 18, 18, 1),
(15, 19, 19, 1),
(16, 20, 20, 1),
(17, 21, 21, 1),
(21, 11, 12, 3),
(22, 11, 13, 2),
(23, 11, 14, 0.5),
(24, 11, 15, 3),
(25, 11, 16, 1),
(26, 11, 17, 2),
(27, 12, 13, 0.5),
(28, 12, 14, 3),
(29, 12, 15, 2),
(30, 12, 16, 1),
(31, 12, 17, 1),
(32, 13, 14, 3),
(33, 13, 15, 2),
(34, 13, 16, 4),
(35, 13, 17, 3),
(36, 14, 15, 0.5),
(37, 14, 16, 0.5),
(38, 14, 17, 1),
(39, 15, 16, 2),
(40, 15, 17, 3),
(41, 16, 17, 1),
(43, 6, 7, 2),
(44, 6, 8, 3),
(45, 6, 9, 2),
(46, 6, 10, 4),
(47, 7, 8, 1),
(48, 7, 9, 0.5),
(49, 7, 10, 2),
(50, 8, 9, 0.5),
(51, 8, 10, 1),
(52, 9, 10, 3),
(53, 18, 19, 3),
(54, 18, 20, 0.5),
(55, 18, 21, 4),
(56, 19, 20, 0.25),
(57, 19, 21, 1),
(58, 20, 21, 0.25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_users` int(5) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `hak_akses` varchar(15) DEFAULT NULL,
  `nama_user` varchar(45) DEFAULT NULL,
  `alamat_user` varchar(60) DEFAULT NULL,
  `kecamatan` varchar(10) DEFAULT NULL,
  `notelp_user` varchar(15) DEFAULT NULL,
  `email_user` varchar(35) DEFAULT NULL,
  `photo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_users`, `username`, `password`, `hak_akses`, `nama_user`, `alamat_user`, `kecamatan`, `notelp_user`, `email_user`, `photo`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Super_Admin', 'Admin School Finder', '-', 'Kenjeran', '081232345', 'admin@gmail.com', 'admin.png'),
(20, 'sekolah_1', 'fef4cda9b13cc54433ef48d9277128d5', 'admin_sekolah', 'Admin Sekolah 1', 'Jl. Bulak rukem 1 no 43', 'Bulak', '0909823234', 'sekolah@gmail.com', 'icon-boy.png'),
(21, 'sekolah_3', 'fef4cda9b13cc54433ef48d9277128d5', 'admin_sekolah', 'Admin Sekolah 3', 'Jl.abnasddf askdajsd', 'Benowo', '0781233424', 'sekolah3@gmail.com', 'icon-girl.png'),
(22, 'sekolah_4', 'fef4cda9b13cc54433ef48d9277128d5', 'admin_sekolah', 'Admin Sekolah $', 'Jl. Ganteng kali anyar', 'Genteng', '082342354', 'sekolah@gmail.com', 'icon-boy.png'),
(23, 'sekolah_7', 'fef4cda9b13cc54433ef48d9277128d5', 'admin_sekolah', 'Admin Sekolah 7', 'Jl. asdasf asdasda wdasdasd', 'Bubutan', '091823124', 'sekolah33@gmail.com', 'icon-girl.png'),
(25, 'sekolah_8', 'fef4cda9b13cc54433ef48d9277128d5', 'admin_sekolah', 'Admin Sekolah 8', 'jl. asjkdfhjsdfh', 'Bubutan', '098109234', 'sekolah8@gmail.com', 'icon-girl.png'),
(26, 'Yani', '344c999a63cd55b3035cbf76c2691f88', 'parent', 'Yani Yani', 'Jl.kasjdkjifh', 'Benowo', '098123423', 'yani@gmail.com', 'a0747725074_10.jpg'),
(27, 'orantua', '344c999a63cd55b3035cbf76c2691f88', 'parent', 'Orangtua', 'asdasdf', 'Benowo', '1234234', 'ortu@gmail.com', 'user-png-icon-male-user-icon-512.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  ADD PRIMARY KEY (`idekstrakurikuler`);

--
-- Indeks untuk tabel `ekstrakurikuler_has_info_sekolah`
--
ALTER TABLE `ekstrakurikuler_has_info_sekolah`
  ADD PRIMARY KEY (`ekstrakurikuler_idekstrakurikuler`,`info_sekolah_idinfo_sekolah`),
  ADD KEY `fk_ekstrakurikuler_has_info_sekolah_info_sekolah1_idx` (`info_sekolah_idinfo_sekolah`),
  ADD KEY `fk_ekstrakurikuler_has_info_sekolah_ekstrakurikuler1_idx` (`ekstrakurikuler_idekstrakurikuler`);

--
-- Indeks untuk tabel `foto_sekolah`
--
ALTER TABLE `foto_sekolah`
  ADD PRIMARY KEY (`idfoto_sekolah`),
  ADD KEY `fk_foto_sekolah_info_sekolah1_idx` (`info_sekolah_idinfo_sekolah`);

--
-- Indeks untuk tabel `info_sekolah`
--
ALTER TABLE `info_sekolah`
  ADD PRIMARY KEY (`npsn`),
  ADD KEY `fk_info_sekolah_users1_idx` (`users_id_users`);

--
-- Indeks untuk tabel `info_sekolah_has_kriteria_detail`
--
ALTER TABLE `info_sekolah_has_kriteria_detail`
  ADD PRIMARY KEY (`info_sekolah_idinfo_sekolah`,`kriteria_detail_iddetail_kriteria`),
  ADD KEY `fk_info_sekolah_has_kriteria_detail_kriteria_detail1_idx` (`kriteria_detail_iddetail_kriteria`),
  ADD KEY `fk_info_sekolah_has_kriteria_detail_info_sekolah1_idx` (`info_sekolah_idinfo_sekolah`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`idkriteria`);

--
-- Indeks untuk tabel `kriteria_bobot`
--
ALTER TABLE `kriteria_bobot`
  ADD PRIMARY KEY (`idKriteria_bobot`),
  ADD KEY `fk_Kriteria_bobot_Kriteria_idx` (`kriteria_1`),
  ADD KEY `fk_Kriteria_bobot_Kriteria1_idx` (`kriteria_2`);

--
-- Indeks untuk tabel `kriteria_detail`
--
ALTER TABLE `kriteria_detail`
  ADD PRIMARY KEY (`iddetail_kriteria`),
  ADD KEY `fk_detail_kriteria_kriteria1_idx` (`kriteria_idkriteria`);

--
-- Indeks untuk tabel `rating`
--
ALTER TABLE `rating`
  ADD KEY `users_id` (`users_id`),
  ADD KEY `info_sekolah_id` (`info_sekolah_id`),
  ADD KEY `fk_rating_kriteria1_idx` (`kriteria_idkriteria`);

--
-- Indeks untuk tabel `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`idreview`),
  ADD KEY `fk_review_info_sekolah1_idx` (`info_sekolah_idinfo_sekolah`),
  ADD KEY `fk_review_users1_idx` (`users_id_users`),
  ADD KEY `fk_review_kriteria1_idx` (`kriteria_idkriteria`);

--
-- Indeks untuk tabel `subkriteria_bobot`
--
ALTER TABLE `subkriteria_bobot`
  ADD PRIMARY KEY (`idsub_bobot`),
  ADD KEY `sub_1` (`sub_1`),
  ADD KEY `sub_2` (`sub_2`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  MODIFY `idekstrakurikuler` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `foto_sekolah`
--
ALTER TABLE `foto_sekolah`
  MODIFY `idfoto_sekolah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `info_sekolah`
--
ALTER TABLE `info_sekolah`
  MODIFY `npsn` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98239125;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `idkriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `kriteria_bobot`
--
ALTER TABLE `kriteria_bobot`
  MODIFY `idKriteria_bobot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT untuk tabel `kriteria_detail`
--
ALTER TABLE `kriteria_detail`
  MODIFY `iddetail_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `review`
--
ALTER TABLE `review`
  MODIFY `idreview` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `subkriteria_bobot`
--
ALTER TABLE `subkriteria_bobot`
  MODIFY `idsub_bobot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ekstrakurikuler_has_info_sekolah`
--
ALTER TABLE `ekstrakurikuler_has_info_sekolah`
  ADD CONSTRAINT `fk_ekstrakurikuler_has_info_sekolah_ekstrakurikuler1` FOREIGN KEY (`ekstrakurikuler_idekstrakurikuler`) REFERENCES `ekstrakurikuler` (`idekstrakurikuler`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ekstrakurikuler_has_info_sekolah_info_sekolah1` FOREIGN KEY (`info_sekolah_idinfo_sekolah`) REFERENCES `info_sekolah` (`npsn`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `foto_sekolah`
--
ALTER TABLE `foto_sekolah`
  ADD CONSTRAINT `fk_foto_sekolah_info_sekolah1` FOREIGN KEY (`info_sekolah_idinfo_sekolah`) REFERENCES `info_sekolah` (`npsn`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `info_sekolah`
--
ALTER TABLE `info_sekolah`
  ADD CONSTRAINT `fk_info_sekolah_users1` FOREIGN KEY (`users_id_users`) REFERENCES `users` (`id_users`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `info_sekolah_has_kriteria_detail`
--
ALTER TABLE `info_sekolah_has_kriteria_detail`
  ADD CONSTRAINT `fk_info_sekolah_has_kriteria_detail_info_sekolah1` FOREIGN KEY (`info_sekolah_idinfo_sekolah`) REFERENCES `info_sekolah` (`npsn`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_info_sekolah_has_kriteria_detail_kriteria_detail1` FOREIGN KEY (`kriteria_detail_iddetail_kriteria`) REFERENCES `kriteria_detail` (`iddetail_kriteria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `kriteria_bobot`
--
ALTER TABLE `kriteria_bobot`
  ADD CONSTRAINT `fk_Kriteria_bobot_Kriteria` FOREIGN KEY (`kriteria_1`) REFERENCES `kriteria` (`idkriteria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Kriteria_bobot_Kriteria1` FOREIGN KEY (`kriteria_2`) REFERENCES `kriteria` (`idkriteria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `kriteria_detail`
--
ALTER TABLE `kriteria_detail`
  ADD CONSTRAINT `fk_detail_kriteria_kriteria1` FOREIGN KEY (`kriteria_idkriteria`) REFERENCES `kriteria` (`idkriteria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `fk_rating_kriteria1` FOREIGN KEY (`kriteria_idkriteria`) REFERENCES `kriteria` (`idkriteria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id_users`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`info_sekolah_id`) REFERENCES `info_sekolah` (`npsn`);

--
-- Ketidakleluasaan untuk tabel `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `fk_review_info_sekolah1` FOREIGN KEY (`info_sekolah_idinfo_sekolah`) REFERENCES `info_sekolah` (`npsn`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_review_kriteria1` FOREIGN KEY (`kriteria_idkriteria`) REFERENCES `kriteria` (`idkriteria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_review_users1` FOREIGN KEY (`users_id_users`) REFERENCES `users` (`id_users`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `subkriteria_bobot`
--
ALTER TABLE `subkriteria_bobot`
  ADD CONSTRAINT `subkriteria_bobot_ibfk_1` FOREIGN KEY (`sub_1`) REFERENCES `kriteria_detail` (`iddetail_kriteria`),
  ADD CONSTRAINT `subkriteria_bobot_ibfk_2` FOREIGN KEY (`sub_2`) REFERENCES `kriteria_detail` (`iddetail_kriteria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
