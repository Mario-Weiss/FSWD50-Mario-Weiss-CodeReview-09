-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 03. Nov 2018 um 19:18
-- Server-Version: 10.1.30-MariaDB
-- PHP-Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr09_mario_weiss_carrental`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `adress`
--

CREATE TABLE `adress` (
  `adress_id` int(11) NOT NULL,
  `related_id` varchar(25) DEFAULT NULL,
  `type` varchar(25) NOT NULL,
  `street` varchar(255) NOT NULL,
  `zip` varchar(25) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country_id` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `car`
--

CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `vin` varchar(55) NOT NULL,
  `type_id` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `engine` varchar(25) NOT NULL,
  `seats` tinyint(4) NOT NULL,
  `location_id` int(11) NOT NULL,
  `status_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `car_type`
--

CREATE TABLE `car_type` (
  `car_type_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `country`
--

CREATE TABLE `country` (
  `country_id` varchar(3) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `id` varchar(25) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `licensenr` varchar(55) NOT NULL,
  `licensetype` tinyint(4) NOT NULL,
  `passport` varchar(55) NOT NULL,
  `prim_adress_id` int(11) NOT NULL,
  `prim_phone_id` int(11) NOT NULL,
  `prim_mail_id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `drivinglicense`
--

CREATE TABLE `drivinglicense` (
  `type` tinyint(4) NOT NULL,
  `class` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `email`
--

CREATE TABLE `email` (
  `email_id` int(11) NOT NULL,
  `related_id` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `description` varchar(255) NOT NULL,
  `email_adress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `insurance_company`
--

CREATE TABLE `insurance_company` (
  `id` varchar(25) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_person` varchar(55) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `insurance_product`
--

CREATE TABLE `insurance_product` (
  `id` int(11) NOT NULL,
  `company_id` varchar(25) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `provision` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `job_title`
--

CREATE TABLE `job_title` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `description` varchar(255) NOT NULL,
  `adress_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_number`
--

CREATE TABLE `phone_number` (
  `phone_id` int(11) NOT NULL,
  `related_id` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `description` varchar(255) NOT NULL,
  `phone_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rental`
--

CREATE TABLE `rental` (
  `id` int(11) NOT NULL,
  `reservationlist_id` int(11) NOT NULL,
  `customer_id` varchar(25) NOT NULL,
  `car_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `insurance_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `location_id` int(11) NOT NULL,
  `status_id` tinyint(4) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(25) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `ip_adress` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `reservationlist`
--

CREATE TABLE `reservationlist` (
  `id` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `date_req` date NOT NULL,
  `time_req` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `returnal`
--

CREATE TABLE `returnal` (
  `id` int(11) NOT NULL,
  `mileage` int(11) NOT NULL,
  `fuel` int(11) NOT NULL,
  `damage` varchar(255) NOT NULL,
  `additional_charge` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `checked_by` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `location_id` int(11) NOT NULL,
  `job_title_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `status`
--

CREATE TABLE `status` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(55) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `adress`
--
ALTER TABLE `adress`
  ADD PRIMARY KEY (`adress_id`),
  ADD KEY `adress_ibfk_1` (`related_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indizes für die Tabelle `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indizes für die Tabelle `car_type`
--
ALTER TABLE `car_type`
  ADD PRIMARY KEY (`car_type_id`);

--
-- Indizes für die Tabelle `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `licensetype` (`licensetype`),
  ADD KEY `prim_adress_id` (`prim_adress_id`),
  ADD KEY `prim_phone_id` (`prim_phone_id`),
  ADD KEY `prim_mail_id` (`prim_mail_id`);

--
-- Indizes für die Tabelle `drivinglicense`
--
ALTER TABLE `drivinglicense`
  ADD PRIMARY KEY (`type`);

--
-- Indizes für die Tabelle `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`email_id`);

--
-- Indizes für die Tabelle `insurance_company`
--
ALTER TABLE `insurance_company`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `insurance_product`
--
ALTER TABLE `insurance_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indizes für die Tabelle `job_title`
--
ALTER TABLE `job_title`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adress_id` (`adress_id`);

--
-- Indizes für die Tabelle `phone_number`
--
ALTER TABLE `phone_number`
  ADD PRIMARY KEY (`phone_id`);

--
-- Indizes für die Tabelle `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `reservationlist_id` (`reservationlist_id`),
  ADD KEY `insurance_id` (`insurance_id`),
  ADD KEY `return_id` (`return_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indizes für die Tabelle `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indizes für die Tabelle `reservationlist`
--
ALTER TABLE `reservationlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_id` (`reservation_id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indizes für die Tabelle `returnal`
--
ALTER TABLE `returnal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `checked_by` (`checked_by`),
  ADD KEY `location_id` (`location_id`);

--
-- Indizes für die Tabelle `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `job_title_id` (`job_title_id`);

--
-- Indizes für die Tabelle `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `adress`
--
ALTER TABLE `adress`
  ADD CONSTRAINT `adress_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);

--
-- Constraints der Tabelle `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `car_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `car_ibfk_3` FOREIGN KEY (`type_id`) REFERENCES `car_type` (`car_type_id`);

--
-- Constraints der Tabelle `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`licensetype`) REFERENCES `drivinglicense` (`type`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`prim_adress_id`) REFERENCES `adress` (`adress_id`),
  ADD CONSTRAINT `customer_ibfk_3` FOREIGN KEY (`prim_phone_id`) REFERENCES `phone_number` (`phone_id`),
  ADD CONSTRAINT `customer_ibfk_4` FOREIGN KEY (`prim_mail_id`) REFERENCES `email` (`email_id`);

--
-- Constraints der Tabelle `insurance_product`
--
ALTER TABLE `insurance_product`
  ADD CONSTRAINT `insurance_product_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `insurance_company` (`id`);

--
-- Constraints der Tabelle `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`adress_id`) REFERENCES `adress` (`adress_id`);

--
-- Constraints der Tabelle `rental`
--
ALTER TABLE `rental`
  ADD CONSTRAINT `rental_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `rental_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`),
  ADD CONSTRAINT `rental_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `rental_ibfk_4` FOREIGN KEY (`reservationlist_id`) REFERENCES `reservationlist` (`id`),
  ADD CONSTRAINT `rental_ibfk_5` FOREIGN KEY (`insurance_id`) REFERENCES `insurance_product` (`id`),
  ADD CONSTRAINT `rental_ibfk_6` FOREIGN KEY (`return_id`) REFERENCES `returnal` (`id`),
  ADD CONSTRAINT `rental_ibfk_7` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `rental_ibfk_8` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`);

--
-- Constraints der Tabelle `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints der Tabelle `reservationlist`
--
ALTER TABLE `reservationlist`
  ADD CONSTRAINT `reservationlist_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`id`),
  ADD CONSTRAINT `reservationlist_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`);

--
-- Constraints der Tabelle `returnal`
--
ALTER TABLE `returnal`
  ADD CONSTRAINT `returnal_ibfk_1` FOREIGN KEY (`checked_by`) REFERENCES `staff` (`id`),
  ADD CONSTRAINT `returnal_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Constraints der Tabelle `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`job_title_id`) REFERENCES `job_title` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
