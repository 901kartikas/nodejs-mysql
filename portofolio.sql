-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2021 at 12:58 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portofolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `edit`
--

CREATE TABLE `edit` (
  `id_edit` int(200) NOT NULL,
  `edit_nama` varchar(100) NOT NULL,
  `edit_desc` text NOT NULL,
  `edit_gb` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `edit`
--

INSERT INTO `edit` (`id_edit`, `edit_nama`, `edit_desc`, `edit_gb`) VALUES
(1, 'SOFIA KARTIKA HANIM UWU', 'SAYA ADALAH FULL STACK WEB DEVELOPER MENYUKAI TANTANGAN DAN HAL BARU TENTUNYA SESUATU YANG BERBAU TEKNOLOGI DAN INI ADALAH WEB PORTOFOLIO SAYA ', 'http://localhost:3000/img/author_image2.png');

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `id_gb` int(11) NOT NULL,
  `nama_gb` varchar(200) NOT NULL,
  `link_gb` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gambar`
--

INSERT INTO `gambar` (`id_gb`, `nama_gb`, `link_gb`) VALUES
(2, 'profil', 'http://localhost:3000/img/author_image.png');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(60) NOT NULL,
  `isipesan` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `nama`, `email`, `subject`, `isipesan`) VALUES
(14, 'asfsdf', 'df@gmail.com', 'dfg', 'fwesdcxzbvc '),
(15, 'jkjkjjksad', 'oi@gmail.com', 'fczxxASC', 'QWERTYUIJHGFDStgbvcdhgbvcSEhzdfbdfgshsdjxjfgjdf'),
(16, 'vzxd', 'qweqweqwe@gmail.com', 'cdsZXz', 'qwaeggbvscasdfsdfa'),
(17, 'dfs', 'asdf@gmail.com', 'dsfasdfads', 'qwdfsegrfvcread'),
(18, 'jkjkjjksad', 'kartikasofia35@gmail.com', 'ACAS', 'yterwdsaawerstdkhfgsdsAX'),
(20, 'hai', 'oi@gmail.com', 'oke', 'semoga bisa pliss\r\n'),
(21, 'jkjkjjksad', 'sdfsdf@gmail.com', 'sdfsdf', 'sdfgsdfbsdb'),
(22, 'dfs', 'asdasda@gmail.com', 'VXZVASF', 'adasdasdasd'),
(23, 'jkjkjjksad', 'df@gmail.com', 'VXZVASF', 'sddsd'),
(24, 'jkjkjjksad', 'kartikasofia35@gmail.com', 'VXZVASF', 'asdsdasdfasdfasd'),
(25, 'oi', 'asdasda@gmail.com', 'zczx', 'zxczcz'),
(26, 'dfs', 'oi@gmail.com', 'VXZVASF', 'asdasdasdasdasd'),
(27, 'jkjkjjksad', 'oi@gmail.com', 'VXZVASF', 'cxzZXCZXcZXCZxc'),
(28, 'oi', 'kartikasofia35@gmail.com', 'asdasdfasd', 'fasdsfasdfasdf'),
(29, 'oi', 'qweqweqwe@gmail.com', 'asdasdfasd', 'dasdasffsd'),
(30, 'oi', 'asdasda@gmail.com', 'ACAS', 'asdfasdfavasdvasd'),
(31, 'jkjkjjksad', 'kartikasofia35@gmail.com', 'asdasdfasd', 'sdfas'),
(32, 'oi', 'sofia@gmail.com', 'VXZVASF', 'jhfnvb '),
(33, 'jkjkjjksad', 'kartikasofia35@gmail.com', 'asdasdfasd', 'asdasfasdfa'),
(34, 'oi', 'kartikasofia35@gmail.com', 'asdasdfasd', 'wefasdf'),
(39, 'dfs', 'kartikasofia35@gmail.com', 'asdasdfasd', 'esedfgchjk;otufcgh'),
(40, 'jkjkjjksad', 'sofia@gmail.com', 'VXZVASF', 'sasdfasdfasdfasdfasdf'),
(41, 'jkjkjjksad', 'sofia@gmail.com', 'dfg', 'sdfsfdf'),
(42, 'jkjkjjksad', 'asdasda@gmail.com', 'asdasdfasd', 'zdfhzdf'),
(43, 'oi', 'xcvxcv@gmail.com', 'asdasdfasd', 'asdasdasdasdasds'),
(44, 'oi', 'kartikasofia35@gmail.com', 'VXZVASF', 'asdasdafsfsdfa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `edit`
--
ALTER TABLE `edit`
  ADD PRIMARY KEY (`id_edit`);

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id_gb`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `edit`
--
ALTER TABLE `edit`
  MODIFY `id_edit` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id_gb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
