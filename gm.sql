-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2023 at 08:04 PM
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
-- Database: `gm`
--

-- --------------------------------------------------------

--
-- Table structure for table `accs`
--

CREATE TABLE `accs` (
  `ID` int(11) NOT NULL,
  `Userid` int(11) NOT NULL DEFAULT 0,
  `Model` int(5) NOT NULL DEFAULT 0,
  `Status` int(2) NOT NULL DEFAULT 0,
  `Bone` int(2) NOT NULL DEFAULT 0,
  `OffsetX` float NOT NULL,
  `OffsetY` float NOT NULL,
  `OffsetZ` float NOT NULL,
  `ScaleX` float NOT NULL,
  `ScaleY` float NOT NULL,
  `ScaleZ` float NOT NULL,
  `RotX` float NOT NULL,
  `RotY` float NOT NULL,
  `RotZ` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accs_models`
--

CREATE TABLE `accs_models` (
  `ID` int(11) NOT NULL,
  `Model` int(6) NOT NULL,
  `Name` varchar(24) NOT NULL,
  `Money` int(11) NOT NULL DEFAULT 1000000,
  `PP` int(3) NOT NULL DEFAULT 0,
  `Stock` int(3) NOT NULL DEFAULT 20
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accs_models`
--

INSERT INTO `accs_models` (`ID`, `Model`, `Name`, `Money`, `PP`, `Stock`) VALUES
(1, 18947, 'Hat', 0, 50, 99),
(2, 18948, 'Hat', 15000, 0, 99),
(3, 18945, 'Hat', 15000, 0, 100),
(4, 18949, 'Hat', 15000, 0, 100),
(5, 18950, 'Hat', 15000, 0, 99),
(6, 18951, 'Hat', 15000, 0, 100),
(7, 18941, 'Hat', 15000, 0, 100),
(8, 18942, 'Hat', 15000, 0, 100),
(9, 18943, 'Hat', 15000, 0, 99),
(10, 19095, 'Hat', 15000, 0, 100),
(11, 18962, 'Hat', 15000, 0, 100),
(12, 19097, 'Hat', 15000, 0, 100),
(13, 19096, 'Hat', 15000, 0, 100),
(14, 18934, 'Hat', 15000, 0, 100),
(15, 18969, 'Hat', 15000, 0, 99),
(16, 18945, 'Hat', 15000, 0, 100),
(17, 18962, 'Hat', 15000, 0, 100),
(18, 19098, 'Hat', 15000, 0, 100),
(19, 19096, 'Hat', 15000, 0, 100),
(20, 18935, 'Hat', 15000, 0, 100),
(21, 18934, 'Hat', 15000, 0, 100),
(22, 19488, 'Hat', 15000, 0, 100),
(23, 18931, 'Hat', 15000, 0, 100),
(24, 19487, 'Hat', 15000, 0, 100),
(25, 19558, 'Hat', 15000, 0, 100),
(26, 19160, 'Hat', 15000, 0, 100),
(27, 19098, 'Hat', 15000, 0, 100),
(28, 19528, 'Hat', 15000, 0, 99),
(29, 19006, 'Eye Glasses', 15000, 0, 99),
(30, 19008, 'Eye Glasses', 15000, 0, 100),
(31, 19007, 'Eye Glasses', 15000, 0, 100),
(32, 19009, 'Eye Glasses', 15000, 0, 100),
(33, 19010, 'Eye Glasses', 15000, 0, 100),
(34, 19011, 'Eye Glasses', 15000, 0, 99),
(35, 19012, 'Eye Glasses', 15000, 0, 100),
(36, 19018, 'Eye Glasses', 15000, 0, 100),
(37, 19013, 'Eye Glasses', 15000, 0, 100),
(38, 19014, 'Eye Glasses', 15000, 0, 100),
(39, 19015, 'Eye Glasses', 15000, 0, 99),
(40, 19016, 'Eye Glasses', 15000, 0, 100),
(41, 19017, 'Eye Glasses', 15000, 0, 100),
(42, 19019, 'Eye Glasses', 15000, 0, 100),
(43, 19020, 'Eye Glasses', 15000, 0, 100),
(44, 19021, 'Eye Glasses', 15000, 0, 100),
(45, 19022, 'Eye Glasses', 15000, 0, 100),
(46, 19023, 'Eye Glasses', 15000, 0, 100),
(47, 19024, 'Eye Glasses', 15000, 0, 100),
(48, 19025, 'Eye Glasses', 15000, 0, 100),
(49, 19026, 'Eye Glasses', 15000, 0, 100),
(50, 19027, 'Eye Glasses', 15000, 0, 100),
(51, 19028, 'Eye Glasses', 15000, 0, 100),
(52, 19029, 'Eye Glasses', 15000, 0, 100),
(53, 19030, 'Eye Glasses', 15000, 0, 100),
(54, 19031, 'Eye Glasses', 15000, 0, 100),
(55, 19032, 'Eye Glasses', 15000, 0, 100),
(56, 19033, 'Eye Glasses', 15000, 0, 100),
(57, 19034, 'Eye Glasses', 15000, 0, 100),
(58, 19035, 'Eye Glasses', 15000, 0, 100),
(59, 19039, 'Watch', 15000, 0, 100),
(60, 19042, 'Watch', 15000, 0, 100),
(61, 19053, 'Watch', 15000, 0, 100),
(62, 19052, 'Watch', 15000, 0, 100),
(63, 19051, 'Watch', 15000, 0, 100),
(64, 19050, 'Watch', 15000, 0, 100),
(65, 19049, 'Watch', 15000, 0, 100),
(66, 19048, 'Watch', 15000, 0, 100),
(67, 19047, 'Watch', 15000, 0, 100),
(68, 19046, 'Watch', 15000, 0, 100),
(69, 19045, 'Watch', 15000, 0, 100),
(70, 19044, 'Watch', 15000, 0, 100),
(71, 19043, 'Watch', 15000, 0, 100),
(72, 19041, 'Watch', 15000, 0, 100),
(73, 19040, 'Watch', 15000, 0, 100),
(74, 19081, 'Laser', 15000, 0, 100),
(75, 19084, 'Laser', 15000, 0, 100),
(76, 18643, 'Laser', 15000, 0, 100),
(77, 19080, 'Laser', 15000, 0, 100),
(78, 19082, 'Laser', 15000, 0, 100),
(79, 19083, 'Laser', 15000, 0, 99),
(80, 2404, 'Special', 0, 30, 30),
(81, 18637, 'Special', 0, 30, 29),
(82, 18632, 'Special', 0, 30, 29),
(83, 1210, 'Special', 0, 30, 29),
(84, 19878, 'Special', 0, 30, 30),
(85, 2704, 'Special', 0, 30, 30),
(86, 19038, 'Bandana & Masks', 15000, 0, 50),
(87, 19036, 'Bandana & Masks', 15000, 0, 50),
(88, 19037, 'Bandana & Masks', 15000, 0, 50),
(89, 18919, 'Bandana & Masks', 15000, 0, 50),
(90, 18912, 'Bandana & Masks', 15000, 0, 50),
(91, 18913, 'Bandana & Masks', 15000, 0, 50),
(92, 18914, 'Bandana & Masks', 15000, 0, 50),
(93, 18915, 'Bandana & Masks', 15000, 0, 50),
(94, 18916, 'Bandana & Masks', 15000, 0, 50),
(95, 18917, 'Bandana & Masks', 15000, 0, 50),
(96, 18918, 'Bandana & Masks', 15000, 0, 48),
(97, 18920, 'Bandana & Masks', 15000, 0, 50),
(98, 19317, 'Special', 0, 30, 29),
(99, 19318, 'Special', 0, 30, 30);

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `fID` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `pID` int(11) NOT NULL,
  `dece` varchar(256) NOT NULL,
  `ocup` varchar(256) NOT NULL,
  `timp` varchar(256) NOT NULL,
  `varsta` varchar(256) NOT NULL,
  `descriere` varchar(256) NOT NULL,
  `acceptedBy` varchar(50) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atms`
--

CREATE TABLE `atms` (
  `ID` int(11) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `RotX` float NOT NULL,
  `RotY` float NOT NULL,
  `RotZ` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `atms`
--

INSERT INTO `atms` (`ID`, `X`, `Y`, `Z`, `RotX`, `RotY`, `RotZ`) VALUES
(1, 1053.56, -1131.18, 23.479, 0, 0, 0),
(2, 1186.48, -1439.18, 13.121, 0, 0, 90),
(3, 1504.44, -1752.55, 13.1742, 0, 0, 90),
(4, 1920.05, -1765.86, 13.1906, 0, 0, 180),
(5, 1831.7, -1279.57, 13.1769, 0, 0, 90),
(6, 1462.37, -1010.18, 26.4751, 0, 0, 0),
(7, 647.251, -1372.99, 13.2868, 0, 0, 270),
(8, 350.261, -1491, 35.6661, 0, 0, 32.4),
(9, 705.723, -590.465, 15.977, 0, 0, 0),
(10, 476.328, -1761.91, 5.15433, 0, 0, 0),
(11, 1367.33, -1261.61, 13.1708, 0, 0, 270);

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `ID` int(11) NOT NULL,
  `Player` varchar(64) NOT NULL DEFAULT '0',
  `Admin` varchar(64) NOT NULL DEFAULT '0',
  `Reason` varchar(50) NOT NULL DEFAULT 'unknown',
  `IP` varchar(16) NOT NULL DEFAULT 'unknown',
  `Days` int(11) NOT NULL DEFAULT 0,
  `Permanent` int(2) NOT NULL DEFAULT 0,
  `Time` int(11) NOT NULL DEFAULT 0,
  `IPBan` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `ID` int(11) NOT NULL,
  `OwnerSQL` int(11) NOT NULL DEFAULT 0,
  `Owner` varchar(24) NOT NULL DEFAULT 'Admbot',
  `Name` varchar(20) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `IntX` float NOT NULL,
  `IntY` float NOT NULL,
  `IntZ` float NOT NULL,
  `Interior` int(3) NOT NULL DEFAULT 0,
  `Value` int(11) NOT NULL DEFAULT 10000000,
  `Sale` int(11) NOT NULL DEFAULT 0,
  `Level` int(3) NOT NULL DEFAULT 5,
  `Status` int(2) NOT NULL DEFAULT 0,
  `ForAuction` int(2) NOT NULL DEFAULT 0,
  `Type` int(2) NOT NULL DEFAULT 0,
  `Entrance` int(5) NOT NULL DEFAULT 0,
  `Balance` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`ID`, `OwnerSQL`, `Owner`, `Name`, `X`, `Y`, `Z`, `IntX`, `IntY`, `IntZ`, `Interior`, `Value`, `Sale`, `Level`, `Status`, `ForAuction`, `Type`, `Entrance`, `Balance`) VALUES
(1, 0, 'Admbot', 'Los Santos Bank', 1457.09, -1009.92, 26.8438, 1476.84, -1007.62, 3035.75, 2, 10000000, 0, 10, 0, 1, 1, 999, 15984),
(2, 0, 'Admbot', '27/7 Store (1)', 1352.36, -1759.25, 13.5078, 2508.08, 1222.04, 1801.09, 1, 10000000, 0, 10, 0, 1, 2, 999, 50949),
(3, 0, 'Admbot', '27/7 Store (2)', 1315.55, -897.681, 39.5781, 2508.09, 1221.93, 1801.09, 1, 10000000, 0, 10, 0, 1, 2, 999, 7992),
(4, 0, 'Admbot', 'Gun Shop', 1368.94, -1279.77, 13.5469, 286.149, -40.6444, 1001.52, 1, 10000000, 0, 10, 0, 1, 3, 999, 10989),
(5, 8, 'GeorgePity', 'CNN', 1170.91, -1489.64, 22.7551, 0, 0, 0, 0, 10000000, 0, 10, 0, 0, 4, 999, 9990),
(6, 0, 'Admbot', 'Burger Shot', 810.485, -1616.19, 13.5469, 363.413, -74.5786, 1001.51, 10, 10000000, 0, 10, 0, 1, 5, 999, 5994),
(7, 0, 'Admbot', 'Pay N Spray (1)', 1028.26, -1029.88, 32.0894, 0, 0, 0, 0, 10000000, 0, 10, 0, 1, 6, 999, 3996),
(8, 0, 'Admbot', 'Pay N Spray (2)', 491.431, -1734.66, 11.2384, 0, 0, 0, 0, 10000000, 0, 10, 0, 1, 6, 999, 4995),
(9, 0, 'Admbot', 'Pay N Spray (3)', 2072.02, -1828.38, 13.5545, 0, 0, 0, 0, 10000000, 0, 10, 0, 1, 6, 999, 0),
(10, 0, 'Admbot', 'Club', 1837, -1682.44, 13.3246, -2636.71, 1403.39, 906.461, 3, 10000000, 0, 10, 0, 1, 7, 999, 0),
(11, 0, 'Admbot', 'Car Mod Shop', 1044.96, -1026.44, 32.1016, 0, 0, 0, 0, 10000000, 0, 10, 0, 1, 8, 999, 0),
(12, 0, 'Admbot', 'Sex Shop', 1087.69, -922.483, 43.3906, -100.35, -24.6526, 1000.72, 3, 10000000, 0, 10, 0, 1, 9, 999, 999),
(13, 0, 'Admbot', 'Gas Station (1)', 1941.66, -1769.34, 13.6406, 0, 0, 0, 0, 10000000, 0, 10, 0, 1, 10, 999, 0),
(14, 0, 'Admbot', 'Gas Station (2)', 1011.66, -935.737, 42.3281, 0, 0, 0, 0, 10000000, 0, 10, 0, 1, 10, 999, 0),
(15, 0, 'Admbot', 'Gas Station (3)', -78.3835, -1169.91, 2.13556, 0, 0, 0, 0, 10000000, 0, 10, 0, 1, 10, 999, 14985),
(16, 6, 'Razvan', 'Clothing Store (1)', 499.546, -1360.64, 16.369, 207.055, -138.805, 1003.51, 3, 10000000, 0, 10, 0, 0, 11, 999, 13986),
(17, 0, 'Admbot', 'Clothing Store (2)', 2244.3, -1665.54, 15.4766, 207.055, -138.805, 1003.51, 3, 10000000, 0, 10, 0, 1, 11, 999, 3996),
(18, 0, 'Admbot', 'Casino', 1022.56, -1121.42, 23.8723, 1133.38, -14.5412, 1000.68, 12, 10000000, 0, 10, 0, 1, 12, 999, 7992);

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `ID` int(11) NOT NULL,
  `Owner` int(11) NOT NULL DEFAULT 0,
  `OwnerName` varchar(24) NOT NULL DEFAULT 'Admbot',
  `Model` int(3) NOT NULL,
  `Days` int(6) NOT NULL DEFAULT 0,
  `RealDays` int(11) NOT NULL,
  `Color1` int(2) NOT NULL DEFAULT 1,
  `Color2` int(2) NOT NULL DEFAULT 1,
  `Locked` int(2) NOT NULL DEFAULT 0,
  `Fuel` int(3) NOT NULL DEFAULT 100,
  `Points` int(3) NOT NULL DEFAULT 15,
  `Tax` int(11) NOT NULL,
  `Value` int(11) NOT NULL,
  `Neon` int(5) NOT NULL DEFAULT 0,
  `TextColor` int(3) NOT NULL DEFAULT 0,
  `Towed` int(2) NOT NULL DEFAULT 0,
  `Plate` varchar(24) NOT NULL DEFAULT 'NONE',
  `Text` varchar(24) NOT NULL DEFAULT '-',
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `A` float NOT NULL,
  `Km` float NOT NULL DEFAULT 0,
  `PaintJob` int(11) NOT NULL DEFAULT 0,
  `Mods` varchar(50) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `charity`
--

CREATE TABLE `charity` (
  `ID` int(11) NOT NULL,
  `CharityMoney1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `playerID` int(13) NOT NULL,
  `topicID` int(11) NOT NULL,
  `type` int(3) NOT NULL,
  `text` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `byID` int(11) NOT NULL,
  `forID` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `title` varchar(50) NOT NULL,
  `context` text NOT NULL,
  `proof` text NOT NULL,
  `type` int(3) NOT NULL,
  `fID` int(3) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dealership`
--

CREATE TABLE `dealership` (
  `ID` int(11) NOT NULL,
  `Model` int(3) NOT NULL,
  `Stock` int(3) NOT NULL,
  `Value` int(11) NOT NULL,
  `Speed` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dealership`
--

INSERT INTO `dealership` (`ID`, `Model`, `Stock`, `Value`, `Speed`) VALUES
(1, 481, 100, 500000, 120),
(2, 462, 100, 750000, 111),
(3, 404, 100, 1300000, 133),
(4, 418, 100, 1400000, 115),
(5, 543, 100, 1550000, 151),
(6, 479, 100, 1650000, 140),
(7, 471, 100, 1820000, 110),
(8, 401, 100, 1900000, 147),
(9, 474, 100, 1980000, 149),
(10, 410, 100, 2010000, 129),
(11, 517, 100, 2330000, 157),
(12, 527, 100, 2400000, 132),
(13, 550, 100, 2510000, 145),
(14, 458, 100, 2580000, 157),
(15, 482, 100, 2940000, 139),
(16, 500, 100, 3300000, 140),
(17, 516, 100, 4000000, 157),
(18, 542, 100, 4400000, 164),
(19, 439, 100, 4910000, 168),
(20, 549, 100, 5530000, 153),
(21, 434, 100, 6900000, 167),
(22, 545, 100, 7430000, 147),
(23, 496, 100, 7900000, 162),
(24, 540, 100, 8200000, 149),
(25, 507, 100, 8880000, 166),
(26, 575, 100, 9400000, 158),
(27, 567, 100, 9820000, 173),
(28, 566, 100, 12000000, 160),
(29, 535, 100, 14330000, 158),
(30, 554, 100, 15000000, 144),
(31, 426, 100, 16300000, 173),
(32, 589, 100, 16900000, 162),
(33, 586, 100, 17400000, 142),
(34, 505, 100, 18000000, 139),
(35, 603, 100, 22000000, 171),
(36, 463, 100, 23300000, 142),
(37, 475, 100, 25300000, 173),
(38, 536, 100, 26600000, 173),
(39, 405, 100, 29700000, 164),
(40, 587, 100, 32110000, 165),
(41, 412, 100, 35000000, 168),
(42, 468, 100, 37000000, 144),
(43, 579, 100, 38500000, 158),
(44, 565, 100, 40000000, 165),
(45, 558, 100, 42000000, 156),
(46, 480, 100, 47000000, 184),
(47, 521, 100, 50500000, 160),
(48, 461, 100, 55500000, 160),
(49, 495, 100, 60000000, 176),
(50, 562, 100, 69300000, 178),
(51, 402, 100, 75000000, 186),
(52, 506, 100, 78200000, 179),
(53, 415, 100, 82000000, 192),
(54, 429, 100, 94000000, 201),
(55, 451, 100, 120000000, 193),
(56, 560, 100, 150000000, 169),
(57, 522, 30, 210000000, 176),
(58, 541, 30, 270000000, 180),
(59, 411, 30, 330000000, 198),
(60, 519, 20, 500, 270),
(61, 513, 20, 500, 270),
(62, 444, 20, 300, 110),
(63, 556, 20, 300, 113),
(64, 557, 20, 300, 113),
(65, 548, 20, 600, 270);

-- --------------------------------------------------------

--
-- Table structure for table `donatii`
--

CREATE TABLE `donatii` (
  `id` int(11) NOT NULL,
  `nume` text NOT NULL,
  `pin` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `suma` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `id` int(11) NOT NULL,
  `Topic` text NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `ID` int(11) NOT NULL,
  `Player` int(11) NOT NULL DEFAULT 0,
  `Email` varchar(124) NOT NULL DEFAULT 'unknown',
  `Readed` int(2) NOT NULL DEFAULT 0,
  `Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emails2`
--

CREATE TABLE `emails2` (
  `ID` int(10) NOT NULL,
  `Type` int(10) NOT NULL,
  `Name` varchar(245) NOT NULL,
  `Text` varchar(256) NOT NULL,
  `By` varchar(64) NOT NULL DEFAULT 'AdmBot',
  `Date` varchar(256) NOT NULL,
  `Read` int(10) NOT NULL,
  `PanelDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Link` text NOT NULL,
  `playerid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE `factions` (
  `ID` int(11) NOT NULL,
  `Name` varchar(35) NOT NULL,
  `News` varchar(128) NOT NULL DEFAULT 'Nothing',
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `IntX` float NOT NULL,
  `IntY` float NOT NULL,
  `IntZ` float NOT NULL,
  `Level` int(2) NOT NULL DEFAULT 5,
  `Locked` int(2) NOT NULL DEFAULT 1,
  `Interior` int(3) NOT NULL DEFAULT 0,
  `MaxMembers` int(2) NOT NULL DEFAULT 10,
  `RName1` varchar(30) NOT NULL,
  `RName2` varchar(30) NOT NULL,
  `RName3` varchar(30) NOT NULL,
  `RName4` varchar(30) NOT NULL,
  `RName5` varchar(30) NOT NULL,
  `RName6` varchar(30) NOT NULL,
  `RName7` varchar(30) NOT NULL,
  `Skins` varchar(35) NOT NULL DEFAULT '0|0|0|0|0|0|0',
  `Apps` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `factions`
--

INSERT INTO `factions` (`ID`, `Name`, `News`, `X`, `Y`, `Z`, `IntX`, `IntY`, `IntZ`, `Level`, `Locked`, `Interior`, `MaxMembers`, `RName1`, `RName2`, `RName3`, `RName4`, `RName5`, `RName6`, `RName7`, `Skins`, `Apps`) VALUES
(1, 'Los Santos Police Department', 'Bine ai venit', 1555.5, -1675.68, 16.1953, 246.784, 63.9002, 1003.64, 10, 0, 6, 12, 'Officer', 'Detective', 'Sergeant', 'Lieutenant', 'Captain', 'Assistant Chief', 'Chief', '280|282|284|283|288|267|306', 0),
(2, 'Federal Bureau Of Investigations', 'gg', 626.965, -571.79, 17.9207, 288.768, 168.071, 1007.17, 10, 0, 3, 12, 'Professional Staff', 'Special Agent', 'Supervisory Special Agent', 'Special Agent in Charge', 'Section Chief', 'Assistant Director', 'Director', '164|165|165|166|166|295|141', 0),
(3, 'National Guard', 'Nothing', 154.389, 1903.26, 18.757, 322.198, 302.498, 999.148, 10, 0, 5, 12, 'Private', 'Second Lieutenant', 'First Lieutenant', 'Captain', 'Major', 'Colonel', 'General', '285|285|287|287|287|273|191', 0),
(4, 'Grove Street', 'Nothing', 2495.37, -1691.14, 14.7656, 2215.6, -1150.56, 1025.8, 15, 0, 15, 10, 'Street Soldier', 'Supplier', 'Money Launderer', 'Chief Enforcer', 'Councilor', 'Advisor', 'Don', '105|106|107|269|271|270|192', 0),
(5, 'Los Vagos', 'Nothing', 475.998, -1498.98, 20.4844, 2215.6, -1150.56, 1025.8, 15, 0, 15, 10, 'Street Soldier', 'Supplier', 'Money Launderer', 'Chief Enforcer', 'Councilor', 'Advisor', 'Don', '103|102|102|181|104|296|195', 0),
(6, 'The Russian Mafia', 'Nothing', 1122.71, -2036.98, 69.8942, 2215.6, -1150.56, 1025.8, 15, 0, 15, 10, 'Street Soldier', 'Supplier', 'Money Launderer', 'Chief Enforcer', 'Councilor', 'Advisor', 'Don', '111|112|112|98|46|113|190', 0),
(7, 'Uber Company', 'Nothing', 1111.92, -1795.57, 16.5938, 1701.53, -1667.91, 20.2188, 7, 1, 18, 10, 'Trainee', 'Rookie', 'Cabbie', 'Dispatcher', 'Shift Supervisor', 'Company Manager', 'Company Owner', '206|220|234|7|171|17|172', 0),
(8, 'Hitman Agency', 'Nothing', 1073.15, -345.589, 73.9922, 2170.07, 1618.69, 999.977, 10, 1, 1, 10, 'Agent', 'Marksman', 'Agent', 'Special Agent', 'Special Agent in Charge', 'Vice-Director', 'Director', '117|208|186|290|120|294|211', 0),
(9, 'Tow Truck Company', 'Nothing', 2459.39, -2120.87, 13.553, 1701.53, -1667.91, 20.2188, 7, 1, 18, 10, 'Trainee', 'Mechanic', 'Senior Mechanic', 'Supervisor', 'Manager', 'Underboss', 'Company Owner', '95|95|95|95|95|95|95', 0),
(10, 'Paramedic Department', 'Nothing', 2038.14, -1404.7, 17.2526, 389.6, 173.814, 1008.38, 7, 1, 3, 10, 'Candidate', 'Paramedic', 'Paramedic in Charge', 'Commander', 'Field Chief', 'Assistant Chief', 'Paramedic Chief', '95|95|95|95|95|95|95', 0),
(11, 'Gouvernment', 'Nothing', 1481.04, -1772.31, 18.7958, 1468.8, -1798.47, 4369.42, 5, 1, 3, 3, '-', '-', '-', '-', '-', 'Assistant Mayor', 'Mayor', '147|147|147|147|147|147|147', 0);

-- --------------------------------------------------------

--
-- Table structure for table `frequencies`
--

CREATE TABLE `frequencies` (
  `ID` int(11) NOT NULL,
  `WT` int(4) NOT NULL,
  `OwnerSQL` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `frequencies`
--

INSERT INTO `frequencies` (`ID`, `WT`, `OwnerSQL`) VALUES
(1, 2001, 20);

-- --------------------------------------------------------

--
-- Table structure for table `functions`
--

CREATE TABLE `functions` (
  `id` int(11) NOT NULL,
  `playerID` int(13) NOT NULL,
  `type` int(3) NOT NULL,
  `function` text NOT NULL,
  `ip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giftbox`
--

CREATE TABLE `giftbox` (
  `giftCars` int(3) NOT NULL DEFAULT 30,
  `giftVouchers` int(3) NOT NULL DEFAULT 20
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gps`
--

CREATE TABLE `gps` (
  `gpsID` int(11) NOT NULL,
  `gpsLocation` varchar(32) NOT NULL,
  `gpsX` float NOT NULL,
  `gpsY` float NOT NULL,
  `gpsZ` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `gps`
--

INSERT INTO `gps` (`gpsID`, `gpsLocation`, `gpsX`, `gpsY`, `gpsZ`) VALUES
(1, 'Server Dealership', 2131.86, -1150.61, 24.4856),
(2, 'Driving School', 1739.07, -1269.18, 13.5427),
(3, 'Paintball', 1154.69, -1440.02, 15.7969),
(4, 'Crate Place', 1537.52, -1005.45, 24.07),
(7, 'Rent Vehicles', 1779.42, -1696.3, 13.4751);

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `ID` int(11) NOT NULL,
  `OwnerSQL` int(11) NOT NULL DEFAULT 0,
  `Owner` varchar(24) NOT NULL DEFAULT 'Admbot',
  `Description` varchar(50) NOT NULL DEFAULT 'nume-server.ro',
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `ExitX` float NOT NULL,
  `ExitY` float NOT NULL,
  `ExitZ` float NOT NULL,
  `Interior` int(3) NOT NULL DEFAULT 0,
  `Value` int(11) NOT NULL DEFAULT 5000000,
  `Sale` int(11) NOT NULL DEFAULT 0,
  `Level` int(3) NOT NULL DEFAULT 5,
  `Status` int(2) NOT NULL DEFAULT 0,
  `ForAuction` int(2) NOT NULL DEFAULT 0,
  `Balance` int(11) NOT NULL DEFAULT 0,
  `Rent` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`ID`, `OwnerSQL`, `Owner`, `Description`, `X`, `Y`, `Z`, `ExitX`, `ExitY`, `ExitZ`, `Interior`, `Value`, `Sale`, `Level`, `Status`, `ForAuction`, `Balance`, `Rent`) VALUES
(1, 1, 'DanielSy', 'home alone    ', 1496.98, -687.893, 95.5633, 234.229, 1064.65, 1084.21, 6, 10000000, 0, 3, 0, 0, 0, 10000),
(2, 8, 'GeorgePity', 'Resedinta nelu', 1298.55, -797.988, 84.1406, 234.19, 1063.73, 1084.21, 6, 10000000, 0, 10, 0, 0, 0, 10000000),
(3, 0, 'Admbot', 'nume-server.ro', 1535.03, -800.218, 72.8495, 235.458, 1187.02, 1080.26, 3, 7000000, 0, 7, 0, 0, 0, 0),
(4, 0, 'Admbot', 'nume-server.ro', 1540.47, -851.353, 64.3361, -261.321, 1456.63, 1084.37, 4, 7000000, 0, 7, 0, 0, 0, 0),
(5, 0, 'Admbot', 'nume-server.ro', 1421.81, -886.231, 50.6864, 2365.21, -1134.83, 1050.88, 8, 7000000, 0, 7, 0, 0, 0, 0),
(6, 0, 'Admbot', 'nume-server.ro', 1440.67, -926.139, 39.6477, 140.253, 1367.29, 1083.86, 5, 10000000, 0, 10, 0, 0, 0, 0),
(7, 0, 'Admbot', 'nume-server.ro', 1246.22, -909.042, 46.6016, 2308.99, -1212.87, 1049.02, 6, 5000000, 0, 5, 0, 0, 0, 0),
(8, 0, 'Admbot', 'nume-server.ro', 1183.47, -1098.94, 28.2578, 227.083, 1114.37, 1081, 5, 15000000, 0, 10, 0, 0, 0, 0),
(9, 0, 'Admbot', 'nume-server.ro', 1103.4, -1069.52, 31.8899, 140.253, 1367.29, 1083.86, 5, 15000000, 0, 10, 0, 0, 0, 0),
(10, 0, 'Admbot', 'nume-server.ro', 1128, -1021.17, 34.9922, 234.19, 1063.73, 1084.21, 6, 15000000, 0, 10, 0, 0, 0, 0),
(11, 0, 'Admbot', 'nume-server.ro', 852.287, -1423.27, 14.1366, 227.083, 1114.37, 1081, 5, 15000000, 0, 10, 0, 0, 0, 0),
(12, 0, 'Admbot', 'nume-server.ro', 1046.97, -1419.11, 13.5469, 234.19, 1063.73, 1084.21, 6, 30000000, 0, 10, 0, 0, 0, 0),
(13, 0, 'Admbot', 'nume-server.ro', 1286.81, -1349.9, 13.5705, 225.655, 1022.34, 1084.02, 7, 30000000, 0, 10, 0, 0, 0, 0),
(14, 0, 'Admbot', 'nume-server.ro', 1081.21, -1696.78, 13.5469, 140.253, 1367.29, 1083.86, 5, 15000000, 0, 10, 0, 0, 0, 0),
(15, 0, 'Admbot', 'nume-server.ro', 992.628, -1817.63, 13.8941, 2455.62, -1706.44, 1013.51, 2, 5000000, 0, 5, 0, 0, 0, 0),
(16, 0, 'Admbot', 'nume-server.ro', 769.228, -1745.87, 13.0773, 2455.62, -1706.44, 1013.51, 2, 5000000, 0, 5, 0, 0, 0, 0),
(17, 0, 'Admbot', 'nume-server.ro', 693.545, -1705.81, 3.81948, 2496, -1692.6, 1014.74, 3, 5000000, 0, 5, 0, 0, 0, 0),
(18, 0, 'Admbot', 'nume-server.ro', 670.888, -1575.96, 14.2514, 225.655, 1022.34, 1084.02, 7, 15000000, 0, 10, 0, 0, 0, 0),
(19, 0, 'Admbot', 'nume-server.ro', 662.431, -1440.42, 14.8516, 24.04, 1340.17, 1084.38, 10, 7000000, 0, 7, 0, 0, 0, 0),
(20, 0, 'Admbot', 'nume-server.ro', 462.288, -1529.41, 29.9482, 225.655, 1022.34, 1084.02, 7, 20000000, 0, 10, 0, 0, 0, 0),
(21, 0, 'Admbot', 'nume-server.ro', 251.476, -1220.18, 76.1024, 140.17, 1366.07, 1083.86, 5, 30000000, 0, 10, 0, 0, 0, 0),
(22, 0, 'Admbot', 'nume-server.ro', 300.249, -1154.46, 81.3908, 140.17, 1366.07, 1083.86, 5, 30000000, 0, 10, 0, 0, 0, 0),
(23, 0, 'Admbot', 'nume-server.ro', 352.384, -1197.96, 76.5156, 2365.21, -1134.83, 1050.88, 8, 15000000, 0, 7, 0, 0, 0, 0),
(24, 0, 'Admbot', 'nume-server.ro', 700.289, -1060.28, 49.4217, 226.036, 1239.92, 1082.14, 2, 7000000, 0, 7, 0, 0, 0, 0),
(25, 0, 'Admbot', 'nume-server.ro', 827.766, -858, 70.3308, 2455.62, -1706.44, 1013.51, 2, 10000000, 0, 5, 0, 0, 0, 0),
(26, 0, 'Admbot', 'nume-server.ro', 1093.99, -807.127, 107.419, 225.655, 1022.34, 1084.02, 7, 20000000, 0, 10, 0, 0, 0, 0),
(27, 0, 'Admbot', 'nume-server.ro', 1112.64, -742.078, 100.133, 234.229, 1064.65, 1084.21, 6, 20000000, 0, 10, 0, 0, 0, 0),
(28, 0, 'Admbot', 'nume-server.ro', 1094.99, -647.915, 113.648, 1260.64, -785.374, 1091.91, 5, 20000000, 0, 10, 0, 0, 0, 0),
(29, 5, 'Mos.vampiru', 'nume-server.ro', 980.479, -677.269, 121.976, 2324.4, -1148.67, 1050.71, 12, 20000000, 0, 10, 0, 0, 0, 0),
(30, 0, 'Admbot', 'nume-server.ro', 897.849, -677.222, 116.89, 226.036, 1239.92, 1082.14, 2, 7000000, 0, 7, 0, 0, 0, 0),
(31, 0, 'Admbot', 'nume-server.ro', 795.159, -506.148, 18.0129, 2269.69, -1210.57, 1047.56, 10, 20000000, 0, 7, 0, 0, 0, 0),
(32, 0, 'Admbot', 'nume-server.ro', 745.674, -591.142, 18.0129, 2365.21, -1134.83, 1050.88, 8, 20000000, 0, 7, 0, 0, 0, 0),
(33, 0, 'Admbot', 'nume-server.ro', 315.798, -1769.43, 4.62164, 1260.64, -785.374, 1091.91, 5, 20000000, 0, 10, 0, 0, 0, 0),
(34, 0, 'Admbot', 'nume-server.ro', 1658.49, -1691.38, 15.6094, 2324.4, -1148.67, 1050.71, 12, 15000000, 0, 10, 0, 0, 0, 0),
(35, 0, 'Admbot', 'nume-server.ro', 1980.37, -1718.94, 17.0303, 24.04, 1340.17, 1084.38, 10, 10000000, 0, 7, 0, 0, 0, 0),
(36, 0, 'Admbot', 'nume-server.ro', 2385.41, -1711.66, 14.2422, 2496, -1692.6, 1014.74, 3, 20000000, 0, 5, 0, 0, 0, 0),
(37, 0, 'Admbot', 'nume-server.ro', 2129.62, -1361.69, 26.1363, 328.05, 1477.73, 1084.44, 15, 20000000, 0, 5, 0, 0, 0, 0),
(38, 0, 'Admbot', 'nume-server.ro', 2149.86, -1433.74, 26.0703, 2496, -1692.6, 1014.74, 3, 20000000, 0, 5, 0, 0, 0, 0),
(39, 0, 'Admbot', 'nume-server.ro', 2148.94, -1484.9, 26.624, -261.321, 1456.63, 1084.37, 4, 10000000, 0, 7, 0, 0, 0, 0),
(40, 0, 'Admbot', 'nume-server.ro', 2576.68, -1070.74, 69.8322, 223.2, 1287.08, 1082.14, 1, 20000000, 0, 5, 0, 0, 0, 0),
(41, 0, 'Admbot', 'nume-server.ro', 2549.2, -1032.22, 69.5788, 223.2, 1287.08, 1082.14, 1, 20000000, 0, 5, 0, 0, 0, 0),
(42, 0, 'Admbot', 'nume-server.ro', 1939.18, -1114.48, 27.4523, 491.109, 1399.36, 1080.26, 2, 10000000, 0, 7, 0, 0, 0, 0),
(43, 0, 'Admbot', 'nume-server.ro', 1906.09, -1112.94, 26.6641, 491.109, 1399.36, 1080.26, 2, 10000000, 0, 7, 0, 0, 0, 0),
(44, 0, 'Admbot', 'nume-server.ro', 1675.5, -1462.28, 13.6719, 227.083, 1114.37, 1081, 5, 10000000, 0, 10, 0, 0, 0, 0),
(45, 0, 'Admbot', 'nume-server.ro', 1519.1, -1453.92, 14.2084, 2324.4, -1148.67, 1050.71, 12, 10000000, 0, 10, 0, 0, 0, 0),
(46, 6, 'Razvan', 'nume-server.ro', 1377.8, -1753.1, 14.1406, 234.229, 1064.65, 1084.21, 6, 10000000, 0, 10, 0, 0, 0, 1000),
(47, 0, 'Admbot', 'nume-server.ro', 1981.53, -1682.87, 17.0538, 24.04, 1340.17, 1084.38, 10, 99999999, 0, 10, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `house_objects`
--

CREATE TABLE `house_objects` (
  `ID` int(11) NOT NULL,
  `Model` int(6) NOT NULL,
  `House` int(3) NOT NULL,
  `Name` varchar(24) NOT NULL DEFAULT 'Unknown',
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `RotX` float NOT NULL,
  `RotY` float NOT NULL,
  `RotZ` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobgoal`
--

CREATE TABLE `jobgoal` (
  `serverGoal` int(11) NOT NULL,
  `servermaxGoal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobgoal`
--

INSERT INTO `jobgoal` (`serverGoal`, `servermaxGoal`) VALUES
(26479, 5000000);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `ID` int(11) NOT NULL,
  `Name` varchar(24) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `Vehicle` int(3) NOT NULL DEFAULT 400,
  `Rides` int(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`ID`, `Name`, `X`, `Y`, `Z`, `Vehicle`, `Rides`) VALUES
(1, 'Detective', 1419.46, -1623.81, 13.5469, 400, 0),
(2, 'Pizza Boy', 2105.49, -1806.52, 13.5547, 448, 15),
(3, 'Farmer', -382.978, -1426.29, 26.3193, 531, 16),
(4, 'Fisherman', 150.449, -1806.03, 4.32707, 400, 38),
(5, 'Quarry Worker', 816.589, 857.067, 12.7891, 554, 6),
(6, 'Bus Driver', 1729.32, -1063.46, 23.9407, 431, 2),
(7, 'Security Transporter', 2452.88, -2460.41, 13.6348, 428, 9),
(8, 'Trucker', -76.8136, -1136.7, 1.07812, 403, 4),
(9, 'Arms Dealer', 2770.65, -1628.72, 12.1775, 482, 7),
(10, 'Drugs Dealer', 2795.95, -1619.47, 10.9219, 521, 2);

-- --------------------------------------------------------

--
-- Table structure for table `logs_chat`
--

CREATE TABLE `logs_chat` (
  `ID` int(11) NOT NULL,
  `Player` int(6) NOT NULL,
  `Log` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs_chat`
--

INSERT INTO `logs_chat` (`ID`, `Player`, `Log`) VALUES
(1, 1, 'g'),
(2, 1, 're'),
(3, 1, '123'),
(4, 1, 'f'),
(5, 1, 's'),
(6, 1, 'f'),
(7, 1, 'g'),
(8, 1, 'v'),
(9, 1, 'myskin'),
(10, 1, 'dan boss');

-- --------------------------------------------------------

--
-- Table structure for table `logs_history`
--

CREATE TABLE `logs_history` (
  `ID` int(11) NOT NULL,
  `Player` int(11) NOT NULL DEFAULT 0,
  `Log` varchar(144) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted` int(11) NOT NULL,
  `Type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs_kills`
--

CREATE TABLE `logs_kills` (
  `ID` int(11) NOT NULL,
  `Player` int(11) NOT NULL,
  `Name` varchar(24) NOT NULL,
  `By` int(11) NOT NULL,
  `Distance` float NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs_login`
--

CREATE TABLE `logs_login` (
  `ID` int(11) NOT NULL,
  `Player` int(11) NOT NULL DEFAULT 0,
  `IP` varchar(16) NOT NULL DEFAULT 'unknown',
  `Status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs_player`
--

CREATE TABLE `logs_player` (
  `ID` int(11) NOT NULL,
  `Player` int(11) NOT NULL,
  `Log` text NOT NULL,
  `IP` varchar(16) NOT NULL DEFAULT 'Unknown',
  `Type` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs_player`
--

INSERT INTO `logs_player` (`ID`, `Player`, `Log`, `IP`, `Type`) VALUES
(1, 1, '+$26,479 from Arms Dealer', '127.0.0.1', 3),
(2, 1, '>> You opened a beginner crate and won 8 Diamounds! <<', '127.0.0.1', 4),
(3, 1, '>> DanielSy opened a vehicle crate and won a Sultan (MODEL: 560)! <<', '127.0.0.1', 4);

-- --------------------------------------------------------

--
-- Table structure for table `logs_player_wars`
--

CREATE TABLE `logs_player_wars` (
  `PlayerID` int(11) NOT NULL,
  `WarID` int(11) NOT NULL,
  `Kills` int(11) NOT NULL,
  `Deaths` int(11) NOT NULL,
  `Seconds` int(11) NOT NULL,
  `Faction` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs_sanctions`
--

CREATE TABLE `logs_sanctions` (
  `Player` int(11) NOT NULL,
  `Type` int(11) NOT NULL,
  `Log` varchar(128) NOT NULL,
  `By` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs_shop`
--

CREATE TABLE `logs_shop` (
  `ID` int(11) NOT NULL,
  `Player` int(6) NOT NULL,
  `Log` text NOT NULL,
  `IP` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs_staff`
--

CREATE TABLE `logs_staff` (
  `ID` int(11) NOT NULL,
  `Type` int(2) NOT NULL DEFAULT 0,
  `Log` varchar(126) NOT NULL DEFAULT 'unknown',
  `Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs_vehicles`
--

CREATE TABLE `logs_vehicles` (
  `ID` int(11) NOT NULL,
  `Vehicle` int(6) NOT NULL,
  `Log` text NOT NULL,
  `By` int(11) NOT NULL,
  `IP` varchar(16) NOT NULL DEFAULT '127.0.0.1',
  `Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs_wars`
--

CREATE TABLE `logs_wars` (
  `Attacker` int(11) NOT NULL,
  `Defender` int(11) NOT NULL,
  `Atscore` int(11) NOT NULL,
  `Defscore` int(11) NOT NULL,
  `Result` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `other_data`
--

CREATE TABLE `other_data` (
  `Donations` int(5) NOT NULL DEFAULT 0,
  `Crates` varchar(30) NOT NULL DEFAULT '0|0|0',
  `Bitcoins` int(4) NOT NULL DEFAULT 0,
  `leftBitcoins` int(3) NOT NULL DEFAULT 30,
  `BitValue` int(11) NOT NULL DEFAULT 100000000,
  `budget` int(11) NOT NULL,
  `fac_salary` int(11) NOT NULL,
  `taxes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `other_data`
--

INSERT INTO `other_data` (`Donations`, `Crates`, `Bitcoins`, `leftBitcoins`, `BitValue`, `budget`, `fac_salary`, `taxes`) VALUES
(1, '10|9|5', 0, 30, 34143289, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `panel_applications`
--

CREATE TABLE `panel_applications` (
  `ID` int(11) NOT NULL,
  `Status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `panel_complaints`
--

CREATE TABLE `panel_complaints` (
  `ID` int(11) NOT NULL,
  `Status` int(2) NOT NULL DEFAULT 0,
  `Faction` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `panel_donations`
--

CREATE TABLE `panel_donations` (
  `ID` int(11) NOT NULL,
  `Status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `panel_editables`
--

CREATE TABLE `panel_editables` (
  `ID` int(11) NOT NULL,
  `Short_News` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `panel_tickets`
--

CREATE TABLE `panel_tickets` (
  `ID` int(11) NOT NULL,
  `Status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `panel_unban`
--

CREATE TABLE `panel_unban` (
  `ID` int(11) NOT NULL,
  `Status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `ID` int(11) NOT NULL,
  `Name` varchar(24) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL DEFAULT 'email@gmail.com',
  `IP` varchar(16) NOT NULL DEFAULT 'unknown',
  `GPCI` varchar(42) NOT NULL DEFAULT 'unknown',
  `LGPCI` varchar(42) NOT NULL DEFAULT 'unknown',
  `Admin` int(2) NOT NULL DEFAULT 0,
  `Helper` int(2) NOT NULL DEFAULT 0,
  `Registred` int(2) NOT NULL DEFAULT 0,
  `Tutorial` int(2) NOT NULL DEFAULT 0,
  `Age` int(2) NOT NULL DEFAULT 0,
  `Gender` int(2) NOT NULL DEFAULT 0,
  `Skin` int(3) NOT NULL DEFAULT 60,
  `House` int(2) NOT NULL,
  `Rent` int(2) NOT NULL,
  `Business` int(2) NOT NULL,
  `Job` int(2) NOT NULL DEFAULT 0,
  `Level` int(3) NOT NULL DEFAULT 1,
  `Respect` int(6) NOT NULL DEFAULT 0,
  `Cash` int(11) NOT NULL DEFAULT 5000,
  `Bank` int(11) NOT NULL DEFAULT 1000,
  `Seconds` int(5) NOT NULL DEFAULT 0,
  `Member` int(2) NOT NULL DEFAULT 0,
  `Rank` int(2) NOT NULL DEFAULT 0,
  `Days` int(6) NOT NULL DEFAULT 0,
  `FW` int(2) NOT NULL DEFAULT 0,
  `FP` int(3) NOT NULL DEFAULT 0,
  `Color` int(2) NOT NULL DEFAULT 0,
  `Premium` int(2) NOT NULL DEFAULT 0,
  `Slots` int(3) NOT NULL DEFAULT 2,
  `PremiumPoints` int(6) NOT NULL DEFAULT 0,
  `Gems` int(6) NOT NULL DEFAULT 0,
  `Hidden` int(4) NOT NULL DEFAULT 0,
  `GiftHours` int(2) NOT NULL DEFAULT 0,
  `Spawn` int(2) NOT NULL DEFAULT 0,
  `HelpedPlayers` int(5) NOT NULL DEFAULT 0,
  `HelpedWeek` int(5) NOT NULL DEFAULT 0,
  `Drugs` int(6) NOT NULL DEFAULT 0,
  `Materials` int(11) NOT NULL DEFAULT 0,
  `Tokens` int(6) NOT NULL DEFAULT 0,
  `Rob` int(3) NOT NULL DEFAULT 0,
  `JailTime` int(4) NOT NULL DEFAULT 0,
  `WantedTime` int(4) NOT NULL DEFAULT 0,
  `WantedLevel` int(2) NOT NULL DEFAULT 0,
  `Phone` int(6) NOT NULL DEFAULT 0,
  `PhoneBook` int(2) NOT NULL DEFAULT 0,
  `PhoneCredit` int(6) NOT NULL DEFAULT 0,
  `WT` int(2) NOT NULL DEFAULT 0,
  `WTChannel` int(4) NOT NULL DEFAULT 0,
  `Gascan` int(2) NOT NULL DEFAULT 0,
  `Fuel` int(3) NOT NULL DEFAULT 0,
  `HeadValue` int(11) NOT NULL DEFAULT 0,
  `PaintKills` int(6) NOT NULL DEFAULT 0,
  `Warns` int(2) NOT NULL DEFAULT 0,
  `MP3` int(2) NOT NULL DEFAULT 0,
  `CrateKeys` int(4) NOT NULL DEFAULT 0,
  `Mute` int(5) NOT NULL DEFAULT 0,
  `FightStyle` int(2) NOT NULL DEFAULT 0,
  `Crime1` varchar(31) NOT NULL DEFAULT 'nothing',
  `Crime2` varchar(31) NOT NULL DEFAULT 'nothing',
  `Crime3` varchar(31) NOT NULL DEFAULT 'nothing',
  `Hours` float NOT NULL DEFAULT 0,
  `LastWeek` float NOT NULL DEFAULT 0,
  `LastMonth` float NOT NULL DEFAULT 0,
  `Licenses` varchar(20) NOT NULL DEFAULT '0|0|0|0',
  `Order` varchar(20) NOT NULL DEFAULT '0|0|0|0',
  `HUD` varchar(20) NOT NULL DEFAULT '0|0|0|0|0',
  `Ores` varchar(20) NOT NULL DEFAULT '0|0|0',
  `Raport` varchar(20) NOT NULL DEFAULT '0|0|0',
  `Crates` varchar(20) NOT NULL DEFAULT '0|0|0',
  `Vouchers` varchar(10) NOT NULL DEFAULT '0|0',
  `FireWorks` varchar(10) NOT NULL DEFAULT '0|0',
  `JobSkill` varchar(20) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0',
  `Pet` varchar(20) NOT NULL DEFAULT '0|0|0|0|0',
  `PetName` varchar(24) NOT NULL DEFAULT 'amberland.ro',
  `Tier` int(2) NOT NULL DEFAULT 0,
  `Experience` int(6) NOT NULL DEFAULT 0,
  `premiumBP` int(2) NOT NULL DEFAULT 0,
  `taskProgress` varchar(20) NOT NULL DEFAULT '0|0|0|0',
  `cratesBP` varchar(10) NOT NULL DEFAULT '0|0',
  `crateFragments` varchar(10) NOT NULL DEFAULT '0|0',
  `taskNeeded` varchar(20) NOT NULL DEFAULT '0|0|0|0',
  `playerTasks` varchar(20) NOT NULL DEFAULT '0|0|0|0',
  `freeTier` varchar(100) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `paidTier` varchar(100) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `Quest` varchar(15) NOT NULL DEFAULT '0|0|0',
  `QuestProgress` varchar(15) NOT NULL DEFAULT '0|0|0',
  `QuestCompleted` varchar(15) NOT NULL DEFAULT '0|0|0',
  `questSpecial` varchar(52) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `questTimes` int(3) NOT NULL DEFAULT 0,
  `bitMine` int(6) NOT NULL DEFAULT 0,
  `Bitcoins` int(4) NOT NULL DEFAULT 0,
  `Status` int(2) NOT NULL DEFAULT 0,
  `LastOnline` varchar(35) NOT NULL DEFAULT 'unknown',
  `LastOnDays` int(11) NOT NULL DEFAULT 0,
  `completedToday` varchar(128) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `ActivityTime` int(11) NOT NULL DEFAULT 3600,
  `GoalContribution` int(11) NOT NULL,
  `PromoCodes` int(11) NOT NULL,
  `Updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_inv`
--

CREATE TABLE `player_inv` (
  `ID` int(11) NOT NULL,
  `Player` int(11) NOT NULL DEFAULT 0,
  `Type` int(3) NOT NULL DEFAULT 0,
  `Amount` int(6) NOT NULL DEFAULT 0,
  `Slot` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `safes`
--

CREATE TABLE `safes` (
  `ID` int(11) NOT NULL,
  `Money` int(11) NOT NULL DEFAULT 1000000,
  `Drugs` int(5) NOT NULL DEFAULT 0,
  `Materials` int(11) NOT NULL DEFAULT 0,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `ID` int(11) NOT NULL,
  `Hostname` varchar(128) NOT NULL,
  `Password` varchar(128) NOT NULL,
  `Locked` tinyint(1) NOT NULL,
  `WebURL` varchar(128) NOT NULL,
  `PlayerMOTD` varchar(128) NOT NULL,
  `AdminMOTD` varchar(128) NOT NULL,
  `LeaderMOTD` varchar(128) NOT NULL,
  `HelperMOTD` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`ID`, `Hostname`, `Password`, `Locked`, `WebURL`, `PlayerMOTD`, `AdminMOTD`, `LeaderMOTD`, `HelperMOTD`) VALUES
(1, 'localhost.ro - dan boss', '', 0, 'amberland.ro', 'Hello, have fun!', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `skins`
--

CREATE TABLE `skins` (
  `ID` int(11) NOT NULL,
  `Player` int(11) NOT NULL DEFAULT 0,
  `Model` int(3) NOT NULL DEFAULT 0,
  `Type` int(2) NOT NULL DEFAULT 0,
  `Perks` varchar(15) NOT NULL DEFAULT '0|0|0|0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `turfs`
--

CREATE TABLE `turfs` (
  `ID` int(11) NOT NULL,
  `Owner` int(3) NOT NULL,
  `MinX` float NOT NULL,
  `MinY` float NOT NULL,
  `MaxX` float NOT NULL,
  `MaxY` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `turfs`
--

INSERT INTO `turfs` (`ID`, `Owner`, `MinX`, `MinY`, `MaxX`, `MaxY`) VALUES
(1, 6, 1190.83, -1527.83, 1613.83, -1377.83),
(2, 6, 1190.83, -1677.83, 1613.83, -1527.83),
(3, 6, 1190.83, -1377.83, 1613.83, -1227.83),
(4, 6, 1190.83, -1227.83, 1613.83, -1077.83),
(5, 6, 1190.83, -1077.83, 1613.83, -927.833),
(6, 6, 1190.83, -1827.83, 1613.83, -1677.83),
(7, 5, 767.833, -1861.83, 1190.83, -1711.83),
(8, 5, 767.833, -1711.83, 1190.83, -1561.83),
(9, 6, 767.833, -1411.83, 1190.83, -1261.83),
(10, 5, 635.833, -1561.83, 1058.83, -1411.83),
(11, 5, 767.833, -1261.83, 1190.83, -1111.83),
(12, 5, 344.833, -1411.83, 767.833, -1261.83),
(13, 5, 344.833, -1711.83, 767.833, -1561.83),
(14, 4, 1613.83, -1267.83, 2036.83, -1117.83),
(15, 4, 1613.83, -1417.83, 2036.83, -1267.83),
(16, 4, 1613.83, -1567.83, 2036.83, -1417.83),
(17, 4, 1613.83, -1717.83, 2036.83, -1567.83),
(18, 4, 2036.83, -1658.83, 2459.83, -1508.83),
(19, 4, 2036.83, -1508.83, 2459.83, -1358.83),
(20, 4, 2036.83, -1358.83, 2459.83, -1208.83),
(21, 4, 2459.83, -1597.83, 2882.83, -1447.83);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `ID` int(11) NOT NULL,
  `Model` int(3) NOT NULL,
  `Group` int(2) NOT NULL DEFAULT 0,
  `Rank` int(2) NOT NULL DEFAULT 0,
  `Color1` int(3) NOT NULL DEFAULT -1,
  `Color2` int(3) NOT NULL DEFAULT -1,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `R` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`ID`, `Model`, `Group`, `Rank`, `Color1`, `Color2`, `X`, `Y`, `Z`, `R`) VALUES
(1, 411, 1, 1, 1, 1, 1536, -1677.1, 13.1099, 359.873),
(2, 411, 1, 1, 1, 1, 1535.97, -1668.7, 13.1099, 359.539),
(3, 596, 1, 1, 0, 1, 1575.89, -1606.94, 13.1048, 179.969),
(4, 596, 1, 1, 0, 1, 1570.59, -1606.91, 13.104, 179.612),
(5, 596, 1, 1, 0, 1, 1565.14, -1606.86, 13.104, 179.667),
(6, 596, 1, 1, 0, 1, 1559.79, -1606.81, 13.1041, 178.618),
(7, 411, 1, 3, 1, 1, 1574.56, -1711.07, 5.6177, 0.513581),
(8, 411, 1, 3, 1, 1, 1558.81, -1711.07, 5.6177, 359.781),
(9, 601, 1, 3, 0, 0, 1545.96, -1684.4, 5.64941, 89.8309),
(10, 523, 1, 1, 1, 2, 1583.3, -1711.15, 5.45386, 359.269),
(11, 523, 1, 1, 1, 2, 1587.44, -1711.13, 5.46216, 0.906399),
(12, 523, 1, 1, 1, 2, 1591.44, -1711.18, 5.46103, 358.889),
(13, 487, 7, 5, 154, 154, 1080.7, -1762.45, 13.5499, 359.455),
(14, 560, 7, 1, 154, 154, 1098.97, -1772.6, 13.0516, 90.247),
(15, 560, 7, 1, 154, 154, 1099, -1766.72, 13.0531, 90.1988),
(16, 560, 7, 1, 154, 154, 1099.09, -1760.82, 13.0556, 90.1262),
(17, 541, 7, 2, 154, 154, 1062.17, -1772.61, 12.9802, 269.985),
(18, 541, 7, 2, 154, 154, 1062.33, -1766.74, 13.0051, 270.264),
(19, 451, 7, 1, 154, 154, 1062.36, -1760.9, 13.1093, 269.869),
(20, 451, 7, 1, 154, 154, 1062.45, -1755.02, 13.1373, 269.61),
(21, 411, 7, 3, 154, 154, 1062.11, -1749.1, 13.1783, 269.917),
(22, 411, 7, 3, 154, 154, 1062.13, -1743.18, 13.191, 269.944),
(23, 411, 2, 2, 0, 0, 612.762, -601.56, 16.9569, 270.011),
(24, 411, 2, 1, 0, 0, 612.683, -597.032, 16.9601, 270.638),
(25, 490, 2, 1, 0, 0, 622.5, -606.115, 17.2146, 269.448),
(26, 490, 2, 1, 0, 0, 622.486, -610.545, 17.2137, 269.485),
(27, 528, 2, 3, 0, 0, 638.642, -611.38, 16.379, 268.029),
(28, 490, 2, 1, 0, 0, 636.638, -562.68, 16.3866, 359.365),
(29, 490, 2, 1, 0, 0, 636.799, -552.714, 16.3856, 359.643),
(30, 497, 2, 1, 0, 0, 615.939, -575.314, 26.3196, 270.866),
(31, 411, 3, 1, 235, 235, 178.857, 1923.18, 17.7279, 89.5434),
(32, 411, 3, 1, 235, 235, 170.556, 1923.13, 18.0371, 89.6044),
(33, 470, 3, 1, 0, 0, 202.334, 1920.36, 17.6342, 180.156),
(34, 470, 3, 1, 0, 0, 212.082, 1920.41, 17.6329, 181.388),
(35, 470, 3, 1, 0, 0, 220.486, 1920.55, 17.6322, 180.223),
(36, 425, 3, 5, 0, 0, 201.771, 1886.92, 18.2225, 3.18983),
(37, 520, 3, 5, 0, 0, 226.523, 1884.15, 18.3638, 1.19861),
(38, 409, 11, 1, 1, 1, 1481.47, -1741.37, 13.3469, 270.155),
(39, 560, 11, 1, 1, 1, 1490.41, -1741.3, 13.2521, 269.924),
(40, 560, 11, 1, 1, 1, 1471.95, -1741.45, 13.2141, 268.632),
(41, 560, 11, 1, 1, 1, 1456.01, -1748.62, 13.2517, 359.437),
(42, 416, 10, 1, 1, 3, 2012.63, -1411.03, 17.1412, 89.5421),
(43, 416, 10, 1, 1, 3, 2019.35, -1418.24, 17.1072, 87.7795),
(44, 416, 10, 1, 1, 3, 2036.12, -1435.97, 17.371, 178.969),
(45, 416, 10, 1, 1, 3, 2030.14, -1429.66, 17.2165, 179.504),
(46, 560, 10, 1, 3, 3, 2000.04, -1411.71, 16.6968, 179.726),
(47, 560, 8, 1, 129, 129, 1090.18, -326.598, 73.6975, 0.999561),
(48, 560, 8, 1, 129, 129, 1090.29, -317.462, 73.6974, 358.298),
(49, 402, 8, 1, 129, 129, 1064.4, -302.184, 73.822, 178.494),
(50, 402, 8, 1, 129, 129, 1070.19, -301.989, 73.8201, 180.811),
(51, 402, 8, 1, 129, 129, 1076.5, -301.875, 73.8185, 181.269),
(52, 487, 8, 1, 129, 129, 1106.32, -341.198, 74.2422, 73.1997),
(53, 487, 8, 1, 129, 129, 1059.42, -309.568, 74.2422, 215.059),
(54, 447, 8, 1, 129, 129, 1018.83, -324.764, 73.996, 268.63),
(55, 469, 8, 1, 129, 129, 1018.51, -334.561, 74.004, 267.131),
(56, 560, 4, 1, 137, 137, 2506.28, -1676.02, 13.082, 144.801),
(57, 560, 4, 1, 137, 137, 2476.47, -1679.85, 13.0418, 55.8505),
(58, 567, 4, 1, 137, 137, 2481.74, -1693.03, 13.3911, 352.626),
(59, 579, 4, 1, 137, 137, 2507.32, -1664.29, 13.3387, 201.968),
(60, 579, 4, 1, 137, 137, 2470.7, -1670.66, 13.253, 10.9102),
(61, 521, 4, 1, 137, 137, 2491.31, -1686.31, 13.0801, 15.7583),
(62, 521, 4, 1, 137, 137, 2489.5, -1686.37, 13.0807, 21.0754),
(63, 521, 4, 1, 137, 137, 2487.44, -1686.4, 13.0805, 19.5232),
(64, 409, 4, 1, 137, 137, 2489.11, -1656.27, 13.1553, 89.2785),
(65, 560, 5, 1, 6, 6, 490.757, -1484.12, 19.4615, 347.167),
(66, 560, 5, 1, 6, 6, 488.521, -1513.52, 20.0824, 5.61075),
(67, 409, 5, 1, 6, 6, 488.703, -1500.3, 20.1941, 356.03),
(68, 521, 5, 1, 6, 6, 477.925, -1491.11, 19.8545, 293.355),
(69, 521, 5, 1, 6, 6, 477.66, -1489.31, 19.7936, 293.457),
(70, 521, 5, 1, 6, 6, 477.47, -1487.78, 19.7402, 303.441),
(71, 579, 5, 1, 6, 6, 484.56, -1470.97, 18.9617, 337.85),
(72, 579, 5, 1, 6, 6, 481.408, -1530.23, 19.7096, 15.4807),
(73, 567, 5, 1, 6, 6, 490.006, -1523.24, 20.1298, 11.1802),
(74, 487, 5, 1, 6, 6, 516.727, -1450.02, 15.0604, 255.727),
(75, 487, 4, 1, 137, 137, 2531.38, -1678.09, 19.9302, 89.2047),
(76, 487, 6, 1, 0, 0, 1147.77, -2058.24, 69.0006, 310.465),
(77, 560, 6, 1, 0, 0, 1146.19, -2040.33, 69.0078, 269.084),
(78, 560, 6, 1, 0, 0, 1152.84, -2033.44, 69.0006, 270.052),
(79, 579, 6, 1, 0, 0, 1170.26, -2018.77, 69.0006, 179.941),
(80, 579, 6, 1, 0, 0, 1170.16, -2057.6, 69.0006, 359.793),
(81, 567, 6, 1, 0, 0, 1179.79, -2057.5, 69.0078, 0.329244),
(82, 409, 6, 1, 0, 0, 1152.33, -2007.36, 69.0078, 270.154),
(83, 521, 6, 1, 0, 0, 1131.61, -2021.58, 69.0006, 269.596),
(84, 521, 6, 1, 0, 0, 1131.56, -2020.13, 69.0006, 273.252),
(85, 521, 6, 1, 0, 0, 1131.6, -2018.66, 68.5725, 272.184),
(86, 525, 9, 1, 57, 57, 2472.37, -2116.6, 13.412, 359.337),
(87, 525, 9, 1, 57, 57, 2477.34, -2116.65, 13.4151, 359.342),
(88, 525, 9, 1, 57, 57, 2481.84, -2116.68, 13.4233, 0.603459),
(89, 525, 9, 1, 57, 57, 2485.95, -2116.59, 13.4189, 0.916694);

-- --------------------------------------------------------

--
-- Table structure for table `wc_applications`
--

CREATE TABLE `wc_applications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `questions` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `faction_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` varchar(64) DEFAULT NULL,
  `action` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wc_comments`
--

CREATE TABLE `wc_comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_comment` text NOT NULL,
  `topic_id` int(11) NOT NULL DEFAULT 0,
  `topic_category` varchar(64) NOT NULL DEFAULT '-1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `comment_deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wc_complaints`
--

CREATE TABLE `wc_complaints` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(128) DEFAULT NULL,
  `accused_id` int(11) NOT NULL DEFAULT 0,
  `accused_name` varchar(128) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `category` varchar(64) NOT NULL DEFAULT 'Other',
  `status` int(11) DEFAULT 0,
  `action` varchar(64) DEFAULT NULL,
  `faction_id` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wc_notifications`
--

CREATE TABLE `wc_notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(64) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `trigger_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `seen` int(11) NOT NULL DEFAULT 0,
  `link` varchar(256) NOT NULL DEFAULT '#'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wc_options`
--

CREATE TABLE `wc_options` (
  `id` int(11) NOT NULL,
  `content` text DEFAULT NULL,
  `additional` text DEFAULT NULL,
  `structure` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wc_options`
--

INSERT INTO `wc_options` (`id`, `content`, `additional`, `structure`, `created_at`, `updated_at`) VALUES
(4, '[\"sdgsdgsds123124\",\"346346\",\"6346346\",\"a2323\",\"436346\"]', '1', 'faction', '2020-06-24 13:51:08', '2020-09-07 14:58:30'),
(7, '[\"asd\"]', '14', 'faction', '2020-06-27 16:12:48', '2020-06-27 16:12:48'),
(8, '[\"a\",\"c\",\"666666666666\"]', NULL, 'admin', '2020-08-22 06:51:15', '2020-09-05 12:58:55'),
(9, '[\"d\",\"e\",\"foyuoyuoyuioiu\"]', NULL, 'leader', '2020-08-22 06:51:27', '2020-09-05 12:57:00'),
(10, '[\"g\",\"6hfkhgkkgfkfghkgkf\",\"i\",\"sdfsdfsdfsg\"]', NULL, 'helper', '2020-08-22 06:51:40', '2020-09-05 12:59:10'),
(11, '[\"prima?\"]', '2', 'faction', '2020-08-30 11:30:42', '2020-08-30 11:30:42');

-- --------------------------------------------------------

--
-- Table structure for table `wc_recruitment`
--

CREATE TABLE `wc_recruitment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT -1,
  `content` text DEFAULT NULL,
  `category` varchar(32) DEFAULT NULL,
  `faction_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wc_settings`
--

CREATE TABLE `wc_settings` (
  `id` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `function` varchar(128) NOT NULL,
  `system` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wc_settings`
--

INSERT INTO `wc_settings` (`id`, `count`, `function`, `system`, `created_at`, `updated_at`) VALUES
(1, 0, 'Player abuse', 'complaint_category', '2020-06-27 05:36:37', '2020-06-27 05:37:42'),
(2, 0, 'Deathmatch', 'complaint_category', '2020-06-27 05:37:34', '2020-06-27 05:37:40'),
(3, 1, 'Faction abuse', 'complaint_category', '2020-06-27 05:38:45', '2020-06-27 05:38:45'),
(4, 2, 'Admin abuse', 'complaint_category', '2020-06-27 06:04:07', '2020-06-27 06:04:32'),
(5, 0, '<span class=\"label label-light-info\">Low</span>', 'ticket_category', '2020-06-28 17:32:26', '2020-06-28 18:40:26'),
(6, 1, '<span class=\"label label-light-warning\">Medium</span>', 'ticket_category', '2020-06-28 17:32:47', '2020-06-28 18:41:22'),
(7, 2, '<span class=\"badge badge-danger\">High</span>', 'ticket_category', '2020-06-28 17:32:47', '2020-06-28 17:33:21'),
(8, 0, '<span class=\"label label-light-primary\">Open</span>', 'ticket_status', '2020-06-28 18:34:59', '2020-06-28 18:41:45'),
(9, 1, '<span class=\"label label-light-inverse\">Closed</span>', 'ticket_status', '2020-06-28 18:35:16', '2020-06-28 18:35:16'),
(10, 2, '<span class=\"badge badge-danger\">Deleted</span>', 'ticket_status', '2020-06-29 17:40:17', '2020-06-29 17:48:48'),
(11, 0, '<span class=\"label label-light-primary\">Open</span>', 'complaint_status', '2020-06-30 16:08:15', '2020-06-30 16:08:15'),
(12, 1, '<span class=\"label label-light-inverse\">Closed</span>', 'complaint_status', '2020-06-30 16:08:54', '2020-06-30 16:09:06'),
(13, 2, '<span class=\"badge badge-danger\">Deleted</span>', 'complaint_status', '2020-06-30 16:09:21', '2020-07-02 16:54:04'),
(14, 0, '<span class=\"label label-light-primary\">Awaiting</span>', 'unban_status', '2020-06-28 18:34:59', '2020-06-28 18:41:45'),
(15, 2, '<span class=\"label label-light-inverse\">Rejected</span>', 'unban_status', '2020-06-28 18:35:16', '2020-07-02 17:26:33'),
(16, 1, '<span class=\"badge badge-success\">Accepted</span>', 'unban_status', '2020-06-29 17:40:17', '2020-07-02 17:26:31'),
(17, 3, '<span class=\"badge badge-danger\">Deleted</span>', 'unban_status', '2020-06-29 17:40:17', '2020-06-29 17:48:48'),
(18, 0, '<span class=\"label label-light-primary\">Awaiting</span>', 'application_status', '2020-07-04 05:26:00', '2020-07-04 05:26:00'),
(19, 1, '<span class=\"badge badge-warning\">Accepted for tests</span>', 'application_status', '2020-07-04 05:26:00', '2020-07-04 05:26:08'),
(20, 2, '<span class=\"badge badge-success\">Accepted</span>', 'application_status', '2020-07-04 05:26:34', '2020-07-04 05:26:34'),
(21, 3, '<span class=\"label label-light-inverse\">Rejected</span>', 'application_status', '2020-07-04 05:26:34', '2020-07-04 05:26:34'),
(22, 4, '<span class=\"badge badge-danger\">Deleted</span>', 'application_status', '2020-07-04 05:27:01', '2020-07-04 05:27:01'),
(23, 0, '<span class=\"label label-light-primary\">Awaiting</span>', 'recruitment_status', '2020-07-04 05:26:00', '2020-07-04 05:26:00'),
(24, 1, '<span class=\"badge badge-success\">Accepted</span>', 'recruitment_status', '2020-07-04 05:26:34', '2020-08-22 11:45:03'),
(25, 2, '<span class=\"label label-light-inverse\">Rejected</span>', 'recruitment_status', '2020-07-04 05:26:34', '2020-08-22 11:45:05'),
(26, 3, '<span class=\"badge badge-danger\">Deleted</span>', 'recruitment_status', '2020-07-04 05:27:01', '2020-08-22 11:45:10'),
(27, 1, '', 'status_recruitment_admin', '2020-08-22 13:29:32', '2023-09-03 16:35:05'),
(28, 1, '', 'status_recruitment_leader', '2020-08-22 13:29:32', '2023-09-03 16:35:51'),
(29, 1, '', 'status_recruitment_helper', '2020-08-22 13:29:32', '2020-09-05 12:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `wc_tags`
--

CREATE TABLE `wc_tags` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(64) DEFAULT NULL,
  `tag_name` varchar(64) DEFAULT NULL,
  `icon` varchar(16) DEFAULT 'ti ti-user',
  `color` varchar(16) NOT NULL DEFAULT '#FFFFFF',
  `color_font` varchar(16) NOT NULL DEFAULT '#FFFFFF',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wc_tags`
--

INSERT INTO `wc_tags` (`id`, `user_id`, `user_name`, `tag_name`, `icon`, `color`, `color_font`, `created_at`) VALUES
(11, 2, 'name05', 'asd', 'fa fa-shortcode', '#ff0000', '#ffffff', '2023-09-07 08:25:26');

-- --------------------------------------------------------

--
-- Table structure for table `wc_tickets`
--

CREATE TABLE `wc_tickets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `title` text DEFAULT NULL,
  `text` text DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_by` varchar(64) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wc_token`
--

CREATE TABLE `wc_token` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `email` varchar(256) DEFAULT NULL,
  `token` varchar(128) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deactivated` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wc_unbans`
--

CREATE TABLE `wc_unbans` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(64) DEFAULT NULL,
  `ban_type` varchar(64) DEFAULT NULL,
  `ban_time` timestamp NULL DEFAULT NULL,
  `ban_details` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` varchar(64) DEFAULT NULL,
  `action` varchar(256) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wc_updates`
--

CREATE TABLE `wc_updates` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `update_version` text DEFAULT NULL,
  `update_text` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `youtubers`
--

CREATE TABLE `youtubers` (
  `ID` int(11) NOT NULL,
  `Owner` int(11) NOT NULL,
  `Code` varchar(64) NOT NULL,
  `Channel` varchar(256) NOT NULL,
  `CodeUsed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `youtubers`
--

INSERT INTO `youtubers` (`ID`, `Owner`, `Code`, `Channel`, `CodeUsed`) VALUES
(1, 1, 'DANIELSY', 'https://www.youtube.com/channel/UCJN0xpmtGPuGH17brRGrAPg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accs`
--
ALTER TABLE `accs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `accs_models`
--
ALTER TABLE `accs_models`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `atms`
--
ALTER TABLE `atms`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dealership`
--
ALTER TABLE `dealership`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `frequencies`
--
ALTER TABLE `frequencies`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `gps`
--
ALTER TABLE `gps`
  ADD PRIMARY KEY (`gpsID`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `house_objects`
--
ALTER TABLE `house_objects`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `jobgoal`
--
ALTER TABLE `jobgoal`
  ADD PRIMARY KEY (`serverGoal`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `logs_chat`
--
ALTER TABLE `logs_chat`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `logs_history`
--
ALTER TABLE `logs_history`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `logs_kills`
--
ALTER TABLE `logs_kills`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `logs_login`
--
ALTER TABLE `logs_login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `logs_player`
--
ALTER TABLE `logs_player`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `logs_player_wars`
--
ALTER TABLE `logs_player_wars`
  ADD PRIMARY KEY (`PlayerID`);

--
-- Indexes for table `logs_sanctions`
--
ALTER TABLE `logs_sanctions`
  ADD PRIMARY KEY (`Player`);

--
-- Indexes for table `logs_shop`
--
ALTER TABLE `logs_shop`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `logs_staff`
--
ALTER TABLE `logs_staff`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `logs_vehicles`
--
ALTER TABLE `logs_vehicles`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `logs_wars`
--
ALTER TABLE `logs_wars`
  ADD PRIMARY KEY (`Attacker`);

--
-- Indexes for table `other_data`
--
ALTER TABLE `other_data`
  ADD PRIMARY KEY (`Donations`);

--
-- Indexes for table `panel_applications`
--
ALTER TABLE `panel_applications`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `panel_complaints`
--
ALTER TABLE `panel_complaints`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `panel_donations`
--
ALTER TABLE `panel_donations`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `panel_editables`
--
ALTER TABLE `panel_editables`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `panel_tickets`
--
ALTER TABLE `panel_tickets`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `panel_unban`
--
ALTER TABLE `panel_unban`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `player_inv`
--
ALTER TABLE `player_inv`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `safes`
--
ALTER TABLE `safes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `skins`
--
ALTER TABLE `skins`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `turfs`
--
ALTER TABLE `turfs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wc_applications`
--
ALTER TABLE `wc_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_comments`
--
ALTER TABLE `wc_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_complaints`
--
ALTER TABLE `wc_complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_notifications`
--
ALTER TABLE `wc_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_options`
--
ALTER TABLE `wc_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_recruitment`
--
ALTER TABLE `wc_recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_settings`
--
ALTER TABLE `wc_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_tags`
--
ALTER TABLE `wc_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_tickets`
--
ALTER TABLE `wc_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_token`
--
ALTER TABLE `wc_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_unbans`
--
ALTER TABLE `wc_unbans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_updates`
--
ALTER TABLE `wc_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `youtubers`
--
ALTER TABLE `youtubers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accs`
--
ALTER TABLE `accs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accs_models`
--
ALTER TABLE `accs_models`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `atms`
--
ALTER TABLE `atms`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dealership`
--
ALTER TABLE `dealership`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `factions`
--
ALTER TABLE `factions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `frequencies`
--
ALTER TABLE `frequencies`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gps`
--
ALTER TABLE `gps`
  MODIFY `gpsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `house_objects`
--
ALTER TABLE `house_objects`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `logs_chat`
--
ALTER TABLE `logs_chat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `logs_history`
--
ALTER TABLE `logs_history`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs_kills`
--
ALTER TABLE `logs_kills`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs_login`
--
ALTER TABLE `logs_login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs_player`
--
ALTER TABLE `logs_player`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `logs_shop`
--
ALTER TABLE `logs_shop`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs_staff`
--
ALTER TABLE `logs_staff`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs_vehicles`
--
ALTER TABLE `logs_vehicles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panel_applications`
--
ALTER TABLE `panel_applications`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panel_complaints`
--
ALTER TABLE `panel_complaints`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panel_donations`
--
ALTER TABLE `panel_donations`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panel_editables`
--
ALTER TABLE `panel_editables`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panel_tickets`
--
ALTER TABLE `panel_tickets`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panel_unban`
--
ALTER TABLE `panel_unban`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player_inv`
--
ALTER TABLE `player_inv`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `safes`
--
ALTER TABLE `safes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skins`
--
ALTER TABLE `skins`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `turfs`
--
ALTER TABLE `turfs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `wc_applications`
--
ALTER TABLE `wc_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wc_comments`
--
ALTER TABLE `wc_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wc_complaints`
--
ALTER TABLE `wc_complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wc_notifications`
--
ALTER TABLE `wc_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `wc_options`
--
ALTER TABLE `wc_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wc_recruitment`
--
ALTER TABLE `wc_recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wc_settings`
--
ALTER TABLE `wc_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `wc_tags`
--
ALTER TABLE `wc_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wc_tickets`
--
ALTER TABLE `wc_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wc_token`
--
ALTER TABLE `wc_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wc_unbans`
--
ALTER TABLE `wc_unbans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wc_updates`
--
ALTER TABLE `wc_updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
