-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2019 at 02:26 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dynamic_select`
--

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `name`) VALUES
(1, 'Manikgonj'),
(2, 'Rajbari'),
(3, 'Faridpur'),
(4, 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_table`
--

CREATE TABLE `tbl_table` (
  `id` int(11) NOT NULL,
  `district` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upzila` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_table`
--

INSERT INTO `tbl_table` (`id`, `district`, `upzila`) VALUES
(1, '1', '11'),
(2, '1', '10'),
(3, '1', '10'),
(4, '4', '26'),
(5, '4', '24');

-- --------------------------------------------------------

--
-- Table structure for table `upzila`
--

CREATE TABLE `upzila` (
  `up_id` int(11) NOT NULL,
  `upzila_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dis_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upzila`
--

INSERT INTO `upzila` (`up_id`, `upzila_name`, `dis_id`) VALUES
(1, 'Alfadanga Upazila', 3),
(2, 'Bhanga Upazila', 3),
(3, 'Boalmari Upazila', 3),
(4, 'Charbhadrasan Upazila', 3),
(5, 'Faridpur Sadar Upazila', 3),
(6, 'Madhukhali Upazila', 3),
(7, 'Nagarkanda Upazila', 3),
(8, 'Sadarpur Upazila', 3),
(9, 'Saltha Upazila', 3),
(10, 'Daulatpur Upazila, Manikganj', 1),
(11, 'Ghior Upazila', 1),
(12, 'Harirampur Upazila', 1),
(13, 'Manikganj Sadar Upazila', 1),
(14, 'Saturia Upazila', 1),
(15, 'Shivalaya Upazila', 1),
(16, 'Singair Upazila', 1),
(17, 'Baliakandi Upazila', 2),
(18, 'Goalandaghat Upazila', 2),
(19, 'Kalukhali Upazila', 2),
(20, 'Pangsha Upazila', 2),
(21, 'Rajbari Sadar Upazila', 2),
(22, 'Dhamrai Upazila', 4),
(23, 'Dohar Upazila', 4),
(24, 'Keraniganj Upazila', 4),
(25, 'Nawabganj Upazila, Dhaka', 4),
(26, 'Savar Upazila', 4),
(27, 'Tejgaon Circle Upazila', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_table`
--
ALTER TABLE `tbl_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upzila`
--
ALTER TABLE `upzila`
  ADD PRIMARY KEY (`up_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_table`
--
ALTER TABLE `tbl_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `upzila`
--
ALTER TABLE `upzila`
  MODIFY `up_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
