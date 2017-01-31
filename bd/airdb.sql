-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 31 Sty 2017, 16:47
-- Server version: 5.6.15-log
-- PHP Version: 5.5.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `airdb`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `loty`
--

CREATE TABLE IF NOT EXISTS `loty` (
  `ID` int(3) NOT NULL AUTO_INCREMENT,
  `AIRLINE` varchar(25) NOT NULL,
  `START_AIRPORT` varchar(25) NOT NULL,
  `START_TIME` varchar(25) NOT NULL,
  `END_AIRPORT` varchar(25) NOT NULL,
  `END_TIME` varchar(25) NOT NULL,
  `PRICE` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Zrzut danych tabeli `loty`
--

INSERT INTO `loty` (`ID`, `AIRLINE`, `START_AIRPORT`, `START_TIME`, `END_AIRPORT`, `END_TIME`, `PRICE`) VALUES
(1, 'DELTA', 'JFK', '9.35AM', 'LHR', '1.35PM', 1200),
(2, 'LOT', 'JFK', '11.35AM', 'LHR', '3.35PM', 1450),
(3, 'CONTINENTAL', 'JFK', '12.35PM', 'LHR', '7.35PM', 1300),
(4, 'WIZZAIR', 'SFO', '9.35AM', 'LHR', '1.35PM', 1110),
(5, 'US AIR', 'SFO', '11.35AM', 'LHR', '3.35PM', 1220),
(6, 'CONTINENTAL', 'SFO', '12.35PM', 'LHR', '7.35PM', 1330),
(7, 'WIZZAIR', 'JFK', '9.35AM', 'CDG', '1.35PM', 1200),
(8, 'US AIR', 'JFK', '11.35AM', 'CDG', '3.35PM', 1450),
(9, 'CONTINENTAL', 'JFK', '12.35PM', 'CDG', '7.35PM', 1300),
(10, 'DELTA', 'SFO', '9.35AM', 'CDG', '1.35PM', 1110),
(11, 'US AIR', 'SFO', '11.35AM', 'CDG', '3.35PM', 1220),
(12, 'CONTINENTAL', 'SFO', '12.35PM', 'CDG', '7.35PM', 1330),
(13, 'DELTA', 'JFK', '9.35AM', 'SFO', '1.35PM', 1110),
(14, 'US AIR', 'JFK', '10.15AM', 'SFO', '2.35PM', 1220),
(15, 'CONTINENTAL', 'JFK', '11.15AM', 'SFO', '4.35PM', 1330),
(16, 'JET AIR', 'JFK', '12.28PM', 'SFO', '5.35PM', 1110),
(17, 'BRITISH AIR', 'JFK', '2.48AM', 'SFO', '6.35PM', 1220),
(18, 'LUFTHANSA', 'JFK', '4.36PM', 'SFO', '7.35PM', 1330),
(19, 'DELTA', 'JFK', '9.35AM', 'LHR', '1.35PM', 1200),
(20, 'US AIR', 'JFK', '11.35AM', 'LHR', '3.35PM', 1450),
(21, 'WIZZAIR', 'JFK', '12.35PM', 'LHR', '7.35PM', 1300),
(22, 'DELTA', 'SFO', '9.35AM', 'LHR', '1.35PM', 1110),
(23, 'US AIR', 'SFO', '11.35AM', 'LHR', '3.35PM', 1220),
(24, 'CONTINENTAL', 'SFO', '12.35PM', 'LHR', '7.35PM', 1330),
(25, 'DELTA', 'JFK', '9.35AM', 'CDG', '1.35PM', 1200),
(26, 'US AIR', 'JFK', '11.35AM', 'CDG', '3.35PM', 1450),
(27, 'CONTINENTAL', 'JFK', '12.35PM', 'CDG', '7.35PM', 1300),
(28, 'DELTA', 'SFO', '9.35AM', 'CDG', '1.35PM', 1110),
(29, 'US AIR', 'SFO', '11.35AM', 'CDG', '3.35PM', 1220),
(30, 'CONTINENTAL', 'SFO', '12.35PM', 'CDG', '7.35PM', 1330),
(31, 'DELTA', 'JFK', '9.35AM', 'SFO', '1.35PM', 1110),
(32, 'US AIR', 'JFK', '10.15AM', 'SFO', '2.35PM', 1220),
(33, 'CONTINENTAL', 'JFK', '11.15AM', 'SFO', '4.35PM', 1330),
(34, 'JET AIR', 'JFK', '12.28PM', 'SFO', '5.35PM', 1110),
(35, 'BRITISH AIR', 'JFK', '2.48AM', 'SFO', '6.35PM', 1220),
(36, 'LUFTHANSA', 'JFK', '4.36PM', 'SFO', '7.35PM', 1330);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `miejsce`
--

CREATE TABLE IF NOT EXISTS `miejsce` (
  `ID` int(3) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(5) NOT NULL,
  `NAME` varchar(64) NOT NULL,
  `CITY` varchar(64) NOT NULL,
  `COUNTRY` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Zrzut danych tabeli `miejsce`
--

INSERT INTO `miejsce` (`ID`, `CODE`, `NAME`, `CITY`, `COUNTRY`) VALUES
(1, 'JFK', 'John F Kennedy Intl', 'New York', 'USA'),
(2, 'SFO', 'San Francisco International', 'San Francisco', 'USA'),
(3, 'LHR', 'London Heathrow', 'London', 'Anglia'),
(4, 'CDG', 'Charles De Gaulle', 'Paris', 'Francja'),
(5, 'KRK', 'BALICE', 'Krakow', 'Polska'),
(6, 'WAW', 'CHOPINA', 'Warszawa', 'Polska');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacja`
--

CREATE TABLE IF NOT EXISTS `rezerwacja` (
  `ID` int(3) NOT NULL AUTO_INCREMENT,
  `PESEL` varchar(12) NOT NULL,
  `IMIE` varchar(20) NOT NULL,
  `NAZWISKO` varchar(30) NOT NULL,
  `DATA_POWROT` varchar(11) DEFAULT NULL,
  `DATA_LOTU` varchar(11) DEFAULT NULL,
  `ID_LOTU` varchar(12) NOT NULL,
  `KARTA` varchar(12) DEFAULT NULL,
  `PASAZEROWIE` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
