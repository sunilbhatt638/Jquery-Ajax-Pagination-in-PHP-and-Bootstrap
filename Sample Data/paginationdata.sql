-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2018 at 01:43 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paginationdata`
--
CREATE DATABASE IF NOT EXISTS `paginationdata` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `paginationdata`;

-- --------------------------------------------------------

--
-- Table structure for table `pagination`
--

CREATE TABLE `pagination` (
  `id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pagination`
--

INSERT INTO `pagination` (`id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Bahamas'),
(4, 'Bahrain'),
(5, 'Cambodia'),
(6, 'Cameroon'),
(7, 'Denmark'),
(8, 'Djibouti'),
(9, 'East Timor'),
(10, 'Ecuador'),
(11, 'Falkland Islands (Malvinas)'),
(12, 'Faroe Islands'),
(13, 'Gabon'),
(14, 'Gambia'),
(15, 'Haiti'),
(16, 'Heard and Mc Donald Islands'),
(17, 'Iceland'),
(18, 'India'),
(19, 'Jamaica'),
(20, 'Japan'),
(21, 'Kenya'),
(22, 'Kiribati'),
(23, 'Lao Peoples Democratic Republic'),
(24, 'Latvia'),
(25, 'Macau'),
(26, 'Macedonia'),
(27, 'Namibia'),
(28, 'Nauru'),
(29, 'Oman'),
(30, 'Pakistan'),
(31, 'Palau'),
(32, 'Qatar'),
(33, 'Reunion'),
(34, 'Romania'),
(35, 'Saint Kitts and Nevis'),
(36, 'Saint Lucia'),
(37, 'Taiwan'),
(38, 'Tajikistan'),
(39, 'Uganda'),
(40, 'Ukraine'),
(41, 'Vanuatu'),
(42, 'Vatican City State'),
(43, 'Wallis and Futuna Islands'),
(44, 'Western Sahara'),
(45, 'Yemen'),
(46, 'Yugoslavia'),
(47, 'Zaire'),
(48, 'Zambia'),
(49, 'Afghanistan'),
(50, 'Albania'),
(51, 'Bahamas'),
(52, 'Bahrain'),
(53, 'Cambodia'),
(54, 'Cameroon'),
(55, 'Denmark'),
(56, 'Djibouti'),
(57, 'East Timor'),
(58, 'Ecuador'),
(59, 'Falkland Islands (Malvinas)'),
(60, 'Faroe Islands'),
(61, 'Gabon'),
(62, 'Gambia'),
(63, 'Haiti'),
(64, 'Heard and Mc Donald Islands'),
(65, 'Iceland'),
(66, 'India'),
(67, 'Jamaica'),
(68, 'Japan'),
(69, 'Kenya'),
(70, 'Kiribati'),
(71, 'Lao Peoples Democratic Republic'),
(72, 'Latvia'),
(73, 'Macau'),
(74, 'Macedonia'),
(75, 'Namibia'),
(76, 'Nauru'),
(77, 'Oman'),
(78, 'Pakistan'),
(79, 'Palau'),
(80, 'Qatar'),
(81, 'Reunion'),
(82, 'Romania'),
(83, 'Saint Kitts and Nevis'),
(84, 'Saint Lucia'),
(85, 'Taiwan'),
(86, 'Tajikistan'),
(87, 'Uganda'),
(88, 'Ukraine'),
(89, 'Vanuatu'),
(90, 'Vatican City State'),
(91, 'Wallis and Futuna Islands'),
(92, 'Western Sahara'),
(93, 'Yemen'),
(94, 'Yugoslavia'),
(95, 'Zaire'),
(96, 'Zambia'),
(97, 'Afghanistan'),
(98, 'Albania'),
(99, 'Bahamas'),
(100, 'Bahrain'),
(101, 'Cambodia'),
(102, 'Cameroon'),
(103, 'Denmark'),
(104, 'Djibouti'),
(105, 'East Timor'),
(106, 'Ecuador'),
(107, 'Falkland Islands (Malvinas)'),
(108, 'Faroe Islands'),
(109, 'Gabon'),
(110, 'Gambia'),
(111, 'Haiti'),
(112, 'Heard and Mc Donald Islands'),
(113, 'Iceland'),
(114, 'India'),
(115, 'Jamaica'),
(116, 'Japan'),
(117, 'Kenya'),
(118, 'Kiribati'),
(119, 'Lao Peoples Democratic Republic'),
(120, 'Latvia'),
(121, 'Macau'),
(122, 'Macedonia'),
(123, 'Namibia'),
(124, 'Nauru'),
(125, 'Oman'),
(126, 'Pakistan'),
(127, 'Palau'),
(128, 'Qatar'),
(129, 'Reunion'),
(130, 'Romania'),
(131, 'Saint Kitts and Nevis'),
(132, 'Saint Lucia'),
(133, 'Taiwan'),
(134, 'Tajikistan'),
(135, 'Uganda'),
(136, 'Ukraine'),
(137, 'Vanuatu'),
(138, 'Vatican City State'),
(139, 'Wallis and Futuna Islands'),
(140, 'Western Sahara'),
(141, 'Yemen'),
(142, 'Yugoslavia'),
(143, 'Zaire'),
(144, 'Zambia'),
(145, 'Afghanistan'),
(146, 'Albania'),
(147, 'Bahamas'),
(148, 'Bahrain'),
(149, 'Cambodia'),
(150, 'Cameroon'),
(151, 'Denmark'),
(152, 'Djibouti'),
(153, 'East Timor'),
(154, 'Ecuador'),
(155, 'Falkland Islands (Malvinas)'),
(156, 'Faroe Islands'),
(157, 'Gabon'),
(158, 'Gambia'),
(159, 'Haiti'),
(160, 'Heard and Mc Donald Islands'),
(161, 'Iceland'),
(162, 'India'),
(163, 'Jamaica'),
(164, 'Japan'),
(165, 'Kenya'),
(166, 'Kiribati'),
(167, 'Lao Peoples Democratic Republic'),
(168, 'Latvia'),
(169, 'Macau'),
(170, 'Macedonia'),
(171, 'Namibia'),
(172, 'Nauru'),
(173, 'Oman'),
(174, 'Pakistan'),
(175, 'Palau'),
(176, 'Qatar'),
(177, 'Reunion'),
(178, 'Romania'),
(179, 'Saint Kitts and Nevis'),
(180, 'Saint Lucia'),
(181, 'Taiwan'),
(182, 'Tajikistan'),
(183, 'Uganda'),
(184, 'Ukraine'),
(185, 'Vanuatu'),
(186, 'Vatican City State'),
(187, 'Wallis and Futuna Islands'),
(188, 'Western Sahara'),
(189, 'Yemen'),
(190, 'Yugoslavia'),
(191, 'Zaire'),
(192, 'Zambia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pagination`
--
ALTER TABLE `pagination`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pagination`
--
ALTER TABLE `pagination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
