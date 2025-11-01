-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 04, 2019 at 05:27 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dms`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `caddress` varchar(10) NOT NULL,
  `cphone` bigint(20) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `caddress`, `cphone`, `cname`, `sid`) VALUES
(2, 'Bandra', 875628572, 'Bobby', 1),
(3, 'Margao', 68439874, 'Mo', 1),
(4, 'Tokyo', 461537126, 'Virgil', 2),
(5, 'Panjim', 38878173, 'Sadio', 4),
(1, 'Palolem', 16524131, 'Andy', 3);

-- --------------------------------------------------------

--
-- Table structure for table `deal`
--

DROP TABLE IF EXISTS `deal`;
CREATE TABLE IF NOT EXISTS `deal` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `deliverydate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`did`),
  KEY `cid` (`cid`),
  KEY `vid` (`vid`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deal`
--

INSERT INTO `deal` (`did`, `cid`, `vid`, `sid`, `deliverydate`) VALUES
(4, 2, 1, 1, '2019-11-03 19:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `salesperson`
--

DROP TABLE IF EXISTS `salesperson`;
CREATE TABLE IF NOT EXISTS `salesperson` (
  `sid` int(11) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `pass` int(11) NOT NULL,
  `Address` varchar(10) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `Salary` bigint(20) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesperson`
--

INSERT INTO `salesperson` (`sid`, `sname`, `pass`, `Address`, `phone`, `Salary`) VALUES
(1, 'Jake', 99, 'Panjim', 1234567890, 80000),
(2, 'Dan', 98, 'Margao', 5647382956, 60000),
(3, 'Samir', 97, 'Vasco', 6587384724, 90000),
(4, 'Wayne', 96, 'Mapusa', 6576587265, 75000);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE IF NOT EXISTS `vehicle` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `vbrand` varchar(10) NOT NULL,
  `vname` varchar(20) NOT NULL,
  `vcolour` varchar(10) NOT NULL,
  `vprice` bigint(20) NOT NULL,
  `vyear` int(11) NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vid`, `vbrand`, `vname`, `vcolour`, `vprice`, `vyear`) VALUES
(2, 'Hyundai', 'Verna', 'Black', 700000, 2016),
(3, 'Honda ', 'Brio', 'Green', 500000, 2018),
(4, 'Mahindra', 'Scorpio', 'White', 1800000, 2010),
(5, 'Hyundai', 'i10', 'Silver', 400000, 2015);

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

DROP TABLE IF EXISTS `visits`;
CREATE TABLE IF NOT EXISTS `visits` (
  `visitid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `visitdate` date NOT NULL,
  PRIMARY KEY (`visitid`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
