-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 12 Okt 2022 pada 07.20
-- Versi server: 10.3.36-MariaDB-log-cll-lve
-- Versi PHP: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mitramentaya_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_about_slider`
--

CREATE TABLE `tbl_about_slider` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_about_slider`
--

INSERT INTO `tbl_about_slider` (`id`, `image`) VALUES
(1, '6319f98428bdf.jpg'),
(2, '6319f9a8611b1.jpg'),
(3, '6319f80056910.jpg'),
(4, '6319f9963fda6.jpg'),
(5, '6319f829a3792.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_chat_wa`
--

CREATE TABLE `tbl_chat_wa` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `image` varchar(200) NOT NULL,
  `startOnline` time NOT NULL,
  `endOnline` time NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `createUserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_chat_wa`
--

INSERT INTO `tbl_chat_wa` (`id`, `nama`, `phone`, `image`, `startOnline`, `endOnline`, `createDate`, `createUserId`) VALUES
(1, 'Admin', '08125012875', 'Admin_2022-09-05 13:59:34.svg', '07:00:00', '22:00:00', '2022-08-19 06:57:40', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_client`
--

CREATE TABLE `tbl_client` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_client`
--

INSERT INTO `tbl_client` (`id`, `nama`, `image`) VALUES
(1, 'Our Best Client', '6319e83ec31b5.png'),
(2, 'Our Best Client', '631aecc61a07a.png'),
(3, 'Our Best Client', '6319e85813da9.png'),
(4, 'Our Best Client', '6319e866d6ef9.png'),
(5, 'Our Best Client', '6319e87340906.png'),
(6, 'Our Best Client', '6319e87fa8ffe.png'),
(7, 'Our Best Client', '6319e890ade56.png'),
(8, 'Our Best Client', '6319e89e2cfb9.png'),
(9, 'Our Best Client', '6319e8aae27db.png'),
(10, 'Our Best Client', '6319e8b829312.png'),
(11, 'Our Best Client', '631ae9578bf7a.png'),
(12, 'Our Best Client', '6319e8ea207df.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_fitur`
--

CREATE TABLE `tbl_fitur` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_fitur`
--

INSERT INTO `tbl_fitur` (`id`, `title`, `image`) VALUES
(1, 'BEST SERVICE', '6315a26ad73f0.svg'),
(2, 'TEPAT WAKTU', '6315a275b930a.svg'),
(3, 'LAYANAN 24/7', '6315a27e8b3e3.svg'),
(4, 'HARGA TERBAIK', '6315a2874eb63.svg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id` int(11) NOT NULL,
  `name` varchar(125) NOT NULL,
  `image` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id`, `name`, `image`) VALUES
(1, '', '631ab4f2093b0.jpg'),
(2, '', '631ab4fd135b1.jpg'),
(3, '', '631ab548d2652.jpg'),
(4, '', '631ab894ac0dc.jpg'),
(5, '', '631ab8a48f615.jpg'),
(6, '', '631ab8af9bbca.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_homeweb`
--

CREATE TABLE `tbl_homeweb` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_homeweb`
--

INSERT INTO `tbl_homeweb` (`id`, `title`, `deskripsi`) VALUES
(2, 'Logistics Help Any Businesses for Everyone around The World', 'Fleksibel, Harga Oke, Cepat, Dan Kualitas Oke');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `deskripsi`, `image`) VALUES
(1, 'Jalur Darat', 'Layanan pengiriman cargo melalui moda transportasi darat. Dengan sejumlah armada yang kami miliki, kami yakin dapat memenuhi permintaan serta memberikan solusi terbaik mengenai kebutuhan kiriman darat yang tepat sesuai dengan kebutuhan anda.', '63159ab9a62ac.svg'),
(2, 'Jalur Udara', 'Layanan pengiriman cargo melalui moda transportasi udara. Dengan jalinan kerjasama yang baik dengan mitra bisnis, kami memberikan solusi dalam pelayanan pengiriman melalui jalur udara sesuai kebutuhan Anda dan harga yang kompetitif.', '63159b2107587.svg'),
(3, 'Jalur Laut', 'Layanan pengiriman cargo melalui moda transportasi laut menggunakan petikemas (container) maupun dalam bentuk kemasan lainnya dalam ukuran dan dimensi yang besar seperti alat berat, besi, baja, project cargo dan berbagai jenis cargo lainnya dengan pelayanan terbaik dan harga yang kompetitif.', '63159b30d72c9.svg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sosmed`
--

CREATE TABLE `tbl_sosmed` (
  `id` int(11) NOT NULL,
  `name` varchar(125) NOT NULL,
  `link` varchar(125) NOT NULL,
  `icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_sosmed`
--

INSERT INTO `tbl_sosmed` (`id`, `name`, `link`, `icon`) VALUES
(1, 'Instagram', 'https://www.instagram.com', 'fa-instagram'),
(2, 'Facebook', 'https://facebook.com/', 'fa-facebook-f'),
(3, 'Twitter', 'https://www.twitter.com/', 'fa-twitter'),
(5, 'LinkedIn', 'https://www.linkedin.com', 'fa-linkedin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `id` int(11) NOT NULL,
  `nama` varchar(125) NOT NULL,
  `title` varchar(100) NOT NULL,
  `testi` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_testimoni`
--

INSERT INTO `tbl_testimoni` (`id`, `nama`, `title`, `testi`, `image`) VALUES
(1, 'Park Jo Song', 'Businessman', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>\r\n', '63159d8055a94.svg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_website`
--

CREATE TABLE `tbl_website` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `why_us` text NOT NULL,
  `penawaran` text NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `phone_2` varchar(20) NOT NULL,
  `phone_3` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `metaTitle` varchar(80) NOT NULL,
  `metaKeywords` text NOT NULL,
  `metaDescription` text NOT NULL,
  `map` text NOT NULL,
  `image` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_website`
--

INSERT INTO `tbl_website` (`id`, `name`, `why_us`, `penawaran`, `address`, `phone`, `phone_2`, `phone_3`, `fax`, `email`, `description`, `metaTitle`, `metaKeywords`, `metaDescription`, `map`, `image`) VALUES
(1, 'Mitra Mentaya Logistics', '<p style=\"text-align:center\">Kami adalah tim profesional dalam bidang pengiriman dan logistik yang dapat Anda percaya dan andalkan untuk mengelola kebutuhan layanan pengiriman dan logistik Anda secara efektif. Dengan pengalaman panjang yang kami miliki, kami mampu menyediakan solusi pengiriman dan logistik yang aman, cepat dan hemat biaya&nbsp;kepada pelanggan kami.</p>\r\n', '<p style=\"text-align:justify\">Mari bergabung dan bermitra bersama kami hari ini, dan dapatkan penawaran dan pelayanan terbaik dari kami untuk Anda yang akan berlangganan bersama kami.</p>\r\n', '<p>Jl. Kapten Mulyono No 110, Sampit, Kalimantan Tengah, Indonesia</p>\r\n', '08125012875', '', '', '', 'lies_hendrawati@yahoo.com', '<p>PT. Mitra Mentaya Logistics ( MML ) adalah perusahaan jasa pengiriman dan logistik yang memiliki pengalaman dalam pengiriman cargo ke seluruh wilayah Indonesia melalui&nbsp;jalur laut, darat dan udara.</p>\r\n\r\n<p>Berdomisili di Kota Sampit, Kalimantan Tengah&nbsp;dan beberapa kantor cabang dan perwakilan yang tersebar di hampir seluruh Indonesia. MML siap melayani semua kebutuhan pengiriman cargo Anda dengan pelayanan yang fleksibel, penawaran harga terbaik, cepat dan berkualitas.</p>\r\n', 'Mitra Mentaya Logistics | Jasa Pengiriman dan Door Services Area Kalteng', '<p>ekspedisi sampit,&nbsp;ekspedisi di sampit,&nbsp;ekspedisi container sampit,&nbsp;ekspedisi container di sampit, dooring cargo sampit,&nbsp;dooring container sampit, dooring service sampit,&nbsp;dooring service container sampit,&nbsp;door cargo sampit,&nbsp;door container sampit,&nbsp;door service sampit,&nbsp;door service container sampit,&nbsp;ekspedisi pangkalan bun,&nbsp;ekspedisi di pangkalan bun,&nbsp;ekspedisi container pangkalan bun,&nbsp;ekspedisi container di pangkalan bun,&nbsp;dooring cargo pangkalan bun,&nbsp;dooring container pangkalan bun,&nbsp;dooring service pangkalan bun,&nbsp;dooring service container pangkalan bun, door cargo pangkalan bun,&nbsp;door container pangkalan bun,&nbsp;door service pangkalan bun,&nbsp;door service container pangkalan bun,&nbsp;ekspedisi pangkalanbun,&nbsp;ekspedisi di pangkalanbun,&nbsp;ekspedisi container pangkalanbun,&nbsp;ekspedisi container di pangkalanbun,&nbsp;dooring cargo pangkalanbun,&nbsp;dooring container pangkalanbun,&nbsp;dooring service pangkalanbun,&nbsp;dooring service container pangkalan bun, door cargo pangkalanbun, door container pangkalanbun,&nbsp;door service pangkalanbun, door service container pangkalan bun,&nbsp;ekspedisi kumai,&nbsp;ekspedisi di kumai,&nbsp;ekspedisi container kumai,&nbsp;ekspedisi container di kumai,&nbsp;dooring cargo kumai,&nbsp;dooring container kumai,&nbsp;dooring service kumai,&nbsp;door cargo kumai,&nbsp;door container kumai,&nbsp;door service kumai,&nbsp;ekspedisi kalteng,&nbsp;ekspedisi di kalteng,&nbsp;ekspedisi container kalteng,&nbsp;ekspedisi container di kalteng,&nbsp;dooring cargo kalteng,&nbsp;dooring container kalteng,&nbsp;dooring service kalteng,&nbsp;dooring service container kalteng,&nbsp;door cargo kalteng,&nbsp;door container kalteng,&nbsp;door service kalteng,&nbsp;door service container kalteng</p>\r\n', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3985.884810914286!2d112.9396839!3d-2.5444086!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2d02643dbdd6000b!2zMsKwMzInMzkuOSJTIDExMsKwNTYnMzAuNyJF!5e0!3m2!1sid!2sid!4v1662359905087!5m2!1sid!2sid\" width=\"100%\" height=\"100%\" style=\"border:0;border-radius: 10px;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'logo.svg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_why_us`
--

CREATE TABLE `tbl_why_us` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_why_us`
--

INSERT INTO `tbl_why_us` (`id`, `title`, `image`) VALUES
(1, 'TERPERCAYA', '6315a20d8b971.svg'),
(2, 'REAL TIME REPORT', '6315a219d9973.svg'),
(3, 'LAYANAN 24/7', '6315a22678d18.svg'),
(4, 'LEBIH CEPAT', '6315a2443b080.svg'),
(5, 'JANGKAUAN LUAS', '6315a250794b0.svg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_about_slider`
--
ALTER TABLE `tbl_about_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_chat_wa`
--
ALTER TABLE `tbl_chat_wa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_client`
--
ALTER TABLE `tbl_client`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_fitur`
--
ALTER TABLE `tbl_fitur`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_homeweb`
--
ALTER TABLE `tbl_homeweb`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_sosmed`
--
ALTER TABLE `tbl_sosmed`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_website`
--
ALTER TABLE `tbl_website`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_why_us`
--
ALTER TABLE `tbl_why_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_about_slider`
--
ALTER TABLE `tbl_about_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_chat_wa`
--
ALTER TABLE `tbl_chat_wa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_fitur`
--
ALTER TABLE `tbl_fitur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_homeweb`
--
ALTER TABLE `tbl_homeweb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_sosmed`
--
ALTER TABLE `tbl_sosmed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_website`
--
ALTER TABLE `tbl_website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_why_us`
--
ALTER TABLE `tbl_why_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
