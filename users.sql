-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 20, 2017 at 03:41 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentaware`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `oauth_provider` varchar(255) NOT NULL,
  `oauth_uid` varchar(255) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birth` varchar(15) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `locale` varchar(10) NOT NULL,
  `gpluslink` varchar(250) NOT NULL,
  `picture` varchar(250) NOT NULL,
  `uname` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `utype` int(1) NOT NULL,
  `tokenCode` varchar(40) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `oauth_provider`, `oauth_uid`, `fname`, `lname`, `gender`, `birth`, `phone`, `locale`, `gpluslink`, `picture`, `uname`, `email`, `pass`, `utype`, `tokenCode`, `created`, `modified`) VALUES
(2, '', '', 'Masud', 'Rana', NULL, '', '', '', '', '', 'masudewucse', 'masudewucse@gmail.com', '$2y$10$7XoPOWYPnF6oXz.7Se63CeqQzqxrR5XKsljuqRuCwKx57VZSG9NT6', 0, 'ee162894ce3b396a7a7c69f2869eec49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '', '', 'Masud', 'Rana', NULL, '', '', '', '', '', 'masudewucse2', 'masudewucse2@gmail.com', '$2y$10$fr/3B7Dx4v4r20cI84PwguIiUDj8lFVG1VSlUl7eu1a7yqGIpcTxC', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '', '', 'jahid', 'Hasan', NULL, '', '', '', '', '', 'masdue', 'masudek@gmail.com', '$2y$10$9mcpNFUmUWfogi0mkYT67.U6e1WeDrZVVoepxGwj5qEcaioFjrmEm', 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '', '', 'adsfasdfadsf', 'adsf', NULL, '', '', '', '', '', 'adsf', 'adfs@gmail.com', '$2y$10$bY.Ci3yU1jR5s/cDKWDvdeFXqZ9J5yccaAx8zIOG0anr7ZqUI5o8O', 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '', '', 'adfadsfasdf', 'adsfasdfasdf', NULL, '', '', '', '', '', 'adsfasdfadsf', 'masusssdewucse@gmail.com', '$2y$10$39R78RRVkB4RldxwSCxlOOX6F7/C3peyyBX4bma/93Z5IGuvCZbp6', 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '', '', 'Jahid', 'Hasan', NULL, '', '', '', '', '', 'jahidhasan', 'jahid@gmail.com', '$2y$10$MyEB7kVY6jm3AjLf/uEi1.1FJAzS3nTu9sdF45tG87jE2rv6lFgMy', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '', '', 'Masud', 'Rana', 'male', '10/12/1093', '987987983', '', '', '8376513507086_10154221749148397_9063340116228241603_n.jpg', 'masudewucse5', 'masud.ineed@gmail.com', '$2y$10$eb/NveAQLR3vHHBqud6sbuzHq09LBr.cma.pP0P3Wjylaxu13v2by', 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '', '', 'Masud', 'Rana', NULL, '', '', '', '', '', 'jahidhasan2', 'jahid2@gmail.com', '$2y$10$vLKEDF75VwjK8HW6C7/DnuO67kxXFq3Xi1DxyBivmlidjL37y3boy', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '', '', 'Masud', 'Rana', NULL, '', '', '', '', '', 'ranamasud', 'masudewucse1@gmail.com', '$2y$10$WExBADSo0frdCxF8wXh3S.sDzWzX3fZk4I3KuVCabC.nr0Kc6Xday', 3, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '', '', 'David', 'Suter', NULL, '', '', '', '', '', 'david', 'david@dbnm.co.uk', '$2y$10$jhLBgLk381QzFMoB1wwbx.CrbvqiERNOIyHtwmPAzH4pr63Lz7k/e', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '', '', '', '', NULL, '', '', '', '', '', 'testis', 'tests@gmail.com', '$2y$10$V4BdxkwvpUQEEJD/a30.XusaE/GIIPDcWIXIeUPEeSnact577qio6', 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '', '', '', '', NULL, '', '', '', '', '', 'adfadsf', 'sdfsdf@gmail.com', '$2y$10$Dj/a7Q2EevMjbsJ8naYqYur8ph5Y4uFUkdfqt8sOt23GgdYkdX/Mu', 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '', '', 'asdas', 'kjhkjh', NULL, '', '', '', '', '', 'kjhkjhkj', 'kjhkj@asdasd.com', '$2y$10$PTPZU2kXA2TooADeaH1XqOp3jbehEldoIvVWn/Xitdew7Jnw3C8Di', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '', '', '', '', NULL, '', '', '', '', '', 'jahidhasank', 'jahidhasank@gmail.com', '$2y$10$0UAxg1OcVBZSA44N/0AsrOCyagfgcjpIPsmHzDShxn5B211mbluRe', 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, '', '', 'Marcin', 'Kaspersky', NULL, '', '', '', '', '', 'marcinos', 'marcinos06@gmail.com', '$2y$10$upX0OTcScfBhxfkNu/pS1e0YYe8xqIebc9anb8qPpytE82ZbZXBLi', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '', '', 'Marcin', 'Kaspersky', NULL, '', '', '', '', '', 'marcin', 'marcin.kurdybanowski@gmail.com', '$2y$10$YiVM0YvicPaDGV96WhbTGeKg44I7UQ/e8qYY8.U6tvrkPJa4qIlcu', 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, '', '', 'Marcin', 'Kaspersky', NULL, '', '', '', '', '', 'admin', 'admin@admin.com', '$2y$10$390iDw1sQ8IrVj/460NOLe251bh2averP8yRuLimGJ67WPNzjWpV6', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'facebook', '10154256061573397', 'Masud', 'Rana', 'male', '', '', 'en_GB', '', 'https://scontent.xx.fbcdn.net/v/t1.0-1/c74.180.563.563/s50x50/13507086_10154221749148397_9063340116228241603_n.jpg?oh=be472516c039d0aafeae3628433b1b79&oe=5822AC10', '', 'masudewucse@gmail.com', '', 0, 'ee162894ce3b396a7a7c69f2869eec49', '2016-07-22 00:51:48', '2016-07-22 01:42:50'),
(20, 'facebook', '10155040958013508', 'David', 'Suter', 'male', '', '', 'en_GB', '', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/12143327_10154275232738508_88254550003924427_n.jpg?oh=132f2e524b860a2946d9182f147efeff&oe=57EDFF4C', '', 'david@digitalbroadcasters.co.uk', '', 0, '', '2016-07-22 01:16:55', '2016-07-22 08:26:11'),
(21, '', '', 'Akram', 'Arif', 'male', '1984-12-20', '234234234234', '', '', '', 'akramarif', 'akram@gmail.com', '$2y$10$cGWeIUIJpOqcNNcFzXsyYuPpUFWUO.A7zGEhH0M5FwW8wWT4NQK36', 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, '', '', '', '', NULL, '', '', '', '', '', 'tiklo', 'tiklo@gmail.com', '$2y$10$kHWwcC0VD8Y9oAwXIg.Hse.jSM6mcbuMdwCzVQVAZMlnXCFJVyIwm', 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, '', '', '', '', NULL, '', '', '', '', '', 'tiklo22', 'tiklo22@gmail.com', '$2y$10$Tk0DEv0os4NIAFwbBTpZSu5x9Gmp7qnJy6LEAmVVRVwFKvPjaySBG', 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, '', '', '', '', NULL, '', '', '', '', '', 'ldsakjflkdsfj', 'kadjflkdsjf@gmail.com', '$2y$10$WYKTEvTfzsVrIIyuHeL1yOhBUTKQiyjAl7YsVJ0Y5JwbW1VZfoTbu', 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, '', '', '', '', NULL, '', '', '', '', '', 'sdafasdfasdf', 'adsfasdfasdf@gmail.com', '$2y$10$t7lIPBT3IC.C5V6r/hraQOG7B6QeDNUuZMu0Hulu/DQ3Pw2xvvBhi', 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, '', '', '', '', NULL, '', '', '', '', '', 'masudrana', 'masudewucsegmail@gmail.com', '$2y$10$HXg7ySs6JIyEkwGJnxeNi.QxOnS5U7lyzZy9tsLUuCi4FAp6MSIrC', 2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
