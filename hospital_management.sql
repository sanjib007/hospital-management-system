-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 11, 2018 at 06:25 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `advice`
--

CREATE TABLE `advice` (
  `advice_id` int(11) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `advice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advice`
--

INSERT INTO `advice` (`advice_id`, `prescription_id`, `advice`) VALUES
(4, 8, 'biri kom khaba'),
(5, 8, 'mod basi khaba');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) DEFAULT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('701b277a6d2541ce6dcd5c024b9161a2', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.154 Safari/537.36', 1396877704, 'a:2:{s:9:\"user_data\";s:0:\"\";s:10:\"flexi_auth\";a:7:{s:15:\"user_identifier\";b:0;s:7:\"user_id\";b:0;s:5:\"admin\";b:0;s:5:\"group\";b:0;s:10:\"privileges\";b:0;s:22:\"logged_in_via_password\";b:0;s:19:\"login_session_token\";b:0;}}'),
('52428d7af6a6d5f072d58865990139e2', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.154 Safari/537.36', 1396871948, 'a:2:{s:9:\"user_data\";s:0:\"\";s:10:\"flexi_auth\";a:7:{s:15:\"user_identifier\";s:15:\"rubel@gmail.com\";s:7:\"user_id\";s:2:\"12\";s:5:\"admin\";b:1;s:5:\"group\";a:1:{i:6;s:6:\"Doctor\";}s:10:\"privileges\";a:0:{}s:22:\"logged_in_via_password\";b:1;s:19:\"login_session_token\";s:40:\"ffa5bebaa4d12ca949f92a9869ba2857412ae3ef\";}}'),
('6dc21444f9abe9eaae0403f5f79f80dc', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.154 Safari/537.36', 1396872595, 'a:2:{s:9:\"user_data\";s:0:\"\";s:10:\"flexi_auth\";a:7:{s:15:\"user_identifier\";s:15:\"rubel@gmail.com\";s:7:\"user_id\";s:2:\"12\";s:5:\"admin\";b:1;s:5:\"group\";a:1:{i:6;s:6:\"Doctor\";}s:10:\"privileges\";a:0:{}s:22:\"logged_in_via_password\";b:1;s:19:\"login_session_token\";s:40:\"7f52c7d8c779b4ace963b1bef08a4f01cd3aa75f\";}}'),
('723c08eed29997fc3f44c32bac13fbe8', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.154 Safari/537.36', 1396894390, 'a:2:{s:9:\"user_data\";s:0:\"\";s:10:\"flexi_auth\";a:7:{s:19:\"login_session_token\";s:40:\"be8efcb0648587234d206236107a62083be8737a\";s:22:\"logged_in_via_password\";b:1;s:7:\"user_id\";s:2:\"12\";s:15:\"user_identifier\";s:15:\"rubel@gmail.com\";s:5:\"admin\";b:1;s:5:\"group\";a:1:{i:6;s:6:\"Doctor\";}s:10:\"privileges\";a:0:{}}}'),
('32392a78ce9c10d80b38c89f413ad4d9', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.154 Safari/537.36', 1396894390, 'a:2:{s:9:\"user_data\";s:0:\"\";s:10:\"flexi_auth\";a:7:{s:15:\"user_identifier\";s:15:\"rubel@gmail.com\";s:7:\"user_id\";s:2:\"12\";s:5:\"admin\";b:1;s:5:\"group\";a:1:{i:6;s:6:\"Doctor\";}s:10:\"privileges\";a:0:{}s:22:\"logged_in_via_password\";b:1;s:19:\"login_session_token\";s:40:\"8e875b05f872a4bbe3ee676ee136515fc777cc1f\";}}'),
('27538ae6773e47da247ab119cc9e27bc', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.154 Safari/537.36', 1396873279, 'a:2:{s:9:\"user_data\";s:0:\"\";s:10:\"flexi_auth\";a:7:{s:15:\"user_identifier\";s:15:\"rubel@gmail.com\";s:7:\"user_id\";s:2:\"12\";s:5:\"admin\";b:1;s:5:\"group\";a:1:{i:6;s:6:\"Doctor\";}s:10:\"privileges\";a:0:{}s:22:\"logged_in_via_password\";b:1;s:19:\"login_session_token\";s:40:\"31aa0f0c96218b680657f464a38d84b42cb994a5\";}}'),
('fe64ec85e1c03f873e2630d7bcc2d2c6', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.154 Safari/537.36', 1396873591, 'a:2:{s:9:\"user_data\";s:0:\"\";s:10:\"flexi_auth\";a:7:{s:15:\"user_identifier\";s:15:\"rubel@gmail.com\";s:7:\"user_id\";s:2:\"12\";s:5:\"admin\";b:1;s:5:\"group\";a:1:{i:6;s:6:\"Doctor\";}s:10:\"privileges\";a:0:{}s:22:\"logged_in_via_password\";b:1;s:19:\"login_session_token\";s:40:\"029100a53ad2a533be47f5698f809e7eb02d3766\";}}'),
('44579752deb755c981a24d52ed16cb7f', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.154 Safari/537.36', 1396873896, 'a:2:{s:9:\"user_data\";s:0:\"\";s:10:\"flexi_auth\";a:7:{s:15:\"user_identifier\";s:15:\"rubel@gmail.com\";s:7:\"user_id\";s:2:\"12\";s:5:\"admin\";b:1;s:5:\"group\";a:1:{i:6;s:6:\"Doctor\";}s:10:\"privileges\";a:0:{}s:22:\"logged_in_via_password\";b:1;s:19:\"login_session_token\";s:40:\"339b362fc74ce9e6c152f84d104ddbc6caff2aab\";}}'),
('c97eb1efadb6be2e9fea47747111c5f4', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.154 Safari/537.36', 1396885428, 'a:2:{s:9:\"user_data\";s:0:\"\";s:10:\"flexi_auth\";a:7:{s:15:\"user_identifier\";s:15:\"rubel@gmail.com\";s:7:\"user_id\";s:2:\"12\";s:5:\"admin\";b:1;s:5:\"group\";a:1:{i:6;s:6:\"Doctor\";}s:10:\"privileges\";a:0:{}s:22:\"logged_in_via_password\";b:1;s:19:\"login_session_token\";s:40:\"a446f74db4217106307d6901e32847f6b68d5859\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `complains`
--

CREATE TABLE `complains` (
  `complains_id` int(11) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `complain` varchar(255) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complains`
--

INSERT INTO `complains` (`complains_id`, `prescription_id`, `complain`, `create_date`) VALUES
(6, 8, 'this is hard damage', '2014-04-06 23:40:14'),
(7, 8, 'leg damage', '2014-04-06 23:40:14'),
(8, 8, 'leg broken', '2014-04-06 23:40:14');

-- --------------------------------------------------------

--
-- Table structure for table `demo_user_address`
--

CREATE TABLE `demo_user_address` (
  `uadd_id` int(11) NOT NULL,
  `uadd_uacc_fk` int(11) NOT NULL DEFAULT '0',
  `uadd_alias` varchar(50) NOT NULL DEFAULT '',
  `uadd_recipient` varchar(100) NOT NULL DEFAULT '',
  `uadd_phone` varchar(25) NOT NULL DEFAULT '',
  `uadd_company` varchar(75) NOT NULL DEFAULT '',
  `uadd_address_01` varchar(100) NOT NULL DEFAULT '',
  `uadd_address_02` varchar(100) NOT NULL DEFAULT '',
  `uadd_city` varchar(50) NOT NULL DEFAULT '',
  `uadd_county` varchar(50) NOT NULL DEFAULT '',
  `uadd_post_code` varchar(25) NOT NULL DEFAULT '',
  `uadd_country` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `demo_user_address`
--

INSERT INTO `demo_user_address` (`uadd_id`, `uadd_uacc_fk`, `uadd_alias`, `uadd_recipient`, `uadd_phone`, `uadd_company`, `uadd_address_01`, `uadd_address_02`, `uadd_city`, `uadd_county`, `uadd_post_code`, `uadd_country`) VALUES
(1, 4, 'Home', 'Joe Public', '0123456789', '', '123', '', 'My City', 'My County', 'My Post Code', 'My Country'),
(2, 4, 'Work', 'Joe Public', '0123456789', 'Flexi', '321', '', 'My Work City', 'My Work County', 'My Work Post Code', 'My Work Country');

-- --------------------------------------------------------

--
-- Table structure for table `demo_user_profiles`
--

CREATE TABLE `demo_user_profiles` (
  `upro_id` int(11) NOT NULL,
  `upro_uacc_fk` int(11) NOT NULL DEFAULT '0',
  `upro_first_name` varchar(50) NOT NULL DEFAULT '',
  `upro_last_name` varchar(50) NOT NULL DEFAULT '',
  `upro_phone` varchar(20) NOT NULL,
  `photo_thurm` text NOT NULL,
  `upro_newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `present_address` varchar(200) NOT NULL,
  `permanent_address` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `date_of_birth` varchar(20) NOT NULL,
  `blood_group` varchar(20) NOT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `photo_avater` text NOT NULL,
  `default_visit_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `default_visit_duration` tinyint(3) NOT NULL DEFAULT '15'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `demo_user_profiles`
--

INSERT INTO `demo_user_profiles` (`upro_id`, `upro_uacc_fk`, `upro_first_name`, `upro_last_name`, `upro_phone`, `photo_thurm`, `upro_newsletter`, `present_address`, `permanent_address`, `gender`, `date_of_birth`, `blood_group`, `occupation`, `photo_avater`, `default_visit_price`, `default_visit_duration`) VALUES
(1, 1, 'John', 'Admin', '0123456789', '', 0, '', '', '', '', '', NULL, '', '0.00', 15),
(2, 2, 'Jim', 'Moderator', '0123465798', '', 0, '', '', '', '', '', NULL, '', '0.00', 15),
(3, 3, 'Joe', 'Public', '0123456789', '', 0, '', '', '', '', '', NULL, '', '0.00', 15),
(4, 4, 'tapos', 'ghosh', 'tapos', '', 0, '', '', '', '', '', NULL, '', '0.00', 15),
(5, 5, 'sanjib', 'dhar', '01913', '', 0, '', '', '', '', '', NULL, '', '0.00', 15),
(6, 6, 'monir', 'hossain', '01913455445', '7f0df7cb55fa4d8043cda22164c2ac12_thurm.jpg', 1, 'gulisntan', 'gulistan', 'male', '2014-03-04', 'O-', 'student', '7f0df7cb55fa4d8043cda22164c2ac12_avater.jpg', '0.00', 15),
(7, 7, 'imran', 'sayed', '01913', '5618059b24bbd56a0ce7d3e48b5b79de_thurm.jpg', 0, 'nawabpur', 'dhaka', 'male', '1987-08-31', 'A-', 'student', '5618059b24bbd56a0ce7d3e48b5b79de_avater.jpg', '0.00', 15),
(8, 8, 'munna', 'bhi', '01913', '0c9936bf5d47e7cc1876e3ddb65f3a21_thurm.jpg', 0, 'nawabpur', 'gulistan', 'male', '2014-03-18', 'AB+', 'student', '0c9936bf5d47e7cc1876e3ddb65f3a21_avater.jpg', '300.00', 20),
(9, 9, 'John', 'Smith', '03430483', 'e092261d045a762fbe27da7a27fececf_thurm.jpg', 0, 'nawabpur', 'dhaka', 'male', '1965-05-24', 'O+', 'doctor', 'e092261d045a762fbe27da7a27fececf_avater.jpg', '300.00', 15),
(10, 10, 'Rebeka', 'Miller', '01913', 'fa712132e3bb80af7786de882ad16e15_thurm.jpg', 0, 'gulisntan', 'gulistan', 'female', '2012-02-07', 'O-', 'doctor', 'fa712132e3bb80af7786de882ad16e15_avater.jpg', '500.00', 15),
(11, 11, 'tanvir', 'bhi', '09888', 'd3f0e4646d3b1cb9752de27588d671c0_thurm.jpg', 0, 'dhaka', 'dhaka', 'male', '2014-03-17', 'O+', 'student', 'd3f0e4646d3b1cb9752de27588d671c0_avater.jpg', '0.00', 15),
(12, 12, 'rubel', 'khan', '01913455445', 'e6d9317ba2d8dc9fa1aabb8ba46925ab_thurm.jpg', 0, 'gulshan bangladesh', 'nawabpur dhaka', 'male', '1981-04-21', 'O-', 'doctor', 'e6d9317ba2d8dc9fa1aabb8ba46925ab_avater.jpg', '300.00', 15);

-- --------------------------------------------------------

--
-- Table structure for table `drug_history`
--

CREATE TABLE `drug_history` (
  `drug_id` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `prescription_id` varchar(255) NOT NULL,
  `chlorhexidine` varchar(255) NOT NULL,
  `iron` varchar(255) NOT NULL,
  `antibiotics` varchar(255) NOT NULL,
  `topical_aspirin` varchar(255) NOT NULL,
  `tetracycline` varchar(255) NOT NULL,
  `phenytoin` varchar(255) NOT NULL,
  `cyclosporine` varchar(255) NOT NULL,
  `oral_contraceptives` varchar(255) NOT NULL,
  `antihistamine` varchar(255) NOT NULL,
  `diuretics` varchar(255) NOT NULL,
  `anticoagulants` varchar(255) NOT NULL,
  `insulin` varchar(255) NOT NULL,
  `ca_channel_blocker` varchar(255) NOT NULL,
  `chemotherapy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drug_history`
--

INSERT INTO `drug_history` (`drug_id`, `patient_id`, `prescription_id`, `chlorhexidine`, `iron`, `antibiotics`, `topical_aspirin`, `tetracycline`, `phenytoin`, `cyclosporine`, `oral_contraceptives`, `antihistamine`, `diuretics`, `anticoagulants`, `insulin`, `ca_channel_blocker`, `chemotherapy`) VALUES
(5, '', '8', ';', '1;good', ';', ';', ';', ';', ';', ';', ';', ';', ';', '1;great', ';', '1;');

-- --------------------------------------------------------

--
-- Table structure for table `investigation`
--

CREATE TABLE `investigation` (
  `investigation_id` int(11) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `xray_iov` varchar(255) NOT NULL,
  `osslusal_view` varchar(255) NOT NULL,
  `oblique_view` varchar(255) NOT NULL,
  `tc_dc_esr` varchar(255) NOT NULL,
  `fbs_abf_rbs` varchar(255) NOT NULL,
  `serum` varchar(255) NOT NULL,
  `ct_scan` varchar(255) NOT NULL,
  `mri` varchar(255) NOT NULL,
  `histoparhology` varchar(255) NOT NULL,
  `others` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `investigation`
--

INSERT INTO `investigation` (`investigation_id`, `prescription_id`, `xray_iov`, `osslusal_view`, `oblique_view`, `tc_dc_esr`, `fbs_abf_rbs`, `serum`, `ct_scan`, `mri`, `histoparhology`, `others`) VALUES
(3, 8, '1;sdfds;;;', ';;;;', ';;;;', ';', ';', ';', '1;matha borte egostic', ';', ';;;;', ';');

-- --------------------------------------------------------

--
-- Table structure for table `meda_appointments`
--

CREATE TABLE `meda_appointments` (
  `id` int(11) NOT NULL,
  `appointment_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doctor_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `patient_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL,
  `visit_duration` tinyint(3) UNSIGNED NOT NULL DEFAULT '15',
  `visit_price` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `first_visit` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - reserved, 1 - verifyed, 2 - canceled'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meda_appointments`
--

INSERT INTO `meda_appointments` (`id`, `appointment_description`, `doctor_id`, `patient_id`, `date_created`, `appointment_date`, `appointment_time`, `visit_duration`, `visit_price`, `first_visit`, `status`) VALUES
(1, 'Appointment with a doctor', 2, '2', '2014-03-01 04:15:32', '2014-03-03', '08:00:00', 15, '75.00', 1, 2),
(2, 'Appointment with a doctor', 3, '2', '2014-03-06 05:28:00', '2014-03-07', '09:00:00', 20, '80.00', 1, 0),
(3, NULL, 9, '2', '2014-03-08 05:03:40', '2014-03-10', '09:00:00', 15, '300.00', 1, 0),
(5, NULL, 9, '03-14-19', '2014-03-30 08:46:48', '2014-03-31', '09:15:00', 15, '300.00', 1, 0),
(6, NULL, 9, '', '2014-04-01 19:08:03', '2014-04-02', '10:00:00', 20, '300.00', 1, 0),
(7, NULL, 9, '', '2014-04-01 19:08:06', '2014-04-02', '10:00:00', 20, '300.00', 1, 0),
(8, NULL, 9, '04-14-20', '2014-04-01 19:11:49', '2014-04-02', '10:00:00', 20, '300.00', 1, 0),
(9, NULL, 9, '04-14-23', '2014-04-05 07:20:28', '2014-04-07', '09:15:00', 15, '300.00', 1, 0),
(10, NULL, 12, '04-14-24', '2014-04-05 07:40:44', '2014-04-07', '09:00:00', 10, '300.00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `meda_doctors`
--

CREATE TABLE `meda_doctors` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('f','m') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'm',
  `birth_date` date DEFAULT NULL,
  `title` enum('','Mr.','Ms.','Mrs.','Miss') COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(50) CHARACTER SET latin1 NOT NULL,
  `preferred_language` varchar(2) CHARACTER SET latin1 NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_lastlogin` datetime DEFAULT NULL,
  `registered_from_ip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `last_logged_ip` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `medical_degree` enum('','BMBS','MBBS','MBChB','MB BCh','BMed','MD','MDCM','Dr.MuD','Dr.Med','Cand.med','Med') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'MD',
  `education` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `residency_training` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hospital_affiliations` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `board_certifications` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `awards_and_publications` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `languages_spoken` varchar(125) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `insurances_accepted` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `doctor_photo` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `doctor_photo_thumb` varchar(70) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `work_phone` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `work_mobile_phone` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `default_visit_price` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `default_visit_duration` tinyint(3) UNSIGNED NOT NULL DEFAULT '15',
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `is_removed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `registration_code` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meda_doctors_addresses`
--

CREATE TABLE `meda_doctors_addresses` (
  `id` int(11) NOT NULL,
  `doctor_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `latitude` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `longitude` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `access_level` enum('public','registered') CHARACTER SET latin1 NOT NULL DEFAULT 'public',
  `priority_order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meda_doctors_addresses`
--

INSERT INTO `meda_doctors_addresses` (`id`, `doctor_id`, `address`, `latitude`, `longitude`, `access_level`, `priority_order`, `is_default`, `is_active`) VALUES
(1, 1, '5 Ave, New York, NY 10037', '40.8168702', '-73.9345842', 'public', 0, 1, 1),
(2, 1, '58 Street, New York', '40.7609390', '-73.9670508', 'public', 1, 0, 1),
(3, 1, '37 Street, New Yourk', '40.7540910', '-73.9920790', 'registered', 0, 0, 1),
(4, 2, '5 Ave, New York, NY 10037	', '40.8168702', '-73.9345842', 'public', 0, 0, 1),
(5, 3, '5 Ave, New York, NY 10037', '40.8168702', '-73.9345842', 'public', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `meda_doctors_specialities`
--

CREATE TABLE `meda_doctors_specialities` (
  `id` int(11) NOT NULL,
  `doctor_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `speciality_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meda_doctors_specialities`
--

INSERT INTO `meda_doctors_specialities` (`id`, `doctor_id`, `speciality_id`, `is_default`) VALUES
(1, 1, 12, 0),
(2, 1, 1, 0),
(3, 1, 29, 0),
(4, 3, 4, 0),
(5, 3, 1, 1),
(6, 3, 11, 0),
(7, 2, 5, 0),
(8, 2, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `meda_events_registered`
--

CREATE TABLE `meda_events_registered` (
  `id` int(10) NOT NULL,
  `event_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `first_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meda_schedules`
--

CREATE TABLE `meda_schedules` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `doctor_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date_from` date NOT NULL,
  `date_to` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meda_schedules`
--

INSERT INTO `meda_schedules` (`id`, `name`, `doctor_id`, `date_from`, `date_to`) VALUES
(5, '2012 Half-Year #2', 9, '2012-06-01', '2015-12-31'),
(8, 'General', 10, '2012-09-20', '2014-12-31'),
(9, '', 8, '2014-03-29', '2014-04-30'),
(10, '', 12, '2014-01-07', '2014-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `meda_schedule_timeblocks`
--

CREATE TABLE `meda_schedule_timeblocks` (
  `id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL DEFAULT '0',
  `doctor_address_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `week_day` enum('1','2','3','4','5','6','7') CHARACTER SET latin1 NOT NULL DEFAULT '1',
  `time_from` time NOT NULL DEFAULT '00:00:00',
  `time_to` time NOT NULL DEFAULT '00:00:00',
  `time_slots` varchar(3) CHARACTER SET latin1 NOT NULL DEFAULT '15'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meda_schedule_timeblocks`
--

INSERT INTO `meda_schedule_timeblocks` (`id`, `schedule_id`, `doctor_address_id`, `week_day`, `time_from`, `time_to`, `time_slots`) VALUES
(5, 5, 0, '4', '10:00:00', '12:00:00', '20'),
(6, 5, 0, '6', '16:00:00', '21:00:00', '15'),
(7, 5, 22, '2', '09:00:00', '15:00:00', '15'),
(8, 8, 23, '3', '09:30:00', '17:00:00', '20'),
(9, 8, 24, '5', '08:00:00', '13:00:00', '30'),
(10, 8, 0, '6', '09:00:00', '15:00:00', '15'),
(46, 5, 0, '5', '10:30:00', '12:30:00', '10'),
(47, 9, 0, '2', '15:00:00', '23:00:00', '10'),
(48, 10, 0, '2', '09:00:00', '12:45:00', '10');

-- --------------------------------------------------------

--
-- Table structure for table `meda_timeoffs`
--

CREATE TABLE `meda_timeoffs` (
  `id` int(11) NOT NULL,
  `doctor_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date_from` date DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `date_to` date NOT NULL,
  `time_to` time NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meda_timeoffs`
--

INSERT INTO `meda_timeoffs` (`id`, `doctor_id`, `date_from`, `time_from`, `date_to`, `time_to`, `description`) VALUES
(3, 2, '2014-03-07', '00:00:00', '2014-03-07', '23:55:00', 'family mater'),
(1, 1, '2012-06-01', '00:50:00', '2012-06-23', '08:00:00', 'Vacations');

-- --------------------------------------------------------

--
-- Table structure for table `medical_history`
--

CREATE TABLE `medical_history` (
  `id` int(11) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `cvd` varchar(255) NOT NULL,
  `mi` varchar(255) NOT NULL,
  `heart_valve_prosthesis` varchar(255) NOT NULL,
  `hypertension` varchar(255) NOT NULL,
  `diabetes` varchar(255) NOT NULL,
  `asthma` varchar(255) NOT NULL,
  `epilepsy` varchar(255) NOT NULL,
  `pregnancy` varchar(255) NOT NULL,
  `allergy` varchar(255) NOT NULL,
  `kidney_diseases` varchar(255) NOT NULL,
  `liver_diseases` varchar(255) NOT NULL,
  `anaemia` varchar(255) NOT NULL,
  `lactating_mother` varchar(255) NOT NULL,
  `bleeding_disorders` varchar(255) NOT NULL,
  `traumatic_injury` varchar(255) NOT NULL,
  `radiotherapy_for` varchar(255) NOT NULL,
  `hepatitis` varchar(255) NOT NULL,
  `others` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_history`
--

INSERT INTO `medical_history` (`id`, `prescription_id`, `cvd`, `mi`, `heart_valve_prosthesis`, `hypertension`, `diabetes`, `asthma`, `epilepsy`, `pregnancy`, `allergy`, `kidney_diseases`, `liver_diseases`, `anaemia`, `lactating_mother`, `bleeding_disorders`, `traumatic_injury`, `radiotherapy_for`, `hepatitis`, `others`) VALUES
(3, 4, '1;abcd', ';', ';', ';', ';', ';', ';', ';', ';', ';', ';', ';', '1;efgh', ';', ';', ';', ';', ';'),
(4, 5, '1;abcd', ';', ';', ';', ';', ';', ';', ';', ';', ';', ';', ';', '1;efgh', ';', ';', ';', ';', ';'),
(5, 6, '1;abcd', ';', ';', ';', ';', ';', ';', ';', ';', ';', ';', ';', '1;efgh', ';', ';', ';', ';', ';'),
(6, 7, '1;abcd', ';', ';', ';', ';', ';', ';', ';', ';', ';', ';', ';', '1;efgh', ';', ';', ';', ';', ';'),
(7, 8, '1;good', ';', ';', ';', ';', ';', ';', ';', ';', ';', ';', ';', '1;efgh', ';', ';', ';', ';', ';');

-- --------------------------------------------------------

--
-- Table structure for table `on_examinition`
--

CREATE TABLE `on_examinition` (
  `examinition_id` int(11) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `caries` varchar(255) NOT NULL,
  `gross_caries` varchar(255) NOT NULL,
  `broken_roots` varchar(255) NOT NULL,
  `broken_crown` varchar(255) NOT NULL,
  `swelling` varchar(255) NOT NULL,
  `retained` varchar(255) NOT NULL,
  `periodontal_pocket` varchar(255) NOT NULL,
  `misplaced` varchar(255) NOT NULL,
  `impacted` varchar(255) NOT NULL,
  `erupting` varchar(255) NOT NULL,
  `spacing_between` varchar(255) NOT NULL,
  `unerupted` varchar(255) NOT NULL,
  `missing` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `on_examinition`
--

INSERT INTO `on_examinition` (`examinition_id`, `prescription_id`, `caries`, `gross_caries`, `broken_roots`, `broken_crown`, `swelling`, `retained`, `periodontal_pocket`, `misplaced`, `impacted`, `erupting`, `spacing_between`, `unerupted`, `missing`) VALUES
(4, 8, '1;1;2,4;3;4;', ';;;;', ';;;;', '1;12;3;;', ';;;;', '', ';;;;', ';;;;', ';;;;', ';;;;', ';;;;', ';;;;', ';;;;');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `client_parents_name` varchar(100) NOT NULL,
  `client_name_gen` varchar(20) DEFAULT '0',
  `client_gen_id` varchar(20) DEFAULT '0',
  `email` varchar(50) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `bloodGroup` varchar(20) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `mobile` varchar(30) DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  `permanent_address` varchar(200) DEFAULT NULL,
  `present_address` varchar(150) DEFAULT NULL,
  `image` text,
  `occupation` varchar(100) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `client_name`, `client_parents_name`, `client_name_gen`, `client_gen_id`, `email`, `dateOfBirth`, `bloodGroup`, `Gender`, `status`, `mobile`, `age`, `permanent_address`, `present_address`, `image`, `occupation`, `phone`) VALUES
(6, 'Sharif Ahmed', 'Sahid Ahmed', 'ShaSah', '02-2014-6', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'tapos', 'montu lal ghosh', 'tapmon', '02-2014-12', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'sanjib dhar', 'dulal dhar', 'sandul', '03-14-15', NULL, NULL, NULL, '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'monir hossain', 'nurul haq', 'monnur', '03-14-16', NULL, NULL, NULL, '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'imran sayed', 'safir ma', 'imrsaf', '03-14-17', NULL, NULL, NULL, '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'nazrul', 'akib hasan', 'nazaki', '03-14-19', 'tapos.aa@gmail.com', '2014-03-17', 'O+', 'male', 1, '0808', '20', 'bangladesh', 'dhaka ', NULL, 'student', '12232'),
(20, 'Abul Hasan', 'Kamal Hasan', '0', '04-04-12', NULL, NULL, NULL, NULL, 0, '01714116111', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'kaumil islam', 'oitejkh kdfhd', 'kauoit', '04-14-21', NULL, NULL, NULL, '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'iuou h', 'kukj jhdgf ', 'iuokuk', '04-14-22', NULL, NULL, NULL, 'male', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'arif islam', 'sitladfu jiu', 'arisit', '04-14-23', NULL, NULL, NULL, 'male', 0, '98989', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'mamunRashid', 'jobbarmia', 'mamjob', '04-14-24', 'tapos.aa@gmail.com', '2014-04-29', 'O+', 'male', 1, '89988', '23', 'gulistan ', 'bangshal dhaka', NULL, 'student', '');

-- --------------------------------------------------------

--
-- Table structure for table `prescribe_medicine`
--

CREATE TABLE `prescribe_medicine` (
  `prescripbe_m_id` int(11) NOT NULL,
  `prescription_id` varchar(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `medicine_type` varchar(255) NOT NULL,
  `medicine_name` varchar(255) NOT NULL,
  `medicine_doze` varchar(255) NOT NULL,
  `medicine_period` varchar(255) NOT NULL,
  `medicine_sugg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `appoinment_id` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `patient_gen_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `patient_id`, `doctor_id`, `appoinment_id`, `created_on`, `patient_gen_id`) VALUES
(8, '24', 12, 10, '2014-04-06 23:40:13', '04-14-24');

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `uacc_id` int(11) UNSIGNED NOT NULL,
  `uacc_group_fk` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `uacc_email` varchar(100) NOT NULL DEFAULT '',
  `uacc_username` varchar(15) NOT NULL DEFAULT '',
  `uacc_password` varchar(60) NOT NULL DEFAULT '',
  `uacc_ip_address` varchar(40) NOT NULL DEFAULT '',
  `uacc_salt` varchar(40) NOT NULL DEFAULT '',
  `uacc_activation_token` varchar(40) NOT NULL DEFAULT '',
  `uacc_forgotten_password_token` varchar(40) NOT NULL DEFAULT '',
  `uacc_forgotten_password_expire` datetime DEFAULT NULL,
  `uacc_update_email_token` varchar(40) NOT NULL DEFAULT '',
  `uacc_update_email` varchar(100) NOT NULL DEFAULT '',
  `uacc_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `uacc_suspend` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `uacc_fail_login_attempts` smallint(5) NOT NULL DEFAULT '0',
  `uacc_fail_login_ip_address` varchar(40) NOT NULL DEFAULT '',
  `uacc_date_fail_login_ban` datetime DEFAULT NULL COMMENT 'Time user is banned until due to repeated failed logins',
  `uacc_date_last_login` datetime DEFAULT NULL,
  `uacc_date_added` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`uacc_id`, `uacc_group_fk`, `uacc_email`, `uacc_username`, `uacc_password`, `uacc_ip_address`, `uacc_salt`, `uacc_activation_token`, `uacc_forgotten_password_token`, `uacc_forgotten_password_expire`, `uacc_update_email_token`, `uacc_update_email`, `uacc_active`, `uacc_suspend`, `uacc_fail_login_attempts`, `uacc_fail_login_ip_address`, `uacc_date_fail_login_ban`, `uacc_date_last_login`, `uacc_date_added`) VALUES
(1, 3, 'admin@admin.com', 'admin', '$2a$08$lSOQGNqwBFUEDTxm2Y.hb.mfPEAt/iiGY9kJsZsd4ekLJXLD.tCrq', '::1', 'XKVT29q2Jr', '', '', NULL, '', '', 1, 0, 0, '', NULL, '2014-04-07 13:32:11', '2011-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `ugrp_id` smallint(5) NOT NULL,
  `ugrp_name` varchar(20) NOT NULL DEFAULT '',
  `ugrp_desc` varchar(100) NOT NULL DEFAULT '',
  `ugrp_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`ugrp_id`, `ugrp_name`, `ugrp_desc`, `ugrp_admin`) VALUES
(3, 'Master Admin', 'Master Admin : has full admin access rights.', 1),
(5, 'Receiptionsit', 'this is receiptionist user', 1),
(6, 'Doctor', 'This is doctor part', 1),
(7, 'Nurse', 'This is nurse user ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_login_sessions`
--

CREATE TABLE `user_login_sessions` (
  `usess_uacc_fk` int(11) NOT NULL DEFAULT '0',
  `usess_series` varchar(40) NOT NULL DEFAULT '',
  `usess_token` varchar(40) NOT NULL DEFAULT '',
  `usess_login_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login_sessions`
--

INSERT INTO `user_login_sessions` (`usess_uacc_fk`, `usess_series`, `usess_token`, `usess_login_date`) VALUES
(12, '', '68bb2943ddf7a136ce45c0b099c7a2eceb42d779', '2014-04-06 19:22:55'),
(12, '', 'ff8ef03f973f1579eb655850650037386d16a1bd', '2014-04-06 19:16:41'),
(12, '', 'b11254397f3aa3558e423560177fdca0e21f7659', '2014-04-05 19:10:14'),
(1, '', '8ca86f6269025d179cc933992da896ca8857673d', '2014-04-05 14:15:43'),
(12, '', '09624e53815c1900cdea3b7173c5aad5f4c19ca4', '2014-04-06 19:29:03'),
(12, '', '36311c1bf2d2017ff9a57bb8792592b846f75de9', '2014-04-06 13:47:30'),
(12, '', '06d1d6f5f021a712e879f2a93fa9596d2e4d21ab', '2014-04-07 03:09:28'),
(12, '', '27c4e8543811956fbef519f263cefda3850506bf', '2014-04-07 10:55:45'),
(12, '', '8f1db99c00dd7fb64423b3c4cbab3a1e1e8009c7', '2014-04-07 11:43:14'),
(12, '', '8e875b05f872a4bbe3ee676ee136515fc777cc1f', '2014-04-08 00:13:10'),
(12, '', 'cdea13da161cb1810ee352b9934661432ae24cc1', '2014-04-07 01:46:16'),
(12, '', 'be8efcb0648587234d206236107a62083be8737a', '2014-04-07 12:10:27'),
(12, '', 'a37b19975e170d4334299253c53380febb0fac12', '2014-04-07 12:41:25'),
(12, '', 'ffa5bebaa4d12ca949f92a9869ba2857412ae3ef', '2014-04-07 17:59:08'),
(12, '', '7f52c7d8c779b4ace963b1bef08a4f01cd3aa75f', '2014-04-07 18:09:55'),
(12, '', '31aa0f0c96218b680657f464a38d84b42cb994a5', '2014-04-07 18:21:19'),
(12, '', '029100a53ad2a533be47f5698f809e7eb02d3766', '2014-04-07 18:26:31'),
(12, '', '339b362fc74ce9e6c152f84d104ddbc6caff2aab', '2014-04-07 18:31:36'),
(12, '', 'a446f74db4217106307d6901e32847f6b68d5859', '2014-04-07 21:47:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_privileges`
--

CREATE TABLE `user_privileges` (
  `upriv_id` smallint(5) NOT NULL,
  `upriv_name` varchar(20) NOT NULL DEFAULT '',
  `upriv_desc` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_privileges`
--

INSERT INTO `user_privileges` (`upriv_id`, `upriv_name`, `upriv_desc`) VALUES
(1, 'View Users', 'User can view user account details.'),
(2, 'View User Groups', 'User can view user groups.'),
(3, 'View Privileges', 'User can view privileges.'),
(4, 'Insert User Groups', 'User can insert new user groups.'),
(5, 'Insert Privileges', 'User can insert privileges.'),
(6, 'Update Users', 'User can update user account details.'),
(7, 'Update User Groups', 'User can update user groups.'),
(8, 'Update Privileges', 'User can update user privileges.'),
(9, 'Delete Users', 'User can delete user accounts.'),
(10, 'Delete User Groups', 'User can delete user groups.'),
(11, 'Delete Privileges', 'User can delete user privileges.'),
(12, 'appoinment_booking', 'this section only for receiptionsit part '),
(13, 'doctor_schedule', 'this is for doctor schedule'),
(14, 'admin_config', 'admin config section');

-- --------------------------------------------------------

--
-- Table structure for table `user_privilege_groups`
--

CREATE TABLE `user_privilege_groups` (
  `upriv_groups_id` smallint(5) UNSIGNED NOT NULL,
  `upriv_groups_ugrp_fk` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `upriv_groups_upriv_fk` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_privilege_groups`
--

INSERT INTO `user_privilege_groups` (`upriv_groups_id`, `upriv_groups_ugrp_fk`, `upriv_groups_upriv_fk`) VALUES
(1, 3, 1),
(3, 3, 3),
(4, 3, 4),
(5, 3, 5),
(6, 3, 6),
(7, 3, 7),
(8, 3, 8),
(9, 3, 9),
(10, 3, 10),
(11, 3, 11),
(12, 2, 2),
(13, 2, 4),
(14, 2, 5),
(15, 5, 12),
(16, 3, 12),
(17, 3, 13),
(18, 3, 14);

-- --------------------------------------------------------

--
-- Table structure for table `user_privilege_users`
--

CREATE TABLE `user_privilege_users` (
  `upriv_users_id` smallint(5) NOT NULL,
  `upriv_users_uacc_fk` int(11) NOT NULL DEFAULT '0',
  `upriv_users_upriv_fk` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_privilege_users`
--

INSERT INTO `user_privilege_users` (`upriv_users_id`, `upriv_users_uacc_fk`, `upriv_users_upriv_fk`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 2, 1),
(13, 2, 2),
(14, 2, 3),
(15, 2, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advice`
--
ALTER TABLE `advice`
  ADD PRIMARY KEY (`advice_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity` (`last_activity`);

--
-- Indexes for table `complains`
--
ALTER TABLE `complains`
  ADD PRIMARY KEY (`complains_id`);

--
-- Indexes for table `demo_user_address`
--
ALTER TABLE `demo_user_address`
  ADD PRIMARY KEY (`uadd_id`),
  ADD UNIQUE KEY `uadd_id` (`uadd_id`),
  ADD KEY `uadd_uacc_fk` (`uadd_uacc_fk`);

--
-- Indexes for table `demo_user_profiles`
--
ALTER TABLE `demo_user_profiles`
  ADD PRIMARY KEY (`upro_id`),
  ADD UNIQUE KEY `upro_id` (`upro_id`),
  ADD KEY `upro_uacc_fk` (`upro_uacc_fk`) USING BTREE;

--
-- Indexes for table `drug_history`
--
ALTER TABLE `drug_history`
  ADD PRIMARY KEY (`drug_id`);

--
-- Indexes for table `investigation`
--
ALTER TABLE `investigation`
  ADD PRIMARY KEY (`investigation_id`);

--
-- Indexes for table `meda_appointments`
--
ALTER TABLE `meda_appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `meda_doctors`
--
ALTER TABLE `meda_doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meda_doctors_addresses`
--
ALTER TABLE `meda_doctors_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `meda_doctors_specialities`
--
ALTER TABLE `meda_doctors_specialities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `speciality_id` (`speciality_id`);

--
-- Indexes for table `meda_events_registered`
--
ALTER TABLE `meda_events_registered`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meda_schedules`
--
ALTER TABLE `meda_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `meda_schedule_timeblocks`
--
ALTER TABLE `meda_schedule_timeblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `meda_timeoffs`
--
ALTER TABLE `meda_timeoffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_history`
--
ALTER TABLE `medical_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `on_examinition`
--
ALTER TABLE `on_examinition`
  ADD PRIMARY KEY (`examinition_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescribe_medicine`
--
ALTER TABLE `prescribe_medicine`
  ADD PRIMARY KEY (`prescripbe_m_id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`uacc_id`),
  ADD UNIQUE KEY `uacc_id` (`uacc_id`),
  ADD KEY `uacc_group_fk` (`uacc_group_fk`),
  ADD KEY `uacc_email` (`uacc_email`),
  ADD KEY `uacc_username` (`uacc_username`),
  ADD KEY `uacc_fail_login_ip_address` (`uacc_fail_login_ip_address`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`ugrp_id`),
  ADD UNIQUE KEY `ugrp_id` (`ugrp_id`) USING BTREE;

--
-- Indexes for table `user_login_sessions`
--
ALTER TABLE `user_login_sessions`
  ADD PRIMARY KEY (`usess_token`),
  ADD UNIQUE KEY `usess_token` (`usess_token`);

--
-- Indexes for table `user_privileges`
--
ALTER TABLE `user_privileges`
  ADD PRIMARY KEY (`upriv_id`),
  ADD UNIQUE KEY `upriv_id` (`upriv_id`) USING BTREE;

--
-- Indexes for table `user_privilege_groups`
--
ALTER TABLE `user_privilege_groups`
  ADD PRIMARY KEY (`upriv_groups_id`),
  ADD UNIQUE KEY `upriv_groups_id` (`upriv_groups_id`) USING BTREE,
  ADD KEY `upriv_groups_ugrp_fk` (`upriv_groups_ugrp_fk`),
  ADD KEY `upriv_groups_upriv_fk` (`upriv_groups_upriv_fk`);

--
-- Indexes for table `user_privilege_users`
--
ALTER TABLE `user_privilege_users`
  ADD PRIMARY KEY (`upriv_users_id`),
  ADD UNIQUE KEY `upriv_users_id` (`upriv_users_id`) USING BTREE,
  ADD KEY `upriv_users_uacc_fk` (`upriv_users_uacc_fk`),
  ADD KEY `upriv_users_upriv_fk` (`upriv_users_upriv_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advice`
--
ALTER TABLE `advice`
  MODIFY `advice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `complains`
--
ALTER TABLE `complains`
  MODIFY `complains_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `demo_user_address`
--
ALTER TABLE `demo_user_address`
  MODIFY `uadd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `demo_user_profiles`
--
ALTER TABLE `demo_user_profiles`
  MODIFY `upro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `drug_history`
--
ALTER TABLE `drug_history`
  MODIFY `drug_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `investigation`
--
ALTER TABLE `investigation`
  MODIFY `investigation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `meda_appointments`
--
ALTER TABLE `meda_appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `meda_doctors`
--
ALTER TABLE `meda_doctors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `meda_doctors_addresses`
--
ALTER TABLE `meda_doctors_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `meda_doctors_specialities`
--
ALTER TABLE `meda_doctors_specialities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `meda_events_registered`
--
ALTER TABLE `meda_events_registered`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meda_schedules`
--
ALTER TABLE `meda_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `meda_schedule_timeblocks`
--
ALTER TABLE `meda_schedule_timeblocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `meda_timeoffs`
--
ALTER TABLE `meda_timeoffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `medical_history`
--
ALTER TABLE `medical_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `on_examinition`
--
ALTER TABLE `on_examinition`
  MODIFY `examinition_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `prescribe_medicine`
--
ALTER TABLE `prescribe_medicine`
  MODIFY `prescripbe_m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `uacc_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `ugrp_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_privileges`
--
ALTER TABLE `user_privileges`
  MODIFY `upriv_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_privilege_groups`
--
ALTER TABLE `user_privilege_groups`
  MODIFY `upriv_groups_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_privilege_users`
--
ALTER TABLE `user_privilege_users`
  MODIFY `upriv_users_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
