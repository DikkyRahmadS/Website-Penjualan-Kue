-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2023 at 02:58 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omamacake`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `foto` text NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `no_whatsapp` varchar(14) NOT NULL,
  `password` text NOT NULL,
  `waktu` varchar(100) NOT NULL,
  `tipe_daftar` varchar(50) NOT NULL,
  `tipe_akun` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `foto`, `nama_lengkap`, `email`, `no_whatsapp`, `password`, `waktu`, `tipe_daftar`, `tipe_akun`) VALUES
(14, 'me.png', 'Dian', 'user@gmail.com', '085381259308', '$2y$10$o7NJFOl5DQ/i8w7ydFEIj.f5MrlYPQ.sGQMa7DvavEq.pG7aAIHTK', '2023-02-15 16:20:48', '', ''),
(15, 'omamacake.png', 'Administrator', 'admin@gmail.com', '082377823390', '$2y$10$ivlVrsDRBVq7ZDlsBcLj7eJ2B8RlEY9cVNnNk.H0kkoQxP6b6PSBu', '2023-02-15 01:18:30', '', 'Admin'),
(19, 'me.png', 'abc', 'dianamriina@gmail.com', '084567654', '$2y$10$SEsxOJvYEDqX5xkv9tuQo.BrXEq1CEeEy/Ehf216Pk.7LhwgEVLwm', '2023-06-03 03:11:07', '', ''),
(20, 'user.png', 'wawan', 'wawan@gmail.com', '08998877', '$2y$10$bCdbqzWGWOz832vWlpDaHOQKWGRiG1imo3.YspynNpQHH3ZKBDX7i', '2023-06-10 17:19:03', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `banner_promo`
--

CREATE TABLE `banner_promo` (
  `idbanner` int(11) NOT NULL,
  `image` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `flashsale`
--

CREATE TABLE `flashsale` (
  `id_fs` int(11) NOT NULL,
  `waktu_berakhir` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flashsale`
--

INSERT INTO `flashsale` (`id_fs`, `waktu_berakhir`) VALUES
(1, '10.21');

-- --------------------------------------------------------

--
-- Table structure for table `iklan`
--

CREATE TABLE `iklan` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `gambar` longtext NOT NULL,
  `judul` varchar(200) NOT NULL,
  `harga` int(10) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `berat` int(11) NOT NULL,
  `warna` text NOT NULL,
  `ukuran` text NOT NULL,
  `stok` int(5) NOT NULL,
  `terjual` int(5) NOT NULL,
  `diskon` int(3) NOT NULL,
  `tipe_iklan` varchar(15) NOT NULL,
  `waktu` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iklan`
--

INSERT INTO `iklan` (`id`, `id_kategori`, `gambar`, `judul`, `harga`, `deskripsi`, `berat`, `warna`, `ukuran`, `stok`, `terjual`, `diskon`, `tipe_iklan`, `waktu`, `status`) VALUES
(17, 1, '1677208656-1.png,1677208656-2.png,1677208656-3.png,1677208656-4.png,1677208656-5.png', 'Kue Ulang Tahun Mewah', 200000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===200000', 5, 0, 0, '', '2023-02-24 04:17:36', ''),
(18, 1, '1677209652-1.png,1677208870-2.png,1677209637-3.png,1677208870-4.png,1677208870-5.png', 'Kue Ulang Tahun ', 200000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===200000', 5, 0, 0, '', '2023-02-24 04:21:09', ''),
(19, 1, '1677209591-1.png,1677209025-2.png,1677209025-3.png,1677209591-4.png,1677209025-5.png', 'Kue Ulang Tahun Marble', 220000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===220000', 5, 0, 0, '', '2023-02-24 04:23:44', ''),
(20, 1, '1677209569-1.png,1677209340-2.png,1677209569-3.png,1677209340-4.png,1677209340-5.png', 'Kue Ulang Tahun Lilac', 220000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===220000', 5, 0, 0, '', '2023-02-24 04:29:00', ''),
(21, 1, '1677210001-1.png,1677210001-2.png,1677210001-3.png,1677210001-4.png,1677210001-5.png', 'Kue Ulang Tahun Keluarga', 120000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===120000', 5, 0, 0, '', '2023-02-24 04:40:00', ''),
(22, 1, '1677210138-1.png,1677210138-2.png,1677210138-3.png,1677210138-4.png', 'Kue Ulang Tahun untuk Ayang', 150000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===120000', 5, 0, 0, '', '2023-02-24 04:42:17', ''),
(23, 1, '1677210187-1.png,1677210187-2.png,1677210187-3.png,1677217931-4.png,1677217931-5.png', 'Kue Ulang Tahun untuk Suami', 120000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===120000', 5, 0, 0, '', '2023-02-24 04:43:06', ''),
(24, 1, '1677210460-1.png,1677210460-2.png,1677210460-3.png,1677210460-4.png,1677210460-5.png', 'Kue Ulang Tahun ', 180000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===180000', 5, 0, 0, '', '2023-02-24 04:47:40', ''),
(25, 1, '1677212469-1.png,1677212469-2.png,1677212469-3.png,1677212469-4.png,1677212469-5.png', 'Kue Ulang Tahun Kalender', 200000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===200000', 5, 0, 0, '', '2023-02-24 05:21:09', ''),
(28, 1, '1677213173-1.png,1677213173-2.png,1677213173-3.png,1677213173-4.png,1677213173-5.png', 'Kue Ulang Tahun 2 Tingkat', 400000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '24===400000', 5, 0, 0, '', '2023-02-24 05:32:53', ''),
(29, 1, '1677213307-1.png,1677213307-2.png,1677213307-3.png,1677213307-4.png,1677213307-5.png', 'Kue Ulang Tahun Double Karakter Keluarga', 200000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===200000', 5, 0, 0, '', '2023-02-24 05:35:06', ''),
(30, 1, '1677213481-1.png,1677213481-2.png,1677213481-3.png', 'Kue Ulang Tahun ', 200000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===200000', 5, 0, 0, '', '2023-02-24 05:38:00', ''),
(31, 1, '1677218063-1.png,1677218063-2.png,1677218063-3.png,1677218063-4.png,1677218063-5.png', 'Kue Ulang Tahun Keluarga Cemara', 100000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===100000', 5, 0, 0, '', '2023-02-24 06:54:23', ''),
(32, 1, '1677218168-1.png,1677218168-2.png,1677218168-3.png,1677218168-4.png,1677218168-5.png', 'Kue Ulang Tahun Flower', 100000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===100000', 5, 0, 0, '', '2023-02-24 06:56:07', ''),
(33, 1, '1677218267-1.png,1677218267-2.png,1677218267-3.png,1677218267-4.png,1677218267-5.png', 'Kue Ulang Tahun Karakter Kartun', 100000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===100000', 5, 0, 0, '', '2023-02-24 06:57:47', ''),
(34, 1, '1677218351-1.png,1677218351-2.png,1677218351-3.png,1677218351-4.png', 'Kue Ulang Tahun', 100000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===100000', 5, 0, 0, '', '2023-02-24 06:59:10', ''),
(35, 1, '1677218411-1.png,1677218411-2.png,1677218411-3.png,1677218411-4.png,1677218411-5.png', 'Kue Ulang Tahun ', 100000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===100000', 5, 0, 0, '', '2023-02-24 07:00:10', ''),
(36, 1, '1677220039-1.png,1677218715-2.png,1677218715-3.png,1677220039-4.png,1677218715-5.png', 'Kue Ulang Tahun Costum Karakter Anak 3 Tingkat', 500000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 1500, 'Cheese,Coklat', '24===500000', 5, 0, 0, '', '2023-02-24 07:05:14', ''),
(37, 1, '1677219249-1.png,1677219249-2.png,1677219237-3.png,1677219237-4.png,1677219237-5.png', 'Kue Ulang Tahun Anak Spiderman', 120000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===120000', 5, 0, 0, '', '2023-02-24 07:13:56', ''),
(38, 1, '1677219983-1.png,1677219983-2.png,1677219983-3.png,1677219983-4.png,1677219983-5.png', 'Kue Ulang Tahun Anak Baby Shark', 120000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===120000', 5, 0, 0, '', '2023-02-24 07:26:22', ''),
(39, 1, '1677220566-1.png,1677220566-2.png,1677220566-3.png,1677220566-4.png', 'Kue Ulang Tahun Unicorn', 150000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===150000', 5, 0, 0, '', '2023-02-24 07:36:05', ''),
(40, 1, '1677220633-1.png,1677220633-2.png,1677220633-3.png,1677220633-4.png,1677220633-5.png', 'Kue Ulang Tahun Anak Mickey Mouse', 150000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===150000', 5, 0, 0, '', '2023-02-24 07:37:12', ''),
(42, 1, '1677222615-1.png,1677222615-2.png,1677222615-3.png,1677222615-4.png,1677222615-5.png', 'Kue Ulang Tahun Anak Frozen', 120000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===120000', 5, 0, 0, '', '2023-02-24 08:10:15', ''),
(43, 1, '1677222698-1.png,1677222698-2.png,1677222698-3.png,1677222698-4.png,1677222698-5.png', 'Kue Ulang Tahun Anak LOL', 120000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===120000', 5, 0, 0, '', '2023-02-24 08:11:37', ''),
(44, 1, '1677222821-1.png,1677222821-2.png,1677222821-3.png,1677222821-4.png,1677222821-5.png', 'Kue Ulang Tahun Anak Free Fire ', 120000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===120000', 5, 0, 0, '', '2023-02-24 08:13:41', ''),
(45, 1, '1677222911-1.png,1677222911-2.png,1677222911-3.png', 'Kue Ulang Tahun Anak Hot Wheels', 120000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===120000', 5, 0, 0, '', '2023-02-24 08:15:11', ''),
(46, 1, '1677222969-1.png,1677222969-2.png,1677222969-3.png', 'Kue Ulang Tahun Anak Dinosaurus Cipung', 120000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===120000', 5, 0, 0, '', '2023-02-24 08:16:08', ''),
(47, 1, '1677282872-1.png,1677282892-2.png,1677282872-3.png,1677282872-4.png,1677282872-5.png', 'Kue Ulang Tahun Anak Costum Karakter', 120000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 5, 'Cheese,Coklat', '22===120000', 5, 0, 0, '', '2023-02-25 00:54:31', ''),
(48, 1, '1677282972-1.png,1677282972-2.png,1677282972-3.png,1677282972-4.png,1677282972-5.png', 'Kue Ulang Tahun Anak Kostum Karakter Cewek', 120000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 5, 'Cheese,Coklat', '22===120000', 5, 0, 0, '', '2023-02-25 00:56:11', ''),
(49, 1, '1677283215-1.png,1677283215-2.png,1677283215-3.png,1677283215-4.png,1677283215-5.png', 'Kue Ulang Tahun Karakter Kartun', 120000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===120000', 5, 0, 0, '', '2023-02-25 01:00:15', ''),
(50, 1, '1677283278-1.png,1677283278-2.png,1677283278-3.png,1677283278-4.png,1677283278-5.png', 'Kue Ulang Tahun Anak Cowok', 120000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===120000', 5, 0, 0, '', '2023-02-25 01:01:18', ''),
(51, 1, '1677283422-1.png,1677283422-2.png,1677283422-3.png,1677283422-4.png,1677283422-5.png', 'Kue Ulang Tahun Costum Anak', 120000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===120000', 5, 0, 0, '', '2023-02-25 01:03:42', ''),
(52, 3, '1677283519-1.png,1677283519-2.png', 'Kue Brownies Cheese Cake Coklat', 120000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Coklat,Matcha', '22===120000', 5, 0, 0, '', '2023-02-25 01:05:18', ''),
(53, 3, '1677283614-1.png', 'Kue Brownies Cheese Cake', 120000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===120000', 5, 0, 0, '', '2023-02-25 01:06:54', ''),
(54, 3, '1677283693-1.png,1677283693-2.png,1677283693-3.png,1677283693-4.png', 'Kue Ulang tahun Cheese Cake', 120000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Coklat,Cheese,Strawberry', '22===120000', 5, 0, 0, '', '2023-02-25 01:08:12', ''),
(55, 3, '1677283821-1.png,1677283821-2.png', 'Kue Ulang Tahun Cheese Cake', 120000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===120000', 5, 0, 0, '', '2023-02-25 01:10:20', ''),
(56, 3, '1677283868-1.png', 'Kue Ulang Tahun Brownies Cheese', 120000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Coklat', '22===120000', 5, 0, 0, '', '2023-02-25 01:11:07', ''),
(57, 3, '1677284495-1.png,1677284495-2.png,1677284622-3.png', 'Cheese POP', 9000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 100, 'Matcha,Coklat,Strawberry', '5===9000', 5, 0, 0, '', '2023-02-25 01:21:34', ''),
(58, 3, '1677284564-1.png,1677284564-2.png,1677284564-3.png', 'Brownies CheeseCake', 80000, '-Buatan sendiri, gambar original,\r\n-pembuatan fresh oven serta rasa \r\n-dijamin enak dan gak mengecewakan\r\n-Tanpa bahan pengawet dan pemanis buatan\r\n-Menggunakan bahan berkualitas\r\n-Bisa pesan sesuai keinginan(request karakter)\r\n-Order H-1\r\n-Gratis lilin dan pisau', 500, 'Cheese,Stawberry,Coklat', '15===80000', 5, 0, 0, '', '2023-02-25 01:22:44', ''),
(59, 3, '1677284877-1.png,1677284877-2.png', 'Klappertaart', 12500, 'yuk di checkout :)', 200, 'Cheese', 'Mini===250000,Baby===12500', 5, 0, 0, '', '2023-02-25 01:27:56', ''),
(60, 3, '1677285066-1.png,1677285059-2.png,1677285059-3.png', 'Baby Cheesecake dan Chocolava', 10000, 'yuk di checkout :)', 200, 'Cheese,Chocolava', 'Mini ===25.000,Baby===10000', 5, 0, 0, '', '2023-02-25 01:30:59', ''),
(61, 3, '1677285174-1.png', 'Pudding Mini', 20000, 'yuk buruan di checkout', 100, 'Cheese,Coklat', '5===20000', 5, 0, 0, '', '2023-02-25 01:32:54', ''),
(62, 2, '1677285275-1.png', 'Dessert Box', 35000, 'yuk buruan di checkout', 300, 'Oreo,Strawberry,Tiramisu,Green Tea', '10===35000', 5, 0, 0, '', '2023-02-25 01:34:35', ''),
(63, 12, '1677286656-1.png', 'Hampers Kalila', 220000, 'Hampers untuk lebaran idul fitri', 300, 'kalila', '21===220000', 5, 0, 0, '', '2023-02-25 01:57:36', ''),
(64, 12, '1677286747-1.png', 'Hampers Delisa', 185000, 'Hampers untuk lebaran idul fitri', 300, 'Delisa', '18===185000', 5, 0, 0, '', '2023-02-25 01:59:06', ''),
(65, 12, '1677286818-1.png', 'Hampers Richi', 145000, 'Cocok untuk lebaran idul fitri', 500, 'Richi', '14===145000', 5, 0, 0, '', '2023-02-25 02:00:18', ''),
(66, 12, '1677286931-1.png', 'Hampers Daisy', 165000, 'Cocok untuk lebaran', 300, 'Daisy', '9===165000', 5, 0, 0, '', '2023-02-25 02:02:10', ''),
(67, 12, '1677287020-1.png', 'Hampers Shaquena', 220000, 'Untuk Lebaran', 300, 'Shaquena', '15===220000', 5, 0, 0, '', '2023-02-25 02:03:40', ''),
(68, 12, '1677287088-1.png', 'Hampers Linala', 95000, 'Hampers', 300, 'Linala', '9===95000', 5, 0, 0, '', '2023-02-25 02:04:48', ''),
(69, 13, '1677287500-1.png,1677287500-2.png', 'Kue Sakura', 35000, 'Kue Sakura', 300, 'Sakura', '5===55000,7===35000,10===65000', 5, 0, 0, '', '2023-02-25 02:11:40', ''),
(70, 13, '1677287742-1.png,1677287742-2.png', 'Kue Chocochips', 40000, 'choco', 300, 'choco', '5===40000,7===65000,10===75000', 5, 0, 0, '', '2023-02-25 02:15:41', ''),
(71, 13, '1677287837-1.png,1677287837-2.png', 'Kue Sagu Keju', 40000, 'kue sagu keju', 300, 'sagu keju', '5===40000,7===70000,10===80000', 5, 0, 0, '', '2023-02-25 02:17:16', ''),
(72, 13, '1677288049-1.png,1677288049-2.png', 'Kue Kastengles', 40000, 'kue lebaran', 300, 'kastengels', '5===40000,7===75000,10===85000', 5, 0, 0, '', '2023-02-25 02:20:48', ''),
(73, 13, '1677288748-1.png,1677288748-2.png', 'Kue Putri Salju', 40000, 'kue ultah', 300, 'salju', '5===40000,7===65000,10===75000', 5, 0, 0, '', '2023-02-25 02:32:27', ''),
(74, 13, '1677288845-1.png,1677288845-2.png', 'Kue Thumbprint', 40000, 'kue lebaran', 300, 'thumbprint', '5===40000,7===70000,10===80000', 5, 0, 0, '', '2023-02-25 02:34:05', ''),
(75, 13, '1677288981-1.png,1677288981-2.png', 'Kue Skippy', 40000, 'Kue Skippy', 500, 'Skippy', '5===40000,7===75000,10===85000', 5, 0, 0, '', '2023-02-25 02:36:20', ''),
(76, 13, '1677289038-1.png,1677289038-2.png', 'Kue Nastar', 40000, 'Kue Nastar', 500, 'Nastar', '5===40000,7===75000,10===85000', 5, 0, 0, '', '2023-02-25 02:37:18', ''),
(77, 4, '1677289473-1.png,1677289473-2.png,1677289473-3.png,1677289473-4.png,1677289473-5.png', 'Kue Bento', 50000, 'Cheesecake d10\r\nLapisan tengah creamy (coklat/tiramusu/green tea/strawberry/blueberry)\r\nBox Eco Friendly terbuat dari sugarcane bagasse\r\npaperbag\r\nsendok garpu kayu\r\npisau kayu\r\nlilin 1 ps (random)\r\ndiskusi desain and warna\r\npemesanan h-1\r\n', 200, 'Coklat,Tiramusu,Greentea,Strawberry,Bluberry', '10===50000', 5, 0, 0, '', '2023-02-25 02:44:32', ''),
(78, 4, '1677289576-1.png,1677289576-2.png,1677289576-3.png,1677289576-4.png,1677289576-5.png', 'Kue Bento Request Desain', 50000, 'Cheesecake d10\r\nLapisan tengah creamy (coklat/tiramusu/green tea/strawberry/blueberry)\r\nBox Eco Friendly terbuat dari sugarcane bagasse\r\npaperbag\r\nsendok garpu kayu\r\npisau kayu\r\nlilin 1 ps (random)\r\ndiskusi desain and warna\r\npemesanan h-1\r\n', 300, 'Coklat,Tiramisu,Green Tea,Strawberry,Blueberry', '10===50000', 5, 0, 0, '', '2023-02-25 02:46:15', ''),
(79, 4, '1677289676-1.png,1677289676-2.png,1677289676-3.png,1677289676-4.png,1677289676-5.png', 'Bento Cake', 50000, 'Cheesecake d10\r\nLapisan tengah creamy (coklat/tiramusu/green tea/strawberry/blueberry)\r\nBox Eco Friendly terbuat dari sugarcane bagasse\r\npaperbag\r\nsendok garpu kayu\r\npisau kayu\r\nlilin 1 ps (random)\r\ndiskusi desain and warna\r\npemesanan h-1\r\n', 300, 'Tiramisu,Coklat,Green Tea,Strawberry,Blueberry', '10===50000', 5, 0, 0, '', '2023-02-25 02:47:56', ''),
(81, 4, '1677289901-1.png,1677289901-2.png,1677289901-3.png,1677289901-4.png,1677289901-5.png', 'Kue Bento Desain ', 50000, 'Cheesecake d10\r\nLapisan tengah creamy (coklat/tiramusu/green tea/strawberry/blueberry)\r\nBox Eco Friendly terbuat dari sugarcane bagasse\r\npaperbag\r\nsendok garpu kayu\r\npisau kayu\r\nlilin 1 ps (random)\r\ndiskusi desain and warna\r\npemesanan h-1\r\n', 300, 'Tiramisu,Coklat,Strawbeery,Blueberry,Greentea', '10===50000', 5, 0, 0, '', '2023-02-25 02:51:41', ''),
(82, 4, '1677290061-1.png,1677290061-2.png,1677290061-3.png,1677290253-4.png,1677290061-5.png', 'Kue Bento', 50000, 'Cheesecake d10\r\nLapisan tengah creamy (coklat/tiramusu/green tea/strawberry/blueberry)\r\nBox Eco Friendly terbuat dari sugarcane bagasse\r\npaperbag\r\nsendok garpu kayu\r\npisau kayu\r\nlilin 1 ps (random)\r\ndiskusi desain and warna\r\npemesanan h-1\r\n', 300, 'Coklat,Tiramisu,Strawberry,Blueberry,Greentea', '10===50000', 5, 0, 0, '', '2023-02-25 02:54:21', ''),
(83, 4, '1677290199-1.png,1677290199-2.png,1677290145-3.png,1677290145-4.png,1677290145-5.png', 'Kue Bento', 50000, 'Cheesecake d10\r\nLapisan tengah creamy (coklat/tiramusu/green tea/strawberry/blueberry)\r\nBox Eco Friendly terbuat dari sugarcane bagasse\r\npaperbag\r\nsendok garpu kayu\r\npisau kayu\r\nlilin 1 ps (random)\r\ndiskusi desain and warna\r\npemesanan h-1\r\n', 300, 'Coklat,Tiramisu,Greentea,Strawberry,Blueberry', '10===50000', 5, 0, 0, '', '2023-02-25 02:55:45', ''),
(84, 4, '1677290362-1.png,1677290362-2.png,1677290421-3.png,1677290362-4.png,1677290362-5.png', 'Kue Bento', 50000, 'Cheesecake d10\r\nLapisan tengah creamy (coklat/tiramusu/green tea/strawberry/blueberry)\r\nBox Eco Friendly terbuat dari sugarcane bagasse\r\npaperbag\r\nsendok garpu kayu\r\npisau kayu\r\nlilin 1 ps (random)\r\ndiskusi desain and warna\r\npemesanan h-1\r\n', 300, 'coklat,tiramisu,strawberry,blueberry,greentea', '10===50000', 5, 0, 0, '', '2023-02-25 02:59:22', '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `idinvoice` int(11) NOT NULL,
  `id_iklan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `warna_i` text NOT NULL,
  `ukuran_i` text NOT NULL,
  `harga_i` int(11) NOT NULL,
  `diskon_i` int(11) NOT NULL,
  `kurir` varchar(10) NOT NULL,
  `id_kurir` int(11) NOT NULL,
  `layanan_kurir` text NOT NULL,
  `etd` text NOT NULL,
  `harga_ongkir` int(11) NOT NULL,
  `resi` text NOT NULL,
  `provinsi` text NOT NULL,
  `kota` text NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `waktu` varchar(200) NOT NULL,
  `tipe_progress` varchar(50) NOT NULL,
  `transaction` text NOT NULL,
  `type` text NOT NULL,
  `order_id` text NOT NULL,
  `fraud` text NOT NULL,
  `bank_manual` text NOT NULL,
  `bukti_transfer` text NOT NULL,
  `waktu_transaksi` text NOT NULL,
  `waktu_dikirim` text NOT NULL,
  `waktu_selesai` text NOT NULL,
  `waktu_dibatalkan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`idinvoice`, `id_iklan`, `id_user`, `jumlah`, `warna_i`, `ukuran_i`, `harga_i`, `diskon_i`, `kurir`, `id_kurir`, `layanan_kurir`, `etd`, `harga_ongkir`, `resi`, `provinsi`, `kota`, `alamat_lengkap`, `waktu`, `tipe_progress`, `transaction`, `type`, `order_id`, `fraud`, `bank_manual`, `bukti_transfer`, `waktu_transaksi`, `waktu_dikirim`, `waktu_selesai`, `waktu_dibatalkan`) VALUES
(25, 82, 20, 1, 'Coklat', '10', 50000, 0, 'jne', 0, 'OKE', '4-5', 54000, '', '21,Nanggroe Aceh Darussalam (NAD)', '2,Aceh Barat Daya', '2', '2023-06-10 19:57:02', 'Dikemas', '', '', '', '', 'BNI', '-', '2023-06-10 19:57:16', '', '', ''),
(26, 72, 20, 1, 'kastengels', '5', 40000, 0, 'jne', 0, 'OKE', '4-5', 54000, '', '21,Nanggroe Aceh Darussalam (NAD)', '2,Aceh Barat Daya', '2', '2023-06-10 19:57:42', 'Dikemas', '', '', '', '', 'BNI', '26-bukti-transfer.png', '2023-06-10 19:57:56', '', '', ''),
(27, 71, 20, 1, 'sagu keju', '5', 40000, 0, 'jne', 0, 'OKE', '4-5', 54000, 'Ambil Kerumah', '21,Nanggroe Aceh Darussalam (NAD)', '2,Aceh Barat Daya', '2', '2023-06-10 20:01:29', 'Selesai', '', '', '', '', 'BNI', '-', '2023-06-10 20:14:28', '2023-06-10 20:16:10', '2023-06-10 20:16:24', ''),
(28, 83, 20, 1, 'Coklat', '10', 50000, 0, 'jne', 0, 'OKE', '4-5', 54000, '', '21,Nanggroe Aceh Darussalam (NAD)', '2,Aceh Barat Daya', '2', '2023-06-11 09:11:22', 'Belum Bayar', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `icon`) VALUES
(1, 'Birthday Cake', '35067b32696a7cb8effc3d0acd01a823.png'),
(2, 'Dessert Box', '5c6415e0faf399ad98b5320200f272d5.png'),
(3, 'Cheesecake', 'bc1a809403dd9dc1d92db941969e092a.png'),
(4, 'Bento Cake', '5eb08b956ca979e965f806accefea502.png'),
(12, 'Hampers', '41e63a894f670b30894b11a1b266651b.png'),
(13, 'Eid Cake', 'a398e931e01034dc9e951c171ec3b1bc.png');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `id_iklan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `harga_k` int(15) NOT NULL,
  `diskon_k` int(11) NOT NULL,
  `warna_k` text NOT NULL,
  `ukuran_k` text NOT NULL,
  `waktu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id`, `id_iklan`, `id_user`, `jumlah`, `harga_k`, `diskon_k`, `warna_k`, `ukuran_k`, `waktu`) VALUES
(174, 83, 14, 1, 50000, 0, 'Coklat', '10', '2023-03-01 09:48:53'),
(176, 84, 20, 1, 50000, 0, 'coklat', '10', '2023-06-12 17:49:25');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi_user`
--

CREATE TABLE `lokasi_user` (
  `idlokasi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `provinsi` text NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `kota` text NOT NULL,
  `id_kota` int(11) NOT NULL,
  `kecamatan` text NOT NULL,
  `kelurahan` text NOT NULL,
  `alamat_lengkap` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lokasi_user`
--

INSERT INTO `lokasi_user` (`idlokasi`, `id_user`, `provinsi`, `id_provinsi`, `kota`, `id_kota`, `kecamatan`, `kelurahan`, `alamat_lengkap`) VALUES
(10, 14, 'Sumatera Selatan', 33, 'Palembang', 327, '', '', 'Plaju'),
(11, 19, 'Sumatera Selatan', 33, 'Palembang', 327, '', '', 'opi'),
(12, 20, 'Nanggroe Aceh Darussalam (NAD)', 21, 'Aceh Barat Daya', 2, '', '', '2');

-- --------------------------------------------------------

--
-- Table structure for table `nomor_rekening`
--

CREATE TABLE `nomor_rekening` (
  `idnorek` int(11) NOT NULL,
  `nama_bank` text NOT NULL,
  `norek` text NOT NULL,
  `an` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nomor_rekening`
--

INSERT INTO `nomor_rekening` (`idnorek`, `nama_bank`, `norek`, `an`) VALUES
(1, 'BNI', '123456789', 'OmamaCake'),
(2, 'BRI', '1876889286539', '');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id_notif` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `nama_notif` text NOT NULL,
  `deskripsi_notif` text NOT NULL,
  `waktu_notif` text NOT NULL,
  `status_notif` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id_notif`, `id_user`, `id_invoice`, `nama_notif`, `deskripsi_notif`, `waktu_notif`, `status_notif`) VALUES
(1, 19, 4, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-03 03:14:29', 'Read'),
(2, 19, 4, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-03 03:14:29', 'Read'),
(3, 19, 4, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-03 03:18:32', 'Read'),
(4, 19, 4, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-03 03:18:55', 'Read'),
(5, 19, 5, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-03 03:25:29', 'Read'),
(6, 19, 5, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-03 03:25:29', 'Read'),
(7, 19, 5, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-03 03:29:02', 'Read'),
(8, 19, 7, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-10 02:13:21', 'Read'),
(9, 19, 7, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-10 02:13:21', 'Read'),
(10, 19, 7, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-10 02:15:23', 'Read'),
(11, 19, 8, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-10 11:25:04', ''),
(12, 19, 8, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-10 11:25:04', ''),
(13, 19, 8, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-10 11:25:34', ''),
(14, 19, 8, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-10 11:25:56', ''),
(15, 19, 9, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-10 11:30:02', ''),
(16, 19, 9, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-10 11:30:02', ''),
(17, 19, 9, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-10 11:30:12', ''),
(18, 19, 9, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-10 11:30:55', ''),
(19, 19, 10, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-10 11:32:09', ''),
(20, 19, 10, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-10 11:32:09', ''),
(21, 19, 10, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-10 11:32:24', ''),
(22, 20, 11, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-10 17:27:16', 'Read'),
(23, 20, 11, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-10 17:27:16', 'Read'),
(24, 20, 11, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-10 17:53:01', 'Read'),
(25, 20, 12, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-10 17:56:06', 'Read'),
(26, 20, 12, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-10 17:56:06', 'Read'),
(27, 20, 13, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-10 18:04:25', 'Read'),
(28, 20, 13, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-10 18:04:25', 'Read'),
(29, 20, 11, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-10 18:06:18', 'Read'),
(30, 20, 13, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-10 18:10:42', 'Read'),
(31, 20, 16, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-10 19:20:26', 'Read'),
(32, 20, 16, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-10 19:20:26', 'Read'),
(33, 0, 0, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-10 19:41:47', ''),
(34, 20, 27, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-06-10 20:16:10', 'Read'),
(35, 20, 27, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2023-06-10 20:16:24', 'Read'),
(36, 20, 26, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2023-06-11 09:11:12', ''),
(37, 20, 26, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2023-06-11 09:11:12', '');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaranlabarugi`
--

CREATE TABLE `pengeluaranlabarugi` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `pengeluaran` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengeluaranlabarugi`
--

INSERT INTO `pengeluaranlabarugi` (`id`, `nama_barang`, `pengeluaran`) VALUES
(1, 'GAS', 10000000),
(2, 'Sagu', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `idrating` int(11) NOT NULL,
  `id_invoice_rat` int(11) NOT NULL,
  `star_rat` int(1) NOT NULL,
  `deskripsi_rat` text NOT NULL,
  `waktu_rat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`idrating`, `id_invoice_rat`, `star_rat`, `deskripsi_rat`, `waktu_rat`) VALUES
(1, 4, 5, 'hi', '');

-- --------------------------------------------------------

--
-- Table structure for table `setting_apikey`
--

CREATE TABLE `setting_apikey` (
  `id_apikey` int(11) NOT NULL,
  `google_client_id` text NOT NULL,
  `google_client_secret` text NOT NULL,
  `midtrans_client_key` text NOT NULL,
  `midtrans_server_key` text NOT NULL,
  `rajaongkir_key` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_apikey`
--

INSERT INTO `setting_apikey` (`id_apikey`, `google_client_id`, `google_client_secret`, `midtrans_client_key`, `midtrans_server_key`, `rajaongkir_key`) VALUES
(1, '667755539556-t91a5rigvs8sjn8ov5ob449uofahvjdf.apps.googleusercontent.com', 'egHGBI5BcztK-VbZNeCEHHTW', 'SB-Mid-client-rwRR5kz4E-kNnJs2', 'SB-Mid-server-iU7JbDaoVDjBJu4N-LLH0xW8', 'b5aefc5304eb31cdabbb42a12341469c');

-- --------------------------------------------------------

--
-- Table structure for table `setting_email`
--

CREATE TABLE `setting_email` (
  `id` int(11) NOT NULL,
  `email_notif` text NOT NULL,
  `host_smtp` varchar(100) NOT NULL,
  `port_smtp` int(11) NOT NULL,
  `username_smtp` varchar(100) NOT NULL,
  `password_smtp` varchar(100) NOT NULL,
  `setfrom_smtp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_email`
--

INSERT INTO `setting_email` (`id`, `email_notif`, `host_smtp`, `port_smtp`, `username_smtp`, `password_smtp`, `setfrom_smtp`) VALUES
(1, 'support@401xd.com', 'mail.401xd.com', 465, 'support@401xd.com', 'PASSWORD EMAIL ANDA', 'Omama Cake');

-- --------------------------------------------------------

--
-- Table structure for table `setting_footer`
--

CREATE TABLE `setting_footer` (
  `id_fo` int(11) NOT NULL,
  `name_social` text NOT NULL,
  `icon_social` text NOT NULL,
  `link_social` text NOT NULL,
  `status_social` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_footer`
--

INSERT INTO `setting_footer` (`id_fo`, `name_social`, `icon_social`, `link_social`, `status_social`) VALUES
(2, 'Instagram', '<i class=\"ri-instagram-fill\"></i>', 'https://instagram.com/omamacake', '');

-- --------------------------------------------------------

--
-- Table structure for table `setting_header`
--

CREATE TABLE `setting_header` (
  `id_hs` int(11) NOT NULL,
  `logo` text NOT NULL,
  `title_name` text NOT NULL,
  `placeholder_search` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_header`
--

INSERT INTO `setting_header` (`id_hs`, `logo`, `title_name`, `placeholder_search`) VALUES
(1, 'logo.png', 'OmamaCake', 'Pencarian..');

-- --------------------------------------------------------

--
-- Table structure for table `setting_lokasi`
--

CREATE TABLE `setting_lokasi` (
  `id` int(11) NOT NULL,
  `provinsi` text NOT NULL,
  `kota` text NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `kota_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_lokasi`
--

INSERT INTO `setting_lokasi` (`id`, `provinsi`, `kota`, `provinsi_id`, `kota_id`) VALUES
(1, 'Sumatera Selatan', 'Palembang', 33, 327);

-- --------------------------------------------------------

--
-- Table structure for table `setting_pembayaran`
--

CREATE TABLE `setting_pembayaran` (
  `id` int(11) NOT NULL,
  `tipe` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_pembayaran`
--

INSERT INTO `setting_pembayaran` (`id`, `tipe`, `status`) VALUES
(1, 'Midtrans', ''),
(2, 'Manual', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_promo`
--
ALTER TABLE `banner_promo`
  ADD PRIMARY KEY (`idbanner`);

--
-- Indexes for table `flashsale`
--
ALTER TABLE `flashsale`
  ADD PRIMARY KEY (`id_fs`);

--
-- Indexes for table `iklan`
--
ALTER TABLE `iklan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`idinvoice`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi_user`
--
ALTER TABLE `lokasi_user`
  ADD PRIMARY KEY (`idlokasi`);

--
-- Indexes for table `nomor_rekening`
--
ALTER TABLE `nomor_rekening`
  ADD PRIMARY KEY (`idnorek`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id_notif`);

--
-- Indexes for table `pengeluaranlabarugi`
--
ALTER TABLE `pengeluaranlabarugi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`idrating`);

--
-- Indexes for table `setting_apikey`
--
ALTER TABLE `setting_apikey`
  ADD PRIMARY KEY (`id_apikey`);

--
-- Indexes for table `setting_email`
--
ALTER TABLE `setting_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_footer`
--
ALTER TABLE `setting_footer`
  ADD PRIMARY KEY (`id_fo`);

--
-- Indexes for table `setting_header`
--
ALTER TABLE `setting_header`
  ADD PRIMARY KEY (`id_hs`);

--
-- Indexes for table `setting_lokasi`
--
ALTER TABLE `setting_lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_pembayaran`
--
ALTER TABLE `setting_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `banner_promo`
--
ALTER TABLE `banner_promo`
  MODIFY `idbanner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `flashsale`
--
ALTER TABLE `flashsale`
  MODIFY `id_fs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iklan`
--
ALTER TABLE `iklan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `idinvoice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `lokasi_user`
--
ALTER TABLE `lokasi_user`
  MODIFY `idlokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nomor_rekening`
--
ALTER TABLE `nomor_rekening`
  MODIFY `idnorek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id_notif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `pengeluaranlabarugi`
--
ALTER TABLE `pengeluaranlabarugi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `idrating` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_apikey`
--
ALTER TABLE `setting_apikey`
  MODIFY `id_apikey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_email`
--
ALTER TABLE `setting_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_footer`
--
ALTER TABLE `setting_footer`
  MODIFY `id_fo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `setting_header`
--
ALTER TABLE `setting_header`
  MODIFY `id_hs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_lokasi`
--
ALTER TABLE `setting_lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_pembayaran`
--
ALTER TABLE `setting_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
