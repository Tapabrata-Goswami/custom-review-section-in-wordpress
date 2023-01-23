-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 23, 2023 at 11:57 AM
-- Server version: 10.5.17-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u526730828_city`
--

-- --------------------------------------------------------

--
-- Table structure for table `BBVS-11`
--

CREATE TABLE `BBVS-11` (
  `id` int(250) NOT NULL,
  `cu_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cu_city` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cu_review` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BBVS-11`
--

INSERT INTO `BBVS-11` (`id`, `cu_name`, `cu_city`, `cu_review`) VALUES
(1, 'test1', 'Pune', 'test test'),
(2, 'rupam', 'cannin ', 'good very good'),
(3, 'tapabrata', '222', 'gty');

-- --------------------------------------------------------

--
-- Table structure for table `BMBBWB-01`
--

CREATE TABLE `BMBBWB-01` (
  `id` int(250) NOT NULL,
  `cu_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cu_city` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cu_review` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BMBBWB-01`
--

INSERT INTO `BMBBWB-01` (`id`, `cu_name`, `cu_city`, `cu_review`) VALUES
(1, 'test2', 'kolkata', 'test test'),
(2, 'tapabrata', 'hellogaria', 'good!');

-- --------------------------------------------------------

--
-- Table structure for table `BMBLWB-01`
--

CREATE TABLE `BMBLWB-01` (
  `id` int(250) NOT NULL,
  `cu_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cu_city` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cu_review` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BMBLWB-01`
--

INSERT INTO `BMBLWB-01` (`id`, `cu_name`, `cu_city`, `cu_review`) VALUES
(1, 'test3', 'Kolkata', 'tetsttetstet s');

-- --------------------------------------------------------

--
-- Table structure for table `BMBLWB-02`
--

CREATE TABLE `BMBLWB-02` (
  `id` int(250) NOT NULL,
  `cu_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cu_city` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cu_review` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BMBWBLC-01`
--

CREATE TABLE `BMBWBLC-01` (
  `id` int(250) NOT NULL,
  `cu_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cu_city` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cu_review` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BMBWWB-01`
--

CREATE TABLE `BMBWWB-01` (
  `id` int(250) NOT NULL,
  `cu_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cu_city` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cu_review` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BMBWWB-02`
--

CREATE TABLE `BMBWWB-02` (
  `id` int(250) NOT NULL,
  `cu_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cu_city` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cu_review` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BMNRWB-01`
--

CREATE TABLE `BMNRWB-01` (
  `id` int(250) NOT NULL,
  `cu_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cu_city` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cu_review` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BMNRWB-01`
--

INSERT INTO `BMNRWB-01` (`id`, `cu_name`, `cu_city`, `cu_review`) VALUES
(1, 'tapabrata', 'garia', 'good products');

-- --------------------------------------------------------

--
-- Table structure for table `BMSMWB-01`
--

CREATE TABLE `BMSMWB-01` (
  `id` int(250) NOT NULL,
  `cu_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cu_city` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cu_review` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BMSMWB-01`
--

INSERT INTO `BMSMWB-01` (`id`, `cu_name`, `cu_city`, `cu_review`) VALUES
(1, 'taapaaa', 'hello', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `BMSMWB-02`
--

CREATE TABLE `BMSMWB-02` (
  `id` int(250) NOT NULL,
  `cu_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cu_city` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cu_review` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BBVS-11`
--
ALTER TABLE `BBVS-11`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BMBBWB-01`
--
ALTER TABLE `BMBBWB-01`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BMBLWB-01`
--
ALTER TABLE `BMBLWB-01`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BMBLWB-02`
--
ALTER TABLE `BMBLWB-02`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BMBWBLC-01`
--
ALTER TABLE `BMBWBLC-01`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BMBWWB-01`
--
ALTER TABLE `BMBWWB-01`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BMBWWB-02`
--
ALTER TABLE `BMBWWB-02`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BMNRWB-01`
--
ALTER TABLE `BMNRWB-01`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BMSMWB-01`
--
ALTER TABLE `BMSMWB-01`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BMSMWB-02`
--
ALTER TABLE `BMSMWB-02`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BBVS-11`
--
ALTER TABLE `BBVS-11`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `BMBBWB-01`
--
ALTER TABLE `BMBBWB-01`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `BMBLWB-01`
--
ALTER TABLE `BMBLWB-01`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `BMBLWB-02`
--
ALTER TABLE `BMBLWB-02`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BMBWBLC-01`
--
ALTER TABLE `BMBWBLC-01`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BMBWWB-01`
--
ALTER TABLE `BMBWWB-01`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BMBWWB-02`
--
ALTER TABLE `BMBWWB-02`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BMNRWB-01`
--
ALTER TABLE `BMNRWB-01`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `BMSMWB-01`
--
ALTER TABLE `BMSMWB-01`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `BMSMWB-02`
--
ALTER TABLE `BMSMWB-02`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
