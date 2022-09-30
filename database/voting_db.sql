-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 29, 2022 at 05:40 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

DROP TABLE IF EXISTS `category_list`;
CREATE TABLE IF NOT EXISTS `category_list` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `category` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `category`) VALUES
(5, 'President'),
(6, 'Deputy president'),
(7, 'Secretary general'),
(8, 'Minister of finance'),
(9, 'Minister of sports'),
(10, 'Minister  of entertainment'),
(11, 'Delegate school of computing '),
(12, 'Delegate school of business'),
(13, 'Delegate school of education'),
(14, 'Delegate school of health sciences'),
(15, 'delegate school of social sciences');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1+admin , 2 = users',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', 'admin123', 1),
(8, 'amos', 'amos', 'voter', 2),
(9, 'kevo', 'kevo', 'voter', 2),
(10, 'rogs', 'rogs', 'voter', 2),
(11, 'mike', 'mike', 'voter', 2),
(12, 'john', 'john', 'voter', 2),
(13, 'voke', 'voke', 'voter', 2),
(14, 'melo', 'melo', 'voter', 2),
(15, 'eva', 'eva', 'voter', 2),
(16, 'mike', 'mike', 'voter', 2),
(17, 'eunice', 'eunice', 'voter', 2),
(19, 'lynn', 'lynn', 'voter', 2);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `voting_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `voting_opt_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voting_id`, `category_id`, `voting_opt_id`, `user_id`) VALUES
(1, 1, 1, 1, 3),
(2, 1, 3, 5, 3),
(3, 1, 4, 6, 3),
(4, 1, 4, 7, 3),
(5, 1, 4, 8, 3),
(6, 1, 4, 9, 3),
(7, 1, 1, 3, 4),
(8, 1, 3, 12, 4),
(9, 1, 4, 6, 4),
(10, 1, 4, 8, 4),
(11, 1, 4, 10, 4),
(12, 1, 4, 11, 4),
(13, 1, 1, 1, 5),
(14, 1, 3, 5, 5),
(15, 1, 4, 6, 5),
(16, 5, 5, 18, 7),
(17, 5, 6, 21, 7),
(18, 5, 7, 23, 7),
(19, 5, 8, 25, 7),
(20, 5, 9, 26, 7),
(21, 5, 10, 29, 7),
(22, 5, 5, 19, 8),
(23, 5, 6, 20, 8),
(24, 5, 7, 22, 8),
(25, 5, 8, 24, 8),
(26, 5, 9, 27, 8),
(27, 5, 10, 29, 8),
(28, 5, 5, 19, 11),
(29, 5, 6, 21, 11),
(30, 5, 7, 23, 11),
(31, 5, 8, 25, 11),
(32, 5, 9, 27, 11),
(33, 5, 10, 29, 11),
(34, 6, 11, 30, 12),
(35, 6, 11, 31, 12),
(36, 6, 11, 32, 12),
(37, 6, 11, 31, 13),
(38, 6, 11, 32, 13),
(39, 6, 11, 34, 13),
(40, 6, 11, 30, 14),
(41, 6, 11, 32, 14),
(42, 6, 11, 34, 14),
(43, 6, 11, 30, 15),
(44, 6, 11, 31, 15),
(45, 6, 11, 32, 15),
(46, 5, 5, 18, 17),
(47, 5, 6, 21, 17),
(48, 5, 7, 23, 17),
(49, 5, 8, 24, 17),
(50, 5, 9, 27, 17),
(51, 5, 10, 29, 17),
(52, 6, 11, 30, 10),
(53, 5, 5, 18, 19),
(54, 5, 6, 21, 19),
(55, 5, 7, 23, 19),
(56, 5, 8, 24, 19),
(57, 5, 9, 27, 19),
(58, 5, 10, 28, 19);

-- --------------------------------------------------------

--
-- Table structure for table `voting_cat_settings`
--

DROP TABLE IF EXISTS `voting_cat_settings`;
CREATE TABLE IF NOT EXISTS `voting_cat_settings` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `voting_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `max_selection` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voting_cat_settings`
--

INSERT INTO `voting_cat_settings` (`id`, `voting_id`, `category_id`, `max_selection`) VALUES
(1, 1, 1, 1),
(2, 1, 3, 1),
(3, 1, 4, 4),
(4, 6, 11, 2),
(5, 7, 12, 2),
(6, 8, 13, 3),
(7, 9, 14, 2);

-- --------------------------------------------------------

--
-- Table structure for table `voting_list`
--

DROP TABLE IF EXISTS `voting_list`;
CREATE TABLE IF NOT EXISTS `voting_list` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voting_list`
--

INSERT INTO `voting_list` (`id`, `title`, `description`, `is_default`) VALUES
(5, 'MOUNT KENYA UNIVERSITY ELECTION', 'FOR MKUSA ELECTIONS', 1),
(6, 'MOUNT KENYA UNIVERSITY DELEGATES ELECTION', 'SCHOOL OF COMPUTING AND INFORMATICS', 0),
(7, 'MOUNT KENYA UNIVERSITY DELEGATES ELECTION', 'SCHOOL OF BUSINESS', 0),
(8, 'MOUNT KENYA UNIVERSITY DELEGATES ELECTION', 'SCHOOL OF EDUCATION', 0),
(9, 'MOUNT KENYA UNIVERSITY DELEGATE ELECTION', 'SCHOOL OF HEALTH SCIENCES', 0);

-- --------------------------------------------------------

--
-- Table structure for table `voting_opt`
--

DROP TABLE IF EXISTS `voting_opt`;
CREATE TABLE IF NOT EXISTS `voting_opt` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `voting_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `image_path` text NOT NULL,
  `opt_txt` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voting_opt`
--

INSERT INTO `voting_opt` (`id`, `voting_id`, `category_id`, `image_path`, `opt_txt`) VALUES
(18, 5, 5, '1664366520_1664365620_IMG-20220928-WA0003.jpg', 'George'),
(19, 5, 5, '1664366520_1664365680_IMG-20220928-WA0004.jpg', 'Rogs'),
(20, 5, 6, '1664366580_1664365980_IMG-20220928-WA0022.jpg', 'Cate'),
(21, 5, 6, '1664366640_IMG-20220928-WA0002.jpg', 'Solo'),
(22, 5, 7, '1664366700_IMG-20220928-WA0013.jpg', 'Ali'),
(23, 5, 7, '1664366760_IMG-20220928-WA0012.jpg', 'John'),
(24, 5, 8, '1664366820_IMG-20220928-WA0026.jpg', 'Tom'),
(25, 5, 8, '1664366820_IMG-20220928-WA0008.jpg', 'Dave'),
(26, 5, 9, '1664366880_IMG-20220928-WA0007.jpg', 'Kimani'),
(27, 5, 9, '1664366940_IMG-20220928-WA0005.jpg', 'Raffina'),
(28, 5, 10, '1664367480_IMG-20220928-WA0016.jpg', 'Essie'),
(29, 5, 10, '1664367480_IMG-20220928-WA0011.jpg', 'Chebii'),
(30, 6, 11, '1664367540_IMG-20220928-WA0028.jpg', 'Olala'),
(31, 6, 11, '1664367600_1664366700_IMG-20220928-WA0013.jpg', 'kevo'),
(32, 6, 11, '1664367660_1664366940_IMG-20220928-WA0005.jpg', 'Adesh'),
(34, 6, 11, '1664367660_IMG-20220928-WA0027.jpg', 'Rey'),
(35, 7, 12, '1664367780_1664365680_IMG-20220928-WA0004.jpg', 'rose'),
(37, 7, 12, '1664367780_1664367660_1664366940_IMG-20220928-WA0005.jpg', 'atieno'),
(38, 7, 12, '1664367840_IMG-20220928-WA0003.jpg', 'achieng'),
(39, 8, 13, '1664367900_IMG-20220928-WA0018.jpg', 'hellen'),
(40, 8, 13, '1664367900_IMG-20220928-WA0019.jpg', 'fridah'),
(41, 8, 13, '1664367960_IMG-20220928-WA0029.jpg', 'joy'),
(42, 8, 13, '1664368020_IMG-20220928-WA0006.jpg', 'villa'),
(43, 9, 14, '1664368020_IMG-20220928-WA0023.jpg', 'Ramesh'),
(44, 9, 14, '1664368080_IMG-20220928-WA0010.jpg', 'Amhed'),
(45, 9, 14, '1664368320_IMG-20220928-WA0000.jpg', 'Odinga'),
(46, 9, 14, '1664368320_1664365680_IMG-20220928-WA0004.jpg', 'Frank');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
