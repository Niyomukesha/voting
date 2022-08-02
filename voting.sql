-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2022 at 08:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `names` varchar(70) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `names`, `username`, `password`) VALUES
(1, 'IZANYIBUKA Yvette', 'Yvette1', '123456'),
(3, 'MWANAFUNZI Fabrice', 'Fabla', '123456'),
(4, 'Nadine', 'Fiona', '12345'),
(5, 'NIYOMUKASHA Florence', 'Fofo', '1232134r');

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `candidate_id` int(40) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `age` int(10) NOT NULL,
  `adress` varchar(30) NOT NULL,
  `degree` varchar(50) NOT NULL,
  `position` varchar(30) NOT NULL,
  `votes` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `voter`
--

CREATE TABLE `voter` (
  `id` int(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `nationalId` int(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voter`
--

INSERT INTO `voter` (`id`, `firstname`, `lastname`, `nationalId`, `email`, `password`) VALUES
(1, 'NIYOMUKESHA', 'Yvette', 1523432167, 'gmucyodusenge@gmail.com', '123456'),
(2, 'BYUKUSENGE', 'Nadine Fiona', 2147483647, 'nadinefiona@gmail.com', '123456'),
(3, 'BYUKUSENGE', 'Nadine Fiona', 2147483647, 'nadinefiona@gmail.com', '123456'),
(4, 'BYUKUSENGE', 'Nadine Fiona', 2147483647, 'nadinefiona@gmail.com', '123456'),
(5, 'NIYOMUKESHA', 'Fiona', 2147483647, 'fiona@gmail.com', '123456'),
(6, '', '', 0, '', ''),
(7, 'dgjfhchvwdkn', '', 0, '', ''),
(8, '', '', 0, '', ''),
(9, '', '', 0, '', ''),
(10, '', '', 0, '', ''),
(11, 'mwanafunzi', 'fabrice', 2147483647, 'mwana@gmail.com', 'htdjfkuglhkjsrdtufyu'),
(12, 'mwanafunzi', 'fabrice', 2147483647, 'mwana@gmail.com', 'htdjfkuglhkjsrdtufyu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`candidate_id`);

--
-- Indexes for table `voter`
--
ALTER TABLE `voter`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `candidate_id` int(40) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voter`
--
ALTER TABLE `voter`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
