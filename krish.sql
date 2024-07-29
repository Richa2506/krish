-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2024 at 10:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `krish`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '2203');

-- --------------------------------------------------------

--
-- Table structure for table `brochure_downloads`
--

CREATE TABLE `brochure_downloads` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `downloaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brochure_downloads`
--

INSERT INTO `brochure_downloads` (`id`, `name`, `email`, `phone`, `downloaded_at`) VALUES
(1, 'nainesh', 'nainesh.r.nepali@gmail.com', '', '2024-04-14 18:23:25'),
(2, 'nainesh', 'nainesh.r.nepali@gmail.com', '', '2024-04-14 18:36:20'),
(3, 'n', 'nainesh.r.nepali@gmail.com', '', '2024-04-14 18:44:25'),
(4, 'nainesh', 'nainesh.r.nepali@gmail.com', '08320898381', '2024-04-14 19:04:49'),
(5, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 19:07:01'),
(6, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 19:48:21'),
(7, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 19:48:24'),
(8, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 19:48:24'),
(9, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 19:48:25'),
(10, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 19:48:25'),
(11, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 19:48:25'),
(12, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 19:48:25'),
(13, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 19:48:25'),
(14, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 19:48:25'),
(15, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 19:48:26'),
(16, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 19:48:26'),
(17, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 19:48:26'),
(18, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 19:48:26'),
(19, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 19:48:27'),
(20, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 19:48:27'),
(21, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 19:48:27'),
(22, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 19:48:33'),
(23, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 19:48:33'),
(24, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 19:48:33'),
(25, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 19:48:34'),
(26, 'nainesh', 'nainesh.r.nepali@gmail.com', '08320898381', '2024-04-14 19:54:46'),
(27, 'Krishna', 'krishnamn0600@gmail.com', '09016803476', '2024-04-14 20:09:10'),
(28, 'het patel', 'hetpatel1432003@gmail.com', '09714236804', '2024-04-14 20:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `contact_requests`
--

CREATE TABLE `contact_requests` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `select_service` varchar(50) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_requests`
--

INSERT INTO `contact_requests` (`id`, `first_name`, `last_name`, `email`, `phone`, `select_service`, `comments`, `created_at`) VALUES
(1, 'het', 'patel', 'hetpatel1432003@gmail.com', '09714236804', 'Weekdays', 'hii this is for testing!!!!!', '2024-04-14 20:31:19'),
(2, 'het', 'patel', 'hetpatel1432003@gmail.com', '09714236804', 'Weekdays', 'gggg', '2024-04-14 20:32:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `brochure_downloads`
--
ALTER TABLE `brochure_downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_requests`
--
ALTER TABLE `contact_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brochure_downloads`
--
ALTER TABLE `brochure_downloads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `contact_requests`
--
ALTER TABLE `contact_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
