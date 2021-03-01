-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2018 at 04:20 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accident`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ad_id` int(9) NOT NULL,
  `ad_username` varchar(200) CHARACTER SET armscii8 NOT NULL,
  `ad_password` varchar(200) CHARACTER SET armscii8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ad_id`, `ad_username`, `ad_password`) VALUES
(1, 'admin', 'admin1'),
(2, 'rahul', 'rahul88');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `r_id` int(9) NOT NULL,
  `type` varchar(200) CHARACTER SET armscii8 NOT NULL,
  `place` varchar(200) CHARACTER SET armscii8 NOT NULL,
  `dt` varchar(200) CHARACTER SET armscii8 NOT NULL,
  `kill` varchar(200) CHARACTER SET armscii8 NOT NULL,
  `wound` varchar(200) CHARACTER SET armscii8 NOT NULL,
  `v_type` varchar(200) CHARACTER SET armscii8 NOT NULL,
  `v_number` varchar(200) CHARACTER SET armscii8 NOT NULL,
  `reason` varchar(200) CHARACTER SET armscii8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`r_id`, `type`, `place`, `dt`, `kill`, `wound`, `v_type`, `v_number`, `reason`) VALUES
(1, 'Minor', 'Hyderabad', '02/01/2004 10:02:18:PM', '2', '20', '2', 'AP20EA8945', 'Over speed'),
(2, 'Major', 'Bangalore', '11/02/2010 10:10:56 AM', '2', '9', '2', 'KA06U657', 'Drunk'),
(3, 'Minor', 'Mysore', '15/09/2006 09:29:15PM', '6', '8', 'Bus', 'KA01EE0520', 'Wrong way'),
(4, 'Minor', 'Hubli', '21/09/2015 05:15:35 PM', '0', '2', 'Two Wheeler', 'KA25D2090', 'FOG'),
(5, 'Major', 'Madurai', '18/09/2012 05:15:24AM', '3', '1', 'Auto', 'TN09Q2890', 'Signal jump'),
(6, 'Major', 'Ballari', '02/08/2012 03:24:14 PM', '0', '1', 'Two Wheeler', 'KA34D2090', 'Triple riding'),
(7, 'Minor', 'Mangalore', '21/09/2015 05:15:35 PM', '4', '13', 'Bus', 'KA22EQ2718', 'Overload');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `t_id` int(9) NOT NULL,
  `type` varchar(200) CHARACTER SET armscii8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`t_id`, `type`) VALUES
(1, 'Major'),
(2, 'Minor');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `us_username` varchar(10) NOT NULL,
  `us_password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `us_username`, `us_password`) VALUES
(1, 'rohith', 'rohith45'),
(2, 'david', 'david22');

-- --------------------------------------------------------

--
-- Table structure for table `v_type`
--

CREATE TABLE `v_type` (
  `v_id` int(9) NOT NULL,
  `v_type` varchar(200) CHARACTER SET armscii8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `v_type`
--

INSERT INTO `v_type` (`v_id`, `v_type`) VALUES
(1, 'Truck'),
(2, 'Bus'),
(3, 'Pickup'),
(4, 'Mini Van'),
(5, 'Car '),
(6, 'Auto'),
(7, 'Two Wheeler');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v_type`
--
ALTER TABLE `v_type`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ad_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `r_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `t_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `v_type`
--
ALTER TABLE `v_type`
  MODIFY `v_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
