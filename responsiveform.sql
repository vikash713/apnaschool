-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2024 at 11:53 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `responsiveform`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(50) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_duration` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_duration`) VALUES
('06', 'JAVASCRIPT', '22');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `fname`, `lname`, `password`, `cpassword`, `gender`, `email`, `phone`, `address`) VALUES
(21, 'adi', 'singh', '789', '789', 'Male', 'vikash@123', '789', '789'),
(22, 'ram', 'k', '456', '456', 'Male', 'vikash@123', '456', '456'),
(23, 'vikash', 'kumar', '$2y$10$7OoM0EZPniF4.Qowxb8zwuL6Ec/714eBCUkve4tTcysbJZ2vokJVy', '', '', 'vikash@123', '123', '123'),
(24, 'saurav', 'singh', '$2y$10$9CVxYsAv7G6yWqXsGP342Oy0oAX.AXIGesJiqCdOQd/8O9UmceZsW', '', '', 'vikash@456', '456', '456'),
(25, 'aditya', 'kumar', '$2y$10$0Co5sNyji.CjLix/BXLQse5J3/BQ.KS6yK.jLfgpjfT0HkUXI.9Dq', '', '', 'vikash@123', '123', '123'),
(26, 'vikash', 'singh', '$2y$10$FxnyDmA0DNKp9v.xzlaoG.tXW0b.qF8wD2N1VFEmuGF.4JdJFhYsq', '', '', 'vikash@789', '789', '789');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `fname`, `lname`, `password`, `cpassword`, `gender`, `email`, `phone`, `address`) VALUES
(48, 'nitesh', 'singh', '123', '123', 'C++', 'vikash@123', '123', '123'),
(49, 'vikash', 'kumar', '123', '123', 'C++', 'vikash@123', '123', 'ban'),
(50, 'saurav', 'singh', '123', '123', 'Php', 'vikash@123', '123', '123'),
(51, 'aditya', 'singh', '123', '123', 'Javascript', 'vikash@123', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `fname`, `lname`, `password`, `cpassword`, `gender`, `email`, `phone`, `address`) VALUES
(9, 'vk', 'kumar', '123', '123', 'male', 'a@gmail.com', '123', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
