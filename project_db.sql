-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 30, 2018 at 03:47 PM
-- Server version: 10.2.14-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `american_blend_menu`
--

DROP TABLE IF EXISTS `american_blend_menu`;
CREATE TABLE IF NOT EXISTS `american_blend_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foodname` varchar(255) NOT NULL,
  `foodimage` varchar(255) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `american_blend_menu`
--

INSERT INTO `american_blend_menu` (`id`, `foodname`, `foodimage`, `price`) VALUES
(1, 'Blend Burger', '', 150),
(2, 'Lo Mein', '', 150),
(3, 'Pizza 16\"', '', 900),
(4, 'Pizza 6\"', '', 200),
(5, 'Spicy Chicken sub', '', 450);

-- --------------------------------------------------------

--
-- Table structure for table `buffet_king_menu`
--

DROP TABLE IF EXISTS `buffet_king_menu`;
CREATE TABLE IF NOT EXISTS `buffet_king_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foodname` varchar(255) NOT NULL,
  `foodimage` varchar(255) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buffet_king_menu`
--

INSERT INTO `buffet_king_menu` (`id`, `foodname`, `foodimage`, `price`) VALUES
(1, 'Chicken Masala', '', 300),
(2, 'Chicken Chili Onion', '', 350),
(3, 'Beef Chili Onion', '', 390),
(4, 'Beef Sizziling', '', 450),
(5, 'Beef Basil Leaf', '', 470);

-- --------------------------------------------------------

--
-- Table structure for table `burger_kings_menu`
--

DROP TABLE IF EXISTS `burger_kings_menu`;
CREATE TABLE IF NOT EXISTS `burger_kings_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foodname` varchar(255) NOT NULL,
  `foodimage` varchar(255) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `burger_kings_menu`
--

INSERT INTO `burger_kings_menu` (`id`, `foodname`, `foodimage`, `price`) VALUES
(1, 'Whopper', '', 350),
(2, 'Cheese burger', '', 220),
(3, 'Beef burger', '', 190),
(4, 'Cheesy Rice', '', 220),
(5, 'Chicken burger', '', 200);

-- --------------------------------------------------------

--
-- Table structure for table `burger_lab_menu`
--

DROP TABLE IF EXISTS `burger_lab_menu`;
CREATE TABLE IF NOT EXISTS `burger_lab_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foodname` varchar(255) NOT NULL,
  `foodimage` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `burger_lab_menu`
--

INSERT INTO `burger_lab_menu` (`id`, `foodname`, `foodimage`, `price`) VALUES
(1, 'Smokey BBQ Chicken', '', 160),
(2, 'Pleasant Chicken Burger', '', 240),
(3, 'Smokey Beef Cheese', '', 200),
(4, 'French fry', '', 100),
(5, 'Smokey Double Cheese Beef', '', 280);

-- --------------------------------------------------------

--
-- Table structure for table `chittagong_express_menu`
--

DROP TABLE IF EXISTS `chittagong_express_menu`;
CREATE TABLE IF NOT EXISTS `chittagong_express_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foodname` varchar(255) NOT NULL,
  `foodimage` varchar(255) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chittagong_express_menu`
--

INSERT INTO `chittagong_express_menu` (`id`, `foodname`, `foodimage`, `price`) VALUES
(1, 'Mezbani Ghost', '', 175),
(2, 'Mezbani Daal', '', 80),
(3, 'Kala Bhuna Gosht', '', 250),
(4, 'Akhni Biriyani', '', 170),
(5, 'Chicken Roast', '', 160);

-- --------------------------------------------------------

--
-- Table structure for table `nanus_food_factory_menu`
--

DROP TABLE IF EXISTS `nanus_food_factory_menu`;
CREATE TABLE IF NOT EXISTS `nanus_food_factory_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foodname` varchar(255) NOT NULL,
  `foodimage` varchar(255) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nanus_food_factory_menu`
--

INSERT INTO `nanus_food_factory_menu` (`id`, `foodname`, `foodimage`, `price`) VALUES
(1, 'Chicken Achari Khichuri', '', 220),
(2, 'Beef kalavuna Khichuri', '', 240),
(3, 'Afghani Chicken Biriyani', '', 190),
(4, 'Hydrabadi Biriyani', '', 250),
(5, 'Kacchi Biriyani', '', 150);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
