-- phpMyAdmin SQL Dump
-- version 5.2.1-1.el7.remi
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 30, 2023 at 09:44 PM
-- Server version: 10.6.12-MariaDB-log
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs340_marm`
--

-- --------------------------------------------------------

--
-- Structure for view `Product_Dimensions`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`cs340_marm`@`%` SQL SECURITY DEFINER VIEW `Product_Dimensions`  AS SELECT `products`.`ProductNumber` AS `ProductID`, `products`.`ProductName` AS `ProductName`, `products`.`ListPrice` AS `ProductPrice`, `segments`.`CategoryName` AS `ProductCategory` FROM (`products` join `segments` on(`products`.`SegmentID` = `segments`.`SegmentID`)) ;

--
-- VIEW `Product_Dimensions`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
