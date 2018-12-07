-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 07. Dez 2018 um 13:23
-- Server-Version: 10.1.35-MariaDB
-- PHP-Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `decon`
--
CREATE DATABASE IF NOT EXISTS `decon` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `decon`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `event_id` int(1) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time_from` time NOT NULL,
  `time_until` time DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`event_id`, `date`, `time_from`, `time_until`) VALUES
(1, '2018-12-14', '06:08:18', NULL),
(2, '2018-12-11', '15:10:00', '19:00:00'),
(3, '2018-12-21', '13:00:00', '20:00:00'),
(4, '2018-12-21', '13:00:00', '20:00:00'),
(5, '2018-12-23', '09:00:00', '12:00:00'),
(6, '2018-12-23', '09:00:00', '12:00:00'),
(7, '2018-12-08', '18:00:00', '22:00:00'),
(8, '2018-12-08', '18:00:00', '22:00:00'),
(9, '2018-12-18', '14:30:00', '15:00:00'),
(10, '2018-12-18', '14:30:00', '15:00:00'),
(11, '2018-12-09', '20:00:00', '24:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `member_ID` int(2) NOT NULL AUTO_INCREMENT,
  `event_id` int(1) NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `member_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`member_ID`,`event_id`),
  KEY `event_id` (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `member`
--

INSERT INTO `member` (`member_ID`, `event_id`, `member_name`, `member_email`) VALUES
(1, 2, 'Gitika', 'git@outlook.com'),
(2, 2, 'Gitika', 'git@outlook.com'),
(3, 5, 'Bossie', 'betti.bossie@hot,ail.com'),
(4, 6, 'Karla', 'karla.max@hotmail.com'),
(5, 8, 'Reto', 'reto.niedegger@outlook.com'),
(6, 3, 'Kiki', 'kiki@gmail.com'),
(7, 10, 'Ingrit', 'ingrit.gunter@outlook.com'),
(8, 11, 'Desire', 'desire1996@hotmail.com');

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
