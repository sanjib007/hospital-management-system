-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 11, 2014 at 04:41 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hospital_management`
--
CREATE DATABASE IF NOT EXISTS `hospital_management` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hospital_management`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_type`
--

CREATE TABLE IF NOT EXISTS `admin_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_type` varchar(100) NOT NULL,
  `status` int(11) DEFAULT '1',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `admin_type`
--

INSERT INTO `admin_type` (`id`, `admin_type`, `status`, `created_date`) VALUES
(1, 'admin', 1, '2014-02-10 17:02:59'),
(2, 'reciptionist', 1, '2014-02-10 17:02:59'),
(3, 'doctor', 1, '2014-02-10 17:03:32'),
(4, 'nurse', 1, '2014-02-10 17:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE IF NOT EXISTS `admin_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `present_address` varchar(200) NOT NULL,
  `permanent_address` varchar(200) NOT NULL,
  `type` int(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(1) DEFAULT '1',
  `join_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `image_thurmnail` text,
  `image_avater` text,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `fname`, `lname`, `birthday`, `occupation`, `email`, `mobile`, `present_address`, `permanent_address`, `type`, `password`, `status`, `join_date`, `image_thurmnail`, `image_avater`) VALUES
(1, 'tapos', 'ghosh', '1987-08-31', 'student', 'tapos.aa@gmail.com', '01913455445', 'nawabpur dhaka', 'nawabpur dhaka', 1, '1234567890', 1, '2014-02-10 17:04:55', NULL, NULL),
(2, 'mahadi', 'hasan', '1988-02-10', 'student', 'mahadi@gmail.com', '09088989', 'dhanmondi', 'dhanmondi', 2, '1234567890', 1, '2014-02-10 17:07:08', NULL, NULL),
(3, 'munna', 'bhi', '1985-02-10', 'student', 'munna@gmail.com', '98777', 'nawabpur', 'nawabpur', 3, '1234567890', 1, '2014-02-10 17:07:08', NULL, NULL),
(4, 'sharif', 'bhi', '1988-02-09', 'student', 'sharif@gmail.com', '78989', 'dhaka', 'dhaka', 4, '1234567890', 1, '2014-02-10 17:08:01', NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD CONSTRAINT `admin_user_ibfk_1` FOREIGN KEY (`type`) REFERENCES `admin_type` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
