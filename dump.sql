-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 17, 2013 at 05:10 AM
-- Server version: 5.5.30-log
-- PHP Version: 5.4.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `transporte`
--

-- --------------------------------------------------------

--
-- Table structure for table `datas`
--

CREATE TABLE IF NOT EXISTS `datas` (
  `data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datas`
--

INSERT INTO `datas` (`data`) VALUES
('1994-07-01 00:00:00'),
('1995-01-05 00:00:00'),
('1995-06-19 00:00:00'),
('1996-01-05 00:00:00'),
('1996-06-13 00:00:00'),
('1997-01-05 00:00:00'),
('1997-06-07 00:00:00'),
('1998-01-05 00:00:00'),
('1998-01-24 00:00:00'),
('1999-01-05 00:00:00'),
('1999-01-13 00:00:00'),
('2000-03-04 00:00:00'),
('2001-01-04 00:00:00'),
('2001-05-24 00:00:00'),
('2002-01-04 00:00:00'),
('2003-01-04 00:00:00'),
('2003-01-12 00:00:00'),
('2004-01-05 00:00:00'),
('2005-01-05 00:00:00'),
('2005-03-05 00:00:00'),
('2006-01-04 00:00:00'),
('2006-11-30 00:00:00'),
('2007-01-04 00:00:00'),
('2008-01-03 00:00:00'),
('2009-01-02 00:00:00'),
('2010-01-01 00:00:00'),
('2010-01-04 00:00:00'),
('2011-01-03 00:00:00'),
('2011-01-05 00:00:00'),
('2012-01-01 00:00:00'),
('2013-01-01 00:00:00'),
('2013-06-02 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mesano`
--

CREATE TABLE IF NOT EXISTS `mesano` (
  `ano` bigint(20) DEFAULT NULL,
  `mes` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mesano`
--

INSERT INTO `mesano` (`ano`, `mes`) VALUES
(1994, 7),
(1995, 1),
(1995, 6),
(1996, 1),
(1996, 6),
(1997, 1),
(1997, 6),
(1998, 1),
(1999, 1),
(2000, 3),
(2000, 6),
(2001, 1),
(2001, 5),
(2002, 1),
(2002, 6),
(2003, 1),
(2004, 1),
(2004, 6),
(2005, 1),
(2005, 3),
(2006, 1),
(2006, 11),
(2007, 1),
(2007, 6),
(2008, 1),
(2008, 6),
(2009, 1),
(2009, 6),
(2010, 1),
(2011, 1),
(2012, 1),
(2012, 6),
(2013, 1),
(2013, 6);

-- --------------------------------------------------------

--
-- Table structure for table `salario_minimo`
--

CREATE TABLE IF NOT EXISTS `salario_minimo` (
  `Data` datetime DEFAULT NULL,
  `Salario_Minimo_valor_corrente` double DEFAULT NULL,
  `inflacao` double DEFAULT NULL,
  `Salario_minimo_precos_2013` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salario_minimo`
--

INSERT INTO `salario_minimo` (`Data`, `Salario_Minimo_valor_corrente`, `inflacao`, `Salario_minimo_precos_2013`) VALUES
('1995-01-05 00:00:00', 100, 22.41, 122.41),
('1996-01-05 00:00:00', 112, 9.56, 122.7072),
('1997-01-05 00:00:00', 120, 5.22, 126.264),
('1998-01-05 00:00:00', 130, 1.65, 132.145),
('1999-01-05 00:00:00', 136, 8.94, 148.1584),
('2000-03-04 00:00:00', 151, 5.97, 160.0147),
('2001-01-04 00:00:00', 180, 7.67, 193.806),
('2002-01-04 00:00:00', 200, 12.53, 225.06),
('2003-01-04 00:00:00', 240, 9.3, 262.32),
('2004-01-05 00:00:00', 260, 7.6, 279.76),
('2005-01-05 00:00:00', 300, 5.69, 317.07),
('2006-01-04 00:00:00', 350, 3.14, 360.99),
('2007-01-04 00:00:00', 380, 4.46, 396.948),
('2008-01-03 00:00:00', 415, 5.9, 439.485),
('2009-01-02 00:00:00', 465, 4.31, 485.0415),
('2010-01-01 00:00:00', 510, 5.91, 540.141),
('2011-01-03 00:00:00', 545, 6.5, 580.425),
('2012-01-01 00:00:00', 622, 5.84, 658.3248),
('2013-01-01 00:00:00', 678, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `valor_onibus`
--

CREATE TABLE IF NOT EXISTS `valor_onibus` (
  `decreto` double DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `passagem` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `valor_onibus`
--

INSERT INTO `valor_onibus` (`decreto`, `data`, `passagem`) VALUES
(53.935, '2013-06-02 00:00:00', 3.2),
(52.041, '2011-01-05 00:00:00', 3),
(51.134, '2010-01-04 00:00:00', 2.7),
(47.919, '2006-11-30 00:00:00', 2.3),
(45.749, '2005-03-05 00:00:00', 2),
(42.782, '2003-01-12 00:00:00', 1.7),
(40.655, '2001-05-24 00:00:00', 1.4),
(37.788, '1999-01-13 00:00:00', 1.25),
(37.288, '1998-01-24 00:00:00', 1),
(36.895, '1997-06-07 00:00:00', 0.9),
(36.136, '1996-06-13 00:00:00', 0.8),
(35.2, '1995-06-19 00:00:00', 0.65),
(34.311, '1994-07-01 00:00:00', 0.5);

-- --------------------------------------------------------

--
-- Table structure for table `valor_transportes`
--

CREATE TABLE IF NOT EXISTS `valor_transportes` (
  `ano` bigint(20) DEFAULT NULL,
  `onibus` double DEFAULT NULL,
  `metro` double DEFAULT NULL,
  `mes` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `valor_transportes`
--

INSERT INTO `valor_transportes` (`ano`, `onibus`, `metro`, `mes`) VALUES
(1994, 0.5, 0.6, 7),
(1995, 0.65, 0.8, 6),
(1996, 0.8, 1, 6),
(1997, 0.9, 1.15, 6),
(1998, 1, 1.25, 1),
(1999, 1.25, 1.4, 1),
(2001, 1.4, 1.6, 5),
(2003, 1.7, 1.9, 1),
(2005, 2, 2.1, 3),
(2006, 2.3, 2.3, 11),
(2008, 2.3, 2.4, 6),
(2009, 2.3, 2.55, 6),
(2010, 2.7, 2.65, 1),
(2011, 3, 3, 5),
(2013, 3.2, 3.2, 6);
