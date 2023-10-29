-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2023 at 08:43 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garage`
--

-- --------------------------------------------------------

--
-- Table structure for table `garage_list_new`
--

CREATE TABLE `garage_list_new` (
  `garage_id` bigint(20) NOT NULL,
  `garage_name` varchar(100) DEFAULT NULL,
  `contact` varchar(20) NOT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `is_approved` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `garage_list_new`
--

INSERT INTO `garage_list_new` (`garage_id`, `garage_name`, `contact`, `latitude`, `longitude`, `userid`, `is_approved`) VALUES
(1, 'test garage', '9876543221', '18.5761792', '73.9934208', 1, 0),
(2, 'test', '9876543210', '19.8508544', '75.9103488', 1, 1),
(3, 'test1', '9876543210', '19.8508544', '75.9103488', 1, 1),
(4, 'test1', '9876543210', '19.8508544', '75.9103488', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_new`
--

CREATE TABLE `users_new` (
  `userid` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_new`
--

INSERT INTO `users_new` (`userid`, `name`, `email`, `username`, `password`, `role`) VALUES
(1, 'test', 'test@localhost.com', 'test', 'abcde', 'user'),
(2, 'Sarvesh', 'sarvesh@localhost.com', 'sarvesh@localhost.com', 'abcde', 'user'),
(3, 'omkar', 'omkar@localhost.com', 'omkar@localhost.com', 'abcde', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_audit`
--

CREATE TABLE `user_audit` (
  `audit_id` int(11) NOT NULL,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_audit`
--

INSERT INTO `user_audit` (`audit_id`, `latitude`, `longitude`, `timestamp`, `user_id`) VALUES
(1, '19.8508544', '75.9103488', '2023-03-17 18:39:35', 3),
(2, '19.8508544', '75.9103488', '2023-03-17 18:40:11', 3),
(3, '19.8508544', '75.9103488', '2023-03-17 18:42:20', 3),
(4, '19.8508544', '75.9103488', '2023-03-17 18:43:22', 3),
(5, '19.8508544', '75.9103488', '2023-03-17 18:43:28', 3),
(6, '19.8508544', '75.9103488', '2023-03-17 18:44:21', 3),
(7, '19.0979984', '74.743564', '2023-03-17 18:44:27', 3),
(8, '19.8508544', '75.9103488', '2023-03-17 18:45:25', 3),
(9, '19.8508544', '75.9103488', '2023-03-17 18:51:28', 3),
(10, '19.8508544', '75.9103488', '2023-03-17 19:22:28', 3),
(11, '19.8508544', '75.9103488', '2023-03-17 19:23:06', 2),
(12, '19.8508544', '75.9103488', '2023-03-17 19:26:12', 3),
(13, '19.8508544', '75.9103488', '2023-03-17 19:26:58', 3),
(14, '19.8508544', '75.9103488', '2023-03-17 19:27:14', 3),
(15, '19.8508544', '75.9103488', '2023-03-17 19:27:16', 3),
(16, '19.8508544', '75.9103488', '2023-03-17 19:27:17', 3),
(17, '19.8508544', '75.9103488', '2023-03-17 19:27:25', 3),
(18, '19.8508544', '75.9103488', '2023-03-17 19:27:29', 3),
(19, '19.8508544', '75.9103488', '2023-03-17 19:38:15', 3),
(20, '19.8508544', '75.9103488', '2023-03-17 19:38:52', 3),
(21, '19.8508544', '75.9103488', '2023-03-17 19:38:57', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `garage_list_new`
--
ALTER TABLE `garage_list_new`
  ADD PRIMARY KEY (`garage_id`),
  ADD KEY `useridfk` (`userid`);

--
-- Indexes for table `users_new`
--
ALTER TABLE `users_new`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `user_audit`
--
ALTER TABLE `user_audit`
  ADD PRIMARY KEY (`audit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `garage_list_new`
--
ALTER TABLE `garage_list_new`
  MODIFY `garage_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_new`
--
ALTER TABLE `users_new`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_audit`
--
ALTER TABLE `user_audit`
  MODIFY `audit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `garage_list_new`
--
ALTER TABLE `garage_list_new`
  ADD CONSTRAINT `useridfk` FOREIGN KEY (`userid`) REFERENCES `users_new` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
