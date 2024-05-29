-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 05:58 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amberland`
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

--
-- Dumping data for table `accs`
--

INSERT INTO `accs` (`ID`, `Userid`, `Model`, `Status`, `Bone`, `OffsetX`, `OffsetY`, `OffsetZ`, `ScaleX`, `ScaleY`, `ScaleZ`, `RotX`, `RotY`, `RotZ`) VALUES
(1, 1, 18947, 1, 2, 0.191, 0, 0, 1, 1, 1, 0, 0, 0),
(2, 1, 19095, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 1, 19010, 1, 0, 0.503, 0.064, -0.012, 1, 1, 1, -0.1, 82.4, 94.9);

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
(10, 19095, 'Hat', 15000, 0, 99),
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
(33, 19010, 'Eye Glasses', 15000, 0, 99),
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
-- Table structure for table `adv`
--

CREATE TABLE `adv` (
  `id` int(11) NOT NULL,
  `word` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `adv`
--

INSERT INTO `adv` (`id`, `word`) VALUES
(1, 'bzone'),
(2, 'bugged'),
(3, 'lupmax'),
(4, 'b-zone'),
(5, 'og-times'),
(6, 'ogtimes'),
(7, 'b-game'),
(8, 'gfzone'),
(9, 'famzone'),
(10, 't4p'),
(11, 'time4play'),
(12, 'pro-gaming'),
(13, 'wrestling-arena'),
(14, 'just2play'),
(15, 'j2p'),
(16, 'playnion'),
(17, 'egaming'),
(18, 'projectx'),
(19, 'expertgame'),
(20, 'awake'),
(21, 'b-hood'),
(22, 'b-hood.ro'),
(23, 'rpg.b-hood.ro'),
(24, 'Romania super stunt'),
(25, ':7777'),
(26, 'r p g b u g g e d  r o'),
(27, 'b-zone.ro'),
(28, 'rpg.b-zone.ro'),
(29, 'raduq'),
(30, 'leon suge pula'),
(31, 'LeUn suge pula'),
(32, 'muie Leon'),
(33, 'boti'),
(34, 'leon mananca awake'),
(35, 'Greenstone.ro'),
(36, 'rpg.Greenstone.ro'),
(37, 'r p g G r e e n s t o n e r o'),
(38, 'b-zone.ro/awake'),
(39, 'Forteam.ro'),
(40, 'rpg.Forteam.ro'),
(41, 'r p g F o r t e a m r o'),
(42, 'ruby'),
(43, 'nephrite'),
(44, 'linkmania'),
(45, 'leon suge'),
(46, 'leon suge x1'),
(47, 'leon suge x2'),
(48, 'leon suge x50'),
(49, '.ro'),
(50, 'jad'),
(51, 'jade'),
(52, 'neprihte'),
(53, 'rpg.redtimes.ro'),
(54, 'redtimes'),
(55, 'redtimes.ro'),
(56, 'vibesrpg'),
(57, 'vibesrpg.eu'),
(58, 'play4times'),
(59, 'goldeagle'),
(60, 'goldeagle.ro');

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

--
-- Dumping data for table `bans`
--

INSERT INTO `bans` (`ID`, `Player`, `Admin`, `Reason`, `IP`, `Days`, `Permanent`, `Time`, `IPBan`) VALUES
(3, 'Sobolancis', 'DanielSy', 're', '127.0.0.1', 0, 1, 0, 0);

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
(1, 1, 'DanielSy', 'Los Santos Bank', 1457.09, -1009.92, 26.8438, 1476.84, -1007.62, 3035.75, 2, 10000000, 0, 10, 0, 1, 1, 999, 61938),
(2, 0, 'Admbot', '27/7 Store (1)', 1352.36, -1759.25, 13.5078, 2508.08, 1222.04, 1801.09, 1, 10000000, 0, 10, 0, 1, 2, 999, 82917),
(3, 0, 'Admbot', '27/7 Store (2)', 1315.55, -897.681, 39.5781, 2508.09, 1221.93, 1801.09, 1, 10000000, 0, 10, 0, 1, 2, 999, 7992),
(4, 1, 'DanielSy', 'Gun Shop', 1368.94, -1279.77, 13.5469, 286.149, -40.6444, 1001.52, 1, 10000000, 0, 10, 0, 0, 3, 5000, 13986),
(5, 8, 'GeorgePity', 'CNN', 1170.91, -1489.64, 22.7551, 0, 0, 0, 0, 10000000, 0, 10, 0, 0, 4, 999, 9990),
(6, 0, 'Admbot', 'Burger Shot', 810.485, -1616.19, 13.5469, 363.413, -74.5786, 1001.51, 10, 10000000, 0, 10, 0, 1, 5, 999, 7992),
(7, 0, 'Admbot', 'Pay N Spray (1)', 1028.26, -1029.88, 32.0894, 0, 0, 0, 0, 10000000, 0, 10, 0, 1, 6, 999, 3996),
(8, 0, 'Admbot', 'Pay N Spray (2)', 491.431, -1734.66, 11.2384, 0, 0, 0, 0, 10000000, 0, 10, 0, 1, 6, 999, 9990),
(9, 0, 'Admbot', 'Pay N Spray (3)', 2072.02, -1828.38, 13.5545, 0, 0, 0, 0, 10000000, 0, 10, 0, 1, 6, 999, 0),
(10, 0, 'Admbot', 'Club', 1837, -1682.44, 13.3246, -2636.71, 1403.39, 906.461, 3, 10000000, 0, 10, 0, 1, 7, 999, 999),
(11, 0, 'Admbot', 'Car Mod Shop', 1044.96, -1026.44, 32.1016, 0, 0, 0, 0, 10000000, 0, 10, 0, 1, 8, 999, 0),
(12, 0, 'Admbot', 'Sex Shop', 1087.69, -922.483, 43.3906, -100.35, -24.6526, 1000.72, 3, 10000000, 0, 10, 0, 1, 9, 999, 4995),
(13, 0, 'Admbot', 'Gas Station (1)', 1941.66, -1769.34, 13.6406, 0, 0, 0, 0, 10000000, 0, 10, 0, 1, 10, 999, 0),
(14, 0, 'Admbot', 'Gas Station (2)', 1011.66, -935.737, 42.3281, 0, 0, 0, 0, 10000000, 0, 10, 0, 0, 10, 999, 999),
(15, 0, 'Admbot', 'Gas Station (3)', -78.3835, -1169.91, 2.13556, 0, 0, 0, 0, 10000000, 0, 10, 0, 1, 10, 999, 0),
(16, 6, 'Razvan', 'Clothing Store (1)', 499.546, -1360.64, 16.369, 207.055, -138.805, 1003.51, 3, 10000000, 0, 10, 0, 0, 11, 999, 19980),
(17, 0, 'Admbot', 'Clothing Store (2)', 2244.3, -1665.54, 15.4766, 207.055, -138.805, 1003.51, 3, 10000000, 0, 10, 0, 1, 11, 999, 3996),
(18, 0, 'Admbot', 'Casino', 1022.56, -1121.42, 23.8723, 1133.38, -14.5412, 1000.68, 12, 10000000, 0, 10, 0, 1, 12, 999, 31968),
(19, 0, 'Admbot', 'PawnShop', 883.099, -1800.38, 13.8018, 316.5, -167.62, 999.59, 6, 100000000, 0, 5, 0, 0, 13, 0, 0);

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
  `Mods` varchar(50) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `Rainbow` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`ID`, `Owner`, `OwnerName`, `Model`, `Days`, `RealDays`, `Color1`, `Color2`, `Locked`, `Fuel`, `Points`, `Tax`, `Value`, `Neon`, `TextColor`, `Towed`, `Plate`, `Text`, `X`, `Y`, `Z`, `A`, `Km`, `PaintJob`, `Mods`, `Rainbow`) VALUES
(2, 1, 'DanielSy', 461, 1705689702, 1705689702, 1, 1, 0, 0, 15, 0, 1, 0, 0, 0, 'NONE', '-', 1042.02, -2272.45, 12.7004, 207.61, 4.4091, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(3, 1, 'DanielSy', 461, 1705689704, 1705689704, 1, 1, 0, 100, 15, 0, 1, 0, 0, 0, 'NONE', '-', 1524.96, -1691.2, 13.0363, 213.74, 0.2484, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(4, 1, 'DanielSy', 530, 1705690490, 1705690490, 1, 1, 0, 0, 15, 0, 1, 0, 0, 0, 'NONE', '-', 2816.67, -1439.21, 39.7863, 91.8732, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(5, 1, 'DanielSy', 451, 1705690501, 1705690501, 2, 2, 0, 0, 15, 0, 1, 0, 0, 0, 'NONE', '-', 300.537, -1503.96, 24.3241, 234.573, 0.0891, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 1),
(6, 1, 'DanielSy', 494, 1705690501, 1705690501, 1, 1, 0, 0, 15, 0, 1, 0, 0, 0, 'NONE', '-', 2816.67, -1439.21, 39.7863, 91.8732, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(8, 1, 'DanielSy', 530, 1705690503, 1705690503, 1, 1, 0, 0, 15, 0, 1, 0, 0, 0, 'NONE', '-', 2816.67, -1439.21, 39.7863, 91.8732, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(10, 1, 'DanielSy', 530, 1705690503, 1705690503, 1, 1, 0, 0, 15, 0, 1, 0, 0, 0, 'NONE', '-', 2792.98, -1439.9, 39.7813, 271.713, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(12, 1, 'DanielSy', 451, 1705690504, 1705690504, 1, 1, 0, 0, 15, 0, 1, 0, 0, 0, 'NONE', '-', 2804.79, -1429.42, 39.782, 180.142, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(13, 1, 'DanielSy', 494, 1705690504, 1705690504, 1, 1, 0, 0, 15, 0, 1, 0, 0, 0, 'NONE', '-', 294.988, -1540.79, 24.3208, 54.7585, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(14, 1, 'DanielSy', 461, 1705693559, 1705693559, 1, 1, 0, 0, 15, 0, 1, 0, 0, 0, 'NONE', '-', 290.748, -1517.5, 24.3208, 234.526, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(15, 1, 'DanielSy', 481, 1705758077, 1705758077, 1, 1, 0, 0, 15, 0, 500000, 0, 0, 0, 'NONE', '-', 2804.79, -1429.42, 39.782, 180.142, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(16, 1, 'DanielSy', 556, 1706295044, 1706295044, 1, 1, 0, 100, 15, 0, 300, 0, 0, 0, 'NONE', '-', 1007.86, -941.019, 42.4516, 286.883, 4.0662, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 1),
(17, 1, 'DanielSy', 481, 1706556302, 1706556302, 1, 1, 0, 0, 15, 0, 500000, 0, 0, 0, 'NONE', '-', 2792.98, -1439.9, 39.7813, 271.713, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(18, 1, 'DanielSy', 481, 1706556673, 1706556673, 1, 1, 0, 0, 15, 0, 500000, 0, 0, 0, 'NONE', '-', 294.988, -1540.79, 24.3208, 54.7585, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0),
(19, 1, 'DanielSy', 411, 1706816349, 1706816349, 1, 1, 0, 0, 15, 0, 1, 0, 0, 0, 'NONE', 'DanielSy', 2816.67, -1439.21, 39.7863, 91.8732, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0);

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
-- Table structure for table `clans`
--

CREATE TABLE `clans` (
  `clan_id` int(11) NOT NULL,
  `clan_owner` int(11) NOT NULL,
  `clan_name` varchar(32) NOT NULL,
  `clan_tag` varchar(10) NOT NULL DEFAULT '[NONE]',
  `clan_safe` int(11) NOT NULL DEFAULT 0,
  `clan_color` varchar(32) NOT NULL DEFAULT 'FFCC99',
  `clan_slots` tinyint(4) NOT NULL DEFAULT 25,
  `clan_rdate` varchar(128) NOT NULL DEFAULT '0',
  `clan_motd` varchar(256) NOT NULL DEFAULT 'None',
  `clan_days` int(11) NOT NULL DEFAULT 60,
  `clan_vslots` int(11) NOT NULL DEFAULT 1,
  `clan_hqid` int(11) NOT NULL,
  `clan_rank1` varchar(32) NOT NULL DEFAULT 'Name',
  `clan_rank2` varchar(32) NOT NULL DEFAULT 'Name',
  `clan_rank3` varchar(32) NOT NULL DEFAULT 'Name',
  `clan_rank4` varchar(32) DEFAULT 'Name',
  `clan_rank5` varchar(32) NOT NULL DEFAULT 'Name',
  `clan_rank6` varchar(32) NOT NULL DEFAULT 'Name',
  `clan_rank7` varchar(32) NOT NULL DEFAULT 'Owner'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `clans`
--

INSERT INTO `clans` (`clan_id`, `clan_owner`, `clan_name`, `clan_tag`, `clan_safe`, `clan_color`, `clan_slots`, `clan_rdate`, `clan_motd`, `clan_days`, `clan_vslots`, `clan_hqid`, `clan_rank1`, `clan_rank2`, `clan_rank3`, `clan_rank4`, `clan_rank5`, `clan_rank6`, `clan_rank7`) VALUES
(1, 1, 'DANE', 'DANE', 61896, 'AB3332', 25, '0', '', 53, 1, 1, 'DEVELOPER', 'Name', 'SMECHER', 'Name', 'Name', 'Name', '{ab3332}resboss');

-- --------------------------------------------------------

--
-- Table structure for table `clan_hqs`
--

CREATE TABLE `clan_hqs` (
  `hq_id` int(11) NOT NULL,
  `hq_owner` int(11) NOT NULL,
  `hq_intpos` varchar(64) NOT NULL DEFAULT '0.0|0.0|0.0',
  `hq_interior` tinyint(4) NOT NULL,
  `hq_virtual` tinyint(4) NOT NULL,
  `hq_locked` tinyint(4) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clan_hqs`
--

INSERT INTO `clan_hqs` (`hq_id`, `hq_owner`, `hq_intpos`, `hq_interior`, `hq_virtual`, `hq_locked`, `X`, `Y`, `Z`) VALUES
(1, 0, '0.0|0.0|0.0', 0, 0, 0, 1220.5, -1830.78, 13.4052),
(2, 0, '0.0|0.0|0.0', 0, 2, 0, 1219.52, -1828.9, 13.4075),
(3, 0, '0.0|0.0|0.0', 0, 3, 0, 1218.68, -1832.76, 13.396);

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

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`ID`, `Player`, `Email`, `Readed`, `Date`) VALUES
(1, 0, 'You were uninvited by admin DanielSy from your faction after 19612 days, without FP.\nReason: re', 0, '2023-09-12 19:27:34'),
(2, 0, 'Admin DanielSy has remove you biz (ID: 1) from account, reason: 10002', 0, '2023-10-20 17:29:47'),
(3, 0, 'You have been promoted to lead group Los Santos Police Department, by DanielSy', 0, '2023-12-31 12:47:04'),
(4, 0, 'You were uninvited by admin DanielSy from your faction after 0 days, without FP.\nReason: re', 0, '2023-12-31 13:11:56'),
(5, 0, 'You have been promoted to lead group Los Santos Police Department, by DanielSy', 0, '2023-12-31 13:46:19'),
(6, 0, 'You were uninvited by admin DanielSy from your faction after 0 days, without FP.\nReason: re', 0, '2023-12-31 13:46:49'),
(7, 0, 'You have been promoted to lead group Los Santos Police Department, by DanielSy', 0, '2023-12-31 13:47:55'),
(8, 0, 'You were uninvited by admin DanielSy from your faction after 0 days, without FP.\nReason: re', 0, '2023-12-31 14:16:57'),
(9, 0, 'You have been promoted to lead group Gouvernment, by DanielSy', 0, '2023-12-31 14:17:02'),
(10, 0, 'You were uninvited by admin DanielSy from your faction after 0 days, without FP.\nReason: re', 0, '2023-12-31 14:18:27'),
(11, 0, 'You have been promoted to helper level 3 by DanielSy, reason: re', 0, '2024-01-01 14:46:13'),
(12, 0, 'You have been demoted to admin level 0 by DanielSy, reason: re', 0, '2024-01-01 14:46:17'),
(13, 0, 'You have been promoted to lead group Los Santos Police Department, by DanielSy', 0, '2024-01-01 15:44:44'),
(14, 0, 'You have been demoted to admin level 0 by DanielSy, reason: re', 0, '2024-01-03 18:01:57'),
(15, 0, 'You have been promoted to admin level 7 by DanielSy, reason: re', 0, '2024-01-03 18:06:18'),
(16, 0, 'You have been demoted to admin level 0 by DanielSy, reason: re', 0, '2024-01-03 18:06:23'),
(17, 0, 'You have been promoted to admin level 7 by DanielSy, reason: re', 0, '2024-01-04 13:29:41'),
(18, 0, 'You have been demoted to admin level 0 by DanielSy, reason: re', 0, '2024-01-04 13:34:16'),
(19, 0, 'You have been promoted to admin level 10 by DanielSy, reason: re', 0, '2024-01-04 13:39:49'),
(20, 0, 'You have been demoted to admin level 0 by DanielSy, reason: re', 0, '2024-01-04 13:40:38'),
(21, 0, 'You have been demoted to admin level 0 by DanielSy, reason: 0', 0, '2024-01-04 14:15:29'),
(22, 0, 'You have been promoted to admin level 7 by DanielSy, reason: re', 0, '2024-01-04 14:20:55'),
(23, 0, 'You have been demoted to admin level 0 by DanielSy, reason: 0', 0, '2024-01-04 14:21:06'),
(24, 0, 'You have been promoted to admin level 10 by DanielSy, reason: re', 0, '2024-01-05 17:32:09'),
(25, 0, 'You have been demoted to admin level 7 by DanielSy, reason: re', 0, '2024-01-06 11:44:11'),
(26, 0, 'You have been demoted to admin level 0 by DanielSy, reason: re', 0, '2024-01-06 12:42:18'),
(27, 0, 'You have been promoted to admin level 9 by DanielSy1, reason: re', 0, '2024-01-06 12:42:38'),
(28, 0, 'You have been demoted to admin level 7 by DanielSy, reason: re', 0, '2024-01-06 12:44:08'),
(29, 0, 'You have been promoted to admin level 7 by DanielSy, reason: re', 0, '2024-01-06 12:44:12'),
(30, 0, 'You have been demoted to admin level 0 by DanielSy, reason: 0', 0, '2024-01-06 12:44:19'),
(31, 0, 'You have been promoted to admin level 7 by DanielSy, reason: re', 0, '2024-01-06 12:45:05'),
(32, 0, 'You have been demoted to admin level 0 by DanielSy, reason: re', 0, '2024-01-06 12:46:33'),
(33, 0, 'You have been promoted to admin level 7 by DanielSy, reason: re', 0, '2024-01-06 12:48:43'),
(34, 0, 'You have been demoted to admin level 0 by DanielSy, reason: re', 0, '2024-01-06 12:48:54'),
(35, 0, 'You have been promoted to admin level 10 by DanielSy, reason: re', 0, '2024-01-06 12:52:42'),
(36, 0, 'You have been promoted to admin level 10 by DanielSy, reason: re', 0, '2024-01-06 12:52:45'),
(37, 0, 'You have been demoted to helper level 0 by DanielSy, reason: re', 0, '2024-01-06 12:52:48'),
(38, 0, 'You have been demoted to admin level 0 by DanielSy, reason: re', 0, '2024-01-06 12:52:50'),
(39, 0, 'You have been promoted to admin level 7 by DanielSy, reason: re', 0, '2024-01-06 13:25:55'),
(40, 0, 'You were uninvited by DanielSy from your faction after 19730 days, with 20 FP.\nReason: DanielSy sobolan', 0, '2024-01-08 16:42:57'),
(41, 0, 'You have been demoted to admin level 0 by DanielSy, reason: 0', 0, '2024-01-10 19:10:25'),
(42, 0, 'You have been promoted to admin level 7 by DanielSy, reason: re', 0, '2024-01-10 19:14:23'),
(43, 0, 'You have been demoted to admin level 0 by DanielSy, reason: 0', 0, '2024-01-10 19:14:42'),
(44, 0, 'You have been promoted to admin level 9 by DanielSy, reason: re', 0, '2024-01-12 19:19:49'),
(45, 0, 'You have been demoted to admin level 0 by DanielSy, reason: 0', 0, '2024-01-13 11:27:02'),
(46, 0, 'You have been promoted to admin level 1 by DanielSy, reason: re', 0, '2024-01-13 12:01:49'),
(47, 0, 'You have been promoted to admin level 7 by DanielSy, reason: re', 0, '2024-01-13 12:02:35'),
(48, 0, 'You have been demoted to admin level 1 by DanielSy, reason: re', 0, '2024-01-13 12:02:41'),
(49, 0, 'You have been promoted to admin level 9 by DanielSy, reason: re', 0, '2024-01-13 12:05:19'),
(50, 0, 'You have been demoted to admin level 0 by DanielSy, reason: re', 0, '2024-01-13 12:05:28'),
(51, 0, 'You have been promoted to admin level 8 by DanielSy, reason: re', 0, '2024-01-13 15:35:22'),
(52, 0, 'You have been demoted to admin level 0 by DanielSy, reason: 0', 0, '2024-01-13 15:35:49'),
(53, 0, 'You have been promoted to admin level 9 by DanielSy, reason: re', 0, '2024-01-13 17:43:26'),
(54, 0, 'You have been demoted to admin level 0 by DanielSy, reason: 0', 0, '2024-01-13 17:52:57'),
(55, 0, 'You have been promoted to admin level 9 by DanielSy, reason: re', 0, '2024-01-13 18:07:42'),
(56, 0, 'You have been demoted to admin level 0 by DanielSy, reason: 0', 0, '2024-01-13 18:14:03'),
(57, 0, 'You have been demoted to admin level 0 by DanielSy1, reason: 0', 0, '2024-01-13 18:17:40'),
(58, 0, 'You have been promoted to admin level 9 by DanielSy, reason: 9 ', 0, '2024-01-13 18:28:31'),
(59, 0, 'You have been demoted to admin level 0 by DanielSy, reason: 0', 0, '2024-01-13 18:55:07'),
(60, 0, 'You have been demoted to admin level 0 by DanielSy, reason: 0', 0, '2024-01-20 21:19:32'),
(61, 0, 'You have been promoted to admin level 7 by DanielSy, reason: re', 0, '2024-01-20 21:22:08'),
(62, 0, 'You have been promoted to admin level 9 by DanielSy, reason: re', 0, '2024-01-26 18:34:33'),
(63, 0, 'Admin DanielSy has remove you biz (ID: 1) from account, reason: sunt boss', 0, '2024-01-26 18:37:05'),
(64, 0, 'You were uninvited by admin DanielSy from your faction after 25 days, without FP.\nReason: re', 0, '2024-01-27 07:23:12'),
(65, 0, 'You have been promoted to lead group Los Santos Police Department, by DanielSy', 0, '2024-01-28 16:03:07'),
(66, 0, 'Admin DanielSy has remove you biz (ID: 14) from account, reason: reree', 0, '2024-01-29 17:10:09'),
(67, 0, 'You were uninvited by admin DanielSy from your faction after 1 days, without FP.\nReason: re', 0, '2024-01-29 19:05:26'),
(68, 0, 'You have been demoted to admin level 0 by AdmBot, reason: 3AW acumulated', 0, '2024-01-29 20:00:03'),
(69, 0, 'You have been demoted to admin level 0 by AdmBot, reason: 3AW acumulated', 0, '2024-02-01 18:46:51'),
(70, 0, 'You were uninvited by admin DanielSy from your faction after 4 days, without FP.\nReason: 0', 0, '2024-02-01 19:02:19'),
(71, 0, 'You have been promoted to helper level 3 by DanielSy, reason: re', 0, '2024-02-05 18:42:58'),
(72, 0, 'You have been demoted to admin level 0 by DanielSy, reason: 0', 0, '2024-02-05 18:43:01'),
(73, 0, 'Admin DanielSy has remove you biz (ID: 1) from account, reason: resere', 0, '2024-02-14 20:56:01');

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
  `Apps` int(2) NOT NULL DEFAULT 0,
  `LeaderApp` int(11) NOT NULL,
  `MinLevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `factions`
--

INSERT INTO `factions` (`ID`, `Name`, `News`, `X`, `Y`, `Z`, `IntX`, `IntY`, `IntZ`, `Level`, `Locked`, `Interior`, `MaxMembers`, `RName1`, `RName2`, `RName3`, `RName4`, `RName5`, `RName6`, `RName7`, `Skins`, `Apps`, `LeaderApp`, `MinLevel`) VALUES
(1, 'Los Santos Police Department', 'Bine ai venit', 1555.5, -1675.68, 16.1953, 246.784, 63.9002, 1003.64, 10, 0, 6, 12, 'Officer', 'Detective', 'Sergeant', 'Lieutenant', 'Captain', 'Assistant Chief', 'Chief', '280|282|284|283|288|267|306', 0, 1, 1),
(2, 'Federal Bureau Of Investigations', 'gg', 626.965, -571.79, 17.9207, 288.768, 168.071, 1007.17, 10, 0, 3, 12, 'Professional Staff', 'Special Agent', 'Supervisory Special Agent', 'Special Agent in Charge', 'Section Chief', 'Assistant Director', 'Director', '164|165|165|166|166|295|141', 0, 1, 0),
(3, 'National Guard', 'Nothing', 154.389, 1903.26, 18.757, 322.198, 302.498, 999.148, 10, 0, 5, 12, 'Private', 'Second Lieutenant', 'First Lieutenant', 'Captain', 'Major', 'Colonel', 'General', '285|285|287|287|287|273|191', 0, 0, 0),
(4, 'Grove Street', 'Nothing', 2495.37, -1691.14, 14.7656, 2215.6, -1150.56, 1025.8, 15, 0, 15, 10, 'Street Soldier', 'Supplier', 'Money Launderer', 'Chief Enforcer', 'Councilor', 'Advisor', 'Don', '105|106|107|269|271|270|192', 0, 0, 0),
(5, 'Los Vagos', 'Nothing', 475.998, -1498.98, 20.4844, 2215.6, -1150.56, 1025.8, 15, 0, 15, 10, 'Street Soldier', 'Supplier', 'Money Launderer', 'Chief Enforcer', 'Councilor', 'Advisor', 'Don', '103|102|102|181|104|296|195', 0, 0, 0),
(6, 'The Russian Mafia', 'Nothing', 1122.71, -2036.98, 69.8942, 2215.6, -1150.56, 1025.8, 15, 0, 15, 10, 'Street Soldier', 'Supplier', 'Money Launderer', 'Chief Enforcer', 'Councilor', 'Advisor', 'Don', '111|112|112|98|46|113|190', 0, 0, 0),
(7, 'Uber Company', 'Nothing', 1111.92, -1795.57, 16.5938, 1701.53, -1667.91, 20.2188, 7, 1, 18, 10, 'Trainee', 'Rookie', 'Cabbie', 'Dispatcher', 'Shift Supervisor', 'Company Manager', 'Company Owner', '206|220|234|7|171|17|172', 0, 0, 0),
(8, 'Hitman Agency', 'Nothing', 1073.15, -345.589, 73.9922, 2170.07, 1618.69, 999.977, 10, 1, 1, 10, 'Agent', 'Marksman', 'Agent', 'Special Agent', 'Special Agent in Charge', 'Vice-Director', 'Director', '117|208|186|290|120|294|211', 0, 0, 0),
(9, 'Tow Truck Company', 'Nothing', 2459.39, -2120.87, 13.553, 1701.53, -1667.91, 20.2188, 7, 1, 18, 10, 'Trainee', 'Mechanic', 'Senior Mechanic', 'Supervisor', 'Manager', 'Underboss', 'Company Owner', '95|95|95|95|95|95|95', 0, 0, 0),
(10, 'Paramedic Department', 'Nothing', 2038.14, -1404.7, 17.2526, 389.6, 173.814, 1008.38, 7, 1, 3, 10, 'Candidate', 'Paramedic', 'Paramedic in Charge', 'Commander', 'Field Chief', 'Assistant Chief', 'Paramedic Chief', '95|95|95|95|95|95|95', 0, 0, 0),
(11, 'Gouvernment', 'Nothing', 1481.04, -1772.31, 18.7958, 1468.8, -1798.47, 4369.42, 5, 1, 3, 3, '-', '-', '-', '-', '-', 'Assistant Mayor', 'Mayor', '147|147|147|147|147|147|147', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `factions_cars`
--

CREATE TABLE `factions_cars` (
  `veh_model` int(11) NOT NULL,
  `veh_color1` int(11) NOT NULL,
  `veh_color2` int(11) NOT NULL,
  `veh_rank` int(11) NOT NULL,
  `veh_group` int(11) NOT NULL,
  `veh_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `factions_cars`
--

INSERT INTO `factions_cars` (`veh_model`, `veh_color1`, `veh_color2`, `veh_rank`, `veh_group`, `veh_stock`) VALUES
(411, 1, 1, 1, 1, 1);

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

--
-- Dumping data for table `giftbox`
--

INSERT INTO `giftbox` (`giftCars`, `giftVouchers`) VALUES
(0, 0);

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
(2, 'Driving School', 1113.72, -1836.11, 16.6),
(3, 'Paintball', 1154.69, -1440.02, 15.7969),
(4, 'Rent Vehicles', 1238.15, -1832.77, 13.3957),
(5, 'Cartel  Quest', 1286.79, -1329.08, 13.5548),
(6, 'Crates Place', 151.985, -1952.54, 3.77344);

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
(1, 1, 'DanielSy', 'home alone    ', 1496.98, -687.893, 95.5633, 234.229, 1064.65, 1084.21, 6, 10000000, 0, 3, 0, 0, 0, 1000),
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
(47, 0, 'Admbot', 'nume-server.ro', 1981.53, -1682.87, 17.0538, 24.04, 1340.17, 1084.38, 10, 99999999, 0, 10, 0, 0, 0, 0),
(48, 0, 'Admbot', 'nume-server.ro', -1524.09, -2238.12, 3.1772, 225.655, 1022.34, 1084.02, 7, 999999999, 0, 1337, 0, 0, 0, 0);

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

--
-- Dumping data for table `house_objects`
--

INSERT INTO `house_objects` (`ID`, `Model`, `House`, `Name`, `X`, `Y`, `Z`, `RotX`, `RotY`, `RotZ`) VALUES
(1, 19056, 1, 'Unknown', 234.146, 1065.06, 1084.21, 0, 0, 0),
(2, 19339, 1, 'Unknown', 236.098, 1070.92, 1084.19, 0, 0, 0),
(3, 19527, 1, 'Unknown', 234.465, 1069.52, 1084.19, 0, 0, 0),
(4, 19339, 1, 'Unknown', 234.465, 1069.52, 1084.19, 0, 0, 0),
(5, 19055, 1, 'Unknown', 234.12, 1066.64, 1084.21, 0, 0, 0),
(6, 19055, 1, 'Unknown', 233.759, 1065.7, 1084.21, 0, 0, 0),
(7, 19055, 1, 'Unknown', 234.229, 1064.65, 1084.21, 0, 0, 0),
(8, 19054, 1, 'Unknown', 233.668, 1065.02, 1084.21, 0, 0, 0),
(9, 19054, 1, 'Unknown', 234.229, 1064.65, 1084.21, 0, 0, 0),
(10, 19054, 1, 'Unknown', 234.229, 1064.65, 1084.21, 0, 0, 0);

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
(1943838, 5000000);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `ID` int(11) NOT NULL,
  `OwnerID` int(11) NOT NULL,
  `OwnerName` varchar(32) DEFAULT 'AdmBot',
  `Name` varchar(24) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `Vehicle` int(3) NOT NULL DEFAULT 400,
  `Rides` int(6) NOT NULL DEFAULT 0,
  `ForAuction` int(11) NOT NULL,
  `Balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`ID`, `OwnerID`, `OwnerName`, `Name`, `X`, `Y`, `Z`, `Vehicle`, `Rides`, `ForAuction`, `Balance`) VALUES
(1, 0, 'AdmBot', 'Detective', 1419.46, -1623.81, 13.5469, 400, 0, 0, 0),
(2, 1, 'DanielSy', 'Pizza Boy', 2105.49, -1806.52, 13.5547, 448, 16, 0, 0),
(3, 1, 'DanielSy', 'Farmer', -382.978, -1426.29, 26.3193, 531, 19, 0, 0),
(4, 0, 'AdmBot', 'Fisherman', 1245.3, -2336.42, 14.0062, 400, 65, 0, 4692),
(5, 0, 'AdmBot', 'Quarry Worker', 816.589, 857.067, 12.7891, 554, 7, 0, 0),
(6, 0, 'AdmBot', 'Bus Driver', 1729.32, -1063.46, 23.9407, 431, 2, 0, 0),
(7, 0, 'AdmBot', 'Security Transporter', 2452.88, -2460.41, 13.6348, 428, 9, 0, 0),
(8, 0, 'AdmBot', 'Trucker', -76.8136, -1136.7, 1.07812, 403, 5, 0, 2516),
(9, 0, 'AdmBot', 'Arms Dealer', 2770.65, -1628.72, 12.1775, 482, 7, 0, 0),
(10, 0, 'AdmBot', 'Drugs Dealer', 2795.95, -1619.47, 10.9219, 521, 2, 0, 0),
(11, 0, 'AdmBot', 'Grave Digger', 725.361, -1276.23, 13.6484, 400, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kenny_applications`
--

CREATE TABLE `kenny_applications` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(90) NOT NULL,
  `Type` int(11) NOT NULL,
  `Answers` text NOT NULL,
  `Questions` text NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` varchar(90) NOT NULL,
  `ActionBy` varchar(90) NOT NULL,
  `Reason` text NOT NULL,
  `FactionID` int(11) NOT NULL DEFAULT 0,
  `AnswerDate` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kenny_applications`
--

INSERT INTO `kenny_applications` (`ID`, `UserID`, `UserName`, `Type`, `Answers`, `Questions`, `Status`, `Date`, `ActionBy`, `Reason`, `FactionID`, `AnswerDate`) VALUES
(1, 21, 'Stresuletz', 1, 'Test:Test', '1', 2, '16.12.2023 23:05', 'vampiru', '', 0, '17.12.2023 00:53'),
(2, 2, 'vampiru', 3, 'Test :teeeest', '1', 3, '16.12.2023 23:08', 'vampiru', 're', 0, '16.12.2023 23:08'),
(3, 2, 'vampiru', 3, 'Test :Baaa|Dfgd:Da', '2', 3, '16.12.2023 23:09', 'vampiru', 'Ya', 0, '16.12.2023 23:11'),
(4, 2, 'vampiru', 3, 'Test :Dudueu|Dfgd:Djrj', '2', 3, '16.12.2023 23:12', 'GeorgePity', '', 0, '16.12.2023 23:16'),
(5, 24, 'MCRebelu', 3, 'Test :TEst|Dfgd:fwafawfd', '2', 3, '17.12.2023 19:41', 'Stresuletz12', '', 0, '28.12.2023 22:19'),
(6, 25, 'DenomCivilu', 3, 'Test :test|Dfgd:test', '2', 3, '17.12.2023 19:42', 'DanielSy', '', 0, '17.12.2023 21:32'),
(7, 63, 'Vericu.Yasou', 1, 'Care este numele tau real? :Cosa Ioan|Care este varsta ta reala? :17|Profil Facebook/instagram(obligatoriu). :https://www.facebook.com/profile.php?id=100066802565841|Care este oras-ul in care locuiesti in momentul actual? :Bristol|Care sunt hobby-urile tale? :Football,Sa:mp|Descriere personala despre tine ( Minim 70 cuvinte). :Buna, ma numesc Ioan/John, am varsta de 17 ani si pot spune ca ma caracterizeaza maturitatea, simplitatea, ambitia, tactul, spiritul corectitudinii si al dreptatii, profesionalismul, exigenta fara de sine, nazuinta de desavârtire continua, voinia puternica, organizarea, respectul si caracterul ferm. De asemenea admir perseverenta si bunatatea celor care aspira la perfectiune si nu abandoneaza o munca pe care au inceput-o. Pot spune ca ma integrez foarte usor într-un grup, deoarece principala calitate pe care o am este respectul fata de celelalte persoane si atunci când este nevoie voi face lucrurile cu maxima seriozitate. Sunt foarte bun la scoala in special Biologie si fizica si multe altele. Nu ma cred superior fata de ceilalti aplicanti pentru aceasta functie dar pot spune ca ies in evidenta prin comportamentul meu matur, mereu ajut pe cineva la greu,. Hobby-urile mele sunt jocurile (in special SA:MP) cat si League of legends. Practic Football de 5 ani . Locuiesc in orasul Bristol .Mereu creez un mediu prietenos orientat spre ajutorarea celorlalte persoane, fara asteptarea unei recompense. In timpul liber imi place sa ma joc diverse jocuri pe PC, sa ma uit la seriale sau sa ies pe afara cu prietenii. Cam atat pot spune despre mine deoarece nu imi place sa ma autocaracterizez. Prefer sa fiu descoperit de fiecare persoana in parte asa cum sunt, cu bune si cu rele.|De aici incep intrebarile legate de server esti pregatit? :Desigur|Nickname Sa:Mp::Vericu.Yasou|Poza stats(obligatorie) :https://imgur.com/a/qYOHgzC|Cu ce se ocupa un membru staff? :Cu ajutarea celor in nevoie si rezolvarea problemelor|De ce iti doresti aceasta functie? :Deoarece imi place sa ajut persoanele |De cat timp joci pe server-ul nostru? :Ieri|Ai mai fost staff pe alte comunitati? Daca da ce grad ai avut? :Am fost admin 5 pe un server,Si admin 1 pe altul|Care sunt sistemele tale preferate de pe server-ul nostru de Sa:Mp? (top 3) :Sistemul fish,Miner,Farmer|Care sunt sistemele ce nu iti plac pe server-ul nostru?si de ce? :Nu am unul|Care sunt sistemele ce nu iti plac pe server-ul nostru?si de ce? :Nu am Unul|De ce ai ales sa te joci pe comunitatea noastra? :Deoarece il cunosc pe Vampiru|Ai citit regulamentul helper pe forum-ul comunitatii? :Da|Esti constient ca daca vei fii acceptat pentru teste vei avea 24h pentru a sustine testele? :Da|Esti constient ca daca vei stresa managerul / fondatorul vei fii automat picat? :Da|Adaugari aditionale::no', '21', 3, '28.12.2023 15:26', 'Stresuletz12', '', 0, '29.12.2023 00:31'),
(8, 132, 'XrMihai', 3, 'Care este numele tau real? :Mihai.|Care este varsta ta reala? :16.|Link canal Youtube /profil tiktok. :https://www.youtube.com/channel/UCCi1GwL63wCLweClnvbHr3w|In ce oras locuiesti? :Bucuresti.|Descriere( minim 25 cuvinte) :Salut! Ma numesc Mihai si am varsta de 16 ani. Locuiesc in Bucuresti si ador sa ma joc pe pc.|Pentru ce functie doresti sa aplici? (tiktok/Youtuber) :Youtuber.|De ce doresti sa aplici in aceasta functie? :Pentru a ridica playerii.|Esti constient ca daca nu te vei ocupa de aceasta functie vei primi remove? :Da.|Profil Facebook/instagram. :https://www.instagram.com/xrmihai_/|Adaugari aditionale::Nu.', '10', 2, '28.12.2023 21:51', 'axelutz', 'Acceptat, ma cauti in joc pe mine sau Stresulet sau Ionut[007].', 0, '28.12.2023 23:29'),
(9, 51, 'George', 2, 'Care este numele tau real?:Ma numesc George.|Care este varsta ta reala?:17 ani.|In ce oras locuiesti si in ce domeniu muncesti/studiezi?:Locuiesc in Galați și învăț la un liceu agricol.|Link profil Facebook/Instagram (obligatoriu):https://www.instagram.com/ge0rge_vas1le?igsh=M3JlY3c5a24yZmlu|Care sunt hobby-urile tale?:Tractoarele și mașinile.|Descriere personala (minim 50 cuvinte):Salut!Ma numesc George am 17 ani și sunt din Galați.Ador ieșirile în ora și sportul.Mancarurile preferate fiind cartofii prăjiți și carnea la grătar.Muzica mea preferata este muzica lui MGL deoarece motivul este evident.Imi plac foarte mult câinii, ba chiar am 2 câini de rasă, foarte frumoși dar necesită o responsabilitate uriașă.|Nickname SA:MP:George|Ce experienta ai in acest tip de factiune pe serverul nostru? Dar pe alte servere?:Pe acest server sunt nou, dar in pd am experiență de pe alte servere.|Factiuni la care ai avut lider si in ce perioada (indiferent daca e pe serverul nostru sau alt server):Nu am avut lider în nicio facțiune.|De ce crezi ca esti persoana potrivita pentru functia de lider al acestei factiuni?:Deoarece sunt o persoană cu bun simț și aș vrea să aduc facțiunea asta fiind TOP!|Care este factiunea in cadrul caruia ai petrecut cel mai mult timp la noi pe server?:Nu am mai avut facțiuni!|Ce ai aduce nou la aceasta factiune daca ai fi lider?:Nou nu pot aduce nimic pentru că nu sunt scripter, momentan pot aduce membri care sunt capabili de a fi polițiști.|Cat planuiesti sa stai in functie daca o sa fii acceptat?:Dacă îmi va permite timpul 2-3 ani.|Cunosti regulamentul factiunii si regulamentul serverului? Daca o sa fii acceptat, o sa fii testat din acestea.:Da, cunosc.|In cazul in care vei fi acceptat, esti de acord sa sustii testele in cel mult 24 ore? Daca nu, o sa fii respins.:De acord!|Ai prieteni din real pe server? Dar prieteni virtuali care sa te urmeze in factiune?:Nu, prietenii mei nu joacă samp.|Ce functii ai mai avut pe serverul nostru? Dar pe alte servere?:Nu am mai avut funcții.|Esti constient ca daca vei stresa adminii, managerii sau pe oricine din staff referitor la aplicatie o sa fii picat?:Normal.|Alte precizari:Mulțumesc.', '19', 3, '28.12.2023 23:16', 'Stresuletz12', 'Factiunea aceasta nu este deschisa.', 1, '29.12.2023 01:14'),
(10, 63, 'Vericu.Yasou', 2, 'Care este numele tau real?:Cosa Ioan|Care este varsta ta reala?:17|In ce oras locuiesti si in ce domeniu muncesti/studiezi?:Bristol,Bussines studies|Link profil Facebook/Instagram (obligatoriu):https://m.facebook.com/profile.php/?id=100066802565841&name=xhp_nt__fb__action__open_user|Care sunt hobby-urile tale?:Sa:mp,Football|Descriere personala (minim 50 cuvinte):Sunt o persoana calma caruia ii place sa ajute persoanele cred ca sunt o persoana amuzanta care stie de gluma in limita bunului simt.Lovuiesc in bristol de ceva timp si sunt student momentan |Nickname SA:MP:Vericu.Yasou|Ce experienta ai in acest tip de factiune pe serverul nostru? Dar pe alte servere?:Pe accest server nu am,Dar am fost pe altul|Factiuni la care ai avut lider si in ce perioada (indiferent daca e pe serverul nostru sau alt server):Lspd-30 de zile(nu a tinut server ul)|De ce crezi ca esti persoana potrivita pentru functia de lider al acestei factiuni?:Pentru ca sunt o peraoana matura|Care este factiunea in cadrul caruia ai petrecut cel mai mult timp la noi pe server?:Niviuna|Ce ai aduce nou la aceasta factiune daca ai fi lider?:Jucatori,Reguli eyc|Cat planuiesti sa stai in functie daca o sa fii acceptat?:Cat de mult posibil|Cunosti regulamentul factiunii si regulamentul serverului? Daca o sa fii acceptat, o sa fii testat din acestea.:Da|In cazul in care vei fi acceptat, esti de acord sa sustii testele in cel mult 24 ore? Daca nu, o sa fii respins.:Din pacate voi fii disponibil dupa 1 Ianuarie|Ai prieteni din real pe server? Dar prieteni virtuali care sa te urmeze in factiune?:Nu|Ce functii ai mai avut pe serverul nostru? Dar pe alte servere?:Am avut admin 5 ,admin 1|Esti constient ca daca vei stresa adminii, managerii sau pe oricine din staff referitor la aplicatie o sa fii picat?:Da|Alte precizari:No', '19', 3, '29.12.2023 00:01', 'Ionut[007]', '', 1, '29.12.2023 00:38'),
(11, 160, 'Claudiu@10', 2, 'Care este numele tau real?:Claudiu|Care este varsta ta reala?:18|In ce oras locuiesti si in ce domeniu muncesti/studiezi?:Craiova,sunt la liceu|Link profil Facebook/Instagram (obligatoriu):c.patrascu10 insta|Care sunt hobby-urile tale?:Sa cant,sa ma joc|Descriere personala (minim 50 cuvinte):sunt un om se treaba îmi place sa fac Glume in limita bunului simt,sa ma joc samp|Nickname SA:MP:Claudiu@10|Ce experienta ai in acest tip de factiune pe serverul nostru? Dar pe alte servere?:10/10|Factiuni la care ai avut lider si in ce perioada (indiferent daca e pe serverul nostru sau alt server):Național Guard|De ce crezi ca esti persoana potrivita pentru functia de lider al acestei factiuni?:Deoarece știu cu ce se ocupa și ce rol are aceasta|Care este factiunea in cadrul caruia ai petrecut cel mai mult timp la noi pe server?:Taxy company|Ce ai aduce nou la aceasta factiune daca ai fi lider?:O sa văd pe parcurs |Cat planuiesti sa stai in functie daca o sa fii acceptat?:Nelimitat|Cunosti regulamentul factiunii si regulamentul serverului? Daca o sa fii acceptat, o sa fii testat din acestea.:Da|In cazul in care vei fi acceptat, esti de acord sa sustii testele in cel mult 24 ore? Daca nu, o sa fii respins.:Da|Ai prieteni din real pe server? Dar prieteni virtuali care sa te urmeze in factiune?:Nu|Ce functii ai mai avut pe serverul nostru? Dar pe alte servere?:Nu am mai avut|Esti constient ca daca vei stresa adminii, managerii sau pe oricine din staff referitor la aplicatie o sa fii picat?:Da|Alte precizari:Multumesc', '19', 3, '29.12.2023 12:32', 'Stresuletz12', 'Aceasta factiune are un lider.', 8, '29.12.2023 13:24'),
(12, 115, 'ImDariusHere', 2, 'Care este numele tau real?:numele meu real este Grigoras Darius Adrian.|Care este varsta ta reala?:14 ani.|In ce oras locuiesti si in ce domeniu muncesti/studiezi?:Locuiesc in orasul bucuresti si studiez(invat) la scoala nr3 balaceanca.|Link profil Facebook/Instagram (obligatoriu):https://www.instagram.com/6xli8ne/, facebook nam.|Care sunt hobby-urile tale?:football, gaming si tennis de picior.|Descriere personala (minim 50 cuvinte):Sunt o persoana simpla crescut in zona rulara, am ochii caprui,brunet,am 30 de kg,am 1.47m, sunt muncitor si imi dau seama ca nimic nu se da mura in gura, fac sport mult in fiecare zi, sunt rabdator milos, impart cu oricine orice, imi plac sarmalele,ciorba,friptura etc, imi doresc intr-o zi sa ajung un footbalist mare la o echipa ca mancity, si cel mai important dau a doua sansa la oricine indifferent de fapta.|Nickname SA:MP:ImDariusHere|Ce experienta ai in acest tip de factiune pe serverul nostru? Dar pe alte servere?:Experienta mea in aceasta factiune este de vreo 2 luni(pe alt server), experientele mele pe alte servere sunt foarte bine fixate stiu cam orice comanda de la tow, am fost leader la clan+ multe altele.|Factiuni la care ai avut lider si in ce perioada (indiferent daca e pe serverul nostru sau alt server):nu am avut niciodata lider la o factiune .|De ce crezi ca esti persoana potrivita pentru functia de lider al acestei factiuni?:pentru ca sunt rabdator, calm, glumet si cred ca as fi un lider bun .|Care este factiunea in cadrul caruia ai petrecut cel mai mult timp la noi pe server?:nu am fost vreodata intr o factiune la dvs pe server.|Ce ai aduce nou la aceasta factiune daca ai fi lider?:fiecare ar fi egali nimeni nu ar fi superiori toti suntem oameni. e doar un joc totusi.|Cat planuiesti sa stai in functie daca o sa fii acceptat?:cat mai mult posibil.|Cunosti regulamentul factiunii si regulamentul serverului? Daca o sa fii acceptat, o sa fii testat din acestea.:Stiu cate ceva dar o sa mai invat. dupa aceasta aplicatie.|In cazul in care vei fi acceptat, esti de acord sa sustii testele in cel mult 24 ore? Daca nu, o sa fii respins.:Da, sunt deacord.|Ai prieteni din real pe server? Dar prieteni virtuali care sa te urmeze in factiune?:momentan, nu am prietenii reali pe acest server, o sa invit mai multi, si cred ca o sa ma urmeze cativa|Ce functii ai mai avut pe serverul nostru? Dar pe alte servere?:pe acest server nu am avut nicio functine momentan, pe alte servere am fost helper si membru in factiune.|Esti constient ca daca vei stresa adminii, managerii sau pe oricine din staff referitor la aplicatie o sa fii picat?:Da, sunt constient|Alte precizari:Cam atat am avut de spus, sper sa fiu acceptat', '19', 3, '29.12.2023 16:25', 'Ionut[007]', 'Retrasa', 10, '29.12.2023 18:16'),
(13, 115, 'ImDariusHere', 1, 'Care este numele tau real? :numele meu real este Grigoras Darius Adrian.|Care este varsta ta reala? :am 14 ani.|Profil Facebook/instagram(obligatoriu). :https://www.instagram.com/6xli8ne/|Care este oras-ul in care locuiesti in momentul actual? :Locuiesc in orasul bucuresti si studiez(invat) la scoala nr3 balaceanca.|Care sunt hobby-urile tale? :football, gaming si tennis de picior.|Descriere personala despre tine ( Minim 70 cuvinte). :Sunt o persoana simpla crescut in zona rulara, am ochii caprui,brunet,am 30 de kg,am 1.47m, sunt muncitor si imi dau seama ca nimic nu se da mura in gura, fac sport mult in fiecare zi, sunt rabdator milos, impart cu oricine orice, imi plac sarmalele,ciorba,friptura etc, imi doresc intr-o zi sa ajung un footbalist mare la o echipa ca mancity, si cel mai important dau a doua sansa la oricine indifferent de fapta.|De aici incep intrebarile legate de server esti pregatit? :Da,Sunt Pregatit.|Nickname Sa:Mp::ImDariusHere.|Poza stats(obligatorie) :https://ibb.co/R4RzgfR.|Cu ce se ocupa un membru staff? :Un membru staff se ocupa cu ajutarea si ghidarea jucatorilor de pe server.|De ce iti doresti aceasta functie? :Imi doresc aceasta functie pentru a ajuta si ghida jucatorii noi.|De cat timp joci pe server-ul nostru? :de 2 zile.|Ai mai fost staff pe alte comunitati? Daca da ce grad ai avut? :am mai fost staff decat odata pe un server, am fost helper 2 luni.|Care sunt sistemele tale preferate de pe server-ul nostru de Sa:Mp? (top 3) :Winter questul si spin.|Care sunt sistemele ce nu iti plac pe server-ul nostru?si de ce? :Dice, dureaza prea mult.|Care sunt sistemele ce nu iti plac pe server-ul nostru?si de ce? :Dice, dureaza prea mult.|De ce ai ales sa te joci pe comunitatea noastra? :Am ales aceasta comunitate pentru ca vad in ea un pontential foarte mare .|Ai citit regulamentul helper pe forum-ul comunitatii? :am citit niste amanunte, o sa invat mai multe dupa aceasta aplicatie.|Esti constient ca daca vei fii acceptat pentru teste vei avea 24h pentru a sustine testele? :Da, sunt constient.|Esti constient ca daca vei stresa managerul / fondatorul vei fii automat picat? :Da, sunt constient.|Adaugari aditionale::Cam atat despre mine, sper sa fiu acceptat', '21', 2, '29.12.2023 18:26', 'Ionut[007]', 'Admis 0/3', 0, '30.12.2023 11:33'),
(14, 51, 'George', 2, 'Care este numele tau real?:Ma numesc George.|Care este varsta ta reala?:17 ani.|In ce oras locuiesti si in ce domeniu muncesti/studiezi?:Locuiesc in Galați și învăț la un liceu agricol.|Link profil Facebook/Instagram (obligatoriu):https://www.instagram.com/ge0rge_vas1le?igsh=M3JlY3c5a24yZmlu|Care sunt hobby-urile tale?:Tractoarele și mașinile.|Descriere personala (minim 50 cuvinte):Salut!Ma numesc George am 17 ani și sunt din Galați.Ador ieșirile în ora și sportul.Mancarurile preferate fiind cartofii prăjiți și carnea la grătar.Muzica mea preferata este muzica lui MGL deoarece motivul este evident.Imi plac foarte mult câinii, ba chiar am 2 câini de rasă, foarte frumoși dar necesită o responsabilitate uriașă. |Nickname SA:MP:George|Ce experienta ai in acest tip de factiune pe serverul nostru? Dar pe alte servere?:Pe acest server nu am experiență însă pe altele da. |Factiuni la care ai avut lider si in ce perioada (indiferent daca e pe serverul nostru sau alt server):Nu am mai fost lider. |De ce crezi ca esti persoana potrivita pentru functia de lider al acestei factiuni?:Da! |Care este factiunea in cadrul caruia ai petrecut cel mai mult timp la noi pe server?:Nu am mai avut facțiuni. |Ce ai aduce nou la aceasta factiune daca ai fi lider?:Un joc plăcut, iar raportul să fie făcut din placere. |Cat planuiesti sa stai in functie daca o sa fii acceptat?:365 de zile! |Cunosti regulamentul factiunii si regulamentul serverului? Daca o sa fii acceptat, o sa fii testat din acestea.:Da!! |In cazul in care vei fi acceptat, esti de acord sa sustii testele in cel mult 24 ore? Daca nu, o sa fii respins.:Da, sunt de acord. |Ai prieteni din real pe server? Dar prieteni virtuali care sa te urmeze in factiune?:Nu am prieteni ce joacă SAMP. |Ce functii ai mai avut pe serverul nostru? Dar pe alte servere?:Sunt Helper1 iar pe alte servere am ajuns la admin 5.|Esti constient ca daca vei stresa adminii, managerii sau pe oricine din staff referitor la aplicatie o sa fii picat?:Evident, nu mă grăbesc. |Alte precizari:Mulțumesc.', '19', 2, '29.12.2023 18:31', 'Stresuletz12', '', 8, '29.12.2023 20:52'),
(15, 144, 'GeorgeStefan10.', 1, 'Care este numele tau real? :George|Care este varsta ta reala? :Am 16 ani aproape|Profil Facebook/instagram(obligatoriu). :whis_geo_6|Care este oras-ul in care locuiesti in momentul actual? :Bucuresti|Care sunt hobby-urile tale? :Hobby-urile mele sunt inotul si kick box|Descriere personala despre tine ( Minim 70 cuvinte). :Va salut,ma numesc George,am varsta minunata de 15 ani jumate si imi place acest servar incat ma voi tine de el si voi chema prieteni care sunt interesanti de acest tip de server.|De aici incep intrebarile legate de server esti pregatit? :Da, sunt pregatit.|Nickname Sa:Mp::GeorgeStefan10.|Poza stats(obligatorie) :Va pot da pe disscord sau pe ig dar am 3.44 ore la momentul actual.|Cu ce se ocupa un membru staff? :Un membru staff se ocupa de a ajuta playeri noi pe server si la orice intrebare sa raspunda.|De ce iti doresti aceasta functie? :Eu imi doresc aceasta functie sa va ajut cu ce pot eu si daca imi vine vre-o idee sa o zic si sa o discutam.|De cat timp joci pe server-ul nostru? :Eu m-am jucat si inainte de mentenanta dar asa m-am apucat de pe data de 28.|Ai mai fost staff pe alte comunitati? Daca da ce grad ai avut? :Am fost pe MTA cu gradut admin si supervizor dar pe samp nu am fost pe nici un server.|Care sunt sistemele tale preferate de pe server-ul nostru de Sa:Mp? (top 3) :Eu inteleg intrebarea asta ca ce imi place top 3 ca sisteme daca am dreptate sunt Vip,Rainbow si stage.|Care sunt sistemele ce nu iti plac pe server-ul nostru?si de ce? :Nu am nici un sistem pe care nu imi place.|Care sunt sistemele ce nu iti plac pe server-ul nostru?si de ce? :Nu am nici un sistem pe care nu imi place.|De ce ai ales sa te joci pe comunitatea noastra? :Pentru ca am vazut-o pe youtube si am zis sa o incerc si eu sa vad cum este.|Ai citit regulamentul helper pe forum-ul comunitatii? :L-am citit.|Esti constient ca daca vei fii acceptat pentru teste vei avea 24h pentru a sustine testele? :Da sunt constient.|Esti constient ca daca vei stresa managerul / fondatorul vei fii automat picat? :Da sunt constient.|Adaugari aditionale::Nu mai am nimic de spus.', '21', 1, '29.12.2023 22:23', 'Ionut[007]', '', 0, '30.12.2023 11:33'),
(16, 213, 'porto_camatarul', 2, 'Care este numele tau real?:stefan|Care este varsta ta reala?:14|In ce oras locuiesti si in ce domeniu muncesti/studiezi?:hunedoara gimnaziala|Link profil Facebook/Instagram (obligatoriu):nam|Care sunt hobby-urile tale?:condusul si comunicarea|Descriere personala (minim 50 cuvinte):ma numesc stefan am 14 ani sunt din hunedoara imi plac masinile dar in special comunicarea cu persoanele dragi iubesc sa joc samp joc de 4 ani jumate si cred ca acest server este minunat deoarece toate celelante servere sau invechit sper ca ne vom intelege bine si promit ca osa fac treaba|Nickname SA:MP:porto_camatarul|Ce experienta ai in acest tip de factiune pe serverul nostru? Dar pe alte servere?:sa vorbesc cu persoanele si sa anunt eventuri etc|Factiuni la care ai avut lider si in ce perioada (indiferent daca e pe serverul nostru sau alt server):lspd taxi si tow|De ce crezi ca esti persoana potrivita pentru functia de lider al acestei factiuni?:nu am o ideeie|Care este factiunea in cadrul caruia ai petrecut cel mai mult timp la noi pe server?:niciuna|Ce ai aduce nou la aceasta factiune daca ai fi lider?:masinile|Cat planuiesti sa stai in functie daca o sa fii acceptat?:1 an|Cunosti regulamentul factiunii si regulamentul serverului? Daca o sa fii acceptat, o sa fii testat din acestea.:da|In cazul in care vei fi acceptat, esti de acord sa sustii testele in cel mult 24 ore? Daca nu, o sa fii respins.:da|Ai prieteni din real pe server? Dar prieteni virtuali care sa te urmeze in factiune?:nu|Ce functii ai mai avut pe serverul nostru? Dar pe alte servere?:niciuna|Esti constient ca daca vei stresa adminii, managerii sau pe oricine din staff referitor la aplicatie o sa fii picat?:da|Alte precizari:doamne ajuta', '19', 2, '30.12.2023 17:26', 'Stresuletz12', '', 6, '30.12.2023 19:29'),
(17, 185, 'imbono.rege', 2, 'Care este numele tau real?:Eu ma numesc Andrei Sebastian |Care este varsta ta reala?:Am 14 ani|In ce oras locuiesti si in ce domeniu muncesti/studiezi?:Eu locuiesc in oras ul Targu jiu si nu studiez nimic deocamdata|Link profil Facebook/Instagram (obligatoriu):instagram.com/bonono.onthebeat/|Care sunt hobby-urile tale?:Hobby-urile mele sunt de a ma juca samp si sa invat|Descriere personala (minim 50 cuvinte):Pai,in primul rand sunt o persoana foarte de incredere imi place sa ma joc jocuri mai ales samp si fifa si ajut pe oricine.|Nickname SA:MP:imbono.rege|Ce experienta ai in acest tip de factiune pe serverul nostru? Dar pe alte servere?:Pe acest server nu am fost vrodata lider dar pe alte server-e am fost si am multa experienta|Factiuni la care ai avut lider si in ce perioada (indiferent daca e pe serverul nostru sau alt server):Ballas,Taxi,LSPD,Grove street intre periada 12.07.2023-16.12.2023|De ce crezi ca esti persoana potrivita pentru functia de lider al acestei factiuni?:Eu cred ca sunt potrivit pentru aceasta functiie deoarece am multa experienta in camp-ul de Lider.|Care este factiunea in cadrul caruia ai petrecut cel mai mult timp la noi pe server?:Sunt nou nu am fost in nicio factiune.|Ce ai aduce nou la aceasta factiune daca ai fi lider?:O sa o aduc pe locu 1 pe server.|Cat planuiesti sa stai in functie daca o sa fii acceptat?:Eu vreau sa stau foarte mult in aceasta factiune pana o sa fiu foarte mandru de ea.|Cunosti regulamentul factiunii si regulamentul serverului? Daca o sa fii acceptat, o sa fii testat din acestea.:Da stiu aceste regulamente.|In cazul in care vei fi acceptat, esti de acord sa sustii testele in cel mult 24 ore? Daca nu, o sa fii respins.:Da sunt de acord.|Ai prieteni din real pe server? Dar prieteni virtuali care sa te urmeze in factiune?:Nu am prieteni inca.|Ce functii ai mai avut pe serverul nostru? Dar pe alte servere?:Pe alte server-e am fost in Ballas,Taxi,LSPD,Grove Street, News Raporter,|Esti constient ca daca vei stresa adminii, managerii sau pe oricine din staff referitor la aplicatie o sa fii picat?:Da sunt constiient.|Alte precizari:Nu am.', '19', 3, '30.12.2023 19:21', 'Stresuletz12', 'Avem lider la aceea factiune. Revino cu o aplicatie dupa ce sunt locuri. ', 8, '30.12.2023 19:30'),
(18, 237, 'DonSepti', 2, 'Care este numele tau real?:Mesesan Septimiu|Care este varsta ta reala?:30|In ce oras locuiesti si in ce domeniu muncesti/studiezi?:Cluj, camere video.|Link profil Facebook/Instagram (obligatoriu):Nu-l pun aici, privat admin.|Care sunt hobby-urile tale?:Masini,Fotbal,bautura.|Descriere personala (minim 50 cuvinte):Ma numesc mesesan septimiu sunt din cluj napoca lucrez in cadrul sistemelor de securitate locuiesc in cluj-napoca si imi place foarte mult sa conduc.|Nickname SA:MP:DonSepti.|Ce experienta ai in acest tip de factiune pe serverul nostru? Dar pe alte servere?:Lider b-zone.|Factiuni la care ai avut lider si in ce perioada (indiferent daca e pe serverul nostru sau alt server):5 luni Verdant Family mafie.|De ce crezi ca esti persoana potrivita pentru functia de lider al acestei factiuni?:Ma pricep.|Care este factiunea in cadrul caruia ai petrecut cel mai mult timp la noi pe server?:Niciuna.|Ce ai aduce nou la aceasta factiune daca ai fi lider?:Waruri, turfuri castigate.|Cat planuiesti sa stai in functie daca o sa fii acceptat?:Cat mai mult.|Cunosti regulamentul factiunii si regulamentul serverului? Daca o sa fii acceptat, o sa fii testat din acestea.:Da.|In cazul in care vei fi acceptat, esti de acord sa sustii testele in cel mult 24 ore? Daca nu, o sa fii respins.:Da.|Ai prieteni din real pe server? Dar prieteni virtuali care sa te urmeze in factiune?:Nu.|Ce functii ai mai avut pe serverul nostru? Dar pe alte servere?:Pe altele lider, aici nu.|Esti constient ca daca vei stresa adminii, managerii sau pe oricine din staff referitor la aplicatie o sa fii picat?:Da.|Alte precizari:Mersi.', '19', 3, '30.12.2023 23:08', 'Stresuletz12', 'Avem lider la aceea factiune. Te asteptam cu o aplicatie dupa ce sunt locuri.', 6, '30.12.2023 23:16'),
(19, 1, 'DanielSy', 2, 'Care este numele tau real?:111111111111111111111111|Care este varsta ta reala?:111111111111111111111111|In ce oras locuiesti si in ce domeniu muncesti/studiezi?:111111111111111111111111|Link profil Facebook/Instagram (obligatoriu):111111111111111111111111|Care sunt hobby-urile tale?:111111111111111111111111|Descriere personala (minim 50 cuvinte):111111111111111111111111|Nickname SA:MP:111111111111111111111111|Ce experienta ai in acest tip de factiune pe serverul nostru? Dar pe alte servere?:111111111111111111111111|Factiuni la care ai avut lider si in ce perioada (indiferent daca e pe serverul nostru sau alt server):111111111111111111111111|De ce crezi ca esti persoana potrivita pentru functia de lider al acestei factiuni?:111111111111111111111111|Care este factiunea in cadrul caruia ai petrecut cel mai mult timp la noi pe server?:111111111111111111111111|Ce ai aduce nou la aceasta factiune daca ai fi lider?:111111111111111111111111|Cat planuiesti sa stai in functie daca o sa fii acceptat?:111111111111111111111111|Cunosti regulamentul factiunii si regulamentul serverului? Daca o sa fii acceptat, o sa fii testat din acestea.:111111111111111111111111|In cazul in care vei fi acceptat, esti de acord sa sustii testele in cel mult 24 ore? Daca nu, o sa fii respins.:111111111111111111111111|Ai prieteni din real pe server? Dar prieteni virtuali care sa te urmeze in factiune?:111111111111111111111111|Ce functii ai mai avut pe serverul nostru? Dar pe alte servere?:111111111111111111111111|Esti constient ca daca vei stresa adminii, managerii sau pe oricine din staff referitor la aplicatie o sa fii picat?:111111111111111111111111|Alte precizari:111111111111111111111111', '19', 0, '31.12.2023 15:43', '', '', 2, ''),
(20, 1, 'DanielSy', 1, 'Care este numele tau real? :111111111111111111111111|Care este varsta ta reala? :111111111111111111111111|Profil Facebook/instagram(obligatoriu). :111111111111111111111111|Care este oras-ul in care locuiesti in momentul actual? :111111111111111111111111|Care sunt hobby-urile tale? :111111111111111111111111|Descriere personala despre tine ( Minim 70 cuvinte). :111111111111111111111111|De aici incep intrebarile legate de server esti pregatit? :111111111111111111111111|Nickname Sa:Mp::111111111111111111111111|Poza stats(obligatorie) :111111111111111111111111|Cu ce se ocupa un membru staff? :111111111111111111111111|De ce iti doresti aceasta functie? :111111111111111111111111|De cat timp joci pe server-ul nostru? :111111111111111111111111|Ai mai fost staff pe alte comunitati? Daca da ce grad ai avut? :111111111111111111111111|Care sunt sistemele tale preferate de pe server-ul nostru de Sa:Mp? (top 3) :111111111111111111111111|Care sunt sistemele ce nu iti plac pe server-ul nostru?si de ce? :111111111111111111111111|Care sunt sistemele ce nu iti plac pe server-ul nostru?si de ce? :111111111111111111111111|De ce ai ales sa te joci pe comunitatea noastra? :111111111111111111111111|Ai citit regulamentul helper pe forum-ul comunitatii? :111111111111111111111111|Esti constient ca daca vei fii acceptat pentru teste vei avea 24h pentru a sustine testele? :111111111111111111111111|Esti constient ca daca vei stresa managerul / fondatorul vei fii automat picat? :111111111111111111111111|Adaugari aditionale::111111111111111111111111', '21', 0, '31.12.2023 15:44', '', '', 0, ''),
(21, 1, 'DanielSy', 3, 'Care este numele tau real? :111111111111111111111111|Care este varsta ta reala? :111111111111111111111111|Link canal Youtube /profil tiktok. :111111111111111111111111|In ce oras locuiesti? :111111111111111111111111|Descriere( minim 25 cuvinte) :111111111111111111111111|Pentru ce functie doresti sa aplici? (tiktok/Youtuber) :111111111111111111111111|De ce doresti sa aplici in aceasta functie? :111111111111111111111111|Esti constient ca daca nu te vei ocupa de aceasta functie vei primi remove? :111111111111111111111111|Profil Facebook/instagram. :111111111111111111111111|Adaugari aditionale::111111111111111111111111', '10', 0, '31.12.2023 15:44', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `kenny_questions`
--

CREATE TABLE `kenny_questions` (
  `ID` int(11) NOT NULL,
  `Question` text NOT NULL,
  `Type` int(11) NOT NULL,
  `Date` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kenny_questions`
--

INSERT INTO `kenny_questions` (`ID`, `Question`, `Type`, `Date`) VALUES
(9, 'Care este numele tau real? ', 1, ''),
(10, 'Care este varsta ta reala? ', 1, ''),
(11, 'Profil Facebook/instagram(obligatoriu). ', 1, ''),
(12, 'Care este oras-ul in care locuiesti in momentul actual? ', 1, ''),
(13, 'Care sunt hobby-urile tale? ', 1, ''),
(14, 'Descriere personala despre tine ( Minim 70 cuvinte). ', 1, ''),
(15, 'De aici incep intrebarile legate de server esti pregatit? ', 1, ''),
(16, 'Nickname Sa:Mp:', 1, ''),
(17, 'Poza stats(obligatorie) ', 1, ''),
(18, 'Cu ce se ocupa un membru staff? ', 1, ''),
(19, 'De ce iti doresti aceasta functie? ', 1, ''),
(20, 'De cat timp joci pe server-ul nostru? ', 1, ''),
(21, 'Ai mai fost staff pe alte comunitati? Daca da ce grad ai avut? ', 1, ''),
(22, 'Care sunt sistemele tale preferate de pe server-ul nostru de Sa:Mp? (top 3) ', 1, ''),
(23, 'Care sunt sistemele ce nu iti plac pe server-ul nostru?si de ce? ', 1, ''),
(24, 'Care sunt sistemele ce nu iti plac pe server-ul nostru?si de ce? ', 1, ''),
(25, 'De ce ai ales sa te joci pe comunitatea noastra? ', 1, ''),
(26, 'Ai citit regulamentul helper pe forum-ul comunitatii? ', 1, ''),
(27, 'Esti constient ca daca vei fii acceptat pentru teste vei avea 24h pentru a sustine testele? ', 1, ''),
(28, 'Esti constient ca daca vei stresa managerul / fondatorul vei fii automat picat? ', 1, ''),
(29, 'Care este numele tau real? ', 3, ''),
(30, 'Care este varsta ta reala? ', 3, ''),
(31, 'Link canal Youtube /profil tiktok. ', 3, ''),
(33, 'In ce oras locuiesti? ', 3, ''),
(34, 'Descriere( minim 25 cuvinte) ', 3, ''),
(35, 'Pentru ce functie doresti sa aplici? (tiktok/Youtuber) ', 3, ''),
(36, 'De ce doresti sa aplici in aceasta functie? ', 3, ''),
(37, 'Esti constient ca daca nu te vei ocupa de aceasta functie vei primi remove? ', 3, ''),
(38, 'Profil Facebook/instagram. ', 3, ''),
(39, 'Adaugari aditionale:', 3, ''),
(40, 'Adaugari aditionale:', 1, ''),
(43, 'Care este numele tau real?', 2, ''),
(44, 'Care este varsta ta reala?', 2, ''),
(45, 'In ce oras locuiesti si in ce domeniu muncesti/studiezi?', 2, ''),
(46, 'Link profil Facebook/Instagram (obligatoriu)', 2, ''),
(47, 'Care sunt hobby-urile tale?', 2, ''),
(48, 'Descriere personala (minim 50 cuvinte)', 2, ''),
(49, 'Nickname SA:MP', 2, ''),
(50, 'Ce experienta ai in acest tip de factiune pe serverul nostru? Dar pe alte servere?', 2, ''),
(51, 'Factiuni la care ai avut lider si in ce perioada (indiferent daca e pe serverul nostru sau alt server)', 2, ''),
(52, 'De ce crezi ca esti persoana potrivita pentru functia de lider al acestei factiuni?', 2, ''),
(53, 'Care este factiunea in cadrul caruia ai petrecut cel mai mult timp la noi pe server?', 2, ''),
(54, 'Ce ai aduce nou la aceasta factiune daca ai fi lider?', 2, ''),
(55, 'Cat planuiesti sa stai in functie daca o sa fii acceptat?', 2, ''),
(56, 'Cunosti regulamentul factiunii si regulamentul serverului? Daca o sa fii acceptat, o sa fii testat din acestea.', 2, ''),
(57, 'In cazul in care vei fi acceptat, esti de acord sa sustii testele in cel mult 24 ore? Daca nu, o sa fii respins.', 2, ''),
(58, 'Ai prieteni din real pe server? Dar prieteni virtuali care sa te urmeze in factiune?', 2, ''),
(59, 'Ce functii ai mai avut pe serverul nostru? Dar pe alte servere?', 2, ''),
(60, 'Esti constient ca daca vei stresa adminii, managerii sau pe oricine din staff referitor la aplicatie o sa fii picat?', 2, ''),
(62, 'Alte precizari', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `kenny_recovery`
--

CREATE TABLE `kenny_recovery` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(25) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `SecretCode` varchar(60) NOT NULL,
  `RecoveryTime` int(11) NOT NULL,
  `Type` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kenny_suspend`
--

CREATE TABLE `kenny_suspend` (
  `ID` int(11) NOT NULL,
  `UserName` varchar(25) NOT NULL,
  `UserID` int(11) NOT NULL,
  `AdminName` varchar(25) NOT NULL,
  `AdminID` int(11) NOT NULL,
  `Days` int(4) NOT NULL,
  `Reason` varchar(90) NOT NULL,
  `SuspendDate` varchar(11) NOT NULL,
  `ExpireDate` varchar(11) NOT NULL,
  `Permanent` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `last7_hours`
--

CREATE TABLE `last7_hours` (
  `userid` int(11) NOT NULL,
  `seconds_played` int(11) NOT NULL,
  `date_played` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
(10, 1, 'dan boss'),
(11, 1, 'ah'),
(12, 1, 's'),
(13, 1, 's'),
(14, 1, 's'),
(15, 1, 's'),
(16, 1, 's'),
(17, 1, 'f'),
(18, 1, 're'),
(19, 1, 'gw'),
(20, 1, 're'),
(21, 1, 'nu pot sa cred'),
(22, 1, 'fmm'),
(23, 1, 'ce'),
(24, 1, '.'),
(25, 1, 'merge'),
(26, 1, 'da'),
(27, 1, '?'),
(28, 1, 'da'),
(29, 1, 'merge'),
(30, 1, '2000000000'),
(31, 1, 'atat e suma'),
(32, 1, '.'),
(33, 1, 're'),
(34, 1, 'return Dialog_Show(playerid, DIALOG_INSERT_CLAN_NAME, DIALOG_STYLE_INPUT, \"Clan name\", \"Scrie mai jos numele pe care il doresti '),
(35, 1, 'd'),
(36, 1, 're'),
(37, 1, '.'),
(38, 1, '.'),
(39, 1, 'ce noroc, asa din prima !? '),
(40, 1, 're'),
(41, 1, '.'),
(42, 1, 're'),
(43, 1, 's'),
(44, 1, '.r'),
(45, 1, 're'),
(46, 1, 're'),
(47, 1, 're'),
(48, 1, '.'),
(49, 1, 're'),
(50, 1, 're'),
(51, 5, 'vc'),
(52, 1, 're'),
(53, 1, '.'),
(54, 1, '..'),
(55, 1, ''),
(56, 2, '.'),
(57, 2, 'cplm'),
(58, 2, '.'),
(59, 2, '.'),
(60, 1, '.'),
(61, 1, 're'),
(62, 2, 'sa'),
(63, 2, 'da'),
(64, 1, 'am pariat pe recd'),
(65, 1, 'red'),
(66, 1, 'si n umrg'),
(67, 1, 'a'),
(68, 1, 're'),
(69, 1, '.'),
(70, 1, 'engima'),
(71, 1, '.'),
(72, 1, 're'),
(73, 1, '.'),
(74, 1, 're'),
(75, 1, '.'),
(76, 1, 'da'),
(77, 1, 're'),
(78, 1, 're'),
(79, 1, 'gmx'),
(80, 1, 'a'),
(81, 1, 're'),
(82, 1, 'merge'),
(83, 1, 'zic?'),
(84, 1, 're'),
(85, 1, '.'),
(86, 1, 'ds'),
(87, 1, 're'),
(88, 1, 'ds'),
(89, 1, 're'),
(90, 1, 'd'),
(91, 1, 're'),
(92, 1, 'bugged'),
(93, 1, 'bzone'),
(94, 1, '.'),
(95, 1, 'bugged'),
(96, 1, 'redtimes'),
(97, 1, 're'),
(98, 7, '...........'),
(99, 1, ' '),
(100, 1, '.set'),
(101, 1, '.'),
(102, 1, 're'),
(103, 1, '.'),
(104, 1, 'fish'),
(105, 1, ''),
(106, 1, 're'),
(107, 1, '.s'),
(108, 1, 're'),
(109, 1, '.'),
(110, 1, 'y'),
(111, 1, 'gmx'),
(112, 1, '.v'),
(113, 1, 'v'),
(114, 1, 're'),
(115, 1, 're'),
(116, 1, 're'),
(117, 1, 'fv'),
(118, 1, 'g'),
(119, 1, 'id 90'),
(120, 1, 're'),
(121, 1, ''),
(122, 1, '.'),
(123, 1, 're'),
(124, 1, 'spawnat la spawn'),
(125, 1, 's/hop'),
(126, 1, 'n'),
(127, 1, 'UPDATE `clan_hqs` SET `hq_intpos`=\'#f #f #f\',`hq_interior`=\'#d\',`hq_virtual`=\'#d\' WHERE `hq_id` = \'#d\' LIMIT 1;'),
(128, 1, '.'),
(129, 1, 'ba muie'),
(130, 1, 'te omor'),
(131, 1, '.'),
(132, 1, 'www'),
(133, 1, 're'),
(134, 1, 're'),
(135, 1, '.'),
(136, 1, 're'),
(137, 1, '.'),
(138, 1, 'id 0'),
(139, 1, 'starthunt'),
(140, 1, '.'),
(141, 1, 're'),
(142, 1, 're'),
(143, 1, 're'),
(144, 1, ''),
(145, 1, './plantbomb'),
(146, 1, 'signature'),
(147, 1, 'l'),
(148, 1, 're'),
(149, 1, '.'),
(150, 1, 're'),
(151, 1, '.'),
(152, 1, 'boss'),
(153, 1, 'bos'),
(154, 1, 'boss'),
(155, 1, 's'),
(156, 1, 're'),
(157, 1, 'g'),
(158, 1, 'bos'),
(159, 1, 'boss'),
(160, 1, 're'),
(161, 1, 'sef'),
(162, 1, 'dane'),
(163, 1, 're'),
(164, 1, 'este'),
(165, 1, 'gmx'),
(166, 1, 're'),
(167, 1, '.'),
(168, 1, 're'),
(169, 1, 'gay'),
(170, 1, 're'),
(171, 1, 'd'),
(172, 1, 'dane'),
(173, 1, 'sugaci'),
(174, 1, 'sugaci x'),
(175, 1, 'sugaci'),
(176, 1, 'ha'),
(177, 1, 'null'),
(178, 1, 'pula'),
(179, 1, 'NULL'),
(180, 1, 'daniel'),
(181, 1, 'dane'),
(182, 1, 'dane1'),
(183, 1, 'dane'),
(184, 1, 'dane1'),
(185, 1, 'dane boss'),
(186, 1, 'v'),
(187, 1, 'g'),
(188, 1, '.'),
(189, 1, '.'),
(190, 1, 'mapping by nobilzeus'),
(191, 1, 'ia sa vedem'),
(192, 1, 'zic'),
(193, 1, 'si eu'),
(194, 1, 'asa'),
(195, 18, 'tf'),
(196, 1, '2|7|29|21'),
(197, 1, '38|731578|19|1'),
(198, 1, '18|19|10|13'),
(199, 1, '423441|2|1|41863'),
(200, 1, '9999'),
(201, 1, 'id 4'),
(202, 1, 'pin'),
(203, 1, ''),
(204, 1, 'pin'),
(205, 1, 're'),
(206, 1, 'da'),
(207, 1, ''),
(208, 1, 're'),
(209, 1, 'pin'),
(210, 1, 'nefrit');

-- --------------------------------------------------------

--
-- Table structure for table `logs_connect`
--

CREATE TABLE `logs_connect` (
  `ID` int(11) NOT NULL,
  `Player` int(11) NOT NULL,
  `Log` text NOT NULL,
  `IP` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs_connect`
--

INSERT INTO `logs_connect` (`ID`, `Player`, `Log`, `IP`) VALUES
(1, 1, 'DanielSy has connected [cash: $] [bank: $0] [PP: 270] [Level: 10] [hours: 999.00]\')', ''),
(2, 3, 'DanielSy12 has connected [cash: $??] [bank: $1,000] [PP: 0] [Level: 1] [hours: 0.00]\')', ''),
(3, 1, 'DanielSy has connected [cash: $?] [bank: $0] [PP: 270] [Level: 10] [hours: 999.00]\')', ''),
(4, 1, 'DanielSy has connected [cash: $999] [bank: $0] [PP: 270] [Level: 10] [hours: 999.00]\')', ''),
(5, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(6, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(7, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(8, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(9, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(10, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(11, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(12, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(13, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(14, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(15, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(16, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(17, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(18, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(19, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(20, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(21, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(22, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(23, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(24, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(25, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(26, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(27, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(28, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(29, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(30, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(31, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(32, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $134,154] [PP: 270] [Level: 10] [hours: 999.35]\')', ''),
(33, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $134,154] [PP: 270] [Level: 10] [hours: 999.35]\')', ''),
(34, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $134,154] [PP: 270] [Level: 10] [hours: 999.35]\')', ''),
(35, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $134,154] [PP: 270] [Level: 10] [hours: 999.35]\')', ''),
(36, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $134,154] [PP: 270] [Level: 10] [hours: 999.35]\')', ''),
(37, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $134,154] [PP: 270] [Level: 10] [hours: 999.35]\')', ''),
(38, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $134,154] [PP: 270] [Level: 10] [hours: 999.35]\')', ''),
(39, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $134,154] [PP: 270] [Level: 10] [hours: 999.35]\')', ''),
(40, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $134,154] [PP: 270] [Level: 10] [hours: 999.35]\')', ''),
(41, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $134,154] [PP: 270] [Level: 10] [hours: 999.35]\')', ''),
(42, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(43, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(44, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(45, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(46, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(47, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(48, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(49, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(50, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(51, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(52, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(53, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(54, 1, 'DanielSy has connected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(55, 1, 'DanielSy has connected [cash: $0] [bank: $181,530] [PP: 210] [Level: 10] [hours: 999.36]\')', ''),
(56, 1, 'DanielSy has connected [cash: $0] [bank: $181,530] [PP: 210] [Level: 10] [hours: 999.36]\')', ''),
(57, 1, 'DanielSy has connected [cash: $0] [bank: $181,530] [PP: 210] [Level: 10] [hours: 999.36]\')', ''),
(58, 1, 'DanielSy has connected [cash: $0] [bank: $181,530] [PP: 210] [Level: 10] [hours: 999.36]\')', ''),
(59, 1, 'DanielSy has connected [cash: $0] [bank: $181,530] [PP: 210] [Level: 10] [hours: 999.36]\')', ''),
(60, 1, 'DanielSy has connected [cash: $0] [bank: $181,530] [PP: 210] [Level: 10] [hours: 999.36]\')', ''),
(61, 1, 'DanielSy has connected [cash: $0] [bank: $181,530] [PP: 210] [Level: 10] [hours: 999.36]\')', ''),
(62, 1, 'DanielSy has connected [cash: $0] [bank: $181,530] [PP: 210] [Level: 10] [hours: 999.36]\')', ''),
(63, 1, 'DanielSy has connected [cash: $0] [bank: $181,530] [PP: 210] [Level: 10] [hours: 999.36]\')', ''),
(64, 1, 'DanielSy has connected [cash: $0] [bank: $181,530] [PP: 210] [Level: 10] [hours: 999.36]\')', ''),
(65, 1, 'DanielSy has connected [cash: $2,702,642] [bank: $181,530] [PP: 210] [Level: 10] [hours: 999.36]\')', ''),
(66, 1, 'DanielSy has connected [cash: $2,702,642] [bank: $181,530] [PP: 210] [Level: 10] [hours: 999.36]\')', ''),
(67, 1, 'DanielSy has connected [cash: $2,702,642] [bank: $181,530] [PP: 210] [Level: 10] [hours: 999.36]\')', ''),
(68, 1, 'DanielSy has connected [cash: $902,642] [bank: $229,143] [PP: 210] [Level: 10] [hours: 999.51]\')', ''),
(69, 1, 'DanielSy has connected [cash: $902,642] [bank: $229,143] [PP: 210] [Level: 10] [hours: 999.51]\')', ''),
(70, 1, 'DanielSy has connected [cash: $902,642] [bank: $229,143] [PP: 210] [Level: 10] [hours: 999.51]\')', ''),
(71, 1, 'DanielSy has connected [cash: $902,642] [bank: $229,143] [PP: 210] [Level: 10] [hours: 999.51]\')', ''),
(72, 1, 'DanielSy has connected [cash: $902,642] [bank: $229,143] [PP: 210] [Level: 10] [hours: 999.51]\')', ''),
(73, 1, 'DanielSy has connected [cash: $902,642] [bank: $229,143] [PP: 210] [Level: 10] [hours: 999.51]\')', ''),
(74, 1, 'DanielSy.DANE has connected [cash: $294.714.558] [bank: $3.092.241] [PP: 40] [Level: 10] [hours: 1004.70]\')', ''),
(75, 1, 'DanielSy.DANE has connected [cash: $294.714.558] [bank: $3.092.241] [PP: 40] [Level: 10] [hours: 1004.70]\')', ''),
(76, 1, 'DanielSy.DANE has connected [cash: $294.714.558] [bank: $3.092.241] [PP: 40] [Level: 10] [hours: 1004.70]\')', ''),
(77, 1, 'DanielSy.DANE has connected [cash: $294.714.558] [bank: $3.092.241] [PP: 40] [Level: 10] [hours: 1004.70]\')', ''),
(78, 1, 'DanielSy.DANE has connected [cash: $294.714.558] [bank: $3.092.241] [PP: 40] [Level: 10] [hours: 1004.70]\')', ''),
(79, 1, 'DanielSy.DANE has connected [cash: $297.714.558] [bank: $3.240.906] [PP: 48] [Level: 10] [hours: 1004.76]\')', ''),
(80, 1, 'DanielSy.DANE has connected [cash: $300.712.560] [bank: $3.362.101] [PP: 56] [Level: 10] [hours: 1004.84]\')', ''),
(81, 1, 'DanielSy.DANE has connected [cash: $300.712.560] [bank: $3.362.101] [PP: 56] [Level: 10] [hours: 1004.84]\')', ''),
(82, 1, 'DanielSy.DANE has connected [cash: $300.712.560] [bank: $3.362.101] [PP: 56] [Level: 10] [hours: 1004.84]\')', ''),
(83, 1, 'DanielSy.DANE has connected [cash: $300.712.560] [bank: $3.362.101] [PP: 56] [Level: 10] [hours: 1004.84]\')', ''),
(84, 1, 'DanielSy.DANE has connected [cash: $300.711.561] [bank: $3.362.101] [PP: 56] [Level: 10] [hours: 1004.84]\')', ''),
(85, 1, 'DanielSy.DANE has connected [cash: $300.709.563] [bank: $3.362.101] [PP: 56] [Level: 10] [hours: 1004.84]\')', ''),
(86, 1, 'DanielSy.DANE has connected [cash: $300.709.563] [bank: $3.362.101] [PP: 56] [Level: 10] [hours: 1004.84]\')', ''),
(87, 1, 'DanielSy.DANE has connected [cash: $300.707.565] [bank: $3.362.101] [PP: 56] [Level: 10] [hours: 1004.84]\')', ''),
(88, 1, 'DanielSy.DANE has connected [cash: $303.705.567] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(89, 1, 'DanielSy.DANE has connected [cash: $303.704.568] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(90, 1, 'DanielSy.DANE has connected [cash: $303.703.569] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(91, 1, 'DanielSy.DANE has connected [cash: $303.702.570] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(92, 1, 'DanielSy.DANE has connected [cash: $303.702.570] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(93, 1, 'DanielSy.DANE has connected [cash: $303.702.570] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(94, 1, 'DanielSy.DANE has connected [cash: $303.702.570] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(95, 1, 'DanielSy.DANE has connected [cash: $303.701.571] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(96, 1, 'DanielSy.DANE has connected [cash: $303.698.574] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(97, 1, 'DanielSy has connected [cash: $303.697.575] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(98, 1, 'DanielSy has connected [cash: $303.696.576] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(99, 1, 'DanielSy has connected [cash: $304.739.745] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(100, 1, 'DanielSy has connected [cash: $304.738.746] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(101, 1, 'DanielSy has connected [cash: $304.738.746] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(102, 1, 'DanielSy has connected [cash: $304.737.747] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(103, 1, 'DanielSy has connected [cash: $307.736.748] [bank: $3.618.928] [PP: 72] [Level: 10] [hours: 1005.19]\')', ''),
(104, 1, 'DanielSy has connected [cash: $307.735.749] [bank: $3.618.928] [PP: 72] [Level: 10] [hours: 1005.19]\')', ''),
(105, 1, 'DanielSy has connected [cash: $307.735.749] [bank: $3.618.928] [PP: 72] [Level: 10] [hours: 1005.19]\')', ''),
(106, 1, 'DanielSy has connected [cash: $309.014.001] [bank: $3.618.928] [PP: 72] [Level: 10] [hours: 1005.19]\')', ''),
(107, 1, 'DanielSy has connected [cash: $309.014.001] [bank: $3.618.928] [PP: 72] [Level: 10] [hours: 1005.19]\')', ''),
(108, 1, 'DanielSy has connected [cash: $318.924.852] [bank: $3.618.928] [PP: 122] [Level: 10] [hours: 1005.19]\')', ''),
(109, 1, 'DanielSy has connected [cash: $345.364.100] [bank: $3.618.928] [PP: 395] [Level: 10] [hours: 1005.19]\')', ''),
(110, 1, 'DanielSy has connected [cash: $345.364.100] [bank: $3.618.928] [PP: 395] [Level: 10] [hours: 1005.19]\')', ''),
(111, 1, 'DanielSy has connected [cash: $346.494.333] [bank: $3.618.928] [PP: 395] [Level: 10] [hours: 1005.19]\')', ''),
(112, 1, 'DanielSy has connected [cash: $346.494.333] [bank: $3.618.928] [PP: 395] [Level: 10] [hours: 1005.19]\')', ''),
(113, 1, 'DanielSy has connected [cash: $346.494.333] [bank: $3.618.928] [PP: 424] [Level: 10] [hours: 1005.19]\')', ''),
(114, 1, 'DanielSy has connected [cash: $346.494.333] [bank: $3.618.928] [PP: 459] [Level: 10] [hours: 1005.19]\')', ''),
(115, 1, 'DanielSy has connected [cash: $346.494.333] [bank: $3.618.928] [PP: 459] [Level: 10] [hours: 1005.19]\')', ''),
(116, 1, 'DanielSy has connected [cash: $346.494.333] [bank: $3.618.928] [PP: 459] [Level: 10] [hours: 1005.19]\')', ''),
(117, 1, 'DanielSy has connected [cash: $346.494.333] [bank: $3.618.928] [PP: 459] [Level: 10] [hours: 1005.19]\')', ''),
(118, 1, 'DanielSy has connected [cash: $358.192.719] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(119, 1, 'DanielSy has connected [cash: $358.192.719] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(120, 1, 'DanielSy has connected [cash: $367.096.768] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(121, 1, 'DanielSy has connected [cash: $367.096.768] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(122, 1, 'DanielSy has connected [cash: $367.096.768] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(123, 1, 'DanielSy has connected [cash: $367.096.768] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(124, 1, 'DanielSy has connected [cash: $367.096.768] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(125, 1, 'DanielSy has connected [cash: $367.096.768] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(126, 1, 'DanielSy has connected [cash: $367.096.768] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(127, 1, 'DanielSy has connected [cash: $369.185.778] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(128, 1, 'DanielSy has connected [cash: $369.185.778] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(129, 1, 'DanielSy has connected [cash: $379.817.569] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(130, 1, 'DanielSy has connected [cash: $379.817.569] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(131, 1, 'DanielSy has connected [cash: $379.817.569] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(132, 1, 'DanielSy has connected [cash: $379.817.569] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(133, 1, 'DanielSy has connected [cash: $379.817.569] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(134, 1, 'DanielSy has connected [cash: $379.817.569] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(135, 1, 'DanielSy has connected [cash: $382.817.569] [bank: $3.913.586] [PP: 475] [Level: 10] [hours: 1005.35]\')', ''),
(136, 1, 'DanielSy has connected [cash: $382.817.569] [bank: $3.913.586] [PP: 475] [Level: 10] [hours: 1005.35]\')', ''),
(137, 1, 'DanielSy has connected [cash: $382.817.569] [bank: $3.913.586] [PP: 475] [Level: 10] [hours: 1005.35]\')', ''),
(138, 1, 'DanielSy has connected [cash: $382.817.569] [bank: $3.913.586] [PP: 475] [Level: 10] [hours: 1005.35]\')', ''),
(139, 1, 'DanielSy has connected [cash: $382.817.569] [bank: $3.913.586] [PP: 475] [Level: 10] [hours: 1005.35]\')', ''),
(140, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(141, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(142, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(143, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(144, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(145, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(146, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(147, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(148, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(149, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(150, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(151, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(152, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(153, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(154, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(155, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(156, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(157, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(158, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(159, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(160, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(161, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(162, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(163, 1, 'DanielSy has connected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(164, 1, 'DanielSy has connected [cash: $388.817.569] [bank: $4.192.512] [PP: 1091] [Level: 10] [hours: 1005.52]\')', ''),
(165, 1, 'DanielSy has connected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(166, 1, 'DanielSy has connected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(167, 1, 'DanielSy has connected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(168, 1, 'DanielSy has connected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(169, 1, 'DanielSy has connected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(170, 1, 'DanielSy has connected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(171, 1, 'DanielSy has connected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(172, 1, 'DanielSy has connected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(173, 1, 'DanielSy has connected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(174, 1, 'DanielSy has connected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(175, 1, 'DanielSy has connected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(176, 1, 'DanielSy has connected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(177, 1, 'DanielSy has connected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(178, 1, 'DanielSy has connected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(179, 1, 'DanielSy has connected [cash: $394.817.569] [bank: $4.488.845] [PP: 1107] [Level: 10] [hours: 1005.69]\')', ''),
(180, 1, 'DANEDanielSy has connected [cash: $394.817.569] [bank: $4.488.845] [PP: 1107] [Level: 10] [hours: 1005.69]\')', ''),
(181, 1, 'DANEDanielSy has connected [cash: $406.817.569] [bank: $5.026.217] [PP: 1139] [Level: 10] [hours: 1005.71]\')', ''),
(182, 1, 'DANEDanielSy has connected [cash: $406.817.569] [bank: $5.026.217] [PP: 1139] [Level: 10] [hours: 1005.71]\')', ''),
(183, 1, 'DANEDanielSy has connected [cash: $406.817.569] [bank: $5.026.217] [PP: 1139] [Level: 10] [hours: 1005.71]\')', ''),
(184, 1, 'DANEDanielSy has connected [cash: $409.817.569] [bank: $5.161.739] [PP: 1147] [Level: 10] [hours: 1005.71]\')', ''),
(185, 1, 'DANEDanielSy has connected [cash: $409.817.569] [bank: $5.161.739] [PP: 1147] [Level: 10] [hours: 1005.71]\')', ''),
(186, 1, 'DANEDanielSy has connected [cash: $409.817.569] [bank: $5.161.739] [PP: 1147] [Level: 10] [hours: 1005.71]\')', ''),
(187, 1, 'DANEDanielSy has connected [cash: $409.817.569] [bank: $5.161.739] [PP: 1147] [Level: 10] [hours: 1005.71]\')', ''),
(188, 1, 'DANEDanielSy has connected [cash: $409.817.569] [bank: $5.161.739] [PP: 1147] [Level: 10] [hours: 1005.71]\')', ''),
(189, 1, 'DANEDanielSy has connected [cash: $409.817.569] [bank: $5.161.739] [PP: 1147] [Level: 10] [hours: 1005.71]\')', ''),
(190, 1, 'DANEDanielSy has connected [cash: $410.817.569] [bank: $5.161.739] [PP: 1152] [Level: 10] [hours: 1005.71]\')', ''),
(191, 1, 'DANEDanielSy has connected [cash: $410.817.569] [bank: $5.161.739] [PP: 1152] [Level: 10] [hours: 1005.71]\')', ''),
(192, 1, 'DANEDanielSy has connected [cash: $410.817.569] [bank: $5.161.739] [PP: 15] [Level: 10] [hours: 1005.71]\')', ''),
(193, 1, 'DANEDanielSy has connected [cash: $410.817.569] [bank: $5.161.739] [PP: 25] [Level: 10] [hours: 1005.71]\')', ''),
(194, 1, 'DANEDanielSy has connected [cash: $410.817.579] [bank: $5.161.739] [PP: 25] [Level: 10] [hours: 1005.71]\')', ''),
(195, 1, 'DANEDanielSy has connected [cash: $200.000] [bank: $5.161.739] [PP: 35] [Level: 10] [hours: 1005.71]\')', ''),
(196, 1, 'DANEDanielSy has connected [cash: $200.000] [bank: $5.161.739] [PP: 35] [Level: 10] [hours: 1005.71]\')', ''),
(197, 1, 'DANEDanielSy has connected [cash: $200.000] [bank: $5.161.739] [PP: 35] [Level: 10] [hours: 1005.71]\')', ''),
(198, 1, 'DANEDanielSy has connected [cash: $200.000] [bank: $5.161.739] [PP: 35] [Level: 10] [hours: 1005.71]\')', ''),
(199, 1, 'DANEDanielSy has connected [cash: $200.000] [bank: $5.161.739] [PP: 35] [Level: 10] [hours: 1005.71]\')', ''),
(200, 1, 'DANEDanielSy has connected [cash: $200.000] [bank: $5.161.739] [PP: 35] [Level: 10] [hours: 1005.71]\')', ''),
(201, 1, 'DanielSy has connected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(202, 1, 'DanielSy has connected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(203, 1, 'DanielSy has connected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(204, 1, 'DanielSy has connected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(205, 1, 'DanielSy has connected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(206, 1, 'DanielSy has connected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(207, 1, 'DanielSy has connected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(208, 1, 'DanielSy has connected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(209, 1, 'DanielSy has connected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(210, 1, 'DanielSy has connected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(211, 1, 'DanielSy has connected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(212, 1, 'DanielSy has connected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(213, 1, 'DanielSy has connected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(214, 1, 'DanielSy has connected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(215, 1, 'DanielSy has connected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(216, 1, 'DanielSy has connected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(217, 1, 'DanielSy has connected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(218, 1, 'DanielSy has connected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(219, 1, 'DanielSy has connected [cash: $6.200.000] [bank: $5.428.013] [PP: 51] [Level: 10] [hours: 1005.78]\')', ''),
(220, 1, 'DanielSy has connected [cash: $6.200.000] [bank: $5.428.013] [PP: 51] [Level: 10] [hours: 1005.78]\')', ''),
(221, 1, 'DanielSy has connected [cash: $6.200.000] [bank: $5.428.013] [PP: 51] [Level: 10] [hours: 1005.78]\')', ''),
(222, 1, 'DanielSy has connected [cash: $6.200.000] [bank: $5.428.013] [PP: 51] [Level: 10] [hours: 1005.78]\')', ''),
(223, 1, 'DanielSy has connected [cash: $6.200.000] [bank: $5.428.013] [PP: 51] [Level: 10] [hours: 1005.78]\')', ''),
(224, 1, 'DanielSy has connected [cash: $6.200.000] [bank: $5.428.013] [PP: 51] [Level: 10] [hours: 1005.78]\')', ''),
(225, 1, 'DanielSy has connected [cash: $6.200.000] [bank: $5.428.013] [PP: 51] [Level: 10] [hours: 1005.78]\')', ''),
(226, 12, 'MASTER has connected [cash: $15.005.000] [bank: $1.000] [PP: 0] [Level: 1] [hours: 0.00]\')', ''),
(227, 15, 'MASTER has connected [cash: $15.005.000] [bank: $1.000] [PP: 0] [Level: 1] [hours: 0.00]\')', ''),
(228, 16, 'MASTER has connected [cash: $15.005.000] [bank: $1.000] [PP: 0] [Level: 1] [hours: 0.00]\')', ''),
(229, 1, 'DanielSy has connected [cash: $9.199.001] [bank: $5.570.744] [PP: 59] [Level: 10] [hours: 1005.90]\')', ''),
(230, 18, 'MASTER has connected [cash: $5.000] [bank: $1.000] [PP: 0] [Level: 1] [hours: 0.00]\')', ''),
(231, 1, 'DanielSy has connected [cash: $9.199.001] [bank: $5.570.744] [PP: 59] [Level: 10] [hours: 1005.90]\')', ''),
(232, 1, 'DanielSy has connected [cash: $9.199.001] [bank: $5.570.744] [PP: 59] [Level: 10] [hours: 1005.90]\')', ''),
(233, 1, 'DanielSy has connected [cash: $9.199.001] [bank: $5.570.744] [PP: 59] [Level: 10] [hours: 1005.90]\')', ''),
(234, 1, 'DanielSy has connected [cash: $12.199.001] [bank: $5.706.305] [PP: 67] [Level: 10] [hours: 1005.91]\')', ''),
(235, 1, 'DanielSy has connected [cash: $20.199.001] [bank: $5.969.972] [PP: 88] [Level: 10] [hours: 1005.91]\')', ''),
(236, 1, 'DanielSy has connected [cash: $23.199.001] [bank: $6.102.126] [PP: 96] [Level: 10] [hours: 1005.91]\')', ''),
(237, 1, 'DanielSy has connected [cash: $23.199.001] [bank: $6.102.126] [PP: 96] [Level: 10] [hours: 1005.91]\')', ''),
(238, 19, 'Mos.vampiru has connected [cash: $15.005.000] [bank: $1.000] [PP: 0] [Level: 1] [hours: 0.00]\')', ''),
(239, 1, 'DanielSy has connected [cash: $23.199.001] [bank: $6.102.126] [PP: 96] [Level: 10] [hours: 1005.91]\')', ''),
(240, 1, 'DanielSy has connected [cash: $23.199.001] [bank: $6.102.126] [PP: 96] [Level: 10] [hours: 1005.91]\')', ''),
(241, 1, 'DanielSy has connected [cash: $23.199.001] [bank: $6.102.126] [PP: 96] [Level: 10] [hours: 1005.91]\')', ''),
(242, 1, 'DanielSy has connected [cash: $23.199.001] [bank: $6.102.126] [PP: 96] [Level: 10] [hours: 1005.91]\')', ''),
(243, 1, 'DanielSy has connected [cash: $23.199.001] [bank: $6.102.126] [PP: 96] [Level: 10] [hours: 1005.91]\')', ''),
(244, 1, 'DanielSy has connected [cash: $23.199.001] [bank: $6.102.126] [PP: 96] [Level: 10] [hours: 1005.91]\')', ''),
(245, 1, 'DanielSy has connected [cash: $23.199.001] [bank: $6.102.126] [PP: 96] [Level: 10] [hours: 1005.91]\')', ''),
(246, 1, 'DanielSy has connected [cash: $23.199.001] [bank: $6.102.126] [PP: 96] [Level: 10] [hours: 1005.91]\')', ''),
(247, 1, 'DanielSy has connected [cash: $23.199.001] [bank: $6.102.126] [PP: 96] [Level: 10] [hours: 1005.91]\')', ''),
(248, 1, 'DanielSy has connected [cash: $23.199.001] [bank: $6.102.126] [PP: 96] [Level: 10] [hours: 1005.91]\')', ''),
(249, 1, 'DanielSy has connected [cash: $26.199.001] [bank: $6.262.563] [PP: 104] [Level: 10] [hours: 1005.96]\')', ''),
(250, 1, 'DanielSy has connected [cash: $26.199.001] [bank: $6.262.563] [PP: 104] [Level: 10] [hours: 1005.96]\')', ''),
(251, 1, 'DanielSy has connected [cash: $26.199.001] [bank: $6.262.563] [PP: 104] [Level: 10] [hours: 1005.96]\')', ''),
(252, 1, 'DanielSy has connected [cash: $26.199.001] [bank: $6.262.563] [PP: 104] [Level: 10] [hours: 1005.96]\')', ''),
(253, 1, 'DanielSy has connected [cash: $26.199.001] [bank: $6.262.563] [PP: 104] [Level: 10] [hours: 1005.96]\')', ''),
(254, 1, 'DanielSy has connected [cash: $26.199.001] [bank: $6.262.563] [PP: 104] [Level: 10] [hours: 1005.96]\')', ''),
(255, 1, 'DanielSy has connected [cash: $26.199.001] [bank: $6.262.563] [PP: 104] [Level: 10] [hours: 1005.96]\')', ''),
(256, 1, 'DanielSy has connected [cash: $29.198.002] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(257, 1, 'DanielSy has connected [cash: $29.198.002] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(258, 1, 'DanielSy has connected [cash: $29.198.002] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(259, 1, 'DanielSy has connected [cash: $29.196.003] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(260, 1, 'DanielSy has connected [cash: $35.165.426] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(261, 1, 'DanielSy has connected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(262, 1, 'DanielSy has connected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(263, 1, 'DanielSy has connected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(264, 1, 'DanielSy has connected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(265, 1, 'DanielSy has connected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(266, 1, 'DanielSy has connected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(267, 1, 'DanielSy has connected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(268, 1, 'DanielSy has connected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(269, 1, 'DanielSy has connected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(270, 1, 'DanielSy has connected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(271, 1, 'DanielSy has connected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(272, 1, 'DanielSy has connected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(273, 1, 'DanielSy has connected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(274, 1, 'DanielSy has connected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(275, 1, 'DanielSy has connected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(276, 1, 'DanielSy has connected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(277, 1, 'DanielSy has connected [cash: $40.691.693] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(278, 1, 'DanielSy has connected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(279, 1, 'DanielSy has connected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(280, 1, 'DanielSy has connected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(281, 1, 'DanielSy has connected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(282, 1, 'DanielSy has connected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(283, 1, 'DanielSy has connected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(284, 1, 'DanielSy has connected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(285, 1, 'DanielSy has connected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(286, 1, 'DanielSy has connected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(287, 1, 'DanielSy has connected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(288, 1, 'DanielSy has connected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(289, 1, 'DanielSy has connected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(290, 1, 'DanielSy has connected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(291, 1, 'DanielSy has connected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(292, 1, 'DanielSy has connected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(293, 1, 'DanielSy has connected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(294, 1, 'DanielSy has connected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(295, 1, 'DanielSy has connected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(296, 1, 'DanielSy has connected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(297, 1, 'DanielSy has connected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(298, 1, 'DanielSy has connected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(299, 1, 'DanielSy has connected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(300, 1, 'DanielSy has connected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(301, 1, 'DanielSy has connected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(302, 1, 'DanielSy has connected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(303, 1, 'DanielSy has connected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(304, 1, 'DanielSy has connected [cash: $46.690.694] [bank: $6.685.291] [PP: 128] [Level: 10] [hours: 1006.51]\')', ''),
(305, 1, 'DanielSy has connected [cash: $46.785.640] [bank: $6.685.291] [PP: 128] [Level: 10] [hours: 1006.51]\')', ''),
(306, 1, 'DanielSy has connected [cash: $46.785.640] [bank: $6.685.291] [PP: 128] [Level: 10] [hours: 1006.51]\')', ''),
(307, 1, 'DanielSy has connected [cash: $46.785.640] [bank: $6.685.291] [PP: 128] [Level: 10] [hours: 1006.51]\')', ''),
(308, 1, 'DanielSy has connected [cash: $46.785.640] [bank: $6.685.291] [PP: 128] [Level: 10] [hours: 1006.51]\')', ''),
(309, 1, 'DanielSy has connected [cash: $251.612] [bank: $6.685.291] [PP: 128] [Level: 10] [hours: 1006.51]\')', ''),
(310, 1, 'DanielSy has connected [cash: $251.612] [bank: $6.685.291] [PP: 128] [Level: 10] [hours: 1006.51]\')', ''),
(311, 1, 'DanielSy has connected [cash: $995.999.999] [bank: $6.932.064] [PP: 144] [Level: 10] [hours: 1006.71]\')', ''),
(312, 1, 'DanielSy has connected [cash: $995.999.999] [bank: $6.932.064] [PP: 144] [Level: 10] [hours: 1006.71]\')', ''),
(313, 1, 'DanielSy has connected [cash: $995.999.999] [bank: $6.932.064] [PP: 144] [Level: 10] [hours: 1006.71]\')', ''),
(314, 1, 'DanielSy has connected [cash: $995.999.999] [bank: $6.932.064] [PP: 893] [Level: 10] [hours: 1006.71]\')', ''),
(315, 1, 'DanielSy has connected [cash: $995.999.999] [bank: $6.932.064] [PP: 893] [Level: 10] [hours: 1006.71]\')', ''),
(316, 1, 'DanielSy has connected [cash: $995.999.999] [bank: $6.932.064] [PP: 893] [Level: 10] [hours: 1006.71]\')', ''),
(317, 1, 'DanielSy has connected [cash: $995.999.999] [bank: $6.932.064] [PP: 893] [Level: 10] [hours: 1006.71]\')', ''),
(318, 1, 'DanielSy has connected [cash: $995.996.999] [bank: $6.932.064] [PP: 893] [Level: 10] [hours: 1006.71]\')', ''),
(319, 1, 'DanielSy has connected [cash: $995.996.999] [bank: $6.932.064] [PP: 893] [Level: 10] [hours: 1006.71]\')', ''),
(320, 1, 'DanielSy has connected [cash: $998.996.999] [bank: $7.074.140] [PP: 901] [Level: 10] [hours: 1006.89]\')', ''),
(321, 1, 'DanielSy has connected [cash: $998.996.999] [bank: $7.074.140] [PP: 901] [Level: 10] [hours: 1006.89]\')', ''),
(322, 1, 'DanielSy has connected [cash: $998.996.999] [bank: $7.074.140] [PP: 901] [Level: 10] [hours: 1006.89]\')', ''),
(323, 1, 'DanielSy has connected [cash: $998.996.999] [bank: $7.074.140] [PP: 901] [Level: 10] [hours: 1006.89]\')', ''),
(324, 1, 'DanielSy has connected [cash: $998.996.999] [bank: $7.074.140] [PP: 901] [Level: 10] [hours: 1006.89]\')', ''),
(325, 1, 'DanielSy has connected [cash: $998.996.999] [bank: $7.074.140] [PP: 901] [Level: 10] [hours: 1006.89]\')', ''),
(326, 1, 'DanielSy has connected [cash: $998.996.999] [bank: $7.074.140] [PP: 901] [Level: 1337] [hours: 1006.89]\')', ''),
(327, 1, 'DanielSy has connected [cash: $1.001.397.217] [bank: $7.074.140] [PP: 901] [Level: 1337] [hours: 1006.89]\')', ''),
(328, 1, 'DanielSy has connected [cash: $1.001.397.217] [bank: $7.074.140] [PP: 901] [Level: 1337] [hours: 1006.89]\')', ''),
(329, 1, 'DanielSy has connected [cash: $1.001.397.217] [bank: $7.074.140] [PP: 901] [Level: 1337] [hours: 1006.89]\')', ''),
(330, 1, 'DanielSy has connected [cash: $1.001.397.217] [bank: $7.074.140] [PP: 901] [Level: 1337] [hours: 1006.89]\')', ''),
(331, 1, 'DanielSy has connected [cash: $1.001.397.217] [bank: $7.074.140] [PP: 901] [Level: 1337] [hours: 1006.89]\')', ''),
(332, 1, 'DanielSy has connected [cash: $1.001.397.217] [bank: $7.074.140] [PP: 901] [Level: 1337] [hours: 1006.89]\')', ''),
(333, 1, 'DanielSy has connected [cash: $1.001.397.217] [bank: $7.074.140] [PP: 901] [Level: 1337] [hours: 1006.89]\')', ''),
(334, 1, 'DanielSy has connected [cash: $1.001.397.217] [bank: $7.074.140] [PP: 901] [Level: 1337] [hours: 1006.89]\')', ''),
(335, 1, 'DanielSy has connected [cash: $1.001.397.217] [bank: $7.074.140] [PP: 901] [Level: 1337] [hours: 1006.89]\')', ''),
(336, 1, 'DanielSy has connected [cash: $1.001.397.217] [bank: $7.074.140] [PP: 901] [Level: 1337] [hours: 1006.89]\')', ''),
(337, 1, 'DanielSy has connected [cash: $1.004.397.217] [bank: $15.958.884] [PP: 909] [Level: 1337] [hours: 1007.13]\')', ''),
(338, 1, 'DanielSy has connected [cash: $1.004.397.217] [bank: $15.958.884] [PP: 909] [Level: 1337] [hours: 1007.13]\')', ''),
(339, 1, 'DanielSy has connected [cash: $1.004.397.217] [bank: $15.958.884] [PP: 909] [Level: 1337] [hours: 1007.13]\')', ''),
(340, 1, 'DanielSy has connected [cash: $1.004.397.217] [bank: $15.958.884] [PP: 909] [Level: 1337] [hours: 1007.13]\')', ''),
(341, 1, 'DanielSy has connected [cash: $1.004.397.217] [bank: $15.958.884] [PP: 909] [Level: 1337] [hours: 1007.13]\')', ''),
(342, 1, 'DanielSy has connected [cash: $1.004.397.217] [bank: $15.958.884] [PP: 909] [Level: 1337] [hours: 1007.13]\')', ''),
(343, 1, 'DanielSy has connected [cash: $1.004.441.391] [bank: $15.958.884] [PP: 909] [Level: 1337] [hours: 1007.13]\')', ''),
(344, 1, 'DanielSy has connected [cash: $1.007.441.391] [bank: $24.833.026] [PP: 917] [Level: 1337] [hours: 1007.25]\')', ''),
(345, 1, 'DanielSy has connected [cash: $1.007.441.391] [bank: $24.833.026] [PP: 917] [Level: 1337] [hours: 1007.25]\')', ''),
(346, 1, 'DanielSy has connected [cash: $1.007.441.391] [bank: $24.833.026] [PP: 917] [Level: 1337] [hours: 1007.25]\')', ''),
(347, 1, 'DanielSy has connected [cash: $1.010.441.391] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(348, 1, 'DanielSy has connected [cash: $1.010.441.391] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(349, 1, 'DanielSy has connected [cash: $1.010.441.391] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(350, 1, 'DanielSy has connected [cash: $1.010.441.391] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(351, 1, 'DanielSy has connected [cash: $1.010.441.391] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(352, 1, 'DanielSy has connected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(353, 1, 'DanielSy has connected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(354, 1, 'DanielSy has connected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(355, 1, 'DanielSy has connected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(356, 1, 'DanielSy has connected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(357, 1, 'DanielSy has connected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(358, 1, 'DanielSy has connected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(359, 1, 'DanielSy has connected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(360, 1, 'DanielSy has connected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(361, 1, 'DanielSy has connected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(362, 1, 'DanielSy has connected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(363, 1, 'DanielSy has connected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(364, 1, 'DanielSy has connected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(365, 1, 'Dane has connected [cash: $1.002.822.319] [bank: $28.873.591] [PP: 815] [Level: 1337] [hours: 1007.27]\')', ''),
(366, 1, 'DanielSy has connected [cash: $1.005.822.319] [bank: $32.906.181] [PP: 383] [Level: 1337] [hours: 1007.35]\')', ''),
(367, 1, 'Dane has connected [cash: $1.005.822.319] [bank: $32.906.181] [PP: 273] [Level: 1337] [hours: 1007.35]\')', ''),
(368, 1, 'DanielSy has connected [cash: $1.005.822.319] [bank: $32.906.181] [PP: 163] [Level: 1337] [hours: 1007.35]\')', ''),
(369, 1, 'Dane has connected [cash: $1.005.822.319] [bank: $32.906.181] [PP: 53] [Level: 1337] [hours: 1007.35]\')', ''),
(370, 1, 'DanielSy has connected [cash: $1.005.822.319] [bank: $32.906.181] [PP: 942] [Level: 1337] [hours: 1007.35]\')', ''),
(371, 1, 'DanielSy has connected [cash: $1.005.822.319] [bank: $32.906.181] [PP: 942] [Level: 1337] [hours: 1007.35]\')', ''),
(372, 1, 'DanielSy has connected [cash: $7.530.852] [bank: $32.906.181] [PP: 942] [Level: 1337] [hours: 1007.35]\')', ''),
(373, 1, 'DanielSy has connected [cash: $1.224.570] [bank: $32.906.181] [PP: 942] [Level: 1337] [hours: 1007.35]\')', ''),
(374, 1, 'DanielSy has connected [cash: $30.000.000] [bank: $32.906.181] [PP: 942] [Level: 1337] [hours: 1007.35]\')', ''),
(375, 1, 'DanielSy has connected [cash: $19.999.001] [bank: $32.906.181] [PP: 942] [Level: 1337] [hours: 1007.35]\')', ''),
(376, 1, 'DanielSy has connected [cash: $89.998.002] [bank: $32.906.181] [PP: 942] [Level: 1337] [hours: 1007.35]\')', ''),
(377, 1, 'DanielSy has connected [cash: $114.997.003] [bank: $32.906.181] [PP: 942] [Level: 1337] [hours: 1007.35]\')', ''),
(378, 1, 'DanielSy has connected [cash: $114.996.004] [bank: $32.906.181] [PP: 942] [Level: 1337] [hours: 1007.35]\')', ''),
(379, 1, 'DanielSy has connected [cash: $33.994.117] [bank: $36.955.400] [PP: 950] [Level: 1337] [hours: 1007.48]\')', ''),
(380, 1, 'DanielSy has connected [cash: $1.205.447.707] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(381, 1, 'DanielSy has connected [cash: $1.205.447.707] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(382, 1, 'DanielSy has connected [cash: $1.205.447.707] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(383, 1, 'DanielSy has connected [cash: $1.205.447.707] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(384, 1, 'DanielSy has connected [cash: $1.205.443.711] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(385, 1, 'DanielSy has connected [cash: $1.205.443.711] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(386, 1, 'DanielSy has connected [cash: $1.205.443.711] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(387, 1, 'DanielSy has connected [cash: $1.205.443.711] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(388, 1, 'DanielSy has connected [cash: $1.205.442.712] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(389, 1, 'DanielSy has connected [cash: $1.205.442.712] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(390, 1, 'DanielSy has connected [cash: $1.205.442.712] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(391, 1, 'DanielSy has connected [cash: $1.205.442.712] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(392, 1, 'DanielSy has connected [cash: $1.205.442.712] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(393, 1, 'DanielSy has connected [cash: $1.205.442.712] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(394, 1, 'DanielSy has connected [cash: $1.208.442.712] [bank: $49.091.109] [PP: 724] [Level: 1337] [hours: 1008.40]\')', ''),
(395, 1, 'DanielSy has connected [cash: $1.208.442.712] [bank: $49.091.109] [PP: 724] [Level: 1337] [hours: 1008.40]\')', ''),
(396, 1, 'DanielSy has connected [cash: $1.208.442.712] [bank: $49.091.109] [PP: 724] [Level: 1337] [hours: 1008.40]\')', ''),
(397, 1, 'DanielSy has connected [cash: $1.208.442.712] [bank: $49.091.109] [PP: 724] [Level: 1337] [hours: 1008.40]\')', ''),
(398, 1, 'DanielSy has connected [cash: $1.211.442.712] [bank: $53.131.602] [PP: 732] [Level: 1337] [hours: 1008.79]\')', ''),
(399, 1, 'DanielSy has connected [cash: $1.211.442.712] [bank: $53.131.602] [PP: 732] [Level: 1337] [hours: 1008.79]\')', ''),
(400, 1, 'DanielSy has connected [cash: $1.211.442.712] [bank: $53.131.602] [PP: 732] [Level: 1337] [hours: 1008.79]\')', ''),
(401, 1, 'DanielSy has connected [cash: $1.211.442.712] [bank: $53.131.602] [PP: 732] [Level: 1337] [hours: 1008.79]\')', ''),
(402, 1, 'DanielSy has connected [cash: $1.211.442.712] [bank: $53.131.602] [PP: 732] [Level: 1337] [hours: 1008.79]\')', ''),
(403, 1, 'DanielSy has connected [cash: $1.211.442.712] [bank: $53.131.602] [PP: 732] [Level: 1337] [hours: 1008.79]\')', '');

-- --------------------------------------------------------

--
-- Table structure for table `logs_disconnect`
--

CREATE TABLE `logs_disconnect` (
  `ID` int(11) NOT NULL,
  `Player` int(11) NOT NULL,
  `Log` text NOT NULL,
  `IP` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs_disconnect`
--

INSERT INTO `logs_disconnect` (`ID`, `Player`, `Log`, `IP`) VALUES
(1, 1, 'DanielSy has disconnected [cash: $] [bank: $0] [PP: 270] [Level: 10] [hours: 999.00]\')', ''),
(2, 1, 'DanielSy has disconnected [cash: $?] [bank: $0] [PP: 270] [Level: 10] [hours: 999.00]\')', ''),
(3, 3, 'DanielSy12 has disconnected [cash: $??] [bank: $1,000] [PP: 0] [Level: 1] [hours: 0.00]\')', ''),
(4, 1, 'DanielSy has disconnected [cash: $?] [bank: $0] [PP: 270] [Level: 10] [hours: 999.00]\')', ''),
(5, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(6, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(7, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(8, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(9, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(10, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(11, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(12, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(13, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(14, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(15, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $44,806] [PP: 270] [Level: 10] [hours: 999.11]\')', ''),
(16, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(17, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(18, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(19, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(20, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(21, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(22, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(23, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(24, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(25, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(26, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(27, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(28, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(29, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $91,975] [PP: 270] [Level: 10] [hours: 999.21]\')', ''),
(30, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $134,154] [PP: 270] [Level: 10] [hours: 999.35]\')', ''),
(31, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $134,154] [PP: 270] [Level: 10] [hours: 999.35]\')', ''),
(32, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $134,154] [PP: 270] [Level: 10] [hours: 999.35]\')', ''),
(33, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $134,154] [PP: 270] [Level: 10] [hours: 999.35]\')', ''),
(34, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $134,154] [PP: 270] [Level: 10] [hours: 999.35]\')', ''),
(35, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $134,154] [PP: 270] [Level: 10] [hours: 999.35]\')', ''),
(36, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $134,154] [PP: 270] [Level: 10] [hours: 999.35]\')', ''),
(37, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $134,154] [PP: 270] [Level: 10] [hours: 999.35]\')', ''),
(38, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $134,154] [PP: 270] [Level: 10] [hours: 999.35]\')', ''),
(39, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(40, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(41, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(42, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(43, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(44, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(45, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(46, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(47, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(48, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(49, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(50, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(51, 1, 'DanielSy has disconnected [cash: $105,000,000] [bank: $181,530] [PP: 270] [Level: 10] [hours: 999.36]\')', ''),
(52, 1, 'DanielSy.DANE has disconnected [cash: $294.714.558] [bank: $3.092.241] [PP: 40] [Level: 10] [hours: 1004.70]\')', ''),
(53, 1, 'DanielSy.DANE has disconnected [cash: $294.714.558] [bank: $3.092.241] [PP: 40] [Level: 10] [hours: 1004.70]\')', ''),
(54, 1, 'DanielSy.DANE has disconnected [cash: $294.714.558] [bank: $3.092.241] [PP: 40] [Level: 10] [hours: 1004.70]\')', ''),
(55, 1, 'DanielSy.DANE has disconnected [cash: $294.714.558] [bank: $3.092.241] [PP: 40] [Level: 10] [hours: 1004.70]\')', ''),
(56, 0, 'DanielSy.DANE has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(57, 0, 'DanielSy.DANE has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(58, 0, 'DanielSy.DANE has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(59, 1, 'DanielSy.DANE has disconnected [cash: $300.712.560] [bank: $3.362.101] [PP: 56] [Level: 10] [hours: 1004.84]\')', ''),
(60, 1, 'DanielSy.DANE has disconnected [cash: $300.712.560] [bank: $3.362.101] [PP: 56] [Level: 10] [hours: 1004.84]\')', ''),
(61, 1, 'DanielSy.DANE has disconnected [cash: $300.711.561] [bank: $3.362.101] [PP: 56] [Level: 10] [hours: 1004.84]\')', ''),
(62, 1, 'DanielSy.DANE has disconnected [cash: $300.709.563] [bank: $3.362.101] [PP: 56] [Level: 10] [hours: 1004.84]\')', ''),
(63, 1, 'DanielSy.DANE has disconnected [cash: $300.707.565] [bank: $3.362.101] [PP: 56] [Level: 10] [hours: 1004.84]\')', ''),
(64, 1, 'DanielSy.DANE has disconnected [cash: $303.705.567] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.99]\')', ''),
(65, 1, 'DanielSy.DANE has disconnected [cash: $303.704.568] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(66, 1, 'DanielSy.DANE has disconnected [cash: $303.703.569] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(67, 1, 'DanielSy.DANE has disconnected [cash: $303.702.570] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(68, 1, 'DanielSy.DANE has disconnected [cash: $303.702.570] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(69, 0, 'DanielSy.DANE has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(70, 1, 'DanielSy.DANE has disconnected [cash: $303.701.571] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(71, 1, 'DanielSy has disconnected [cash: $303.697.575] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(72, 1, 'DanielSy has disconnected [cash: $303.696.576] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(73, 1, 'DanielSy has disconnected [cash: $304.739.745] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(74, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(75, 1, 'DanielSy has disconnected [cash: $304.738.746] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(76, 1, 'DanielSy has disconnected [cash: $304.738.746] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(77, 1, 'DanielSy has disconnected [cash: $304.737.747] [bank: $3.482.929] [PP: 64] [Level: 10] [hours: 1004.98]\')', ''),
(78, 1, 'DanielSy has disconnected [cash: $307.736.748] [bank: $3.618.928] [PP: 72] [Level: 10] [hours: 1005.19]\')', ''),
(79, 1, 'DanielSy has disconnected [cash: $307.735.749] [bank: $3.618.928] [PP: 72] [Level: 10] [hours: 1005.19]\')', ''),
(80, 1, 'DanielSy has disconnected [cash: $309.014.001] [bank: $3.618.928] [PP: 72] [Level: 10] [hours: 1005.19]\')', ''),
(81, 1, 'DanielSy has disconnected [cash: $309.014.001] [bank: $3.618.928] [PP: 72] [Level: 10] [hours: 1005.19]\')', ''),
(82, 1, 'DanielSy has disconnected [cash: $318.924.852] [bank: $3.618.928] [PP: 122] [Level: 10] [hours: 1005.19]\')', ''),
(83, 1, 'DanielSy has disconnected [cash: $345.364.100] [bank: $3.618.928] [PP: 395] [Level: 10] [hours: 1005.19]\')', ''),
(84, 1, 'DanielSy has disconnected [cash: $346.494.333] [bank: $3.618.928] [PP: 395] [Level: 10] [hours: 1005.19]\')', ''),
(85, 1, 'DanielSy has disconnected [cash: $346.494.333] [bank: $3.618.928] [PP: 424] [Level: 10] [hours: 1005.19]\')', ''),
(86, 1, 'DanielSy has disconnected [cash: $346.494.333] [bank: $3.618.928] [PP: 459] [Level: 10] [hours: 1005.19]\')', ''),
(87, 1, 'DanielSy has disconnected [cash: $346.494.333] [bank: $3.618.928] [PP: 459] [Level: 10] [hours: 1005.19]\')', ''),
(88, 1, 'DanielSy has disconnected [cash: $358.192.719] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(89, 1, 'DanielSy has disconnected [cash: $358.192.719] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(90, 1, 'DanielSy has disconnected [cash: $367.096.768] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(91, 1, 'DanielSy has disconnected [cash: $367.096.768] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(92, 1, 'DanielSy has disconnected [cash: $367.096.768] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(93, 1, 'DanielSy has disconnected [cash: $367.096.768] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(94, 1, 'DanielSy has disconnected [cash: $367.096.768] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(95, 1, 'DanielSy has disconnected [cash: $367.096.768] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(96, 1, 'DanielSy has disconnected [cash: $367.096.768] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(97, 1, 'DanielSy has disconnected [cash: $369.185.778] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(98, 1, 'DanielSy has disconnected [cash: $369.185.778] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(99, 1, 'DanielSy has disconnected [cash: $379.817.569] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(100, 1, 'DanielSy has disconnected [cash: $379.817.569] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(101, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(102, 1, 'DanielSy has disconnected [cash: $379.817.569] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(103, 1, 'DanielSy has disconnected [cash: $379.817.569] [bank: $3.761.723] [PP: 467] [Level: 10] [hours: 1005.34]\')', ''),
(104, 1, 'DanielSy has disconnected [cash: $382.817.569] [bank: $3.913.586] [PP: 475] [Level: 10] [hours: 1005.36]\')', ''),
(105, 1, 'DanielSy has disconnected [cash: $382.817.569] [bank: $3.913.586] [PP: 475] [Level: 10] [hours: 1005.35]\')', ''),
(106, 1, 'DanielSy has disconnected [cash: $382.817.569] [bank: $3.913.586] [PP: 475] [Level: 10] [hours: 1005.35]\')', ''),
(107, 1, 'DanielSy has disconnected [cash: $382.817.569] [bank: $3.913.586] [PP: 475] [Level: 10] [hours: 1005.35]\')', ''),
(108, 1, 'DanielSy has disconnected [cash: $382.817.569] [bank: $3.913.586] [PP: 475] [Level: 10] [hours: 1005.35]\')', ''),
(109, 1, 'DanielSy has disconnected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(110, 1, 'DanielSy has disconnected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(111, 1, 'DanielSy has disconnected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(112, 1, 'DanielSy has disconnected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(113, 1, 'DanielSy has disconnected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(114, 1, 'DanielSy has disconnected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(115, 1, 'DanielSy has disconnected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(116, 1, 'DanielSy has disconnected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(117, 1, 'DanielSy has disconnected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(118, 1, 'DanielSy has disconnected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(119, 1, 'DanielSy has disconnected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(120, 1, 'DanielSy has disconnected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(121, 1, 'DanielSy has disconnected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(122, 1, 'DanielSy has disconnected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(123, 1, 'DanielSy has disconnected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(124, 1, 'DanielSy has disconnected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(125, 1, 'DanielSy has disconnected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(126, 1, 'DanielSy has disconnected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(127, 1, 'DanielSy has disconnected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(128, 1, 'DanielSy has disconnected [cash: $385.817.569] [bank: $4.037.892] [PP: 1083] [Level: 10] [hours: 1005.41]\')', ''),
(129, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(130, 1, 'DanielSy has disconnected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.62]\')', ''),
(131, 1, 'DanielSy has disconnected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(132, 1, 'DanielSy has disconnected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(133, 1, 'DanielSy has disconnected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(134, 1, 'DanielSy has disconnected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(135, 1, 'DanielSy has disconnected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(136, 1, 'DanielSy has disconnected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(137, 1, 'DanielSy has disconnected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(138, 1, 'DanielSy has disconnected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(139, 1, 'DanielSy has disconnected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(140, 1, 'DanielSy has disconnected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(141, 1, 'DanielSy has disconnected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(142, 1, 'DanielSy has disconnected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(143, 1, 'DanielSy has disconnected [cash: $391.817.569] [bank: $4.329.002] [PP: 1099] [Level: 10] [hours: 1005.63]\')', ''),
(144, 1, 'DanielSy has disconnected [cash: $394.817.569] [bank: $4.488.845] [PP: 1107] [Level: 10] [hours: 1005.69]\')', ''),
(145, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(146, 1, 'DANEDanielSy has disconnected [cash: $394.817.569] [bank: $4.488.845] [PP: 1107] [Level: 10] [hours: 1005.69]\')', ''),
(147, 0, 'DANEDanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(148, 1, 'DANEDanielSy has disconnected [cash: $406.817.569] [bank: $5.026.217] [PP: 1139] [Level: 10] [hours: 1005.71]\')', ''),
(149, 1, 'DANEDanielSy has disconnected [cash: $406.817.569] [bank: $5.026.217] [PP: 1139] [Level: 10] [hours: 1005.71]\')', ''),
(150, 1, 'DANEDanielSy has disconnected [cash: $409.817.569] [bank: $5.161.739] [PP: 1147] [Level: 10] [hours: 1005.71]\')', ''),
(151, 1, 'DANEDanielSy has disconnected [cash: $409.817.569] [bank: $5.161.739] [PP: 1147] [Level: 10] [hours: 1005.71]\')', ''),
(152, 1, 'DANEDanielSy has disconnected [cash: $409.817.569] [bank: $5.161.739] [PP: 1147] [Level: 10] [hours: 1005.71]\')', ''),
(153, 1, 'DANEDanielSy has disconnected [cash: $409.817.569] [bank: $5.161.739] [PP: 1147] [Level: 10] [hours: 1005.71]\')', ''),
(154, 1, 'DANEDanielSy has disconnected [cash: $409.817.569] [bank: $5.161.739] [PP: 1147] [Level: 10] [hours: 1005.71]\')', ''),
(155, 1, 'DANEDanielSy has disconnected [cash: $409.817.569] [bank: $5.161.739] [PP: 1147] [Level: 10] [hours: 1005.71]\')', ''),
(156, 1, 'DANEDanielSy has disconnected [cash: $410.817.569] [bank: $5.161.739] [PP: 1152] [Level: 10] [hours: 1005.71]\')', ''),
(157, 1, 'DANEDanielSy has disconnected [cash: $410.817.569] [bank: $5.161.739] [PP: 1152] [Level: 10] [hours: 1005.71]\')', ''),
(158, 1, 'DANEDanielSy has disconnected [cash: $410.817.569] [bank: $5.161.739] [PP: 15] [Level: 10] [hours: 1005.71]\')', ''),
(159, 1, 'DANEDanielSy has disconnected [cash: $410.817.569] [bank: $5.161.739] [PP: 25] [Level: 10] [hours: 1005.71]\')', ''),
(160, 1, 'DANEDanielSy has disconnected [cash: $410.817.579] [bank: $5.161.739] [PP: 25] [Level: 10] [hours: 1005.71]\')', ''),
(161, 1, 'DANEDanielSy has disconnected [cash: $200.000] [bank: $5.161.739] [PP: 35] [Level: 10] [hours: 1005.71]\')', ''),
(162, 1, 'DANEDanielSy has disconnected [cash: $200.000] [bank: $5.161.739] [PP: 35] [Level: 10] [hours: 1005.71]\')', ''),
(163, 1, 'DANEDanielSy has disconnected [cash: $200.000] [bank: $5.161.739] [PP: 35] [Level: 10] [hours: 1005.71]\')', ''),
(164, 1, 'DANEDanielSy has disconnected [cash: $200.000] [bank: $5.161.739] [PP: 35] [Level: 10] [hours: 1005.71]\')', ''),
(165, 1, 'DANEDanielSy has disconnected [cash: $200.000] [bank: $5.161.739] [PP: 35] [Level: 10] [hours: 1005.71]\')', ''),
(166, 1, 'DANEDanielSy has disconnected [cash: $200.000] [bank: $5.161.739] [PP: 35] [Level: 10] [hours: 1005.71]\')', ''),
(167, 1, 'DanielSy has disconnected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.76]\')', ''),
(168, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(169, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(170, 1, 'DanielSy has disconnected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(171, 1, 'DanielSy has disconnected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(172, 1, 'DanielSy has disconnected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(173, 1, 'DanielSy has disconnected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(174, 1, 'DanielSy has disconnected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(175, 1, 'DanielSy has disconnected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(176, 1, 'DanielSy has disconnected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(177, 1, 'DanielSy has disconnected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(178, 1, 'DanielSy has disconnected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(179, 1, 'DanielSy has disconnected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(180, 1, 'DanielSy has disconnected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(181, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(182, 1, 'DanielSy has disconnected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(183, 1, 'DanielSy has disconnected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(184, 1, 'DanielSy has disconnected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(185, 1, 'DanielSy has disconnected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(186, 1, 'DanielSy has disconnected [cash: $3.200.000] [bank: $5.295.045] [PP: 43] [Level: 10] [hours: 1005.77]\')', ''),
(187, 1, 'DanielSy has disconnected [cash: $6.200.000] [bank: $5.428.013] [PP: 51] [Level: 10] [hours: 1005.78]\')', ''),
(188, 1, 'DanielSy has disconnected [cash: $6.200.000] [bank: $5.428.013] [PP: 51] [Level: 10] [hours: 1005.78]\')', ''),
(189, 1, 'DanielSy has disconnected [cash: $6.200.000] [bank: $5.428.013] [PP: 51] [Level: 10] [hours: 1005.78]\')', ''),
(190, 1, 'DanielSy has disconnected [cash: $6.200.000] [bank: $5.428.013] [PP: 51] [Level: 10] [hours: 1005.78]\')', ''),
(191, 1, 'DanielSy has disconnected [cash: $6.200.000] [bank: $5.428.013] [PP: 51] [Level: 10] [hours: 1005.78]\')', ''),
(192, 1, 'DanielSy has disconnected [cash: $6.200.000] [bank: $5.428.013] [PP: 51] [Level: 10] [hours: 1005.78]\')', ''),
(193, 14, 'MASTER has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(194, 15, 'MASTER has disconnected [cash: $15.005.000] [bank: $1.000] [PP: 0] [Level: 1] [hours: 0.00]\')', ''),
(195, 17, 'MASTER has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(196, 1, 'DanielSy has disconnected [cash: $9.199.001] [bank: $5.570.744] [PP: 59] [Level: 10] [hours: 1005.90]\')', ''),
(197, 18, 'MASTER has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(198, 18, 'MASTER has disconnected [cash: $5.000] [bank: $1.000] [PP: 0] [Level: 1] [hours: 0.00]\')', ''),
(199, 1, 'DanielSy has disconnected [cash: $9.199.001] [bank: $5.570.744] [PP: 59] [Level: 10] [hours: 1005.90]\')', ''),
(200, 1, 'DanielSy has disconnected [cash: $9.199.001] [bank: $5.570.744] [PP: 59] [Level: 10] [hours: 1005.90]\')', ''),
(201, 1, 'DanielSy has disconnected [cash: $20.199.001] [bank: $5.969.972] [PP: 88] [Level: 10] [hours: 1005.92]\')', ''),
(202, 1, 'DanielSy has disconnected [cash: $23.199.001] [bank: $6.102.126] [PP: 96] [Level: 10] [hours: 1005.92]\')', ''),
(203, 1, 'DanielSy has disconnected [cash: $23.199.001] [bank: $6.102.126] [PP: 96] [Level: 10] [hours: 1005.91]\')', ''),
(204, 19, 'Mos.vampiru has disconnected [cash: $15.005.000] [bank: $1.000] [PP: 0] [Level: 1] [hours: 0.00]\')', ''),
(205, 1, 'DanielSy has disconnected [cash: $23.199.001] [bank: $6.102.126] [PP: 96] [Level: 10] [hours: 1005.91]\')', ''),
(206, 1, 'DanielSy has disconnected [cash: $23.199.001] [bank: $6.102.126] [PP: 96] [Level: 10] [hours: 1005.91]\')', ''),
(207, 1, 'DanielSy has disconnected [cash: $23.199.001] [bank: $6.102.126] [PP: 96] [Level: 10] [hours: 1005.91]\')', ''),
(208, 1, 'DanielSy has disconnected [cash: $23.199.001] [bank: $6.102.126] [PP: 96] [Level: 10] [hours: 1005.91]\')', ''),
(209, 1, 'DanielSy has disconnected [cash: $23.199.001] [bank: $6.102.126] [PP: 96] [Level: 10] [hours: 1005.91]\')', ''),
(210, 1, 'DanielSy has disconnected [cash: $23.199.001] [bank: $6.102.126] [PP: 96] [Level: 10] [hours: 1005.91]\')', ''),
(211, 1, 'DanielSy has disconnected [cash: $26.199.001] [bank: $6.262.563] [PP: 104] [Level: 10] [hours: 1005.96]\')', ''),
(212, 1, 'DanielSy has disconnected [cash: $26.199.001] [bank: $6.262.563] [PP: 104] [Level: 10] [hours: 1005.96]\')', ''),
(213, 1, 'DanielSy has disconnected [cash: $26.199.001] [bank: $6.262.563] [PP: 104] [Level: 10] [hours: 1005.96]\')', ''),
(214, 1, 'DanielSy has disconnected [cash: $26.199.001] [bank: $6.262.563] [PP: 104] [Level: 10] [hours: 1005.96]\')', ''),
(215, 1, 'DanielSy has disconnected [cash: $26.199.001] [bank: $6.262.563] [PP: 104] [Level: 10] [hours: 1005.96]\')', ''),
(216, 1, 'DanielSy has disconnected [cash: $26.199.001] [bank: $6.262.563] [PP: 104] [Level: 10] [hours: 1005.96]\')', ''),
(217, 1, 'DanielSy has disconnected [cash: $26.199.001] [bank: $6.262.563] [PP: 104] [Level: 10] [hours: 1005.96]\')', ''),
(218, 1, 'DanielSy has disconnected [cash: $29.198.002] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(219, 1, 'DanielSy has disconnected [cash: $29.198.002] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(220, 1, 'DanielSy has disconnected [cash: $29.198.002] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(221, 1, 'DanielSy has disconnected [cash: $29.196.003] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(222, 1, 'DanielSy has disconnected [cash: $35.165.426] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(223, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(224, 1, 'DanielSy has disconnected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(225, 1, 'DanielSy has disconnected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(226, 1, 'DanielSy has disconnected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(227, 1, 'DanielSy has disconnected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(228, 1, 'DanielSy has disconnected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(229, 1, 'DanielSy has disconnected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(230, 1, 'DanielSy has disconnected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(231, 1, 'DanielSy has disconnected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(232, 1, 'DanielSy has disconnected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(233, 1, 'DanielSy has disconnected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(234, 1, 'DanielSy has disconnected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(235, 1, 'DanielSy has disconnected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(236, 1, 'DanielSy has disconnected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(237, 1, 'DanielSy has disconnected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(238, 1, 'DanielSy has disconnected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(239, 1, 'DanielSy has disconnected [cash: $40.692.692] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(240, 1, 'DanielSy has disconnected [cash: $40.691.693] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(241, 1, 'DanielSy has disconnected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(242, 1, 'DanielSy has disconnected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(243, 1, 'DanielSy has disconnected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(244, 1, 'DanielSy has disconnected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(245, 1, 'DanielSy has disconnected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(246, 1, 'DanielSy has disconnected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(247, 1, 'DanielSy has disconnected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(248, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(249, 1, 'DanielSy has disconnected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(250, 1, 'DanielSy has disconnected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(251, 1, 'DanielSy has disconnected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(252, 1, 'DanielSy has disconnected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(253, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(254, 1, 'DanielSy has disconnected [cash: $40.690.694] [bank: $6.399.035] [PP: 112] [Level: 10] [hours: 1006.10]\')', ''),
(255, 1, 'DanielSy has disconnected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.43]\')', ''),
(256, 1, 'DanielSy has disconnected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(257, 1, 'DanielSy has disconnected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(258, 1, 'DanielSy has disconnected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(259, 1, 'DanielSy has disconnected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(260, 1, 'DanielSy has disconnected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(261, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(262, 1, 'DanielSy has disconnected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(263, 1, 'DanielSy has disconnected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(264, 1, 'DanielSy has disconnected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(265, 1, 'DanielSy has disconnected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(266, 1, 'DanielSy has disconnected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(267, 1, 'DanielSy has disconnected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(268, 1, 'DanielSy has disconnected [cash: $43.690.694] [bank: $6.532.044] [PP: 120] [Level: 10] [hours: 1006.42]\')', ''),
(269, 1, 'DanielSy has disconnected [cash: $46.785.640] [bank: $6.685.291] [PP: 128] [Level: 10] [hours: 1006.51]\')', ''),
(270, 1, 'DanielSy has disconnected [cash: $46.785.640] [bank: $6.685.291] [PP: 128] [Level: 10] [hours: 1006.51]\')', ''),
(271, 1, 'DanielSy has disconnected [cash: $46.785.640] [bank: $6.685.291] [PP: 128] [Level: 10] [hours: 1006.51]\')', ''),
(272, 1, 'DanielSy has disconnected [cash: $46.785.640] [bank: $6.685.291] [PP: 128] [Level: 10] [hours: 1006.51]\')', ''),
(273, 1, 'DanielSy has disconnected [cash: $251.612] [bank: $6.685.291] [PP: 128] [Level: 10] [hours: 1006.51]\')', ''),
(274, 1, 'DanielSy has disconnected [cash: $995.999.999] [bank: $6.932.064] [PP: 144] [Level: 10] [hours: 1006.72]\')', ''),
(275, 1, 'DanielSy has disconnected [cash: $995.999.999] [bank: $6.932.064] [PP: 144] [Level: 10] [hours: 1006.71]\')', ''),
(276, 1, 'DanielSy has disconnected [cash: $995.999.999] [bank: $6.932.064] [PP: 893] [Level: 10] [hours: 1006.71]\')', ''),
(277, 1, 'DanielSy has disconnected [cash: $995.999.999] [bank: $6.932.064] [PP: 893] [Level: 10] [hours: 1006.71]\')', ''),
(278, 1, 'DanielSy has disconnected [cash: $995.999.999] [bank: $6.932.064] [PP: 893] [Level: 10] [hours: 1006.71]\')', ''),
(279, 1, 'DanielSy has disconnected [cash: $995.999.999] [bank: $6.932.064] [PP: 893] [Level: 10] [hours: 1006.71]\')', ''),
(280, 1, 'DanielSy has disconnected [cash: $995.996.999] [bank: $6.932.064] [PP: 893] [Level: 10] [hours: 1006.71]\')', ''),
(281, 1, 'DanielSy has disconnected [cash: $995.996.999] [bank: $6.932.064] [PP: 893] [Level: 10] [hours: 1006.71]\')', ''),
(282, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(283, 1, 'DanielSy has disconnected [cash: $998.996.999] [bank: $7.074.140] [PP: 901] [Level: 10] [hours: 1006.89]\')', ''),
(284, 1, 'DanielSy has disconnected [cash: $998.996.999] [bank: $7.074.140] [PP: 901] [Level: 10] [hours: 1006.89]\')', ''),
(285, 1, 'DanielSy has disconnected [cash: $998.996.999] [bank: $7.074.140] [PP: 901] [Level: 10] [hours: 1006.89]\')', ''),
(286, 1, 'DanielSy has disconnected [cash: $998.996.999] [bank: $7.074.140] [PP: 901] [Level: 10] [hours: 1006.89]\')', ''),
(287, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(288, 1, 'DanielSy has disconnected [cash: $998.996.999] [bank: $7.074.140] [PP: 901] [Level: 10] [hours: 1006.89]\')', ''),
(289, 1, 'DanielSy has disconnected [cash: $998.996.999] [bank: $7.074.140] [PP: 901] [Level: 10] [hours: 1006.89]\')', ''),
(290, 1, 'DanielSy has disconnected [cash: $998.996.999] [bank: $7.074.140] [PP: 901] [Level: 10] [hours: 1006.89]\')', ''),
(291, 1, 'DanielSy has disconnected [cash: $1.001.397.217] [bank: $7.074.140] [PP: 901] [Level: 1337] [hours: 1006.89]\')', ''),
(292, 1, 'DanielSy has disconnected [cash: $1.001.397.217] [bank: $7.074.140] [PP: 901] [Level: 1337] [hours: 1006.89]\')', ''),
(293, 1, 'DanielSy has disconnected [cash: $1.001.397.217] [bank: $7.074.140] [PP: 901] [Level: 1337] [hours: 1006.89]\')', ''),
(294, 1, 'DanielSy has disconnected [cash: $1.001.397.217] [bank: $7.074.140] [PP: 901] [Level: 1337] [hours: 1006.89]\')', ''),
(295, 1, 'DanielSy has disconnected [cash: $1.001.397.217] [bank: $7.074.140] [PP: 901] [Level: 1337] [hours: 1006.89]\')', ''),
(296, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(297, 1, 'DanielSy has disconnected [cash: $1.001.397.217] [bank: $7.074.140] [PP: 901] [Level: 1337] [hours: 1006.89]\')', ''),
(298, 1, 'DanielSy has disconnected [cash: $1.001.397.217] [bank: $7.074.140] [PP: 901] [Level: 1337] [hours: 1006.89]\')', ''),
(299, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(300, 1, 'DanielSy has disconnected [cash: $1.001.397.217] [bank: $7.074.140] [PP: 901] [Level: 1337] [hours: 1006.89]\')', ''),
(301, 1, 'DanielSy has disconnected [cash: $1.001.397.217] [bank: $7.074.140] [PP: 901] [Level: 1337] [hours: 1006.89]\')', ''),
(302, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(303, 1, 'DanielSy has disconnected [cash: $1.001.397.217] [bank: $7.074.140] [PP: 901] [Level: 1337] [hours: 1006.89]\')', ''),
(304, 1, 'DanielSy has disconnected [cash: $1.004.397.217] [bank: $15.958.884] [PP: 909] [Level: 1337] [hours: 1007.12]\')', ''),
(305, 1, 'DanielSy has disconnected [cash: $1.004.397.217] [bank: $15.958.884] [PP: 909] [Level: 1337] [hours: 1007.13]\')', ''),
(306, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(307, 1, 'DanielSy has disconnected [cash: $1.004.397.217] [bank: $15.958.884] [PP: 909] [Level: 1337] [hours: 1007.13]\')', ''),
(308, 1, 'DanielSy has disconnected [cash: $1.004.397.217] [bank: $15.958.884] [PP: 909] [Level: 1337] [hours: 1007.13]\')', ''),
(309, 1, 'DanielSy has disconnected [cash: $1.004.397.217] [bank: $15.958.884] [PP: 909] [Level: 1337] [hours: 1007.13]\')', ''),
(310, 1, 'DanielSy has disconnected [cash: $1.004.441.391] [bank: $15.958.884] [PP: 909] [Level: 1337] [hours: 1007.13]\')', ''),
(311, 1, 'DanielSy has disconnected [cash: $1.007.441.391] [bank: $24.833.026] [PP: 917] [Level: 1337] [hours: 1007.25]\')', ''),
(312, 1, 'DanielSy has disconnected [cash: $1.007.441.391] [bank: $24.833.026] [PP: 917] [Level: 1337] [hours: 1007.25]\')', ''),
(313, 1, 'DanielSy has disconnected [cash: $1.007.441.391] [bank: $24.833.026] [PP: 917] [Level: 1337] [hours: 1007.25]\')', ''),
(314, 1, 'DanielSy has disconnected [cash: $1.010.441.391] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.26]\')', ''),
(315, 1, 'DanielSy has disconnected [cash: $1.010.441.391] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(316, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(317, 1, 'DanielSy has disconnected [cash: $1.010.441.391] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(318, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(319, 1, 'DanielSy has disconnected [cash: $1.010.441.391] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(320, 1, 'DanielSy has disconnected [cash: $1.010.441.391] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(321, 1, 'DanielSy has disconnected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(322, 1, 'DanielSy has disconnected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(323, 1, 'DanielSy has disconnected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(324, 1, 'DanielSy has disconnected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(325, 1, 'DanielSy has disconnected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(326, 1, 'DanielSy has disconnected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(327, 1, 'DanielSy has disconnected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(328, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(329, 1, 'DanielSy has disconnected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(330, 1, 'DanielSy has disconnected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(331, 1, 'DanielSy has disconnected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(332, 1, 'DanielSy has disconnected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(333, 1, 'DanielSy has disconnected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(334, 1, 'DanielSy has disconnected [cash: $1.012.822.319] [bank: $28.873.591] [PP: 925] [Level: 1337] [hours: 1007.27]\')', ''),
(335, 1, 'Dane has disconnected [cash: $1.002.822.319] [bank: $28.873.591] [PP: 815] [Level: 1337] [hours: 1007.27]\')', ''),
(336, 1, 'DanielSy has disconnected [cash: $1.005.822.319] [bank: $32.906.181] [PP: 383] [Level: 1337] [hours: 1007.36]\')', ''),
(337, 1, 'Dane has disconnected [cash: $1.005.822.319] [bank: $32.906.181] [PP: 273] [Level: 1337] [hours: 1007.35]\')', ''),
(338, 1, 'DanielSy has disconnected [cash: $1.005.822.319] [bank: $32.906.181] [PP: 163] [Level: 1337] [hours: 1007.35]\')', ''),
(339, 1, 'Dane has disconnected [cash: $1.005.822.319] [bank: $32.906.181] [PP: 53] [Level: 1337] [hours: 1007.35]\')', ''),
(340, 1, 'DanielSy has disconnected [cash: $1.005.822.319] [bank: $32.906.181] [PP: 942] [Level: 1337] [hours: 1007.35]\')', ''),
(341, 1, 'DanielSy has disconnected [cash: $1.005.822.319] [bank: $32.906.181] [PP: 942] [Level: 1337] [hours: 1007.35]\')', ''),
(342, 1, 'DanielSy has disconnected [cash: $7.530.852] [bank: $32.906.181] [PP: 942] [Level: 1337] [hours: 1007.35]\')', ''),
(343, 1, 'DanielSy has disconnected [cash: $1.224.570] [bank: $32.906.181] [PP: 942] [Level: 1337] [hours: 1007.35]\')', ''),
(344, 1, 'DanielSy has disconnected [cash: $30.000.000] [bank: $32.906.181] [PP: 942] [Level: 1337] [hours: 1007.35]\')', ''),
(345, 1, 'DanielSy has disconnected [cash: $19.999.001] [bank: $32.906.181] [PP: 942] [Level: 1337] [hours: 1007.35]\')', ''),
(346, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(347, 1, 'DanielSy has disconnected [cash: $89.998.002] [bank: $32.906.181] [PP: 942] [Level: 1337] [hours: 1007.35]\')', ''),
(348, 1, 'DanielSy has disconnected [cash: $114.997.003] [bank: $32.906.181] [PP: 942] [Level: 1337] [hours: 1007.35]\')', ''),
(349, 1, 'DanielSy has disconnected [cash: $114.996.004] [bank: $32.906.181] [PP: 942] [Level: 1337] [hours: 1007.35]\')', ''),
(350, 1, 'DanielSy has disconnected [cash: $33.994.117] [bank: $36.955.400] [PP: 950] [Level: 1337] [hours: 1007.48]\')', ''),
(351, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(352, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(353, 1, 'DanielSy has disconnected [cash: $1.205.447.707] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(354, 1, 'DanielSy has disconnected [cash: $1.205.447.707] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(355, 1, 'DanielSy has disconnected [cash: $1.205.447.707] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(356, 1, 'DanielSy has disconnected [cash: $1.205.443.711] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(357, 1, 'DanielSy has disconnected [cash: $1.205.443.711] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(358, 1, 'DanielSy has disconnected [cash: $1.205.443.711] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(359, 1, 'DanielSy has disconnected [cash: $1.205.443.711] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(360, 1, 'DanielSy has disconnected [cash: $1.205.442.712] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(361, 1, 'DanielSy has disconnected [cash: $0] [bank: $0] [PP: 0] [Level: 0] [hours: 0.00]\')', ''),
(362, 1, 'DanielSy has disconnected [cash: $1.205.442.712] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(363, 1, 'DanielSy has disconnected [cash: $1.205.442.712] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(364, 1, 'DanielSy has disconnected [cash: $1.205.442.712] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(365, 1, 'DanielSy has disconnected [cash: $1.205.442.712] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(366, 1, 'DanielSy has disconnected [cash: $1.205.442.712] [bank: $45.043.015] [PP: 716] [Level: 1337] [hours: 1007.96]\')', ''),
(367, 1, 'DanielSy has disconnected [cash: $1.208.442.712] [bank: $49.091.109] [PP: 724] [Level: 1337] [hours: 1008.40]\')', ''),
(368, 1, 'DanielSy has disconnected [cash: $1.208.442.712] [bank: $49.091.109] [PP: 724] [Level: 1337] [hours: 1008.40]\')', ''),
(369, 1, 'DanielSy has disconnected [cash: $1.208.442.712] [bank: $49.091.109] [PP: 724] [Level: 1337] [hours: 1008.40]\')', ''),
(370, 1, 'DanielSy has disconnected [cash: $1.211.442.712] [bank: $53.131.602] [PP: 732] [Level: 1337] [hours: 1008.79]\')', ''),
(371, 1, 'DanielSy has disconnected [cash: $1.211.442.712] [bank: $53.131.602] [PP: 732] [Level: 1337] [hours: 1008.79]\')', ''),
(372, 1, 'DanielSy has disconnected [cash: $1.211.442.712] [bank: $53.131.602] [PP: 732] [Level: 1337] [hours: 1008.79]\')', ''),
(373, 1, 'DanielSy has disconnected [cash: $1.211.442.712] [bank: $53.131.602] [PP: 732] [Level: 1337] [hours: 1008.79]\')', ''),
(374, 1, 'DanielSy has disconnected [cash: $1.211.442.712] [bank: $53.131.602] [PP: 732] [Level: 1337] [hours: 1008.79]\')', '');

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
  `Type` int(11) NOT NULL,
  `Skin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs_history`
--

INSERT INTO `logs_history` (`ID`, `Player`, `Log`, `Date`, `deleted`, `Type`, `Skin`) VALUES
(6, 1, 'DanielSy was uninvited by admin DanielSy from faction Los Santos Police Department (rank 7) after 0 days, without FP. Reason: re', '2023-12-31 14:16:57', 0, 2, 0),
(7, 1, 'DanielSy is now the leader of group Gouvernment.', '2023-12-31 14:17:02', 0, 1, 0),
(8, 1, 'DanielSy was uninvited by admin DanielSy from faction Gouvernment (rank 7) after 0 days, without FP. Reason: re', '2023-12-31 14:18:27', 0, 2, 0),
(9, 1, 'DanielSy is now the leader of group Los Santos Police Department.', '2024-01-01 15:44:44', 0, 1, 0),
(10, 2, 'DanielSy1 was uninvited by DanielSy from faction  (rank 0) after 19730 days, with 20 FP. Reason: DanielSy sobolan', '2024-01-08 16:42:57', 0, 2, 0),
(11, 1, 'DanielSy was uninvited by admin DanielSy from faction Los Santos Police Department (rank 7) after 25 days, without FP. Reason: re', '2024-01-27 07:23:12', 0, 2, 0),
(12, 1, 'DanielSy is now the leader of group Los Santos Police Department.', '2024-01-28 16:03:07', 0, 1, 0),
(13, 1, 'DanielSy was uninvited by admin DanielSy from faction Gouvernment (rank 7) after 1 days, without FP. Reason: re', '2024-01-29 19:05:26', 0, 2, 0),
(14, 1, 'DanielSy was uninvited by admin DanielSy from faction Los Santos Police Department (rank 1) after 4 days, without FP. Reason: 0', '2024-02-01 19:02:19', 0, 2, 0);

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

--
-- Dumping data for table `logs_kills`
--

INSERT INTO `logs_kills` (`ID`, `Player`, `Name`, `By`, `Distance`, `Date`) VALUES
(1, 1, 'DanielSy', 0, 0, '2024-01-04 14:22:36'),
(2, 1, 'DanielSy', 0, 0, '2024-01-04 14:22:56'),
(3, 1, 'DanielSy', 0, 0, '2024-01-04 14:22:58'),
(4, 1, 'DanielSy', 0, 0, '2024-01-04 14:22:59'),
(5, 1, 'DanielSy', 0, 0, '2024-01-04 14:22:59'),
(6, 1, 'DanielSy', 0, 2209.13, '2024-01-04 14:23:00'),
(7, 2, 'DanielSy1', 0, 34.25, '2024-01-06 12:46:50');

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

--
-- Dumping data for table `logs_login`
--

INSERT INTO `logs_login` (`ID`, `Player`, `IP`, `Status`) VALUES
(1, 1, '188.27.129.61', 1),
(2, 1, '188.27.129.61', 1),
(3, 1, '188.27.129.61', 1),
(4, 1, '127.0.0.1', 1),
(5, 1, '127.0.0.1', 1),
(6, 1, '127.0.0.1', 1),
(7, 1, '127.0.0.1', 1),
(8, 1, '127.0.0.1', 1),
(9, 1, '127.0.0.1', 1),
(10, 1, '127.0.0.1', 1),
(11, 1, '127.0.0.1', 1),
(12, 1, '127.0.0.1', 1),
(13, 1, '127.0.0.1', 1),
(14, 1, '127.0.0.1', 1),
(15, 1, '127.0.0.1', 1),
(16, 1, '127.0.0.1', 1),
(17, 1, '127.0.0.1', 1),
(18, 1, '127.0.0.1', 1),
(19, 1, '127.0.0.1', 1),
(20, 1, '127.0.0.1', 1),
(21, 0, '127.0.0.1', 0),
(22, 2, '127.0.0.1', 1),
(23, 1, '127.0.0.1', 1),
(24, 1, '127.0.0.1', 1),
(25, 1, '127.0.0.1', 1),
(26, 1, '127.0.0.1', 1),
(27, 1, '127.0.0.1', 1),
(28, 1, '127.0.0.1', 1),
(29, 1, '127.0.0.1', 1),
(30, 1, '127.0.0.1', 1),
(31, 1, '127.0.0.1', 1),
(32, 1, '127.0.0.1', 1),
(33, 1, '127.0.0.1', 1),
(34, 1, '127.0.0.1', 1),
(35, 1, '127.0.0.1', 1),
(36, 1, '127.0.0.1', 1),
(37, 1, '127.0.0.1', 1),
(38, 1, '127.0.0.1', 1),
(39, 1, '127.0.0.1', 1),
(40, 1, '127.0.0.1', 1),
(41, 1, '127.0.0.1', 1),
(42, 1, '127.0.0.1', 1),
(43, 1, '127.0.0.1', 1),
(44, 1, '127.0.0.1', 1),
(45, 1, '127.0.0.1', 1),
(46, 1, '127.0.0.1', 1),
(47, 1, '127.0.0.1', 1),
(48, 1, '127.0.0.1', 1),
(49, 1, '127.0.0.1', 1),
(50, 1, '127.0.0.1', 1),
(51, 1, '127.0.0.1', 1),
(52, 1, '127.0.0.1', 1),
(53, 1, '127.0.0.1', 1),
(54, 2, '127.0.0.1', 1),
(55, 1, '127.0.0.1', 1),
(56, 2, '127.0.0.1', 1),
(57, 1, '127.0.0.1', 1),
(58, 1, '127.0.0.1', 1),
(59, 1, '127.0.0.1', 1),
(60, 1, '127.0.0.1', 1),
(61, 1, '127.0.0.1', 1),
(62, 1, '127.0.0.1', 1),
(63, 1, '127.0.0.1', 1),
(64, 1, '127.0.0.1', 1),
(65, 1, '127.0.0.1', 1),
(66, 1, '127.0.0.1', 1),
(67, 1, '127.0.0.1', 1),
(68, 1, '127.0.0.1', 1),
(69, 1, '127.0.0.1', 1),
(70, 1, '127.0.0.1', 1),
(71, 1, '127.0.0.1', 1),
(72, 1, '127.0.0.1', 1),
(73, 1, '127.0.0.1', 1),
(74, 1, '127.0.0.1', 1),
(75, 1, '127.0.0.1', 1),
(76, 1, '127.0.0.1', 1),
(77, 2, '127.0.0.1', 1),
(78, 1, '127.0.0.1', 1),
(79, 1, '127.0.0.1', 1),
(80, 1, '127.0.0.1', 1),
(81, 1, '127.0.0.1', 1),
(82, 1, '127.0.0.1', 1),
(83, 1, '127.0.0.1', 1),
(84, 1, '127.0.0.1', 1),
(85, 1, '127.0.0.1', 1),
(86, 1, '127.0.0.1', 1),
(87, 1, '127.0.0.1', 1),
(88, 1, '127.0.0.1', 1),
(89, 1, '127.0.0.1', 1),
(90, 1, '127.0.0.1', 1),
(91, 1, '127.0.0.1', 1),
(92, 1, '127.0.0.1', 1),
(93, 1, '127.0.0.1', 1),
(94, 1, '127.0.0.1', 1),
(95, 1, '127.0.0.1', 1),
(96, 1, '127.0.0.1', 1),
(97, 1, '127.0.0.1', 1),
(98, 0, '127.0.0.1', 0),
(99, 1, '127.0.0.1', 1),
(100, 1, '127.0.0.1', 1),
(101, 1, '127.0.0.1', 1),
(102, 1, '127.0.0.1', 1),
(103, 1, '127.0.0.1', 1),
(104, 1, '127.0.0.1', 1),
(105, 1, '127.0.0.1', 1),
(106, 1, '127.0.0.1', 1),
(107, 1, '127.0.0.1', 1),
(108, 1, '127.0.0.1', 1),
(109, 1, '127.0.0.1', 1),
(110, 1, '127.0.0.1', 1),
(111, 1, '127.0.0.1', 1),
(112, 1, '127.0.0.1', 1),
(113, 1, '127.0.0.1', 1),
(114, 1, '127.0.0.1', 1),
(115, 3, '127.0.0.1', 1),
(116, 1, '127.0.0.1', 1),
(117, 1, '127.0.0.1', 1),
(118, 1, '127.0.0.1', 1),
(119, 1, '127.0.0.1', 1),
(120, 1, '127.0.0.1', 1),
(121, 1, '127.0.0.1', 1),
(122, 1, '127.0.0.1', 1),
(123, 1, '127.0.0.1', 1),
(124, 1, '127.0.0.1', 1),
(125, 1, '127.0.0.1', 1),
(126, 1, '127.0.0.1', 1),
(127, 1, '127.0.0.1', 1),
(128, 1, '127.0.0.1', 1),
(129, 1, '127.0.0.1', 1),
(130, 1, '127.0.0.1', 1),
(131, 1, '127.0.0.1', 1),
(132, 1, '127.0.0.1', 1),
(133, 1, '127.0.0.1', 1),
(134, 1, '127.0.0.1', 1),
(135, 1, '127.0.0.1', 1),
(136, 1, '127.0.0.1', 1),
(137, 1, '127.0.0.1', 1),
(138, 1, '127.0.0.1', 1),
(139, 1, '127.0.0.1', 1),
(140, 1, '127.0.0.1', 1),
(141, 1, '127.0.0.1', 1),
(142, 1, '127.0.0.1', 1),
(143, 1, '127.0.0.1', 1),
(144, 1, '127.0.0.1', 1),
(145, 1, '127.0.0.1', 1),
(146, 1, '127.0.0.1', 1),
(147, 1, '127.0.0.1', 1),
(148, 1, '127.0.0.1', 1),
(149, 1, '127.0.0.1', 1),
(150, 1, '127.0.0.1', 1),
(151, 1, '127.0.0.1', 1),
(152, 1, '127.0.0.1', 1),
(153, 1, '127.0.0.1', 1),
(154, 1, '127.0.0.1', 1),
(155, 1, '127.0.0.1', 1),
(156, 1, '127.0.0.1', 1),
(157, 1, '127.0.0.1', 1),
(158, 1, '127.0.0.1', 1),
(159, 1, '127.0.0.1', 1),
(160, 1, '127.0.0.1', 1),
(161, 1, '127.0.0.1', 1),
(162, 1, '127.0.0.1', 1),
(163, 1, '127.0.0.1', 1),
(164, 1, '127.0.0.1', 1),
(165, 1, '127.0.0.1', 1),
(166, 1, '127.0.0.1', 1),
(167, 1, '127.0.0.1', 1),
(168, 1, '127.0.0.1', 1),
(169, 4, '127.0.0.1', 1),
(170, 1, '127.0.0.1', 1),
(171, 4, '127.0.0.1', 1),
(172, 1, '127.0.0.1', 1),
(173, 1, '127.0.0.1', 1),
(174, 1, '127.0.0.1', 1),
(175, 1, '127.0.0.1', 1),
(176, 1, '127.0.0.1', 1),
(177, 1, '127.0.0.1', 1),
(178, 1, '127.0.0.1', 1),
(179, 1, '127.0.0.1', 1),
(180, 1, '127.0.0.1', 1),
(181, 1, '127.0.0.1', 1),
(182, 1, '127.0.0.1', 1),
(183, 1, '127.0.0.1', 1),
(184, 1, '127.0.0.1', 1),
(185, 1, '127.0.0.1', 1),
(186, 1, '127.0.0.1', 1),
(187, 1, '127.0.0.1', 1),
(188, 1, '127.0.0.1', 1),
(189, 1, '127.0.0.1', 1),
(190, 1, '127.0.0.1', 1),
(191, 1, '127.0.0.1', 1),
(192, 1, '127.0.0.1', 1),
(193, 1, '127.0.0.1', 1),
(194, 1, '127.0.0.1', 1),
(195, 1, '127.0.0.1', 1),
(196, 1, '127.0.0.1', 1),
(197, 1, '127.0.0.1', 1),
(198, 1, '127.0.0.1', 1),
(199, 1, '127.0.0.1', 1),
(200, 1, '127.0.0.1', 1),
(201, 1, '127.0.0.1', 1),
(202, 1, '127.0.0.1', 1),
(203, 1, '127.0.0.1', 1),
(204, 1, '127.0.0.1', 1),
(205, 1, '127.0.0.1', 1),
(206, 1, '127.0.0.1', 1),
(207, 1, '127.0.0.1', 1),
(208, 1, '127.0.0.1', 1),
(209, 1, '127.0.0.1', 1),
(210, 1, '127.0.0.1', 1),
(211, 1, '127.0.0.1', 1),
(212, 1, '127.0.0.1', 1),
(213, 1, '127.0.0.1', 1),
(214, 1, '127.0.0.1', 1),
(215, 1, '127.0.0.1', 1),
(216, 1, '127.0.0.1', 1),
(217, 1, '127.0.0.1', 1),
(218, 1, '127.0.0.1', 1),
(219, 1, '127.0.0.1', 1),
(220, 1, '127.0.0.1', 1),
(221, 1, '127.0.0.1', 1),
(222, 1, '127.0.0.1', 1),
(223, 1, '127.0.0.1', 1),
(224, 1, '127.0.0.1', 1),
(225, 1, '127.0.0.1', 1),
(226, 1, '127.0.0.1', 1),
(227, 1, '127.0.0.1', 1),
(228, 1, '127.0.0.1', 1),
(229, 1, '127.0.0.1', 1),
(230, 1, '127.0.0.1', 1),
(231, 1, '127.0.0.1', 1),
(232, 1, '127.0.0.1', 1),
(233, 2, '127.0.0.1', 1),
(234, 1, '127.0.0.1', 1),
(235, 1, '127.0.0.1', 1),
(236, 1, '127.0.0.1', 1),
(237, 1, '127.0.0.1', 1),
(238, 1, '127.0.0.1', 1),
(239, 1, '127.0.0.1', 1),
(240, 1, '127.0.0.1', 1),
(241, 1, '127.0.0.1', 1),
(242, 1, '127.0.0.1', 1),
(243, 1, '127.0.0.1', 1),
(244, 1, '127.0.0.1', 1),
(245, 1, '127.0.0.1', 1),
(246, 2, '127.0.0.1', 1),
(247, 1, '127.0.0.1', 1),
(248, 2, '127.0.0.1', 1),
(249, 2, '127.0.0.1', 1),
(250, 1, '127.0.0.1', 1),
(251, 1, '127.0.0.1', 1),
(252, 2, '127.0.0.1', 1),
(253, 2, '127.0.0.1', 1),
(254, 1, '127.0.0.1', 1),
(255, 1, '127.0.0.1', 1),
(256, 2, '127.0.0.1', 1),
(257, 2, '127.0.0.1', 1),
(258, 1, '127.0.0.1', 1),
(259, 1, '127.0.0.1', 1),
(260, 1, '127.0.0.1', 1),
(261, 1, '127.0.0.1', 1),
(262, 1, '127.0.0.1', 1),
(263, 1, '127.0.0.1', 1),
(264, 1, '127.0.0.1', 1),
(265, 1, '127.0.0.1', 1),
(266, 1, '127.0.0.1', 1),
(267, 1, '127.0.0.1', 1),
(268, 1, '127.0.0.1', 1),
(269, 1, '127.0.0.1', 1),
(270, 1, '127.0.0.1', 1),
(271, 1, '127.0.0.1', 1),
(272, 1, '127.0.0.1', 1),
(273, 1, '127.0.0.1', 1),
(274, 1, '127.0.0.1', 1),
(275, 1, '127.0.0.1', 1),
(276, 1, '127.0.0.1', 1),
(277, 1, '127.0.0.1', 1),
(278, 1, '127.0.0.1', 1),
(279, 1, '127.0.0.1', 1),
(280, 1, '127.0.0.1', 1),
(281, 1, '127.0.0.1', 1),
(282, 1, '127.0.0.1', 1),
(283, 1, '127.0.0.1', 1),
(284, 1, '127.0.0.1', 1),
(285, 1, '127.0.0.1', 1),
(286, 1, '127.0.0.1', 1),
(287, 1, '127.0.0.1', 1),
(288, 1, '127.0.0.1', 1),
(289, 1, '127.0.0.1', 1),
(290, 1, '127.0.0.1', 1),
(291, 1, '127.0.0.1', 1),
(292, 1, '127.0.0.1', 1),
(293, 1, '127.0.0.1', 1),
(294, 1, '127.0.0.1', 1),
(295, 1, '127.0.0.1', 1),
(296, 1, '127.0.0.1', 1),
(297, 1, '127.0.0.1', 1),
(298, 1, '127.0.0.1', 1),
(299, 1, '127.0.0.1', 1),
(300, 1, '127.0.0.1', 1),
(301, 1, '127.0.0.1', 1),
(302, 1, '127.0.0.1', 1),
(303, 1, '127.0.0.1', 1),
(304, 1, '127.0.0.1', 1),
(305, 1, '127.0.0.1', 1),
(306, 1, '127.0.0.1', 1),
(307, 1, '127.0.0.1', 1),
(308, 1, '127.0.0.1', 1),
(309, 1, '127.0.0.1', 1),
(310, 1, '127.0.0.1', 1),
(311, 1, '127.0.0.1', 1),
(312, 1, '127.0.0.1', 1),
(313, 1, '127.0.0.1', 1),
(314, 1, '127.0.0.1', 1),
(315, 1, '127.0.0.1', 1),
(316, 1, '127.0.0.1', 1),
(317, 1, '127.0.0.1', 1),
(318, 1, '127.0.0.1', 1),
(319, 1, '127.0.0.1', 1),
(320, 1, '127.0.0.1', 1),
(321, 1, '127.0.0.1', 1),
(322, 1, '127.0.0.1', 1),
(323, 1, '127.0.0.1', 1),
(324, 1, '127.0.0.1', 1),
(325, 1, '127.0.0.1', 1),
(326, 1, '127.0.0.1', 1),
(327, 1, '127.0.0.1', 1),
(328, 1, '127.0.0.1', 1),
(329, 1, '127.0.0.1', 1),
(330, 1, '127.0.0.1', 1),
(331, 1, '127.0.0.1', 1),
(332, 1, '127.0.0.1', 1),
(333, 5, '127.0.0.1', 1),
(334, 1, '127.0.0.1', 1),
(335, 1, '127.0.0.1', 1),
(336, 2, '127.0.0.1', 1),
(337, 1, '127.0.0.1', 1),
(338, 2, '127.0.0.1', 1),
(339, 2, '127.0.0.1', 1),
(340, 1, '127.0.0.1', 1),
(341, 2, '127.0.0.1', 1),
(342, 1, '127.0.0.1', 1),
(343, 2, '127.0.0.1', 1),
(344, 1, '127.0.0.1', 1),
(345, 2, '127.0.0.1', 1),
(346, 1, '127.0.0.1', 1),
(347, 2, '127.0.0.1', 1),
(348, 1, '127.0.0.1', 1),
(349, 1, '127.0.0.1', 1),
(350, 1, '127.0.0.1', 1),
(351, 1, '127.0.0.1', 1),
(352, 1, '127.0.0.1', 1),
(353, 1, '127.0.0.1', 1),
(354, 1, '127.0.0.1', 1),
(355, 1, '127.0.0.1', 1),
(356, 2, '127.0.0.1', 1),
(357, 1, '127.0.0.1', 1),
(358, 2, '127.0.0.1', 1),
(359, 1, '127.0.0.1', 1),
(360, 2, '127.0.0.1', 1),
(361, 1, '127.0.0.1', 1),
(362, 1, '127.0.0.1', 1),
(363, 2, '127.0.0.1', 1),
(364, 1, '127.0.0.1', 1),
(365, 1, '127.0.0.1', 1),
(366, 1, '127.0.0.1', 1),
(367, 1, '127.0.0.1', 1),
(368, 2, '127.0.0.1', 1),
(369, 1, '127.0.0.1', 1),
(370, 1, '127.0.0.1', 1),
(371, 1, '127.0.0.1', 1),
(372, 1, '127.0.0.1', 1),
(373, 1, '127.0.0.1', 1),
(374, 1, '127.0.0.1', 1),
(375, 2, '127.0.0.1', 1),
(376, 2, '127.0.0.1', 1),
(377, 1, '127.0.0.1', 1),
(378, 2, '127.0.0.1', 1),
(379, 2, '127.0.0.1', 1),
(380, 1, '127.0.0.1', 1),
(381, 1, '127.0.0.1', 1),
(382, 2, '127.0.0.1', 1),
(383, 2, '127.0.0.1', 1),
(384, 1, '127.0.0.1', 1),
(385, 1, '127.0.0.1', 1),
(386, 2, '127.0.0.1', 1),
(387, 1, '127.0.0.1', 1),
(388, 2, '127.0.0.1', 1),
(389, 1, '127.0.0.1', 1),
(390, 2, '127.0.0.1', 1),
(391, 1, '127.0.0.1', 1),
(392, 2, '127.0.0.1', 1),
(393, 1, '127.0.0.1', 1),
(394, 1, '127.0.0.1', 1),
(395, 1, '127.0.0.1', 1),
(396, 1, '127.0.0.1', 1),
(397, 1, '127.0.0.1', 1),
(398, 1, '127.0.0.1', 1),
(399, 1, '127.0.0.1', 1),
(400, 1, '127.0.0.1', 1),
(401, 1, '127.0.0.1', 1),
(402, 1, '127.0.0.1', 1),
(403, 1, '127.0.0.1', 1),
(404, 1, '127.0.0.1', 1),
(405, 1, '127.0.0.1', 1),
(406, 2, '127.0.0.1', 1),
(407, 1, '127.0.0.1', 1),
(408, 2, '127.0.0.1', 1),
(409, 1, '127.0.0.1', 1),
(410, 1, '127.0.0.1', 1),
(411, 1, '127.0.0.1', 1),
(412, 1, '127.0.0.1', 1),
(413, 1, '127.0.0.1', 1),
(414, 1, '127.0.0.1', 1),
(415, 1, '127.0.0.1', 1),
(416, 1, '127.0.0.1', 1),
(417, 1, '127.0.0.1', 1),
(418, 1, '127.0.0.1', 1),
(419, 1, '127.0.0.1', 1),
(420, 1, '127.0.0.1', 1),
(421, 1, '127.0.0.1', 1),
(422, 1, '127.0.0.1', 1),
(423, 1, '127.0.0.1', 1),
(424, 1, '127.0.0.1', 1),
(425, 1, '127.0.0.1', 1),
(426, 1, '127.0.0.1', 1),
(427, 1, '127.0.0.1', 1),
(428, 1, '127.0.0.1', 1),
(429, 1, '127.0.0.1', 1),
(430, 1, '127.0.0.1', 1),
(431, 1, '127.0.0.1', 1),
(432, 1, '127.0.0.1', 1),
(433, 1, '127.0.0.1', 1),
(434, 1, '127.0.0.1', 1),
(435, 1, '127.0.0.1', 1),
(436, 1, '127.0.0.1', 1),
(437, 1, '127.0.0.1', 1),
(438, 1, '127.0.0.1', 1),
(439, 1, '127.0.0.1', 1),
(440, 1, '127.0.0.1', 1),
(441, 1, '127.0.0.1', 1),
(442, 1, '127.0.0.1', 1),
(443, 1, '127.0.0.1', 1),
(444, 1, '127.0.0.1', 1),
(445, 1, '127.0.0.1', 1),
(446, 1, '127.0.0.1', 1),
(447, 1, '127.0.0.1', 1),
(448, 1, '127.0.0.1', 1),
(449, 1, '127.0.0.1', 1),
(450, 1, '127.0.0.1', 1),
(451, 1, '127.0.0.1', 1),
(452, 1, '127.0.0.1', 1),
(453, 1, '127.0.0.1', 1),
(454, 1, '127.0.0.1', 1),
(455, 1, '127.0.0.1', 1),
(456, 1, '127.0.0.1', 1),
(457, 1, '127.0.0.1', 1),
(458, 1, '127.0.0.1', 1),
(459, 1, '127.0.0.1', 1),
(460, 1, '127.0.0.1', 1),
(461, 1, '127.0.0.1', 1),
(462, 1, '127.0.0.1', 1),
(463, 1, '127.0.0.1', 1),
(464, 6, '127.0.0.1', 1),
(465, 1, '127.0.0.1', 1),
(466, 1, '127.0.0.1', 1),
(467, 1, '127.0.0.1', 1),
(468, 1, '127.0.0.1', 1),
(469, 1, '127.0.0.1', 1),
(470, 1, '127.0.0.1', 1),
(471, 1, '127.0.0.1', 1),
(472, 1, '127.0.0.1', 1),
(473, 1, '127.0.0.1', 1),
(474, 1, '127.0.0.1', 1),
(475, 1, '127.0.0.1', 1),
(476, 1, '127.0.0.1', 1),
(477, 1, '127.0.0.1', 1),
(478, 1, '127.0.0.1', 1),
(479, 1, '127.0.0.1', 1),
(480, 1, '127.0.0.1', 1),
(481, 1, '127.0.0.1', 1),
(482, 1, '127.0.0.1', 1),
(483, 1, '127.0.0.1', 1),
(484, 1, '127.0.0.1', 1),
(485, 1, '127.0.0.1', 1),
(486, 1, '127.0.0.1', 1),
(487, 1, '127.0.0.1', 1),
(488, 1, '127.0.0.1', 1),
(489, 1, '127.0.0.1', 1),
(490, 1, '127.0.0.1', 1),
(491, 1, '127.0.0.1', 1),
(492, 1, '127.0.0.1', 1),
(493, 1, '127.0.0.1', 1),
(494, 1, '127.0.0.1', 1),
(495, 1, '127.0.0.1', 1),
(496, 1, '127.0.0.1', 1),
(497, 1, '127.0.0.1', 1),
(498, 1, '127.0.0.1', 1),
(499, 1, '127.0.0.1', 1),
(500, 1, '127.0.0.1', 1),
(501, 1, '127.0.0.1', 1),
(502, 1, '127.0.0.1', 1),
(503, 1, '127.0.0.1', 1),
(504, 1, '127.0.0.1', 1),
(505, 1, '127.0.0.1', 1),
(506, 1, '127.0.0.1', 1),
(507, 1, '127.0.0.1', 1),
(508, 1, '127.0.0.1', 1),
(509, 1, '127.0.0.1', 1),
(510, 1, '127.0.0.1', 1),
(511, 1, '127.0.0.1', 1),
(512, 1, '127.0.0.1', 1),
(513, 1, '127.0.0.1', 1),
(514, 1, '127.0.0.1', 1),
(515, 1, '127.0.0.1', 1),
(516, 1, '127.0.0.1', 1),
(517, 1, '127.0.0.1', 1),
(518, 1, '127.0.0.1', 1),
(519, 1, '127.0.0.1', 1),
(520, 1, '127.0.0.1', 1),
(521, 1, '127.0.0.1', 1),
(522, 1, '127.0.0.1', 1),
(523, 1, '127.0.0.1', 1),
(524, 1, '127.0.0.1', 1),
(525, 1, '127.0.0.1', 1),
(526, 1, '127.0.0.1', 1),
(527, 1, '127.0.0.1', 1),
(528, 1, '127.0.0.1', 1),
(529, 1, '127.0.0.1', 1),
(530, 1, '127.0.0.1', 1),
(531, 1, '127.0.0.1', 1),
(532, 1, '127.0.0.1', 1),
(533, 1, '127.0.0.1', 1),
(534, 1, '127.0.0.1', 1),
(535, 1, '127.0.0.1', 1),
(536, 1, '127.0.0.1', 1),
(537, 1, '127.0.0.1', 1),
(538, 1, '127.0.0.1', 1),
(539, 1, '127.0.0.1', 1),
(540, 1, '127.0.0.1', 1),
(541, 1, '127.0.0.1', 1),
(542, 1, '127.0.0.1', 1),
(543, 1, '127.0.0.1', 1),
(544, 1, '127.0.0.1', 1),
(545, 1, '127.0.0.1', 1),
(546, 1, '127.0.0.1', 1),
(547, 1, '127.0.0.1', 1),
(548, 7, '127.0.0.1', 1),
(549, 7, '127.0.0.1', 1),
(550, 7, '127.0.0.1', 1),
(551, 1, '127.0.0.1', 1),
(552, 1, '127.0.0.1', 1),
(553, 1, '127.0.0.1', 1),
(554, 1, '127.0.0.1', 1),
(555, 1, '127.0.0.1', 1),
(556, 1, '127.0.0.1', 1),
(557, 1, '127.0.0.1', 1),
(558, 1, '127.0.0.1', 1),
(559, 1, '127.0.0.1', 1),
(560, 8, '127.0.0.1', 1),
(561, 9, '127.0.0.1', 1),
(562, 9, '127.0.0.1', 1),
(563, 9, '127.0.0.1', 1),
(564, 9, '127.0.0.1', 1),
(565, 9, '127.0.0.1', 1),
(566, 1, '127.0.0.1', 1),
(567, 1, '127.0.0.1', 1),
(568, 1, '127.0.0.1', 1),
(569, 1, '127.0.0.1', 1),
(570, 1, '127.0.0.1', 1),
(571, 1, '127.0.0.1', 1),
(572, 1, '127.0.0.1', 1),
(573, 1, '127.0.0.1', 1),
(574, 1, '127.0.0.1', 1),
(575, 1, '127.0.0.1', 1),
(576, 1, '127.0.0.1', 1),
(577, 1, '127.0.0.1', 1),
(578, 1, '127.0.0.1', 1),
(579, 1, '127.0.0.1', 1),
(580, 1, '127.0.0.1', 1),
(581, 1, '127.0.0.1', 1),
(582, 1, '127.0.0.1', 1),
(583, 1, '127.0.0.1', 1),
(584, 1, '127.0.0.1', 1),
(585, 1, '127.0.0.1', 1),
(586, 1, '127.0.0.1', 1),
(587, 1, '127.0.0.1', 1),
(588, 1, '127.0.0.1', 1),
(589, 1, '127.0.0.1', 1),
(590, 1, '127.0.0.1', 1),
(591, 1, '127.0.0.1', 1),
(592, 1, '127.0.0.1', 1),
(593, 1, '127.0.0.1', 1),
(594, 1, '127.0.0.1', 1),
(595, 1, '127.0.0.1', 1),
(596, 1, '127.0.0.1', 1),
(597, 1, '127.0.0.1', 1),
(598, 1, '127.0.0.1', 1),
(599, 1, '127.0.0.1', 1),
(600, 1, '127.0.0.1', 1),
(601, 1, '127.0.0.1', 1),
(602, 1, '127.0.0.1', 1),
(603, 1, '127.0.0.1', 1),
(604, 1, '127.0.0.1', 1),
(605, 1, '127.0.0.1', 1),
(606, 1, '127.0.0.1', 1),
(607, 1, '127.0.0.1', 1),
(608, 1, '127.0.0.1', 1),
(609, 1, '127.0.0.1', 1),
(610, 1, '127.0.0.1', 1),
(611, 1, '127.0.0.1', 1),
(612, 1, '127.0.0.1', 1),
(613, 1, '127.0.0.1', 1),
(614, 1, '127.0.0.1', 1),
(615, 1, '127.0.0.1', 1),
(616, 1, '127.0.0.1', 1),
(617, 1, '127.0.0.1', 1),
(618, 1, '127.0.0.1', 1),
(619, 1, '127.0.0.1', 1),
(620, 1, '127.0.0.1', 1),
(621, 1, '127.0.0.1', 1),
(622, 1, '127.0.0.1', 1),
(623, 1, '127.0.0.1', 1),
(624, 1, '127.0.0.1', 1),
(625, 1, '127.0.0.1', 1),
(626, 1, '127.0.0.1', 1),
(627, 1, '127.0.0.1', 1),
(628, 1, '127.0.0.1', 1),
(629, 1, '127.0.0.1', 1),
(630, 1, '127.0.0.1', 1),
(631, 1, '127.0.0.1', 1),
(632, 1, '127.0.0.1', 1),
(633, 1, '127.0.0.1', 1),
(634, 1, '127.0.0.1', 1),
(635, 1, '127.0.0.1', 1),
(636, 1, '127.0.0.1', 1),
(637, 1, '127.0.0.1', 1),
(638, 1, '127.0.0.1', 1),
(639, 1, '127.0.0.1', 1),
(640, 1, '127.0.0.1', 1),
(641, 1, '127.0.0.1', 1),
(642, 1, '127.0.0.1', 1),
(643, 1, '127.0.0.1', 1),
(644, 1, '127.0.0.1', 1),
(645, 1, '127.0.0.1', 1),
(646, 1, '127.0.0.1', 1),
(647, 1, '127.0.0.1', 1),
(648, 1, '127.0.0.1', 1),
(649, 1, '127.0.0.1', 1),
(650, 1, '127.0.0.1', 1),
(651, 1, '127.0.0.1', 1),
(652, 1, '127.0.0.1', 1),
(653, 1, '127.0.0.1', 1),
(654, 1, '127.0.0.1', 1),
(655, 1, '127.0.0.1', 0),
(656, 1, '127.0.0.1', 1),
(657, 1, '127.0.0.1', 1),
(658, 1, '127.0.0.1', 1),
(659, 1, '127.0.0.1', 1),
(660, 1, '127.0.0.1', 1),
(661, 1, '127.0.0.1', 1),
(662, 1, '127.0.0.1', 1),
(663, 1, '127.0.0.1', 1),
(664, 1, '127.0.0.1', 0),
(665, 1, '127.0.0.1', 1),
(666, 1, '127.0.0.1', 1),
(667, 1, '127.0.0.1', 1),
(668, 1, '127.0.0.1', 1),
(669, 1, '127.0.0.1', 1),
(670, 1, '127.0.0.1', 1),
(671, 1, '127.0.0.1', 1),
(672, 1, '127.0.0.1', 1),
(673, 1, '127.0.0.1', 1),
(674, 1, '127.0.0.1', 1),
(675, 1, '127.0.0.1', 1),
(676, 1, '127.0.0.1', 1),
(677, 1, '127.0.0.1', 1),
(678, 1, '127.0.0.1', 1),
(679, 1, '127.0.0.1', 1),
(680, 1, '127.0.0.1', 1),
(681, 1, '127.0.0.1', 1),
(682, 1, '127.0.0.1', 1),
(683, 1, '127.0.0.1', 1),
(684, 1, '127.0.0.1', 1),
(685, 1, '127.0.0.1', 1),
(686, 1, '127.0.0.1', 1),
(687, 1, '127.0.0.1', 1),
(688, 1, '127.0.0.1', 1),
(689, 1, '127.0.0.1', 1),
(690, 1, '127.0.0.1', 1),
(691, 1, '127.0.0.1', 1),
(692, 1, '127.0.0.1', 1),
(693, 1, '127.0.0.1', 1),
(694, 1, '127.0.0.1', 1),
(695, 1, '127.0.0.1', 1),
(696, 1, '127.0.0.1', 1),
(697, 1, '127.0.0.1', 1),
(698, 1, '127.0.0.1', 1),
(699, 1, '127.0.0.1', 1),
(700, 1, '127.0.0.1', 1),
(701, 1, '127.0.0.1', 1),
(702, 1, '127.0.0.1', 1),
(703, 1, '127.0.0.1', 1),
(704, 1, '127.0.0.1', 1),
(705, 1, '127.0.0.1', 1),
(706, 1, '127.0.0.1', 1),
(707, 1, '127.0.0.1', 1),
(708, 1, '127.0.0.1', 1),
(709, 1, '127.0.0.1', 1),
(710, 1, '127.0.0.1', 1),
(711, 1, '127.0.0.1', 1),
(712, 1, '127.0.0.1', 1),
(713, 1, '127.0.0.1', 1),
(714, 1, '127.0.0.1', 1),
(715, 1, '127.0.0.1', 1),
(716, 1, '127.0.0.1', 1),
(717, 1, '127.0.0.1', 1),
(718, 1, '127.0.0.1', 1),
(719, 1, '127.0.0.1', 1),
(720, 1, '127.0.0.1', 1),
(721, 1, '127.0.0.1', 1),
(722, 1, '127.0.0.1', 1),
(723, 1, '127.0.0.1', 1),
(724, 1, '127.0.0.1', 1),
(725, 1, '127.0.0.1', 1),
(726, 1, '127.0.0.1', 1),
(727, 1, '127.0.0.1', 1),
(728, 1, '127.0.0.1', 1),
(729, 1, '127.0.0.1', 1),
(730, 1, '127.0.0.1', 1),
(731, 1, '127.0.0.1', 1),
(732, 1, '127.0.0.1', 1),
(733, 1, '127.0.0.1', 1),
(734, 1, '127.0.0.1', 1),
(735, 1, '127.0.0.1', 1),
(736, 1, '127.0.0.1', 1),
(737, 1, '127.0.0.1', 1),
(738, 1, '127.0.0.1', 1),
(739, 1, '127.0.0.1', 1),
(740, 1, '127.0.0.1', 1),
(741, 1, '127.0.0.1', 1),
(742, 1, '127.0.0.1', 1),
(743, 1, '127.0.0.1', 1),
(744, 1, '127.0.0.1', 1),
(745, 1, '127.0.0.1', 1),
(746, 1, '127.0.0.1', 1),
(747, 1, '127.0.0.1', 1),
(748, 1, '127.0.0.1', 1),
(749, 1, '127.0.0.1', 1),
(750, 1, '127.0.0.1', 1),
(751, 1, '127.0.0.1', 1),
(752, 1, '127.0.0.1', 1),
(753, 1, '127.0.0.1', 1),
(754, 10, '127.0.0.1', 1),
(755, 11, '127.0.0.1', 1),
(756, 1, '127.0.0.1', 1),
(757, 1, '127.0.0.1', 1),
(758, 1, '127.0.0.1', 1),
(759, 1, '127.0.0.1', 1),
(760, 1, '127.0.0.1', 1),
(761, 1, '127.0.0.1', 1),
(762, 1, '127.0.0.1', 1),
(763, 1, '127.0.0.1', 1),
(764, 1, '127.0.0.1', 1),
(765, 1, '127.0.0.1', 1),
(766, 1, '127.0.0.1', 1),
(767, 1, '127.0.0.1', 1),
(768, 1, '127.0.0.1', 1),
(769, 1, '127.0.0.1', 1),
(770, 1, '127.0.0.1', 1),
(771, 1, '127.0.0.1', 1),
(772, 1, '127.0.0.1', 1),
(773, 1, '127.0.0.1', 1),
(774, 1, '127.0.0.1', 1),
(775, 1, '127.0.0.1', 1),
(776, 1, '127.0.0.1', 1),
(777, 1, '127.0.0.1', 1),
(778, 1, '127.0.0.1', 1),
(779, 1, '127.0.0.1', 1),
(780, 1, '127.0.0.1', 1),
(781, 1, '127.0.0.1', 1),
(782, 1, '127.0.0.1', 1),
(783, 1, '127.0.0.1', 1),
(784, 1, '127.0.0.1', 1),
(785, 1, '127.0.0.1', 1),
(786, 1, '127.0.0.1', 1),
(787, 1, '127.0.0.1', 1),
(788, 1, '127.0.0.1', 1),
(789, 1, '127.0.0.1', 1),
(790, 1, '127.0.0.1', 1),
(791, 1, '127.0.0.1', 1),
(792, 1, '127.0.0.1', 1),
(793, 1, '127.0.0.1', 1),
(794, 1, '127.0.0.1', 1),
(795, 1, '127.0.0.1', 1),
(796, 1, '127.0.0.1', 1),
(797, 1, '127.0.0.1', 1),
(798, 1, '127.0.0.1', 1),
(799, 1, '127.0.0.1', 1),
(800, 1, '127.0.0.1', 1),
(801, 1, '127.0.0.1', 1),
(802, 1, '127.0.0.1', 1),
(803, 11, '127.0.0.1', 1),
(804, 1, '127.0.0.1', 1),
(805, 11, '127.0.0.1', 1),
(806, 1, '127.0.0.1', 1),
(807, 11, '127.0.0.1', 1),
(808, 1, '127.0.0.1', 1),
(809, 11, '127.0.0.1', 1),
(810, 1, '127.0.0.1', 1),
(811, 11, '127.0.0.1', 1),
(812, 1, '127.0.0.1', 1),
(813, 11, '127.0.0.1', 1),
(814, 1, '127.0.0.1', 1),
(815, 1, '127.0.0.1', 1),
(816, 1, '127.0.0.1', 1),
(817, 1, '127.0.0.1', 1),
(818, 1, '127.0.0.1', 1),
(819, 1, '127.0.0.1', 1),
(820, 1, '127.0.0.1', 1),
(821, 1, '127.0.0.1', 1),
(822, 1, '127.0.0.1', 1),
(823, 1, '127.0.0.1', 1),
(824, 1, '127.0.0.1', 1),
(825, 1, '127.0.0.1', 1),
(826, 1, '127.0.0.1', 1),
(827, 1, '127.0.0.1', 1),
(828, 1, '127.0.0.1', 1),
(829, 1, '127.0.0.1', 1),
(830, 1, '127.0.0.1', 1),
(831, 1, '127.0.0.1', 1),
(832, 1, '127.0.0.1', 1),
(833, 1, '127.0.0.1', 1),
(834, 1, '127.0.0.1', 1),
(835, 1, '127.0.0.1', 1),
(836, 1, '127.0.0.1', 1),
(837, 1, '127.0.0.1', 1),
(838, 1, '127.0.0.1', 1),
(839, 1, '127.0.0.1', 1),
(840, 1, '127.0.0.1', 1),
(841, 1, '127.0.0.1', 1),
(842, 1, '127.0.0.1', 1),
(843, 1, '127.0.0.1', 1),
(844, 1, '127.0.0.1', 1),
(845, 1, '127.0.0.1', 1),
(846, 1, '127.0.0.1', 1),
(847, 1, '127.0.0.1', 1),
(848, 1, '127.0.0.1', 1),
(849, 1, '127.0.0.1', 1),
(850, 1, '127.0.0.1', 1),
(851, 1, '127.0.0.1', 1),
(852, 1, '127.0.0.1', 1),
(853, 1, '127.0.0.1', 1),
(854, 1, '127.0.0.1', 1),
(855, 1, '127.0.0.1', 1),
(856, 1, '127.0.0.1', 1),
(857, 1, '127.0.0.1', 1),
(858, 1, '127.0.0.1', 1),
(859, 1, '127.0.0.1', 1),
(860, 1, '127.0.0.1', 1),
(861, 1, '127.0.0.1', 1),
(862, 1, '127.0.0.1', 1),
(863, 1, '127.0.0.1', 1),
(864, 1, '127.0.0.1', 1),
(865, 1, '127.0.0.1', 1),
(866, 1, '127.0.0.1', 1),
(867, 1, '127.0.0.1', 1),
(868, 1, '127.0.0.1', 1),
(869, 1, '127.0.0.1', 1),
(870, 1, '127.0.0.1', 1),
(871, 1, '127.0.0.1', 1),
(872, 1, '127.0.0.1', 1),
(873, 1, '127.0.0.1', 1),
(874, 1, '127.0.0.1', 1),
(875, 1, '127.0.0.1', 1),
(876, 1, '127.0.0.1', 1),
(877, 1, '127.0.0.1', 1),
(878, 1, '127.0.0.1', 1),
(879, 1, '127.0.0.1', 1),
(880, 1, '127.0.0.1', 1),
(881, 1, '127.0.0.1', 1),
(882, 1, '127.0.0.1', 1),
(883, 1, '127.0.0.1', 1),
(884, 1, '127.0.0.1', 1),
(885, 1, '127.0.0.1', 1),
(886, 1, '127.0.0.1', 1),
(887, 1, '127.0.0.1', 1),
(888, 1, '127.0.0.1', 1),
(889, 1, '127.0.0.1', 1),
(890, 1, '127.0.0.1', 1),
(891, 1, '127.0.0.1', 1),
(892, 1, '127.0.0.1', 1),
(893, 1, '127.0.0.1', 1),
(894, 1, '127.0.0.1', 1),
(895, 1, '127.0.0.1', 1),
(896, 1, '127.0.0.1', 1),
(897, 1, '127.0.0.1', 1),
(898, 1, '127.0.0.1', 1),
(899, 1, '127.0.0.1', 1),
(900, 1, '127.0.0.1', 1),
(901, 1, '127.0.0.1', 1),
(902, 1, '127.0.0.1', 1),
(903, 1, '127.0.0.1', 1),
(904, 1, '127.0.0.1', 1),
(905, 1, '127.0.0.1', 1),
(906, 1, '127.0.0.1', 1),
(907, 1, '127.0.0.1', 1),
(908, 1, '127.0.0.1', 1),
(909, 1, '127.0.0.1', 1),
(910, 1, '127.0.0.1', 1),
(911, 1, '127.0.0.1', 1),
(912, 1, '127.0.0.1', 1),
(913, 1, '127.0.0.1', 1),
(914, 1, '127.0.0.1', 1),
(915, 1, '127.0.0.1', 1),
(916, 1, '127.0.0.1', 1),
(917, 1, '127.0.0.1', 1),
(918, 1, '127.0.0.1', 1),
(919, 1, '127.0.0.1', 1),
(920, 1, '127.0.0.1', 1),
(921, 1, '127.0.0.1', 1),
(922, 1, '127.0.0.1', 1),
(923, 1, '127.0.0.1', 1),
(924, 1, '127.0.0.1', 1),
(925, 1, '127.0.0.1', 1),
(926, 1, '127.0.0.1', 1),
(927, 1, '127.0.0.1', 1),
(928, 1, '127.0.0.1', 1),
(929, 1, '127.0.0.1', 1),
(930, 1, '127.0.0.1', 1),
(931, 1, '127.0.0.1', 1),
(932, 1, '127.0.0.1', 1),
(933, 1, '127.0.0.1', 1),
(934, 1, '127.0.0.1', 1),
(935, 1, '127.0.0.1', 1),
(936, 1, '127.0.0.1', 1),
(937, 1, '127.0.0.1', 1),
(938, 1, '127.0.0.1', 1),
(939, 1, '127.0.0.1', 1),
(940, 1, '127.0.0.1', 1),
(941, 1, '127.0.0.1', 1),
(942, 1, '127.0.0.1', 1),
(943, 1, '127.0.0.1', 1),
(944, 1, '127.0.0.1', 1),
(945, 1, '127.0.0.1', 1),
(946, 1, '127.0.0.1', 1),
(947, 1, '127.0.0.1', 1),
(948, 1, '127.0.0.1', 1),
(949, 1, '127.0.0.1', 1),
(950, 1, '127.0.0.1', 1),
(951, 1, '127.0.0.1', 1),
(952, 1, '127.0.0.1', 1),
(953, 1, '127.0.0.1', 1),
(954, 1, '127.0.0.1', 1),
(955, 1, '127.0.0.1', 1),
(956, 1, '127.0.0.1', 1),
(957, 1, '127.0.0.1', 1),
(958, 1, '127.0.0.1', 1),
(959, 1, '127.0.0.1', 1),
(960, 1, '127.0.0.1', 1),
(961, 1, '127.0.0.1', 1),
(962, 1, '127.0.0.1', 1),
(963, 1, '127.0.0.1', 1),
(964, 1, '127.0.0.1', 1),
(965, 1, '127.0.0.1', 1),
(966, 1, '127.0.0.1', 1),
(967, 1, '127.0.0.1', 1),
(968, 1, '127.0.0.1', 1),
(969, 1, '127.0.0.1', 1),
(970, 1, '127.0.0.1', 1),
(971, 1, '127.0.0.1', 1),
(972, 1, '127.0.0.1', 1),
(973, 1, '127.0.0.1', 1),
(974, 1, '127.0.0.1', 1),
(975, 1, '127.0.0.1', 1),
(976, 1, '127.0.0.1', 1),
(977, 1, '127.0.0.1', 1),
(978, 1, '127.0.0.1', 1),
(979, 1, '127.0.0.1', 1),
(980, 1, '127.0.0.1', 1),
(981, 1, '127.0.0.1', 1),
(982, 1, '127.0.0.1', 1),
(983, 1, '127.0.0.1', 1),
(984, 1, '127.0.0.1', 1),
(985, 1, '127.0.0.1', 1),
(986, 1, '127.0.0.1', 1),
(987, 1, '127.0.0.1', 1),
(988, 1, '127.0.0.1', 1),
(989, 1, '127.0.0.1', 1),
(990, 1, '127.0.0.1', 1),
(991, 1, '127.0.0.1', 1),
(992, 1, '127.0.0.1', 1),
(993, 1, '127.0.0.1', 1),
(994, 1, '127.0.0.1', 1),
(995, 1, '127.0.0.1', 1),
(996, 1, '127.0.0.1', 1),
(997, 1, '127.0.0.1', 1),
(998, 1, '127.0.0.1', 1),
(999, 1, '127.0.0.1', 1),
(1000, 1, '127.0.0.1', 1),
(1001, 1, '127.0.0.1', 1),
(1002, 1, '127.0.0.1', 1),
(1003, 1, '127.0.0.1', 1),
(1004, 12, '127.0.0.1', 1),
(1005, 15, '127.0.0.1', 1),
(1006, 16, '127.0.0.1', 1),
(1007, 1, '127.0.0.1', 1),
(1008, 18, '127.0.0.1', 1),
(1009, 1, '127.0.0.1', 1),
(1010, 1, '127.0.0.1', 1),
(1011, 1, '127.0.0.1', 1),
(1012, 1, '127.0.0.1', 1),
(1013, 1, '127.0.0.1', 1),
(1014, 1, '127.0.0.1', 1),
(1015, 1, '127.0.0.1', 1),
(1016, 19, '127.0.0.1', 1),
(1017, 1, '127.0.0.1', 1),
(1018, 1, '127.0.0.1', 1),
(1019, 1, '127.0.0.1', 1),
(1020, 1, '127.0.0.1', 1),
(1021, 1, '127.0.0.1', 1),
(1022, 1, '127.0.0.1', 1),
(1023, 1, '127.0.0.1', 1),
(1024, 1, '127.0.0.1', 1),
(1025, 1, '127.0.0.1', 1),
(1026, 1, '127.0.0.1', 1),
(1027, 1, '127.0.0.1', 1),
(1028, 1, '127.0.0.1', 1),
(1029, 1, '127.0.0.1', 1),
(1030, 1, '127.0.0.1', 1),
(1031, 1, '127.0.0.1', 1),
(1032, 1, '127.0.0.1', 1),
(1033, 1, '127.0.0.1', 1),
(1034, 1, '127.0.0.1', 1),
(1035, 1, '127.0.0.1', 1),
(1036, 1, '127.0.0.1', 1),
(1037, 1, '127.0.0.1', 1),
(1038, 1, '127.0.0.1', 1),
(1039, 1, '127.0.0.1', 1),
(1040, 1, '127.0.0.1', 1),
(1041, 1, '127.0.0.1', 1),
(1042, 1, '127.0.0.1', 1),
(1043, 1, '127.0.0.1', 1),
(1044, 1, '127.0.0.1', 1),
(1045, 1, '127.0.0.1', 1),
(1046, 1, '127.0.0.1', 1),
(1047, 1, '127.0.0.1', 1),
(1048, 1, '127.0.0.1', 1),
(1049, 1, '127.0.0.1', 1),
(1050, 1, '127.0.0.1', 1),
(1051, 1, '127.0.0.1', 1),
(1052, 1, '127.0.0.1', 1),
(1053, 1, '127.0.0.1', 1),
(1054, 1, '127.0.0.1', 1),
(1055, 1, '127.0.0.1', 1),
(1056, 1, '127.0.0.1', 1),
(1057, 1, '127.0.0.1', 1),
(1058, 1, '127.0.0.1', 1),
(1059, 1, '127.0.0.1', 1),
(1060, 1, '127.0.0.1', 1),
(1061, 1, '127.0.0.1', 1),
(1062, 1, '127.0.0.1', 1),
(1063, 1, '127.0.0.1', 1),
(1064, 1, '127.0.0.1', 1),
(1065, 1, '127.0.0.1', 1),
(1066, 1, '127.0.0.1', 1),
(1067, 1, '127.0.0.1', 1),
(1068, 1, '127.0.0.1', 1),
(1069, 1, '127.0.0.1', 1),
(1070, 1, '127.0.0.1', 1),
(1071, 1, '127.0.0.1', 1),
(1072, 1, '127.0.0.1', 1),
(1073, 1, '127.0.0.1', 1),
(1074, 1, '127.0.0.1', 1),
(1075, 1, '127.0.0.1', 1),
(1076, 1, '127.0.0.1', 1),
(1077, 1, '127.0.0.1', 1),
(1078, 1, '127.0.0.1', 1),
(1079, 1, '127.0.0.1', 1),
(1080, 1, '127.0.0.1', 1),
(1081, 1, '127.0.0.1', 1),
(1082, 1, '127.0.0.1', 1),
(1083, 1, '127.0.0.1', 1),
(1084, 1, '127.0.0.1', 1),
(1085, 1, '127.0.0.1', 1),
(1086, 0, '127.0.0.1', 0),
(1087, 1, '127.0.0.1', 1),
(1088, 1, '127.0.0.1', 1),
(1089, 1, '127.0.0.1', 1),
(1090, 1, '127.0.0.1', 1),
(1091, 1, '127.0.0.1', 1),
(1092, 1, '127.0.0.1', 1),
(1093, 1, '127.0.0.1', 1),
(1094, 1, '127.0.0.1', 1),
(1095, 1, '127.0.0.1', 1),
(1096, 1, '127.0.0.1', 1),
(1097, 1, '127.0.0.1', 1),
(1098, 1, '127.0.0.1', 1),
(1099, 1, '127.0.0.1', 1),
(1100, 1, '127.0.0.1', 1),
(1101, 1, '127.0.0.1', 1),
(1102, 1, '127.0.0.1', 1),
(1103, 1, '127.0.0.1', 1),
(1104, 1, '127.0.0.1', 1),
(1105, 1, '127.0.0.1', 1),
(1106, 1, '127.0.0.1', 1),
(1107, 1, '127.0.0.1', 1),
(1108, 1, '127.0.0.1', 1),
(1109, 1, '127.0.0.1', 1),
(1110, 1, '127.0.0.1', 1),
(1111, 1, '127.0.0.1', 1),
(1112, 1, '127.0.0.1', 1),
(1113, 1, '127.0.0.1', 1),
(1114, 1, '127.0.0.1', 1),
(1115, 1, '127.0.0.1', 1),
(1116, 1, '127.0.0.1', 1),
(1117, 1, '127.0.0.1', 1),
(1118, 1, '127.0.0.1', 1),
(1119, 1, '127.0.0.1', 1),
(1120, 1, '127.0.0.1', 1),
(1121, 1, '127.0.0.1', 1),
(1122, 1, '127.0.0.1', 1),
(1123, 1, '127.0.0.1', 1),
(1124, 1, '127.0.0.1', 1),
(1125, 1, '127.0.0.1', 1),
(1126, 1, '127.0.0.1', 1),
(1127, 1, '127.0.0.1', 1),
(1128, 1, '127.0.0.1', 1),
(1129, 1, '127.0.0.1', 1),
(1130, 1, '127.0.0.1', 1),
(1131, 1, '127.0.0.1', 1),
(1132, 1, '127.0.0.1', 1),
(1133, 1, '127.0.0.1', 1),
(1134, 1, '127.0.0.1', 1),
(1135, 1, '127.0.0.1', 1),
(1136, 1, '127.0.0.1', 1),
(1137, 1, '127.0.0.1', 1),
(1138, 1, '127.0.0.1', 1),
(1139, 1, '127.0.0.1', 1),
(1140, 1, '127.0.0.1', 1),
(1141, 1, '127.0.0.1', 1),
(1142, 1, '127.0.0.1', 1),
(1143, 1, '127.0.0.1', 1),
(1144, 1, '127.0.0.1', 1),
(1145, 1, '127.0.0.1', 1),
(1146, 1, '127.0.0.1', 1),
(1147, 1, '127.0.0.1', 1),
(1148, 1, '127.0.0.1', 1),
(1149, 1, '127.0.0.1', 1),
(1150, 1, '127.0.0.1', 1),
(1151, 1, '127.0.0.1', 1),
(1152, 1, '127.0.0.1', 1),
(1153, 1, '127.0.0.1', 1),
(1154, 1, '127.0.0.1', 1),
(1155, 1, '127.0.0.1', 1),
(1156, 1, '127.0.0.1', 1),
(1157, 1, '127.0.0.1', 1),
(1158, 1, '127.0.0.1', 1),
(1159, 1, '127.0.0.1', 1),
(1160, 1, '127.0.0.1', 1),
(1161, 1, '127.0.0.1', 1),
(1162, 1, '127.0.0.1', 1),
(1163, 1, '127.0.0.1', 1),
(1164, 1, '127.0.0.1', 1),
(1165, 1, '127.0.0.1', 1),
(1166, 1, '127.0.0.1', 1),
(1167, 1, '127.0.0.1', 1),
(1168, 1, '127.0.0.1', 1),
(1169, 1, '127.0.0.1', 1),
(1170, 1, '127.0.0.1', 1),
(1171, 1, '127.0.0.1', 1),
(1172, 1, '127.0.0.1', 1),
(1173, 1, '127.0.0.1', 1),
(1174, 1, '127.0.0.1', 1),
(1175, 1, '127.0.0.1', 1),
(1176, 1, '127.0.0.1', 1),
(1177, 1, '127.0.0.1', 1),
(1178, 1, '127.0.0.1', 1),
(1179, 1, '127.0.0.1', 1),
(1180, 1, '127.0.0.1', 1),
(1181, 1, '127.0.0.1', 1),
(1182, 1, '127.0.0.1', 1);

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
(2, 1, '>> You opened a beginner crate and won 8 premium points! <<', '127.0.0.1', 4),
(3, 1, '>> DanielSy opened a vehicle crate and won a Sultan (MODEL: 560)! <<', '127.0.0.1', 4),
(4, 1, 'DanielSy bought house 1 (-$10,000,000).', '127.0.0.1', 2),
(5, 1, '>> You opened a champion crate and won $9,235,806! <<', '127.0.0.1', 4),
(6, 1, '>> You opened a champion crate and won 28 free points! <<', '127.0.0.1', 4),
(7, 1, '+$33,934 from Fisherman', '127.0.0.1', 3),
(8, 1, '+$89,210 from Farmer', '127.0.0.1', 3),
(9, 1, '(!) DanielSy sold his car (NRG-500, DBID: 2) at dealership for $210,000,000.', '127.0.0.1', 2),
(10, 1, 'DanielSy [user: 1] paid 30 Diamounds to buy a Green Neon for his car [db: 1].', '127.0.0.1', 1),
(11, 1, 'DanielSy [user: 1] paid 30 Diamounds to buy a Red Neon for his car [db: 1].', '127.0.0.1', 1),
(12, 1, '>> DanielSy opened a vehicle crate and won a Turismo (MODEL: 451)! <<', '127.0.0.1', 4),
(13, 1, '+$30,768 from Fisherman', '127.0.0.1', 3),
(14, 1, '+$33,471 from Fisherman', '127.0.0.1', 3),
(15, 1, '+$35,871 from Pizza Boy', '127.0.0.1', 3),
(16, 1, '+$330,000 from Quarry Worker', '127.0.0.1', 3),
(17, 1, '+$31,248 from Fisherman', '127.0.0.1', 3),
(18, 1, '+$37,828 from Fisherman', '127.0.0.1', 3),
(19, 1, '+$37,247 from Fisherman', '127.0.0.1', 3),
(20, 1, '+$32.526 from Fisherman', '127.0.0.1', 3),
(21, 1, '+$44.363 from Fisherman', '127.0.0.1', 3),
(22, 1, '+$30.176 from Fisherman', '127.0.0.1', 3),
(23, 1, '+$37.018 from Fisherman', '127.0.0.1', 3),
(24, 1, '+$40.113 from Fisherman', '127.0.0.1', 3),
(25, 1, '+$36.651 from Fisherman', '127.0.0.1', 3),
(26, 1, '+$31.867 from Fisherman', '127.0.0.1', 3),
(27, 1, '+$36.523 from Fisherman', '127.0.0.1', 3),
(28, 1, '+$40.416 from Fisherman', '127.0.0.1', 3),
(29, 1, '+$41.281 from Fisherman', '127.0.0.1', 3),
(30, 1, '+$32.453 from Farmer', '127.0.0.1', 3),
(31, 1, '+$88.841 from Farmer', '127.0.0.1', 3),
(32, 1, 'DanielSy [user: 1] paid 150 Diamonds to buy vip for his car [db: 1].', '127.0.0.1', 1),
(33, 1, 'DanielSy [user: 1] paid 35 Diamonds to buy a Purple Neon for his car [db: 1].', '127.0.0.1', 1),
(34, 1, '(!) DanielSy sold his car (Sultan, DBID: 1) at dealership for $0.', '127.0.0.1', 2),
(35, 1, '(!) DanielSy sold his car (Sultan, DBID: 11) at dealership for $0.', '127.0.0.1', 2),
(36, 1, '(!) DanielSy sold his car (Sultan, DBID: 9) at dealership for $0.', '127.0.0.1', 2),
(37, 1, '(!) DanielSy sold his car (Sultan, DBID: 7) at dealership for $0.', '127.0.0.1', 2),
(38, 1, '+$42.556 from Fisherman', '127.0.0.1', 3),
(39, 1, '+$39.480 from Fisherman', '127.0.0.1', 3),
(40, 1, '+$33.772 from Fisherman', '127.0.0.1', 3),
(41, 1, '+$30.760 from Fisherman', '127.0.0.1', 3),
(42, 10, '>> dormeo opened a beginner crate and won a skin (Model: 70, PREMIUM)! <<', '127.0.0.1', 4),
(43, 1, '+$40.102 from Fisherman', '127.0.0.1', 3),
(44, 1, '+$45.492 from Fisherman', '127.0.0.1', 3),
(45, 1, '>> You opened a beginner crate and won 9 rob points! <<', '127.0.0.1', 4),
(46, 1, '>> You opened a albert crate and won infernus! <<', '127.0.0.1', 4),
(47, 1, 'DanielSy bought business 14 (-$10.000.000).', '127.0.0.1', 2),
(48, 1, 'DanielSy bought business 4 (-$10.000.000).', '127.0.0.1', 2),
(49, 1, '+$47.425 from Fisherman', '127.0.0.1', 3),
(50, 1, '+$43.472 from Fisherman', '127.0.0.1', 3),
(51, 1, '+$49.765 from Fisherman', '127.0.0.1', 3),
(52, 1, 'Mistery Signature: {ffffff}You won 1 Blue Diamond!', '127.0.0.1', 4),
(53, 1, 'Mistery Signature: {ffffff}You won 1 Red Diamond!', '127.0.0.1', 4),
(54, 1, 'Mistery Signature: {ffffff}You won 9 gems!', '127.0.0.1', 4),
(55, 1, 'Mistery Signature: {ffffff}You won $2.089.010!', '127.0.0.1', 4),
(56, 1, 'Mistery Signature: {ffffff}You won 1 Lauren Shampange!', '127.0.0.1', 4),
(57, 1, 'Mistery Signature: {ffffff}You won 1 beiggner crate!', '127.0.0.1', 4),
(58, 1, 'Mistery Signature: {ffffff}You won $4.790.510!', '127.0.0.1', 4),
(59, 1, 'Mistery Signature: {ffffff}You won $4.187.956!', '127.0.0.1', 4),
(60, 1, 'Mistery Signature: {ffffff}You won $1.653.325!', '127.0.0.1', 4),
(61, 1, 'Mistery Signature: {ffffff}You won 1 Lauren Shampange!', '127.0.0.1', 4),
(62, 1, 'Mistery Signature: {ffffff}You won 1 Red Diamond!', '127.0.0.1', 4),
(63, 1, 'Mistery Signature: {ffffff}You won 1 Red Diamond!', '127.0.0.1', 4),
(64, 1, 'Mistery Signature: {ffffff}You won 2 respect points!', '127.0.0.1', 4),
(65, 1, 'Mistery Signature: {ffffff}You won 36 spin points!', '127.0.0.1', 4),
(66, 1, 'Mistery Signature: {ffffff}You won 1 beiggner crate!', '127.0.0.1', 4),
(67, 1, 'Mistery Signature: {ffffff}You won 1 Lauren Shampange!', '127.0.0.1', 4),
(68, 1, 'Mistery Signature: {ffffff}You won 4 respect points!', '127.0.0.1', 4),
(69, 1, 'DanielSy [user: 1] paid 150 Diamonds to buy vip for his car [db: 19].', '127.0.0.1', 1),
(70, 1, 'Mistery Signature: {ffffff}You won 37 spin points!', '127.0.0.1', 4),
(71, 1, '+$40.704 from Fisherman', '127.0.0.1', 3),
(72, 1, '+$56.240 from Fisherman', '127.0.0.1', 3),
(73, 1, '+$251.612 from Trucker', '127.0.0.1', 3),
(74, 1, 'DanielSy bought house 1 (-$10.000.000).', '127.0.0.1', 2),
(75, 1, 'DanielSy [user: 1] paid 250 Diamonds to buy rainbow for his car [db: 5].', '127.0.0.1', 1),
(76, 1, '+$44.174 from grave-digger', '127.0.0.1', 3),
(77, 1, 'Dane bought house 1 (-$10.000.000).', '127.0.0.1', 2),
(78, 1, 'Mistery Signature: {ffffff}You won 1 Red Diamond!', '127.0.0.1', 4),
(79, 1, 'Mistery Signature: {ffffff}You won 4 respect points!', '127.0.0.1', 4),
(80, 1, 'DanielSy [user: 1] paid 250 Diamonds to buy rainbow for his car [db: 16].', '127.0.0.1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `logs_player_wars`
--

CREATE TABLE `logs_player_wars` (
  `ID` int(11) NOT NULL,
  `WarID` int(11) NOT NULL,
  `Kills` int(11) NOT NULL,
  `Deaths` int(11) NOT NULL,
  `Seconds` int(11) NOT NULL,
  `Faction` int(11) NOT NULL,
  `PlayerID` int(11) NOT NULL
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

--
-- Dumping data for table `logs_sanctions`
--

INSERT INTO `logs_sanctions` (`Player`, `Type`, `Log`, `By`) VALUES
(1, 2, 'DanielSy has been muted by DanielSy for 1 minutes, reason: re', 1),
(2, 2, '[OFFLINE] DanielSy1 has been permanent banned by DanielSy, reason: re', 1),
(5, 2, '[OFFLINE] Sobolancis has been permanent banned by DanielSy, reason: re', 1);

-- --------------------------------------------------------

--
-- Table structure for table `logs_set_all`
--

CREATE TABLE `logs_set_all` (
  `ID` int(11) NOT NULL,
  `Player` int(6) NOT NULL,
  `Log` text NOT NULL,
  `IP` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs_set_all`
--

INSERT INTO `logs_set_all` (`ID`, `Player`, `Log`, `IP`) VALUES
(1, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] red to 10.', '127.0.0.1'),
(2, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] green to 10.', '127.0.0.1'),
(3, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] blue to 10.', '127.0.0.1'),
(4, 1, 'Admin DanielSy gave 1 Red Diamond to all online players!', '127.0.0.1'),
(5, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 1.', '127.0.0.1'),
(6, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] blue to 1.', '127.0.0.1'),
(7, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] green to 100.', '127.0.0.1'),
(8, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] blue to 100.', '127.0.0.1'),
(9, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] red to 100.', '127.0.0.1'),
(10, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] hp to 10.', '127.0.0.1'),
(11, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 1.', '127.0.0.1'),
(12, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] grouprank to 7.', '127.0.0.1'),
(13, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 2.', '127.0.0.1'),
(14, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vw to 0.', '127.0.0.1'),
(15, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vw to 0.', '127.0.0.1'),
(16, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vw to 1.', '127.0.0.1'),
(17, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vw to 1.', '127.0.0.1'),
(18, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vw to 1.', '127.0.0.1'),
(19, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vw to 0.', '127.0.0.1'),
(20, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vw to 1.', '127.0.0.1'),
(21, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vw to 0.', '127.0.0.1'),
(22, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] premiumpoints to 0.', '127.0.0.1'),
(23, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] gems to 0.', '127.0.0.1'),
(24, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] premiumpoints to 300.', '127.0.0.1'),
(25, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] premiumpoints to 300.', '127.0.0.1'),
(26, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] premiumpoints to 999.', '127.0.0.1'),
(27, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] premiumpoints to 9999.', '127.0.0.1'),
(28, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vw to 0.', '127.0.0.1'),
(29, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] premium to 0.', '127.0.0.1'),
(30, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] money to 15000000.', '127.0.0.1'),
(31, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] money to 150000000.', '127.0.0.1'),
(32, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] premiumpoints to 0.', '127.0.0.1'),
(33, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 1.', '127.0.0.1'),
(34, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 0.', '127.0.0.1'),
(35, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 0.', '127.0.0.1'),
(36, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 1.', '127.0.0.1'),
(37, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 7.', '127.0.0.1'),
(38, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 8.', '127.0.0.1'),
(39, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 9.', '127.0.0.1'),
(40, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 10.', '127.0.0.1'),
(41, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vw to 0.', '127.0.0.1'),
(42, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 11.', '127.0.0.1'),
(43, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] premium to 0.', '127.0.0.1'),
(44, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] premiumpoints to 350.', '127.0.0.1'),
(45, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] money to 249999999.', '127.0.0.1'),
(46, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] premium to 0.', '127.0.0.1'),
(47, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vip to 1.', '127.0.0.1'),
(48, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vip to 0.', '127.0.0.1'),
(49, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] premiumpoints to 350.', '127.0.0.1'),
(50, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] money to 0.', '127.0.0.1'),
(51, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] money to 5000.', '127.0.0.1'),
(52, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vip to 0.', '127.0.0.1'),
(53, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] money to 250000000.', '127.0.0.1'),
(54, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] premiumpoints to 350.', '127.0.0.1'),
(55, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vip to 0.', '127.0.0.1'),
(56, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] premiumpoints to 350.', '127.0.0.1'),
(57, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vip to 0.', '127.0.0.1'),
(58, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] cratekeys to 100.', '127.0.0.1'),
(59, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 1.', '127.0.0.1'),
(60, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vw to 2004.', '127.0.0.1'),
(61, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vw to 1.', '127.0.0.1'),
(62, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vw to 1.', '127.0.0.1'),
(63, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] mistery to 2.', '127.0.0.1'),
(64, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] mistery to 2.', '127.0.0.1'),
(65, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] mistery to 2.', '127.0.0.1'),
(66, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] mistery to 2.', '127.0.0.1'),
(67, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] mistery to 2.', '127.0.0.1'),
(68, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] mistery to 2.', '127.0.0.1'),
(69, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] mistery to 2.', '127.0.0.1'),
(70, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] mistery to 2.', '127.0.0.1'),
(71, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] mistery to 2.', '127.0.0.1'),
(72, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] mistery to 2.', '127.0.0.1'),
(73, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] mistery to 2.', '127.0.0.1'),
(74, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 0.', '127.0.0.1'),
(75, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 0.', '127.0.0.1'),
(76, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 1.', '127.0.0.1'),
(77, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] grouprank to 1.', '127.0.0.1'),
(78, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 0.', '127.0.0.1'),
(79, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 1.', '127.0.0.1'),
(80, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] grouprank to 1.', '127.0.0.1'),
(81, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] mistery to 2.', '127.0.0.1'),
(82, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] mistery to 2.', '127.0.0.1'),
(83, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] premiumpoints to 0.', '127.0.0.1'),
(84, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] pp to 10.', '127.0.0.1'),
(85, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] pp to 5.', '127.0.0.1'),
(86, 1, 'Admin DanielSy [user: 1] gaved DanielSy [user: 1] pp 10 [old 15, new 25].', '127.0.0.1'),
(87, 1, 'Admin DanielSy [user: 1] gaved DanielSy [user: 1] money $\nmoney [old $! money 10, new $+\n?].', '127.0.0.1'),
(88, 1, 'Admin DanielSy [user: 1] gaved DanielSy [user: 1] money $1 [old $410.817.579, new $410.817.580].', '127.0.0.1'),
(89, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] money to 100000.', '127.0.0.1'),
(90, 1, 'Admin DanielSy [user: 1] gaved DanielSy [user: 1] money $100.000 [old $100.000, new $200.000].', '127.0.0.1'),
(91, 1, 'Admin DanielSy [user: 1] gaved DanielSy [user: 1] pp 10 [old 25, new 35].', '127.0.0.1'),
(92, 1, 'Admin DanielSy [user: 1] gaved DanielSy [user: 1] rp 100 [old 716, new 816].', '127.0.0.1'),
(93, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 1.', '127.0.0.1'),
(94, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] money to 0.', '127.0.0.1'),
(95, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] respect to 0.', '127.0.0.1'),
(96, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 8.', '127.0.0.1'),
(97, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 0.', '127.0.0.1'),
(98, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] money to 999999999.', '127.0.0.1'),
(99, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 8.', '127.0.0.1'),
(100, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] group to 0.', '127.0.0.1'),
(101, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vw to 1.', '127.0.0.1'),
(102, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vw to 2.', '127.0.0.1'),
(103, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vw to -1.', '127.0.0.1'),
(104, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vw to 0.', '127.0.0.1'),
(105, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] mistery to 2.', '127.0.0.1'),
(106, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] money to 123456.', '127.0.0.1'),
(107, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] money to 123456.', '127.0.0.1'),
(108, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] money to 5000000.', '127.0.0.1'),
(109, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] money to 5000000.', '127.0.0.1'),
(110, 1, 'Admin DanielSy [user: 1] updated DanielSy [user: 1] vip to 0.', '127.0.0.1');

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

--
-- Dumping data for table `logs_shop`
--

INSERT INTO `logs_shop` (`ID`, `Player`, `Log`, `IP`) VALUES
(1, 1, 'DanielSy (user: 1) received 100 premium points (4 euro). [payment: #1]', '188.27.129.61'),
(2, 1, 'DanielSy [user: 1] paid 70 premium points to buy \'Premium account\'.', '127.0.0.1'),
(3, 1, 'DanielSy (user: 1) received 60 premium points (2 euro). [payment: #2]', '188.27.129.61'),
(4, 1, 'DanielSy [user: 1] paid 60 premium points to buy \'Personal pet\'.', '127.0.0.1'),
(5, 1, 'DanielSy (user: 1) received 1000 premium points (47 euro). [payment: #3]', '188.27.129.61'),
(6, 1, 'DanielSy (user: 1) received 1000 premium points (47 euro). [payment: #4]', '188.27.129.61'),
(7, 1, 'DanielSy [user: 1] paid 100 premium points to buy \'Premium battlepass\'.', '127.0.0.1'),
(8, 1, 'DanielSy [user: 1] paid 55 premium points to buy \'Brzone Voucher\'.', '127.0.0.1'),
(9, 1, 'DanielSy [user: 1] paid 55 premium points to buy \'Brzone Voucher\'.', '127.0.0.1'),
(10, 1, 'DanielSy [user: 1] paid 260 premium points to buy \'Gold Voucher\'.', '127.0.0.1'),
(11, 1, 'DanielSy [user: 1] paid 110 premium points to buy \'Silver Voucher\'.', '127.0.0.1'),
(12, 1, 'DanielSy [user: 1] paid 110 premium points to buy \'Silver Voucher\'.', '127.0.0.1'),
(13, 1, 'DanielSy (user: 1) received 1000 premium points (47 euro). [payment: #5]', '188.27.129.61'),
(14, 1, 'DanielSy [user: 1] paid 260 premium points to buy \'Gold Voucher\'.', '127.0.0.1'),
(15, 1, 'DanielSy [user: 1] paid 260 premium points to buy \'Gold Voucher\'.', '127.0.0.1'),
(16, 1, 'DanielSy (user: 1) received 100 premium points (4 euro). [payment: #6]', '188.27.129.61'),
(17, 1, 'DanielSy [user: 1] paid 260 premium points to buy \'Gold Voucher\'.', '127.0.0.1'),
(18, 1, 'DanielSy [user: 1] paid 50 premium points to buy \'iPhone\'.', '127.0.0.1'),
(19, 2, 'DanielSy1 (user: 2) received 999 Diamonds (47 euro). [payment: #7]', '127.0.0.1'),
(20, 2, 'DanielSy1 [user: 2] paid 70 Diamonds to buy \'Premium account\'.', '127.0.0.1'),
(21, 2, 'DanielSy1 [user: 2] paid 50 Diamonds to buy \'iPhone\'.', '127.0.0.1'),
(22, 1, 'DanielSy [user: 1] paid 50 Diamonds to buy \'iPhone\'.', '127.0.0.1'),
(23, 1, 'DanielSy [user: 1] paid 50 Diamonds to buy \'iPhone\'.', '127.0.0.1'),
(24, 1, 'DanielSy [user: 1] paid 50 Diamonds to buy \'iPhone\'.', '127.0.0.1'),
(25, 1, 'DanielSy [user: 1] paid 50 Diamonds to buy \'iPhone\'.', '127.0.0.1'),
(26, 1, 'DanielSy [user: 1] paid 55 Diamonds to buy \'Normal Voucher\'.', '127.0.0.1'),
(27, 1, 'DanielSy (user: 1) received 999 Diamonds (47 euro). [payment: #8]', '188.27.129.61'),
(28, 1, 'DanielSy [user: 1] paid 75 Diamonds to buy \'Rare Voucher\'.', '127.0.0.1'),
(29, 1, 'DanielSy [user: 1] paid 55 Diamonds to buy \'Normal Voucher\'.', '127.0.0.1'),
(30, 1, 'DanielSy [user: 1] paid 75 Diamonds to buy \'Rare Voucher\'.', '127.0.0.1'),
(31, 1, 'DanielSy [user: 1] paid 115 Diamonds to buy \'Unique Voucher\'.', '127.0.0.1'),
(32, 1, 'DanielSy [user: 1] paid 115 Diamonds to buy \'Unique Voucher\'.', '127.0.0.1'),
(33, 1, 'DanielSy [user: 1] paid 115 Diamonds to buy \'Unique Voucher\'.', '127.0.0.1'),
(34, 1, 'DanielSy [user: 1] paid 115 Diamonds to buy \'Unique Voucher\'.', '127.0.0.1'),
(35, 1, 'DanielSy [user: 1] paid 115 Diamonds to buy \'Unique Voucher\'.', '127.0.0.1'),
(36, 1, 'DanielSy [user: 1] paid 115 Diamonds to buy \'Unique Voucher\'.', '127.0.0.1'),
(37, 1, 'DanielSy [user: 1] paid 115 Diamonds to buy \'Unique Voucher\'.', '127.0.0.1'),
(38, 1, 'DanielSy [user: 1] paid 115 Diamonds to buy \'Unique Voucher\'.', '127.0.0.1'),
(39, 1, 'DanielSy [user: 1] paid 115 Diamonds to buy \'Unique Voucher\'.', '127.0.0.1'),
(40, 1, 'DanielSy (user: 1) received 55 Diamonds (2 euro). [payment: #9]', '188.27.129.61'),
(41, 1, 'DanielSy (user: 1) received 100 Diamonds (4 euro). [payment: #10]', '188.27.129.61'),
(42, 1, 'DanielSy [user: 1] paid 55 Diamonds to buy \'Personal pet\'.', '127.0.0.1'),
(43, 1, 'DanielSy [user: 1] paid 30 Engima Points to buy \'10 Diamonds\'.', '127.0.0.1'),
(44, 1, 'DanielSy [user: 1] paid 30 Engima Points to buy \'10 Diamonds\'.', '127.0.0.1'),
(45, 1, 'DanielSy [user: 1] paid 30 Engima Points to buy \'10 Diamonds\'.', '127.0.0.1'),
(46, 1, 'DanielSy [user: 1] paid 100 Engima Points to buy \'10,000,000$\'.', '127.0.0.1'),
(47, 1, 'DanielSy [user: 1] paid 75 Engima Points to buy \'Lanson Shampange\'.', '127.0.0.1'),
(48, 1, 'DanielSy [user: 1] paid 30 Engima Points to buy \'10 Diamonds\'.', '127.0.0.1'),
(49, 1, 'DanielSy [user: 1] paid 75 Engima Points to buy \'Lanson Shampange\'.', '127.0.0.1'),
(50, 1, 'DanielSy (user: 1) received 999 Diamonds (47 euro). [payment: #11]', '188.27.129.61'),
(51, 1, 'DanielSy [user: 1] paid 300 Diamonds to buy \'Clan\'.', '127.0.0.1'),
(52, 1, 'DanielSy [user: 1] paid 300 Diamonds to buy \'Clan\'.', '127.0.0.1'),
(53, 1, 'DanielSy [user: 1] paid 30 Engima Points to buy \'10 Diamonds\'.', '127.0.0.1'),
(54, 1, 'DanielSy [user: 1] paid 75 Engima Points to buy \'Lanson Shampange\'.', '127.0.0.1'),
(55, 1, 'DanielSy [user: 1] paid 75 Engima Points to buy \'Lanson Shampange\'.', '127.0.0.1'),
(56, 1, 'DanielSy [user: 1] paid 300 Diamonds to buy \'Clan\'.', '127.0.0.1'),
(57, 1, 'DanielSy [user: 1] paid 300 Diamonds to buy \'Clan\'.', '127.0.0.1'),
(58, 1, 'DanielSy [user: 1] paid 300 Diamonds to buy \'Clan\'.', '127.0.0.1'),
(59, 1, 'DanielSy [user: 1] paid 300 Diamonds to buy \'Clan\'.', '127.0.0.1'),
(60, 1, 'DanielSy [user: 1] paid 300 Diamonds to buy \'Clan\'.', '127.0.0.1'),
(61, 1, 'DanielSy [user: 1] paid 300 Diamonds to buy \'Clan\'.', '127.0.0.1'),
(62, 1, 'DanielSy [user: 1] paid 250 Diamonds to buy \'VIP account\'.', '127.0.0.1'),
(63, 1, 'DanielSy (user: 1) received 999 Diamonds (47 euro). [payment: #12]', '188.27.129.61'),
(64, 1, 'DanielSy [user: 1] paid 110 Diamonds to buy \'Change Nickname\'.', '127.0.0.1'),
(65, 1, 'Dane [user: 1] paid 110 Diamonds to buy \'Change Nickname\'.', '127.0.0.1'),
(66, 1, 'DanielSy [user: 1] paid 110 Diamonds to buy \'Change Nickname\'.', '127.0.0.1'),
(67, 1, 'Dane [user: 1] paid 110 Diamonds to buy \'Change Nickname\'.', '127.0.0.1'),
(68, 1, 'Dane [user: 1] paid 110 Diamonds to buy \'Change Nickname\'.', '127.0.0.1'),
(69, 1, 'DanielSy [user: 1] paid 110 Diamonds to buy \'Change Nickname\'.', '127.0.0.1'),
(70, 1, 'Dane [user: 1] paid 110 Diamonds to buy \'Change Nickname\'.', '127.0.0.1'),
(71, 1, 'DanielSy [user: 1] paid 110 Diamonds to buy \'Change Nickname\'.', '127.0.0.1'),
(72, 1, 'Dane (user: 1) received 999 Diamonds (47 euro). [payment: #13]', '188.27.129.61'),
(73, 1, 'Dane [user: 1] paid 110 Diamonds to buy \'Change Nickname\'.', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `logs_spin`
--

CREATE TABLE `logs_spin` (
  `ID` int(11) NOT NULL,
  `Player` int(6) NOT NULL,
  `Log` text NOT NULL,
  `IP` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs_spin`
--

INSERT INTO `logs_spin` (`ID`, `Player`, `Log`, `IP`) VALUES
(1, 1, 'DanielSy opened a spin and get: $2,027,003, 1 diamonds [-100 spin points]', '127.0.0.1'),
(2, 1, 'DanielSy opened a spin and get: premium account [-100 spin points]', '127.0.0.1'),
(3, 1, 'DanielSy opened a spin and get: $538,147, 4 rp [-100 spin points]', '127.0.0.1'),
(4, 1, 'DanielSy opened a spin and get: $569,154, 2 diamonds [-100 spin points]', '127.0.0.1'),
(5, 1, 'DanielSy opened a spin and get: $1,626,918, 0 skin, DEFAULT [-100 spin points]', '127.0.0.1'),
(6, 1, 'DanielSy opened a spin and get: $1,420,388, 4 diamonds [-100 spin points]', '127.0.0.1'),
(7, 1, 'DanielSy opened a spin and get: $2,207,690, 1 diamonds [-100 spin points]', '127.0.0.1'),
(8, 1, 'DanielSy opened a spin and get: $184,851, 2 diamonds [-100 spin points]', '127.0.0.1'),
(9, 1, 'DanielSy opened a spin and get: $1,965,302, 4 rp [-100 spin points]', '127.0.0.1'),
(10, 1, 'DanielSy opened a spin and get: $1,358,568, 4 rp [-100 spin points]', '127.0.0.1'),
(11, 1, 'DanielSy opened a spin and get: $244,828, 1 diamonds [-100 spin points]', '127.0.0.1'),
(12, 1, 'DanielSy opened a spin and get: $1,779,840, 3 diamonds [-100 spin points]', '127.0.0.1'),
(13, 1, 'DanielSy opened a spin and get: $2,239,618, 4 rp [-100 spin points]', '127.0.0.1'),
(14, 1, 'DanielSy opened a spin and get: $2,285,211, 4 rp [-100 spin points]', '127.0.0.1'),
(15, 1, 'DanielSy opened a spin and get: $2,206,513, 4 rp [-100 spin points]', '127.0.0.1'),
(16, 1, 'DanielSy opened a spin and get: $2,330,259, 1 diamonds [-100 spin points]', '127.0.0.1'),
(17, 1, 'DanielSy opened a spin and get: $1,491,721, 4 rp [-100 spin points]', '127.0.0.1'),
(18, 1, 'DanielSy opened a spin and get: $1,584,163, 4 rp [-100 spin points]', '127.0.0.1'),
(19, 1, 'DanielSy opened a spin and get: $2,348,512, 4 rp [-100 spin points]', '127.0.0.1'),
(20, 1, 'DanielSy opened a spin and get: $860,927, 0 skin, DEFAULT [-100 spin points]', '127.0.0.1'),
(21, 1, 'DanielSy opened a spin and get: $124,014, 3 diamonds [-100 spin points]', '127.0.0.1'),
(22, 1, 'DanielSy opened a spin and get: $328,160, 4 rp [-100 spin points]', '127.0.0.1'),
(23, 1, 'DanielSy opened a spin and get: $713,390, 4 rp [-100 spin points]', '127.0.0.1'),
(24, 1, 'DanielSy opened a spin and get: $1,993,072, 4 rp [-100 spin points]', '127.0.0.1'),
(25, 1, 'DanielSy opened a spin and get: $914,904, 4 rp [-100 spin points]', '127.0.0.1'),
(26, 1, 'DanielSy opened a spin and get: $834,444, 1 diamonds [-100 spin points]', '127.0.0.1'),
(27, 1, 'DanielSy opened a spin and get: $1,805,725, 4 diamonds [-100 spin points]', '127.0.0.1'),
(28, 1, 'DanielSy opened a spin and get: $2,427,592, 1 diamonds [-100 spin points]', '127.0.0.1'),
(29, 1, 'DanielSy opened a spin and get: $1,673,763, 4 rp [-100 spin points]', '127.0.0.1'),
(30, 1, 'DanielSy opened a spin and get: $1,974,970, 4 rp [-100 spin points]', '127.0.0.1'),
(31, 1, 'DanielSy opened a spin and get: $391,531, 4 diamonds [-100 spin points]', '127.0.0.1'),
(32, 1, 'DanielSy opened a spin and get: $1,546,458, 4 rp [-100 spin points]', '127.0.0.1'),
(33, 1, 'DanielSy opened a spin and get: $1,880,737, 2 diamonds [-100 spin points]', '127.0.0.1'),
(34, 1, 'DanielSy opened a spin and get: $945,582, 4 rp [-100 spin points]', '127.0.0.1'),
(35, 1, 'DanielSy opened a spin and get: $1,036,924, 4 rp [-100 spin points]', '127.0.0.1'),
(36, 1, 'DanielSy opened a spin and get: $1,609,848, 4 diamonds [-100 spin points]', '127.0.0.1'),
(37, 1, 'DanielSy opened a spin and get: $1,312,730, 4 rp [-100 spin points]', '127.0.0.1'),
(38, 1, 'DanielSy opened a spin and get: $2,017,323, 4 diamonds [-100 spin points]', '127.0.0.1');

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

--
-- Dumping data for table `logs_staff`
--

INSERT INTO `logs_staff` (`ID`, `Type`, `Log`, `Date`) VALUES
(1, 1, 'DanielSy has been promoted to helper level 3 by DanielSy, reason: re', '2024-01-01 14:46:13'),
(2, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: re', '2024-01-01 14:46:17'),
(3, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: re', '2024-01-03 18:01:57'),
(4, 1, 'DanielSy has been promoted to admin level 7 by DanielSy, reason: re', '2024-01-03 18:06:18'),
(5, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: re', '2024-01-03 18:06:23'),
(6, 1, 'DanielSy has been promoted to admin level 7 by DanielSy, reason: re', '2024-01-04 13:29:41'),
(7, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: re', '2024-01-04 13:34:16'),
(8, 1, 'DanielSy has been promoted to admin level 10 by DanielSy, reason: re', '2024-01-04 13:39:49'),
(9, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: re', '2024-01-04 13:40:38'),
(10, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: 0', '2024-01-04 14:15:29'),
(11, 1, 'DanielSy has been promoted to admin level 7 by DanielSy, reason: re', '2024-01-04 14:20:55'),
(12, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: 0', '2024-01-04 14:21:06'),
(13, 1, 'DanielSy has been promoted to admin level 10 by DanielSy, reason: re', '2024-01-05 17:32:09'),
(14, 1, 'DanielSy has been demoted to admin level 7 by DanielSy, reason: re', '2024-01-06 11:44:11'),
(15, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: re', '2024-01-06 12:42:18'),
(16, 1, 'DanielSy1 has been promoted to admin level 9 by DanielSy1, reason: re', '2024-01-06 12:42:38'),
(17, 1, 'DanielSy1 has been demoted to admin level 7 by DanielSy, reason: re', '2024-01-06 12:44:08'),
(18, 1, 'DanielSy has been promoted to admin level 7 by DanielSy, reason: re', '2024-01-06 12:44:12'),
(19, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: 0', '2024-01-06 12:44:19'),
(20, 1, 'DanielSy has been promoted to admin level 7 by DanielSy, reason: re', '2024-01-06 12:45:05'),
(21, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: re', '2024-01-06 12:46:33'),
(22, 1, 'DanielSy has been promoted to admin level 7 by DanielSy, reason: re', '2024-01-06 12:48:43'),
(23, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: re', '2024-01-06 12:48:54'),
(24, 1, 'DanielSy1 has been promoted to admin level 10 by DanielSy, reason: re', '2024-01-06 12:52:42'),
(25, 1, 'DanielSy has been promoted to admin level 10 by DanielSy, reason: re', '2024-01-06 12:52:45'),
(26, 1, 'DanielSy has been demoted to helper level 0 by DanielSy, reason: re', '2024-01-06 12:52:48'),
(27, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: re', '2024-01-06 12:52:50'),
(28, 1, 'DanielSy has been promoted to admin level 7 by DanielSy, reason: re', '2024-01-06 13:25:55'),
(29, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: 0', '2024-01-10 19:10:25'),
(30, 1, 'DanielSy has been promoted to admin level 7 by DanielSy, reason: re', '2024-01-10 19:14:23'),
(31, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: 0', '2024-01-10 19:14:42'),
(32, 1, 'DanielSy has been promoted to admin level 9 by DanielSy, reason: re', '2024-01-12 19:19:49'),
(33, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: 0', '2024-01-13 11:27:02'),
(34, 1, 'DanielSy has been promoted to admin level 1 by DanielSy, reason: re', '2024-01-13 12:01:49'),
(35, 1, 'DanielSy has been promoted to admin level 7 by DanielSy, reason: re', '2024-01-13 12:02:35'),
(36, 1, 'DanielSy has been demoted to admin level 1 by DanielSy, reason: re', '2024-01-13 12:02:41'),
(37, 1, 'DanielSy has been promoted to admin level 9 by DanielSy, reason: re', '2024-01-13 12:05:19'),
(38, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: re', '2024-01-13 12:05:28'),
(39, 1, 'DanielSy has been promoted to admin level 8 by DanielSy, reason: re', '2024-01-13 15:35:22'),
(40, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: 0', '2024-01-13 15:35:49'),
(41, 1, 'DanielSy has been promoted to admin level 9 by DanielSy, reason: re', '2024-01-13 17:43:26'),
(42, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: 0', '2024-01-13 17:52:57'),
(43, 1, 'DanielSy has been promoted to admin level 9 by DanielSy, reason: re', '2024-01-13 18:07:42'),
(44, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: 0', '2024-01-13 18:14:03'),
(45, 1, 'DanielSy1 has been demoted to admin level 0 by DanielSy1, reason: 0', '2024-01-13 18:17:40'),
(46, 1, 'DanielSy has been promoted to admin level 9 by DanielSy, reason: 9 ', '2024-01-13 18:28:31'),
(47, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: 0', '2024-01-13 18:55:07'),
(48, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: 0', '2024-01-20 21:19:32'),
(49, 1, 'DanielSy has been promoted to admin level 7 by DanielSy, reason: re', '2024-01-20 21:22:08'),
(50, 1, 'DanielSy has been promoted to admin level 9 by DanielSy, reason: re', '2024-01-26 18:34:33'),
(51, 1, 'DanielSy has been demoted to admin level 0 by AdmBot, reason: 3AW acumulated', '2024-01-29 20:00:03'),
(52, 1, 'DanielSy has been demoted to admin level 0 by AdmBot, reason: 3AW acumulated', '2024-02-01 18:46:51'),
(53, 1, 'DanielSy has been promoted to helper level 3 by DanielSy, reason: re', '2024-02-05 18:42:58'),
(54, 1, 'DanielSy has been demoted to admin level 0 by DanielSy, reason: 0', '2024-02-05 18:43:01');

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

--
-- Dumping data for table `logs_vehicles`
--

INSERT INTO `logs_vehicles` (`ID`, `Vehicle`, `Log`, `By`, `IP`, `Date`) VALUES
(1, 1, 'has been won from crates', 1, '127.0.0.1', '2023-10-17 13:34:03'),
(2, 2, 'has been bought from DealerShip', 1, '127.0.0.1', '2024-01-01 14:59:28'),
(3, 2, 'has been sold to dealership for $210,000,000', 1, '127.0.0.1', '2024-01-01 15:01:19'),
(4, 1, 'have now a neon (Green Neon)', 1, '127.0.0.1', '2024-01-03 17:02:50'),
(5, 1, 'have now a neon (Red Neon)', 1, '127.0.0.1', '2024-01-03 17:13:00'),
(6, 3, 'has been won from crates', 1, '127.0.0.1', '2024-01-03 17:15:37'),
(7, 4, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:34:59'),
(8, 5, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:11'),
(9, 6, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:12'),
(10, 7, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:12'),
(11, 8, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:13'),
(12, 9, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:13'),
(13, 10, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:13'),
(14, 11, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:13'),
(15, 12, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:14'),
(16, 13, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:14'),
(17, 14, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:14'),
(18, 15, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:14'),
(19, 16, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:14'),
(20, 17, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:15'),
(21, 18, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:15'),
(22, 19, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:15'),
(23, 20, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:15'),
(24, 21, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:15'),
(25, 22, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:15'),
(26, 23, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:15'),
(27, 24, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:16'),
(28, 25, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:16'),
(29, 26, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:16'),
(30, 27, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:16'),
(31, 28, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:35:16'),
(32, 1, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:40:18'),
(33, 2, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:40:19'),
(34, 3, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:40:20'),
(35, 1, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:41:39'),
(36, 2, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:41:42'),
(37, 3, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:41:44'),
(38, 4, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:54:50'),
(39, 5, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:55:01'),
(40, 6, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:55:01'),
(41, 7, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:55:01'),
(42, 8, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:55:03'),
(43, 9, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:55:03'),
(44, 10, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:55:03'),
(45, 11, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:55:04'),
(46, 12, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:55:04'),
(47, 13, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 18:55:04'),
(48, 14, 'has been won from crates', 1, '127.0.0.1', '2024-01-19 19:45:59'),
(49, 15, 'has been bought from DealerShip', 1, '127.0.0.1', '2024-01-20 13:41:17'),
(50, 1, 'has been upgraded to VIP', 1, '127.0.0.1', '2024-01-26 18:34:15'),
(51, 1, 'have now a neon (Purple Neon)', 1, '127.0.0.1', '2024-01-26 18:34:41'),
(52, 16, 'has been bought from DealerShip', 1, '127.0.0.1', '2024-01-26 18:50:44'),
(53, 1, 'has been sold to dealership for $1', 1, '127.0.0.1', '2024-01-26 19:04:24'),
(54, 11, 'has been sold to dealership for $1', 1, '127.0.0.1', '2024-01-26 19:05:09'),
(55, 9, 'has been sold to dealership for $1', 1, '127.0.0.1', '2024-01-26 19:05:28'),
(56, 7, 'has been sold to dealership for $1', 1, '127.0.0.1', '2024-01-26 19:05:43'),
(57, 17, 'has been bought from DealerShip', 1, '127.0.0.1', '2024-01-29 19:25:02'),
(58, 18, 'has been bought from DealerShip', 1, '127.0.0.1', '2024-01-29 19:31:13'),
(59, 19, 'has been won from crates', 1, '127.0.0.1', '2024-02-01 19:39:09'),
(60, 19, 'has been upgraded to VIP', 1, '127.0.0.1', '2024-02-01 19:39:29'),
(61, 5, 'has been upgraded to RAINBOW', 1, '127.0.0.1', '2024-02-15 18:50:36'),
(62, 16, 'has been upgraded to RAINBOW', 1, '127.0.0.1', '2024-02-22 09:46:23');

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
  `taxes` int(11) NOT NULL,
  `EnigmaQuest` varchar(32) NOT NULL DEFAULT '0|0|0|0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `other_data`
--

INSERT INTO `other_data` (`Donations`, `Crates`, `Bitcoins`, `leftBitcoins`, `BitValue`, `budget`, `fac_salary`, `taxes`, `EnigmaQuest`) VALUES
(13, '10|9|4', 0, 30, 34171804, 0, 0, 0, '10|0|0|d');

-- --------------------------------------------------------

--
-- Table structure for table `panel_queue`
--

CREATE TABLE `panel_queue` (
  `ID` int(11) NOT NULL,
  `Username` varchar(32) NOT NULL DEFAULT '',
  `AdminName` varchar(32) NOT NULL DEFAULT '',
  `playerid` int(11) NOT NULL,
  `Type` int(11) NOT NULL,
  `Userid` int(11) NOT NULL,
  `Reason` varchar(64) NOT NULL,
  `Amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `panel_queue`
--

INSERT INTO `panel_queue` (`ID`, `Username`, `AdminName`, `playerid`, `Type`, `Userid`, `Reason`, `Amount`) VALUES
(26, 'DanielSy', 'DanielSy', 1, 6, 1, '123123', '1'),
(27, 'DanielSy', 'DanielSy', 1, 6, 1, '123', '1'),
(28, 'DanielSy', 'DanielSy', 1, 6, 1, '123123', '1');

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
  `warnsStaff` varchar(32) NOT NULL DEFAULT '0|0',
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
  `Vouchers` varchar(10) NOT NULL DEFAULT '0|0|0|0|0',
  `FireWorks` varchar(10) NOT NULL DEFAULT '0|0',
  `JobSkill` varchar(64) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0',
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
  `questSpecial` varchar(52) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
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
  `Updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Pin` int(11) NOT NULL,
  `playerUserYoutuber` int(11) NOT NULL,
  `playerUserTikTok` int(11) NOT NULL,
  `RegisterDate` int(11) NOT NULL,
  `Reclamer` int(11) NOT NULL,
  `Clan` int(11) NOT NULL,
  `ClanRank` int(11) NOT NULL,
  `ClanStats` varchar(32) NOT NULL DEFAULT '0|0',
  `SpinPoints` int(11) NOT NULL,
  `Shampange` varchar(32) NOT NULL DEFAULT '0|0|0',
  `quest_progress` int(11) NOT NULL,
  `StatusPlayer` varchar(10) NOT NULL DEFAULT 'logOFF',
  `JobOwn` int(11) NOT NULL,
  `Diamonds` varchar(32) NOT NULL DEFAULT '0|0|0',
  `EnigmaPoints` int(11) NOT NULL,
  `TicketPoints` int(11) NOT NULL,
  `VIP` int(11) NOT NULL,
  `clanDays` int(11) NOT NULL,
  `clanTag` int(11) NOT NULL,
  `Mistery` int(11) NOT NULL,
  `togPC` int(11) NOT NULL DEFAULT 1,
  `togVC` int(11) NOT NULL DEFAULT 1,
  `togWT` int(11) NOT NULL DEFAULT 1,
  `togFC` int(11) NOT NULL DEFAULT 1,
  `togHC` int(11) NOT NULL DEFAULT 1,
  `togAC` int(11) NOT NULL DEFAULT 1,
  `togLC` int(11) NOT NULL DEFAULT 1,
  `DrivingSuspend` int(11) NOT NULL,
  `JobMoney` int(11) NOT NULL,
  `Referral` int(11) NOT NULL,
  `ReferralRP` int(11) NOT NULL,
  `ReferralMoney` int(11) NOT NULL,
  `tasksCompleted` int(11) NOT NULL,
  `Skins` varchar(256) NOT NULL DEFAULT '-1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1',
  `Married` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`ID`, `Name`, `Password`, `Email`, `IP`, `GPCI`, `LGPCI`, `Admin`, `Helper`, `warnsStaff`, `Registred`, `Tutorial`, `Age`, `Gender`, `Skin`, `House`, `Rent`, `Business`, `Job`, `Level`, `Respect`, `Cash`, `Bank`, `Seconds`, `Member`, `Rank`, `Days`, `FW`, `FP`, `Color`, `Premium`, `Slots`, `PremiumPoints`, `Gems`, `Hidden`, `GiftHours`, `Spawn`, `HelpedPlayers`, `HelpedWeek`, `Drugs`, `Materials`, `Tokens`, `Rob`, `JailTime`, `WantedTime`, `WantedLevel`, `Phone`, `PhoneBook`, `PhoneCredit`, `WT`, `WTChannel`, `Gascan`, `Fuel`, `HeadValue`, `PaintKills`, `Warns`, `MP3`, `CrateKeys`, `Mute`, `FightStyle`, `Crime1`, `Crime2`, `Crime3`, `Hours`, `LastWeek`, `LastMonth`, `Licenses`, `Order`, `HUD`, `Ores`, `Raport`, `Crates`, `Vouchers`, `FireWorks`, `JobSkill`, `Pet`, `PetName`, `Tier`, `Experience`, `premiumBP`, `taskProgress`, `cratesBP`, `crateFragments`, `taskNeeded`, `playerTasks`, `freeTier`, `paidTier`, `Quest`, `QuestProgress`, `QuestCompleted`, `questSpecial`, `questTimes`, `bitMine`, `Bitcoins`, `Status`, `LastOnline`, `LastOnDays`, `completedToday`, `ActivityTime`, `GoalContribution`, `PromoCodes`, `Updated_at`, `Pin`, `playerUserYoutuber`, `playerUserTikTok`, `RegisterDate`, `Reclamer`, `Clan`, `ClanRank`, `ClanStats`, `SpinPoints`, `Shampange`, `quest_progress`, `StatusPlayer`, `JobOwn`, `Diamonds`, `EnigmaPoints`, `TicketPoints`, `VIP`, `clanDays`, `clanTag`, `Mistery`, `togPC`, `togVC`, `togWT`, `togFC`, `togHC`, `togAC`, `togLC`, `DrivingSuspend`, `JobMoney`, `Referral`, `ReferralRP`, `ReferralMoney`, `tasksCompleted`, `Skins`, `Married`) VALUES
(1, 'DanielSy', '70BB67C31F32594966075A9F74B0858A', 'lucaadv1234@gmail.com', '188.27.129.61', 'F85C8C989FEFC0A4DEA48E8FC50894D889C559E4', 'F85C8C989FEFC0A4DEA48E8FC50894D889C559E4', 9, 3, '0|0', 3, 3, 19, 1, 292, 1, 1, 4, 11, 1337, 108, 1214442712, 57179496, 170, 0, 1, 1706457787, 0, 0, 0, 1, 35, 740, 931, 0, 1, 0, 1, 1, 0, 4520, 1, 346, 0, 0, 0, 1234, 1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 6, 'Armed robbery - reporter: ????', 'Nothing', 'Nothing', 1008.97, 2.401, 1.417, '7|20|20|23', '0|0|0|0', '0|0|0|0', '0|0|0', '0|0|0', '3|1001|9', '0|0|2|1|9', '0|0', '29|29|29|31|29|29|2|0|0|0|1', '0|0|2|691|0', 'dane', 2, 79, 1, '0|0|0|0', '0|0', '209|0', '1|10|16|3', '34|29|4|25', '1|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '1|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '7|4|8', '0|0|0', '4|1|3', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 2, 1704068175, 0, 1, '2024-02-29 22:58:58', 1709240338, '0', 3600, 1943838, 0, '2024-02-29 21:04:17', 2000, 0, 0, 0, 4, 1, 7, '0 39272', 531, '6|5|5', 0, 'logON', 3, '4|0|1', 99449, 0, 0, 6, 0, 2, 0, 0, 1, 1, 0, 0, 0, 0, 302103, 0, 0, 0, 1, '292 10 10 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1', 0),
(19, 'Mos.vampiru', '70BB67C31F32594966075A9F74B0858A', 'dane@gmail.com', '127.0.0.1', 'unknown', 'unknown', 0, 0, '0|0', 3, 0, 19, 1, 170, 0, 0, 0, 0, 1, 0, 15005000, 1000, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'nothing', 'nothing', 'nothing', 0, 0, 0, '2|0|0|0', '0|0|0|0', '0|0|0|0|0', '0|0|0', '0|0|0', '1|0|0', '0|0|0|0|0', '0|0', '0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0', 'amberland.ro', 0, 0, 0, '0|0|0|0', '0|0', '0|0', '2|14|633053|13', '3|1|7|14', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', '0|0|0', '0|0|0', '0|0|0', '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 0, 0, 0, 0, '2024-02-11 12:19:46', 1707646786, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', 3248, 0, 0, '2024-02-14 22:00:00', 0, 0, 0, 0, 0, 0, 0, '0|0', 0, '0|0|0', 0, 'logOFF', 0, '0|0|0', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|', 0);

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

--
-- Dumping data for table `player_inv`
--

INSERT INTO `player_inv` (`ID`, `Player`, `Type`, `Amount`, `Slot`) VALUES
(5, 1, 7, 1, 1),
(6, 1, 8, 3, 2),
(11, 1, 2, 1, 3),
(12, 1, 1, 1, 4),
(13, 1, 0, 1, 4),
(14, 1, 6, 4, 5);

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
  `Z` float NOT NULL,
  `Faction` int(11) NOT NULL,
  `FactionVW` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `safes`
--

INSERT INTO `safes` (`ID`, `Money`, `Drugs`, `Materials`, `X`, `Y`, `Z`, `Faction`, `FactionVW`) VALUES
(1, 1000001, 50000, 50000, 254.421, 62.7021, 1003.64, 6, 1),
(2, 1000000, 0, 0, 300.452, 171.595, 1007.17, 3, 2),
(3, 1000000, 0, 0, 327.227, 307.054, 999.148, 5, 3),
(4, 1000000, 0, 0, 2227.97, -1150.44, 1025.8, 15, 4),
(5, 1000000, 0, 0, 2227.62, -1150.54, 1025.8, 15, 5),
(6, 1000000, 0, 0, 2227.95, -1150.56, 1025.8, 15, 6),
(7, 1000000, 0, 0, 1710.12, -1673.64, 20.2241, 18, 7),
(8, 1000000, 0, 0, 2177.69, 1617.2, 999.977, 1, 8),
(9, 1000000, 0, 0, 1709.5, -1672.93, 20.2244, 18, 9),
(10, 1000000, 0, 0, 362.093, 173.841, 1008.38, 3, 10),
(11, 1000000, 0, 0, 1459.59, -1803.01, 4368.88, 3, 11);

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

--
-- Dumping data for table `skins`
--

INSERT INTO `skins` (`ID`, `Player`, `Model`, `Type`, `Perks`) VALUES
(1, 1, 292, 5, '0|0|0|0');

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
  `Y` int(11) NOT NULL,
  `Z` int(11) NOT NULL,
  `R` int(11) NOT NULL,
  `Stock` int(11) NOT NULL DEFAULT 15
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`ID`, `Model`, `Group`, `Rank`, `Color1`, `Color2`, `X`, `Y`, `Z`, `R`, `Stock`) VALUES
(1, 411, 1, 1, 1, 1, 0, 0, 0, 0, 15),
(2, 522, 1, 1, -1, -1, 0, 0, 0, 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `wcode_applications`
--

CREATE TABLE `wcode_applications` (
  `id` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `FactionID` int(11) NOT NULL,
  `Answers` text NOT NULL,
  `Questions` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ActionBy` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wcode_applications`
--

INSERT INTO `wcode_applications` (`id`, `UserID`, `UserName`, `FactionID`, `Answers`, `Questions`, `Status`, `Date`, `ActionBy`) VALUES
(1, 11, 'Stresuletz12', 8, '1. Numele si varsta ta:#%::%#Marian varsta de 17 ani #%||%#2. Ofera-ne o scurta descriere despre tine. (minim 50 de cuvinte):#%::%#Sunt un baiat caterinca, calumea, serios ,matur in cazurile cerute . Imi place sa ii fac pe oamenii din jur sa rada sa se simta bine cu mine. Fac tot ce mi se cere de cei mai mari si superiori decat mine.#%||%#3. De unde ne transmiti aceasta aplicatie.#%::%#Maramures#%||%#4. Cu ce se ocupa factiunea Taxi Company?:#%::%#Aceasta factiune se ocupa cu transportul persoanelor fara transport din punctul A in punctul B.#%||%#5. Ai mai fost alta factiune inainte? Daca da spune de ce ai parasit-o:#%::%#nu#%||%#6. De ce ai ales sa aplici in aceasta factiune?#%::%#pentru ca eu am mai fost in taxi mai de mult pe alt sv si zic ca ma descurc destul de bine ca taximetrist. Plus e nevoie de membri si e placut sa te plimbi cu o masina.#%||%#7. Câte zile crezi ca vei petrece în aceasta factiune, daca vei fii acceptat?:#%::%#60+ cam asa m am gandit eu.#%||%#8. Câte ore petreci zilnic pe server, fara \'Sleep\' sau \'AFK\':#%::%#de la 5+ :D#%||%#9. Esti constient ca trebuie sa respecti conducerea factiunii si membrii cu rank mai mare?:#%::%#da#%||%#10. Te rugam sa ne precizezi discordul tau, pentru a te putea contacta:#%::%#Stresuletz12', 10, 1, '2023-12-30 19:08:58', 'George'),
(2, 186, 'dovkoc', 10, '1. Numele si varsta ta:#%::%#Ma numesc Mih?i?? ?i am 17 ani jumate#%||%#2. Ofera-ne o scurta descriere despre tine. (minim 50 de cuvinte):#%::%#Salut ma numesc Mih?i?? sunt din Hunedoara ?i iubesc pescuitul #%||%#2. De unde ne transmiti aceasta aplicatie.#%::%#Din Hunedoara #%||%#4. Cu ce se ocupa factiunea Tow Car Company?:#%::%#Cu oferirea de repair refill ?i cu tractarea ma?inilor parcate necorespunz?tor #%||%#5. Ai mai fost alta factiune inainte? Daca da spune de ce ai parasit-o:#%::%#Nu#%||%#6. De ce ai ales sa aplici in aceasta factiune?#%::%#Ma plictisesc ca civil#%||%#7. Câte zile crezi ca vei petrece în aceasta factiune, daca vei fii acceptat?:#%::%#Cat mai mult posibil #%||%#8. Câte ore petreci zilnic pe server, fara \'Sleep\' sau \'AFK\':#%::%#2 3#%||%#9. Esti constient ca trebuie sa respecti conducerea factiunii si membrii cu rank mai mare?:#%::%#Da#%||%#10. Te rugam sa ne precizezi discordul tau, pentru a te putea contacta:#%::%#Mita2006#6947', 10, 1, '2023-12-30 20:14:24', 'ImDariusHere'),
(3, 228, 'Andrey', 10, '1. Numele si varsta ta:#%::%#Andrei Popescu #%||%#2. Ofera-ne o scurta descriere despre tine. (minim 50 de cuvinte):#%::%#Îmi place fotbalul,sunt prietenos,îmi place s? m? joc pe telefon..cu capul pe umeri,capabil#%||%#2. De unde ne transmiti aceasta aplicatie.#%::%#Bacau#%||%#4. Cu ce se ocupa factiunea Tow Car Company?:#%::%#Repara ma?ini..tracteaz? masini#%||%#5. Ai mai fost alta factiune inainte? Daca da spune de ce ai parasit-o:#%::%#Nu#%||%#6. De ce ai ales sa aplici in aceasta factiune?#%::%#Pentru a repara ma?ini si sa nu ma plictisesc#%||%#7. Câte zile crezi ca vei petrece în aceasta factiune, daca vei fii acceptat?:#%::%#Zilnic#%||%#8. Câte ore petreci zilnic pe server, fara \'Sleep\' sau \'AFK\':#%::%#4-5 ore#%||%#9. Esti constient ca trebuie sa respecti conducerea factiunii si membrii cu rank mai mare?:#%::%#Da#%||%#10. Te rugam sa ne precizezi discordul tau, pentru a te putea contacta:#%::%#andrey293012', 10, 1, '2023-12-30 20:54:34', 'ImDariusHere'),
(4, 1, 'DanielSy', 1, 'dasd:asdsadasd|sdsd:asdasd|asdsadsad:sdsdsd|asdasdas:sdsd|asdasdasd:sdsdsd', 5, 2, '2023-12-31 13:51:30', 'DanielSy');

-- --------------------------------------------------------

--
-- Table structure for table `wcode_commentaries`
--

CREATE TABLE `wcode_commentaries` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `Skin` int(11) NOT NULL,
  `Text` text NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `Section` varchar(32) NOT NULL,
  `TopicID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wcode_commentaries`
--

INSERT INTO `wcode_commentaries` (`ID`, `UserID`, `UserName`, `Skin`, `Text`, `Date`, `Section`, `TopicID`) VALUES
(1, 2, 'ZeCo.F', 37, 'This complaint has been closed. Action: Mute, Time: 15, Reason: Test.', '2023-12-24 20:03:44', 'complaints', 2),
(2, 1, 'DanielSy', 37, 'This complaint has been closed. Action: Warn, Time: 1, Reason: 1323.', '2023-12-25 14:13:25', 'complaints', 2),
(3, 2, 'ZeCo.F', 37, 'This complaint has been closed. Action: Mute, Time: 1, Reason: asa.', '2023-12-26 12:16:59', 'complaints', 1),
(4, 7, 'Ionut[007]', 37, 'Jucatorul nu o sa fie sanctionat cu nimic, deoarece nu a gresit.', '2023-12-27 12:16:54', 'complaints', 2),
(5, 7, 'Ionut[007]', 37, 'Dovezile plasate de tine nu sunt suficiente, iar jucatorul nu o sa fie sanctionat, daca detii dovezi mai solide te mai asteptam cu o reclamatie impotriva lui.', '2023-12-27 12:17:02', 'complaints', 2),
(6, 7, 'Ionut[007]', 37, 'Daca doresti ajutor pentru o problema legata de server creeaza un ticket, iar un admin competent de asa ceva se va ocupa.', '2023-12-27 12:17:32', 'complaints', 1),
(7, 4, 'mos.vampiru', 37, 'Ticket aiurea. ', '2023-12-27 19:25:57', 'tickets', 1),
(8, 4, 'mos.vampiru', 37, 'Aminte?te-?i reclama f?cut? pe tiktok+ hate-ul adus comunit??ii în care ai f?cut parte ?i ai ajutat cât ai putut, poate aceste motive sunt de ajuns momentan. ', '2023-12-27 20:35:23', 'unban', 3),
(9, 11, 'Stresuletz12', 37, 'Banu r?mâne motiv blacklist +atencendente', '2023-12-27 21:53:26', 'unban', 4),
(10, 70, 'ZAQ', 37, 'https://imgur.com/a/XEie6gQ', '2023-12-28 08:44:03', 'tickets', 2),
(11, 4, 'mos.vampiru', 37, 'Rezolvat ', '2023-12-28 08:52:48', 'tickets', 2),
(12, 4, 'mos.vampiru', 217, 'E taxa la buylevel , acea taxta v-a fii schimbata din stats ', '2023-12-29 09:23:08', 'tickets', 3),
(13, 5, 'axelutz', 170, 'Ai renuntat nu ai primit remove si apoi ai venit sa facem TW-ul pana la urma. Avem o intelegere, \"BUG\"-ul inca nu s-a intamplat, ramane asa.', '2023-12-29 22:30:33', 'tickets', 4),
(18, 56, 'Ionut[007]', 217, 'Jucatorul nu o sa fie sanctionat cu nimic, deoarece nu a gresit.', '2023-12-30 09:27:37', 'complaints', 6),
(19, 56, 'Ionut[007]', 217, 'Jucatorul nu o sa fie sanctionat cu nimic, deoarece nu a gresit.', '2023-12-30 09:27:48', 'complaints', 5),
(20, 56, 'Ionut[007]', 217, 'Salut, banul ramane!', '2023-12-30 09:28:25', 'unban', 5),
(21, 56, 'Ionut[007]', 217, 'Corect! Ai unban, scuze de nepl?cere', '2023-12-30 13:10:50', 'unban', 6),
(22, 58, 'Kmwyec.', 37, 'https://imgur.com/VeyLoyu', '2023-12-30 18:25:22', 'tickets', 5),
(23, 58, 'Kmwyec.', 37, 'dovada', '2023-12-30 18:25:29', 'tickets', 5),
(24, 5, 'axelutz', 293, 'Incearca pe un modpack nou si revin-o cu un raspuns si pe langa asta da un restart la router (internet) + calculator. Imi zici daca merge.', '2023-12-30 21:04:11', 'tickets', 5),
(25, 1, 'DanielSy', 292, 'Jucatorul nu o sa fie sanctionat cu nimic, deoarece nu a gresit.', '2023-12-31 12:59:18', 'complaints', 8),
(26, 1, 'DanielSy', 292, 'asdsad', '2023-12-31 13:00:13', 'unban', 6);

-- --------------------------------------------------------

--
-- Table structure for table `wcode_complaints`
--

CREATE TABLE `wcode_complaints` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `AccusedID` int(11) NOT NULL,
  `AccusedName` varchar(32) NOT NULL,
  `Text` text NOT NULL,
  `Category` int(11) NOT NULL,
  `Faction` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ActionBy` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wcode_complaints`
--

INSERT INTO `wcode_complaints` (`ID`, `UserID`, `UserName`, `AccusedID`, `AccusedName`, `Text`, `Category`, `Faction`, `Status`, `Date`, `ActionBy`) VALUES
(8, 1, 'DanielSy', 2, 'DanielSy1', 'asdasd123', 0, 0, 1, '2023-12-31 12:59:09', 'DanielSy');

-- --------------------------------------------------------

--
-- Table structure for table `wcode_editables`
--

CREATE TABLE `wcode_editables` (
  `ID` int(11) NOT NULL,
  `Text` text NOT NULL,
  `By` varchar(32) NOT NULL,
  `Form` varchar(32) NOT NULL,
  `Updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wcode_editables`
--

INSERT INTO `wcode_editables` (`ID`, `Text`, `By`, `Form`, `Updated`) VALUES
(1, '3', 'AdmBot', 'HoursHelper', '2023-12-27 20:50:44'),
(2, '0', 'AdmBot', 'StatusHelper', '2023-12-31 13:44:00'),
(3, 'Link discord : https://discord.com/invite/FQxfCfDDy2', 'ZeCo.F', 'index', '2023-12-27 10:51:52'),
(4, '0', 'AdmBot', 'StatusContentCreator', '2023-12-18 18:26:21'),
(5, '0', 'AdmBot', 'HoursLeader', '2023-12-14 23:11:21'),
(6, '<p><br><span style=\"color: rgb(224, 62, 45);\">NORMAL SHOP</span>&nbsp;</p>\r\n<p><span style=\"color: rgb(241, 196, 15);\">Diamante:</span></p>\r\n<p>2&euro;=50 Diamante&nbsp;<br>5&euro; = 350 diamante (bonus 10%)<br>10&euro;= 750 diamante (bonus 5%)<br>20&euro;= 1.350 Diamante ( bonus 30%)</p>\r\n<p><span style=\"color: rgb(224, 62, 45);\">Oferte unban:</span></p>\r\n<p>30 days - 5&euro;<br>60 days - 10 &euro;<br>90 days - 15 &euro;<br>Permanent pe account - 20&euro;<br>Permanent pe ip - 25 &euro;</p>\r\n<p><span style=\"color: rgb(186, 55, 42);\">Special Title:</span></p>\r\n<p>1: Reclamer 4 nu necesita promovari odata achizitionat - 5&euro;</p>\r\n<p>2: Reclamer 5 nu necesita promovari odata achizitionat - 10&euro;</p>\r\n<p><span style=\"color: rgb(224, 62, 45);\">Suplimentare:</span></p>\r\n<p>Daca doriti sa cumparati ceva ce nu este specificat in ofertele de mai sus contactati detinatorul, el va ajuta in oferirea de detalii in legatura cu pretu-ul la ceea ce doriti sa cumparati pe server.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '', 'ShopHTML', '2023-12-30 11:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `wcode_functions`
--

CREATE TABLE `wcode_functions` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `Tag` varchar(64) NOT NULL,
  `Color` varchar(32) NOT NULL,
  `Icon` varchar(64) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wcode_functions`
--

INSERT INTO `wcode_functions` (`ID`, `UserID`, `UserName`, `Tag`, `Color`, `Icon`, `Date`) VALUES
(8, 5, 'axelutz', 'Co-Fondator', '#ff0000', 'fa fa-gear', '2023-12-27 11:30:55'),
(12, 2, 'ZeCo.F', 'Fondator', '#ff0000', 'fa fa-gear', '2023-12-27 11:33:24'),
(13, 2, 'ZeCo.F', 'Scripter SA:MP', '#1a1886', 'fa fa-bug', '2023-12-27 11:33:37'),
(21, 206, 'Poteras', 'Fondator principal', '#ff0000', 'fa fa-legal', '2023-12-29 22:41:04'),
(22, 206, 'Cosmin.', 'Fondator principal', '#ff0000', 'fa fa-shield', '2023-12-29 23:58:10'),
(23, 54, 'DanielSy', 'developer', '#450045', 'fa fa-code', '2023-12-30 19:23:28'),
(27, 56, 'Ionut[007]', 'Manager Helper', '#ff570f', 'fa fa-sitemap', '2023-12-30 21:00:13'),
(31, 11, 'Stresuletz12', 'Manager Leader', '#c0b535', 'fa fa-sitemap', '2023-12-30 21:02:51'),
(33, 5, 'axelutz', 'Manager Admin', '#363fc4', 'fa fa-sitemap', '2023-12-30 21:05:27'),
(36, 56, 'Ionut[007]', 'Manager Unban', '#af5141', 'fa fa-legal', '2023-12-30 21:07:09'),
(37, 9, 'Denom.Genovese', 'Manager Unban', '#af5141', 'fa fa-legal', '2023-12-30 21:07:38'),
(38, 5, 'axelutz', 'Manager Content', '#ff0059', 'fa fa-comments', '2023-12-30 21:08:51'),
(40, 9, 'Denom.Genovese', 'Manager Posting (Moderator)', '#296917', 'fa fa-shield', '2023-12-30 21:10:20'),
(43, 5, 'axelutz', 'Support Account (Tickets)', '#461b69', 'fa fa-bug', '2023-12-30 21:12:37'),
(44, 9, 'Denom.Genovese', 'Manager Event', '#d400ff', 'fa fa-star', '2023-12-30 21:14:01'),
(45, 5, 'axelutz', 'Manager Event', '#d400ff', 'fa fa-star', '2023-12-30 21:14:25'),
(46, 11, 'Stresuletz12', 'Manager Event', '#d400ff', 'fa fa-star', '2023-12-30 21:14:46'),
(48, 11, 'Stresuletz12', 'Manager Posting', '#2c6321', 'fa fa-shield', '2023-12-30 21:17:12'),
(49, 56, 'Ionut[007]', 'Manager Event', '#d400ff', 'fa fa-star', '2023-12-30 21:17:46'),
(54, 4, 'mos.vampiru', 'Fondator principal ', '#ff0000', 'fa fa-gear', '2023-12-30 21:32:29'),
(57, 1, 'DanielSy', '1234', '#ff0000', 'fa fa-code', '2024-02-17 19:36:49'),
(58, 1, 'DanielSy', 'dadsa', '#ff0000', 'fa fa-gear', '2024-02-17 19:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `wcode_logs`
--

CREATE TABLE `wcode_logs` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `Log` text NOT NULL,
  `VictimID` int(11) NOT NULL,
  `VictimName` varchar(32) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wcode_logs`
--

INSERT INTO `wcode_logs` (`ID`, `UserID`, `UserName`, `Log`, `VictimID`, `VictimName`, `Date`) VALUES
(1, 7, 'LeMoNuREPEGE', 'Admin LeMoNuREPEGE reseted FWarn field of player LeMoNuREPEGE.', 7, 'LeMoNuREPEGE', '2023-12-30 14:49:28'),
(2, 1, 'DanielSy', 'Admin DanielSy deleted log ID #4 from faction history of DanielSy.', 1, 'DanielSy', '2023-12-31 13:54:45'),
(3, 1, 'DanielSy', 'Admin DanielSy deleted log ID #2 from faction history of DanielSy.', 1, 'DanielSy', '2023-12-31 13:54:48'),
(4, 1, 'DanielSy', 'Admin DanielSy deleted log ID #5 from faction history of DanielSy.', 1, 'DanielSy', '2023-12-31 13:54:50'),
(5, 1, 'DanielSy', 'Admin DanielSy deleted log ID #3 from faction history of DanielSy.', 1, 'DanielSy', '2023-12-31 13:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `wcode_notifications`
--

CREATE TABLE `wcode_notifications` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `Notification` text NOT NULL,
  `FromID` int(11) NOT NULL,
  `FromName` varchar(32) NOT NULL,
  `Seen` int(11) NOT NULL,
  `Link` text NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wcode_notifications`
--

INSERT INTO `wcode_notifications` (`ID`, `UserID`, `UserName`, `Notification`, `FromID`, `FromName`, `Seen`, `Link`, `Date`) VALUES
(1, 3, 'DanielSy1', 'ZeCo.F made an Faction complaint against you! Check it out.', 2, 'ZeCo.F', 0, 'https://panel.gameforplay.ro/complaints', '2023-12-24 19:52:27'),
(2, 3, 'DanielSy1', 'ZeCo.F made an Faction complaint against you! Check it out.', 2, 'ZeCo.F', 0, 'https://panel.gameforplay.ro/complaints', '2023-12-24 19:52:33'),
(3, 1, 'ZeCo.F', 'DanielSy made an Faction complaint against you! Check it out.', 54, 'DanielSy', 0, 'https://panel.gameforplay.ro/complaints', '2023-12-27 19:05:07'),
(4, 1, 'ZeCo.F', 'DanielSy made an Faction complaint against you! Check it out.', 54, 'DanielSy', 0, 'https://panel.gameforplay.ro/complaints', '2023-12-27 19:05:12'),
(5, 9, 'Denom.Genovese', 'You\'ve been unbanned by mos.vampiru!', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/Denom.Genovese', '2023-12-27 19:17:32'),
(6, 9, 'Denom.Genovese', 'Your Diamonds(765) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/Denom.Genovese', '2023-12-27 19:17:49'),
(7, 44, 'seful.mariusica', 'Your Diamonds(1200) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/seful.mariusica', '2023-12-27 19:23:23'),
(8, 44, 'seful.mariusica', 'Your Diamonds(100) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/seful.mariusica', '2023-12-27 19:23:30'),
(9, 44, 'seful.mariusica', 'Your Diamonds(1000) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/seful.mariusica', '2023-12-27 19:23:37'),
(10, 44, 'seful.mariusica', 'Your money state(<font color=\"green\">$</font>200,000,000 / <font color=\"green\">$</font>754,098) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/seful.mariusica', '2023-12-27 19:23:48'),
(11, 44, 'seful.mariusica', 'Your money state(<font color=\"green\">$</font>35,000,000 / <font color=\"green\">$</font>754,098) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/seful.mariusica', '2023-12-27 19:24:10'),
(12, 54, 'DanielSy', 'New comment has been posted in your ticket!', 4, 'mos.vampiru', 1, 'https://panel.gameforplay.ro/tickets/view/1', '2023-12-27 19:25:57'),
(13, 6, 'MCRebelu', 'Your email has been changed by MCRebelu.', 6, 'MCRebelu', 1, 'https://panel.gameforplay.ro/profile/MCRebelu', '2023-12-27 20:07:20'),
(14, 6, 'MCRebelu', 'Your email has been changed by MCRebelu.', 6, 'MCRebelu', 1, 'https://panel.gameforplay.ro/profile/MCRebelu', '2023-12-27 20:07:28'),
(15, 6, 'MCRebelu', 'Your email has been changed by MCRebelu.', 6, 'MCRebelu', 1, 'https://panel.gameforplay.ro/profile/MCRebelu', '2023-12-27 20:10:19'),
(16, 6, 'MCRebelu', 'Your email has been changed by MCRebelu.', 6, 'MCRebelu', 1, 'https://panel.gameforplay.ro/profile/MCRebelu', '2023-12-27 20:10:37'),
(17, 60, 'zXk.', 'New comment has been posted in your unban request!', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/unban/view/3', '2023-12-27 20:35:23'),
(18, 65, 'xPaulFTW', 'Ai primit REMOVE de la functia de Admin 4, motiv: Promovare .', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/xPaulFTW', '2023-12-27 21:01:44'),
(19, 20, 'KsenonJr', 'New comment has been posted in your unban request!', 11, 'Stresuletz12', 1, 'https://panel.gameforplay.ro/unban/view/4', '2023-12-27 21:53:26'),
(20, 70, 'ZAQ', 'Your Diamonds(400) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/ZAQ', '2023-12-28 08:51:58'),
(21, 70, 'ZAQ', 'Your money state(<font color=\"green\">$</font>900,000,000 / <font color=\"green\">$</font>769,398) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/ZAQ', '2023-12-28 08:52:26'),
(22, 70, 'ZAQ', 'New comment has been posted in your ticket!', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/tickets/view/2', '2023-12-28 08:52:48'),
(23, 70, 'ZAQ', 'Your level state(15) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/ZAQ', '2023-12-28 08:55:59'),
(24, 70, 'ZAQ', 'Your ConnectedTime state(7.000) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/ZAQ', '2023-12-28 08:56:28'),
(25, 70, 'ZAQ', 'Your Diamonds(1604) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/ZAQ', '2023-12-28 09:16:43'),
(26, 70, 'ZAQ', 'Your Diamonds(2000) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 1, 'https://panel.gameforplay.ro/profile/ZAQ', '2023-12-28 09:17:02'),
(27, 6, 'MCRebelu', 'Your email has been changed by MCRebelu.', 6, 'MCRebelu', 1, 'https://panel.gameforplay.ro/profile/MCRebelu', '2023-12-28 20:44:51'),
(28, 6, 'MCRebelu', 'Your email has been changed by MCRebelu.', 6, 'MCRebelu', 1, 'https://panel.gameforplay.ro/profile/MCRebelu', '2023-12-28 20:44:59'),
(29, 141, 'Floryca', 'You\'ve been unbanned by mos.vampiru!', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/Floryca', '2023-12-28 20:51:57'),
(30, 5, 'axelutz', 'Ai primit REMOVE de la functia de Helper 2, motiv: Out..', 5, 'axelutz', 0, 'https://panel.gameforplay.ro/profile/axelutz', '2023-12-28 21:30:15'),
(31, 78, 'd.e.n.i.s', 'Ai primit REMOVE de la functia de Helper 2, motiv: Inactivitate..', 5, 'axelutz', 0, 'https://panel.gameforplay.ro/profile/d.e.n.i.s', '2023-12-28 21:30:26'),
(32, 56, 'Ionut[007]', 'Ai primit REMOVE de la functia de Helper 2, motiv: Out..', 5, 'axelutz', 1, 'https://panel.gameforplay.ro/profile/Ionut[007]', '2023-12-28 21:30:39'),
(33, 150, 'Alex', 'Your email has been changed by Alex.', 150, 'Alex', 0, 'https://panel.gameforplay.ro/profile/Alex', '2023-12-29 07:28:19'),
(34, 150, 'Alex', 'New comment has been posted in your ticket!', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/tickets/view/3', '2023-12-29 09:23:08'),
(35, 152, 'XAmeriicanu', 'Ai primit REMOVE de la functia de Helper 1, motiv: Inactivitate si Toxicitate.', 56, 'Ionut[007]', 0, 'https://panel.gameforplay.ro/profile/XAmeriicanu', '2023-12-29 15:37:44'),
(36, 58, 'Kmwyec.', 'Your faction application has been rejected!', 51, 'George', 1, 'https://panel.gameforplay.ro/factions/applications/view/1', '2023-12-29 20:25:56'),
(37, 58, 'Kmwyec.', 'Your faction application has been accepted!', 51, 'George', 1, 'https://panel.gameforplay.ro/factions/applications/view/2', '2023-12-29 20:41:03'),
(38, 39, 'Ionika_Minune', 'Your faction application has been accepted!', 51, 'George', 0, 'https://panel.gameforplay.ro/factions/applications/view/4', '2023-12-29 21:44:35'),
(39, 47, 'Lacrimioara', 'Your faction application has been rejected!', 51, 'George', 0, 'https://panel.gameforplay.ro/factions/applications/view/5', '2023-12-29 21:59:01'),
(40, 47, 'Lacrimioara', 'Your faction application has been accepted!', 51, 'George', 0, 'https://panel.gameforplay.ro/factions/applications/view/6', '2023-12-29 22:06:00'),
(41, 7, 'LeMoNuREPEGE', 'Your Diamonds(222) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 1, 'https://panel.gameforplay.ro/profile/LeMoNuREPEGE', '2023-12-29 22:21:52'),
(42, 8, 'JackyRPG', 'New comment has been posted in your ticket!', 5, 'axelutz', 1, 'https://panel.gameforplay.ro/tickets/view/4', '2023-12-29 22:30:33'),
(43, 206, 'Poteras', 'Your level state(10) has been updated by Admin Poteras.', 206, 'Poteras', 0, 'https://panel.gameforplay.ro/profile/Poteras', '2023-12-29 22:41:22'),
(44, 206, 'Poteras', 'Your Diamonds(100000) has been updated by Admin Poteras.', 206, 'Poteras', 0, 'https://panel.gameforplay.ro/profile/Poteras', '2023-12-29 22:44:15'),
(45, 206, 'Poteras', 'Your ConnectedTime state(0) has been updated by Admin Poteras.', 206, 'Poteras', 0, 'https://panel.gameforplay.ro/profile/Poteras', '2023-12-29 22:52:00'),
(46, 206, 'Poteras', 'Your ConnectedTime state(10) has been updated by Admin Poteras.', 206, 'Poteras', 0, 'https://panel.gameforplay.ro/profile/Poteras', '2023-12-29 22:52:11'),
(47, 196, 'Afaneia', 'Your email has been changed by Afaneia.', 196, 'Afaneia', 0, 'https://panel.gameforplay.ro/profile/Afaneia', '2023-12-30 00:55:05'),
(48, 93, 'Mos.Arafat', 'Danny.eXe made an Faction complaint against you! Check it out.', 79, 'Danny.eXe', 0, 'https://panel.gameforplay.ro/complaints', '2023-12-30 03:22:04'),
(49, 93, 'Mos.Arafat', 'Danny.eXe made an Faction complaint against you! Check it out.', 79, 'Danny.eXe', 0, 'https://panel.gameforplay.ro/complaints', '2023-12-30 03:22:06'),
(50, 93, 'Mos.Arafat', 'New comment has been posted in complaint!', 79, 'Danny.eXe', 0, 'https://panel.gameforplay.ro/complaints/view/6', '2023-12-30 03:22:24'),
(51, 93, 'Mos.Arafat', 'New comment has been posted in complaint!', 79, 'Danny.eXe', 0, 'https://panel.gameforplay.ro/complaints/view/6', '2023-12-30 03:22:24'),
(52, 93, 'Mos.Arafat', 'New comment has been posted in complaint!', 79, 'Danny.eXe', 0, 'https://panel.gameforplay.ro/complaints/view/6', '2023-12-30 03:22:24'),
(53, 93, 'Mos.Arafat', 'New comment has been posted in complaint!', 79, 'Danny.eXe', 0, 'https://panel.gameforplay.ro/complaints/view/6', '2023-12-30 03:22:32'),
(54, 153, 'TheMosh', 'Your faction application has been accepted!', 51, 'George', 0, 'https://panel.gameforplay.ro/factions/applications/view/3', '2023-12-30 07:43:19'),
(55, 79, 'Danny.eXe', 'New comment has been posted in your unban request!', 56, 'Ionut[007]', 0, 'https://panel.gameforplay.ro/unban/view/5', '2023-12-30 09:28:25'),
(56, 56, 'Ionut[007]', 'Your money state(<font color=\"green\">$</font>114,513,178 / <font color=\"green\">$</font>795,849) has been updated by Admin Ionut[007].', 56, 'Ionut[007]', 1, 'https://panel.gameforplay.ro/profile/Ionut[007]', '2023-12-30 09:36:59'),
(57, 113, 'MOS.BEZEA', 'Your faction application has been rejected!', 115, 'ImDariusHere', 1, 'https://panel.gameforplay.ro/factions/applications/view/7', '2023-12-30 12:50:28'),
(58, 113, 'MOS.BEZEA', 'Your faction application has been rejected!', 115, 'ImDariusHere', 0, 'https://panel.gameforplay.ro/factions/applications/view/8', '2023-12-30 13:04:24'),
(59, 213, 'porto_camatarul', 'New comment has been posted in your unban request!', 56, 'Ionut[007]', 1, 'https://panel.gameforplay.ro/unban/view/6', '2023-12-30 13:10:50'),
(60, 5, 'axelutz', 'Your faction application has been accepted!', 115, 'ImDariusHere', 0, 'https://panel.gameforplay.ro/factions/applications/view/9', '2023-12-30 14:09:13'),
(61, 113, 'MOS.BEZEA', 'Your faction application has been accepted!', 115, 'ImDariusHere', 0, 'https://panel.gameforplay.ro/factions/applications/view/10', '2023-12-30 14:21:53'),
(62, 7, 'LeMoNuREPEGE', 'You have no more FWarn points thanks to LeMoNuREPEGE.', 7, 'LeMoNuREPEGE', 1, 'https://panel.gameforplay.ro/profile/LeMoNuREPEGE', '2023-12-30 14:49:28'),
(63, 157, '31.bgd', 'Ai primit REMOVE de la functia de Admin 1, motiv: Inactivitate + neimplicare..', 5, 'axelutz', 0, 'https://panel.gameforplay.ro/profile/31.bgd', '2023-12-30 15:28:43'),
(64, 128, 'FLOR1AN', 'Ai primit REMOVE de la functia de Admin 1, motiv: Youtuber..', 5, 'axelutz', 0, 'https://panel.gameforplay.ro/profile/FLOR1AN', '2023-12-30 15:28:53'),
(65, 119, 'Marley', 'Your faction application has been rejected!', 115, 'ImDariusHere', 0, 'https://panel.gameforplay.ro/factions/applications/view/11', '2023-12-30 15:57:25'),
(66, 11, 'Stresuletz12', 'Your faction application has been rejected!', 115, 'ImDariusHere', 1, 'https://panel.gameforplay.ro/factions/applications/view/12', '2023-12-30 16:02:10'),
(67, 11, 'Stresuletz12', 'Your faction application has been accepted!', 51, 'George', 1, 'https://panel.gameforplay.ro/factions/applications/view/1', '2023-12-30 19:15:24'),
(68, 7, 'LeMoNuREPEGE', 'Your money state(<font color=\"green\">$</font>30,273,371 / <font color=\"green\">$</font>992,323) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/LeMoNuREPEGE', '2023-12-30 19:53:37'),
(69, 9, 'Denom.Genovese', 'Your Diamonds(150) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/Denom.Genovese', '2023-12-30 19:53:58'),
(70, 11, 'Stresuletz12', 'Your Diamonds(400) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 1, 'https://panel.gameforplay.ro/profile/Stresuletz12', '2023-12-30 19:54:18'),
(71, 19, 'Anzo_Ionut', 'Your Diamonds(150) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/Anzo_Ionut', '2023-12-30 19:54:36'),
(72, 19, 'Anzo_Ionut', 'Your money state(<font color=\"green\">$</font>15,555,028 / <font color=\"green\">$</font>750,000) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/Anzo_Ionut', '2023-12-30 19:54:44'),
(73, 51, 'George', 'Your money state(<font color=\"green\">$</font>20,798,266 / <font color=\"green\">$</font>183,840,997) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/George', '2023-12-30 19:55:24'),
(74, 51, 'George', 'Your Diamonds(350) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 1, 'https://panel.gameforplay.ro/profile/George', '2023-12-30 19:55:35'),
(75, 58, 'Kmwyec.', 'Your Diamonds(300) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/Kmwyec.', '2023-12-30 19:55:56'),
(76, 70, 'ZAQ', 'Your Diamonds(1000) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/ZAQ', '2023-12-30 19:56:31'),
(77, 92, 'Roco68.', 'Your Diamonds(200) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 1, 'https://panel.gameforplay.ro/profile/Roco68.', '2023-12-30 19:57:03'),
(78, 115, 'ImDariusHere', 'Your Diamonds(250) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/ImDariusHere', '2023-12-30 19:57:28'),
(79, 115, 'ImDariusHere', 'Your money state(<font color=\"green\">$</font>35,573,857 / <font color=\"green\">$</font>889,599) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/ImDariusHere', '2023-12-30 19:57:43'),
(80, 144, 'GeorgeStefan10.', 'Your Diamonds(450) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/GeorgeStefan10.', '2023-12-30 19:57:59'),
(81, 151, 'SebiAdv', 'Your Diamonds(300) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/SebiAdv', '2023-12-30 19:58:20'),
(82, 167, 'catalizator14', 'Your money state(<font color=\"green\">$</font>24,064,056 / <font color=\"green\">$</font>750,000) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/catalizator14', '2023-12-30 19:58:57'),
(83, 167, 'catalizator14', 'Your Diamonds(100) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/catalizator14', '2023-12-30 19:59:08'),
(84, 198, 'Kip', 'Your money state(<font color=\"green\">$</font>15,321,996 / <font color=\"green\">$</font>750,000) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/Kip', '2023-12-30 19:59:37'),
(85, 198, 'Kip', 'Your Diamonds(50) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/Kip', '2023-12-30 19:59:46'),
(86, 203, 'David.404', 'Your Diamonds(300) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/David.404', '2023-12-30 19:59:59'),
(87, 213, 'porto_camatarul', 'Your money state(<font color=\"green\">$</font>15,723,608 / <font color=\"green\">$</font>785,600) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 1, 'https://panel.gameforplay.ro/profile/porto_camatarul', '2023-12-30 20:00:27'),
(88, 228, 'Andrey', 'Your Diamonds(55) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/Andrey', '2023-12-30 20:00:49'),
(89, 229, 'b0gdi', 'Your Diamonds(55) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 1, 'https://panel.gameforplay.ro/profile/b0gdi', '2023-12-30 20:01:03'),
(90, 233, 'Iancu', 'Your money state(<font color=\"green\">$</font>3,000,000 / <font color=\"green\">$</font>754,036) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/Iancu', '2023-12-30 20:01:40'),
(91, 233, 'Iancu', 'Your money state(<font color=\"green\">$</font>30,000,000 / <font color=\"green\">$</font>754,036) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/Iancu', '2023-12-30 20:01:45'),
(92, 19, 'Anzo_Ionut', 'Your money state(<font color=\"green\">$</font>15,555,028 / <font color=\"green\">$</font>755,155) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/Anzo_Ionut', '2023-12-30 20:05:35'),
(93, 19, 'Anzo_Ionut', 'Your Diamonds(100) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/Anzo_Ionut', '2023-12-30 20:05:42'),
(94, 144, 'GeorgeStefan10.', 'Your Diamonds(400) has been updated by Admin mos.vampiru.', 4, 'mos.vampiru', 0, 'https://panel.gameforplay.ro/profile/GeorgeStefan10.', '2023-12-30 20:14:29'),
(95, 186, 'dovkoc', 'Your faction application has been accepted!', 115, 'ImDariusHere', 0, 'https://panel.gameforplay.ro/factions/applications/view/2', '2023-12-30 20:15:27'),
(96, 58, 'Kmwyec.', 'New comment has been posted in your ticket!', 5, 'axelutz', 0, 'https://panel.gameforplay.ro/tickets/view/5', '2023-12-30 21:04:11'),
(97, 228, 'Andrey', 'Your faction application has been accepted!', 115, 'ImDariusHere', 0, 'https://panel.gameforplay.ro/factions/applications/view/3', '2023-12-30 21:11:12'),
(98, 7, 'LeMoNuREPEGE', 'Ai primit REMOVE de la functia de Admin 2, motiv: Renun?are..', 5, 'axelutz', 0, 'https://panel.gameforplay.ro/profile/LeMoNuREPEGE', '2023-12-31 09:23:15'),
(99, 213, 'porto_camatarul', 'Your Diamonds(400) has been updated by Admin Cosmin..', 206, 'Cosmin.', 1, 'https://panel.gameforplay.ro/profile/porto_camatarul', '2023-12-31 10:51:56'),
(100, 2, 'DanielSy1', 'DanielSy made an Faction complaint against you! Check it out.', 1, 'DanielSy', 0, 'http://localhost/panel/complaints', '2023-12-31 12:58:30'),
(101, 2, 'DanielSy1', 'DanielSy made an Faction complaint against you! Check it out.', 1, 'DanielSy', 0, 'http://localhost/panel/complaints', '2023-12-31 12:59:09'),
(102, 213, 'porto_camatarul', 'New comment has been posted in your unban request!', 1, 'DanielSy', 0, 'http://localhost/panel/unban/view/6', '2023-12-31 13:00:13'),
(103, 1, 'DanielSy', 'Your Respect state(23) has been updated by Admin DanielSy.', 1, 'DanielSy', 1, 'http://localhost/panel/profile/DanielSy', '2023-12-31 13:41:38'),
(104, 1, 'DanielSy', 'Your faction application has been rejected!', 1, 'DanielSy', 0, 'http://localhost/panel/factions/applications/view/4', '2023-12-31 13:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `wcode_questions`
--

CREATE TABLE `wcode_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `factionid` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wcode_questions`
--

INSERT INTO `wcode_questions` (`id`, `question`, `factionid`, `date`) VALUES
(1, 'dasd', 1, '2023-12-31 13:50:38'),
(2, 'sdsd', 1, '2023-12-31 13:50:39'),
(3, 'asdsadsad', 1, '2023-12-31 13:50:40'),
(4, 'asdasdas', 1, '2023-12-31 13:50:41'),
(5, 'asdasdasd', 1, '2023-12-31 13:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `wcode_recover`
--

CREATE TABLE `wcode_recover` (
  `ID` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `username` varchar(90) NOT NULL,
  `email` text NOT NULL,
  `token` varchar(90) NOT NULL,
  `time` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wcode_recover`
--

INSERT INTO `wcode_recover` (`ID`, `user`, `username`, `email`, `token`, `time`) VALUES
(2, 39, 'Ionika_Minune', 'alexandrugaina190@gmail.com', 'hRy1Zh8pyd8lFS1DsVVi', '1703770509'),
(5, 6, 'MCRebelu', 'sebba@red-zone.ro', '4o8dZvdyYx9DJctgnUJy', '1703859278');

-- --------------------------------------------------------

--
-- Table structure for table `wcode_tickets`
--

CREATE TABLE `wcode_tickets` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `Category` varchar(64) NOT NULL,
  `Text` text NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ActionBy` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wcode_tickets`
--

INSERT INTO `wcode_tickets` (`ID`, `UserID`, `UserName`, `Category`, `Text`, `Status`, `Date`, `ActionBy`) VALUES
(1, 54, 'DanielSy', 'Donation problems', 'dasdsabdsajyvdsajtydgvsajdvsajdsa', 1, '2023-12-27 19:06:29', ''),
(2, 70, 'ZAQ', 'Account problems', 'avere', 1, '2023-12-28 08:41:26', ''),
(3, 150, 'Alex', 'Bugs', 'Salutare, cred ca am descoperit un bug pe server, mai exact dupa ce am terminat Quest-ul special cu livrarea cadourilor lui Mos Craciun, am primit banii, avusesem vreo 12kk si ceva in mana, iar dupa ce am dat [/buylevel] mi-au disparut banii si m-am trezit cu 2-3kk, cam asa ceva. M-am gandit ca poate atat a costat level-ul dar nu avea cum pentru ca level-ul urmator costa vreo 1,400$, deci...\r\nO sa las si cateva ss-uri, nu stiu daca intelegeti ceva din ele dar macar pentru ajutor, spor!\r\nhttps://imgur.com/a/EjV8EQv', 1, '2023-12-29 07:37:49', ''),
(4, 8, 'JackyRPG', 'Others', 'Am Primit Remove Doar Pentru un Motiv Extrem de aiurea. A fost explicat situa?ia iar Ownerul nu m? ascult?. Înc? o dat? zic NU AM COD! ', 1, '2023-12-29 21:31:06', ''),
(5, 58, 'Kmwyec.', 'Bugs', 'am depistat se pare un bug pe care poate doar eu il am la comanda /stats', 0, '2023-12-30 18:14:35', '');

-- --------------------------------------------------------

--
-- Table structure for table `wcode_unban`
--

CREATE TABLE `wcode_unban` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserName` varchar(32) NOT NULL,
  `BanDetails` text NOT NULL,
  `Title` varchar(32) NOT NULL,
  `Details` text NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ActionBy` varchar(32) NOT NULL DEFAULT 'Banned'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wcode_unban`
--

INSERT INTO `wcode_unban` (`ID`, `UserID`, `UserName`, `BanDetails`, `Title`, `Details`, `Status`, `Date`, `ActionBy`) VALUES
(3, 60, 'zXk.', 'Banned by: axelutz|Reason: Blacklist.|Date: 2023-12-27 21:36:56|Banned: for 999 days', 'Blacklist', 'De ce am black list?, nu am facut nimic ', 1, '2023-12-27 19:39:19', 'Banned'),
(4, 20, 'KsenonJr', 'Banned by: Mos.vampiru|Reason: Interzis.|Date: 2023-12-27 20:08:10|Banned: for 999 days', 'hmm... interzis?', 'hmm... interzis ? sa fie oare acesta un server ca oricare altul cu ban fara motiv? =]]]]]]]', 1, '2023-12-27 21:50:08', 'Banned'),
(5, 79, 'Danny.eXe', 'Banned by: Stresuletz12|Reason: Insulte staff|Date: 2023-12-28 20:20:36|Banned: for 14 days', 'Unban', 'Unu', 1, '2023-12-30 03:23:26', 'Banned'),
(6, 213, 'porto_camatarul', 'Banned by: [HPL]Ionut[007]|Reason: reclama|Date: 2023-12-30 14:55:47|Banned: for 999 days', 'greseala', 'am scris din greseala discordu vostru pe el dovada e ca am intrat pe sv cautati St3f4nRO PE DIS ', 0, '2023-12-30 12:58:26', 'Unbanned');

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
-- Indexes for table `adv`
--
ALTER TABLE `adv`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `clans`
--
ALTER TABLE `clans`
  ADD PRIMARY KEY (`clan_id`);

--
-- Indexes for table `clan_hqs`
--
ALTER TABLE `clan_hqs`
  ADD PRIMARY KEY (`hq_id`);

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
-- Indexes for table `factions_cars`
--
ALTER TABLE `factions_cars`
  ADD PRIMARY KEY (`veh_model`);

--
-- Indexes for table `frequencies`
--
ALTER TABLE `frequencies`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `giftbox`
--
ALTER TABLE `giftbox`
  ADD PRIMARY KEY (`giftCars`);

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
-- Indexes for table `kenny_applications`
--
ALTER TABLE `kenny_applications`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `kenny_questions`
--
ALTER TABLE `kenny_questions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `last7_hours`
--
ALTER TABLE `last7_hours`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `logs_chat`
--
ALTER TABLE `logs_chat`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `logs_connect`
--
ALTER TABLE `logs_connect`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `logs_disconnect`
--
ALTER TABLE `logs_disconnect`
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
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `logs_sanctions`
--
ALTER TABLE `logs_sanctions`
  ADD PRIMARY KEY (`Player`);

--
-- Indexes for table `logs_set_all`
--
ALTER TABLE `logs_set_all`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `logs_shop`
--
ALTER TABLE `logs_shop`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `logs_spin`
--
ALTER TABLE `logs_spin`
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
-- Indexes for table `panel_queue`
--
ALTER TABLE `panel_queue`
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
-- Indexes for table `wcode_applications`
--
ALTER TABLE `wcode_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wcode_commentaries`
--
ALTER TABLE `wcode_commentaries`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wcode_complaints`
--
ALTER TABLE `wcode_complaints`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wcode_editables`
--
ALTER TABLE `wcode_editables`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wcode_functions`
--
ALTER TABLE `wcode_functions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wcode_logs`
--
ALTER TABLE `wcode_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wcode_notifications`
--
ALTER TABLE `wcode_notifications`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wcode_questions`
--
ALTER TABLE `wcode_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wcode_recover`
--
ALTER TABLE `wcode_recover`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wcode_tickets`
--
ALTER TABLE `wcode_tickets`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wcode_unban`
--
ALTER TABLE `wcode_unban`
  ADD PRIMARY KEY (`ID`);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `accs_models`
--
ALTER TABLE `accs_models`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `adv`
--
ALTER TABLE `adv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `atms`
--
ALTER TABLE `atms`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `clans`
--
ALTER TABLE `clans`
  MODIFY `clan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clan_hqs`
--
ALTER TABLE `clan_hqs`
  MODIFY `hq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dealership`
--
ALTER TABLE `dealership`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `factions`
--
ALTER TABLE `factions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `factions_cars`
--
ALTER TABLE `factions_cars`
  MODIFY `veh_model` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `frequencies`
--
ALTER TABLE `frequencies`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gps`
--
ALTER TABLE `gps`
  MODIFY `gpsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `house_objects`
--
ALTER TABLE `house_objects`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kenny_applications`
--
ALTER TABLE `kenny_applications`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `kenny_questions`
--
ALTER TABLE `kenny_questions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `last7_hours`
--
ALTER TABLE `last7_hours`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs_chat`
--
ALTER TABLE `logs_chat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `logs_connect`
--
ALTER TABLE `logs_connect`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;

--
-- AUTO_INCREMENT for table `logs_disconnect`
--
ALTER TABLE `logs_disconnect`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;

--
-- AUTO_INCREMENT for table `logs_history`
--
ALTER TABLE `logs_history`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `logs_kills`
--
ALTER TABLE `logs_kills`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `logs_login`
--
ALTER TABLE `logs_login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1183;

--
-- AUTO_INCREMENT for table `logs_player`
--
ALTER TABLE `logs_player`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `logs_player_wars`
--
ALTER TABLE `logs_player_wars`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs_sanctions`
--
ALTER TABLE `logs_sanctions`
  MODIFY `Player` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logs_set_all`
--
ALTER TABLE `logs_set_all`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `logs_shop`
--
ALTER TABLE `logs_shop`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `logs_spin`
--
ALTER TABLE `logs_spin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `logs_staff`
--
ALTER TABLE `logs_staff`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `logs_vehicles`
--
ALTER TABLE `logs_vehicles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `panel_queue`
--
ALTER TABLE `panel_queue`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `player_inv`
--
ALTER TABLE `player_inv`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `safes`
--
ALTER TABLE `safes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skins`
--
ALTER TABLE `skins`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `turfs`
--
ALTER TABLE `turfs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wcode_applications`
--
ALTER TABLE `wcode_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wcode_commentaries`
--
ALTER TABLE `wcode_commentaries`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wcode_complaints`
--
ALTER TABLE `wcode_complaints`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wcode_editables`
--
ALTER TABLE `wcode_editables`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wcode_functions`
--
ALTER TABLE `wcode_functions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `wcode_logs`
--
ALTER TABLE `wcode_logs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wcode_notifications`
--
ALTER TABLE `wcode_notifications`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `wcode_questions`
--
ALTER TABLE `wcode_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wcode_recover`
--
ALTER TABLE `wcode_recover`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wcode_tickets`
--
ALTER TABLE `wcode_tickets`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wcode_unban`
--
ALTER TABLE `wcode_unban`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
