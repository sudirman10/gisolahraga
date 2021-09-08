-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Sep 2021 pada 14.34
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gispenginapan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_foto`
--

CREATE TABLE `tbl_foto` (
  `id_foto` int(11) NOT NULL,
  `id_penginapan` int(11) DEFAULT NULL,
  `ket_foto` varchar(255) DEFAULT NULL,
  `foto_penginapan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_foto`
--

INSERT INTO `tbl_foto` (`id_foto`, `id_penginapan`, `ket_foto`, `foto_penginapan`) VALUES
(25, 40, 'Kamar Tidur', 'Power_Rangers_v10_256x256.png'),
(26, 40, 'Kamar Mandi', 'Power_Rangers_logo2_256x256.png'),
(27, 40, 'Ruang Tamu', 'Power_Rangers_v5_logo2.png'),
(28, 41, 'asdasd', 'Power_Rangers_logo2.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(225) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`, `icon`) VALUES
(8, 'Hotel', 'lodging-2.png'),
(9, 'Villa', 'villa1.png'),
(10, 'Kost', 'kost.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penginapan`
--

CREATE TABLE `tbl_penginapan` (
  `id_penginapan` int(10) NOT NULL,
  `nama_penginapan` varchar(100) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_telpon` varchar(15) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `harga` int(255) DEFAULT NULL,
  `fasilitas` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar_penginapan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_penginapan`
--

INSERT INTO `tbl_penginapan` (`id_penginapan`, `nama_penginapan`, `id_kategori`, `alamat`, `no_telpon`, `latitude`, `longitude`, `harga`, `fasilitas`, `deskripsi`, `gambar_penginapan`) VALUES
(39, 'Hotel Syariah mandiri', 8, 'Jl. Agus Salim no.10', '082284848484', '-6.209209051779606', '106.83577794104008', 107, 'Wifi, AC, TV kabel, Telepon, Shower Panas & Dingin, Restoran', NULL, 'Power_Rangers_logo2_256x256.png'),
(40, 'Villa Bintang Kejora', 9, 'Jl. Imbon no 100', '082222222222', '-6.21138489013676', '106.8411852744141', 107, 'Wifi, Shower Panas & Dingin, Smooking Area, Restoran', NULL, 'Power_Rangers_v10_logo2.png'),
(41, 'asdasdasd', 10, 'Jl. Imbon', '082222222222', '-6.208953070205329', '106.83856743841557', 300000, 'Wifi, AC, Kipas Angin, Telepon', 'oke oce', 'Screenshot_21.jpg'),
(42, 'Hotel Jakarta', 8, 'Jl. Bla Bla bLa2324', '082284848484', '-6.216205833278688', '106.8426443961182', 300000, 'Wifi, TV kabel, Shower Panas & Dingin', 'asdasd', 'flutter-1024x486.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id_setting` int(11) NOT NULL,
  `nama_wilayah` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `zoom` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_setting`
--

INSERT INTO `tbl_setting` (`id_setting`, `nama_wilayah`, `latitude`, `longitude`, `zoom`) VALUES
(1, 'Kota Jakarta', '-6.208953070205329', '106.83912533789066', 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'Mardalius', 'admin', 'admin', '1'),
(2, 'Lius', 'user', 'user', '2');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_foto`
--
ALTER TABLE `tbl_foto`
  ADD PRIMARY KEY (`id_foto`) USING BTREE;

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`) USING BTREE;

--
-- Indeks untuk tabel `tbl_penginapan`
--
ALTER TABLE `tbl_penginapan`
  ADD PRIMARY KEY (`id_penginapan`) USING BTREE;

--
-- Indeks untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id_setting`) USING BTREE;

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_foto`
--
ALTER TABLE `tbl_foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_penginapan`
--
ALTER TABLE `tbl_penginapan`
  MODIFY `id_penginapan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
