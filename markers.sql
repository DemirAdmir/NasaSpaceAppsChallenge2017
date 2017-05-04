-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 04, 2017 at 04:30 
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `list_markers`
--

-- --------------------------------------------------------

--
-- Table structure for table `markers`
--

CREATE TABLE `markers` (
  `id` int(11) NOT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `lng` varchar(20) DEFAULT NULL,
  `info` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `markers`
--

INSERT INTO `markers` (`id`, `lat`, `lng`, `info`, `type`, `status`, `time`) VALUES
(216, '44.789632547614076', '16.3421630859375', 'Watter good', 'watter', 1, '2017-05-04 14:57:47'),
(217, '43.866218006556394', '16.9903564453125', 'Watter good', 'watter', 1, '2017-05-04 14:57:47'),
(218, '44.56699093657141', '19.281005859375', 'Watter good for drink', 'watter', 1, '2017-05-04 14:57:47'),
(219, '43.78695837311561', '18.8909912109375', 'Good for drink', 'watter', 1, '2017-05-04 14:57:47'),
(220, '44.6608390426562', '17.802658081054688', 'Watter bad', 'dirtywatter', 1, '2017-05-04 15:41:52'),
(221, '44.35920579433504', '18.555908203125', 'Place not good', 'dangerous', 1, '2017-05-04 15:44:40'),
(222, '44.11125397357156', '20.32470703125', 'Contaminants in the Environment', 'dangerous', 1, '2017-05-04 15:49:36'),
(223, '43.655949912568225', '17.75390625', 'Contaminants in the Environment', 'dangerous', 1, '2017-05-04 15:49:36'),
(224, '44.5982904898401', '15.853271484375', 'Contaminants ', 'dangerous', 0, '2017-05-04 15:49:36'),
(225, '44.77013681219717', '17.8857421875', 'Drinkable', 'watter', 0, '2017-05-04 15:49:50'),
(226, '43.85433577078958', '16.2103271484375', 'Drinkable', 'watter', 1, '2017-05-04 15:49:50'),
(227, '43.26120612479979', '18.6273193359375', 'Drinkable', 'watter', 1, '2017-05-04 15:49:50'),
(228, '43.41701888881103', '20.0006103515625', 'Drinkable', 'watter', 1, '2017-05-04 15:49:50'),
(229, '44.07969327425713', '16.8475341796875', 'Runway', 'trash', 1, '2017-05-04 15:50:11'),
(230, '44.824708282300236', '16.3916015625', 'Bad', 'trash', 1, '2017-05-04 15:50:11'),
(231, '43.78695837311561', '18.6767578125', 'Smell', 'trash', 1, '2017-05-04 15:50:11'),
(232, '44.653024159812006', '19.5281982421875', 'Contaminants', 'trash', 1, '2017-05-04 15:50:11'),
(233, '45.27488643704892', '16.776123046875', 'Not drinkable', 'dirtywatter', 1, '2017-05-04 15:51:19'),
(234, '44.824708282300236', '10.5029296875', 'Not drinkable', 'dirtywatter', 1, '2017-05-04 15:51:19'),
(235, '41.1951898294896', '14.765625', 'Not drinkable', 'dirtywatter', 1, '2017-05-04 15:51:19'),
(236, '40.463666324587685', '16.10595703125', 'Not drinkable', 'dirtywatter', 1, '2017-05-04 15:51:19'),
(237, '44.55916341529182', '23.2470703125', 'Contaminants in the Environment', 'trash', 1, '2017-05-04 15:51:35'),
(238, '41.5579215778042', '26.9384765625', 'Contaminants in the Environment', 'trash', 1, '2017-05-04 15:51:35'),
(239, '38.11727165830543', '27.66357421875', 'Contaminants in the Environment', 'trash', 1, '2017-05-04 15:51:35'),
(240, '44.51584841482667', '18.50921630859375', 'Contaminants in the Environment', 'watter', 1, '2017-05-04 15:52:48'),
(241, '44.50005612486427', '18.47127914428711', 'Contaminants in the Environment', 'trash', 1, '2017-05-04 15:52:48'),
(242, '44.4819325683773', '18.525524139404297', 'Contaminants in the Environment', 'trash', 0, '2017-05-04 15:52:48'),
(243, '44.48107523365454', '18.575305938720703', 'Not healty', 'trash', 0, '2017-05-04 15:52:48'),
(244, '44.5589187882817', '18.694610595703125', 'Not healty', 'dangerous', 0, '2017-05-04 15:52:57'),
(245, '44.565767955794904', '18.35987091064453', 'Not healty', 'dangerous', 0, '2017-05-04 15:52:57'),
(246, '44.813018740612776', '15.7489013671875', 'Informacija', 'watter', 0, '2017-05-04 16:23:54'),
(247, '44.13097085672744', '16.1334228515625', 'Informacija', 'watter', 0, '2017-05-04 16:23:54'),
(248, '44.55133484083592', '17.60009765625', 'Informacija', 'watter', 0, '2017-05-04 16:23:54'),
(249, '45.08515722028693', '17.9461669921875', 'Informacija', 'watter', 0, '2017-05-04 16:23:54'),
(250, '44.68037164189037', '16.9464111328125', 'Informacija', 'dirtywatter', 0, '2017-05-04 16:23:54'),
(251, '43.76712702120528', '17.3858642578125', 'Informacija', 'dirtywatter', 0, '2017-05-04 16:23:54'),
(252, '44.37098696297173', '20.3082275390625', 'Informacija', 'dirtywatter', 0, '2017-05-04 16:23:54'),
(253, '45.4986468234261', '19.0283203125', 'Informacija', 'dirtywatter', 0, '2017-05-04 16:23:54'),
(254, '46.03510927947334', '16.490478515625', 'Informacija', 'dirtywatter', 0, '2017-05-04 16:23:54'),
(255, '45.79816953017265', '13.458251953125', 'Informacija', 'dirtywatter', 0, '2017-05-04 16:23:54'),
(256, '45.189780096675314', '21.796875', 'Informacija', 'dangerous', 0, '2017-05-04 16:23:54'),
(257, '43.26920624914963', '20.753173828125', 'Informacija', 'dangerous', 0, '2017-05-04 16:23:54'),
(258, '45.57560020947802', '17.017822265625', 'Informacija', 'dangerous', 0, '2017-05-04 16:23:54'),
(259, '45.874712248904764', '15.238037109375', 'Informacija', 'dangerous', 0, '2017-05-04 16:23:54'),
(260, '44.5278427984555', '15.501708984375', 'Informacija', 'dangerous', 1, '2017-05-04 16:23:54'),
(261, '44.221583765457964', '11.634521484375', 'Informacija', 'trash', 1, '2017-05-04 16:23:54'),
(262, '45.483243508682214', '10.272216796875', 'Informacija', 'trash', 1, '2017-05-04 16:23:54'),
(263, '44.15856343854312', '10.733642578125', 'Informacija', 'trash', 1, '2017-05-04 16:23:54'),
(264, '43.46089378008257', '11.458740234375', 'Informacija', 'trash', 1, '2017-05-04 16:23:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `markers`
--
ALTER TABLE `markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
