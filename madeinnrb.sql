-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2014 at 04:35 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `madeinnrb`
--

-- --------------------------------------------------------

--
-- Table structure for table `startups`
--

CREATE TABLE IF NOT EXISTS `startups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `company_name` varchar(200) NOT NULL,
  `website` varchar(255) NOT NULL,
  `hiring_url` varchar(255) NOT NULL,
  `email_address` int(11) NOT NULL,
  `firstname` int(11) NOT NULL,
  `lastname` int(11) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '1',
  `hiring` tinyint(4) NOT NULL DEFAULT '0',
  `company_logo` varchar(255) NOT NULL,
  `Company_Tagline` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `startups`
--

INSERT INTO `startups` (`id`, `create_date`, `company_name`, `website`, `hiring_url`, `email_address`, `firstname`, `lastname`, `status`, `hiring`, `company_logo`, `Company_Tagline`) VALUES
(1, '2014-10-16 07:42:14', 'Brck', 'http://www.brck.com/', 'http://www.brck.com/', 0, 0, 0, 1, 0, 'brck.png', ''),
(2, '2014-10-16 07:51:01', 'Akirachix', 'http://akirachix.com/', 'http://akirachix.com/', 0, 0, 0, 1, 0, 'AKIRACHIX.png', ''),
(3, '2014-10-16 08:00:48', 'Afroes', 'http://www.afroes.com/', 'http://www.afroes.com/', 0, 0, 0, 1, 0, 'Afroes.jpg', ''),
(4, '2014-10-16 08:03:34', 'GSMA', 'http://www.gsma.com/', 'http://www.gsma.com/', 0, 0, 0, 1, 0, 'GSMA-logo.jpg', ''),
(5, '2014-10-16 08:04:57', 'Eneza', 'http://enezaeducation.com/', 'http://enezaeducation.com/', 0, 0, 0, 1, 0, 'Eneza-Logo.jpg', ''),
(6, '2014-10-16 08:06:33', 'eLimu', 'http://e-limu.org/', 'http://e-limu.org/', 0, 0, 0, 1, 0, 'elimu.png', ''),
(7, '2014-10-16 08:07:26', 'Kopokopo', 'http://www.kopokopo.co.ke/', 'http://www.kopokopo.co.ke/', 0, 0, 0, 1, 0, 'kopokopo.jpg', ''),
(8, '2014-10-16 08:09:30', 'Card Planet', 'http://www.cardplanetsolutions.co.ke/', 'http://www.cardplanetsolutions.co.ke/', 0, 0, 0, 1, 0, 'CardPlanet-Logo-[Converted].png', ''),
(9, '2014-10-16 08:20:55', 'Bamba-Pos', 'http://bambapos.com/', 'http://bambapos.com/', 0, 0, 0, 1, 0, 'bambapos.png', ''),
(10, '2014-10-16 08:23:45', 'M_farm', 'http://www.mfarm.co.ke/', 'http://www.mfarm.co.ke/', 0, 0, 0, 1, 0, 'mfarm.png', ''),
(11, '2014-10-16 08:25:12', 'Angani', 'https://angani.co/', 'https://angani.co/', 0, 0, 0, 1, 0, 'logo2.png', ''),
(12, '2014-10-16 08:28:41', 'Lipisha', 'https://lipisha.com', 'https://lipisha.com', 0, 0, 0, 1, 0, 'lipisha.png', ''),
(13, '2014-10-16 08:32:33', 'Waabeh', 'https://waabeh.com/', 'https://waabeh.com/', 0, 0, 0, 1, 0, 'waabehlogo.png', ''),
(14, '2014-10-16 08:42:23', 'Ma3route', 'http://www.ma3route.com/#!/', 'http://www.ma3route.com/#!/', 0, 0, 0, 1, 0, 'ma3route.png', ''),
(15, '2014-10-16 08:49:34', 'Totohealth', 'http://www.totohealth.org/', 'http://www.totohealth.org/', 0, 0, 0, 1, 0, 'toto.png', 'icare about babies '' health'),
(16, '2014-10-16 09:09:14', 'FOMOBI', 'http://www.fomobi.com/', 'http://www.fomobi.com/', 0, 0, 0, 1, 0, 'FoMobi_B.jpg', ''),
(17, '2014-10-16 09:11:23', 'uhasibu', 'http://www.uhasibu.co.ke/', 'http://www.uhasibu.co.ke/', 0, 0, 0, 1, 0, 'uhasibu.png', 'Online Accounting made simple'),
(18, '2014-10-16 09:14:27', 'Olive Tree Media', 'http://www.olivetreehub.com/', 'http://www.olivetreehub.com/', 0, 0, 0, 1, 0, 'OliveTree Logo color.png', ''),
(19, '2014-10-16 09:17:20', 'Bityarn', 'http://www.bityarn.co.ke/', 'http://www.bityarn.co.ke/', 0, 0, 0, 1, 0, 'top_logo.png', 'Development . Consulting . Tra'),
(20, '2014-10-16 09:18:14', 'Wezatele', 'http://wezatele.com/', 'http://wezatele.com/', 0, 0, 0, 1, 0, 'wtlogo-01.png', ''),
(21, '2014-10-16 09:21:37', 'Zege Technologies', 'http://zegetech.com/home/', 'http://zegetech.com/home/', 0, 0, 0, 1, 0, 'Zege Tech logo.png', ''),
(22, '2014-10-16 09:22:17', 'W_hive', 'http://whive.org/', 'http://whive.org/', 0, 0, 0, 1, 0, 'whive.jpg', 'Powering Social Innovations!'),
(23, '2014-10-16 09:25:32', 'Medic Mobile', 'http://medicmobile.org/', 'http://medicmobile.org/', 0, 0, 0, 1, 0, 'md.png', ''),
(24, '2014-10-16 09:26:28', 'sleepout', 'https://sleepout.com/', 'https://sleepout.com/', 0, 0, 0, 1, 0, 'sleepout.png', ''),
(25, '2014-10-16 09:27:18', 'Sprnt interactive', 'http://www.sprint-interactive.com/', 'http://www.sprint-interactive.com/', 0, 0, 0, 1, 0, 'sprnt.png', ''),
(26, '2014-10-16 09:29:38', 'Niko Hapa', 'http://www.nikohapa.com/login?page=http://www.nikohapa.com/', 'http://www.nikohapa.com/login?page=http://www.nikohapa.com/', 0, 0, 0, 1, 0, 'NikoHapa_logo.png', ''),
(27, '2014-10-16 09:31:02', 'Kijicho Application', 'http://www.kijicho.com/kijicho/', 'http://www.kijicho.com/kijicho/', 0, 0, 0, 1, 0, 'KijichApp.png', ''),
(28, '2014-10-16 09:50:30', 'icounty', 'http://www.kijicho.com/kijicho/', 'http://www.kijicho.com/kijicho/', 0, 0, 0, 1, 0, 'icounty.png', ''),
(29, '2014-10-16 09:55:26', 'iCow', 'http://icow.co.ke/', 'http://icow.co.ke/', 0, 0, 0, 1, 0, 'logo-icow.png', ''),
(31, '2014-10-16 13:45:26', 'OkHi', 'http://www.okhi.com/', 'http://www.okhi.com/', 0, 0, 0, 1, 0, 'okhi.png', ''),
(32, '2014-10-16 14:04:31', 'Praekelt Foundation', 'http://www.praekeltfoundation.org/', 'http://www.praekeltfoundation.org/', 0, 0, 0, 1, 0, 'praekelt.png', ''),
(33, '2014-10-16 14:05:20', 'Savannah Fund', 'http://savannah.vc/', 'http://savannah.vc/', 0, 0, 0, 1, 0, 'savannah-fund.png', ''),
(34, '2014-10-16 14:10:45', 'Frontline sms cloud', 'http://www.frontline.com/Pages/default.aspx', 'http://www.frontline.com/Pages/default.aspx', 0, 0, 0, 1, 0, 'Logos.png', ''),
(35, '2014-10-16 14:13:53', 'MedAfrica', 'http://medafrica.org/beta/', 'http://medafrica.org/beta/', 0, 0, 0, 1, 0, 'logo3.png', ''),
(36, '2014-10-16 14:14:58', 'Abacus', 'http://abacus.co.ke/', 'http://abacus.co.ke/', 0, 0, 0, 1, 0, 'cropped-Abacus-.png', ''),
(37, '2014-10-16 14:19:03', 'Mobdev', 'http://devs.mobi/', 'http://devs.mobi/', 0, 0, 0, 1, 0, 'mobdev.png', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
