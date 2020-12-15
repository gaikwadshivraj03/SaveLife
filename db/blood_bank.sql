-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2020 at 04:34 AM
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
-- Database: `blood_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `bloodinfo`
--

CREATE TABLE `bloodinfo` (
  `bid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `bg` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodinfo`
--

INSERT INTO `bloodinfo` (`bid`, `hid`, `bg`) VALUES
(1, 1, 'B+'),
(2, 2, 'A+'),
(3, 3, 'B+'),
(4, 4, 'O+'),
(5, 5, 'AB+'),
(6, 5, 'O+'),
(7, 5, 'B+'),
(8, 5, 'AB-');

-- --------------------------------------------------------

--
-- Table structure for table `bloodrequest`
--

CREATE TABLE `bloodrequest` (
  `reqid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `bg` varchar(11) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodrequest`
--

INSERT INTO `bloodrequest` (`reqid`, `hid`, `rid`, `bg`, `status`) VALUES
(1, 1, 1, 'B+', 'Pending'),
(3, 3, 3, 'B+', 'Accepted'),
(4, 2, 4, 'A+', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

CREATE TABLE `blood_bank` (
  `hospital` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `CITY_ID` int(11) NOT NULL,
  `STATE_ID` int(11) NOT NULL,
  `CITY_NAME` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`CITY_ID`, `STATE_ID`, `CITY_NAME`) VALUES
(1, 10, 'Mumbai'),
(2, 10, 'Navi Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `COUNTRY_ID` int(11) NOT NULL,
  `COUNTRY_NAME` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`COUNTRY_ID`, `COUNTRY_NAME`) VALUES
(1, 'India'),
(2, 'Saudi Arabia'),
(4, 'Kwait'),
(5, 'Qatar'),
(6, 'Singapore'),
(7, 'Russia'),
(9, 'Nepal');

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

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(11) NOT NULL,
  `hname` varchar(100) NOT NULL,
  `hemail` varchar(100) NOT NULL,
  `hpassword` varchar(100) NOT NULL,
  `hphone` varchar(100) NOT NULL,
  `hcity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `hname`, `hemail`, `hpassword`, `hphone`, `hcity`) VALUES
(1, 'Dr. L. H. Hiranandan', 'lincy.jacob@hiranandanihospital.org', '123@ab', '9619597757,022-25763355 / 25763356', 'Mumbai'),
(2, 'Fortis Hospital', 'bloodbank.mul@fortishealthcare.com', 'pqr@123', '7678085566,02249254370', 'Mulund Goregaon Link Road,Nahur, Mumbai'),
(3, 'Tata Memorial Hospital Blood Bank', 'dtmtata@gmail.com', '123456', '9820340073,022-24177000/24127096', 'Dr. E.Borges Road Parel, Mumbai, Mumbai, Dist. Mumbai'),
(4, 'Terna Blood Bank', 'ternabloodbank@gmail.com', 'terna@123', '022 - 61578390,022 - 61578390	', 'Nerul'),
(5, 'KEM hospital blood bank', 'jayashreesharma@kem.edu', 'KEM@123', '9819716450', 'Parel,,Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `user_id` int(100) NOT NULL,
  `name` varchar(190) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` int(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `usertype` varchar(100) DEFAULT NULL,
  `profile` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`user_id`, `name`, `username`, `password`, `email`, `phone`, `address`, `usertype`, `profile`) VALUES
(1, 'my', 'my', 'admin', NULL, NULL, NULL, 'admin', 'upload/3_1521639658.jpg'),
(2, 'user', 'user', 'user', NULL, NULL, NULL, 'user', 'upload/7015951-3d-funny-animal_1521603987.jpg'),
(14, 'today', 'today', 'today', 'today', NULL, NULL, 'user', 'upload/vehicle_1521645370.png'),
(15, 'gaikwadshivraj03@gmail.com', 'gaikwadshivraj03@gmail.com', '123', '123', NULL, NULL, 'user', NULL),
(16, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(17, NULL, 'nn', 'nn', NULL, NULL, NULL, NULL, NULL),
(18, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(19, NULL, 'vedu', 'vedu', NULL, NULL, NULL, NULL, NULL),
(20, NULL, 'vedu', 'vedu', NULL, NULL, NULL, NULL, NULL),
(21, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(22, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(23, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(24, NULL, 'raj', 'raj', NULL, NULL, NULL, NULL, NULL),
(25, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(26, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(27, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(28, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(29, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(30, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(31, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(32, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(33, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(34, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(35, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(36, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(37, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(38, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(39, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(40, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(41, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(42, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(43, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(44, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(45, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(46, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(47, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(48, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(49, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(50, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(51, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(52, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(53, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(54, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(55, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(56, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(57, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(58, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(59, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(60, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(61, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(62, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(63, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(64, NULL, '', '', NULL, NULL, NULL, NULL, NULL),
(65, NULL, 'user', 'user', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `CONTACT` text NOT NULL,
  `EMAIL` varchar(200) NOT NULL,
  `MESSAGE` text NOT NULL,
  `STATUS` text NOT NULL,
  `LOGS` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`ID`, `NAME`, `CONTACT`, `EMAIL`, `MESSAGE`, `STATUS`, `LOGS`) VALUES
(1, 'Gokul', '9087876788', 'gokul@gmail.com', 'Hello,this is Gokkul,i have donated blood .When will i get my report certifiacte.Kindly inform.', '0', '2020-07-03 19:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `receivers`
--

CREATE TABLE `receivers` (
  `id` int(11) NOT NULL,
  `rname` varchar(100) NOT NULL,
  `remail` varchar(100) NOT NULL,
  `rpassword` varchar(100) NOT NULL,
  `rphone` varchar(100) NOT NULL,
  `rbg` varchar(10) NOT NULL,
  `rcity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receivers`
--

INSERT INTO `receivers` (`id`, `rname`, `remail`, `rpassword`, `rphone`, `rbg`, `rcity`) VALUES
(1, 'test', 'test@gmail.com', 'test', '8875643456', 'A+', 'lucknow'),
(2, 'xyz', 'xyz@gmail.com', 'xyz', '8875643456', 'AB+', 'Punjab'),
(3, 'user', 'gaikwadshivraj03@gmail.com', '123456', '07506169364', 'B+', 'Navi Mumbai'),
(4, 'Vedanti Rane', 'vsrane@gmail.com', 'Rane@123', '8390144282', 'O+', 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `requester`
--

CREATE TABLE `requester` (
  `requester_id` int(100) NOT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `blood_group` varchar(100) DEFAULT NULL,
  `unit_blood` varchar(100) DEFAULT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `contact_person` varchar(120) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact_no` varchar(200) DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `member_fk` varchar(100) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requester`
--

INSERT INTO `requester` (`requester_id`, `patient_name`, `gender`, `blood_group`, `unit_blood`, `hospital_name`, `date`, `contact_person`, `address`, `email`, `contact_no`, `reason`, `member_fk`, `image`) VALUES
(6, 'markcpp', 'female', 'b+', '2', 'Lanka Hospital', '0000-00-00', 'Hamad', 'Kandy', 'codeprojects@gmail.com', 'sdsadsad', 'Colombo', 'mhdcpj', 'upload/7015951-3d-funny-animal_1521728863.jpg');

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

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `STATE_ID` int(11) NOT NULL,
  `STATE_NAME` varchar(150) NOT NULL,
  `COUNTRY_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`STATE_ID`, `STATE_NAME`, `COUNTRY_ID`) VALUES
(1, 'Assam', 1),
(2, 'Bihar', 1),
(3, 'Chhattisgarh', 1),
(4, 'Goa', 1),
(5, 'Gujarat', 1),
(6, 'Haryana', 1),
(7, 'Himachal Pradesh', 1),
(8, 'Jammu And Kashmir', 1),
(9, 'Jharkhand', 1),
(10, 'Maharashtra', 1),
(11, 'Manipur', 1),
(12, 'Meghalaya', 1),
(13, 'Mizoram', 1),
(14, 'Orissa', 1),
(15, 'Punjab', 1),
(16, 'Rajasthan', 1),
(17, 'Uttaranchal', 1),
(18, 'Utter Pradesh', 1),
(19, 'West Bengal', 1),
(20, 'Andaman and Nicobar Islands', 1),
(21, 'Chandigarh ', 1),
(22, 'Daman and Diu', 1),
(23, 'Delhi', 1),
(24, 'Lakshadweep', 1),
(25, 'Puducherry', 1),
(36, 'Telangana', 1),
(37, 'Canada', 13),
(38, 'Kwait', 4),
(39, 'Malaysia & Brunei', 12),
(40, 'Mali', 11),
(41, 'Nepal', 10),
(42, 'Oman', 9),
(43, 'Pakistan', 8),
(45, 'Russia', 7),
(46, 'Saudi Arabia', 2),
(47, 'Singapore', 6),
(48, 'Saudi Arabia', 2),
(49, 'Maharashtra', 1),
(50, 'Goa', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bloodinfo`
--
ALTER TABLE `bloodinfo`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `hid` (`hid`);

--
-- Indexes for table `bloodrequest`
--
ALTER TABLE `bloodrequest`
  ADD PRIMARY KEY (`reqid`),
  ADD KEY `hid` (`hid`);

--
-- Indexes for table `blood_donor`
--
ALTER TABLE `blood_donor`
  ADD PRIMARY KEY (`DONOR_ID`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`CITY_ID`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`COUNTRY_ID`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hemail` (`hemail`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`user_id`,`username`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `receivers`
--
ALTER TABLE `receivers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remail` (`remail`);

--
-- Indexes for table `requester`
--
ALTER TABLE `requester`
  ADD PRIMARY KEY (`requester_id`),
  ADD KEY `member_fk` (`member_fk`);

--
-- Indexes for table `request_blood`
--
ALTER TABLE `request_blood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`STATE_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bloodinfo`
--
ALTER TABLE `bloodinfo`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bloodrequest`
--
ALTER TABLE `bloodrequest`
  MODIFY `reqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blood_donor`
--
ALTER TABLE `blood_donor`
  MODIFY `DONOR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `CITY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `COUNTRY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `receivers`
--
ALTER TABLE `receivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `requester`
--
ALTER TABLE `requester`
  MODIFY `requester_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `request_blood`
--
ALTER TABLE `request_blood`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `STATE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
