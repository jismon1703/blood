-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 21, 2023 at 05:39 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jeepro`
--

-- --------------------------------------------------------

--
-- Table structure for table `donation_ekm`
--

DROP TABLE IF EXISTS `donation_ekm`;
CREATE TABLE IF NOT EXISTS `donation_ekm` (
  `BANKID` int NOT NULL,
  `DONATION_CENTERS` char(100) DEFAULT NULL,
  `PLACE` char(100) DEFAULT NULL,
  `CONTACT` char(10) DEFAULT NULL,
  PRIMARY KEY (`BANKID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `donation_ekm`
--

INSERT INTO `donation_ekm` (`BANKID`, `DONATION_CENTERS`, `PLACE`, `CONTACT`) VALUES
(1001, 'IMA VOLUNTARY DONAR BLOOD BANK', 'M G ROAD', '8766545638'),
(1002, 'ALL KERALA BLOOD DONAR ASSOCIATION', 'MARADU', '9087445675'),
(1003, ' BLOOD BANK AMIRTHA', 'ELAMAKARA', '9886566545'),
(1004, 'AIMS BLOOD BANK', 'PONEKARA', '9775654466'),
(1005, 'B4BLOOD', 'PALARIVATTAM', '7667755689');

-- --------------------------------------------------------

--
-- Table structure for table `donation_thiru`
--

DROP TABLE IF EXISTS `donation_thiru`;
CREATE TABLE IF NOT EXISTS `donation_thiru` (
  `BANKID` int NOT NULL,
  `BLOOD_DONATION_CENTER` char(100) DEFAULT NULL,
  `PALCE` char(100) DEFAULT NULL,
  `CONTACT` char(10) DEFAULT NULL,
  PRIMARY KEY (`BANKID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `donation_thiru`
--

INSERT INTO `donation_thiru` (`BANKID`, `BLOOD_DONATION_CENTER`, `PALCE`, `CONTACT`) VALUES
(1001, 'KIMS BLOOD BANK', 'ANAYARA', '8475368349'),
(1002, 'BLOOD DONORS', 'AAKULAM', '9884579334'),
(1003, 'SUPERIOR BLOOD BANK', 'PULLIMOODU', '8483645226'),
(1004, 'FRIENDS TO SUPPORT', 'THYCAUD', '8475364665'),
(1005, 'SREE CHITHRA', 'AAKULAM', '9457346836');

-- --------------------------------------------------------

--
-- Table structure for table `donation_thri`
--

DROP TABLE IF EXISTS `donation_thri`;
CREATE TABLE IF NOT EXISTS `donation_thri` (
  `BANKID` int NOT NULL,
  `BLOOD_DONATION_CENTER` char(100) DEFAULT NULL,
  `PLACE` char(100) DEFAULT NULL,
  `CONTACT` char(10) DEFAULT NULL,
  PRIMARY KEY (`BANKID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `donation_thri`
--

INSERT INTO `donation_thri` (`BANKID`, `BLOOD_DONATION_CENTER`, `PLACE`, `CONTACT`) VALUES
(1001, 'IMA BLOOD BANK', 'RAMAVARMAPURAM', '9754646353'),
(1002, ' BLOOD BANK BCSU', 'PUTHUKADU', '8775674543'),
(1003, 'AI SHIFA BLOOD BANK', 'CHALAKUDY', '9754646353'),
(1004, 'B4 BLOOD', 'THRISSUR', '9754646353'),
(1005, 'MOTHER HOSPITAL BLOOD DONATION CENTER', 'PULLAZHI', '7665542432');

-- --------------------------------------------------------

--
-- Table structure for table `ernakulam`
--

DROP TABLE IF EXISTS `ernakulam`;
CREATE TABLE IF NOT EXISTS `ernakulam` (
  `HOSPID` int DEFAULT NULL,
  `HOSPITAL_NAME` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `BLOOD_GROUP_AVILABLE` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PLACE` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CONTACT` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ernakulam`
--

INSERT INTO `ernakulam` (`HOSPID`, `HOSPITAL_NAME`, `BLOOD_GROUP_AVILABLE`, `PLACE`, `CONTACT`) VALUES
(1001, 'M.J HOSPITAL', 'A+,A-,AB+,O-', 'EDAPPILLY', '7856453897'),
(1002, 'APPOLO HOSPITAL', 'A+,B-,O+,O-', 'PONGAM', '9458475393'),
(1003, 'LITTLE FLOWER HOSPITAL', 'A+,O+,AB-,O-', 'ANGAMALY', '8564534573'),
(1004, 'IMA BLOOD BANK', 'A+,A-,AB-,O+', 'ERNAKULAM', '9687545389'),
(1005, 'LAKESHORE HOSPITAL', 'A+,A-,AB+,O-,O+,AB-', 'KUNDANOOR', '9783336477'),
(1006, 'ERNAKULAM MEDICAL COLLEGE', 'A+,A-,AB+,O-', 'EDAPPILLY', '9574758389'),
(1007, 'AMIRTHA HOSPITAL', 'A-,AB+,O-,AB-', 'PONEKARA', '9877635974'),
(1008, 'GENERAL HOSPITAL', 'A+,A-,AB+,O-', 'ERNAKULAM TOWN', '8347295389'),
(1009, 'CO-OPERATIVE MEDICAL COLLEGE', 'A+,,AB-,O-,O+', 'KALAMASERRY', '9473665374'),
(1010, 'TALUK HEAD QUARTERS HOSPITAL', 'A+,A-,AB-,O-', 'ALUVA', '8374625824');

-- --------------------------------------------------------

--
-- Table structure for table `thrissur`
--

DROP TABLE IF EXISTS `thrissur`;
CREATE TABLE IF NOT EXISTS `thrissur` (
  `HOSPID` int DEFAULT NULL,
  `HOSPITAL_NAME` char(100) DEFAULT NULL,
  `BLOOD_GROUP_AVAILABLE` char(100) DEFAULT NULL,
  `PLACE` char(100) DEFAULT NULL,
  `CONTACT` char(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `thrissur`
--

INSERT INTO `thrissur` (`HOSPID`, `HOSPITAL_NAME`, `BLOOD_GROUP_AVAILABLE`, `PLACE`, `CONTACT`) VALUES
(1001, 'ST JAMES HOSPITAL', 'A+,A-,,B-,,AB-,O+,O-', 'CHALAKUDY', '9857364 65'),
(1002, 'GENERAL HOSPITAL', 'A+,,B+,B-,AB+,,O+,O-', 'THRISSUR', '4765383047'),
(1003, 'JUBILEE MISSION MEDICAL COLLEGE', 'A+,A-,AB-,O-', 'THRISSUR', '845756734'),
(1004, 'CCMK', 'A-,B-,AB+,AB-,O+', 'CHALAKUDY', '9874564836'),
(1005, 'CHALAKUDY TALUK HOSPITAL', 'A+,A-,AB+,AB-,O-', 'CHALAKUDY', '8475663546'),
(1006, 'ST THOMAS HOSPITAL', 'A+,A-,B+,B-,AB-,O+', 'MELOOR', '8754638744'),
(1007, 'AMALA INSTITUTE OF MEDICAL SCIENCE', 'A-,B+,B-,AB-,O+', 'THRISSUR', '0899887665'),
(1008, 'ELITE MISSION HOSPITAL', 'A+,B+,B-,O+,O-', 'KOORKENCHERY', '9877545342'),
(1009, 'ASWANI HOSPITAL', 'B+,B-,AB+,AB-,O+', 'THRISSUR', '9875543376'),
(1010, 'BISHOP ALAPPAT MISSION  HOSPITAL', 'A+,A-,B-,AB+,O+,', 'KARANCHIRA', '9857364 65');

-- --------------------------------------------------------

--
-- Table structure for table `trivandrum`
--

DROP TABLE IF EXISTS `trivandrum`;
CREATE TABLE IF NOT EXISTS `trivandrum` (
  `HOSPID` int DEFAULT NULL,
  `HOSPITAL_NAME` char(100) DEFAULT NULL,
  `BLOOD_GROUP_AVAILABLE` char(100) DEFAULT NULL,
  `PLACE` char(100) DEFAULT NULL,
  `CONTACT` char(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trivandrum`
--

INSERT INTO `trivandrum` (`HOSPID`, `HOSPITAL_NAME`, `BLOOD_GROUP_AVAILABLE`, `PLACE`, `CONTACT`) VALUES
(1001, 'SP FORT HOSPITAL', 'A-,B-,AB+,AB-,O-', 'PAZHAVANGADI', '8438739646'),
(1002, 'PRS HOSPITAL', 'A-,B-,AB+,AB-,O+', 'KALLIPALAM', '9485767333'),
(1003, 'KIMSHEALTH HOSPITAL', 'A-,B+,B-,AB-,O+', 'ANAYARA', '9857456346'),
(1004, 'ANANTHAPURI HOSPITAL & RESEARCH INSTTUTE', 'A+,B+,B-,AB-,O+', 'CHAKAI', '9457338476'),
(1005, 'SK HOSPITAL', 'A+,A-,B-,AB-,O+', 'EDAPAZHANJI', '9374654633'),
(1006, 'COSMOPOLITAN HOSPITAL', 'A-,B-,AB-,O-', 'PATTOM', '9475736836'),
(1007, 'GG HOSPITAL', 'A+,B+,B-,AB-,O-', 'MURINJAPALAM', '7463654672'),
(1008, 'LORDS HOSPITAL', 'A-,B+,B-,AB+,O+', 'CHAKAI', '9485773647'),
(1009, 'JUBILEE MEMORIAL HOSPITAL', 'A+,A-,B-,AB+,O+', 'PALAYAM', '6785346768'),
(1010, 'NIMS MEDICITY HOSPITAL', 'A-,B-,AB+,O+,O-', 'NEYYANTINKARA', '9878676564');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
