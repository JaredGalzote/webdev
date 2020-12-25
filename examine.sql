-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2020 at 02:40 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examine`
--

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0,
  `coption` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_number`, `is_correct`, `coption`) VALUES
(1, 1, 0, 'Land of Manasseh'),
(2, 1, 1, 'Land of Dan'),
(3, 1, 0, 'Land of Sid dim'),
(4, 1, 0, 'Land of Ephraim'),
(5, 2, 0, 'Because they hate each other'),
(6, 2, 0, 'Because Lot wants to live in Sodom'),
(7, 2, 1, 'Because Abrams and Lots herdsmen are fighting in the land'),
(8, 2, 0, 'None of the above'),
(9, 3, 0, 'Titans\r\n'),
(10, 3, 1, 'Giants\r\n'),
(11, 3, 0, 'Cyclops\r\n'),
(12, 3, 0, 'Golems'),
(13, 4, 0, 'True'),
(14, 4, 1, 'False'),
(15, 5, 0, '3 years each'),
(16, 5, 0, '5 years each'),
(17, 5, 0, '12 years each'),
(18, 5, 1, '7 years each'),
(19, 6, 0, 'Because they defile the daughters of Israel\r\n'),
(20, 6, 0, 'Because they curse the name of the Lord\r\n'),
(21, 6, 1, 'Because they attack the people of Israel\r\n'),
(22, 6, 0, 'Because they murmur against Moses'),
(23, 7, 0, 'Israelites whispers against him and rebellion against him\r\n'),
(24, 7, 1, 'Israelites creation of the ‘golden calf’ and worshiped it as ‘god’\r\n'),
(25, 7, 0, 'Israelites defiance against the Lord\r\n'),
(26, 7, 0, 'None of the above'),
(27, 8, 0, 'True'),
(28, 8, 1, 'False');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_number` int(11) NOT NULL,
  `question_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_number`, `question_text`) VALUES
(1, 'In what land did Abram (Abraham) fought against the four kings?'),
(2, 'Why did Abram and Lot separate in the land between Bethel and Hai?'),
(3, 'What are the children of Son of God and daughters of men called?'),
(4, 'Did Abraham sacrifices his son to the Lord by burning?'),
(5, 'Why did the Lord sworn to have war Amalek and his nation, generation to generation, to utter destruction?'),
(6, 'What made Moses anger against the people of Israel after he came down of the mountain of Sinai?'),
(7, 'How many years did the Israelite dwell in Egypt before they left to the Promised Land?'),
(8, 'Rahab, a harlot, hid the two men of Israel in the attic of her house to save them from their pursuer.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
