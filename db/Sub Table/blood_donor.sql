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
-- Table structure for table `blood_donor`
--

CREATE TABLE `blood_donor` (
  `DONOR_ID` int(11) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `FATHER_NAME` varchar(150) NOT NULL,
  `GENDER` varchar(150) NOT NULL,
  `DOB` date NOT NULL,
  `BLOOD` varchar(150) NOT NULL,
  `BODY_WEIGHT` int(11) NOT NULL,
  `EMAIL` varchar(150) NOT NULL,
  `ADDRESS` text NOT NULL,
  `AREA` varchar(150) NOT NULL,
  `CITY` varchar(150) NOT NULL,
  `PINCODE` varchar(150) NOT NULL,
  `STATE` varchar(150) NOT NULL,
  `COUNTRY` varchar(150) NOT NULL,
  `CONTACT_1` varchar(150) NOT NULL,
  `CONTACT_2` varchar(150) NOT NULL,
  `VOLUNTARY` text NOT NULL,
  `VOLUNTARY_GROUP` text NOT NULL,
  `NEW_DONOR` varchar(150) NOT NULL,
  `LAST_D_DATE` date NOT NULL,
  `DONOR_PIC` varchar(150) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_donor`
--

INSERT INTO `blood_donor` (`DONOR_ID`, `NAME`, `FATHER_NAME`, `GENDER`, `DOB`, `BLOOD`, `BODY_WEIGHT`, `EMAIL`, `ADDRESS`, `AREA`, `CITY`, `PINCODE`, `STATE`, `COUNTRY`, `CONTACT_1`, `CONTACT_2`, `VOLUNTARY`, `VOLUNTARY_GROUP`, `NEW_DONOR`, `LAST_D_DATE`, `DONOR_PIC`, `STATUS`, `username`, `password`) VALUES
(1, 'Vedanti Rane', 'Sunil', 'Female', '2020-09-30', 'O+', 60, 'vedantirane3024@gmail.com', 'Ganesh Appts,Sector1,Nerul,Navi Mumbai', 'Nerul', 'Mumbai', '400705', 'Maharashtra', 'India', '8390144282', '', 'No', 'Nill', 'No', '0000-00-00', '', 1, '', 0),
(2, 'Abhishek Panchal', '', 'Male', '2020-11-09', 'B+', 55, 'abc@gmail.com', 'Thane', 'Thane', 'Mumbai', '400705', 'Maharashtra', 'India', '', '', 'No', 'Nill', 'No', '0000-00-00', '', 1, '', 0),
(3, 'Reesali Mohntey', '', 'Femaile', '2020-11-10', 'AB+', 65, 'pqr@gmail.com', 'Nerul,Navi Mumbai', 'Andimadam 621801', 'Mumbai', '400705', 'Maharashtra', 'India', '', '', 'No', 'Nill', 'No', '0000-00-00', '', 1, '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_donor`
--
ALTER TABLE `blood_donor`
  ADD PRIMARY KEY (`DONOR_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_donor`
--
ALTER TABLE `blood_donor`
  MODIFY `DONOR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
