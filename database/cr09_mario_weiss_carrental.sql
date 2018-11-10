-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 10. Nov 2018 um 16:15
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
CREATE DATABASE IF NOT EXISTS `cr09_mario_weiss_carrental` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cr09_mario_weiss_carrental`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `adress`
--

DROP TABLE IF EXISTS `adress`;
CREATE TABLE `adress` (
  `adress_id` int(11) NOT NULL,
  `related_id` varchar(25) DEFAULT NULL,
  `type` varchar(25) NOT NULL,
  `street` varchar(255) NOT NULL,
  `zip` varchar(25) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country_id` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `adress`
--

INSERT INTO `adress` (`adress_id`, `related_id`, `type`, `street`, `zip`, `city`, `country_id`) VALUES
(1, NULL, 'primary', 'Office-Park-Allee', '1300', 'vienna', 'AUT'),
(2, NULL, 'primary', 'Europapl. 7', '8020', 'Graz', 'AUT'),
(3, NULL, 'primary', 'Alexanderplatz 8', '10178 ', 'Berlin', 'DEU'),
(4, NULL, 'primary', 'Seitzstraße 9', '80538', 'munich', 'DEU'),
(5, NULL, 'primary', 'Schnirchova 1354/9', '17000', 'Prague', 'CZE'),
(6, 'C00000001', 'primary', 'Musterstreet 3', '12345', 'Muster', 'DEU'),
(7, 'C00000002', 'primary', 'Haflingerstr. 7a', '1120', 'Vienna', 'AUT'),
(8, 'I00000001', 'primary', 'Insurancestreet 57', '1010', 'Vienna', 'AUT');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `car`
--

DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `vin` varchar(55) NOT NULL,
  `type_id` int(11) NOT NULL,
  `make` varchar(55) NOT NULL,
  `model` varchar(255) NOT NULL,
  `year` smallint(4) NOT NULL,
  `seats` tinyint(4) NOT NULL,
  `location_id` int(11) NOT NULL,
  `status_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `car`
--

INSERT INTO `car` (`car_id`, `vin`, `type_id`, `make`, `model`, `year`, `seats`, `location_id`, `status_id`) VALUES
(1, '1GYUCCEF6AR074280', 2, 'Suzuki', 'Verona', 2004, 2, 5, 1),
(2, '4A31K2DF7AE704920', 12, 'Chevrolet', 'Classic', 2005, 2, 3, 1),
(3, 'WVWAA7AJ1CW297492', 12, 'Saab', '9-7X', 2009, 2, 4, 1),
(4, '1G6YV34A945899638', 6, 'Nissan', 'Armada', 2006, 4, 4, 1),
(5, 'WBAAW33451E579636', 5, 'Chevrolet', 'G-Series 2500', 1998, 4, 2, 2),
(6, 'JN8AZ2KR1DT996547', 4, 'Chevrolet', 'Beretta', 1995, 5, 4, 3),
(7, '1G6AB5S37F0253606', 5, 'Hyundai', 'Accent', 2011, 4, 2, 3),
(8, 'WBAGN63444D856334', 6, 'Buick', 'Riviera', 1998, 3, 5, 2),
(9, '1G6KF549X3U960858', 12, 'Mercedes-Benz', 'C-Class', 1993, 5, 3, 1),
(10, '3N1AB6AP7AL882806', 2, 'Mercedes-Benz', 'CL-Class', 1999, 3, 5, 2),
(11, 'KMHGH4JH3CU377661', 7, 'Chevrolet', 'S10 Blazer', 1993, 4, 2, 2),
(12, 'JTHBP5C28D5163629', 12, 'Geo', 'Prizm', 1992, 3, 5, 3),
(13, '1G6DK5E38C0205813', 7, 'Cadillac', 'Escalade ESV', 2003, 2, 1, 1),
(14, '1FTMF1CWXAK916869', 7, 'Mercedes-Benz', 'GLK-Class', 2010, 5, 1, 3),
(15, 'WAUGF98K39A677345', 4, 'Audi', 'R8', 2008, 4, 2, 3),
(16, '5UXZV4C50CL652450', 13, 'Chevrolet', 'Traverse', 2012, 3, 1, 2),
(17, 'SALVE2BG6FH888365', 11, 'GMC', 'Envoy XL', 2003, 2, 5, 3),
(18, '3GTU1YEJ7BG578495', 4, 'Chevrolet', 'G-Series 2500', 1998, 3, 4, 3),
(19, '19XFA1E35AE710780', 8, 'Bentley', 'Arnage', 2007, 3, 3, 2),
(20, 'WBAKA4C52BC240704', 4, 'Mercedes-Benz', 'R-Class', 2006, 3, 2, 3),
(21, '4JGCB2FEXBA785044', 14, 'Mitsubishi', 'Truck', 1994, 4, 4, 1),
(22, '5XYKT3A6XFG631099', 6, 'Aston Martin', 'DBS', 2010, 5, 1, 1),
(23, '1GYS4AEF2BR777739', 1, 'BMW', '3 Series', 1992, 2, 5, 3),
(24, '1HGCR2E7XEA184225', 7, 'Kia', 'Forte', 2012, 4, 4, 2),
(25, '1G6DA1E38D0143620', 13, 'Audi', 'Cabriolet', 1997, 3, 3, 2),
(26, 'WAURFAFRXEA065969', 9, 'Mazda', '626', 2001, 3, 3, 2),
(27, '3C3CFFAR6FT800104', 7, 'Porsche', '928', 1990, 3, 2, 1),
(28, '2HNYD18843H033620', 13, 'Bentley', 'Continental GTC', 2011, 2, 5, 2),
(29, '1FTEW1CF8FK539079', 3, 'Lexus', 'GS', 2010, 2, 4, 1),
(30, '3D4PH9FV5AT056134', 7, 'BMW', '530', 2001, 2, 3, 2),
(31, 'JN1CV6EK6DM276860', 13, 'Pontiac', 'Bonneville', 1965, 3, 2, 2),
(32, '1GT022CGXEF233208', 8, 'Plymouth', 'Neon', 2001, 2, 2, 2),
(33, 'WBA3T1C58FP525127', 10, 'Chevrolet', 'Impala', 2000, 5, 4, 2),
(34, '1G6DK8EY9B0736322', 7, 'Mazda', 'MX-5', 1998, 4, 3, 4),
(35, 'JH4CU26669C202229', 2, 'Audi', 'Cabriolet', 1998, 3, 3, 3),
(36, 'SCBBR93W78C084902', 3, 'Chevrolet', 'Silverado 3500', 2009, 2, 5, 1),
(37, 'WAUSF78E78A362068', 5, 'MINI', 'Cooper', 2004, 2, 1, 2),
(38, 'WBAWL7C53AP418124', 7, 'Cadillac', 'Escalade EXT', 2007, 2, 1, 2),
(39, '4T1BD1FK9EU147084', 5, 'Mercedes-Benz', 'CL-Class', 2011, 2, 5, 2),
(40, '2C3CDXCT8CH347886', 10, 'Pontiac', 'Firebird', 1969, 3, 5, 5),
(41, 'WA1LFAFP5FA480510', 1, 'Mercury', 'Tracer', 1993, 5, 3, 1),
(42, 'WBSDE934X2B035571', 11, 'Mercedes-Benz', 'SLK-Class', 2007, 5, 3, 2),
(43, '3N1AB7AP9FY451884', 1, 'Mazda', 'Mazdaspeed6', 2006, 4, 1, 2),
(44, 'WBAAX13453P056125', 9, 'Chrysler', 'Sebring', 2007, 3, 1, 1),
(45, '1HGCR2E39FA223580', 9, 'Volkswagen', 'Touareg 2', 2008, 2, 3, 1),
(46, 'JH4DC435X1S117984', 6, 'Pontiac', 'Grand Prix', 1962, 5, 5, 2),
(47, '1GYS3DEF5DR775748', 10, 'Daewoo', 'Leganza', 2000, 3, 5, 2),
(48, 'WA19FAFLXDA040075', 5, 'Ford', 'Econoline E150', 2001, 3, 4, 1),
(49, 'WAULD54B52N497480', 14, 'Dodge', 'Neon', 2001, 4, 3, 1),
(50, 'WAUGN94F57N042936', 1, 'Acura', 'CL', 2002, 2, 5, 3),
(51, 'SCBZU25E41C073029', 3, 'Acura', 'MDX', 2010, 2, 1, 1),
(52, '3N1CN7AP2EK513644', 11, 'Porsche', '944', 1983, 3, 2, 2),
(53, 'WDDHF7GB2FB123819', 9, 'Hyundai', 'Tiburon', 2004, 4, 4, 6),
(54, 'KNAFK4A68F5679507', 12, 'Suzuki', 'SJ', 1990, 3, 3, 2),
(55, 'JH4DC54852C826185', 13, 'Subaru', 'Justy', 1988, 2, 4, 3),
(56, '5XYZT3LB2DG705704', 7, 'Infiniti', 'QX', 1998, 3, 5, 1),
(57, '5FRYD4H22GB045469', 7, 'Hyundai', 'Tucson', 2009, 4, 1, 1),
(58, 'TRUUT28N341788816', 5, 'Chevrolet', 'Beretta', 1993, 5, 4, 1),
(59, 'WAUUL78E66A536999', 4, 'Mitsubishi', 'Pajero', 2003, 5, 1, 2),
(60, '1GYS4DEF7DR043683', 3, 'Lincoln', 'Town Car', 1990, 4, 1, 2),
(61, 'SCBZK25E03C727453', 8, 'Ford', 'Econoline E150', 1994, 5, 4, 1),
(62, 'JTJHY7AX8E4680906', 2, 'Hyundai', 'XG350', 2004, 4, 5, 6),
(63, '5GADV33W07D555099', 7, 'GMC', 'Savana 2500', 2011, 2, 1, 3),
(64, '1FTWX3B5XAE629220', 5, 'Mazda', 'MX-5', 2011, 4, 1, 3),
(65, '2C3CK3CV8AH297150', 14, 'Dodge', 'Grand Caravan', 2003, 5, 5, 1),
(66, 'WBASP2C56BC283025', 10, 'Pontiac', 'Grand Am', 2001, 2, 2, 3),
(67, '1C3BCBGG3EN559653', 8, 'Buick', 'Park Avenue', 2005, 5, 2, 1),
(68, 'JN1AJ0HPXAM779102', 4, 'Pontiac', 'Firebird', 1989, 4, 3, 2),
(69, 'WA1WGAFP1EA913992', 1, 'Ford', 'Mustang', 1979, 5, 1, 1),
(70, 'WA1CGAFE3FD893777', 6, 'Honda', 'Passport', 1997, 4, 4, 2),
(71, 'WBAPT7C52AC528576', 13, 'Dodge', 'D350 Club', 1993, 5, 3, 3),
(72, 'WAUXL58E05A462222', 7, 'Dodge', 'Caliber', 2009, 4, 5, 2),
(73, 'JH4DC53825S646643', 9, 'Porsche', '911', 1998, 5, 3, 1),
(74, 'SCFEBBBC0AG864804', 3, 'Mercury', 'Sable', 1989, 4, 1, 2),
(75, 'WBAYB6C53FD687934', 4, 'Subaru', 'Outback', 2012, 2, 2, 3),
(76, '19UUA96219A428826', 11, 'Mercedes-Benz', 'S-Class', 1986, 5, 3, 1),
(77, '1G6ET12912B041178', 5, 'Toyota', 'Camry', 2005, 5, 2, 3),
(78, 'KNAFZ6A31F5082129', 12, 'Lamborghini', 'Countach', 1990, 4, 2, 3),
(79, '3VW517AT8EM425911', 3, 'Audi', 'S6', 2009, 5, 3, 3),
(80, 'WA1CFAFP2EA798244', 4, 'Nissan', 'Frontier', 2007, 3, 3, 4),
(81, 'WVWAW7AH6BV005256', 2, 'Ford', 'F-Series', 1991, 5, 1, 3),
(82, 'KMHGH4JH2FU217422', 3, 'Porsche', 'Cayenne', 2006, 2, 2, 1),
(83, 'WP0AB2A87CS132759', 10, 'Buick', 'Rainier', 2007, 2, 4, 3),
(84, 'WAUHFAFL4BN753591', 6, 'Subaru', 'Alcyone SVX', 1994, 3, 3, 1),
(85, 'WA1AM94L49D684830', 13, 'Mitsubishi', 'Mirage', 1993, 4, 5, 3),
(86, 'WBA3B9C50EP731543', 4, 'Acura', 'Integra', 1994, 5, 1, 2),
(87, '1GYS4JEF2CR678775', 6, 'Subaru', 'Leone', 1988, 4, 4, 2),
(88, '3VW4A7AT3DM166299', 1, 'Saab', '9-3', 2010, 2, 5, 3),
(89, 'WAULD54B82N579638', 4, 'Dodge', 'Journey', 2012, 5, 4, 3),
(90, 'WAUHFAFL2BA929027', 6, 'Dodge', 'Ram Van 1500', 1995, 5, 1, 3),
(91, 'WAUEF98E38A843962', 10, 'Audi', '90', 1991, 4, 2, 2),
(92, 'WAUAF48H89K601174', 7, 'Aston Martin', 'V12 Vantage', 2012, 4, 4, 3),
(93, 'WVGAV3AX7DW081273', 5, 'Porsche', '911', 2002, 5, 3, 1),
(94, '1D4PT2GK6AW721885', 9, 'Toyota', 'Tundra', 2010, 5, 5, 2),
(95, 'WBA3A5C55CF638578', 13, 'GMC', 'Yukon XL 2500', 2003, 5, 2, 2),
(96, 'WAUBH74FX6N400200', 14, 'Nissan', 'NX', 1992, 3, 3, 1),
(97, 'KMHFC4DD7BA925356', 2, 'Nissan', 'Sentra', 1996, 3, 1, 3),
(98, '19UUA8F21DA791842', 2, 'Toyota', 'Supra', 1996, 3, 4, 3),
(99, '2G4WY55J621257670', 8, 'Honda', 'Odyssey', 2004, 5, 5, 3),
(100, '3N1BC1AP2BL964206', 7, 'BMW', '3 Series', 2004, 4, 2, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `car_type`
--

DROP TABLE IF EXISTS `car_type`;
CREATE TABLE `car_type` (
  `car_type_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `car_type`
--

INSERT INTO `car_type` (`car_type_id`, `name`, `description`) VALUES
(1, 'Microcar', 'Straddling the boundary between car and motorbike, these vehicles have engines under 1.0 litre, typically seat only two passengers, and are sometimes unorthodox in construction. Some microcars are three-wheelers, while the majority have four wheels.'),
(2, 'City car', 'A city car is a small automobile intended for use in urban areas. Unlike microcars, a city car\'s greater speed, capacity and (in perception at least) occupant protection are safer in mixed traffic environments and weather conditions.'),
(3, 'subcompact car', 'This class is known as supermini in the UK, subcompact in North America. Superminis have three, four or five doors, and even as an estate shape. They are designed to seat four passengers comfortably.'),
(4, 'compact car', 'Small family/compact cars refer to the hatchbacks and shortest saloons and estate cars with similar size. They are approximately 4,250 mm (167 in) long in case of hatchbacks and 4,500 mm (177 in) in the case of saloons and estate cars.'),
(5, 'sedans', 'A class described as \"large family\" in Europe and \"mid-size\" in the USA, these cars have room for five adults and a large trunk (boot). Engines are more powerful than small family/compact cars and six-cylinder engines are more common than in smaller cars.'),
(6, 'Crossover SUV', 'Crossover SUVs are derived from an automobile platform using a monocoque construction with light off-road capability and lower ground clearance than SUVs. They may be styled similar to conventional \"off-roaders\".'),
(7, 'Minivans / MPVs', 'Also known as \"people carriers\", this class of cars combines a high-roof, five-door one- or two-box hatchback body configuration, car-like handling and fuel economy and greater height than sedan or station wagon counterparts.'),
(8, 'Compact executive', 'These are luxurious equivalents to mid-size and compact cars. Rear seat room and trunk space are smaller than executive cars simply because of their smaller overall size.'),
(9, 'Executive/mid-luxury', 'These are luxurious equivalents to full-size cars. This also refers to the largest hatchbacks within the similar length in this class, such as the Porsche Panamera'),
(10, 'Full-size luxury', 'Also known as full-size luxury cars, grand saloons, while \"Oberklasse\" is used in Germany. Typically a four-door saloon (sedan). These are the most powerful saloons, with six, eight and twelve-cylinder engines and have more equipment than smaller models.'),
(11, 'Sports car', 'The term \"sports car\" does not appear to have a clear definition.[25] It is commonly used to describe vehicles which prioritise acceleration and handling; however, some people claim it is also defined as a vehicle with two seats.'),
(12, 'Grand tourer', 'Larger, more powerful and heavier than sports cars, these vehicles typically have a FR layout and seating for four passengers (2+2). These are more expensive than sports cars but not as expensive as supercars.'),
(13, 'Muscle car', 'The muscle car term generally refers to rear wheel drive mid-size cars with powerful V8 engines, typically manufactured in the U.S. Some definitions limit it to two-door vehicles; however, others include four-door body style versions.'),
(14, 'Convertible', 'A body design that features a flexibly operating roof for open or enclosed mode driving. Also known as a cabriolet or roadster (if a 2-seater). Historically, convertibles used folding roof structures with fabric or other flexible materials.');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `country_id` varchar(3) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `country`
--

INSERT INTO `country` (`country_id`, `name`) VALUES
('ABB', 'Asia'),
('ABW', 'Aruba'),
('ACI', 'Ashmore and Cartier Islands'),
('AFG', 'Afghanistan'),
('AGO', 'Angola'),
('AIA', 'Anguilla'),
('ALB', 'Albania'),
('AND', 'Andorra'),
('ANT', 'Netherlands Antilles'),
('ARE', 'United Arab Emirates'),
('ARG', 'Argentina'),
('ARM', 'Armenia'),
('ASM', 'American Samoa'),
('ATA', 'Antarctica'),
('ATF', 'French Southern Territories'),
('ATG', 'Antigua and Barbuda'),
('AUS', 'Australia'),
('AUT', 'Austria'),
('AZE', 'Azerbaijan'),
('BDI', 'Burundi'),
('BEL', 'Belgium'),
('BEN', 'Benin'),
('BFA', 'Burkina Faso'),
('BGD', 'Bangladesh'),
('BGR', 'Bulgaria'),
('BHR', 'Bahrein'),
('BHS', 'Bahamas'),
('BIH', 'Bosnia-Herzegovina'),
('BLR', 'Belarus'),
('BLZ', 'Belize'),
('BMU', 'Bermuda'),
('BOL', 'Bolivia'),
('BRA', 'Brazil'),
('BRB', 'Barbados'),
('BRN', 'Brunei'),
('BTN', 'Bhutan'),
('BVT', 'Bouvet Island'),
('BWA', 'Botswana'),
('CAF', 'Central African Republic'),
('CAN', 'Canada'),
('CCK', 'Cocos (Keeling) Island'),
('CHE', 'Switzerland'),
('CHL', 'Chile'),
('CHN', 'People\'s Republic of China'),
('CIV', 'Côte d\'Ivoire'),
('CMR', 'Cameroun'),
('COD', 'Democratic Republic of the Congo'),
('COG', 'Republic of the Congo'),
('COK', 'Cook Islands'),
('COL', 'Colombia'),
('COM', 'Comoros'),
('CPV', 'Cape Verde'),
('CRI', 'Costa Rica'),
('CSI', 'Coral Sea Islands'),
('CUB', 'Cuba'),
('CXR', 'Christmas Island'),
('CYM', 'Cayman Islands'),
('CYP', 'Cyprus'),
('CZE', 'Czech Republic'),
('DEU', 'Germany'),
('DJI', 'Djibouti'),
('DMA', 'Dominica'),
('DNK', 'Denmark'),
('DOM', 'Dominican Republic'),
('DZA', 'Algeria'),
('ECU', 'Ecuador'),
('EEE', 'Europe'),
('EGY', 'Egypt'),
('ERI', 'Eritrea'),
('ESH', 'Western Sahara'),
('ESP', 'Spain'),
('EST', 'Estonia'),
('ETH', 'Ethiopia'),
('FFF', 'Africa'),
('FIN', 'Finland'),
('FJI', 'Fiji'),
('FLK', 'Falkland Islands'),
('FRA', 'France'),
('FRO', 'Faroe Islands'),
('FSM', 'Federated States of Micronesia'),
('FYR', 'Macedonia, The Former Yugoslav Republic of'),
('GAB', 'Gabon'),
('GBR', 'United Kingdom (Great Britain)'),
('GC', 'East Germany'),
('GEO', 'Georgia'),
('GHA', 'Ghana'),
('GIB', 'Gibraltar'),
('GIN', 'Guinea'),
('GLP', 'Guadeloupe'),
('GMB', 'The Gambia'),
('GNB', 'Guinea-Bissau'),
('GNQ', 'Equatorial Guinea'),
('GRC', 'Greece'),
('GRD', 'Grenada'),
('GRL', 'Greenland'),
('GTM', 'Guatemala'),
('GUF', 'French Guyana'),
('GUM', 'Guam'),
('GUY', 'Guyana'),
('HKG', 'Hongkong'),
('HMD', 'Heard Island and McDonald Islands'),
('HND', 'Honduras'),
('HQI', 'Howland Island'),
('HRV', 'Croatia'),
('HTI', 'Haiti'),
('HUN', 'Hungary'),
('IDN', 'Indonesia'),
('IND', 'India'),
('IOT', 'British Indian Ocean Territory'),
('IRL', 'Ireland'),
('IRN', 'Iran'),
('IRQ', 'Iraq'),
('ISL', 'Iceland'),
('ISR', 'Israel'),
('ITA', 'Italy'),
('JAM', 'Jamaica'),
('JNM', 'Jan Mayen Island'),
('JOR', 'Jordan'),
('JPN', 'Japan'),
('JQA', 'Johnston Atoll'),
('KAZ', 'Kazakhstan'),
('KEN', 'Kenya'),
('KGZ', 'Kyrgyzstan'),
('KHM', 'Cambodia'),
('KIR', 'Kiribati'),
('KNA', 'Saint Kitts and Nevis'),
('KOR', 'Republic of Korea'),
('KWT', 'Kuwait'),
('LAO', 'Laos'),
('LBN', 'Lebanon'),
('LBR', 'Liberia'),
('LBY', 'Libya'),
('LCA', 'Saint Lucia'),
('LIE', 'Liechtenstein'),
('LKA', 'Sri Lanka'),
('LSO', 'Lesotho'),
('LTU', 'Lithuania'),
('LUX', 'Luxembourg'),
('LVA', 'Latvia'),
('MAC', 'Macau'),
('MAR', 'Morocco'),
('MCO', 'Monaco'),
('MDA', 'Republic of Moldova'),
('MDG', 'Madagascar'),
('MDV', 'Maldives'),
('MEX', 'Mexico'),
('MHL', 'Marshall Islands'),
('MLI', 'Mali'),
('MLT', 'Malta'),
('MMR', 'Myanmar'),
('MNE', 'Montenegro'),
('MNG', 'Mongolia'),
('MNP', 'Northern Mariana Islands'),
('MOZ', 'Mozambique'),
('MRT', 'Mauritania'),
('MSR', 'Montserrat'),
('MTQ', 'Martinique'),
('MUS', 'Mauritius'),
('MWI', 'Malawi'),
('MYS', 'Malaysia'),
('MYT', 'Mayotte'),
('NAM', 'Namibia'),
('NCL', 'New Caledonia'),
('NER', 'Niger'),
('NFK', 'Norfolk Island'),
('NGA', 'Nigeria'),
('NIC', 'Nicaragua'),
('NIU', 'Niue'),
('NLD', 'Netherlands'),
('NNN', 'North America'),
('NOR', 'Norway'),
('NPL', 'Nepal'),
('NRU', 'Nauru'),
('NTT', 'NATO countries'),
('NZL', 'New Zealand'),
('OMN', 'Oman'),
('PAK', 'Pakistan'),
('PAN', 'Panama'),
('PCN', 'Pitcairn Islands'),
('PER', 'Peru'),
('PFI', 'Paracel Islands'),
('PHL', 'Philippines'),
('PLW', 'Palau'),
('PNG', 'Papua New Guinea'),
('POL', 'Poland'),
('PRI', 'Puerto Rico'),
('PRK', 'People\'s Republic of Korea'),
('PRT', 'Portugal'),
('PRY', 'Paraguay'),
('PSE', 'Palestinian Territories'),
('PYF', 'French Polynesia'),
('QAT', 'Qatar'),
('REU', 'Reunion'),
('ROU', 'Romania'),
('RUS', 'Russia'),
('RWA', 'Rwanda'),
('SAU', 'Saudi Arabia'),
('SCG', 'Serbia and Montenegro'),
('SDN', 'Sudan'),
('SEN', 'Senegal'),
('SGP', 'Singapore'),
('SGS', 'South Georgia and South Sandwich Islands'),
('SHN', 'Saint Helena'),
('SJM', 'Svalbard and Jan Mayen'),
('SLB', 'Solomon Islands'),
('SLE', 'Sierra Leone'),
('SLV', 'El Salvador'),
('SMR', 'San Marino'),
('SOM', 'Somalia'),
('SPM', 'Saint Pierre and Miquelon'),
('SRR', 'South America'),
('SSD', 'South Sudan'),
('STP', 'S?o Tom? and Pr?ncipe'),
('SUR', 'Suriname'),
('SVK', 'Slovakia'),
('SVN', 'Slovenia'),
('SWE', 'Sweden'),
('SWZ', 'Swaziland'),
('SYC', 'Seychelles'),
('SYR', 'Syria'),
('TCA', 'Turks and Caicos Islands'),
('TCD', 'Chad'),
('TGO', 'Togo'),
('THA', 'Thailand'),
('TJK', 'Tadjikistan'),
('TKL', 'Tokelau'),
('TKM', 'Turkmenistan'),
('TLS', 'Timor-Leste'),
('TON', 'Tonga'),
('TTO', 'Trinidad and Tobago'),
('TUN', 'Tunisia'),
('TUR', 'Turkey'),
('TUV', 'Tuvalu'),
('TWN', 'Republic of China (Taiwan)'),
('TZN', 'Tanzania'),
('UGA', 'Uganda'),
('UKR', 'Ukraine'),
('UMI', 'United States Minor Outlying Islands'),
('UR', 'Union of Soviet Socialist Republics (USSR)'),
('URY', 'Uruguay'),
('USA', 'United States'),
('UUU', 'Oceania'),
('UZB', 'Uzbekistan'),
('VAT', 'Vatican City (Holy See)'),
('VCT', 'Saint Vincent and the Grenadines'),
('VEN', 'Venezuela'),
('VGB', 'British Virgin Islands'),
('VIR', 'U.S. Virgin Islands'),
('VNM', 'Vietnam'),
('VUT', 'Vanuatu'),
('WLF', 'Wallis and Futuna Islands'),
('WSM', 'Samoa'),
('XXB', '\"Brownland\"'),
('XXE', 'SHAPE (ACO Command)'),
('XXG', '\"Greyland\"'),
('XXI', '\"Indigoland\"'),
('XXL', '\"Limeland\"'),
('XXN', 'NATO Blue\" Command'),
('XXP', '\"Purpleland\"'),
('XXR', '\"Redland\"'),
('XXS', 'SACLANT (HQ SACT Command)'),
('XXW', '\"Whiteland\"'),
('XXY', '\"Yellowland\"'),
('YEM', 'Yemen'),
('YO', 'Yugoslavia'),
('YUG', 'Yugoslavia (Federal Republic of)'),
('ZAF', 'South Africa'),
('ZMB', 'Zambia'),
('ZWE', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` varchar(25) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `licensenr` varchar(55) NOT NULL,
  `licensetype` tinyint(4) NOT NULL,
  `passport` varchar(55) NOT NULL,
  `prim_adress_id` int(11) NOT NULL,
  `prim_phone_id` int(11) NOT NULL,
  `prim_mail_id` int(11) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `customer`
--

INSERT INTO `customer` (`id`, `first_name`, `last_name`, `licensenr`, `licensetype`, `passport`, `prim_adress_id`, `prim_phone_id`, `prim_mail_id`, `password`) VALUES
('C00000001', 'Max', 'Mustermann', '051975354', 2, 'GER06138846546846841', 6, 22, NULL, ''),
('C00000002', 'Peeter', 'Meeter', '64815654', 3, 'AUT323266666', 7, 23, 1, 'password');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `drivinglicense`
--

DROP TABLE IF EXISTS `drivinglicense`;
CREATE TABLE `drivinglicense` (
  `type` tinyint(4) NOT NULL,
  `class` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `drivinglicense`
--

INSERT INTO `drivinglicense` (`type`, `class`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'AB'),
(4, 'C'),
(5, 'AC'),
(6, 'BC'),
(7, 'ABC'),
(8, 'D'),
(9, 'AD'),
(10, 'BD'),
(11, 'ABD'),
(12, 'CD'),
(13, 'ACD'),
(14, 'BCD'),
(15, 'ABCD');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `email`
--

DROP TABLE IF EXISTS `email`;
CREATE TABLE `email` (
  `email_id` int(11) NOT NULL,
  `related_id` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `description` varchar(255) NOT NULL,
  `email_adress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `email`
--

INSERT INTO `email` (`email_id`, `related_id`, `type`, `description`, `email_adress`) VALUES
(1, 'C00000002', 'primary', 'primary Mail Adress', 'irent@acar.at'),
(2, 'I00000001', 'primary', 'office mail adress', 'office@insurance.at'),
(3, 'I00000001', 'primary', 'adress of Brad Foiler', 'b.foiler@insurance.at');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `insurance_company`
--

DROP TABLE IF EXISTS `insurance_company`;
CREATE TABLE `insurance_company` (
  `id` varchar(25) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_person` varchar(55) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `insurance_company`
--

INSERT INTO `insurance_company` (`id`, `name`, `contact_person`, `description`) VALUES
('I00000001', 'Insurance United', 'Brad Foiler', 'Ensurance Company for all type of cars');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `insurance_product`
--

DROP TABLE IF EXISTS `insurance_product`;
CREATE TABLE `insurance_product` (
  `id` int(11) NOT NULL,
  `company_id` varchar(25) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `provision` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `insurance_product`
--

INSERT INTO `insurance_product` (`id`, `company_id`, `name`, `price`, `description`, `provision`) VALUES
(1, 'I00000001', 'standard', 0, 'standard insurance, no extra fee', 0),
(2, 'I00000001', 'extended', 120, 'extended insurance, covers this and that', 12),
(3, 'I00000001', 'full', 240, 'full coverage', 25);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `job_title`
--

DROP TABLE IF EXISTS `job_title`;
CREATE TABLE `job_title` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `job_title`
--

INSERT INTO `job_title` (`id`, `name`, `description`) VALUES
(1, 'boss', 'i am the boss'),
(2, 'head of office', 'responsible for keeping everything running'),
(3, 'office worker', 'worker in the office to prepare contracts, get customers and make sure, cars are ready when needed'),
(4, 'mechanic', 'main reasponsibility is to inspect the cars, repair and prepare incl. cleaning, taking back cars as well');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `description` varchar(255) NOT NULL,
  `adress_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `location`
--

INSERT INTO `location` (`id`, `name`, `description`, `adress_id`) VALUES
(1, 'Main Office Vienna', 'Main Office Vienna', 1),
(2, 'Office Graz', 'Office in Graz', 2),
(3, 'Office Berlin', 'Main Office Germany Berlin', 3),
(4, 'Office munich', 'Office Munich Germany', 4),
(5, 'Office Prague', 'Office Prague, Main Office Czech Republic', 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_number`
--

DROP TABLE IF EXISTS `phone_number`;
CREATE TABLE `phone_number` (
  `phone_id` int(11) NOT NULL,
  `related_id` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `description` varchar(255) NOT NULL,
  `phone_number` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `phone_number`
--

INSERT INTO `phone_number` (`phone_id`, `related_id`, `type`, `description`, `phone_number`) VALUES
(1, '1', 'primary', 'mobile', 9341058799),
(2, '2', 'primary', 'mobile', 3029410692),
(3, '3', 'primary', 'mobile', 3684702956),
(4, '4', 'primary', 'mobile', 6477839930),
(5, '5', 'primary', 'mobile', 9081641157),
(6, '6', 'primary', 'mobile', 4208109411),
(7, '7', 'primary', 'mobile', 6535994441),
(8, '8', 'primary', 'mobile', 4389854225),
(9, '9', 'primary', 'mobile', 7091937811),
(10, '10', 'primary', 'mobile', 7418574326),
(11, '11', 'primary', 'mobile', 2714023067),
(12, '12', 'primary', 'mobile', 7346832898),
(13, '25', 'primary', 'mobile', 9468515559),
(14, '14', 'primary', 'mobile', 9585578820),
(15, '15', 'primary', 'mobile', 7668899643),
(16, '16', 'primary', 'mobile', 6373380326),
(17, '17', 'primary', 'mobile', 3935103960),
(18, '18', 'primary', 'mobile', 9828766188),
(19, '19', 'primary', 'mobile', 4613796794),
(20, '20', 'primary', 'mobile', 9366348979),
(21, '1', 'secondary', 'mobile', 9341058800),
(22, 'C00000001', 'primary', 'mobile', 5198654684),
(23, 'C00000002', 'primary', 'mobile', 8566135134),
(24, 'I00000001', 'primary', 'main office number', 6549812795),
(25, 'I00000001', 'mobile', 'mobile number of Brad Foiler', 9516851853);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rental`
--

DROP TABLE IF EXISTS `rental`;
CREATE TABLE `rental` (
  `id` int(11) NOT NULL,
  `reservationlist_id` int(11) NOT NULL,
  `customer_id` varchar(25) NOT NULL,
  `car_id` int(11) NOT NULL,
  `return_id` int(11) DEFAULT NULL,
  `insurance_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `location_id` int(11) NOT NULL,
  `status_id` tinyint(4) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `rental`
--

INSERT INTO `rental` (`id`, `reservationlist_id`, `customer_id`, `car_id`, `return_id`, `insurance_id`, `date`, `time`, `location_id`, `status_id`, `staff_id`) VALUES
(2, 1, 'C00000002', 40, NULL, 2, '2018-11-02', '12:00:00', 1, 5, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(25) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `ip_adress` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `reservation`
--

INSERT INTO `reservation` (`id`, `customer_id`, `date`, `time`, `ip_adress`) VALUES
(1, 'C00000002', '2018-11-01', '15:14:13', '174.188.53.116');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `reservationlist`
--

DROP TABLE IF EXISTS `reservationlist`;
CREATE TABLE `reservationlist` (
  `id` int(11) NOT NULL,
  `reservation_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `date_req` date NOT NULL,
  `time_req` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `reservationlist`
--

INSERT INTO `reservationlist` (`id`, `reservation_id`, `car_id`, `location_id`, `date_req`, `time_req`) VALUES
(1, 1, 40, 1, '2018-11-02', '12:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `returnal`
--

DROP TABLE IF EXISTS `returnal`;
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

DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `location_id` int(11) NOT NULL,
  `job_title_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `staff`
--

INSERT INTO `staff` (`id`, `first_name`, `last_name`, `location_id`, `job_title_id`) VALUES
(1, 'Thérèse', 'Letch', 1, 1),
(2, 'Océane', 'Ferron', 2, 2),
(3, 'Léa', 'Pinshon', 5, 3),
(4, 'Torbjörn', 'Martijn', 5, 2),
(5, 'Clémence', 'Gove', 3, 3),
(6, 'Yénora', 'Gange', 2, 4),
(7, 'Adèle', 'Moreinis', 3, 4),
(8, 'Intéressant', 'Tothacot', 3, 3),
(9, 'Personnalisée', 'Waddup', 4, 3),
(10, 'Pål', 'Alekseev', 2, 3),
(11, 'Åsa', 'Henzer', 3, 3),
(12, 'Léone', 'Reedie', 2, 4),
(13, 'Clémentine', 'Verdy', 3, 4),
(14, 'Stéphanie', 'Orman', 1, 2),
(15, 'Maëlla', 'Conkling', 1, 3),
(16, 'Eléa', 'McNevin', 3, 2),
(17, 'Ráo', 'Fairbeard', 5, 4),
(18, 'Rébecca', 'Plumridege', 4, 2),
(19, 'Mélissandre', 'Hargess', 4, 4),
(20, 'Léane', 'Madgwick', 1, 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(55) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `status`
--

INSERT INTO `status` (`id`, `name`, `description`) VALUES
(1, 'ready 2 go', 'the car is ready to go, everything is checked und fuell is filled up'),
(2, 'waiting for preparation', 'the car needs last inspection, cleaning and refuelling'),
(3, 'waiting for repairing', 'the car needs to be repaired'),
(4, 'awaiting further inspection', 'something is wrong with the car, need to be clarified if it can be used again and if repair is economical'),
(5, 'on rental', 'car is on rental'),
(6, 'returned', 'car is returned'),
(7, 'awaiting returnal', 'rental time exceeded'),
(8, 'other', 'this status needs to be defined with further documentation');

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
  ADD KEY `type_id` (`type_id`),
  ADD KEY `car_ibfk_1` (`status_id`),
  ADD KEY `car_ibfk_2` (`location_id`);

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
  ADD KEY `customer_ibfk_2` (`prim_adress_id`),
  ADD KEY `prim_mail_id` (`prim_mail_id`),
  ADD KEY `prim_phone_id` (`prim_phone_id`);

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
  ADD KEY `return_id` (`return_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `rental_ibfk_3` (`status_id`),
  ADD KEY `rental_ibfk_7` (`location_id`),
  ADD KEY `rental_ibfk_2` (`car_id`),
  ADD KEY `rental_ibfk_4` (`reservationlist_id`),
  ADD KEY `rental_ibfk_5` (`insurance_id`);

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
  ADD KEY `car_id` (`car_id`),
  ADD KEY `reservationlist_ibfk_1` (`reservation_id`),
  ADD KEY `location_id` (`location_id`);

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
  ADD KEY `staff_ibfk_1` (`location_id`),
  ADD KEY `staff_ibfk_2` (`job_title_id`);

--
-- Indizes für die Tabelle `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `adress`
--
ALTER TABLE `adress`
  MODIFY `adress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `car`
--
ALTER TABLE `car`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT für Tabelle `car_type`
--
ALTER TABLE `car_type`
  MODIFY `car_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT für Tabelle `email`
--
ALTER TABLE `email`
  MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `insurance_product`
--
ALTER TABLE `insurance_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `job_title`
--
ALTER TABLE `job_title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `phone_number`
--
ALTER TABLE `phone_number`
  MODIFY `phone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT für Tabelle `rental`
--
ALTER TABLE `rental`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `reservationlist`
--
ALTER TABLE `reservationlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `status`
--
ALTER TABLE `status`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  ADD CONSTRAINT `customer_ibfk_3` FOREIGN KEY (`prim_mail_id`) REFERENCES `email` (`email_id`),
  ADD CONSTRAINT `customer_ibfk_4` FOREIGN KEY (`prim_phone_id`) REFERENCES `phone_number` (`phone_id`);

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
  ADD CONSTRAINT `reservationlist_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`),
  ADD CONSTRAINT `reservationlist_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

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
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`job_title_id`) REFERENCES `job_title` (`id`) ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
