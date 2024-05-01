-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 01, 2024 at 07:28 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `classname` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`cid`, `classname`, `section`) VALUES
(1, '1', 'A '),
(3, '2', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
CREATE TABLE IF NOT EXISTS `exam` (
  `eid` int NOT NULL AUTO_INCREMENT,
  `ename` varchar(40) NOT NULL,
  `term` varchar(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  `class` int NOT NULL,
  `section` varchar(20) NOT NULL,
  `subject` varchar(20) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`eid`, `ename`, `term`, `date`, `class`, `section`, `subject`) VALUES
(1, 'Final Term', '3rd Term', '10/04/2024', 1, 'B', 'Tamil'),
(3, 'Internal', '1st Term', '2/04/2024', 2, 'A ', 'Maths');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
CREATE TABLE IF NOT EXISTS `marks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stid` int NOT NULL,
  `class` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `marks` int NOT NULL,
  `term` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `stid`, `class`, `subject`, `marks`, `term`) VALUES
(1, 1, '1', 'Tamil', 70, '1st Term');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stname` varchar(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` bigint NOT NULL,
  `address` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `stname`, `pname`, `dob`, `gender`, `phone`, `address`, `class`, `section`) VALUES
(1, 'Kumar', 'Kisan', '12/10/2001', 'Male', 7708145488, 'Madurai', '1', 'B'),
(3, 'Jothika', 'Kumaraesan', '22/11/2001', 'Female', 8897865456, 'Vandiyur', '1', 'A ');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `subjectname` varchar(255) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sid`, `subjectname`) VALUES
(1, 'Tamil'),
(2, 'English'),
(5, 'Maths');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `qual` varchar(255) NOT NULL,
  `salary` int NOT NULL,
  `phone` bigint NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `logid` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `qual`, `salary`, `phone`, `email`, `address`, `logid`) VALUES
(1, 'RaviChandran', 'MCA', 100000, 7708326283, 'ravi@gmail.com', 'mdurai', 13);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `phone` bigint NOT NULL,
  `address` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `utype` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `phone`, `address`, `username`, `password`, `utype`) VALUES
(1, 'Hema', 7708145488, 'madurai', 'hema', 'hema', 'Admin '),
(2, 'Nithya', 878998789, 'madurai', 'nithya', 'nithya', 'Admin'),
(3, 'karthi', 7786754533, 'chennai', 'karthi', 'karthi', 'Admin'),
(4, 'Nitheesh', 9943732928, 'madurai', 'nitheesh', 'nitheesh', 'Admin'),
(12, 'Ravi', 7708326283, 'Madurai', 'ravi', 'ravi', 'Teacher'),
(10, 'Peter', 7878787, 'Madras', 'peter', 'peter', 'Admin '),
(11, 'Karthika', 667876765, 'Salem', 'karthika', 'karthika', 'Admin '),
(13, 'Kamal', 6678756455, 'Chennai', 'kamal', 'kamal', 'Teacher');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
