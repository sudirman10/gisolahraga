-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Agu 2021 pada 04.56
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
-- Database: `db_gisolahraga`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_foto`
--

CREATE TABLE `tbl_foto` (
  `id_foto` int(11) NOT NULL,
  `id_olahraga` int(11) DEFAULT NULL,
  `ket_foto` varchar(255) DEFAULT NULL,
  `foto_olahraga` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_foto`
--

INSERT INTO `tbl_foto` (`id_foto`, `id_olahraga`, `ket_foto`, `foto_olahraga`) VALUES
(109, 99, 'Lapangan', 'Frenzy_Baseketball.png'),
(110, 98, 'Lapangan', 'lapangan_alba.png'),
(111, 149, 'Lapangan', 'lapangan_sepak_bola_kalimanis.png'),
(112, 152, 'Parkiran', 'Futsal_KOREM_Awang_Long.png'),
(113, 125, 'Lapangan Panahan', 'Panahan_Kalimantan_Timur.png'),
(115, 129, 'Lapangan', 'Tenis_Komplek_Perumahan_Voorfo.png'),
(116, 92, 'Lapangan', 'Lapangan_Tridaya.png'),
(118, 80, 'Lapangan', 'Futsal_Global.png'),
(119, 130, 'Lapangan', 'lapangan_sepak_bola_voorpo.png'),
(120, 49, 'Alat Fitness', 'fitness_outdoor_balaikota.png'),
(121, 152, 'Lapangan', 'Lapangan_futsal_korem.png'),
(122, 116, 'Tempat Senam', 'senam_chinta.png'),
(123, 89, 'Lapangan', 'Lapangan_bola_sempaja.png'),
(124, 111, 'Parkiran', 'senam_donita.png'),
(125, 86, 'Parkiran', 'senam_azira.png'),
(126, 153, 'Lapangan Matras', 'satriaclubtaekwondo2.jpeg'),
(127, 127, 'Lapangan Matras', 'Pencak_Silat_Naga_Pertapa_Indonesia.png'),
(128, 62, 'Ruangan Fitness', 'motion_gym.png'),
(129, 65, 'Tempat Senam', 'sanggar_senam_ermy.png'),
(130, 115, 'Tempat Senam', 'senam_hilda.png'),
(131, 93, 'Lapangan', 'lapangan_bola_kampus_melati.png'),
(132, 83, 'Ruangan yoga', 'fresh_yoga.jpg'),
(133, 113, 'Ruangan senam', 'Sanggar_Senam_maya.jpg'),
(134, 114, 'Ruangan senam', 'Sanggar_Senam_Riri_Zumba.jpg'),
(135, 104, 'Lapangan', 'Bulu_Tangkis_Rumbia_2.png'),
(136, 131, 'Tempat latihan', 'DOJO_KARATE_(THE_COBRA)_-_KKI_KALTIM.jpg'),
(137, 105, 'Lapangan', 'Lapangan_Bulutangkis_SamisnorasGin.jpg'),
(138, 110, 'Tempat Senam', 'Sanggar_Senam_Min_-_Mie.png'),
(139, 91, 'Lapangan', 'Lapangan_Sepak_Bola_Voorfo.jpg'),
(140, 68, 'Lapangan', 'Muso_Salim_Futsal_planet.png'),
(142, 43, 'Bagian Dalam Fitness', 'fitness_solution.png'),
(143, 55, 'Alat-alat fitness', 'Violet_gym.png'),
(144, 56, 'Alat-alat fitness', 'barbel_gym.png'),
(146, 79, 'Parkiran', 'futsal_teratai.jpeg'),
(147, 133, 'Akses masuk', 'futsal_al_hasani.jpeg'),
(148, 150, 'Alat-alat fitness', 'project_fitness.jpg'),
(149, 148, 'Lapangan', 'latihan_golf.png'),
(150, 146, 'Lapangan', 'Lapangan_sepakbola_pinang_bahari.png'),
(151, 145, 'Lapangan', 'lapangan_sepakbola_makroman.png'),
(152, 144, 'Lapangan', 'lapangan_sepakbola_rawamakmur.png'),
(153, 143, 'Lapangan', 'lapangan_sepakbola_gp.png'),
(154, 141, 'Lapangan', 'lapangan_bulutangkis_sinar_mahakam.png'),
(155, 140, 'Alat-alat fitness', 'dies_sport_center.png'),
(156, 139, 'Lapangan', 'lapangan_bulutangkis_gold_star.png'),
(157, 138, 'Lapangan', 'lapangan_bulutangkis_perintis.png'),
(158, 137, 'Parkiran', 'El_studio.png'),
(159, 136, 'Lapangan', 'lapangan_bulutangkis_levi_jaya.png'),
(160, 135, 'Lapangan', 'pima_futsal_1.png'),
(161, 135, 'Parkiran', 'pima_futsal_2.png'),
(162, 134, 'Lapangan', 'Ri_futsal.png'),
(163, 132, 'Lapangan', 'futsal_orion_2.png'),
(164, 132, 'Parkiran', 'futsal_orion_1.png'),
(165, 126, 'Parkiran', 'Lapangan_sepakbola_perum_keledeng_mas.jpeg'),
(166, 124, 'Tempat Panahan', 'Arena_panahan_samarinda.png'),
(167, 123, 'Lapangan Panahan', 'Lapangan_panahan_samarinda.png'),
(168, 122, 'Kolam', 'kolam_renang_gor_segiri.png'),
(169, 121, 'Lokasi Golf', 'Mahulu_Golf_Course_and_Putri_Ayu_Inn_Cottages.png'),
(170, 120, 'Lokasi Golf', 'bukit_tanah_merah_golf.png'),
(171, 119, 'Lapangan', 'lapangan_sepakbola_sindang_sari.png'),
(172, 118, 'Lapangan', 'Lapangan_Bola_WINDUDADI_ADIDAS_Makroman.png'),
(173, 117, 'Lapangan', 'lucky_futsal.png'),
(174, 112, 'Tempat Senam', 'Sanggar_Senam_Ayu_2.png'),
(175, 109, 'Lapangan', 'Lapangan_Bulutangkis_Lempuhus_Baru.png'),
(176, 108, 'Lapangan', 'Lapangan_Bulu_Tangkis_Wijaya_Kusuma.png'),
(177, 106, 'Lapangan', 'Lapangan_Bulutangkis_Diponegoro_Segara.png'),
(178, 103, 'Lapangan', 'Lapangan_Badminton_28.png'),
(179, 102, 'Lapangan', 'Lapangan_Bulutangkis_Mandala.png'),
(180, 101, 'Lapangan', 'Lapangan_Bulutangkis_Kenangan.png'),
(181, 97, 'Lapangan', 'Lapangan_Basket_Polder_Air_Hitam.png'),
(182, 96, 'Lapangan', 'Lapangan_3_On_3.png'),
(183, 95, 'Lapangan', 'sonic_arena.png'),
(184, 94, 'Lapangan', 'angel_futsal_1.png'),
(185, 94, 'Parkiran', 'angel_futsal_2.png'),
(186, 90, 'Lapangan', 'Lapangan_Sepak_Bola_KOMURA.png'),
(187, 88, 'Lapangan', 'Lapangan_Sepak_Bola_Gerilya_-_Merdeka.png'),
(188, 87, 'Tempat Yoga', 'Namarupa_Yoga_Studio.png'),
(189, 85, 'Tempat Senam', 'Rafael_Studio_Samarinda.png'),
(190, 84, 'Tempat Senam', 'Marchel_Studio.png'),
(191, 82, 'Parkiran', 'Gee_Studio.png'),
(192, 81, 'Lapangan', 'centro_futsal.png'),
(193, 78, 'Lapangan', 'futsal_levi.png'),
(194, 77, 'Lapangan', 'suryanata_futsal.png'),
(195, 76, 'Lapangan', 'champions_futsal_2.png'),
(196, 76, 'Parkiran', 'champions_futsal_1.png'),
(197, 75, 'Lapangan', 'Lapangan_Futsal_Basuki_Rahmat.png'),
(198, 74, 'Lapangan', 'dgol_futsal.png'),
(199, 72, 'Parkiran', 'futsal_akmal.png'),
(200, 71, 'Lapangan', 'SS_Footsal_Court.png'),
(201, 70, 'Lapangan', 'Vivo_Five_Futsal.png'),
(202, 69, 'Lapangan', 'Winning_Eleven_Futsal.png'),
(204, 67, 'Alat-alat fitness', 'Jones_Fitness_Club.png'),
(205, 64, 'Alat-alat fitness', 'Engage_Fitness_Center_1.png'),
(206, 64, 'Parkiran', 'Engage_Fitness_Center_2.png'),
(207, 63, 'Alat-alat fitness', 'Hendra_Firness.png'),
(208, 61, 'Alat-alat fitness', 'Palaran_Fitness_Center.png'),
(209, 60, 'Alat-alat fitness', 'Benk_Gym.png'),
(210, 59, 'Parkiran', 'nagano_fitness.png'),
(211, 58, 'Alat-alat fitness', 'young_fitness.png'),
(212, 57, 'Alat-alat fitness', 'UPTD_Fitness_Solution_1.png'),
(213, 53, 'Alat-alat fitness', 'Samarinda_Martial_Art_Camp_GYM.png'),
(214, 51, 'Alat-alat fitness', 'Master_gym.png'),
(215, 50, 'Alat-alat fitness', 'fitness_studio.png'),
(216, 48, 'Alat-alat fitness', 'ray_gym.png'),
(217, 46, 'Alat-alat fitness', 'wong_fitness.png'),
(218, 45, 'Alat-alat fitness', 'Ld_Fit_Aerobic_And_Fitness.png'),
(219, 151, 'Lapangan', 'futsal_darusalam.jpg');

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
(10, 'Lapangan Tenis', 'tenis.png'),
(11, 'Fitness', 'fitness2.png'),
(12, 'Lapangan SepakBola', 'SepakBola2.png'),
(13, 'Lapangan Bola Voli', 'voli.png'),
(15, 'Lapangan Futsal', 'Futsal.png'),
(16, 'Sanggar Senam', 'senam2.png'),
(17, 'Lapangan Basket', 'basket_ball1.png'),
(18, 'Lapangan Bulu Tangkis', 'bulutangkis2.png'),
(19, 'Golf', 'golf1.png'),
(20, 'Panahan', 'panahan1.png'),
(21, 'Renang', 'renang1.png'),
(22, 'Pencak Silat', 'pencak_silat1.png'),
(23, 'Karate', 'karate.png'),
(25, 'Taekwondo', 'taekwondo1.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_olahraga`
--

CREATE TABLE `tbl_olahraga` (
  `id_olahraga` int(11) NOT NULL,
  `nama_olahraga` varchar(100) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `jam_buka` varchar(255) DEFAULT NULL,
  `no_telpon` varchar(15) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `harga` int(255) DEFAULT NULL,
  `fasilitas` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar_olahraga` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_olahraga`
--

INSERT INTO `tbl_olahraga` (`id_olahraga`, `nama_olahraga`, `id_kategori`, `alamat`, `jam_buka`, `no_telpon`, `latitude`, `longitude`, `harga`, `fasilitas`, `deskripsi`, `gambar_olahraga`) VALUES
(43, 'Fitness Solution', 11, 'JL Kusuma Bangsa, Kompleks GOR Segiri, Bugis, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur ', 'Senin 8 AM–9PM Selasa 8 AM–9PM Rabu 8 AM–9PM Kamis 8 AM–9PM Jumat 8 AM–9PM Sabtu 8 AM–6PM Minggu 8 AM–9PM', '(0541) 7025666', '-0.4925803796561771', '117.14791137247467', 200000, 'Wifi, AC,Kipas Angin,Parkiran', '200000 harga perbulan', 'Screenshot_(312)1.png'),
(44, 'Rai Fitness Samarinda', 11, 'Jalan Slamet Riyadi No. 6, Karangasam, Samarinda Ulu, Karang Asam Ilir, Kec. Sungai Kunjang, Kota Sa', 'Senin 6 AM–9PM Selasa 6 AM–9PM Rabu 6 AM–9PM Kamis 6 AM-9AM Jumat 6 AM–9PM Sabtu 6 AM–9PM Minggu 7 AM-8AM', '(0541) 270594', '-0.5132634375526305', '117.11693051724815', 1200000, 'Wifi, AC, Toilet, Loker Barang, Parkiran', 'per hari 100rb,\r\n1200000 harga perbulan', 'Screenshot_(505).png'),
(45, 'Ld Fit Aerobic And Fitness', 11, 'Jl. Arief Rahman Hakim No.28, Sungai Pinang Luar, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Ti', 'Senin 7 AM–9PM \r\nSelasa 7 AM–9PM \r\nRabu 7 AM–9PM  \r\nKamis 7 AM–9PM \r\nJumat 7 AM–9PM  \r\nSabtu 7 AM–6PM \r\nMinggu 7 AM–6PM', '(0541) 739206', '-0.4968429214367801', '117.15567972033405', 280000, 'Wifi, AC,Parkiran', '280000 harga perbulan', 'Screenshot_(370)2.png'),
(46, 'Wong\'s Club Fitness', 11, 'Jl. Muso Salim No.7, Karang Mumus, Kec. Samarinda Ilir, Kota Samarinda, Kalimantan Timur 75117', 'Senin 8 AM–7PM \r\nSelasa 8 AM–7PM \r\nRabu 8 AM–7PM   \r\nKamis 8 AM–7PM  \r\nJumat 8 AM–7PM   \r\nSabtu 8 AM–7PM  \r\nMinggu 8 AM–7PM ', '0812-5498-787', '-0.5013669658393977', '117.15877968340301', 150000, 'Wifi, AC, Toilet,Parkiran', 'Member nya kalau perempuan 100k per bulan. Senin-Jum\'at ada dari jam 9 pagi-12 siang, lanjut jam 4 sore-12 malam. Kalau sabtu jam 9 pagi-12 siang lanjut jam 4 sore-setengah7 malam, Minggu cuma pagi aja jam 9-12 siang', 'Screenshot_(313).png'),
(48, 'Ray Gym', 11, 'Jl. Hasan Basri, Bandara, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75117', 'Senin 7 AM–9PM \r\nSelasa 7 AM–9PM \r\nRabu 7 AM–9PM   \r\nKamis 7 AM–9PM  \r\nJumat 7 AM–9PM   \r\nSabtu 7 AM–7PM  \r\nMinggu Tutup ', '0823-5794-1111', '-0.4796700312895984', '117.1543198403635', 345000, 'Wifi, AC, Toilet, Loker Barang,Parkiran', '345000 harga perbulan', 'Screenshot_(507)1.png'),
(49, 'Fitness Outdoor Balai Kota Samarinda', 11, 'Bugis, Samarinda Kota, Samarinda City, East Kalimantan 75242', 'Sabtu	Buka 24 jam Minggu	Buka 24 jam Senin	Buka 24 jam Selasa	Buka 24 jam Rabu	Buka 24 jam Kamis	Buk', '-', '-0.49053392949392904', '117.14728239446067', 0, NULL, 'gratis', 'Screenshot_(506).png'),
(50, 'Fitness Studio Samarinda', 11, 'Jl. Wahid Hasyim I, Sempaja Sel., Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75243', 'Senin 7 AM–10PM \r\nSelasa 7 AM–10PM \r\nRabu 7 AM–10PM   \r\nKamis 7 AM–10PM  \r\nJumat 7 AM–10PM   \r\nSabtu 7 AM–7PM  \r\nMinggu 7 AM–9PM ', '(0541) 7964444', '-0.45918534759632584', '117.15004641085052', 250000, 'Wifi, AC, Toilet, Loker Barang, Parkiran\r\n', '250000 harga perbulan', 'Screenshot_(499).png'),
(51, 'Master gym', 11, 'Jl. KH. Harun Nafsi No.18, Rapak Dalam, Kec. Loa Janan Ilir, Kota Samarinda, Kalimantan Timur 75251', 'Senin 8 AM–9PM \r\nSelasa 8 AM–9PM \r\nRabu 8 AM–9PM   \r\nKamis 8 AM–9PM   \r\nJumat 8 AM–9PM    \r\nSabtu 8 AM–9PM   \r\nMinggu Tutup ', '081371036281', '-0.5228519428052155', '117.13821652799034', 80000, 'Wifi, AC, Toilet, Parkiran', '80000 harga perbulan', 'Screenshot_(504).png'),
(53, 'Samarinda Martial Art Camp GYM', 11, 'Jalan Pinang Dalam River, Sungai Pinang, Samarinda City, East Kalimantan 75242', 'Senin 8 AM–10PM \r\nSelasa 8 AM–10PM \r\nRabu 8 AM–10PM   \r\nKamis 8 AM–10PM   \r\nJumat 8 AM–10PM    \r\nSabtu 8 AM–6PM   \r\nMinggu 8 AM–6PM', '(0541) 2082430', '-0.4883533731278758', '117.16430101066017', 190000, 'Wifi, AC,Toilet,Parkiran', '190000 harga perbulan', 'Screenshot_(372)1.png'),
(55, 'Violet Gym Samarinda', 11, 'Jl. PM. Noor No.49, Sempaja Sel., Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75242', 'Senin 8AM–9PM \r\nSelasa 8AM–9PM \r\nRabu 8AM–9PM   \r\nKamis 8AM–9PM   \r\nJumat 8AM–10PM    \r\nSabtu 8AM–9PM   \r\nMinggu 8AM–9PM ', '0823-3508-0008', '-0.45499788203097696', '117.16730307310009', 300000, 'Wifi, AC, Toilet, Parkiran', '300000 harga perbulan', 'Screenshot_(298)3.png'),
(56, 'Barbel Gym Samarinda', 11, 'Jl. Nusantara 2, Sungai Pinang Dalam, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75242', 'Senin 8AM–9PM \r\nSelasa 8AM–9PM \r\nRabu 8AM–9PM   \r\nKamis 8AM–9PM   \r\nJumat 8AM–9PM    \r\nSabtu 8AM–6PM   \r\nMinggu 8AM–5PM ', '085321736271', '-0.47135412864404175', '117.16907266049766', 145000, 'Toilet, Loker Barang, Parkiran', 'fix', 'Screenshot_(299).png'),
(57, 'UPTD Fitness Solution', 11, 'Jl. PM. Noor No.7a, Sempaja Sel., Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75117', 'Senin 8AM–9PM \r\nSelasa 8AM–9PM \r\nRabu 8AM–9PM   \r\nKamis 8AM–9PM   \r\nJumat 8AM–9PM    \r\nSabtu 8AM–6PM   \r\nMinggu 8AM–5PM ', '(0541) 4117577', '-0.4525417261563645', '117.15659636526489', 190000, 'Wifi, AC, Parkiran, Kipas Angin,toilet', 'fix', 'Screenshot_(301).png'),
(58, 'Young Gym', 11, 'Jl. Tengkawang, Karang Anyar, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan Timur 75243', 'Senin 8AM–10PM \r\nSelasa 8AM–10PM \r\nRabu 8AM–10PM   \r\nKamis 8AM–10PM   \r\nJumat 8AM–10PM    \r\nSabtu 8AM–10PM   \r\nMinggu 8AM–3PM ', '081226324162', '-0.5016660206878459', '117.11450177698516', 150000, 'AC, Toilet, Loker Barang, Parkiran', '150000 harga perbulan', 'Screenshot_(465)2.png'),
(59, 'Nagano Fitness', 11, 'Jl. KH. Harun Nafsi No.18, Rapak Dalam, Kec. Loa Janan Ilir, Kota Samarinda, Kalimantan Timur 75251', 'Senin 8AM–11PM \r\nSelasa 8AM–11PM \r\nRabu 8AM–11PM   \r\nKamis 8AM–11PM   \r\nJumat 8AM–11PM    \r\nSabtu 8AM–6PM   \r\nMinggu 8AM–6PM ', '0821-1440-9931', '-0.52513038407798', '117.13705915480041', 150000, 'Wifi, Toilet,Parkiran, KIpas Angin', '150000 harga perbulan', 'Screenshot_(303)1.png'),
(60, 'Benk Gym', 11, 'Jl. Cendana No.3, Karang Anyar, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan Timur 75243', 'Senin 8AM–11PM \r\nSelasa 8AM–11PM \r\nRabu 8AM–11PM   \r\nKamis 8AM–11PM   \r\nJumat 8AM–11PM    \r\nSabtu 8AM–5PM   \r\nMinggu 8AM–5PM ', '082123125322', '-0.49818062275115516', '117.1222694542923', 200000, 'Wifi,Parkiran,Toilet\r\n', '200000 harga perbulan', 'Screenshot_(304)1.png'),
(61, 'Palaran Fitness Center', 11, 'Jl. Adi Sucipto, Rw. Makmur, Kec. Palaran, Kota Samarinda, Kalimantan Timur 75251', 'Senin 8AM–9PM \r\nSelasa 8AM–9PM \r\nRabu 8AM–9PM   \r\nKamis 8AM–9PM   \r\nJumat 8AM–9PM    \r\nSabtu 8AM–8PM   \r\nMinggu 8AM–8PM ', '(0541) 6211042', '-0.5666732329259272', '117.1635325577774', 190000, 'Wifi, AC, Toilet,Parkiran\r\n', '190000 harga perbulan', 'Screenshot_(305)2.png'),
(62, 'Motion Gym', 11, 'Jl. DI Panjaitan No.57, Mugirejo, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75117', 'Senin 8AM–8PM \r\nSelasa 8AM–8PM \r\nRabu 8AM–8PM   \r\nKamis 8AM–8PM   \r\nJumat 8AM–8PM    \r\nSabtu 8AM–8PM   \r\nMinggu Tutup', '085214322132', '-0.4583565715791332', '117.18880835442924', 185000, 'Wifi, AC, Toilet,Parkiran', '185000 harga perbulan', 'Screenshot_(306).png'),
(63, 'Hendra Firness', 11, 'Makroman, Sambutan, Samarinda City, East Kalimantan 75253', 'Senin 07.30AM–21.30PM \r\nSelasa 07.30AM–21.30PM  \r\nRabu 07.30AM–21.30PM   \r\nKamis 07.30AM–21.30PM   \r\nJumat 07.30AM–21.30PM     \r\nSabtu 07.30AM–21.30PM    \r\nMinggu 19.30PM–23.00PM ', '085322167721', '-0.4836958847485854', '117.165442290596', 150000, 'Wifi, Toilet, Loker Barang,Parkiran', '150000 harga perbulan', 'Screenshot_(372)2.png'),
(64, 'Engage Fitness Center', 11, 'Jl. Revolusi 1, Lok Bahu, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan Timur 75243', 'Senin 8AM–10PM \r\nSelasa 8AM–10PM  \r\nRabu 8AM–10PM    \r\nKamis 8AM–10PM    \r\nJumat 8AM–10PM      \r\nSabtu 8AM–10PM     \r\nMinggu 08.30AM–10PM ', '082173461222', '-0.49653146161816736', '117.09816511242771', 180000, 'Wifi, Toilet, Loker Barang,Parkiran', '180000 harga perbulan', 'Screenshot_(309)1.png'),
(65, 'Sanggar Senam Ermy', 16, 'Jl. Manunggal No.38, Loa Bakung, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan Timur 75124', 'Senin 8AM–11PM \r\nSelasa 8AM–11PM  \r\nRabu 8AM–11PM    \r\nKamis 8AM–11PM    \r\nJumat 8AM–11PM      \r\nSabtu 8AM–9PM     \r\nMinggu 8AM–9PM', '(0541) 275187', '-0.5311342538865415', '117.09469500451469', 200000, 'Wifi, Toilet, Loker Barang,Parkiran', '200000 harga perbulan', 'Screenshot_(310)1.png'),
(67, 'Jones Fitness Club', 11, 'Jl. Pramuka 6 No.1, Sempaja Sel., Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75243', 'Senin 8AM–9PM \r\nSelasa 8AM–9PM  \r\nRabu 8AM–9PM    \r\nKamis 8AM–9PM    \r\nJumat 8AM–9PM      \r\nSabtu 8AM–9PM     \r\nMinggu 8AM–8PM', '0822-5044-5120', '-0.46411240561861605', '117.15296733646774', 150000, 'Wifi, Toilet, Parkiran', '150000 harga perbulan', 'Screenshot_(311)2.png'),
(68, 'Muso Salim Futsal', 15, 'Jl. Muso Salim No.28, Karang Mumus, Kec. Samarinda Ilir, Kota Samarinda, Kalimantan Timur 75117', 'Senin 10AM–10PM Selasa 10AM–10PM   Rabu 10AM–10PM     Kamis 10AM–10PM     Jumat 10AM–10PM       Sabtu 10AM–10PM     Minggu 10AM–10PM', '(0541) 749825', '-0.5024344440698211', '117.15851012139701', 150000, 'Toilet, Mushola, Parkiran', '150000 harga perjam', 'Muso_Salim_Futsal.png'),
(69, 'Winning Eleven Futsal', 15, 'Jl. Sultan Sulaiman, Sambutan, Kec. Sambutan, Kota Samarinda, Kalimantan Timur 75115', 'Senin 8AM–11PM \r\nSelasa 8AM–11PM   \r\nRabu 8AM–11PM     \r\nKamis 8AM–11PM     \r\nJumat 8AM–11PM       \r\nSabtu 8AM–11PM    \r\nMinggu 8AM–11PM', '0823-5041-0688', '-0.5076243168940957', '117.17189836769485', 150000, 'Wifi, Toilet, Loker Barang, Lapangan,Parkiran', '150000 harga perjam', 'Screenshot_(498).png'),
(70, 'Vivo Five Futsal', 15, 'Jl. Urip Sumoharjo Gg. 2, Sidomulyo, Kec. Samarinda Ilir, Kota Samarinda, Kalimantan Timur 75242', 'Senin 9AM–12PM \r\nSelasa 9AM–12PM  \r\nRabu 9AM–12PM     \r\nKamis 9AM–12PM     \r\nJumat 9AM–12PM       \r\nSabtu 9AM–12PM    \r\nMinggu 9AM–12PM  ', '-', '-0.4907672731220672', '117.16336626081848', 100000, 'Toilet, Tribun, Loker Barang, Lapangan,Parkiran,Wifi', '100000 harga perjam', 'Screenshot_(355)1.png'),
(71, 'SS Footsal Court', 15, 'Jl. Siradj Salman No.54, Air Putih, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75124', 'Senin 8AM–11PM \r\nSelasa 8AM–11PM   \r\nRabu 8AM–11PM      \r\nKamis 8AM–11PM      \r\nJumat 8AM–11PM        \r\nSabtu 8AM–11PM     \r\nMinggu 8AM–11PM', '0812-5765-1738', '-0.49060165278914664', '117.1280784484663', 175000, 'Wifi, Toilet, Loker Barang, Lapangan,Parkiran', '175000 harga perjam', 'Screenshot_(356)1.png'),
(72, 'Futsal Akmal', 15, 'Jl. KH. Siradj Salman, Jl. Wiratama Gg. Sejahtera, Air Hitam, Kec. Samarinda Ulu, Kota Samarinda, Ka', 'Senin 8AM–3PM \r\nSelasa 8AM–3PM    \r\nRabu 8AM–3PM       \r\nKamis 8AM–3PM      \r\nJumat 8AM–3PM         \r\nSabtu 8AM–3PM      \r\nMinggu 8AM–3PM ', '082135322253', '-0.48937525756480854', '117.12991374998474', 150000, 'Wifi, Toilet, Loker Barang, Lapangan, Parkiran', '150000 harga perjam', 'Screenshot_(357)1.png'),
(73, 'Aries Futsal', 15, 'Jl. Pattimura, Mesjid, Kec. Samarinda Seberang, Kota Samarinda, Kalimantan Timur 75132', 'Senin 9AM–10PM \r\nSelasa 9AM–10PM     \r\nRabu 9AM–10PM        \r\nKamis 9AM–10PM       \r\nJumat 9AM–10PM          \r\nSabtu 9AM–10PM       \r\nMinggu 9AM–10PM', '0823-5112-3445', '-0.5265907853754692', '117.15000718354368', 150000, 'Toilet, Loker Barang, Lapangan, Parkiran', '150000 harga perjam', 'Screenshot_(358)1.png'),
(74, 'D\'gol Futsal', 15, ' Jl. Sentosa No.2, Sungai Pinang Dalam, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75117', 'Senin 8AM–11PM \r\nSelasa 8AM–11PM    \r\nRabu 8AM–11PM        \r\nKamis 8AM–11PM       \r\nJumat 8AM–11PM          \r\nSabtu 8AM–11PM       \r\nMinggu 8AM–11PM', '0821-5162-2790', '-0.4764608799163355', '117.16733056574249', 150000, 'Wifi, Toilet, Tribun, Loker Barang, Lapangan, Parkiran', '150000 harga perjam', 'Screenshot_(359)1.png'),
(75, 'Lapangan Futsal Basuki Rahmat', 15, 'Jl. Basuki Rahmat Gg. III, Ps. Pagi, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75242', 'Senin 9AM–10PM \r\nSelasa 9AM–10PM   \r\nRabu 9AM–10PM        \r\nKamis 9AM–10PM       \r\nJumat 9AM–10PM          \r\nSabtu 9AM–10PM       \r\nMinggu 9AM–10PM', '08219143321', '-0.4960483468435883', '117.14826274185562', 150000, 'Wifi, Toilet, Loker Barang,Parkiran', '150000 harga perjam', 'Screenshot_(361)1.png'),
(76, 'Champion Futsal', 15, 'Jl. Kemakmuran No.9A, Sungai Pinang Dalam, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 7511', 'Senin 10AM–11PM \r\nSelasa 10AM–11PM   \r\nRabu 10AM–11PM        \r\nKamis 10AM–11PM       \r\nJumat 10AM–11PM          \r\nSabtu 10AM–11PM       \r\nMinggu 10AM–11PM ', '0851-0140-0995', '-0.4802372985930092', '117.16395500569725', 150000, 'Toilet, Loker Barang, Lapangan, Parkiran', '150000 harga perjam', 'Screenshot_(362)3.png'),
(77, 'Suryanata Futsal', 15, 'Jl, Jl. P. Suryanata No.117, RT.03, Bukit Pinang, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Tim', 'Senin 07.30AM–11PM \r\nSelasa 07.30AM–11PM   \r\nRabu 07.30AM–11PM        \r\nKamis 07.30AM–11PM       \r\nJumat 07.30AM–11PM          \r\nSabtu 07.30AM–11PM       \r\nMinggu 07.30AM–11PM', '0852-5065-1895', '-0.4642304189424771', '117.11875307827377', 125000, 'AC, Toilet, Lapangan, Parkiran', '125000 harga perjam', 'Screenshot_(497).png'),
(78, 'Levi Futsal', 15, 'Jl. Siradj Salman Gg. Basrie Haya, Air Hitam, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 7', 'Senin 10AM–11PM \r\nSelasa 10AM–11PM   \r\nRabu 10AM–11PM         \r\nKamis 10AM–11PM        \r\nJumat 10AM–11PM           \r\nSabtu 10AM–11PM        \r\nMinggu 10AM–11PM', '0812-5860-1170', '-0.49008869910043446', '117.12906617193603', 150000, 'Wifi, Toilet, Loker Barang, Lapangan, Parkiran', '150000 harga perjam', 'Screenshot_(364)1.png'),
(79, 'Futsal Teratai', 15, 'Jl. Bung Tomo No.66, Sungai Keledang, Kec. Samarinda Seberang, Kota Samarinda, Kalimantan Timur 7524', 'Senin 8AM–11PM \r\nSelasa 8AM–11PM   \r\nRabu 8AM–11PM          \r\nKamis 8AM–11PM         \r\nJumat 8AM–11PM            \r\nSabtu 8AM–11PM         \r\nMinggu 8AM–11PM', '0852872321', '-0.5132915996172179', '117.13141042261505', 150000, 'Toilet, Loker Barang, Lapangan, Parkiran', '150000 harga perjam', 'Screenshot_(365)2.png'),
(80, 'Global Futsal', 15, 'Jl. Banggeris, Karang Anyar, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan Timur 75127', 'Senin 8AM–11PM \r\nSelasa 8AM–11PM   \r\nRabu 8AM–11PM          \r\nKamis 8AM–11PM         \r\nJumat 8AM–11PM            \r\nSabtu 8AM–11PM         \r\nMinggu 8AM–11PM', '0813-4729-2991', '-0.49445785631659916', '117.12320554523849', 75000, 'Toilet, Lapangan, Parkiran', '75000 harga perjam', 'Screenshot_(366)1.png'),
(81, 'Centro futsal', 15, 'Temindung Permai, Sungai Pinang, Samarinda City, East Kalimantan 75242', 'Senin 8AM–10PM \r\nSelasa 8AM–10PM   \r\nRabu 8AM–10PM          \r\nKamis 8AM–10PM         \r\nJumat 8AM–10PM           \r\nSabtu 8AM–10PM         \r\nMinggu 8AM–10PM ', '0812-7050-5554', '-0.4747765106903559', '117.15638715296173', 90000, 'Wifi, Toilet, Tribun, Lapangan, Parkiran', '08:00 - 15:00 = 90k/jam\r\n15:00 - 16:00 = 120k/jam\r\n16:00 - 22:00 = 150k/jam', 'Screenshot_(476)2.png'),
(82, 'Gee Studio', 16, 'Jl. Dr. Suwondo No.7, Sidodadi, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75123', 'Senin 8AM–5PM \r\nSelasa 8AM–5PM   \r\nRabu 8AM–5PM          \r\nKamis 8AM–5PM         \r\nJumat 8AM–5PM           \r\nSabtu 8AM–5PM         \r\nMinggu 8AM–5PM', '0812-3095-4234', '-0.47732988553440475', '117.14441913633728', 275000, 'Wifi, AC, KIpas Angin, Parkiran', 'Khusus Wanita,\r\n275000 harga perbulan\r\n', 'Screenshot_(368)2.png'),
(83, 'Fresh Yoga', 16, 'Jl. Elang No.86, Sungai Pinang Dalam, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75242', 'Senin 8AM–7PM \r\nSelasa 8AM–7PM   \r\nRabu 8AM–7PM          \r\nKamis 8AM–7PM         \r\nJumat Tutup           \r\nSabtu Tutup         \r\nMinggu Tutup', '0816-5452-203', '-0.4787219035640739', '117.15706843405151', 150000, 'Wifi, AC, Parkiran', '150000 harga perbulan', 'Screenshot_(369)1.png'),
(84, 'Marchel Studio', 11, 'Jl. Arief Rahman Hakim No.12, Sungai Pinang Luar, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Ti', 'Senin 8AM–5PM \r\nSelasa 8AM–5PM   \r\nRabu 8AM–5PM          \r\nKamis 8AM–5PM         \r\nJumat 8AM–5PM          \r\nSabtu 8AM–5PM         \r\nMinggu 8AM–5PM', '081382732182', '-0.4967564234477191', '117.15523782639885', 150000, 'Wifi, AC, Parkiran', '150000 harga perbulan', 'Screenshot_(370)1.png'),
(85, 'Rafael Studio Samarinda', 16, 'Jl. Tengkawang No.25, Karang Anyar, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan Timur 75127', 'Senin 8AM–8PM \r\nSelasa 8AM–8PM   \r\nRabu 8AM–8PM          \r\nKamis 8AM–08.30PM         \r\nJumat 8AM–4PM          \r\nSabtu 8AM–5PM         \r\nMinggu 8AM–5PM ', '0812-5457-6406', '-0.5021273429384692', '117.11544859676742', 150000, 'Wifi, AC, Toilet, Parkiran', '150000 harga perbulan', 'Screenshot_(305)1.png'),
(86, 'AZIRA CLUB (SENAM & Kid\'S CENTER)', 16, 'jl.Toyib Hadiwijaya no 4 sempaja Sel.,, Sempaja Sel., Kec. Samarinda Utara, Kota Samarinda, Kalimant', 'Senin 8AM–5PM \r\nSelasa 8AM–5PM   \r\nRabu 8AM–5PM          \r\nKamis 8AM–5PM         \r\nJumat 8AM–5PM          \r\nSabtu 8AM–5PM         \r\nMinggu Tutup ', '(0541) 250391', '-0.4447233265659039', '117.15664866834068', 150000, 'Wifi, AC, Parkiran', '150000 harga perbulan', 'Screenshot_(373)1.png'),
(87, 'Namarupa Yoga Studio', 16, 'Jl. Wahid Hasyim I, Sempaja Sel., Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75243', 'Senin 8AM–11PM \r\nSelasa 8AM–1PM   \r\nRabu 8AM–11PM          \r\nKamis 8AM–11PM         \r\nJumat 8AM–11PM          \r\nSabtu 8AM–11PM         \r\nMinggu Tutup', '085326312362', '-0.4576163055409246', '117.15132314234161', 200000, 'Wifi, AC, Toilet, Loker Barang, Parkiran', '200000 harga perbulan', 'Screenshot_(374)1.png'),
(88, 'Lapangan Sepak Bola Gerilya - Merdeka', 12, 'Jl. Gerilya No.3, Sungai Pinang Dalam, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75242', 'Senin Buka 24 jam \r\nSelasa Buka 24 jam   \r\nRabu Buka 24 jam          \r\nKamis Buka 24 jam         \r\nJumat Buka 24 jam          \r\nSabtu Buka 24 jam        \r\nMinggu Buka 24 jam', '-', '-0.4848022564508986', '117.16867703466797', 400000, 'Mushola, Tribun, Lapangan, Kantin, Parkiran', '400000 harga perhari', 'Screenshot_(375)1.png'),
(89, 'Lapangan sepakbola stadion sempaja', 12, 'JL. KH. Wahid Hasyim, Sempaja Sel., Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75243', '', '-', '-0.453153250710858', '117.1567787554779', 0, NULL, 'fix', 'Screenshot_(376).png'),
(90, 'Lapangan Sepak Bola KOMURA', 12, 'Rapak Dalam, Loa Janan Ilir, Samarinda City, East Kalimantan 75251', '', '-', '-0.5285366455256251', '117.14524525671386', 450000, NULL, '450000 harga perhari', 'Screenshot_(377).png'),
(91, 'Lapangan Sepak Bola Voorfo', 12, 'Jl. Sawo No.30, Voorfo, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75123', 'Senin 10AM–11PM Selasa 10AM–11PM Rabu 10AM–11PM Kamis 10AM–11PM Jumat 10AM–11PM Sabtu 10AM–11PM Minggu 10AM–11PM', '085290272198', '-0.4746745902462991', '117.14396584301376', 400000, 'Parkiran, Lapangan', '400000 harga perhari', 'Screenshot_(378).png'),
(92, 'Lapangan SepakBola Tridaya', 12, 'Jl. P.Antasari Gg. Tridaya, Air Putih, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', 'Senin 10AM–11PM Selasa 10AM–11PM Rabu 10AM–11PM Kamis 10AM–11PM Jumat 10AM–11PM Sabtu 10AM–11PM Minggu 10AM–11PM', '081309823781', '-0.4862184119660419', '117.12782162695312', 450000, 'Parkiran, Tribun, Lapangan', '450000 harga perhari', 'Screenshot_(379).png'),
(93, 'Lapangan Sepak Bola Kampus Melati', 12, 'Jl. H. A. M. Rifaddin No.1, Harapan Baru, Kec. Loa Janan Ilir, Kota Samarinda, Kalimantan Timur 7525', '', '-', '-0.5542149681009362', '117.12106782465362', 450000, 'Toilet, Lapangan', '450000 harga perhari', 'Screenshot_(380)2.png'),
(94, 'Angel Futsal', 15, 'Jl. Kurnia Makmur, Harapan Baru, Kec. Loa Janan Ilir, Kota Samarinda, Kalimantan Timur 75243', 'Senin 8AM–11PM \r\nSelasa 8AM–11PM   \r\nRabu 8AM–11PM          \r\nKamis 8AM–11PM         \r\nJumat 8AM–11PM          \r\nSabtu 8AM–11PM        \r\nMinggu 8AM–11PM ', '082163235121', '-0.5437548331322672', '117.10497457056427', 150000, 'Toilet, Tribun, Lapangan, Parkiran', '150000 harga perjam', 'Screenshot_(381)1.png'),
(95, 'Sonic Arena', 17, 'Jl. Kartini, Pinang Luar River, Samarinda Kota, Samarinda City, East Kalimantan 75242', 'Senin 8AM–11PM \r\nSelasa 8AM–11PM   \r\nRabu 8AM–11PM          \r\nKamis 8AM–11PM         \r\nJumat 8AM–11PM          \r\nSabtu 8AM–11PM        \r\nMinggu 8AM–11PM', '082125523161', '-0.4954636471663978', '117.15699601440811', 250000, 'Toilet, Loker Barang, Lapangan, Parkiran', '250000 harga perjam', 'Screenshot_(382).png'),
(96, 'Lapangan 3 On 3', 17, 'Jl. RE Martadinata Tlk. Lerong Ilir, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', 'Senin 10AM–11PM Selasa 10AM–11PM Rabu 10AM–11PM Kamis 10AM–11PM Jumat 10AM–11PM Sabtu 10AM–11PM Minggu 10AM–11PM', '08132712719', '-0.5000151841119701', '117.1311502483406', 100000, 'Parkiran', '100000 harga perjam', 'Screenshot_(383).png'),
(97, 'Lapangan Basket Polder Air Hitam', 17, 'Jl. Polder Air Hitam, Air Hitam, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', 'Senin 10AM–11PM Selasa 10AM–11PM Rabu 10AM–11PM Kamis 10AM–11PM Jumat 10AM–11PM Sabtu 10AM–11PM Minggu 10AM–11PM', '085390272912', '-0.47005330117057986', '117.13547396927261', 250000, 'Parkiran, Toilet', '250000 harga perjam', 'Screenshot_(384).png'),
(98, 'Lapangan Sepak Bola Alba', 12, 'Jl. Jakarta Loa Bakung, Sungai Kunjang, Loa Bakung, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan ', 'Senin	Buka 24 jam \r\nSelasa	Buka 24 jam \r\nRabu	Buka 24 jam \r\nKamis	Buka 24 jam\r\nJumat   Buka 24 jam\r\nSabtu	Buka 24 jam \r\nMinggu	Buka 24 jam', '-', '-0.5288316759569773', '117.08927291899109', 400000, 'Lapangan, Parkiran', '400000 harga perhari', 'Screenshot_(469)1.png'),
(99, 'Frenzy Basketball', 17, 'Jl. Kemakmuran No.71, Pinang Dalam River, Sungai Pinang, Samarinda City, East Kalimantan 75242', 'Senin 10AM–11PM \r\nSelasa 10AM–11PM   \r\nRabu 10AM–11PM          \r\nKamis 10AM–11PM         \r\nJumat 10AM–11PM          \r\nSabtu 10AM–11PM        \r\nMinggu 10AM–11PM', '0852-5085-1118', '-0.47895323601274525', '117.16444584994697', 350000, 'Toilet, Tribun, Loker Barang, Lapangan, Parkiran', '350000 harga perjam', 'Screenshot_(519).png'),
(101, 'Lapangan Bulutangkis Kenangan', 18, 'Jl. Sentosa Dalam II A No.Rt 78, Sungai Pinang Dalam, Kec. Sungai Pinang, Kota Samarinda, Kalimantan', 'Senin 8AM–11PM \r\nSelasa 8AM–11PM   \r\nRabu 8AM–11PM          \r\nKamis 8AM–11PM         \r\nJumat 8AM–11PM          \r\nSabtu 8AM–11PM        \r\nMinggu 8AM–11PM ', '0811-5585-857', '-0.4773318971213515', '117.17487427859687', 200000, 'Toilet, Mushola, Tribun, Loker Barang, Lapangan, Parkiran', '200000 harga per 2jam', 'Screenshot_(403)2.png'),
(102, 'Lapangan Bulutangkis Mandala', 18, 'Jl. Pangeran Suriansyah No.30, Karang Mumus, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 7', 'Senin 8AM–11PM \r\nSelasa 8AM–11PM   \r\nRabu 8AM–11PM          \r\nKamis 8AM–11PM         \r\nJumat 8AM–11PM          \r\nSabtu 8AM–11PM        \r\nMinggu 8AM–11PM ', '0822-1435-2415', '-0.5070932603305638', '117.15629059343719', 250000, 'Toilet, Tribun, Loker Barang, Lapangan, Parkiran', '250000 harga per 2jam', 'Screenshot_(396)1.png'),
(103, 'Lapangan Badminton 28', 18, 'Jl. Siti Aisyah No.31, Tlk. Lerong Ilir, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', 'Senin 9AM–10PM \r\nSelasa 9AM–10PM   \r\nRabu 9AM–10PM          \r\nKamis 9AM–10PM         \r\nJumat 9AM–10PM          \r\nSabtu 9AM–10PM        \r\nMinggu 9AM–10PM ', '08135632612', '-0.4947569114785357', '117.13465187220955', 250000, 'Toilet, Tribun, Loker Barang, Lapangan, Parkiran', '250000 harga per 2jam', 'Screenshot_(397)1.png'),
(104, 'Lapangan Bulu Tangkis Rumbia 2', 18, 'Jl. Rumbia 2 Sidomulyo, Kec. Samarinda Ilir, Kota Samarinda, Kalimantan Timur 75242', 'Senin 9AM–12AM \r\nSelasa 9AM–12AM  \r\nRabu 9AM–12AM          \r\nKamis 9AM–12AM         \r\nJumat 9AM–12AM          \r\nSabtu 9AM–12AM        \r\nMinggu 9AM–12AM', '0813674312821', '-0.49613953853171683', '117.16705698042297', 150000, 'Toilet, Tribun, Lapangan, Parkiran', '150000 harga per 2jam', 'Screenshot_(398)2.png'),
(105, 'Lapangan Bulutangkis Samisnoras\'Gin', 18, 'Jl. Damanhuri, Sungai Pinang Dalam, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75242', 'Senin 10AM–11PM\r\nSelasa 10AM–11PM  \r\nRabu 10AM–11PM          \r\nKamis 10AM–11PM         \r\nJumat 10AM–11PM          \r\nSabtu 10AM–11PM        \r\nMinggu 10AM–11PM', '081232512532', '-0.48363821930945267', '117.17736202745819', 250000, 'Toilet, Tribun, Loker Barang, Lapangan, Parkiran', '250000 harga per 2jam', 'Screenshot_(399)4.png'),
(106, 'Lapangan Bulutangkis Diponegoro Segara', 18, 'Jl. Pangeran Diponegoro No.45, Pelabuhan, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 7511', 'Senin 9AM–12AM\r\nSelasa 9AM–12AM  \r\nRabu 9AM–12AM          \r\nKamis 9AM–12AM         \r\nJumat 9AM–12AM          \r\nSabtu 9AM–12AM        \r\nMinggu 9AM–12AM', '081385307676', '-0.5011738541811149', '117.15155917673492', 350000, 'Toilet, Mushola, Tribun, Loker Barang, Lapangan, Parkiran', '350000 harga per 2jam', 'Screenshot_(400)3.png'),
(108, 'Lapangan Bulu Tangkis Wijaya Kusuma', 18, 'Jl. Wijaya Kusuma, Air Hitam, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', 'Senin 9AM–11PM\r\nSelasa 9AM–11PM  \r\nRabu 9AM–11PM          \r\nKamis 9AM–11PM         \r\nJumat 9AM–11PM          \r\nSabtu 9AM–11PM        \r\nMinggu 9AM–11PM ', '0821364827312', '-0.4887503256310292', '117.13305193453216', 245000, 'Toilet, Mushola, Loker Barang, Lapangan, Parkiran', '245000 harga per 2jam', 'Screenshot_(402)2.png'),
(109, 'Lapangan Bulutangkis Lempuhus Baru', 18, 'Jl. Kemakmuran Gg. KNPI, Sungai Pinang Dalam, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 7', 'Senin 5PM–11PM\r\nSelasa 5PM–11PM  \r\nRabu 5PM–11PM          \r\nKamis 5AM–11PM         \r\nJumat 2AM–11PM          \r\nSabtu 8AM–11PM        \r\nMinggu 8AM–11PM ', '081346573271', '-0.47937365757338013', '117.16328311233902', 255000, 'AC, Toilet, Mushola, Loker Barang, Lapangan, Parkiran', '255000 harga per 2jam', 'Screenshot_(403)3.png'),
(110, 'Sanggar Senam Min - Mie', 16, 'Jl. Hidayatullah Gg. Karya 2 No.26, Karang Mumus, Kec. Samarinda Ilir, Kota Samarinda, Kalimantan Ti', 'Senin 8PM–5PM\r\nSelasa 8PM–5PM  \r\nRabu 8PM–5PM          \r\nKamis 8PM–5PM         \r\nJumat 8PM–5PM          \r\nSabtu 8PM–5PM        \r\nMinggu 8AM–5PM ', '08537291276372', '-0.502734839922334', '117.15812790661239', 245000, 'AC, Toilet, Loker Barang, Lapangan, Parkiran', '245000 harga perbulan', 'Screenshot_(404)1.png'),
(111, 'Sanggar Senam Donita', 16, 'Jl. P. Irian No.71, Pelabuhan, Kec. Samarinda Kota, Kota Samarinda, Kalimantan Timur 75113', 'Senin 8AM–5PM\r\nSelasa 8AM–5PM  \r\nRabu 8AM–5PM          \r\nKamis 8AM–5PM         \r\nJumat 8AM–5PM          \r\nSabtu 8AM–5PM        \r\nMinggu 8AM–5PM ', '0541 7155277', '-0.5027831178259063', '117.1554993417778', 225000, 'AC, Toilet, Loker Barang, Parkiran', '225000 harga perbulan', 'Screenshot_(369)2.png'),
(112, 'Sanggar Senam Ayu 2', 16, 'Jl. Kadrie Oening, Air Hitam, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75124', 'Senin 8PM–5PM\r\nSelasa 8PM–5PM  \r\nRabu 8PM–5PM          \r\nKamis 8PM–5PM         \r\nJumat 8PM–5PM          \r\nSabtu 8PM–5PM        \r\nMinggu 8AM–5PM ', '(0541) 7040606', '-0.47216144619101313', '117.13788259296798', 250000, 'Wifi, AC, Toilet, Loker Barang, Parkiran', '250000 harga perbulan', 'Screenshot_(407)2.png'),
(113, 'Sanggar Senam Maya', 16, 'Jl. Anggur No.29, Sidodadi, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75124', 'Senin 8PM–5PM\r\nSelasa 8PM–5PM  \r\nRabu 8PM–5PM          \r\nKamis 8PM–5PM         \r\nJumat 8PM–5PM          \r\nSabtu 8PM–5PM        \r\nMinggu 8AM–5PM ', '(0541) 744673', '-0.4778743550478114', '117.13951337604904', 280000, 'Wifi, AC, Toilet, Loker Barang, Parkiran', '280000 harga perbulan', 'Screenshot_(408)1.png'),
(114, 'Sanggar Senam Riri Zumba', 16, 'Jl. Mas Penghulu, Rapak Dalam, Kec. Loa Janan Ilir, Kota Samarinda, Kalimantan Timur 75133', 'Senin 16.30PM–17.30PM\r\nSelasa Tutup \r\nRabu 16.30PM–17.30PM          \r\nKamis 16.30PM–17.30PM        \r\nJumat 16.30PM–17.30PM          \r\nSabtu 16.30PM–17.30PM        \r\nMinggu 07.30AM–08.30AM ', '0812-5804-7544', '-0.5183594281650301', '117.14741046994114', 250000, 'Wifi, AC, Toilet, Mushola, Loker Barang, Parkiran', 'fix', 'Screenshot_(409)1.png'),
(115, 'Sanggar Senam Hilda', 16, 'Jl. Rotan Semambu No.20 A, Air Hitam, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75124', 'Senin 8AM–5PM\r\nSelasa 8AM–5PM \r\nRabu 8AM–5PM          \r\nKamis 8AM–5PM        \r\nJumat 8AM–5PM          \r\nSabtu 8AM–5PM        \r\nMinggu 8AM–5PM', '(0541) 202768', '-0.4739242679836938', '117.13606204359913', 100000, 'AC, Toilet, Parkiran', '100000 harga perbulan', 'Screenshot_(410)1.png'),
(116, 'Sanggar Senam Chinta', 16, 'Jl. Kadrie Oening No.68, Air Hitam, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75124', 'Senin 9AM–10PM\r\nSelasa 9AM–10PM \r\nRabu 9AM–10PM          \r\nKamis 9AM–10PM        \r\nJumat 9AM–10PM          \r\nSabtu 9AM–10PM        \r\nMinggu 9AM–10PM ', '(0541) 732925', '-0.4723009163225177', '117.13644090562248', 150000, 'Wifi, AC, Toilet, Parkiran', '150000 harga perbulan', 'Screenshot_(411)1.png'),
(117, 'Lucky Futsal', 15, 'Jl. Perjuangan No.23, Sempaja Sel., Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75117', 'Senin 9AM–12PM\r\nSelasa 9AM–12PM \r\nRabu 9AM–12PM          \r\nKamis 9AM–12PM        \r\nJumat 9AM–12PM          \r\nSabtu 9AM–12PM        \r\nMinggu 9AM–12PM', '(0541) 6223276', '-0.45533247704728685', '117.15978953509712', 175000, 'Toilet, Mushola, Tribun, Loker Barang, Lapangan, Parkiran', '175000 harga perjam', 'Screenshot_(426)1.png'),
(118, 'Lapangan Bola WINDUDADI ADIDAS Makroman', 12, 'Jl. Poros Propinsi - Anggana, Makroman, Kec. Sambutan, Kota Samarinda, Kalimantan Timur 75251', 'Senin 8AM–5PM\r\nSelasa 8AM–5PM \r\nRabu 8AM–5PM          \r\nKamis 8AM–5PM        \r\nJumat 8AM–5PM          \r\nSabtu 8AM–5PM        \r\nMinggu 8AM–5PM', '0813-4708-7502', '-0.5577928664550906', '117.22337264089965', 400000, 'Toilet, Tribun, Lapangan, Parkiran', '400000 harga perhari', 'Screenshot_(378)1.png'),
(119, 'Lapangan Bola Sindang Sari', 12, 'Jl Karya Bakti No.RT 06, Sindang Sari, Kec. Sambutan, Kota Samarinda, Kalimantan Timur 75251', 'Senin 8AM–5PM\r\nSelasa 8AM–5PM \r\nRabu 8AM–5PM          \r\nKamis 8AM–5PM        \r\nJumat 8AM–5PM          \r\nSabtu 8AM–5PM        \r\nMinggu 8AM–5PM  ', '085373622112', '-0.559721283032581', '117.23153728514099', 350000, 'Toilet, Mushola, Tribun, Lapangan, Parkiran', '350000 harga perhari', 'Screenshot_(473)1.png'),
(120, 'Bukit Tanah Merah Golf', 19, 'Jalan Raya Samarinda Bontang KM.21, Tanah Merah, Samarinda Utara, Tanah Merah, Kec. Samarinda Utara,', 'Senin 6AM–6PM\r\nSelasa 6AM–6PM\r\nRabu 6AM–6PM\r\nKamis 6AM–6PM        \r\nJumat 6AM–6PM         \r\nSabtu 6AM–6PM        \r\nMinggu 6AM–6PM', '0811-5532-423', '-0.4206780086342348', '117.21895236044311', 100000, 'Toilet, Mushola, Lapangan, Parkiran', '100000 harga perjam', 'Screenshot_(445)1.png'),
(121, 'Mahulu Golf Course and Putri Ayu Inn Cottages', 19, 'Jl. Cipto Mangun Kusumo, Sengkotek, Samarinda, Kota Samarinda, Kalimantan Timur 75391', 'Senin 6AM–6PM\r\nSelasa 6AM–6PM\r\nRabu 6AM–6PM\r\nKamis 6AM–6PM        \r\nJumat 6AM–6PM         \r\nSabtu 6AM–6PM        \r\nMinggu 6AM–6PM ', '0878-8572-4853', '-0.5532762387889653', '117.09263909130478', 385000, 'Toilet, Loker Barang, Lapangan, Parkiran', '385000 harga perjam', 'Screenshot_(446)1.png'),
(122, 'Kolam Renang Gor Segiri', 21, 'Jl. Stadion Barat Bugis, Samarinda Kota, Samarinda City, East Kalimantan 75242', 'Senin 8AM–05.30PM\r\nSelasa 8AM–11AM\r\nRabu Tutup\r\nKamis Tutup       \r\nJumat Tutup        \r\nSabtu 8AM–05.30PM       \r\nMinggu 8AM–05.30PM ', '0821346212763', '-0.4932401786572217', '117.1479542878189', 45000, 'Toilet, Mushola, Tribun, Loker Barang, Kantin, Parkiran', '45000 harga 1x masuk', 'gor_segiri_kolam_renang.png'),
(123, 'Lapangan Panahan Samarinda', 20, 'Jl. Slamet Riyadi, Karang Asam Ulu, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan Timur 75243', 'Senin Buka 24 jam\r\nSelasa Buka 24 jam\r\nRabu Buka 24 jam\r\nKamis Buka 24 jam       \r\nJumat Buka 24 jam        \r\nSabtu Buka 24 jam       \r\nMinggu Buka 24 jam', '08132837261', '-0.5079225668156021', '117.11896497278595', 200000, 'Tribun, Lapangan, Parkiran', '200000 harga perjam', 'Screenshot_(447)2.png'),
(124, 'ARENA PANAHAN SAMARINDA', 20, 'Jl. M. Yamin, Gn. Kelua, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', 'Senin Tutup\r\nSelasa 9AM–9PM\r\nRabu 9AM–9PM\r\nKamis 9AM–9PM      \r\nJumat 9AM–9PM        \r\nSabtu 9AM–9PM       \r\nMinggu 9AM–9PM ', '0811-4340-616', '-0.4674060494615501', '117.14811253815078', 250000, 'Toilet, Lapangan, Parkiran', '250000 harga perjam', 'Screenshot_(448)1.png'),
(125, 'Lapangan Panahan Kalimantan Timur', 20, 'l. Stadion Madya Sempaja, Sempaja Sel., Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75243', 'Senin 8AM–5PM\r\nSelasa 8AM–5PM\r\nRabu 8AM–5PM\r\nKamis 8AM–5PM      \r\nJumat 8AM–5PM        \r\nSabtu 8AM–5PM      \r\nMinggu 8AM–5PM ', '08532163281', '-0.4545425913926737', '117.15462225942993', 75000, 'Toilet, Tribun, Lapangan, Parkiran', '75000 harga perjam', 'Screenshot_(449)1.png'),
(126, 'Lapangan Sepak Bola Perum Keledang Mas', 12, 'Jl. Perum Keledang Mas, Sungai Keledang, Kec. Samarinda Seberang, Kota Samarinda, Kalimantan Timur 7', 'Senin 8AM–5PM\r\nSelasa 8AM–5PM\r\nRabu 8AM–5PM\r\nKamis 8AM–5PM      \r\nJumat 8AM–5PM        \r\nSabtu 8AM–5PM      \r\nMinggu 8AM–5PM', '08521722937', '-0.5186772569178063', '117.13451105623626', 550000, 'Mushola, Lapangan, Parkiran', '550000 harga perhari', 'Screenshot_(377)1.png'),
(127, 'Pencak Silat Naga Pertapa Indonesia', 22, 'Jl. Kemakmuran, Gg. PLN, Sungai Pinang Dalam, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 7', 'Senin 8AM–5PM\r\nSelasa 8AM–5PM\r\nRabu 8AM–5PM\r\nKamis 8AM–5PM      \r\nJumat 8AM–5PM        \r\nSabtu 8AM–5PM      \r\nMinggu 8AM–5PM ', '085381021937', '-0.4778421696590556', '117.16480124264145', 350000, 'Toilet, Lapangan, Parkiran', '350000 harga 1x masuk', 'Screenshot_(452).png'),
(129, 'Lapangan Tenis Komplek Perumahan Voorfo', 10, 'Jalan Lai Komplek Perumahan Voorfo Samarinda', 'Senin 8AM–5PM  \r\nSelasa 8AM–5PM  \r\nRabu 8AM–5PM  \r\nKamis 8AM–5PM  \r\nJumat 8AM–5PM  \r\nSabtu 8AM–5PM\r\nMinggu 8AM-4PM', '081365821563', '-0.47359637914097646', '117.14465852349186', 350000, 'Toilet, Loker Barang, Lapangan, Parkiran', '350000 harga perjam', 'Screenshot_(454)2.png'),
(130, 'Lapangan SepakBola Komplek Perumahan Voorfo', 12, 'Jl. Sawo No.30, Voorfo, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75123', 'Senin 8AM–5PM  \r\nSelasa 8AM–5PM  \r\nRabu 8AM–5PM  \r\nKamis 8AM–5PM  \r\nJumat 8AM–5PM  \r\nSabtu 8AM–5PM\r\nMinggu 8AM-5PM', '08529346172', '-0.4746531333105174', '117.1439899828949', 350000, 'Lapangan, Parkiran', '350000 harga perhari', 'Screenshot_(518).png'),
(131, 'DOJO KARATE (THE COBRA) - KKI KALTIM', 23, 'Jl. Stadion Madya Sempaja, Sempaja Sel., Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 7524', 'Senin 07.30PM–09.30PM  \r\nSelasa Tutup \r\nRabu 07.30PM–09.30PM  \r\nKamis Tutup  \r\nJumat Tutup  \r\nSabtu 07.30PM–09.30PM \r\nMinggu Tutup', '0813-5104-0566', '-0.45334368159228033', '117.15448278456115', 280000, 'AC, Toilet, Tribun, Loker Barang, Lapangan, Parkiran', '280000 harga 1x masuk', 'Screenshot_(456)1.png'),
(132, 'Futsal Orion', 15, 'Jl. Gatot Subroto No.9, Bandara, Kec. Sungai Pinang, Kota Samarinda, Kalimantan Timur 75117', 'Buka 24 jam', '(0541) 7970353', '-0.48060206619586365', '117.1556254056015', 150000, 'Toilet, Tribun, Loker Barang, Lapangan, Kantin, Parkiran', '150000 harga perjam', 'Screenshot_(457)2.png'),
(133, 'Futsal Al Hasani', 15, 'Jl. Cipto Mangun Kusumo, Keledang River, Samarinda Seberang, Samarinda City, East Kalimantan 75242', 'Senin 9AM–11.45PM  \r\nSelasa 9AM–11.45PM \r\nRabu 9AM–11.45PM   \r\nKamis 9AM–11.45PM   \r\nJumat 9AM–11.45PM  \r\nSabtu 9AM–11.45PM  \r\nMinggu 9AM–11.45PM ', '081350017002', '-0.5325624686537485', '117.12508711486244', 150000, 'Toilet, Lapangan, Parkiran', '150000 harga perjam', 'Screenshot_(458)1.png'),
(134, 'RI Futsal', 15, 'Jl. Rapak Indah No.63, Loa Bakung, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan Timur 75243', 'Senin 8AM–12AM  \r\nSelasa 8AM–12AM \r\nRabu 8AM–12AM   \r\nKamis 8AM–12AM   \r\nJumat 8AM–12AM  \r\nSabtu 8AM–12AM \r\nMinggu 8AM–12AM', '0813-4884-0505', '-0.5012865026491399', '117.10452664165878', 150000, 'Toilet, Tribun, Loker Barang, Lapangan, Parkiran', '150000 harga perjam', 'Screenshot_(459)1.png'),
(135, 'Pima Futsal', 15, 'Jl. Pelita, Harapan Baru, Loa Janan Ilir, Samarinda City, East Kalimantan 75251', 'Senin 8AM–12AM  \r\nSelasa 8AM–12AM \r\nRabu 8AM–12AM   \r\nKamis 8AM–12AM   \r\nJumat 8AM–12AM  \r\nSabtu 8AM–12AM \r\nMinggu 8AM–12AM ', '0823-5825-5584', '-0.5465334758957839', '117.11871820955658', 150000, 'Toilet, Mushola, Tribun, Lapangan,Parkiran', '150000 harga perjam', 'Screenshot_(460)1.png'),
(136, 'GOR Bulutangkis LEVI JAYA', 18, 'Jl. Siti Aisyah No.116, Jawa, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75243', 'Senin 8AM–11PM  \r\nSelasa 8AM–11PM  \r\nRabu 8AM–11PM    \r\nKamis 8AM–11PM    \r\nJumat 8AM–11PM   \r\nSabtu 8AM–11PM  \r\nMinggu 8AM–11PM', '0822-3128-5080', '-0.4933581914797891', '117.13579784601116', 280000, 'Toilet, Loker Barang, Lapangan', '280000 harga per 2jam', 'Screenshot_(461)1.png'),
(137, 'El Studio', 11, 'Jl. Pasundan No.19, Jawa, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75112', 'Senin 10AM–9PM  \r\nSelasa 10AM–9PM    \r\nRabu 10AM–9PM      \r\nKamis 10AM–9PM      \r\nJumat 10AM–9PM     \r\nSabtu 10AM–9PM    \r\nMinggu 10AM–9PM', '0813-4760-1333', '-0.49348290957408375', '117.138154837183', 175000, 'Wifi, AC, Toilet, Loker Barang, Parkiran', '175000 harga perbulan', 'Screenshot_(462)2.png'),
(138, 'Lapangan Bulutangkis Perintis', 18, 'Jl. Perintis, Mugirejo, Sungai Pinang, Samarinda City, East Kalimantan 75242', 'Senin 9AM–10PM  \r\nSelasa 9AM–10PM    \r\nRabu 9AM–10PM      \r\nKamis 9AM–10PM      \r\nJumat 9AM–10PM     \r\nSabtu 9AM–10PM    \r\nMinggu 9AM–10PM ', '0813-4730-5154', '-0.4785636587541071', '117.18129951029205', 250000, 'Toilet, Loker Barang, Lapangan, Parkiran', '250000 harga per 2jam', 'Screenshot_(395)3.png'),
(139, 'Lapangan Bulu Tangkis Gold Star', 18, 'Jl. Sultan Alimudin, Gg. Ketapang 1, Selili, Samarinda Ilir, Samarinda City, East Kalimantan 75251', 'Senin 7AM–11PM  \r\nSelasa 9AM–12PM    \r\nRabu 9AM–12PM    \r\nKamis 9AM–12PM     \r\nJumat 9AM–12PM    \r\nSabtu 9AM–12PM    \r\nMinggu 9AM–12PM ', '0812-5625-9007', '-0.5163465123608819', '117.16543156175995', 400000, 'Toilet, Loker Barang, Lapangan, Parkiran', 'Main 1 kali dalam seminggu Rp400.000/Perbulan bisa 4/5 kali dalam sebulan tergantung kalender.\r\n4 lapangan matras\r\n', 'Screenshot_(401)3.png'),
(140, 'Dies Sport Center', 11, 'Jl. Padat Karya, Gg. Beringin, Selili, Kec. Samarinda Ilir, Kota Samarinda, Kalimantan Timur 75251', 'Senin 8AM–12PM  \r\nSelasa 8AM–12PM    \r\nRabu 8AM–12PM     \r\nKamis 8AM–12PM      \r\nJumat 8AM–12PM     \r\nSabtu 8AM–12PM    \r\nMinggu 8AM–12PM', '0822-3388-8588', '-0.5128195497564676', '117.16739493875885', 150000, 'AC, Toilet, Loker Barang, Parkiran', '150000 harga perbulan', 'Screenshot_(300)3.png'),
(141, 'Lapangan Bulutangkis Sinar Mahakam', 18, 'Jl. KH. Harun Nafsi No.32, Rapak Dalam, Kec. Samarinda Seberang, Kota Samarinda, Kalimantan Timur 75', 'Senin 7AM–11PM  \r\nSelasa 7AM–11PM    \r\nRabu 7AM–11PM    \r\nKamis 7AM–11PM     \r\nJumat 7AM–11PM    \r\nSabtu 7AM–11PM    \r\nMinggu 7AM–11PM ', ' 0852-4621-1714', '-0.5421992217598852', '117.12536472349548', 175000, 'Toilet, Loker Barang, Lapangan, Parkiran', '175000 harga per 2jam', 'Screenshot_(467)1.png'),
(143, 'Lapangan SepakBola GP', 12, 'Jl. Haji Marhusin, Selili, Samarinda Ilir, Samarinda City, East Kalimantan 75251', 'Senin 8AM–5PM  \r\nSelasa 8AM–5PM    \r\nRabu 8AM–5PM    \r\nKamis 8AM–5PM     \r\nJumat 8AM–5PM    \r\nSabtu 8AM–5PM    \r\nMinggu 8AM–5PM', '082191853728', '-0.523226095372419', '117.16357681422615', 450000, 'Toilet, Mushola, Tribun, Lapangan, Parkiran', '450000 harga perhari', 'Screenshot_(470)1.png'),
(144, 'Lapangan Sepak Bola Rawamakmur', 12, 'Jl. kamboja, Rawa Makmur, Palaran, Samarinda City, East Kalimantan 75251', 'Senin 8AM–5PM  \r\nSelasa 8AM–5PM    \r\nRabu 8AM–5PM    \r\nKamis 8AM–5PM     \r\nJumat 8AM–5PM    \r\nSabtu 8AM–5PM    \r\nMinggu 8AM–5PM ', '081376290172', '-0.5676347577486277', '117.17934015660667', 450000, 'Toilet, Mushola, Tribun, Lapangan, Parkiran', '450000 harga perhari\r\n', 'Screenshot_(471)3.png'),
(145, 'Lapangan Sepak Bola Makroman', 12, 'Jl. Samarinda - Anggana, Makroman, Kec. Sambutan, Kota Samarinda, Kalimantan Timur 75115', 'Senin 8AM–5PM  \r\nSelasa 8AM–5PM    \r\nRabu 8AM–5PM    \r\nKamis 8AM–5PM     \r\nJumat 8AM–5PM    \r\nSabtu 8AM–5PM    \r\nMinggu 8AM–5PM', '082372399852', '-0.5387607827927364', '117.22798604040527', 475000, 'Toilet, Mushola, Lapangan, Parkiran', '475000 harga perhari', 'Screenshot_(473)2.png'),
(146, 'Lapangan SepakBola Pinang Bahari', 12, 'Jl. APT Pranoto, Gg. Kalimaya, Sungai Keledang, Kec. Samarinda Seberang, Kota Samarinda, Kalimantan ', 'Senin 8AM–5PM  \r\nSelasa 8AM–5PM    \r\nRabu 8AM–5PM    \r\nKamis 8AM–5PM     \r\nJumat 8AM–5PM    \r\nSabtu 8AM–5PM    \r\nMinggu 8AM–5PM ', '0812-2530-1724', '-0.5266940460603211', '117.13228214054489', 350000, 'Toilet, Lapangan, Parkiran', '350000 harga perhari', 'Screenshot_(474)2.png'),
(148, 'Latihan Golf', 19, 'Jl. Teuku Umar, Loa Bakung, Kec. Sungai Kunjang, Kota Samarinda, Kalimantan Timur 75243', 'Senin 8AM–11PM  \r\nSelasa 8AM–11PM    \r\nRabu 8AM–11PM    \r\nKamis 8AM–11PM     \r\nJumat 8AM–11PM    \r\nSabtu 8AM–11PM    \r\nMinggu 8AM–11PM    ', '081363271278', '-0.5035904316050654', '117.10933584242248', 200000, 'Toilet, Tribun, Loker Barang, Lapangan, Parkiran', '200000 harga perjam', 'Screenshot_(496).png'),
(149, 'Lapangan SepakBola Perumahan Kalimanis', 12, 'Jl. Gani Mulya Raya No.RT 11, Sungai Kapih, Kec. Sambutan, Kota Samarinda, Kalimantan Timur 75251', 'Senin 8AM–5PM  \r\nSelasa 8AM–5PM    \r\nRabu 8AM–5PM    \r\nKamis 8AM–5PM     \r\nJumat 8AM–5PM    \r\nSabtu 8AM–5PM    \r\nMinggu 8AM–5PM', '082138121943', '-0.5311255370817971', '117.1721136149683', 300000, 'Toilet, Mushola, Tribun, Lapangan, Parkiran', '300000 harga perhari', 'Screenshot_(503).png'),
(150, 'Project Fitness', 11, 'Jl. Bung Tomo, Sungai Keledang, Kec. Samarinda Seberang, Kota Samarinda, Kalimantan Timur 75131', 'Senin 8AM–7PM  \r\nSelasa 8AM–7PM    \r\nRabu 8AM–7PM    \r\nKamis 8AM–7PM     \r\nJumat 8AM–7PM    \r\nSabtu 8AM–7PM    \r\nMinggu 8AM–7PM ', '0852-5092-3354', '-0.5123434767082492', '117.1337801542797', 75000, 'Wifi, AC, Loker Barang, Parkiran, Kipas Angin', '75000 harga perbulan', 'WhatsApp_Image_2021-03-21_at_20_18_29.jpeg'),
(151, 'Futsal Darussalam', 15, 'Jl. KH. Harun Nafsi, Rapak Dalam, Kec. Loa Janan Ilir, Kota Samarinda, Kalimantan Timur 75242', 'Senin 8AM–5PM  \r\nSelasa 8AM–5PM    \r\nRabu 8AM–5PM    \r\nKamis 8AM–5PM     \r\nJumat 8AM–5PM    \r\nSabtu 8AM–5PM    \r\nMinggu 8AM–5PM', '085361825329', '-0.5203549096898138', '117.14245508878612', 100000, 'Toilet, Lapangan, Parkiran', '100000 harga perjam', 'Screenshot_(73).png'),
(152, 'Lapangan Futsal KOREM Awang Long', 15, 'Jl. Awang Long, Komp. Sport Centre Korem, Jl. Awang Long, Bugis, Kec. Samarinda Kota, Kota Samarinda', 'Senin 9AM–12PM  \r\nSelasa 9AM–12PM    \r\nRabu 9AM–12PM    \r\nKamis 9AM–12PM     \r\nJumat 9AM–12PM    \r\nSabtu 9AM–12PM    \r\nMinggu 9AM–12PM', '0822-3411-1634', '-0.49853399042146607', '117.14488718181038', 120000, 'Toilet, Tribun, Lapangan, Parkiran', 'fix', 'Screenshot_(74).png'),
(153, 'Satria Club Taekwondo', 25, 'Jalan. Drs. H. Anang Hasyim, Air Hitam, Kec. Samarinda Ulu, Kota Samarinda, Kalimantan Timur 75131', 'Senin 8AM–11PM  Selasa 8AM–11PM  Rabu 8AM–11PM  Kamis 8AM–11PM  Jumat 8AM–11PM  Sabtu 8AM–11PM  Minggu 8AM–11PM', '081347659271', '-0.46543737327788115', '117.12864238291168', 800000, 'Toilet, Mushola, Lapangan, Parkiran', 'fix', 'satriaclubtaekwondo1.jpeg'),
(154, 'Lapangan Bola Voli Balaikota', 13, 'Jalan Balaikota', 'Kamis 08.00–23.00  Jumat 08.00–23.00  Sabtu 08.00–23.00  Minggu 08.00–23.00  Senin 08.00–23.00  Selasa 08.00–23.00  Rabu 08.00–23.00', '082173461238', '-0.49329650295916444', '117.14551884203338', 200000, 'Toilet, Parkiran', 'per 2 jam', 'voli_balaikota.jpg');

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
(1, 'Kota Samarinda', '-0.4954556008402005', '117.14395779638672', 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `nama`, `username`, `password`, `no_telpon`, `alamat`, `email`) VALUES
(1, 'Sudirman\r\n', 'admin', '4321admin', '082134921819', 'jalan pesut ', 'sudirman@gmail.com\r\n');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_foto`
--
ALTER TABLE `tbl_foto`
  ADD PRIMARY KEY (`id_foto`) USING BTREE,
  ADD KEY `id_penginapan` (`id_olahraga`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`) USING BTREE;

--
-- Indeks untuk tabel `tbl_olahraga`
--
ALTER TABLE `tbl_olahraga`
  ADD PRIMARY KEY (`id_olahraga`) USING BTREE,
  ADD KEY `id_kategori` (`id_kategori`);

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
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tbl_olahraga`
--
ALTER TABLE `tbl_olahraga`
  MODIFY `id_olahraga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

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

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_foto`
--
ALTER TABLE `tbl_foto`
  ADD CONSTRAINT `tbl_foto_ibfk_1` FOREIGN KEY (`id_olahraga`) REFERENCES `tbl_olahraga` (`id_olahraga`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_olahraga`
--
ALTER TABLE `tbl_olahraga`
  ADD CONSTRAINT `tbl_olahraga_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
