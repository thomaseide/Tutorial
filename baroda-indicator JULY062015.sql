-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2015 at 03:27 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `baroda-indicator`
--
CREATE DATABASE IF NOT EXISTS `baroda-indicator` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `baroda-indicator`;

-- --------------------------------------------------------

--
-- Table structure for table `atm`
--

DROP TABLE IF EXISTS `atm`;
CREATE TABLE IF NOT EXISTS `atm` (
  `Atm_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Atm_Branchname` varchar(255) NOT NULL,
  `Atm_Address` varchar(255) NOT NULL,
  `Atm_Location` varchar(255) NOT NULL,
  `Atm_Zipcode` int(11) NOT NULL,
  `Atm_Contact_No` double NOT NULL,
  `Atm_Image` varchar(255) NOT NULL,
  `Atm_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Atm_Deleteflag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`Atm_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `atm`
--

INSERT INTO `atm` (`Atm_Id`, `Atm_Branchname`, `Atm_Address`, `Atm_Location`, `Atm_Zipcode`, `Atm_Contact_No`, `Atm_Image`, `Atm_Status`, `Atm_Deleteflag`) VALUES
(5, '4', 'Makarpura,Baroda', '1', 565, 778675659876, 'axis-atm.jpg', 'Active', 'No'),
(8, '6', 'Fatehgunj,Baroda', '7', 4545, 673675476576, 'ex.jpg', 'Active', 'No'),
(9, '6', 'Gorwa,baroda', '18', 4545, 673675476576, 'icici-atm.jpg', 'Active', 'No'),
(10, '5', 'mangalbazar,baroda.', '16', 123, 234344, 'bank.jpg', 'Active', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `atmbranchname`
--

DROP TABLE IF EXISTS `atmbranchname`;
CREATE TABLE IF NOT EXISTS `atmbranchname` (
  `AB_Id` int(20) NOT NULL AUTO_INCREMENT,
  `AB_Branchname` varchar(255) NOT NULL,
  `AB_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `AB_DeleteFlag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`AB_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `atmbranchname`
--

INSERT INTO `atmbranchname` (`AB_Id`, `AB_Branchname`, `AB_Status`, `AB_DeleteFlag`) VALUES
(1, 'BOB', 'Active', 'No'),
(2, 'ICICI', 'Active', 'No'),
(3, 'SBI', 'Active', 'No'),
(4, 'HDFC', 'Active', 'No'),
(5, 'DENA', 'Active', 'No'),
(6, 'SAHARA', 'Active', 'No'),
(7, 'AXIS', 'Active', 'No'),
(8, 'PNB', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `atmlocation`
--

DROP TABLE IF EXISTS `atmlocation`;
CREATE TABLE IF NOT EXISTS `atmlocation` (
  `Alm_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Alm_Name` varchar(255) NOT NULL,
  `Alm_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Alm_DeleteFlag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`Alm_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `atmlocation`
--

INSERT INTO `atmlocation` (`Alm_Id`, `Alm_Name`, `Alm_Status`, `Alm_DeleteFlag`) VALUES
(1, 'Baroda', 'Active', 'No'),
(2, 'Himmatnagar', 'Active', 'No'),
(3, 'Suarat', 'Active', 'No'),
(4, 'Bharuch', 'Active', 'No'),
(5, 'Bhavnagar', 'Active', 'No'),
(6, 'Ahemedabad', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
CREATE TABLE IF NOT EXISTS `bank` (
  `Bnk_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Bnk_Name` varchar(255) NOT NULL,
  `Bnk_Branchname` varchar(255) NOT NULL,
  `Bnk_Contact_No` double NOT NULL,
  `Bnk_Address` varchar(255) NOT NULL,
  `Bnk_Location` varchar(255) NOT NULL,
  `Bnk_Zipcode` int(11) NOT NULL,
  `Bnk_Ifsccode` varchar(255) NOT NULL,
  `Bnk_Images` varchar(255) NOT NULL,
  `Bnk_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Bnk_DeleteFlag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`Bnk_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`Bnk_Id`, `Bnk_Name`, `Bnk_Branchname`, `Bnk_Contact_No`, `Bnk_Address`, `Bnk_Location`, `Bnk_Zipcode`, `Bnk_Ifsccode`, `Bnk_Images`, `Bnk_Status`, `Bnk_DeleteFlag`) VALUES
(1, '6', 'Fatehgunj branch.', 6768876455, 'Fatehgunj,baroda', '7', 0, '4566gvg', 'bob.jpg', 'Active', 'No'),
(2, '3', 'Chokhandi Branch', 665766454, 'Chokhandi ,baroda', '2', 0, 'nmc7667kd8737', 'bank.jpg', 'Active', 'No'),
(9, '7', 'Makarpura', 9876543299, 'makarpura,baroda.', '1', 0, '89iijh7666', 'axis-atm.jpg', 'Active', 'No'),
(10, '3', 'Vaghodiya Branch', 8766656756, 'Vaghodiya,baroda.', '22', 0, 'gg7U8788Y6F', 'bob.jpg', 'Active', 'No'),
(11, '8', 'Maneja Branch', 98765434788, 'Maneja,baroda.', '14', 0, 'hbj6754bn8788', 'bank.jpg', 'Active', 'No'),
(12, '2', 'Kirtistambh Branch', 65554434342, 'Kirtistambh,Baroda', '6', 0, 'oy76u8765th', 'bank.jpg', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `Cat_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Cat_Hotel_Id` int(11) NOT NULL,
  `Cat_Category` varchar(255) NOT NULL,
  `Cat_Foodlist` varchar(255) NOT NULL,
  `Cat_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Cat_Deleteflag` enum('Yes','No') DEFAULT 'No',
  PRIMARY KEY (`Cat_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Cat_Id`, `Cat_Hotel_Id`, `Cat_Category`, `Cat_Foodlist`, `Cat_Status`, `Cat_Deleteflag`) VALUES
(1, 1, 'Veg.', 'Panjabi,gujrati,italiyan,chainise,maxican,kathyawadi,sauthindian', 'Active', 'No'),
(2, 2, 'Non-Veg.', 'hot-dog,chicken-Biriyani,Tanduri,Kabab.', 'Active', 'No'),
(3, 3, 'Fast-Food', 'Chienise,Burger,Sandwich.....', 'Active', 'No'),
(4, 4, 'Cold-Drinks', 'Coco Kola,Sprite,Maza,Cocktail,Mocktail,Limka,Soda', 'Active', 'No'),
(5, 5, 'Salad', 'Fruit Salad,Vegetable Salad.', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

DROP TABLE IF EXISTS `complain`;
CREATE TABLE IF NOT EXISTS `complain` (
  `Com_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Com_Veh_Type` varchar(255) NOT NULL,
  `Com_Veh_No` int(255) NOT NULL,
  `Com_Message` varchar(255) NOT NULL,
  `Com_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Com_Deleteflag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`Com_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`Com_Id`, `Com_Veh_Type`, `Com_Veh_No`, `Com_Message`, `Com_Status`, `Com_Deleteflag`) VALUES
(1, '5', 457, 'This is wrong....', 'Active', 'No'),
(2, '2', 354, 'This is wrong...', 'Active', 'No'),
(3, '3', 778, 'ya i cant believe on them againe...', 'Active', 'No'),
(4, '4', 909, 'I want my money back......', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `configure`
--

DROP TABLE IF EXISTS `configure`;
CREATE TABLE IF NOT EXISTS `configure` (
  `Con_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Con_Title` varchar(225) NOT NULL,
  `Con_StoreName` varchar(225) NOT NULL,
  `Con_MetaDescription` varchar(225) NOT NULL,
  `Con_MetaKeyword` varchar(225) NOT NULL,
  `Con_from_Email_name` varchar(100) NOT NULL,
  `Con_from_Email` varchar(100) NOT NULL,
  `Con_Mobile` varchar(20) NOT NULL,
  `Con_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Con_DeleteFlag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`Con_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `configure`
--

INSERT INTO `configure` (`Con_Id`, `Con_Title`, `Con_StoreName`, `Con_MetaDescription`, `Con_MetaKeyword`, `Con_from_Email_name`, `Con_from_Email`, `Con_Mobile`, `Con_Status`, `Con_DeleteFlag`) VALUES
(1, 'Payment Site', 'Payment Site', 'Payment Site', 'Payment Site', 'Payment Site', 'admin@localhost.com', '12345', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_numbers`
--

DROP TABLE IF EXISTS `emergency_numbers`;
CREATE TABLE IF NOT EXISTS `emergency_numbers` (
  `Emg_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Emg_Category` varchar(255) NOT NULL,
  `Emg_PS_Name` varchar(255) NOT NULL,
  `Emg_Contact_No` double NOT NULL,
  `Emg_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Emg_DeleteFlag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`Emg_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `emergency_numbers`
--

INSERT INTO `emergency_numbers` (`Emg_Id`, `Emg_Category`, `Emg_PS_Name`, `Emg_Contact_No`, `Emg_Status`, `Emg_DeleteFlag`) VALUES
(1, '3', 'Fatehgunj', 3453662888, 'Active', 'No'),
(2, '1', 'Raopura', 6572367686, 'Active', 'No'),
(3, '5', 'Maneja', 6475378836, 'Active', 'No'),
(4, '2', 'Kalaghoda', 87776343355, 'Active', 'No'),
(5, '3', 'Mandvi', 876543587654, 'Active', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_services`
--

DROP TABLE IF EXISTS `emergency_services`;
CREATE TABLE IF NOT EXISTS `emergency_services` (
  `ES_Id` int(11) NOT NULL AUTO_INCREMENT,
  `ES_Name` varchar(255) NOT NULL,
  `ES_Veh_No` varchar(255) NOT NULL,
  `ES_Fare` int(255) NOT NULL,
  `ES_Veh_Category` varchar(255) NOT NULL,
  `ES_Cno` double NOT NULL,
  `ES_Area` varchar(255) NOT NULL,
  `ES_Status` enum('Active','Inactive') NOT NULL,
  `ES_DeleteFalg` enum('Yes','No') NOT NULL,
  PRIMARY KEY (`ES_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `emergency_services`
--

INSERT INTO `emergency_services` (`ES_Id`, `ES_Name`, `ES_Veh_No`, `ES_Fare`, `ES_Veh_Category`, `ES_Cno`, `ES_Area`, `ES_Status`, `ES_DeleteFalg`) VALUES
(1, 'Mr.Kartik mistry', 'GJ6 6789', 100, 'Taxi', 5654757567, 'Jakatnaka', 'Active', 'No'),
(2, 'Mr.Jayram Patel', 'GJ6 6890', 100, 'Auto', 86755645343, 'Makarpura', 'Active', 'No'),
(3, 'Mr.Shailesh Sharma', 'GJ6 6755', 200, 'Van', 87866754445, 'Maneja', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `emgcategory`
--

DROP TABLE IF EXISTS `emgcategory`;
CREATE TABLE IF NOT EXISTS `emgcategory` (
  `EC_Id` int(11) NOT NULL AUTO_INCREMENT,
  `EC_Category` varchar(255) NOT NULL,
  `EC_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `EC_DeleteFlag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`EC_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `emgcategory`
--

INSERT INTO `emgcategory` (`EC_Id`, `EC_Category`, `EC_Status`, `EC_DeleteFlag`) VALUES
(1, 'Ambulance', 'Active', 'No'),
(2, 'Police station', 'Active', 'No'),
(3, 'Fire Brigade', 'Active', 'No'),
(4, 'Animal Health Care', 'Active', 'No'),
(5, 'Blood Bank', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `fare`
--

DROP TABLE IF EXISTS `fare`;
CREATE TABLE IF NOT EXISTS `fare` (
  `Far_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Far_Veh_Type` varchar(255) NOT NULL,
  `Far_Veh_No` int(255) NOT NULL,
  `Far_Contact_No` double NOT NULL,
  `Far_Distance` int(255) NOT NULL,
  `Far_Day_Price` int(255) NOT NULL,
  `Far_Night_Price` int(255) NOT NULL,
  `Far_Image` varchar(255) NOT NULL,
  `Far_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Far_Deleteflag` enum('Yes','No') DEFAULT 'No',
  PRIMARY KEY (`Far_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `fare`
--

INSERT INTO `fare` (`Far_Id`, `Far_Veh_Type`, `Far_Veh_No`, `Far_Contact_No`, `Far_Distance`, `Far_Day_Price`, `Far_Night_Price`, `Far_Image`, `Far_Status`, `Far_Deleteflag`) VALUES
(1, '5', 7867, 34567778787, 15, 56, 66, 'vtcos.jpg', 'Active', 'No'),
(3, '5', 7867, 3576878799, 17, 63, 80, 'hh.jpg', 'Active', 'Yes'),
(4, '4', 6666, 23456788788, 10, 35, 90, 'bus.jpg', 'Active', 'No'),
(5, '3', 77, 0, 66, 44, 44, '140820142763.jpg', 'Active', 'Yes'),
(6, '3', 6765, 0, 89, 67, 90, 'auto-rickshaw.jpg', 'Active', 'No'),
(7, '3', 6543, 0, 15, 66, 87, 'Krishna_151106.jpg', 'Active', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
CREATE TABLE IF NOT EXISTS `hospitals` (
  `Hsp_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Hsp_Name` varchar(255) NOT NULL,
  `Hsp_Address` varchar(255) NOT NULL,
  `Hsp_Location` varchar(255) NOT NULL,
  `Hsp_Zipcode` int(11) NOT NULL,
  `Hsp_Contact_No` double NOT NULL,
  `Hsp_Image` varchar(255) NOT NULL,
  `Hsp_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Hsp_Deleteflag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`Hsp_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`Hsp_Id`, `Hsp_Name`, `Hsp_Address`, `Hsp_Location`, `Hsp_Zipcode`, `Hsp_Contact_No`, `Hsp_Image`, `Hsp_Status`, `Hsp_Deleteflag`) VALUES
(1, 'Ganga jamna Hospital', 'Karelibaug,baroda.', '11', 5656, 56555634333, 'images (2).jpg', 'Active', 'No'),
(2, 'Shardadevi Hospitals', 'maneja,baroda.', '14', 5455, 121236788, 'images(8)', 'Active', 'No'),
(3, 'SSG Hospital', 'Sayajigunj,Baroda', '20', 7776, 43566277887, 'ssg.jpg', 'Active', 'No'),
(4, 'BAPS Hospital', 'Gorwa Baroda', '18', 6546, 232435676798, 'images (1).jpg', 'Active', 'No'),
(5, 'Gunjan Hospital', 'Chhni Jakatnaka,Baroda', '1', 2147, 999999876543, 'images (7).jpg', 'Active', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `hospitalslocation`
--

DROP TABLE IF EXISTS `hospitalslocation`;
CREATE TABLE IF NOT EXISTS `hospitalslocation` (
  `HL_Id` int(10) NOT NULL AUTO_INCREMENT,
  `HL_Location` varchar(255) NOT NULL,
  `HL_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `HL_Deleteflag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`HL_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `hospitalslocation`
--

INSERT INTO `hospitalslocation` (`HL_Id`, `HL_Location`, `HL_Status`, `HL_Deleteflag`) VALUES
(1, 'baroda', 'Active', 'No'),
(2, 'ahemdabad', 'Active', 'No'),
(3, 'Himmatnagar', 'Active', 'No'),
(4, 'Rajasthan', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

DROP TABLE IF EXISTS `industries`;
CREATE TABLE IF NOT EXISTS `industries` (
  `Ind_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Ind_Name` varchar(255) NOT NULL,
  `Ind_Address` varchar(255) NOT NULL,
  `Ind_Location` varchar(255) NOT NULL,
  `Ind_Zipcode` int(11) NOT NULL,
  `Ind_Contact_No` double NOT NULL,
  `Ind_Image` varchar(255) NOT NULL,
  `Ind_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Ind_Deleteflag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`Ind_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`Ind_Id`, `Ind_Name`, `Ind_Address`, `Ind_Location`, `Ind_Zipcode`, `Ind_Contact_No`, `Ind_Image`, `Ind_Status`, `Ind_Deleteflag`) VALUES
(1, 'L&T', 'maneja,baroda.', '14', 5467, 676725365564, 'i.jpg', 'Active', 'No'),
(2, 'FAG', 'Karelibaug,baroda.', '11', 5549, 5465678899, 'ind.jpg', 'Active', 'No'),
(4, 'ABB', 'vaghodiya,baroda.', '22', 3356, 333309873277, 'iex.jpg', 'Active', 'No'),
(12, 'Jyoti', 'Chhani  jakatnaka,baroda', '8', 564302, 88806543266, 'images.jpg', 'Active', 'No'),
(19, 'ABB', 'Maneja,Baroda', '1', 6568, 46568787654, 'cutedoll.jpg', 'Active', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `industries_location`
--

DROP TABLE IF EXISTS `industries_location`;
CREATE TABLE IF NOT EXISTS `industries_location` (
  `IL_Id` int(10) NOT NULL AUTO_INCREMENT,
  `IL_Location` varchar(255) NOT NULL,
  `IL_Status` enum('Active','Inactive') NOT NULL,
  `IL_Deleteflag` enum('Yes','No') NOT NULL,
  PRIMARY KEY (`IL_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `industries_location`
--

INSERT INTO `industries_location` (`IL_Id`, `IL_Location`, `IL_Status`, `IL_Deleteflag`) VALUES
(1, 'vadodara', 'Active', 'No'),
(2, 'ahmedabad', 'Active', 'No'),
(3, 'surat', 'Active', 'No'),
(4, 'ahmedabad', 'Active', 'No'),
(5, 'surat', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
CREATE TABLE IF NOT EXISTS `job` (
  `Job_Id` int(255) NOT NULL AUTO_INCREMENT,
  `Job_Category` varchar(255) NOT NULL,
  `Job_Field` varchar(255) NOT NULL,
  `Job_Post` varchar(255) NOT NULL,
  `Job_Start_Time` int(255) NOT NULL,
  `Job_End_Time` int(255) NOT NULL,
  `Job_Salary` int(255) NOT NULL,
  `Job_Contact_No` double DEFAULT NULL,
  `Job_Address` varchar(255) NOT NULL,
  `Job_Deleteflag` enum('Yes','No') NOT NULL DEFAULT 'No',
  `Job_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`Job_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`Job_Id`, `Job_Category`, `Job_Field`, `Job_Post`, `Job_Start_Time`, `Job_End_Time`, `Job_Salary`, `Job_Contact_No`, `Job_Address`, `Job_Deleteflag`, `Job_Status`) VALUES
(1, '2', 'Mechanical  Engg.', 'senior engg', 8, 0, 8000, 123456228, 'GIDC,Makarpura rod,Baroda', 'No', 'Active'),
(2, '3', 'info.tech', 'Teachering', 8, 0, 17000, 78778765544, 'shastri bridge,fategunj,baroda.', 'No', 'Active'),
(7, '1', 'Info.Tech', 'Fresher', 2, 0, 50000, 87878965, 'safron tower,sayajigunj,baroda.', 'No', 'Active'),
(8, '3', 'hhfghfhgfgftytyr', 'yttrtr', 1, 0, 987654, 9876543, 'hgfdlkjhgf', 'Yes', 'Active'),
(9, '3', 'hjk', 'jjiuj', 8, 0, 7899998, 89999999, 'hjmkkjj', 'Yes', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `jobpost`
--

DROP TABLE IF EXISTS `jobpost`;
CREATE TABLE IF NOT EXISTS `jobpost` (
  `JP_Id` int(11) NOT NULL AUTO_INCREMENT,
  `JP_Post` varchar(255) NOT NULL,
  `JP_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `JP_DeleteFlag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`JP_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jobpost`
--

INSERT INTO `jobpost` (`JP_Id`, `JP_Post`, `JP_Status`, `JP_DeleteFlag`) VALUES
(1, 'Fresher', 'Active', 'No'),
(2, 'Manager', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `job_category`
--

DROP TABLE IF EXISTS `job_category`;
CREATE TABLE IF NOT EXISTS `job_category` (
  `JC_Id` int(10) NOT NULL AUTO_INCREMENT,
  `JC_Title` varchar(255) NOT NULL,
  `JC_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `JC_DeleteFlag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`JC_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `job_category`
--

INSERT INTO `job_category` (`JC_Id`, `JC_Title`, `JC_Status`, `JC_DeleteFlag`) VALUES
(1, 'Business', 'Active', 'No'),
(2, 'Private', 'Active', 'No'),
(3, 'Government', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `Loc_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Loc_Title` varchar(255) NOT NULL,
  `Loc_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Loc_DeleteFlag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`Loc_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`Loc_Id`, `Loc_Title`, `Loc_Status`, `Loc_DeleteFlag`) VALUES
(1, 'Makarpura', 'Active', 'No'),
(2, 'Chokhandi', 'Active', 'No'),
(3, 'Pratapnagar', 'Active', 'No'),
(4, 'Mandvi', 'Active', 'No'),
(5, 'Lalbaug', 'Active', 'No'),
(6, 'Kirtisthambh', 'Active', 'No'),
(7, 'Fatehgunj', 'Active', 'No'),
(8, 'Chhnai', 'Active', 'No'),
(10, 'Manjalpur', 'Active', 'No'),
(11, 'Karelibaug', 'Active', 'No'),
(12, 'Ravi park', 'Active', 'No'),
(13, 'Tarsali', 'Active', 'No'),
(14, 'Maneja', 'Active', 'No'),
(15, 'Kalaghoda', 'Active', 'No'),
(16, 'Mangalbazar', 'Active', 'No'),
(17, 'Sama Sawali', 'Active', 'No'),
(18, 'Gorwa', 'Active', 'No'),
(19, 'Gotri', 'Active', 'No'),
(20, 'Sayajigunj', 'Active', 'No'),
(21, 'Jakatnaka', 'Active', 'No'),
(22, 'Vaghodiya', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `medical_stores`
--

DROP TABLE IF EXISTS `medical_stores`;
CREATE TABLE IF NOT EXISTS `medical_stores` (
  `Med_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Med_Name` varchar(255) NOT NULL,
  `Med_Address` varchar(255) NOT NULL,
  `Med_Location` varchar(255) NOT NULL,
  `Med_Zipcode` int(255) NOT NULL,
  `Med_Contact_No` double NOT NULL,
  `Med_Image` varchar(255) NOT NULL,
  `Med_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Med_Deleteflag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`Med_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `medical_stores`
--

INSERT INTO `medical_stores` (`Med_Id`, `Med_Name`, `Med_Address`, `Med_Location`, `Med_Zipcode`, `Med_Contact_No`, `Med_Image`, `Med_Status`, `Med_Deleteflag`) VALUES
(1, 'ayurvaidic', 'Mandvi,baroda', '4', 6756, 23456789654, 'Pharmacy.jpg', 'Active', 'No'),
(2, 'Deep Store', 'Pratapnagar,baroda', '2', 5544, 56768978765, '2014-10-02 22.29.34.jpg', 'Active', 'Yes'),
(3, 'Venus Medical store', 'lalbaug,baroda', '5', 5654, 4567890987, 'Inside-a-Medical-Store.jpg', 'Active', 'No'),
(4, 'Raj  Medical stores', 'makarpura,baroda', '1', 6766, 76767989898, 'Inside-a-Medical-Store.jpg', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `Mem_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Mem_Fname` varchar(225) NOT NULL,
  `Mem_Lname` varchar(225) NOT NULL,
  `Mem_Uname` varchar(255) NOT NULL,
  `Mem_UserImg` blob NOT NULL,
  `Mem_MatchesInvited` varchar(255) NOT NULL,
  `Mem_MatchesAccepted` varchar(255) NOT NULL,
  `Mem_MatchesRejected` varchar(255) NOT NULL,
  `Mem_Cno` double NOT NULL,
  `Mem_Email` varchar(50) NOT NULL,
  `Mem_Password` varchar(225) DEFAULT NULL,
  `Mem_OTP` varchar(255) NOT NULL,
  `Mem_Gender` varchar(10) NOT NULL,
  `Mem_Propic` varchar(250) NOT NULL,
  `Mem_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Mem_DeleteFlag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`Mem_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`Mem_Id`, `Mem_Fname`, `Mem_Lname`, `Mem_Uname`, `Mem_UserImg`, `Mem_MatchesInvited`, `Mem_MatchesAccepted`, `Mem_MatchesRejected`, `Mem_Cno`, `Mem_Email`, `Mem_Password`, `Mem_OTP`, `Mem_Gender`, `Mem_Propic`, `Mem_Status`, `Mem_DeleteFlag`) VALUES
(19, 'kartik', '', 'abcd', '', '', '', '', 0, 'kartikk55@gmail.com', '8696938', '', '', '', 'Active', 'No'),
(20, 'kartik', '', 'abcd', '', '', '', '', 0, 'abc@gmail.com', '7975768', '', '', '', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `mobile_stores`
--

DROP TABLE IF EXISTS `mobile_stores`;
CREATE TABLE IF NOT EXISTS `mobile_stores` (
  `Mob_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Mob_Name` varchar(20) NOT NULL,
  `Mob_Address` varchar(255) NOT NULL,
  `Mob_Location` varchar(255) NOT NULL,
  `Mob_Contact_No` double NOT NULL,
  `Mob_Image` varchar(20) NOT NULL,
  `Mob_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Mob_Deleteflag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`Mob_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `mobile_stores`
--

INSERT INTO `mobile_stores` (`Mob_Id`, `Mob_Name`, `Mob_Address`, `Mob_Location`, `Mob_Contact_No`, `Mob_Image`, `Mob_Status`, `Mob_Deleteflag`) VALUES
(1, 'V Mobile gallary', 'fategunj,near by station,baroda', '7', 6567967567, 'vmobile.jpg', 'Active', 'No'),
(2, 'Harish Mobile store', 'madavi,city area,baroda', '4', 5657854545, 'harishmobilestorse.j', 'Active', 'No'),
(4, 'Shree Mobile store', 'EME Circle,shashytribridge road,gorwa.', '18', 9876543212, 'Hydrangeas.jpg', 'Active', 'No'),
(6, 'Rudra Mobile Store', 'opp. science school,karelibuag,vadodara', '11', 87996675654, 'Photo1221.jpg', 'Active', 'No'),
(7, 'Mobile Wala Mobile S', 'OP road,baroda', '13', 456789876543, 'Shree.gif', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `modulefile`
--

DROP TABLE IF EXISTS `modulefile`;
CREATE TABLE IF NOT EXISTS `modulefile` (
  `MF_Id` int(11) NOT NULL AUTO_INCREMENT,
  `MF_Module` varchar(255) NOT NULL,
  `MF_File` text NOT NULL,
  `MF_Menu` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  PRIMARY KEY (`MF_Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `modulefile`
--

INSERT INTO `modulefile` (`MF_Id`, `MF_Module`, `MF_File`, `MF_Menu`) VALUES
(1, 'User Type', 'user_type_detail,user_type_listing', 'Yes'),
(2, 'User', 'user_detail,user_listing', 'Yes'),
(4, 'Page Content', 'page_content_detail,page_content_listing', 'Yes'),
(3, 'Configure', 'configure_listing,configure_detail', 'Yes'),
(10, 'shopping_mall', 'shopping_mall_detail,shopping_mall_listing', 'Yes'),
(8, 'hospitals', 'hospitals_listing,hospitals_detail', 'Yes'),
(6, 'medical_stores', 'medical_stores_detail,medical_stores_listing', 'Yes'),
(5, 'industries', 'industries_listing,industries_detail', 'Yes'),
(11, 'atm', 'atm_detail,atm_listing', 'Yes'),
(16, 'job', 'job_detail,job_listing', 'Yes'),
(7, 'tea_stalls', 'tea_stalls_detail,tea_stalls_listing', 'Yes'),
(19, 'mobile_stores', 'mobile_stores_detail,mobile_stores_listing', 'Yes'),
(12, 'complain', 'complain_detail,complain_listing', 'Yes'),
(14, 'fare', 'fare_detail,fare_listing', 'Yes'),
(13, 'vehicles', 'vehicles_detail,vehicles_listing', 'Yes'),
(55, 'restaurant', 'restaurant_listing,restaurant_detail', 'Yes'),
(88, 'multiplex', 'multiplex_detail,multiplex_listing', 'Yes'),
(43, 'picnic', 'picnic_detail,picnic_listing', 'Yes'),
(33, 'bank', 'bank_listing,bank_detail', 'Yes'),
(36, 'emergency_numbers', 'emergency_numbers_listing,emergency_numbers_detail', 'Yes'),
(99, 'movies', 'movies_listing,movies_detail', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `MV_Id` int(11) NOT NULL AUTO_INCREMENT,
  `MV_Title` varchar(255) NOT NULL,
  `MV_Category` varchar(255) NOT NULL,
  `MV_Year` int(255) NOT NULL,
  `MV_Multiplexname` varchar(255) NOT NULL,
  `MV_Director` varchar(255) NOT NULL,
  `MV_Cast` varchar(255) NOT NULL,
  `MV_Description` varchar(255) NOT NULL,
  `MV_Image` varchar(255) NOT NULL,
  `MV_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `MV_DeleteFlag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`MV_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`MV_Id`, `MV_Title`, `MV_Category`, `MV_Year`, `MV_Multiplexname`, `MV_Director`, `MV_Cast`, `MV_Description`, `MV_Image`, `MV_Status`, `MV_DeleteFlag`) VALUES
(1, 'Kick', 'Action,Comedy Movie', 2015, '1', 'David havan', 'Salman Khan,Jequeline Farnandis', 'Classymovie....             ', 'kick2.jpg', 'Active', 'No'),
(2, 'Badlapur', 'Action Movie', 2015, '9', 'Shreeram Raghvan', 'Varun Dhavan,Yami Gautam.', 'Like that Movie..........                  ', 'badalapur.jpg', 'Active', 'No'),
(3, 'Dolly ki Dolly', '', 2015, '6', 'Sajid Khan', 'Sonam Kapoor', 'This is FUNNY movie.                        ', 'movies.jpeg', 'Active', 'No'),
(4, 'Happy new year', 'Multi-Starer Movie', 2015, '7', 'Farah Khan', 'Deepika Padukone,Abhishek Bhacchan,Sonu Sood,Shahrukh   Khan, Vivan Shah,Boman Irani.', 'This is awsome movie.            ', 'HNP.jpg', 'Active', 'No'),
(7, 'Zid', '', 2015, '10', 'Vikram Bhatt', 'Mannara Chopara', 'Romantic Movie..in This Movie Mannara Dedicated Her Voice For The Beautiful  Song...                 ', 'zid.jpg', 'Active', 'No'),
(9, 'PK', 'Comedy', 2014, '9', 'Yashraj', 'Aamir Khan,Anushka Sharma,Shushnat sinh Rajput', 'One Time Watch...............      ', 'pk.jpg', 'Active', 'No'),
(10, 'Cocktail', '', 2014, '8', 'Imtiaas Ali', 'Deepika Padukone,Dayana Penty,Saif Ali Khan.', 'My Favorite Movie...........                                          ', 'cocktail.jpg', 'Active', 'No'),
(12, 'Bang Bang', 'Action Movie', 2014, '3', 'Reema Kagti', 'Ketrina Kaif,Hritik Roshan', 'Nice But One Time Watch Movie........      ', 'Bang -bang.jpg', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `multiplex`
--

DROP TABLE IF EXISTS `multiplex`;
CREATE TABLE IF NOT EXISTS `multiplex` (
  `Mul_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Mul_Multiplexname` varchar(255) NOT NULL,
  `Mul_Address` varchar(255) NOT NULL,
  `Mul_Location` varchar(255) NOT NULL,
  `Mul_Zipcode` int(255) NOT NULL,
  `Mul_Contact_No` double NOT NULL,
  `Mul_Image` varchar(255) NOT NULL,
  `Mul_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Mul_DeleteFlag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`Mul_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `multiplex`
--

INSERT INTO `multiplex` (`Mul_Id`, `Mul_Multiplexname`, `Mul_Address`, `Mul_Location`, `Mul_Zipcode`, `Mul_Contact_No`, `Mul_Image`, `Mul_Status`, `Mul_DeleteFlag`) VALUES
(1, 'PVR Food Union', 'Near Kiran Motors showroom,Jakatnaka.', '21', 6453, 4253647589, 'HNP.jpg', 'Active', 'No'),
(2, 'Cinemax', 'Gotri road...', '3', 8890, 12345666777, 'kick.jpg', 'Active', 'No'),
(3, 'Fame Vihar', 'Pratapnagar,Baroda', '3', 4567890, 56656776373, 'kick.jpg', 'Active', 'No'),
(4, 'Pratap Cinema', 'sursagar,mangalbazar,baroda', '16', 657809, 123456789, '1421988419.jpg', 'Active', 'No'),
(6, 'Chandan Cinema', '7seas,fategunj,baroda', '7', 78765, 785664354988, 'movies.jpeg', 'Active', 'No'),
(7, 'Inox', 'Gotri Road,Baroda', '16', 7865, 234567888889, '8.jpg', 'Active', 'No'),
(8, 'Mukta Cinema', 'Mandavi,City area,baroda', '4', 8765, 9876543333334, 'kick2.jpg', 'Active', 'No'),
(9, 'Aaradhana  Tokiz', 'Mangal Bazar,baroda', '16', 7722, 98765432, 'badalapur.jpg', 'Active', 'No'),
(10, 'Deep Multiplex', 'Near jakatnaka,chhani,baroda', '17', 8700, 9876543345, 'Bang -bang.jpg', 'Active', 'No'),
(11, 'Vihar Multiplex', 'sama savali Road,baroda', '17', 9999, 9887643222, 'cocktail.jpg', 'Active', 'No'),
(12, 'rajhansh multiplex', 'raopura', '16', 5467, 0, '1421988419.jpg', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `page_content`
--

DROP TABLE IF EXISTS `page_content`;
CREATE TABLE IF NOT EXISTS `page_content` (
  `PC_Id` int(11) NOT NULL AUTO_INCREMENT,
  `PC_Title` varchar(225) NOT NULL,
  `PC_Description` text NOT NULL,
  `PC_Meta_Title` varchar(225) NOT NULL,
  `PC_Meta_Keyword` varchar(225) NOT NULL,
  `PC_Meta_Description` varchar(1000) NOT NULL,
  `Toplink` varchar(255) NOT NULL,
  `Footerlink` varchar(255) NOT NULL,
  `PC_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `PC_DeleteFlag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`PC_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `page_content`
--

INSERT INTO `page_content` (`PC_Id`, `PC_Title`, `PC_Description`, `PC_Meta_Title`, `PC_Meta_Keyword`, `PC_Meta_Description`, `Toplink`, `Footerlink`, `PC_Status`, `PC_DeleteFlag`) VALUES
(1, 'Test', 'Test      ', 'Test', 'Test', 'Test', '', '', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `picnic`
--

DROP TABLE IF EXISTS `picnic`;
CREATE TABLE IF NOT EXISTS `picnic` (
  `Pic_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Pic_Title` varchar(255) NOT NULL,
  `Pic_Address` varchar(255) NOT NULL,
  `Pic_Location` varchar(255) NOT NULL,
  `Pic_Zipcode` int(25) NOT NULL,
  `Pic_Contact_No` double NOT NULL,
  `Pic_Ratings` int(25) NOT NULL,
  `Pic_Images` varchar(255) NOT NULL,
  `Pic_History` text NOT NULL,
  `Pic_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Pic_Deleteflag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`Pic_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `picnic`
--

INSERT INTO `picnic` (`Pic_Id`, `Pic_Title`, `Pic_Address`, `Pic_Location`, `Pic_Zipcode`, `Pic_Contact_No`, `Pic_Ratings`, `Pic_Images`, `Pic_History`, `Pic_Status`, `Pic_Deleteflag`) VALUES
(1, 'Lalbaug', 'lalbaug,baroda.', '5', 7688, 767545768276, 465, 'LalBaug.jpg', '      ', 'Active', 'No'),
(2, 'Kamatibaug', 'Kalaghoda,baroda.', '15', 8900, 7648648, 44, 'kamatibaug.jpg', 'This is The Neat And Clean Place of Baroda      ', 'Active', 'No'),
(3, 'Sardar Garden', 'Karelibaug,baroda', 'Karelibaug', 7676, 76775, 56, 'color_explosion-wallpaper-1920x1080.jpg', 'fghfjhhfdg      ', 'Active', 'Yes'),
(4, 'EME Garden', 'EME Garden,Baroda', 'EME Circle', 5765, 56565, 0, 'images (2).jpg', 'Beautiful Temple is also there..', 'Active', 'Yes'),
(5, 'Narmada Dam', 'maneja,baroda.', '14', 7654, 98765467676, 22, 'narmadadam.jpg', '      ', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `Res_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Res_Name` varchar(255) NOT NULL,
  `Res_Category` varchar(255) NOT NULL,
  `Res_Address` varchar(255) NOT NULL,
  `Res_Location` varchar(255) NOT NULL,
  `Res_Zipcode` int(10) NOT NULL,
  `Res_Contact_No` double NOT NULL,
  `Res_Image` varchar(255) NOT NULL,
  `Res_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Res_Deleteflag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`Res_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`Res_Id`, `Res_Name`, `Res_Category`, `Res_Address`, `Res_Location`, `Res_Zipcode`, `Res_Contact_No`, `Res_Image`, `Res_Status`, `Res_Deleteflag`) VALUES
(1, 'My Reataurant', 'Veg.', 'lalbaug rode,near shivaji temple,baroda.', '5', 3977, 4532679802, 'my restaurant store front-7745.jpg', 'Active', 'No'),
(2, 'KFC Restaurant', 'Non.Veg', 'sayajigaung, baroda.', '20', 3800, 1209349876, 'KFC-390x264.jpg', 'Active', 'No'),
(3, 'Hariyali Restaurant', 'Fast- Food', 'vaghodiya,baroda.', '22', 7665, 9887654322, 'hariyali.jpg', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_mall`
--

DROP TABLE IF EXISTS `shopping_mall`;
CREATE TABLE IF NOT EXISTS `shopping_mall` (
  `Shp_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Shp_Name` varchar(255) NOT NULL,
  `Shp_Address` varchar(255) NOT NULL,
  `Shp_Location` varchar(255) NOT NULL,
  `Shp_Zipcode` int(255) NOT NULL,
  `Shp_Contact_No` double NOT NULL,
  `Shp_Image` varchar(255) NOT NULL,
  `Shp_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Shp_Deleteflag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`Shp_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `shopping_mall`
--

INSERT INTO `shopping_mall` (`Shp_Id`, `Shp_Name`, `Shp_Address`, `Shp_Location`, `Shp_Zipcode`, `Shp_Contact_No`, `Shp_Image`, `Shp_Status`, `Shp_Deleteflag`) VALUES
(1, 'Big Bazar', 'Kirtisthanbh,in city area,baroda', '6', 4655, 2147483647, 'bigbazar.jpg', 'Active', 'No'),
(2, 'Inorbit mall', 'gorwa,baroda', '18', 5659, 2147483647, 'inorbit33.jpg', 'Active', 'No'),
(3, 'More Mega Store', 'Manjalpur, baroda', '1', 7778, 6565763776764, 'Photo1221.jpg', 'Active', 'Yes'),
(4, '7 Seas ', 'Fatehgunj,baroda.', '7', 5467, 8888863453, 'moremegastores.jpg', 'Active', 'No'),
(5, 'Reliance', 'Sama Sawali,Baroda', '17', 8811, 9876543333, '', 'Active', 'No'),
(6, 'Iscon Mall', 'maneja,baroda.', '14', 4321, 987654387676, 'isconmall.jpg', 'Active', 'No'),
(7, 'V-Mart', 'Gotri,Baroda', '19', 8890, 9877553434, '', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_mall_location`
--

DROP TABLE IF EXISTS `shopping_mall_location`;
CREATE TABLE IF NOT EXISTS `shopping_mall_location` (
  `SL_Id` int(10) NOT NULL AUTO_INCREMENT,
  `SL_Location` varchar(255) NOT NULL,
  `SL_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `SL_Deleteflag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`SL_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_legal_record`
--

DROP TABLE IF EXISTS `student_legal_record`;
CREATE TABLE IF NOT EXISTS `student_legal_record` (
  `Stu_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Stu_Email` varchar(255) NOT NULL,
  `Stu_Cno` varchar(255) NOT NULL,
  PRIMARY KEY (`Stu_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `student_legal_record`
--

INSERT INTO `student_legal_record` (`Stu_Id`, `Stu_Email`, `Stu_Cno`) VALUES
(1, 'kartikk55@gmail.com', '8488932981'),
(2, 'abc@gmail.com', '8128183650');

-- --------------------------------------------------------

--
-- Table structure for table `tea_stalls`
--

DROP TABLE IF EXISTS `tea_stalls`;
CREATE TABLE IF NOT EXISTS `tea_stalls` (
  `Tea_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Tea_Name` varchar(255) NOT NULL,
  `Tea_Address` varchar(255) NOT NULL,
  `Tea_Location` varchar(255) NOT NULL,
  `Tea_Zipcode` int(11) NOT NULL,
  `Tea_Contact_No` double NOT NULL,
  `Tea_Image` varchar(255) NOT NULL,
  `Tea_Deleteflag` enum('Yes','No') NOT NULL DEFAULT 'No',
  `Tea_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`Tea_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tea_stalls`
--

INSERT INTO `tea_stalls` (`Tea_Id`, `Tea_Name`, `Tea_Address`, `Tea_Location`, `Tea_Zipcode`, `Tea_Contact_No`, `Tea_Image`, `Tea_Deleteflag`, `Tea_Status`) VALUES
(1, 'National Tea-Stalls', 'sardarnagar,kalaghoda,baroda.', '15', 4555, 45667745565, 'tea stoles.jpg', 'No', 'Active'),
(2, ' Hanif Tea-Stalls', 'New era circle,fatehgunj.', '7', 9908, 23435657679, 'tea stoles.jpg', 'No', 'Active'),
(3, ' CCD Tea-Stalls', 'Chokhanidi,near shivji madir,baroda', '2', 3322, 5656785678, 'tea stoles.jpg', 'No', 'Active'),
(4, 'Gelord Tea-Stalls', 'kirtisthambh,city area .', '6', 8888, 34676756533, 'tea.jpg', 'No', 'Active'),
(5, 'Hariyali Tea-Stalls', 'Nizampura,Baroda.', '1', 6666, 65765765466, '', 'Yes', 'Active'),
(6, 'Joy Tea-Stalls', 'Near Kiran-Motores Show Room,Chhani Jakatnaka..', '8', 8877, 4256645767535, 'tea stoles.jpg', 'No', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tea_stoles`
--

DROP TABLE IF EXISTS `tea_stoles`;
CREATE TABLE IF NOT EXISTS `tea_stoles` (
  `Tea_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Tea_Address` varchar(255) NOT NULL,
  `Tea_Location` varchar(255) NOT NULL,
  `Tea_Zipcode` int(11) NOT NULL,
  `Tea_Contact_No` double NOT NULL,
  `Tea_Deleteflag` enum('Yes','No') NOT NULL DEFAULT 'No',
  `Tea_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`Tea_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tea_stoles`
--

INSERT INTO `tea_stoles` (`Tea_Id`, `Tea_Address`, `Tea_Location`, `Tea_Zipcode`, `Tea_Contact_No`, `Tea_Deleteflag`, `Tea_Status`) VALUES
(1, 'sardarnagar,sayajiguj,baroda.', '1', 4555, 45667745565, 'No', 'Active'),
(2, 'new era circle,hanumanmandir road,surat', '1', 9908, 2343565767, 'No', 'Active'),
(3, 'ramdevnagar,himmatnagar.', '2', 3322, 5656785678, 'No', 'Active'),
(4, 'pramukhbazar,sardarnagar road,panjabgali,ahemedabad', '2', 8888, 34676756533, 'No', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tea_stoles_location`
--

DROP TABLE IF EXISTS `tea_stoles_location`;
CREATE TABLE IF NOT EXISTS `tea_stoles_location` (
  `TL_Id` int(11) NOT NULL AUTO_INCREMENT,
  `TL_Name` varchar(255) NOT NULL,
  `TL_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `TL_DeleteFlag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`TL_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tea_stoles_location`
--

INSERT INTO `tea_stoles_location` (`TL_Id`, `TL_Name`, `TL_Status`, `TL_DeleteFlag`) VALUES
(1, 'Baroda', 'Active', 'No'),
(2, 'Surat', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `Usr_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Usr_UserName` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `Usr_Password` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `Usr_FirstName` varchar(225) COLLATE latin1_general_ci NOT NULL,
  `Usr_LastName` varchar(225) COLLATE latin1_general_ci NOT NULL,
  `Usr_ShortName` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `Usr_No` varchar(225) COLLATE latin1_general_ci NOT NULL,
  `Usr_Type` int(11) NOT NULL,
  `Usr_Status` enum('Active','Inactive') COLLATE latin1_general_ci NOT NULL DEFAULT 'Active',
  `Usr_DeleteFlag` enum('Yes','No') COLLATE latin1_general_ci NOT NULL DEFAULT 'No',
  PRIMARY KEY (`Usr_Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Usr_Id`, `Usr_UserName`, `Usr_Password`, `Usr_FirstName`, `Usr_LastName`, `Usr_ShortName`, `Usr_No`, `Usr_Type`, `Usr_Status`, `Usr_DeleteFlag`) VALUES
(1, 'user1', 'pass1', 'first1', 'last1', 'US', '123', 1, 'Active', 'No'),
(2, 'user2', 'pass2', 'first2', 'last2', '', '987', 2, 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
CREATE TABLE IF NOT EXISTS `usertype` (
  `UT_Id` int(11) NOT NULL AUTO_INCREMENT,
  `UT_Title` varchar(255) NOT NULL,
  `UT_DeleteFlag` enum('Yes','No') NOT NULL,
  `UT_Module` text NOT NULL,
  PRIMARY KEY (`UT_Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`UT_Id`, `UT_Title`, `UT_DeleteFlag`, `UT_Module`) VALUES
(1, 'Super User', 'No', '1,5,6,7,8,10,11,12,13,14,16,19,33,36,43,55,88,99'),
(2, 'User', 'No', '4');

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

DROP TABLE IF EXISTS `user_pwd`;
CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `Veh_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Veh_Category` varchar(255) NOT NULL,
  `Veh_No` varchar(255) NOT NULL,
  `Veh_Contact_No` double NOT NULL,
  `Veh_Image` varchar(255) NOT NULL,
  `Veh_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `Veh_Deleteflag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`Veh_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`Veh_Id`, `Veh_Category`, `Veh_No`, `Veh_Contact_No`, `Veh_Image`, `Veh_Status`, `Veh_Deleteflag`) VALUES
(1, '2', 'GJ6 4563', 976543213, 'taxi.jpg', 'Active', 'No'),
(2, '4', '8GJ6 7065', 3215679809, 'bus.jpg', 'Active', 'No'),
(3, '5', ' GJ6 7867', 3245678765432, 'vtcos.jpg', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `vehiclescategories`
--

DROP TABLE IF EXISTS `vehiclescategories`;
CREATE TABLE IF NOT EXISTS `vehiclescategories` (
  `VC_Id` int(11) NOT NULL AUTO_INCREMENT,
  `VC_Category` varchar(255) NOT NULL,
  `VC_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `VC_DeleteFlag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`VC_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vehiclescategories`
--

INSERT INTO `vehiclescategories` (`VC_Id`, `VC_Category`, `VC_Status`, `VC_DeleteFlag`) VALUES
(2, 'Taxi', 'Active', 'No'),
(3, 'Auto', 'Active', 'No'),
(4, 'Bus', 'Active', 'No'),
(5, 'Vtcos', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `vehiclestype`
--

DROP TABLE IF EXISTS `vehiclestype`;
CREATE TABLE IF NOT EXISTS `vehiclestype` (
  `VT_Id` int(11) NOT NULL AUTO_INCREMENT,
  `VT_Type` varchar(255) NOT NULL,
  `VT_Status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `VTDeleteFlag` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`VT_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vehiclestype`
--

INSERT INTO `vehiclestype` (`VT_Id`, `VT_Type`, `VT_Status`, `VTDeleteFlag`) VALUES
(1, 'Tampo', 'Active', 'No'),
(2, 'taxi', 'Active', 'No'),
(3, 'Auto', 'Active', 'No'),
(4, 'Van', 'Active', 'No');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
