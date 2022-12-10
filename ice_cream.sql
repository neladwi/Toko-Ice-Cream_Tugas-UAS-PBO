-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2022 at 03:32 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ice_cream`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_reg`
--

CREATE TABLE `admin_reg` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `contact` bigint(20) NOT NULL,
  `username` varchar(259) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `admin_reg`
--

INSERT INTO `admin_reg` (`id`, `name`, `address`, `contact`, `username`, `password`) VALUES
(3, 'Nela Dwi Anggraini', 'Jalan Pramuka', 81250359095, 'lala', 'lala');

-- --------------------------------------------------------

--
-- Table structure for table `ambiance`
--

CREATE TABLE `ambiance` (
  `user` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `good` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `bad` varchar(250) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `ambiance`
--

INSERT INTO `ambiance` (`user`, `good`, `bad`) VALUES
('h', 'YES', 'NO'),
('h', 'NO', 'YES'),
('joshi', 'YES', 'NO'),
('nela', 'YES', 'NO'),
('jeno', 'YES', 'NO'),
('nela', 'YES', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `user` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `good` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `bad` varchar(250) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`user`, `good`, `bad`) VALUES
('h', 'YES', 'NO'),
('h', 'NO', 'YES'),
('joshi', 'YES', 'NO'),
('pooja', 'YES', 'NO'),
('nela', 'YES', 'NO'),
('jeno', 'YES', 'NO'),
('nela', 'YES', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `ice_cream_menu`
--

CREATE TABLE `ice_cream_menu` (
  `flavor` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `ice_cream_menu`
--

INSERT INTO `ice_cream_menu` (`flavor`, `price`) VALUES
('Stoberi', 55000),
('Mangga', 55000),
('Coklat', 55000),
('Green Tea', 55000),
('Vanila', 55000),
('Cookies & Cream', 55000);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `user` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `good` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `bad` varchar(250) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`user`, `good`, `bad`) VALUES
('h', 'YES', 'NO'),
('h', 'YES', 'NO'),
('h', 'NO', 'YES'),
('user', 'YES', 'NO'),
('user', 'NO', 'YES'),
('user', 'YES', 'NO'),
('user', 'YES', 'NO'),
('user', 'NO', 'YES'),
('joshi', 'NO', 'YES'),
('pooja', 'YES', 'NO'),
('nela', 'YES', 'NO'),
('jeno', 'YES', 'NO'),
('nela', 'YES', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `user_history`
--

CREATE TABLE `user_history` (
  `flavor` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `user` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `user_history`
--

INSERT INTO `user_history` (`flavor`, `price`, `qty`, `user`, `date`) VALUES
('Mangga', 110000, 2, 'jeno', '2022-12-09'),
('Green Tea', 55000, 1, 'jeno', '2022-12-09'),
('Americano', 22000, 1, 'jeno', '2022-12-09'),
('Kentang Goreng', 15000, 1, 'jeno', '2022-12-09'),
('Roti Bakar', 26000, 2, 'jeno', '2022-12-09'),
('Green Tea', 110000, 2, 'nela', '2022-12-09'),
('Roti Bakar', 13000, 1, 'nela', '2022-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE `user_reg` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `contact` bigint(20) NOT NULL,
  `username` varchar(259) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`id`, `name`, `address`, `contact`, `username`, `password`) VALUES
(3, 'Nela Dwi Anggraini', 'Jalan Pramuka', 81250359095, 'nela', '1234'),
(4, 'Lee Jeno', 'Seoul Street', 81250359091, 'jeno', 'leejn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_reg`
--
ALTER TABLE `admin_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_reg`
--
ALTER TABLE `user_reg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_reg`
--
ALTER TABLE `admin_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_reg`
--
ALTER TABLE `user_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
