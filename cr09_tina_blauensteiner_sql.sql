-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 03, 2018 at 01:17 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr09_tina_blauensteiner.sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_driver`
--

CREATE TABLE `customer_driver` (
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_driver`
--

INSERT INTO `customer_driver` (`name`, `address`, `phone_number`, `id`) VALUES
('Peter Parker', 'Hillview', 67665432, 1),
('Clark Kent', 'Mountainview', 9876543, 2),
('Wonder Woman', 'Vienna', 1234784, 3),
('Batman', 'New York', 12344484, 4);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `charges` int(11) NOT NULL,
  `days_rented` int(11) NOT NULL,
  `additional_charges` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`charges`, `days_rented`, `additional_charges`, `invoice_id`) VALUES
(125, 5, 10, 1),
(270, 10, 10, 2),
(230, 8, 20, 3),
(400, 10, 40, 4);

-- --------------------------------------------------------

--
-- Table structure for table `Office`
--

CREATE TABLE `Office` (
  `ID` int(11) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `date_out` date NOT NULL,
  `date_back` date NOT NULL,
  `odometer` int(11) NOT NULL,
  `start_location` varchar(100) NOT NULL,
  `return_location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`date_out`, `date_back`, `odometer`, `start_location`, `return_location`) VALUES
('2018-11-01', '2018-11-05', 123456, 'Vienna', 'Prague'),
('2018-11-02', '2018-11-12', 1234256, 'Vienna', 'Budapest'),
('2018-11-20', '2018-11-24', 123456, 'Vienna', 'London');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `date_needed` date NOT NULL,
  `days_needed` int(11) NOT NULL,
  `start_location` varchar(100) NOT NULL,
  `return_location` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`date_needed`, `days_needed`, `start_location`, `return_location`, `id`) VALUES
('2018-11-01', 10, 'Vienna', 'Budapest', 1),
('2018-11-05', 5, 'Vienna', 'London', 2),
('2018-11-20', 7, 'London', 'Budapest', 3);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `license_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`license_number`) VALUES
(12335),
(12345),
(12455),
(17545);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type`
--

CREATE TABLE `vehicle_type` (
  `Type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_driver`
--
ALTER TABLE `customer_driver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `Office`
--
ALTER TABLE `Office`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`date_out`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`license_number`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`Type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_driver`
--
ALTER TABLE `customer_driver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Office`
--
ALTER TABLE `Office`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `license_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17546;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
