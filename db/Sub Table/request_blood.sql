-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2020 at 01:45 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `request_blood`
--

CREATE TABLE `request_blood` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `GENDER` varchar(150) NOT NULL,
  `BLOOD` varchar(150) NOT NULL,
  `BUNIT` int(11) NOT NULL,
  `HOSP` text NOT NULL,
  `CITY` varchar(150) NOT NULL,
  `PIN` varchar(150) NOT NULL,
  `DOC` varchar(150) NOT NULL,
  `RDATE` date NOT NULL,
  `CNAME` varchar(150) NOT NULL,
  `CADDRESS` text NOT NULL,
  `EMAIL` varchar(150) NOT NULL,
  `CON1` varchar(150) NOT NULL,
  `CON2` varchar(150) NOT NULL,
  `REASON` text NOT NULL,
  `PIC` varchar(150) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `CDATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_blood`
--

INSERT INTO `request_blood` (`ID`, `NAME`, `GENDER`, `BLOOD`, `BUNIT`, `HOSP`, `CITY`, `PIN`, `DOC`, `RDATE`, `CNAME`, `CADDRESS`, `EMAIL`, `CON1`, `CON2`, `REASON`, `PIC`, `STATUS`, `CDATE`) VALUES
(1, 'Varsha Rane', 'female', 'O+', 2, 'Nerul,Navi Mumbai', 'Navi Mumbai', '400705', '', '2020-11-03', 'ndnd', 'Nerul ', 'gaikwadshivraj03@gmail.com', '9422785303', '', '', '', 2, '2020-11-07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `request_blood`
--
ALTER TABLE `request_blood`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `request_blood`
--
ALTER TABLE `request_blood`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
