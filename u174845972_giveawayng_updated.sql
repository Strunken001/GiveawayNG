-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2023 at 02:46 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u174845972_giveawayng`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(1) NOT NULL,
  `ad_title` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `ad_code` longtext NOT NULL,
  `ad_position` varchar(25) NOT NULL DEFAULT '0',
  `ad_privacy` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(1) NOT NULL,
  `name` varchar(25) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(1) NOT NULL,
  `photo_id` int(1) NOT NULL DEFAULT 0,
  `user_id` int(1) NOT NULL DEFAULT 0,
  `comment` varchar(250) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `approved` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `photo_id`, `user_id`, `comment`, `date`, `approved`) VALUES
(1, 6, 1, 'Ah this is cool oooo!!', '2021-12-07 19:10:47', '1'),
(2, 6, 1, 'Nice!', '2021-12-07 19:11:04', '1'),
(3, 6, 1, 'ccsgdnfhnghmgh', '2021-12-08 09:45:50', '1'),
(4, 6, 1, 'Bdndd', '2021-12-08 09:46:25', '1'),
(5, 7, 1, 'csdgrv', '2021-12-08 14:39:23', '1'),
(6, 2, 2, 'test comment', '2021-12-13 15:23:39', '1'),
(7, 10, 2, 'testing', '2021-12-13 15:24:36', '1'),
(8, 10, 1, 'Are you sure?', '2022-01-10 08:09:58', '1'),
(9, 11, 3, 'I love this. Very sharp!', '2022-02-05 17:06:57', '1'),
(10, 9, 3, 'Great', '2022-04-21 15:51:06', '1'),
(11, 3, 1, 'drgdfgojh', '2022-04-28 13:15:34', '1'),
(12, 21, 1, 'Jekari', '2022-06-05 04:44:12', '1'),
(13, 22, 1, 'Oyaaaa', '2022-06-06 18:03:24', '1'),
(14, 15, 1, 'Nna ehn', '2023-01-16 14:59:33', '1'),
(15, 23, 1, 'This is nice o', '2023-04-27 18:44:17', '1'),
(16, 23, 1, 'Lailai', '2023-04-27 18:44:38', '1'),
(17, 24, 1, 'Now nko', '2023-04-28 08:16:06', '1'),
(19, 24, 46, 'tet', '2023-05-01 12:00:00', '1'),
(20, 24, 46, 'anand@anand.com', '2023-05-01 12:00:42', '1'),
(21, 24, 46, 'sdsdas', '2023-05-01 12:33:50', '0'),
(22, 24, 46, 'asdad', '2023-05-01 12:33:58', '0'),
(23, 24, 46, 'abc', '2023-05-01 12:42:04', '0'),
(24, 16, 0, 'tyty', '2023-05-01 13:36:44', '0'),
(25, 16, 0, 'tyty', '2023-05-01 13:36:48', '0'),
(26, 16, 0, 'tyty', '2023-05-01 13:36:49', '0'),
(27, 16, 0, 'tyty', '2023-05-01 13:36:49', '0'),
(28, 16, 0, 'tyty', '2023-05-01 13:36:49', '0'),
(29, 16, 0, 'tyty', '2023-05-01 13:36:49', '0'),
(30, 16, 0, 'tyty', '2023-05-01 13:36:50', '0'),
(31, 16, 0, 'asdsad', '2023-05-01 13:37:29', '0'),
(32, 16, 1, 'asdad', '2023-05-01 13:39:56', '1'),
(33, 16, 1, 'sdsadasd', '2023-05-02 11:24:35', '0'),
(34, 16, 1, 'sdsadasd', '2023-05-02 11:25:06', '0'),
(35, 16, 1, 'asdjsakljdlsa', '2023-05-02 11:25:17', '0'),
(36, 16, 1, 'asdjsakljdlsa', '2023-05-02 11:25:17', '0'),
(37, 16, 1, 'asdjsakljdlsa', '2023-05-02 11:25:18', '0'),
(38, 16, 1, 'asdjsakljdlsa', '2023-05-02 11:25:18', '0'),
(39, 23, 46, 'asdasd', '2023-05-02 11:26:19', '0'),
(40, 23, 46, 'asdasd', '2023-05-02 11:26:21', '0'),
(41, 23, 46, 'asdasd', '2023-05-02 11:26:22', '0'),
(42, 23, 46, 'asdasd', '2023-05-02 11:26:22', '0'),
(43, 23, 46, 'asdasd', '2023-05-02 11:26:22', '0'),
(44, 23, 46, 'asdasd', '2023-05-02 11:26:22', '0'),
(45, 23, 46, 'asdasd', '2023-05-02 11:26:23', '0'),
(46, 23, 46, 'asdasd', '2023-05-02 11:26:23', '0'),
(47, 23, 46, 'asdasd', '2023-05-02 11:26:30', '0'),
(48, 25, 46, 'abc', '2023-05-02 11:31:12', '1'),
(49, 16, 1, 'testing on 3', '2023-05-02 11:34:22', '0'),
(50, 16, 1, 'testing on 3', '2023-05-02 11:34:24', '0'),
(51, 16, 1, 'testing on 3', '2023-05-02 11:34:33', '0'),
(52, 16, 1, 'tweet', '2023-05-02 11:43:14', '1'),
(53, 16, 1, 'add your commetn', '2023-05-02 15:37:26', '1');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(1) NOT NULL,
  `iduser` int(1) NOT NULL,
  `photo` varchar(33) NOT NULL DEFAULT '',
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `rating` float NOT NULL DEFAULT 0,
  `nr_ratings` int(1) NOT NULL DEFAULT 0,
  `description` varchar(250) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `views` int(1) NOT NULL DEFAULT 0,
  `category` int(1) NOT NULL DEFAULT 0,
  `approved` enum('0','1') NOT NULL DEFAULT '0',
  `contest` int(1) NOT NULL DEFAULT 0,
  `type` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `cover` varchar(33) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `iduser`, `photo`, `date`, `rating`, `nr_ratings`, `description`, `views`, `category`, `approved`, `contest`, `type`, `cover`) VALUES
(1, 1, 'sUvt2APG0HaFXODNbBxT', '2021-12-07 11:20:56', 1, 1, '', 229, 0, '1', 11, '0', ''),
(2, 1, 'JsDtkOjH1TZ5R98BaL4P', '2021-12-07 11:23:38', 3, 3, '', 137, 0, '1', 2, '0', ''),
(3, 1, 'GdHzbPSQlL0D1coC5RBg', '2021-12-07 11:23:38', 1, 1, '', 278, 0, '1', 11, '0', ''),
(4, 1, 'bATmYUe7HE1ot85Zp9rz', '2021-12-07 11:23:38', 1, 1, '', 222, 0, '1', 1, '0', ''),
(5, 1, '0AY4Vb1Um9XCOq3hpc2Z', '2021-12-07 11:29:35', 5, 1, '', 166, 0, '1', 0, '1', ''),
(9, 1, 'dkOTDXKB2gYL8oRpwta9', '2021-12-08 16:29:00', 0, 0, '', 104, 0, '1', 0, '1', ''),
(6, 1, '1BDNyvFlBII', '2021-12-07 12:26:11', 4, 1, '', 143, 0, '1', 1, '4', 'TdrXixnVR9qlwH8LhBaO'),
(7, 1, 'dxC1aDgXiq9VcUS5YQ84', '2021-12-08 11:05:20', 3.66, 3, '', 133, 0, '1', 1, '2', ''),
(8, 1, 'PTZjqsKD35tLMAOSRxN6', '2021-12-08 14:41:04', 4.75, 4, '', 263, 0, '1', 1, '2', ''),
(10, 2, 'QgHst1ko9GZOd8RDUlFN', '2021-12-13 15:24:04', 0, 0, '', 43, 0, '1', 0, '0', ''),
(11, 3, 'k0y6tRFpHLCPAGDSfinV', '2022-02-05 17:03:36', 4.66, 3, '', 113, 0, '1', 2, '0', ''),
(12, 3, 'K8EPwJj0GMrqktlAOZ9x', '2022-02-05 17:03:37', 0, 0, '', 90, 0, '1', 0, '0', ''),
(14, 3, '7vuXdq2behTMYJRSwCzG', '2022-02-05 17:03:37', 3, 3, '', 113, 0, '1', 3, '0', ''),
(15, 3, 'tbFjliedRxrmnskQ0V7P', '2022-02-05 17:04:05', 4, 1, '', 97, 0, '1', 11, '0', ''),
(16, 3, '0HOY9X4ZRNbKQVMfzpAy', '2022-02-05 17:04:05', 1, 1, '', 100, 0, '1', 2, '0', ''),
(17, 3, 'dra16cG3bKTMX5tP0eDY', '2022-02-05 17:04:05', 3, 3, '', 90, 0, '1', 2, '0', ''),
(18, 3, 'JfNS10n5yrYZiRjOKwAM', '2022-02-05 17:04:05', 4, 2, '', 102, 0, '1', 3, '0', ''),
(19, 3, 'JYVA5rUujTyaZvCFGBXD', '2022-02-05 17:04:05', 3, 3, '', 105, 0, '1', 3, '0', ''),
(25, 1, 'DeitGbo9njZmRs7ETpcN', '2023-04-25 13:36:33', 2, 2, '', 6, 0, '1', 2, '0', ''),
(20, 1, 'OYGsoZRn6xfjiJh5v9Tc', '2022-02-11 17:14:08', 0, 0, '', 91, 0, '1', 0, '0', ''),
(21, 1, 'w3asthY0UMPNdKrlRC52', '2022-02-11 17:14:08', 2, 2, '', 88, 0, '1', 1, '0', ''),
(22, 1, 'GqELaMBgtKPeJYd19NV4', '2022-02-11 17:14:08', 4, 1, '', 90, 0, '1', 1, '0', ''),
(23, 1, 'mgX5H8Q1FUkTGbcn74Jo', '2022-02-11 17:14:08', 2, 2, '', 100, 0, '1', 3, '0', ''),
(24, 1, 'sS4YuJG6yZBzloPC8bmO', '2022-02-11 17:14:08', 1, 1, '', 93, 0, '1', 1, '0', ''),
(27, 47, 'fFwzkCQZ4K69YHvgOxhV', '2023-05-04 12:13:18', 5, 5, '', 500, 0, '1', 11, '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `content_exif`
--

CREATE TABLE `content_exif` (
  `id` int(1) NOT NULL,
  `photo_id` int(1) NOT NULL,
  `make` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `model` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `exposure` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `aperture` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `date` timestamp NULL DEFAULT NULL,
  `iso` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_exif`
--

INSERT INTO `content_exif` (`id`, `photo_id`, `make`, `model`, `exposure`, `aperture`, `date`, `iso`) VALUES
(1, 1, '', '', '', '', '0000-00-00 00:00:00', '0'),
(2, 2, '', '', '', '', '0000-00-00 00:00:00', '0'),
(3, 3, '', '', '', '', '0000-00-00 00:00:00', '0'),
(4, 4, '', '', '', '', '0000-00-00 00:00:00', '0'),
(5, 11, '', '', '', '', '0000-00-00 00:00:00', '0'),
(6, 12, 'NIKON CORPORATION', 'NIKON D3500', '1/100', 'f/5.6', '0000-00-00 00:00:00', 'Array'),
(7, 13, '', '', '', '', '0000-00-00 00:00:00', '0'),
(8, 14, '', '', '', '', '0000-00-00 00:00:00', '0'),
(9, 15, 'Canon', 'Canon PowerShot S5 IS', '10/10', 'f/3.5', '2014-09-23 03:46:28', '80'),
(10, 16, '', '', '', '', '0000-00-00 00:00:00', '0'),
(11, 17, '', '', '', '', '0000-00-00 00:00:00', '0'),
(12, 18, '', '', '', '', '0000-00-00 00:00:00', '0'),
(13, 19, '', '', '', '', '0000-00-00 00:00:00', '0'),
(14, 20, '', '', '', '', '0000-00-00 00:00:00', '0'),
(15, 21, '', '', '', '', '2009-03-12 13:46:42', '0'),
(16, 22, '', '', '', '', '0000-00-00 00:00:00', '0'),
(17, 23, '', '', '', '', '0000-00-00 00:00:00', '0'),
(18, 24, '', '', '', '', '0000-00-00 00:00:00', '0'),
(19, 25, '', '', '', '', '0000-00-00 00:00:00', '0'),
(20, 26, '', '', '', '', '0000-00-00 00:00:00', '0'),
(21, 27, '', '', '', '', '0000-00-00 00:00:00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `content_temp`
--

CREATE TABLE `content_temp` (
  `id` int(1) NOT NULL,
  `cid` int(1) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_temp`
--

INSERT INTO `content_temp` (`id`, `cid`, `data`, `user_id`) VALUES
(26, 27, '2023-05-04 12:13:18', 47);

-- --------------------------------------------------------

--
-- Table structure for table `contest`
--

CREATE TABLE `contest` (
  `id` int(1) NOT NULL,
  `active` int(1) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` varchar(500) CHARACTER SET utf8 NOT NULL,
  `end` datetime NOT NULL,
  `disable_countdown` int(1) NOT NULL DEFAULT 0,
  `paid` int(1) NOT NULL DEFAULT 0,
  `creator` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contest`
--

INSERT INTO `contest` (`id`, `active`, `title`, `description`, `end`, `disable_countdown`, `paid`, `creator`) VALUES
(10, 0, 'Contest Tesing 2', 'fsd', '2023-05-20 21:07:00', 0, 0, 0),
(8, 0, 'Contest Tesing 2', 'fsd', '2023-05-12 16:27:00', 0, 0, 0),
(9, 0, 'Contest Tesing 2', 'Contest testing', '2023-06-03 16:30:00', 0, 0, 0),
(11, 1, 'Creating new contest', 'Creating new contest', '2023-05-04 22:46:00', 0, 0, 46),
(6, 0, 'Contest Tesing', 'Contest testing', '2023-05-28 15:18:00', 0, 0, 46),
(7, 0, 'Testing', 'testin', '2023-05-20 15:58:00', 0, 0, 46),
(5, 0, 'Contest Tesing', 'Contest testing', '2025-12-01 22:48:00', 0, 0, 0),
(12, 1, 'Core php Testing', 'Core php Testing', '2023-05-04 22:45:00', 0, 0, 46),
(13, 1, 'Best photography', 'Best photography', '2023-05-06 16:33:00', 0, 0, 47);

-- --------------------------------------------------------

--
-- Table structure for table `contest_entry`
--

CREATE TABLE `contest_entry` (
  `id` int(10) NOT NULL,
  `contest_id` int(1) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp(),
  `paid` enum('0','1') NOT NULL DEFAULT '0',
  `user_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contest_prizes`
--

CREATE TABLE `contest_prizes` (
  `id` int(1) NOT NULL,
  `contest_id` int(1) NOT NULL DEFAULT 0,
  `prize` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `description` varchar(1000) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contest_prizes`
--

INSERT INTO `contest_prizes` (`id`, `contest_id`, `prize`, `description`) VALUES
(7, 3, '$200', ''),
(8, 2, 'N50,000', ''),
(9, 1, 'N10,000', ''),
(10, 5, 'Prize 1', 'iphone 14 Pro'),
(11, 9, 'dsd', 'sdasd'),
(12, 11, '$1000', '');

-- --------------------------------------------------------

--
-- Table structure for table `contest_rules`
--

CREATE TABLE `contest_rules` (
  `id` int(1) NOT NULL,
  `contest_id` int(1) NOT NULL DEFAULT 0,
  `rule` varchar(250) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contest_rules`
--

INSERT INTO `contest_rules` (`id`, `contest_id`, `rule`) VALUES
(5, 2, 'Be flexible. Everything is welcome!'),
(6, 1, 'No cheating');

-- --------------------------------------------------------

--
-- Table structure for table `meta_tags`
--

CREATE TABLE `meta_tags` (
  `id` int(1) NOT NULL,
  `page` varchar(20) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `description` varchar(2000) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `keywords` varchar(2000) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meta_tags`
--

INSERT INTO `meta_tags` (`id`, `page`, `title`, `description`, `keywords`) VALUES
(1, 'home', 'Giveaway NG', 'First Giveaway Platform For Nigerians', 'giveaway,naija,contest,contests,free,free money,'),
(2, 'contest', 'Giveaway Contests Nigeria', 'Giveaway Contests Nigeria', 'Giveaway,Contests,Nigeria,Free,Free money'),
(3, 'ranking', 'Giveaway Contest Rangings', 'Giveaway Contest Rangings', 'Giveaway,Contests,Nigeria,Free,Free money'),
(4, 'profile', 'Giveaway Contests User Profile', 'Giveaway Contests User Profile', 'Giveaway,Contests,Nigeria,Free,Free money'),
(5, 'post', 'Giveaway Contests Post', 'Giveaway Contests Post', 'Giveaway,Giveaways,Contests,Posts');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(1) NOT NULL,
  `footer` int(1) NOT NULL DEFAULT 1,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `url` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `content` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `footer`, `title`, `url`, `content`) VALUES
(1, 1, 'Terms and Conditions', '', '&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;1. Introduction&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;1.1 These rules apply to all contests, and giveaways that are promoted on and run through this website and/or social media channels.&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;1.2 To enter a contest, you must enter based on directives of contest owner/creator.&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;1.3 Our competitions are free to enter (no purchase required, unless otherwise stated).&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;span lang=&quot;en-GB&quot;&gt;1.4 Promotions on social media are in no way sponsored, endorsed or administered by, or associated with, Facebook, Twitter, Google Plus, Instagram, LinkedIn or any other social network. You are providing your information to Bullion Technology Solutions, the parent company of ContestNG and not to any other party. The information provided will be used in conjunction with our&amp;nbsp;&lt;a href=&quot;https://giveawayng.com/index.php?extra_page=2&quot; target=&quot;_blank&quot;&gt;Privacy Policy&lt;/a&gt;&lt;a href=&quot;https://www.my31practices.com/privacy/&quot; style=&quot;color: rgb(167, 21, 21); text-decoration-line: none;&quot;&gt;&lt;/a&gt;.&lt;/span&gt;&lt;span style=&quot;font-size: xx-small;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;span lang=&quot;en-GB&quot;&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;span lang=&quot;en-GB&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;2. Eligibility and entry restrictions&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;2.1 To be eligible to enter a competition:&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(a) entrants must be a real person, at least 18 years old and permanently reside in Nigeria or other country (proof of address or age may be required)&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(b) entrants must not be our employee, officer or agent, or an employee, officer or agent of any person or organization involved in the running of the competition, and you must not be a family relation of any such person.&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(c) Giveaway contests entrants for our promotions on social media must have a genuine account.&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;2.2 The maximum number of entries to a competition per person is 1.&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;3. Start and closing dates&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;3.1 A giveaway contest shall open for entries at the time and on the date specified on our website and/or social media channels, and similarly, shall close to entries at the time and on the date specified on our website and/or social media channels. Unless otherwise stated, these times and dates are set to those for UTC (Co-ordinated Universal Time).&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;3.2 Any entries received before the opening or after the closing of the competition will be invalid and will not be entered into the competition.&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;span lang=&quot;en-GB&quot;&gt;3.3 No responsibility can be accepted for entries not received for whatever reason.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;3.4&amp;nbsp;&lt;span lang=&quot;en-GB&quot;&gt;We reserve the right to amend these terms and conditions without notice in the event of a catastrophe, war, civil or military disturbance, act of God or any actual or anticipated breach of any applicable law or regulation or any other event outside of our control.&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;span lang=&quot;en-GB&quot;&gt;3.5&amp;nbsp;&lt;/span&gt;Entry into any giveaway contest will be deemed as acceptance of all of these terms and conditions.&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;4. Judging&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;4.1 Contest entries shall be judged or winners selected on the basis of those criteria specified by contest creators.&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;4.2 If a competition entrant does not meet the eligibility requirements or is subject to any entry restrictions, that entrant shall not be entitled to be adjudged a winner by the contest creator.&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;4.5 All contests are going to be judged by rules created by contest owners/creators&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;4.6 The competition and these terms and conditions will be governed by laws of the Federal Republic of Nigeria and any disputes will be subject to the exclusive jurisdiction of the courts of Nigeria.&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;5. Copyright and moral rights&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;5.1 You warrant to us that you created your competition entries, that you own all of the copyright in those entries, and that your use of the entries in accordance with the rules will not infringe any person\'s intellectual property rights or other legal rights.&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;5.2 You grant to us an exclusive, worldwide, royalty-free, perpetual and irrevocable license to copy, store, edit, distribute, transmit and publish your competition entries.&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;7. What happens to entries?&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;7.1 Contest entries will be deleted after a&amp;nbsp; certain time, not earlier than 6 months.&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;8. Publicity&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;8.1 We may undertake publicity activities relating to competitions and prize awards. The winner therefore agrees to the use of their name, photograph and disclosure of town or region of residence in any post-prize-winning publicity names, surnames, towns or regions of residence and prize details.&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;span lang=&quot;en-GB&quot;&gt;8.2 All other personal details collected as part of the competition will be used in conjunction with our&amp;nbsp;&lt;a href=&quot;https://giveawayng.com/index.php?extra_page=2&quot; target=&quot;_blank&quot;&gt;Privacy Policy&lt;/a&gt;&lt;a href=&quot;https://www.my31practices.com/privacy/&quot; style=&quot;color: rgb(167, 21, 21); text-decoration-line: none;&quot;&gt;&lt;/a&gt;.&lt;/span&gt;&lt;span style=&quot;font-size: xx-small;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;span lang=&quot;en-GB&quot;&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;&lt;br&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;9. Our details&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;span lang=&quot;en-GB&quot;&gt;9.1 Contests are run by&amp;nbsp;&lt;/span&gt;&lt;span lang=&quot;en-GB&quot;&gt;&lt;em&gt;ContestNG, with the service provided by BULLION TECHNOLOGY SOLUTIONS.&lt;/em&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;span lang=&quot;en-GB&quot;&gt;9.2 Our registered office is&amp;nbsp;&lt;/span&gt;&lt;em&gt;1, Ashabi Cole Street, Ikeja, Lagos, Nigeria&lt;/em&gt;&lt;span lang=&quot;en-GB&quot;&gt;&lt;em&gt;.&lt;/em&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;9.3 You can contact us:&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(a) by post, using the postal address given above;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(b) using our website contact form;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;span lang=&quot;en-GB&quot;&gt;(c) by telephone, on&amp;nbsp;&lt;/span&gt;&lt;em&gt;+234 813 970 4398.&lt;/em&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;span lang=&quot;en-GB&quot;&gt;(d) by email, using the email address&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;mailto:info@giveawayng.com&quot; target=&quot;_blank&quot;&gt;info@giveawayng.com&lt;/a&gt;&lt;span style=&quot;color: rgb(5, 99, 193);&quot;&gt;&lt;u&gt;&lt;a href=&quot;mailto:info@my31practices.com&quot; style=&quot;color: rgb(167, 21, 21); text-decoration-line: none;&quot;&gt;&lt;span lang=&quot;en-GB&quot;&gt;&lt;/span&gt;&lt;/a&gt;&lt;/u&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(e) by direct message on our social media channels.&lt;/span&gt;&lt;/div&gt;');
INSERT INTO `pages` (`id`, `footer`, `title`, `url`, `content`) VALUES
(2, 1, 'Privacy Policy', '', '&lt;section id=&quot;content_wrap&quot; class=&quot;clearfix&quot; style=&quot;&quot;&gt;&lt;div class=&quot;inner&quot; style=&quot;width: 960px; margin-right: auto; margin-left: auto;&quot;&gt;&lt;article id=&quot;main&quot; style=&quot;width: 655px; max-width: 655px; min-width: 300px; float: left; padding-top: 10px; padding-bottom: 30px; position: relative; min-height: 260px;&quot;&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;1. Introduction&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;1.1 We are committed to safeguarding the privacy of our website visitors; in this policy we explain how we will treat your personal information.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;1.2 By using our website and agreeing to this policy, you consent to our use of cookies in accordance with the terms of this policy.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;2. Collecting personal information&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;2.1 We may collect, store and use the following kinds of personal information:&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(a) information about your computer and about your visits to and use of this website including your IP address, geographical location, browser type and version, operating system, referral source, length of visit, page views and website navigation paths;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(b) information that you provide to us when registering with our website (including your name and email address);&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(c) information that you provide when completing your profile on our website (including your name, profile pictures, gender, date of birth, relationship status, interests and hobbies, thoughts, values and prompts, educational details and employment details);&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(d) information that you provide to us for the purpose of subscribing to our email notifications and/or newsletters (including your name and email address);&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(e) information that you provide to us when using the services on our website, or that is generated in the course of the use of those services (including the timing, frequency and pattern of service use);&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(f) information relating to any purchases you make of our goods or services or any other transactions that you enter into through our website (including your name, address, telephone number, email address and card details);&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(g) information that you post to our website for publication on the internet e.g. public posting via blog comments (including your user name, your profile pictures and the content of your posts);&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(h) information contained in or relating to any communication that you send to us or send through our website (including the communication content and metadata associated with the communication);&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(i) any other personal information that you choose to send to us.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;2.2 Before you disclose to us the personal information of another person, you must obtain that person\'s consent to both the disclosure and the processing of that personal information in accordance with this policy.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;3. Using personal information&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;3.1 Personal information submitted to us through our website will be used for the purposes specified in this policy or on the relevant pages of the website.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;3.2 We may use your personal information to:&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(a) administer our website and business;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(b) personalize our website for you;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(c) enable your use of the services available on our website;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(d) send you items purchased through our website;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(e) supply to you services purchased through our website;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(f) send statements, invoices and payment reminders to you, and collect payments from you;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(g) send you non-marketing commercial communications;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(h) send you daily email notifications about your contests;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(i) send you our email newsletter, if you have requested it (you can inform us at any time if you no longer require the newsletter);&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(j) send you marketing communications relating to our business or the businesses of carefully-selected third parties which we think may be of interest to you, by post or, where you have specifically agreed to this, by email or similar technology (you can inform us at any time if you no longer require marketing communications);&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(k) provide third parties with statistical information about our users (but those third parties will not be able to identify any individual user from that information);&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(l) deal with enquiries and complaints made by or about you relating to our website;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(m) keep our website secure and prevent fraud;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(n) verify compliance with the terms and conditions governing the use of our website;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;3.3 If you submit personal information for publication on our website, we will publish and otherwise use that information in accordance with the license you grant to us.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;3.4 Your privacy settings can be used to limit the publication of your information on our website, and can be adjusted using privacy controls on the website.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;3.5 We will not, without your express consent, supply your personal information to any third party for the purpose of their or any other third party\'s direct marketing&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;&quot;&gt;&lt;font color=&quot;#353535&quot; face=&quot;Verdana&quot; size=&quot;2&quot;&gt;3.6 All our website financial transactions are handled through our payment services provider,&amp;nbsp;&lt;/font&gt;&lt;em style=&quot;color: rgb(53, 53, 53); font-family: Verdana; font-size: small;&quot;&gt;Paystack&lt;/em&gt;&lt;font color=&quot;#353535&quot; face=&quot;Verdana&quot; size=&quot;2&quot;&gt;. You can review the provider\'s privacy policy at &lt;/font&gt;&lt;font color=&quot;#a71515&quot; face=&quot;Verdana&quot; size=&quot;2&quot;&gt;https://paystack.com/terms&lt;/font&gt;&lt;font color=&quot;#353535&quot; face=&quot;Verdana&quot; size=&quot;2&quot;&gt;. We will share information with our payment services provider only to the extent necessary for the purposes of processing payments you make via our website, refunding such payments and dealing with complaints and queries relating to such payments and refunds.&lt;/font&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;4. Disclosing personal information&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;4.1 We may disclose your personal information to any of our employees, officers, insurers, professional advisers, agents, suppliers or subcontractors insofar as reasonably necessary for the purposes set out in this policy.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;4.2 We may disclose your personal information to any member of our group of companies (this means our subsidiaries, our ultimate holding company and all its subsidiaries) insofar as reasonably necessary for the purposes set out in this policy.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;4.3 We may disclose your personal information:&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(a) to the extent that we are required to do so by law;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(b) in connection with any ongoing or prospective legal proceedings;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(c) in order to establish, exercise or defend our legal rights (including providing information to others for the purposes of fraud prevention and reducing credit risk);&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(d) to the purchaser (or prospective purchaser) of any business or asset that we are (or are contemplating) selling; and&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(e) to any person who we reasonably believe may apply to a court or other competent authority for disclosure of that personal information where, in our reasonable opinion, such court or authority would be reasonably likely to order disclosure of that personal information.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;4.4 Except as provided in this policy, we will not provide your personal information to third parties.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;5. International data transfers&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;5.1 Information that we collect may be stored and processed in and transferred between any of the countries in which we operate in order to enable us to use the information in accordance with this policy.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;5.2 Information that we collect may be transferred to the following countries which do not have data protection laws equivalent to those in force in the European Economic Area: The United States of America, Russia, Japan, China and India.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;5.3 Personal information that you publish on our website or submit for publication on our website may be available, via the internet, around the world. We cannot prevent the use or misuse of such information by others.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;5.4 You expressly agree to the transfers of personal information described in this Section 5.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;6. Retaining personal information&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;6.1 This Section 6 sets out our data retention policies and procedure, which are designed to help ensure that we comply with our legal obligations in relation to the retention and deletion of personal information.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;6.2 Personal information that we process for any purpose or purposes shall not be kept for longer than is necessary for that purpose or those purposes. When you cease your ContestNG registration, your personal information will be retained until the next deletion cycle(usually not more than six months) at which time this information will be permanently deleted from our systems.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;6.3 Notwithstanding the other provisions of this Section 6, we will retain documents (including electronic documents) containing personal data:&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(a) to the extent that we are required to do so by law;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(b) if we believe that the documents may be relevant to any ongoing or prospective legal proceedings; and&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(c) in order to establish, exercise or defend our legal rights (including providing information to others for the purposes of fraud prevention and reducing credit risk).&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;7. Security of personal information&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;7.1 We will take reasonable technical and organisational precautions to prevent the loss, misuse or alteration of your personal information.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;7.2 We will store all the personal information you provide on our secure (password- and firewall-protected) servers.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;7.3 All electronic financial transactions entered into through our website will be protected by encryption technology.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;7.4 You acknowledge that the transmission of information over the internet is inherently insecure, and we cannot guarantee the security of data sent over the internet.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;7.5 You are responsible for keeping the password you use for accessing our website confidential; we will not ask you for your password (except when you log in to our website).&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;8. Amendments&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;8.1 We may update this policy from time to time by publishing a new version on our website.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;8.2 You should check this page occasionally to ensure you are happy with any changes to this policy.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;8.3 We may notify you of changes to this policy by email.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;9. Your rights&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;9.1 You may instruct us to provide you with any personal information we hold about you; provision of such information will be subject to:&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(a) the payment of a fee (currently fixed at GBP 10); and&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(b) the supply of appropriate evidence of your identity (for this purpose, we will usually accept a photocopy of your passport certified by a solicitor or bank plus an original copy of a utility bill showing your current address).&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;9.2 We may withhold personal information that you request to the extent permitted by law.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;9.3 You may instruct us at any time not to process your personal information for marketing purposes.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;9.4 In practice, you will usually either expressly agree in advance to our use of your personal information for marketing purposes, or we will provide you with an opportunity to opt out of the use of your personal information for marketing purposes.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;10. Third party websites&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;10.1 Our website includes hyperlinks to, and details of, third party websites.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;10.2 We have no control over, and are not responsible for, the privacy policies and practices of third parties.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;11. Updating information&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;11.1 Please let us know if the personal information that we hold about you needs to be corrected or updated.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;12. Cookies&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;12.1 Our website uses cookies.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;12.2 A cookie is a file containing an identifier (a string of letters and numbers) that is sent by a web server to a web browser and is stored by the browser. The identifier is then sent back to the server each time the browser requests a page from the server.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;12.3 Cookies may be either &quot;persistent&quot; cookies or &quot;session&quot; cookies: a persistent cookie will be stored by a web browser and will remain valid until its set expiry date, unless deleted by the user before the expiry date; a session cookie, on the other hand, will expire at the end of the user session, when the web browser is closed.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;12.4 Cookies do not typically contain any information that personally identifies a user, but personal information that we store about you may be linked to the information stored in and obtained from cookies.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;12.5 We use both session and persistent cookies on our website.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;12.6 The names of the cookies that we use on our website, and the purposes for which they are used, are set out below:&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(a) we use&amp;nbsp;&lt;em&gt;first party&lt;/em&gt;&amp;nbsp;and&lt;em&gt;&amp;nbsp;third party cookies&lt;/em&gt;&amp;nbsp;and&lt;em&gt;&amp;nbsp;third party requests&lt;/em&gt;&amp;nbsp;on our website to either recognise a computer when a user visits the website; track users as they navigate the website; enable the use of a shopping cart on the website; improve the website\'s usability; analyse the use of the website; administer the website; prevent fraud and improve the security of the website; personalise the website for each user or target advertisements which may be of particular interest to specific users;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;12.7 Most browsers allow you to refuse to accept cookies; for example:&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(a) in Internet Explorer (version 11) you can block cookies using the cookie handling override settings available by clicking &quot;Tools&quot;, &quot;Internet Options&quot;, &quot;Privacy&quot; and then &quot;Advanced&quot;;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(b) in Firefox (version 39) you can block all cookies by clicking &quot;Tools&quot;, &quot;Options&quot;, &quot;Privacy&quot;, selecting &quot;Use custom settings for history&quot; from the drop-down menu, and unticking &quot;Accept cookies from sites&quot;; and&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(c) in Chrome (version 44), you can block all cookies by accessing the &quot;Customise and control&quot; menu, and clicking &quot;Settings&quot;, &quot;Show advanced settings&quot; and &quot;Content settings&quot;, and then selecting &quot;Block sites from setting any data&quot; under the &quot;Cookies&quot; heading.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;12.8 Blocking all cookies will have a negative impact upon the usability of many websites.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;12.9 If you block cookies, you will not be able to use all the features on our website.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;12.10 You can delete cookies already stored on your computer; for example:&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(a) in Internet Explorer (version 11), you must manually delete cookie files (you can find instructions for doing so at&amp;nbsp;&lt;a href=&quot;http://windows.microsoft.com/en-gb/internet-explorer/delete-manage-cookies#ie=ie-11&quot; style=&quot;color: rgb(167, 21, 21); text-decoration-line: none;&quot;&gt;http://windows.microsoft.com/en-gb/internet-explorer/delete-manage-cookies#ie=ie-11&lt;/a&gt;);&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(b) in Firefox (version 39), you can delete cookies by clicking &quot;Tools&quot;, &quot;Options&quot; and &quot;Privacy&quot;, then selecting &quot;Use custom settings for history&quot; from the drop-down menu, clicking &quot;Show Cookies&quot;, and then clicking &quot;Remove All Cookies&quot;; and&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;(c) in Chrome (version 44), you can delete all cookies by accessing the &quot;Customise and control&quot; menu, and clicking &quot;Settings&quot;, &quot;Show advanced settings&quot; and &quot;Clear browsing data&quot;, and then selecting &quot;Cookies and other site and plug-in data&quot; before clicking &quot;Clear browsing data&quot;.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;12.11 Deleting cookies will have a negative impact on the usability of many websites.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&lt;strong&gt;13. Our details&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;14.1&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span lang=&quot;en-GB&quot; style=&quot;font-size: small; box-sizing: border-box; appearance: none; outline: none; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; background-color: rgb(247, 247, 247);&quot;&gt;Contests are serviced by&amp;nbsp;&lt;/span&gt;&lt;span lang=&quot;en-GB&quot; style=&quot;font-size: small; box-sizing: border-box; appearance: none; outline: none; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; background-color: rgb(247, 247, 247);&quot;&gt;&lt;em style=&quot;box-sizing: border-box; appearance: none; outline: none;&quot;&gt;ContestNG, with the service provided by BULLION TECHNOLOGY SOLUTIONS.&lt;/em&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;14.2&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span lang=&quot;en-GB&quot; style=&quot;box-sizing: border-box; appearance: none; outline: none; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: small; background-color: rgb(247, 247, 247);&quot;&gt;Our registered office is&amp;nbsp;&lt;/span&gt;&lt;em style=&quot;box-sizing: border-box; appearance: none; outline: none; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: small; background-color: rgb(247, 247, 247);&quot;&gt;1, Ashabi Cole Street, Ikeja, Lagos, Nigeria&lt;/em&gt;&lt;span lang=&quot;en-GB&quot; style=&quot;box-sizing: border-box; appearance: none; outline: none; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: small; background-color: rgb(247, 247, 247);&quot;&gt;&lt;em style=&quot;box-sizing: border-box; appearance: none; outline: none;&quot;&gt;.&lt;/em&gt;&lt;/span&gt;&lt;span style=&quot;font-size: small; font-family: Verdana;&quot;&gt;.&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;14.3 Our principal place of business is at the address above.&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;color: rgb(53, 53, 53); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; font-size: 13px;&quot;&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;14.4 You can contact us by writing to the business address given above, by using our website contact form, by email to&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;u style=&quot;box-sizing: border-box; appearance: none; outline: none; color: rgb(5, 99, 193); font-family: Roboto, sans-serif; font-size: small; background-color: rgb(247, 247, 247);&quot;&gt;&lt;a href=&quot;mailto:info@my31practices.com&quot; style=&quot;box-sizing: border-box; appearance: none; outline: none; color: rgb(167, 21, 21); text-decoration-line: none;&quot;&gt;&lt;span lang=&quot;en-GB&quot; style=&quot;box-sizing: border-box; appearance: none; outline: none;&quot;&gt;info@giveawayng.com&lt;/span&gt;&lt;/a&gt;&lt;/u&gt;&lt;span style=&quot;font-family: Verdana;&quot;&gt;&lt;span style=&quot;font-size: small;&quot;&gt;&amp;nbsp;or by telephone on&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;em style=&quot;box-sizing: border-box; appearance: none; outline: none; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: small; background-color: rgb(247, 247, 247);&quot;&gt;+234 813 970 4398.&lt;/em&gt;&lt;/div&gt;&lt;/article&gt;&lt;/div&gt;&lt;/section&gt;'),
(3, 1, 'HomePage', '', '    &lt;section class=&quot;u-align-center u-clearfix u-image u-shading u-section-2&quot; src=&quot;&quot; data-image-width=&quot;256&quot; data-image-height=&quot;256&quot; id=&quot;sec-0502&quot;&gt;\r\n      &lt;div class=&quot;u-clearfix u-sheet u-valign-middle u-sheet-1&quot;&gt;\r\n        &lt;h1 class=&quot;u-text u-text-default u-title u-text-1&quot;&gt;WELCOME&amp;nbsp;&lt;/h1&gt;\r\n        &lt;div&gt;\r\n          &lt;a href=&quot;https://giveawayng.com&quot; class=&quot;u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-1&quot;&gt;Giveaway NG&lt;/a&gt;&amp;nbsp;is is the first giveaway portal in Nigeria, where you can search for existing giveaway contests and join as much as you want, thereby standing a chance to win multiple prizes from multiple giveaways.&lt;br&gt;To Join and Win a Giveaway is simple!&amp;nbsp;&lt;a href=&quot;https://giveawayng.com/index.php&quot; class=&quot;u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-2&quot;&gt;Register,&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://giveawayng.com/index.php?contests=1&quot; class=&quot;u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-3&quot;&gt;Join Giveaway Contests,&amp;nbsp;&lt;/a&gt;\r\n          &lt;a href=&quot;https://giveawayng.com/index.php?contests=1&quot; class=&quot;u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-4&quot; target=&quot;_blank&quot;&gt;Follow the rules from the giveaway owner,&amp;nbsp;&lt;/a&gt;\r\n          &lt;a href=&quot;https://giveawayng.com/index.php?contests=1&quot; class=&quot;u-active-none u-border-none u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-1-base u-btn-5&quot;&gt;WIN!&lt;/a&gt; It\'s as simple as that!&lt;br&gt;\r\n        &lt;/div&gt;\r\n        &lt;a href=&quot;https://giveawayng.com/index.php?contests=1&quot; class=&quot;u-btn u-button-style u-palette-2-base u-btn-6&quot;&gt;VIEW ALL GIVEAWAYS&lt;/a&gt;\r\n      &lt;/div&gt;\r\n    &lt;/section&gt;\r\n    \r\n    \r\n    \r\n    &lt;section class=&quot;u-backlink u-clearfix u-grey-80&quot;&gt;&lt;br&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;\r\n      &lt;br&gt;&lt;/section&gt;\r\n  \r\n');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `item_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(1) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `item_number`, `txn_id`, `payment_gross`, `currency_code`, `payment_status`, `userid`, `date`) VALUES
(1, '7', '795955282', 1000.00, 'USD', 'Open', 46, '2023-05-03 11:39:18'),
(2, '11', '878499346', 1000.00, 'USD', 'Open', 46, '2023-05-03 11:42:15'),
(3, '7', '132438340', 1000.00, 'USD', 'Open', 46, '2023-05-03 12:02:28'),
(4, '1', 'f9d26375fc325a951fbe48dee5f9d15c', 200.00, 'USD', 'Open', 46, '2023-05-04 10:27:13'),
(5, '1', '6075bae7db267d716268a0b2bc52ce60', 200.00, 'USD', 'Open', 46, '2023-05-04 10:27:42'),
(6, '1', '7efaa1f5c935f667d32ae68a2d60e67c', 200.00, 'USD', 'Open', 46, '2023-05-04 10:28:48'),
(7, '1', '901def4720d6eca920a097f40c1caa51', 200.00, 'USD', 'Open', 46, '2023-05-04 10:29:25'),
(8, '2', 'c677f4f19618109658b34dc65afc7a2e', 10.00, 'USD', 'Open', 46, '2023-05-04 10:34:20'),
(9, '2', 'e5a54f093f004519987b8d44b8a1700d', 10.00, 'USD', 'Open', 46, '2023-05-04 10:35:05'),
(10, '12', '763402590', 1000.00, 'USD', 'Open', 46, '2023-05-04 11:21:29'),
(11, '2', 'a8abda873af0cb3fbf5e3de6ff18f8f1', 10.00, 'USD', 'Open', 46, '2023-05-04 11:46:57'),
(12, '2', 'b130b80b01a237b0c9cd24221aee9eb8', 10.00, 'USD', 'Open', 47, '2023-05-04 12:13:54'),
(13, '2', '2a142db5658e2fdd20946011e244995e', 10.00, 'USD', 'Open', 47, '2023-05-05 11:02:47'),
(14, '13', 'ada6a934df3bef3ec6e4f0906ffa7353', 1000.00, 'USD', 'Open', 47, '2023-05-05 11:13:25'),
(15, '13', '27cd6eb38677e86dc605fab31058c4d9', 1000.00, 'USD', 'Open', 47, '2023-05-05 11:14:18'),
(16, '13', 'd60e5eec78edab126d1d50b8df284412', 1000.00, 'USD', 'Open', 47, '2023-05-05 11:22:21'),
(17, '13', 'e6e84daaa78c0121f95a703b43d9bb3e', 1000.00, 'USD', 'Open', 47, '2023-05-05 11:24:05'),
(18, '13', '89eca0ab5118d8a314259a81e541a260', 1000.00, 'USD', 'Open', 47, '2023-05-05 11:25:13'),
(19, '13', 'ff23aa32d4b4956dfbd83599408b1e89', 1000.00, 'USD', 'Open', 47, '2023-05-05 11:54:50'),
(20, '13', '87b52aeec398d40974543dd1e7a55804', 1000.00, 'USD', 'Open', 47, '2023-05-05 11:54:56'),
(21, '13', 'a512fe029027b272fea1a4407a753f3d', 1000.00, 'USD', 'Open', 47, '2023-05-05 11:55:19'),
(22, '13', '4442502bc2a53ffa9763be428b2623a9', 1000.00, 'USD', 'Open', 47, '2023-05-05 11:55:42'),
(23, '13', 'b6d4cc15aa6aae11349d1ede3cf77123', 1000.00, 'USD', 'Open', 47, '2023-05-05 12:11:08'),
(24, '13', 'db5c1068f8955ff0c121d8a185586a34', 1000.00, 'USD', 'Open', 47, '2023-05-05 12:12:21'),
(25, '13', 'f88acc5b1b82d501180c7447112ad977', 1000.00, 'USD', 'Open', 47, '2023-05-05 12:14:22'),
(26, '13', '0bfa70291bc520db2f2f7b0da8ef4b75', 1000.00, 'PAYPA', 'Open', 47, '2023-05-05 12:14:48'),
(27, '13', '675a23f8ad2064661e4dfde95e91d51a', 1000.00, 'PAYPA', 'Open', 47, '2023-05-05 12:15:54'),
(28, '13', '319bd5730076e5ef899c918740e9b0df', 1000.00, 'USD', 'Open', 47, '2023-05-05 12:16:14'),
(29, '2', '8775122d105304947f848540f1ef69eb', 10.00, 'USD', 'Open', 47, '2023-05-05 12:16:40'),
(30, '2', '531d38de9a010c23de878fcbe90bf3de', 10.00, 'USD', 'Open', 47, '2023-05-05 12:18:21'),
(31, '2', '766ae71d88db5640a22d309828cff764', 10.00, 'USD', 'Open', 47, '2023-05-05 12:19:24'),
(32, '2', 'b98435690c87bb496f62b37d2964e761', 10.00, 'USD', 'Open', 47, '2023-05-05 12:21:56'),
(33, '2', 'b98435690c87bb496f62b37d2964e761', 10.00, 'USD', 'Open', 47, '2023-05-05 12:21:56'),
(34, '1', 'f6075103f59da1f9e51930a08d50fbf8', 200.00, 'USD', 'Open', 47, '2023-05-05 12:22:07'),
(35, '1', 'f6075103f59da1f9e51930a08d50fbf8', 200.00, 'USD', 'Open', 47, '2023-05-05 12:22:07'),
(36, '1', '4d7cb9d421808f7f220fce742edeceb1', 200.00, 'USD', 'Open', 47, '2023-05-05 12:23:35'),
(37, '1', '4d7cb9d421808f7f220fce742edeceb1', 200.00, 'USD', 'Open', 47, '2023-05-05 12:23:35');

-- --------------------------------------------------------

--
-- Table structure for table `payments_items`
--

CREATE TABLE `payments_items` (
  `id` int(1) NOT NULL,
  `item_name` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `votes` int(1) NOT NULL DEFAULT 0,
  `views` int(1) NOT NULL DEFAULT 0,
  `price` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments_items`
--

INSERT INTO `payments_items` (`id`, `item_name`, `votes`, `views`, `price`) VALUES
(1, 'Plan 1', 1000, 5000, 200),
(2, 'Plan 2', 500, 1000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(1) NOT NULL,
  `iduser` int(1) NOT NULL DEFAULT 0,
  `rate` tinyint(1) NOT NULL DEFAULT 0,
  `ip` varchar(14) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `photo_id` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `iduser`, `rate`, `ip`, `date`, `photo_id`) VALUES
(1, 0, 1, '::1000', '2023-05-04 17:12:13', 27),
(2, 0, 1, '::188', '2023-05-04 17:12:44', 27),
(3, 0, 1, '::1', '2023-05-04 17:13:05', 27),
(4, 0, 1, '::1', '2023-05-04 17:17:45', 3),
(5, 0, 1, '::1', '2023-05-04 17:17:47', 1),
(6, 0, 1, '::1', '2023-05-04 17:17:49', 16);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(1) NOT NULL,
  `set_key` varchar(50) NOT NULL,
  `set_value` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `set_key`, `set_value`) VALUES
(1, 'category_required', '0'),
(2, 'photos_per_page', '30'),
(3, 'site_url', 'http://localhost/giveaway/'),
(4, 'photo_approval', '0'),
(5, 'site_logo', 'GiveawayNG'),
(6, 'photo_sidebar', '0'),
(7, 'site_theme', 'blue'),
(8, 'home_header', '1'),
(9, 'preloader', '1'),
(10, 'admin_user', 'admin'),
(11, 'admin_pass', '8440e2ef557d66c5bdfed3ea45672097df99850921d04b10f43dfde47199ee581772a7aa6da1430dd59087710c63dcd2f8f1aeebee421f3da7c43f51fa346250'),
(12, 'fb_appid', ''),
(13, 'max_uploadsize', '5'),
(14, 'max_files', '5'),
(15, 'photo_comments', '1'),
(16, 'hide_user_photo', '0'),
(17, 'display_exif', '0'),
(18, 'allow_description', '1'),
(19, 'ranking_page_large', '0'),
(20, 'random_photo', '1'),
(21, 'visitors_rate', '1'),
(22, 'min_votes', '0'),
(23, 'random_page', '0'),
(24, 'platform_version', '1.7.0'),
(25, 'vote_own', '1'),
(26, 'description_links', '0'),
(27, 'disable_register', '0'),
(28, 'display_thumb_rate', '1'),
(29, 'comments_review', '1'),
(30, 'site_email', 'info@giveawayng.com'),
(31, 'display_related', '1'),
(32, 'upload_music', '1'),
(33, 'upload_video', '1'),
(34, 'content_category', '0'),
(35, 'content_ratemode', '1'),
(36, 'confirm_mail', '1'),
(37, 'content_ffmpeg', '1'),
(38, 'redirect_ssl', '1'),
(39, 'uploader', '0'),
(40, 'youtube', '1'),
(41, 'rtl', '0'),
(42, 'user_contest_price', '1000'),
(43, 'allow_user_contests', '1'),
(44, 'contest_entry_fee', ''),
(45, 'contact_page', '1'),
(47, 'site_logo_image', '_img/logo.png'),
(48, 'smtp_host', 'sandbox.smtp.mailtrap.io'),
(49, 'smtp_user', 'anandsingh678970@gmail.com'),
(50, 'smtp_pass', '70131a6cdbc0d1'),
(51, 'smtp_port', '2525'),
(52, 'smtp_ssl', '0'),
(53, 'razorpay_api', 'sk_test_d6a9109f524e76735b8b8a522f3dc8dafb9135f1'),
(54, 'razorpay_secret', 'pk_test_cb8c70f996e3dc0206ac3284ba209603d22b74f2'),
(55, 'payment_gateway', 'paystack'),
(56, 'paypal_email', 'ade.oluwaleade@gmail.com'),
(57, 'paypal_currency', 'USD'),
(58, 'paystack_public_key', 'pk_test_8be92ecbb6cbca47bdbb7c68dba3765d5e472106');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `password` varchar(128) NOT NULL DEFAULT '',
  `user` varchar(30) NOT NULL DEFAULT '',
  `registered` timestamp NOT NULL DEFAULT current_timestamp(),
  `category` int(1) NOT NULL DEFAULT 0,
  `slogan` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `profile_picture` varchar(50) NOT NULL DEFAULT '',
  `fb_id` bigint(64) NOT NULL DEFAULT 0,
  `confirmed` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `user`, `registered`, `category`, `slogan`, `profile_picture`, `fb_id`, `confirmed`) VALUES
(1, 'adeoluoluwale@gmail.com', 'Adeolu Oluwale', '8440e2ef557d66c5bdfed3ea45672097df99850921d04b10f43dfde47199ee581772a7aa6da1430dd59087710c63dcd2f8f1aeebee421f3da7c43f51fa346250', 'adeoluoluwale', '2021-12-07 10:37:10', 0, 'Badass Nigga', '', 0, 1),
(2, 'faizifaizan85@gmail.com', 'Faizan Pervaiz', 'fa585d89c851dd338a70dcf535aa2a92fee7836dd6aff1226583e88e0996293f16bc009c652826e0fc5c706695a03cddce372f139eff4d13959da6f1f5d3eabe', 'faizanpervaiz', '2021-12-13 15:23:25', 0, '', '', 0, 1),
(3, 'ade.oluwaleade@gmail.com', 'Ade Olu', '7df18b45d1d19b6194aef483b0c6d376f9a3cc925f2a919aac149e32d11a1665233ee835942fe9a01b3b012f82d9760d4be148e35ea109085a3fe49a86e153a2', 'adeolu1', '2022-02-05 16:59:20', 0, '', '', 0, 1),
(53, 'anandsingh678970@gmail.com', 'anandsingh678970@gmail.com', '2470c00ca10bb63674efacc7bac15995dedc237fef1f911c65ece9a5e98b5464805f9235aeaf6b412467476034fe6b3ce5c6784d11565a6b00a873675e8909de', 'anandsingh678970gmailcom', '2023-05-05 10:55:12', 0, '', '', 0, 0),
(52, 'lorem11@i11psum.com', 'lorepsum', '8adb717e0ac88ed740cc883fdc26cc82eaaba59aec2a94712a21cfbecb80dee63605801a7754cbbdf6b225328ec046f48a0cc8b020a83724a6fc5ade66a0a120', 'lorepsum2', '2023-05-05 04:11:44', 0, '', '', 0, 0),
(51, 'lorem@i11psum.com', 'lorepsum', '8adb717e0ac88ed740cc883fdc26cc82eaaba59aec2a94712a21cfbecb80dee63605801a7754cbbdf6b225328ec046f48a0cc8b020a83724a6fc5ade66a0a120', 'lorepsum1', '2023-05-05 04:10:48', 0, '', '', 0, 0),
(50, 'lorem@ipsum.com', 'lorepsum', '8adb717e0ac88ed740cc883fdc26cc82eaaba59aec2a94712a21cfbecb80dee63605801a7754cbbdf6b225328ec046f48a0cc8b020a83724a6fc5ade66a0a120', 'lorepsum', '2023-05-05 04:09:24', 0, '', '', 0, 0),
(49, 'register1@gmail.com', 'lorem ipsum', 'feedc8f29fdc6af0c7f9df90f4aa39d6c021578d2de0a49a66cd4684457436da88daa8c84c477bd6a8a829786738ad5366d5da5aceb39feb583b64ca862390ec', 'loremipsum1', '2023-05-05 04:06:51', 0, '', '', 0, 0),
(48, 'register@gmail.com', 'lorem ipsum', 'feedc8f29fdc6af0c7f9df90f4aa39d6c021578d2de0a49a66cd4684457436da88daa8c84c477bd6a8a829786738ad5366d5da5aceb39feb583b64ca862390ec', 'loremipsum', '2023-05-05 04:04:15', 0, '', '', 0, 0),
(46, 'anand@anand.com', 'anand@anand.com', 'cedd306cef30b56a8d3beee5dc997f64f8061c6f7def92e8d061a4e1a5188dd5bf65fb65ce5c9469877a8e61c57858a1969d191b80dc544110c4f4ce7581f226', 'anandanandcom', '2023-05-01 11:58:13', 0, '', '', 0, 1),
(47, 'qwert@qwerty.com', 'qwert@qwerty.com', '363f7f7c6a8244f3e49be001ccdbad29fd713ec3c3bca0fac4f910f94bf5b80514857266e9cee03b95bc1107813b289ab46cdb29983b798783f08ff081306154', 'qwertqwertycom', '2023-05-04 11:59:28', 0, '', '', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ad_position` (`ad_position`),
  ADD KEY `ad_privacy` (`ad_privacy`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photo_id` (`photo_id`),
  ADD KEY `approved` (`approved`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iduser` (`iduser`),
  ADD KEY `category` (`category`),
  ADD KEY `rating` (`rating`),
  ADD KEY `nr_ratings` (`nr_ratings`),
  ADD KEY `views` (`views`),
  ADD KEY `approved` (`approved`),
  ADD KEY `contest` (`contest`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `content_exif`
--
ALTER TABLE `content_exif`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photo_id` (`photo_id`);

--
-- Indexes for table `content_temp`
--
ALTER TABLE `content_temp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cid` (`cid`),
  ADD KEY `data` (`data`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `contest`
--
ALTER TABLE `contest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `active` (`active`),
  ADD KEY `creator` (`creator`);

--
-- Indexes for table `contest_entry`
--
ALTER TABLE `contest_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contest_id` (`contest_id`),
  ADD KEY `paid` (`paid`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `contest_prizes`
--
ALTER TABLE `contest_prizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contest_id` (`contest_id`);

--
-- Indexes for table `contest_rules`
--
ALTER TABLE `contest_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contest_id` (`contest_id`);

--
-- Indexes for table `meta_tags`
--
ALTER TABLE `meta_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page` (`page`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `footer` (`footer`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `payments_items`
--
ALTER TABLE `payments_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photo_id` (`photo_id`),
  ADD KEY `iduser` (`iduser`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `set_key` (`set_key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `password` (`password`),
  ADD KEY `fb_id` (`fb_id`),
  ADD KEY `user` (`user`),
  ADD KEY `category` (`category`),
  ADD KEY `confirmed` (`confirmed`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `content_exif`
--
ALTER TABLE `content_exif`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `content_temp`
--
ALTER TABLE `content_temp`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `contest`
--
ALTER TABLE `contest`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contest_entry`
--
ALTER TABLE `contest_entry`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contest_prizes`
--
ALTER TABLE `contest_prizes`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contest_rules`
--
ALTER TABLE `contest_rules`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `meta_tags`
--
ALTER TABLE `meta_tags`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `payments_items`
--
ALTER TABLE `payments_items`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
