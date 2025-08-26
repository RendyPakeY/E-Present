-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql300.infinityfree.com
-- Generation Time: Aug 26, 2025 at 04:41 AM
-- Server version: 11.4.7-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_39592817_e_present`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen`
--

CREATE TABLE `absen` (
  `id_absen` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(10) NOT NULL,
  `fingerprint` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `absen`
--

INSERT INTO `absen` (`id_absen`, `nama`, `tanggal`, `keterangan`, `fingerprint`) VALUES
(9, 'Syakyra Fitriani S', '2025-07-30', 'Hadir', '04754e055876e56d89b8656e07335982'),
(10, 'Rafi Rizkiana Rabbani', '2025-07-30', 'Hadir', '1bb2a7bce9da95ecb02180746a354d78'),
(11, 'Lutfi Hakim Fadilah', '2025-07-30', 'Hadir', '5cd72a23bf71b79dd02f35d3f82fa7d5'),
(12, 'Raisya Quinnara Dzarifa', '2025-07-30', 'Hadir', ''),
(13, 'Arif Andika Prasetya', '2025-07-30', 'Hadir', 'eceffc43cc24fe967f9ea987af7d13fb'),
(14, 'Alief Azmi Athori', '2025-07-30', 'Hadir', 'e4a2234421593ba946ebc202f9c23bda'),
(15, 'Muhammad Jahfal Nur Azis', '2025-07-30', 'Hadir', '008f002e6f7a12c3ccb262387fb5a6d3'),
(16, 'Muhammad Faishal Nurrahman', '2025-07-30', 'Hadir', '35ad4a25cef863d43d3e9793bc0e7f34'),
(17, 'Raka Ananda Putra', '2025-07-30', 'Hadir', '1742b2832ee7ff4fb1ef028ad9abb9a3'),
(18, 'Muhammad Liga Alta Vistandy', '2025-07-30', 'Hadir', 'dcbfd784e44d3f46b7d4ccd0b8f9f32e'),
(19, 'Reno Zulviansyah', '2025-07-30', 'Hadir', '91c31caec749950584acc423c315b5dd'),
(20, 'Krisna Purnama Herdiana Putra', '2025-07-30', 'Hadir', 'e393eaee90e4b589619f33830e092a7c'),
(21, 'Ezzar Kholiq Andika', '2025-07-30', 'Hadir', 'cda1d6e515954a9818cb0e2ccf36d57d'),
(22, 'Yuqi Shauma Yusuf', '2025-07-30', 'Hadir', '9a6f10e30cd990faef66c4c302c7b04d'),
(23, 'Muhammad Razan Taufiqi Rahman', '2025-07-30', 'Hadir', '36c028323fa4874176f72c6dd9f951a9'),
(24, 'Rehan Nazril Abdillah', '2025-07-30', 'Hadir', 'abbb42c98010fa9c46c514a2bd254ddc'),
(25, 'Mochamad Habli Arrizki', '2025-07-30', 'Hadir', '7d5be44268d4bf92813f7231683a437e'),
(26, 'Ali Zaenal Abidin Ar Rizqi', '2025-07-30', 'Hadir', 'b924462c6843827968da66a154704674'),
(27, 'Darren Dylan Escada Aqdam', '2025-07-30', 'Hadir', 'b1204ff2fc566cf76602c34ebdc28112'),
(28, 'Muhammad Fadhil Alhafizh', '2025-07-30', 'hadir', 'ADMIN ACCESS HERE'),
(30, 'Rendy Khaerul Rizal', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(31, 'Daffa Fibril Dwi Putra', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(32, 'Dirga Ardi Yana', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(33, 'Yuqi Shauma Yusuf', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(34, 'Rafi Rizkiana Rabbani', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(35, 'Ali Zaenal Abidin Ar Rizqi', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(36, 'Muhammad Jahfal Nur Azis', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(37, 'Muhammad Faishal Nurrahman', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(38, 'Muhammad Hafidz Amarsyakh Al S', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(39, 'Raka Ananda Putra', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(40, 'Lutfi Hakim Fadilah', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(41, 'Muhammad Liga Alta Vistandy', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(42, 'Mochamad Habli Arrizki', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(43, 'Reno Zulviansyah', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(44, 'Abdud Dhohir Hakim', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(45, 'Ezzar Kholiq Andika', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(46, 'Muhammad Fadhil Alhafizh', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(47, 'Darren Dylan Escada Aqdam', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(48, 'Alief Azmi Athori', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(49, 'Syakyra Fitriani S', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(50, 'Dirga Ardi Yana', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(51, 'Moch Danri Permadi', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(52, 'Daffa Fibril Dwi Putra', '2025-07-30', 'hadir', 'ADMIN ACCESS HERE'),
(53, 'Rendy Khaerul Rizal', '2025-07-30', 'hadir', 'ADMIN ACCESS HERE'),
(54, 'Ananda Putri', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(55, 'Moch Danri Permadi', '2025-08-06', 'hadir', 'ADMIN ACCESS HERE'),
(56, 'Ezzar Kholiq Andika', '2025-08-06', 'Hadir', '35c9a07224c2e3ab12652dbba785c7bc'),
(57, 'Lutfi Hakim Fadilah', '2025-08-06', 'Hadir', ''),
(58, 'Muhammad Hafidz Amarsyakh Al S', '2025-08-06', 'Hadir', '68bce3d398752f181d4cbe524b5ac446'),
(59, 'Muhammad Fadhil Alhafizh', '2025-08-06', 'Hadir', '8640136dd11ea9b84c3403100a4810d6'),
(60, 'Rafi Rizkiana Rabbani', '2025-08-06', 'Hadir', '102b880e17ada04e213f78b5d956975b'),
(61, 'M Aditya Ramdany', '2025-08-06', 'Hadir', '0c475c6dbfa6d8417f7d84eb71442d52'),
(62, 'Muhammad Faishal Nurrahman', '2025-08-06', 'Hadir', '35ad4a25cef863d43d3e9793bc0e7f34'),
(63, 'Raka Ananda Putra', '2025-08-06', 'hadir', 'ADMIN ACCESS HERE'),
(64, 'Muhammad Jahfal Nur Azis', '2025-08-06', 'Hadir', '008f002e6f7a12c3ccb262387fb5a6d3'),
(65, 'Muhammad Razan Taufiqi Rahman', '2025-08-06', 'Hadir', '36c028323fa4874176f72c6dd9f951a9'),
(66, 'Riani Rahayu', '2025-08-06', 'Hadir', 'e1bb6b9eebd6112f73c86430feaf5079'),
(67, 'Alief Azmi Athori', '2025-08-06', 'Hadir', 'e4a2234421593ba946ebc202f9c23bda'),
(68, 'Ali Zaenal Abidin Ar Rizqi', '2025-08-06', 'Hadir', 'b924462c6843827968da66a154704674'),
(69, 'Yuqi Shauma Yusuf', '2025-08-06', 'Hadir', '9a6f10e30cd990faef66c4c302c7b04d'),
(70, 'Ayu Nurfallah', '2025-08-06', 'Hadir', 'b1204ff2fc566cf76602c34ebdc28112'),
(71, 'Raffi Febrian', '2025-08-06', 'Hadir', 'bac579e40a2bbd07053fe8a8254fd848'),
(72, 'Rehan Nazril Abdillah', '2025-08-06', 'Hadir', 'abbb42c98010fa9c46c514a2bd254ddc'),
(74, 'Wicaksono Matthew Alzafan', '2025-08-06', 'Hadir', '0f7bcf1b77ccae4b93add64cc86a0b62'),
(75, 'Ranti Mardianti', '2025-08-06', 'hadir', 'ADMIN ACCESS HERE'),
(76, 'Satria Mahardika Palupi', '2025-08-06', 'hadir', 'ADMIN ACCESS HERE'),
(77, 'Daffa Fibril Dwi Putra', '2025-08-06', 'hadir', 'ADMIN ACCESS HERE'),
(78, 'Rendy Khaerul Rizal', '2025-08-06', 'hadir', 'ADMIN ACCESS HERE'),
(79, 'Raka Firdaus', '2025-08-06', 'hadir', 'ADMIN ACCESS HERE'),
(80, 'Darren Dylan Escada Aqdam', '2025-08-06', 'hadir', 'ADMIN ACCESS HERE'),
(81, 'Arif Andika Prasetya', '2025-08-06', 'hadir', 'ADMIN ACCESS HERE'),
(82, 'Raisya Quinnara Dzarifa', '2025-08-06', 'hadir', 'ADMIN ACCESS HERE'),
(83, 'Raisya Quinnara Dzarifa', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(84, 'Syakyra Fitriani', '2025-08-06', 'hadir', 'ADMIN ACCESS HERE'),
(85, 'Syakyra Fitriani', '2025-07-30', 'hadir', 'ADMIN ACCESS HERE'),
(86, 'Muhammad Hafidz Amarsyakh Al S', '2025-08-06', 'hadir', 'ADMIN ACCESS HERE'),
(87, 'Nabil Alhabsyi', '2025-08-08', 'Hadir', 'd4d765a1c9d10ff59b967dfa79ffd104'),
(88, 'Arif Andika Prasetya', '2025-07-23', 'hadir', 'ADMIN ACCESS HERE'),
(89, 'Muhammad Faishal Nurrahman', '2025-08-13', 'Hadir', '1e0e05728c1a9878a8eb50142d6e5cd6'),
(90, 'Wicaksono Matthew Alzafan', '2025-08-13', 'Hadir', 'b2a12ea7eec389965fd9a6a00d54cf8b'),
(91, 'Ezzar Kholiq Andika', '2025-08-13', 'Hadir', '1ab6144f7b9e73ef3d9d4028b530c7f6'),
(92, 'Alief Azmi Athori', '2025-08-13', 'Hadir', '41f410ec9b7ebf4efc8bb2a3c807c289'),
(93, 'Raka Firdaus', '2025-08-13', 'Hadir', '5d26f8408e4df7d31ac7e1f86f0cec88'),
(94, 'Muhammad Hafidz Amarsyakh Al S', '2025-08-13', 'Hadir', '68bce3d398752f181d4cbe524b5ac446'),
(95, 'Muhammad Razan Taufiqi Rahman', '2025-08-13', 'Hadir', '36c028323fa4874176f72c6dd9f951a9'),
(96, 'Lutfi Hakim Fadilah', '2025-08-13', 'Hadir', '601deb1298e78085ca686749fa6e8309'),
(97, 'Darren Dylan Escada Aqdam', '2025-08-13', 'Hadir', 'b1204ff2fc566cf76602c34ebdc28112'),
(98, 'Dirga Ardi Yana', '2025-08-13', 'Hadir', '4cba7d29d96e198acc498dc5e33fb2dc'),
(99, 'Muhammad Liga Alta Vistandy', '2025-08-13', 'Hadir', 'dcbfd784e44d3f46b7d4ccd0b8f9f32e'),
(100, 'Reno Zulviansyah', '2025-08-13', 'Hadir', '91c31caec749950584acc423c315b5dd'),
(101, 'Krisna Purnama Herdiana Putra', '2025-08-13', 'Hadir', '5ddab019024fbe7a5f12237e0945e6dd'),
(102, 'Muhammad Fadhil Alhafizh', '2025-08-13', 'Hadir', '8640136dd11ea9b84c3403100a4810d6'),
(103, 'Muhammad Jahfal Nur Azis', '2025-08-13', 'Hadir', '008f002e6f7a12c3ccb262387fb5a6d3'),
(104, 'Arif Andika Prasetya', '2025-08-13', 'Hadir', 'eceffc43cc24fe967f9ea987af7d13fb'),
(105, 'Rifqi Imanulkhoir', '2025-08-13', 'Hadir', '8226e77aef71bcc79cc91ee948466b5e'),
(106, 'Yuqi Shauma Yusuf', '2025-08-13', 'Hadir', '9a6f10e30cd990faef66c4c302c7b04d'),
(107, 'Muhammad Razan Taufiqi Rahman', '2025-08-20', 'Hadir', '36c028323fa4874176f72c6dd9f951a9'),
(108, 'Muhammad Jahfal Nur Azis', '2025-08-20', 'Hadir', 'cf5885c11b5ad8ae79669951817eafdc'),
(109, 'Reno Zulviansyah', '2025-08-20', 'Hadir', '63742544ea15165d012346db66b74ae4'),
(110, 'Ezzar Kholiq Andika', '2025-08-20', 'Hadir', '8580b5b86f12d864a757cdc3ea7c24e7'),
(111, 'Lutfi Hakim Fadilah', '2025-08-20', 'Hadir', '601deb1298e78085ca686749fa6e8309'),
(112, 'Raisya Quinnara Dzarifa', '2025-08-20', 'Hadir', 'fd8c97c5f9cdad8967735b4be9368c24'),
(113, 'Ali Zaenal Abidin Ar Rizqi', '2025-08-20', 'Hadir', 'fb10c4e9c597ba9ae1c1a2f61e0c0b47'),
(114, 'Syakyra Fitriani', '2025-08-20', 'Hadir', 'e6bd7d0832310b061211a0e625e07044'),
(115, 'Wicaksono Matthew Alzafan', '2025-08-20', 'Hadir', 'b2a12ea7eec389965fd9a6a00d54cf8b'),
(116, 'Darren Dylan Escada Aqdam', '2025-08-20', 'Hadir', '0581c2c77b522e02c21cbb52a4f0c926'),
(117, 'Mochamad Habli Arrizki', '2025-08-20', 'Hadir', '7d5be44268d4bf92813f7231683a437e'),
(118, 'Raka Firdaus', '2025-08-20', 'Hadir', '5d26f8408e4df7d31ac7e1f86f0cec88'),
(119, 'Krisna Purnama Herdiana Putra', '2025-08-20', 'Hadir', '5ddab019024fbe7a5f12237e0945e6dd'),
(120, 'Rifqi Imanulkhoir', '2025-08-20', 'Hadir', '25eebb7d266799bb5c4a37a8c236eb21'),
(121, 'Raka Ananda Putra', '2025-08-20', 'Hadir', 'df8d02dd6464549874396c11955be1ec'),
(122, 'Muhammad Faishal Nurrahman', '2025-08-20', 'Hadir', '1e0e05728c1a9878a8eb50142d6e5cd6'),
(123, 'Muhammad Liga Alta Vistandy', '2025-08-20', 'Hadir', 'dcbfd784e44d3f46b7d4ccd0b8f9f32e'),
(124, 'Arif Andika Prasetya', '2025-08-20', 'hadir', 'ADMIN ACCESS HERE'),
(125, 'Emir Syauqi Ansyah', '2025-08-20', 'Hadir', '5bdf3a9322acec7600afe3906128fcf1'),
(126, 'Alief Azmi Athori', '2025-08-20', 'Hadir', '41f410ec9b7ebf4efc8bb2a3c807c289'),
(127, 'Abdud Dhohir Hakim', '2025-08-20', 'Hadir', '7449876357c26523fe4607b9d8b65046'),
(128, 'Ranti Mardianti', '2025-08-20', 'hadir', 'ADMIN ACCESS HERE'),
(129, 'Emir Syauqi Ansyah', '2025-08-20', 'Hadir', '8e084aa60be20e40ba6b115f655cfbb6'),
(130, 'Daffa Fibril Dwi Putra', '2025-08-20', 'hadir', 'ADMIN ACCESS HERE'),
(131, 'Rendy Khaerul Rizal', '2025-08-20', 'hadir', 'ADMIN ACCESS HERE');

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id_akun`, `username`, `password`) VALUES
(1, 'MysterZentoX', '12345316876546543124321'),
(2, 'DaffaXML', 'Fritzz009900');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `kelas`) VALUES
(1, 'Rendy Khaerul Rizal', 'XII TAV 2'),
(2, 'Raka Ananda Putra', 'XI TITL 2'),
(3, 'Yuqi Shauma Yusuf', 'X TJKT 2'),
(4, 'Raisya Quinnara Dzarifa', 'X TELK 3'),
(5, 'Krisna Purnama Herdiana Putra', 'X TELK 4'),
(6, 'Alief Azmi Athori', 'X TELK 1'),
(7, 'Lutfi Hakim Fadilah', 'XI TAV 3'),
(8, 'Darren Dylan Escada Aqdam', 'X TELK 4'),
(9, 'Muhammad Liga Alta Vistandy', 'XI TAV 1'),
(10, 'Rafi Rizkiana Rabbani', 'X DKV 2'),
(11, 'Daffa Fibril Dwi Putra', 'XII TOI 2'),
(12, 'Ezzar Kholiq Andika', 'X TELK 4'),
(13, 'Syakyra Fitriani', 'X TELK 2'),
(14, 'Muhammad Razan Taufiqi Rahman', 'X TELK 4'),
(15, 'Ali Zaenal Abidin Ar Rizqi', 'X TELK 4'),
(16, 'Muhammad Faishal Nurrahman', 'XI TAV 3'),
(17, 'Rehan Nazril Abdillah', 'XI TOI 3'),
(18, 'Muhammad Hafidz Amarsyakh Al Saladin', 'XI TAV 3'),
(19, 'Reno Zulviansyah', 'XI TAV 1'),
(20, 'Arif Andika Prasetya', 'X TELK 5'),
(21, 'Riani Rahayu', 'XI TAV 1'),
(22, 'Muhammad Jahfal Nur Azis', 'XI TAV 3'),
(23, 'Dirga Ardi Yana', 'XI TAV 1'),
(24, 'Mochamad Habli Arrizki', 'XI TAV 1'),
(25, 'Abdud Dhohir Hakim', 'XI TAV 1'),
(26, 'Muhammad Fadhil Alhafizh', 'XI TAV 1'),
(27, 'Adli Murfid', 'XI TAV 1'),
(28, 'Muhamad Dalwy Fikrulloh', 'X TELK 4'),
(29, 'Arkan Qaddafi Hauda', 'X TELK 6'),
(30, 'Irawan Anugrah', 'XII TAV 2'),
(31, 'M Aditya Ramdany', 'XII TAV 2'),
(32, 'Nabil Alhabsyi', 'XII TAV 2'),
(33, 'Raffi Febrian', 'XII TAV 2'),
(34, 'Rendi Renandya Ramadhan', 'XII TAV 2'),
(35, 'Ayu Nurfallah', 'XII TAV 2'),
(36, 'Dianita Azzahra', 'XII TAV 2'),
(37, 'Moch Danri Permadi', 'XII TAV 2'),
(38, 'Yulianti', 'XII TAV 2'),
(39, 'Royhan Rizky Purnama', 'XII TAV 1'),
(40, 'Rafan Fauzil Rahman', 'XII TAV 1'),
(41, 'Tami Sri Sapitri', 'XII TAV 1'),
(42, 'Diah Siti Hodijah', 'XII TAV 1'),
(43, 'Keisya Aidhiya Fakera Dewi', 'XII TAV 1'),
(44, 'Raisya Amalia Ramadhani', 'XII TAV 1'),
(45, 'Saabil Az Zaidan', 'XII TAV 1'),
(46, 'Albian Luthfikry Safa\'at', 'XII TKJ 1'),
(48, 'Ananda Putri S', 'X TELK 3'),
(49, 'Wicaksono Matthew Alzafan', 'X TELK 2'),
(50, 'Ranti Mardianti', 'X TELK 2'),
(51, 'Satria Mahardika Palupi', 'XII TAV 2'),
(52, 'Raka Firdaus', 'X TELK 5'),
(53, 'Rifqi Imanulkhoir', 'X TELK 1'),
(54, 'Emir Syauqi Ansyah', 'X TELK 2');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `publisher` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `kode` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id_event`, `publisher`, `tanggal`, `waktu_mulai`, `waktu_selesai`, `kode`) VALUES
(4, 'Rendy', '2025-07-28', '12:05:00', '15:42:00', 'Bandung'),
(5, 'MysterZentoX', '2025-07-30', '15:30:00', '17:25:00', 'bandungjuara'),
(6, 'DaffaXML', '2025-08-05', '05:02:46', '16:10:00', 'Abcdpoop'),
(7, 'MysterZentoX', '2025-08-06', '06:10:52', '17:20:00', 'erom123'),
(8, 'MysterZentoX', '2025-08-06', '06:21:51', '17:25:00', 'erom123'),
(9, 'DaffaXML', '2025-08-08', '04:55:37', '15:57:00', 'Nabel'),
(10, 'MysterZentoX', '2025-08-13', '04:42:12', '15:52:00', 'EROM2025'),
(11, 'MysterZentoX', '2025-08-20', '04:49:47', '16:00:48', 'MERDEKA');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `kelas` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `kelas`) VALUES
(1, 'X DKV 2'),
(2, 'X TELK 1'),
(3, 'X TELK 2'),
(4, 'X TELK 3'),
(5, 'X TELK 4'),
(6, 'X TELK 5'),
(7, 'X TJKT 2'),
(8, 'XI TAV 1'),
(9, 'XI TAV 3'),
(10, 'XI TITL 2'),
(11, 'XI TOI 3'),
(12, 'XII TAV 2'),
(13, 'XII TOI 2'),
(14, 'XII TAV 1'),
(15, 'XII TKJ 1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen`
--
ALTER TABLE `absen`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
