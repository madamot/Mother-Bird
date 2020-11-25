-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 26, 2019 at 01:15 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `idLocation` int(11) NOT NULL,
  `idTrackers` int(11) NOT NULL,
  `locationLatitude` float NOT NULL,
  `locationLongitude` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`idLocation`, `idTrackers`, `locationLatitude`, `locationLongitude`) VALUES
(1, 2, 51.0626, -1.33291),
(2, 2, 51.0624, -1.33284),
(3, 2, 51.0624, -1.33293),
(4, 2, 51.0623, -1.33299),
(5, 2, 51.0623, -1.33291),
(6, 2, 51.0622, -1.3328),
(7, 2, 51.0621, -1.33277),
(8, 2, 51.062, -1.33281),
(9, 2, 51.062, -1.33265),
(10, 2, 51.062, -1.33249),
(11, 2, 51.0619, -1.33244),
(12, 2, 51.0618, -1.33272),
(13, 2, 51.0617, -1.33286),
(14, 2, 51.0616, -1.33279),
(15, 2, 51.0616, -1.33272),
(16, 2, 51.0615, -1.33263),
(17, 2, 51.0613, -1.33254),
(18, 2, 51.0612, -1.33248),
(19, 2, 51.0611, -1.33245),
(20, 2, 51.061, -1.3324),
(21, 2, 51.0607, -1.33235),
(22, 2, 51.0605, -1.33227),
(23, 2, 51.0604, -1.33224),
(24, 2, 51.0603, -1.3322),
(25, 2, 51.0601, -1.33212),
(26, 2, 51.0601, -1.33206),
(27, 2, 51.06, -1.33196),
(28, 2, 51.06, -1.33183),
(29, 2, 51.0601, -1.33156),
(30, 2, 51.0602, -1.33132),
(31, 2, 51.0602, -1.33097),
(32, 2, 51.0603, -1.33066),
(33, 2, 51.0604, -1.33037),
(34, 2, 51.0603, -1.33017),
(35, 2, 51.0603, -1.32982),
(36, 2, 51.0604, -1.32951),
(37, 2, 51.0603, -1.32922),
(38, 2, 51.0604, -1.32878),
(39, 2, 51.0604, -1.32826),
(40, 2, 51.0604, -1.32781),
(41, 2, 51.0603, -1.3278),
(42, 2, 51.0602, -1.3278),
(43, 2, 51.0601, -1.3278),
(44, 2, 51.0601, -1.32779),
(45, 2, 51.0601, -1.32767),
(46, 2, 51.0601, -1.32752),
(47, 2, 51.0599, -1.32751),
(48, 2, 51.0599, -1.3275),
(49, 2, 51.0599, -1.32718),
(50, 2, 51.0599, -1.32688),
(51, 1, 51.0593, -1.32607),
(52, 1, 51.0592, -1.32604),
(53, 1, 51.0591, -1.32601),
(54, 1, 51.059, -1.32601),
(55, 1, 51.059, -1.32599),
(56, 1, 51.0589, -1.32601),
(57, 1, 51.0588, -1.32596),
(58, 1, 51.0587, -1.32572),
(59, 1, 51.0586, -1.32561),
(60, 1, 51.0586, -1.32551),
(61, 1, 51.0585, -1.32539),
(62, 1, 51.0585, -1.32528),
(63, 1, 51.0584, -1.32517),
(64, 1, 51.0584, -1.32506),
(65, 1, 51.0584, -1.32498),
(66, 4, 51.0638, -1.33155),
(67, 4, 51.0637, -1.33148),
(68, 4, 51.0636, -1.33144),
(69, 4, 51.0636, -1.33144),
(70, 4, 51.0635, -1.3314),
(71, 4, 51.0635, -1.33135),
(72, 4, 51.0634, -1.33132),
(73, 4, 51.0633, -1.33127),
(74, 4, 51.0633, -1.33121),
(75, 4, 51.0632, -1.33118),
(76, 4, 51.0631, -1.33111),
(77, 4, 51.0631, -1.33104),
(78, 4, 51.063, -1.33106),
(79, 4, 51.063, -1.33108),
(80, 4, 51.0629, -1.3311),
(81, 4, 51.0629, -1.33115),
(82, 4, 51.0629, -1.33123),
(83, 4, 51.0628, -1.33129),
(84, 4, 51.0628, -1.33136),
(85, 4, 51.0628, -1.33145),
(86, 4, 51.0627, -1.33151),
(87, 4, 51.0627, -1.33155),
(88, 4, 51.0626, -1.33153),
(89, 4, 51.0625, -1.33152),
(90, 4, 51.0625, -1.3315),
(91, 4, 51.0624, -1.33148),
(92, 4, 51.0623, -1.33146),
(93, 4, 51.0623, -1.33144),
(94, 4, 51.0622, -1.33142),
(95, 4, 51.0621, -1.3314),
(96, 4, 51.062, -1.33138),
(97, 4, 51.062, -1.3312),
(98, 4, 51.0621, -1.33088),
(99, 4, 51.0621, -1.33052),
(100, 4, 51.0622, -1.32999),
(101, 4, 51.0622, -1.32948),
(102, 4, 51.0622, -1.32918),
(103, 4, 51.0623, -1.32826),
(104, 4, 51.0624, -1.32755),
(105, 4, 51.0625, -1.32684),
(106, 4, 51.0625, -1.32623),
(107, 4, 51.0627, -1.32551),
(108, 4, 51.0628, -1.32468),
(109, 4, 51.063, -1.32381),
(110, 4, 51.0631, -1.32302),
(111, 4, 51.0634, -1.32202),
(112, 4, 51.0634, -1.32131),
(113, 4, 51.0635, -1.32073),
(114, 4, 51.0636, -1.31987),
(115, 4, 51.0636, -1.31966),
(116, 4, 51.0636, -1.31954),
(117, 4, 51.0636, -1.31938),
(118, 4, 51.0636, -1.31895),
(119, 4, 51.0635, -1.31866),
(120, 4, 51.0633, -1.31815),
(121, 4, 51.0632, -1.31774),
(122, 4, 51.0632, -1.31774),
(123, 4, 51.063, -1.3166),
(124, 4, 51.0629, -1.3164),
(125, 4, 51.0629, -1.31625),
(126, 4, 51.0629, -1.31605),
(127, 4, 51.0628, -1.31583),
(128, 4, 51.0628, -1.3156),
(129, 4, 51.0627, -1.31526),
(130, 4, 51.0627, -1.31483),
(131, 4, 51.0626, -1.31453),
(132, 4, 51.0628, -1.3144),
(133, 4, 51.063, -1.31425),
(134, 4, 51.0629, -1.31426),
(135, 4, 51.0629, -1.31383),
(136, 4, 51.0628, -1.31355),
(137, 4, 51.0628, -1.31328),
(138, 4, 51.0628, -1.3131),
(139, 4, 51.0629, -1.31302),
(140, 4, 51.0632, -1.31297);

-- --------------------------------------------------------

--
-- Table structure for table `location_tab`
--

CREATE TABLE `location_tab` (
  `locationLatitude` double NOT NULL,
  `locationLongitude` double NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location_tab`
--

INSERT INTO `location_tab` (`locationLatitude`, `locationLongitude`, `ID`) VALUES
(49.44481860385225, 7.769007850445592, 1),
(49.44466420919583, 7.769084377221548, 2),
(49.44445545789734, 7.769364248968445, 3),
(49.44399985955044, 7.769822487614834, 4),
(49.44375385069236, 7.770070256672585, 5),
(49.4436746836169, 7.770117027692282, 6),
(49.44345750850573, 7.770436964936341, 7),
(49.44296779581293, 7.770659588284577, 8),
(49.44259220273182, 7.770750196657861, 9),
(49.44221543618426, 7.770963767550672, 10);

-- --------------------------------------------------------

--
-- Table structure for table `trackers`
--

CREATE TABLE `trackers` (
  `idTrackers` int(11) NOT NULL,
  `idUsers` int(11) NOT NULL,
  `uidTracker` tinytext NOT NULL,
  `trackerType` enum('standard','plus') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trackers`
--

INSERT INTO `trackers` (`idTrackers`, `idUsers`, `uidTracker`, `trackerType`) VALUES
(1, 2, 'Son', 'standard'),
(2, 3, 'Daughter', 'standard'),
(3, 3, 'Daughter2', 'plus'),
(4, 4, 'icetracker', 'plus');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idUsers` int(11) NOT NULL,
  `uidUsers` tinytext NOT NULL,
  `emailUsers` tinytext NOT NULL,
  `pwdUsers` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idUsers`, `uidUsers`, `emailUsers`, `pwdUsers`) VALUES
(1, 'adam948a', 'adam.madamot@gmail.com', '$2y$10$Tz5.bAQaOKT5x0f55mMe0.FBq2/L8tkwGg/dgWDKS5Ca/5qeUNJBC'),
(2, 'madamot', 'adam.madamot@gmail.com', '$2y$10$GIeCimGqSH4GUOIV5mqxSezY5z3Q1TbAFr/8AkWCNyeMKOq/VtCze'),
(3, 'adamhorne', 'adam@madamot.com', '$2y$10$Y7iKA/INupKkcyNS1cvSZO0Jbm9EhyXEXxxrw1COukhNSQ2N40z9u'),
(4, 'Icesmum', 'adam@the-hornes.co.uk', '$2y$10$EFlT97mLdkNTI98lQlKS3uSmfvlFQeBfxfzrQfxpT8KkXeS06KB0u');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`idLocation`),
  ADD KEY `idTrackers` (`idTrackers`);

--
-- Indexes for table `location_tab`
--
ALTER TABLE `location_tab`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `trackers`
--
ALTER TABLE `trackers`
  ADD PRIMARY KEY (`idTrackers`),
  ADD KEY `idUsers` (`idUsers`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUsers`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `location_tab`
--
ALTER TABLE `location_tab`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `trackers`
--
ALTER TABLE `trackers`
  MODIFY `idTrackers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idUsers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`idTrackers`) REFERENCES `trackers` (`idTrackers`);

--
-- Constraints for table `trackers`
--
ALTER TABLE `trackers`
  ADD CONSTRAINT `trackers_ibfk_1` FOREIGN KEY (`idUsers`) REFERENCES `users` (`idUsers`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
