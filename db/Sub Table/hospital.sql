-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2020 at 01:44 PM
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
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(11) NOT NULL,
  `state` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `hospital` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Phone No.` varchar(50) NOT NULL,
  `blood` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `state`, `city`, `hospital`, `Address`, `Phone No.`, `blood`) VALUES
(1, 'Maharashtra', 'Mumbai', 'Dr. L. H. Hiranandan', '', '0', 'B+'),
(2, 'Maharashtra', 'Thane', 'Bhiwandi Blood Bank', '', '0', 'O+'),
(3, 'Maharashtra', 'Thane', 'Central Hospital Blood Bank,Ulhasnagar', '', '0', 'AB+'),
(4, 'Maharshtra', 'Mumbai', 'BYL Nair Hospital, Blood Bank', 'New OPD Bldg. 2nd Floor, Dr. A. L.Nair Road, Mumbai Central, Dist. Mumbai', '8879334904,022-23027644, 23027645', 'AB-'),
(5, 'Maharashtra', 'Mumbai', 'Fortis Hospital Blood Bank', 'Mulund Goregaon Link Road, Nahur, Mumbai, Dist. Mumbai', '7678085566,02249254370', 'O-'),
(6, 'Maharashta', 'Mumbai', 'KEM Hospital Blood Bank,Parel', 'Acharya Donde Marg, Parel, Dist. Mumbai', '9819716450,022-24135189 /24107249', 'A+'),
(7, 'Maharashtra', 'Mumbai', 'Kokilaben Dhirubhai Ambani Blood Bank', '4 bunglows, Achutrao Patwardhan Marg, Andheri (west), Mumbai, Dist. Mumbai', '9320070111,+91-22-3090 0900', 'B-'),
(8, 'Maharashtra', 'Thane', 'Mahatma Gandhi Mission, MGM Medical College and Hospital Blood Bank, Kamothe', 'Plot No 1&2, Sector-18, Kamothe Navi Mumbai, Thane, Dist. Thane', '9819131787,27863483/27437905	', 'AB+'),
(9, 'Maharashtra', 'Thane', 'Navi Mumbai Muncipal Corporation, Blood Bank', 'General Hospital Vashi, Near St.Mery Church Sector-10, Vashi, Navi Mumbai, Thane, Dist. Thane', '9324292615 / 9920644868,022-27888750', 'B+'),
(10, 'Maharashtra', 'Thane', 'Terna Blood Bank', 'Terna Sahyadri Speciality Hospital Research Centre, Plot No 12, Sector -22 Nerul (w) Navi Mumbai, Th', '022 - 61578390,022 - 61578390', 'B+');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
