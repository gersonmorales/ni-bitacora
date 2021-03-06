-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 06, 2015 at 12:54 PM
-- Server version: 5.5.34-0ubuntu0.13.04.1
-- PHP Version: 5.4.9-4ubuntu2.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rad`
--

-- --------------------------------------------------------

--
-- Table structure for table `atencion`
--

CREATE TABLE IF NOT EXISTS `atencion` (
  `ate_id` int(11) NOT NULL AUTO_INCREMENT,
  `ate_fecha` date NOT NULL,
  `ate_obs` varchar(255) DEFAULT NULL,
  `ate_datetime` datetime DEFAULT NULL,
  `pac_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  PRIMARY KEY (`ate_id`),
  KEY `fk_atencion_paciente_idx` (`pac_id`),
  KEY `fk_atencion_profesional1_idx` (`pro_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=245 ;

--
-- Dumping data for table `atencion`
--

INSERT INTO `atencion` (`ate_id`, `ate_fecha`, `ate_obs`, `ate_datetime`, `pac_id`, `pro_id`) VALUES
(2, '2015-02-03', NULL, '2015-04-06 02:55:13', 5, 15),
(3, '2015-02-05', NULL, '2015-04-06 02:55:13', 5, 15),
(4, '2015-02-08', NULL, '2015-04-06 02:55:13', 5, 15),
(5, '2015-02-11', NULL, '2015-04-06 02:55:13', 5, 15),
(6, '2015-02-12', NULL, '2015-04-06 02:55:13', 5, 15),
(7, '2015-02-14', NULL, '2015-04-06 02:55:13', 5, 15),
(8, '2015-02-17', NULL, '2015-04-06 02:55:13', 5, 15),
(9, '2015-02-19', NULL, '2015-04-06 02:55:13', 5, 15),
(10, '2015-02-21', NULL, '2015-04-06 02:55:13', 5, 15),
(11, '2015-02-24', NULL, '2015-04-06 02:55:13', 5, 15),
(12, '2015-02-26', NULL, '2015-04-06 02:55:13', 5, 15),
(13, '2015-02-28', NULL, '2015-04-06 02:55:13', 5, 15),
(14, '2015-02-06', NULL, '2015-04-06 02:57:03', 6, 9),
(15, '2015-02-14', NULL, '2015-04-06 12:22:07', 7, 21),
(16, '2015-02-16', NULL, '2015-04-06 12:22:07', 7, 21),
(17, '2015-02-18', NULL, '2015-04-06 12:22:07', 7, 21),
(18, '2015-02-20', NULL, '2015-04-06 12:22:07', 7, 21),
(19, '2015-02-21', NULL, '2015-04-06 12:22:07', 7, 21),
(20, '2015-02-23', NULL, '2015-04-06 12:22:07', 7, 21),
(21, '2015-02-24', NULL, '2015-04-06 12:22:07', 7, 21),
(22, '2015-02-25', NULL, '2015-04-06 12:22:07', 7, 21),
(23, '2015-02-27', NULL, '2015-04-06 12:22:07', 7, 21),
(24, '2015-02-12', NULL, '2015-04-06 12:22:07', 7, 23),
(25, '2015-02-14', NULL, '2015-04-06 12:22:07', 7, 15),
(26, '2015-02-21', NULL, '2015-04-06 12:22:07', 7, 15),
(27, '2015-02-28', NULL, '2015-04-06 12:22:07', 7, 15),
(28, '2015-02-18', NULL, '2015-04-06 12:32:25', 8, 17),
(29, '2015-02-19', NULL, '2015-04-06 12:32:25', 8, 17),
(30, '2015-02-20', NULL, '2015-04-06 12:32:25', 8, 17),
(31, '2015-02-28', NULL, '2015-04-06 12:32:25', 8, 17),
(32, '2015-02-02', NULL, '2015-04-06 12:32:25', 8, 19),
(33, '2015-02-05', NULL, '2015-04-06 12:32:25', 8, 19),
(34, '2015-02-16', NULL, '2015-04-06 12:32:25', 8, 21),
(35, '2015-02-21', NULL, '2015-04-06 12:32:25', 8, 21),
(36, '2015-02-23', NULL, '2015-04-06 12:32:25', 8, 21),
(37, '2015-02-04', NULL, '2015-04-06 12:32:25', 8, 22),
(38, '2015-02-06', NULL, '2015-04-06 12:32:25', 8, 22),
(39, '2015-02-07', NULL, '2015-04-06 12:32:25', 8, 22),
(40, '2015-02-08', NULL, '2015-04-06 12:32:25', 8, 22),
(41, '2015-02-22', NULL, '2015-04-06 12:32:25', 8, 22),
(42, '2015-02-25', NULL, '2015-04-06 12:32:25', 8, 22),
(43, '2015-02-27', NULL, '2015-04-06 12:32:25', 8, 22),
(44, '2015-02-01', NULL, '2015-04-06 12:32:25', 8, 18),
(45, '2015-02-19', NULL, '2015-04-06 12:32:25', 8, 11),
(46, '2015-02-26', NULL, '2015-04-06 12:32:25', 8, 11),
(47, '2015-02-03', NULL, '2015-04-06 12:32:25', 8, 13),
(48, '2015-02-05', NULL, '2015-04-06 12:32:25', 8, 13),
(49, '2015-02-06', NULL, '2015-04-06 12:32:25', 8, 13),
(50, '2015-02-16', NULL, '2015-04-06 12:32:25', 8, 13),
(51, '2015-02-17', NULL, '2015-04-06 12:32:25', 8, 13),
(52, '2015-02-23', NULL, '2015-04-06 12:32:25', 8, 13),
(53, '2015-02-18', NULL, '2015-04-06 12:35:54', 9, 26),
(54, '2015-02-23', NULL, '2015-04-06 12:35:54', 9, 26),
(55, '2015-02-27', NULL, '2015-04-06 12:35:54', 9, 26),
(56, '2015-02-19', NULL, '2015-04-06 12:35:54', 9, 11),
(57, '2015-02-26', NULL, '2015-04-06 12:35:54', 9, 11),
(58, '2015-02-18', NULL, '2015-04-06 12:35:54', 9, 13),
(59, '2015-02-20', NULL, '2015-04-06 12:35:54', 9, 13),
(60, '2015-02-25', NULL, '2015-04-06 12:35:54', 9, 13),
(61, '2015-02-27', NULL, '2015-04-06 12:35:54', 9, 13),
(62, '2015-02-16', NULL, '2015-04-06 12:37:39', 10, 18),
(63, '2015-02-17', NULL, '2015-04-06 12:37:39', 10, 18),
(64, '2015-02-23', NULL, '2015-04-06 12:37:39', 10, 18),
(65, '2015-02-24', NULL, '2015-04-06 12:37:39', 10, 18),
(66, '2015-02-10', NULL, '2015-04-06 12:37:39', 10, 21),
(67, '2015-02-13', NULL, '2015-04-06 12:37:39', 10, 21),
(68, '2015-02-12', NULL, '2015-04-06 12:39:53', 11, 12),
(69, '2015-02-07', NULL, '2015-04-06 12:39:53', 11, 15),
(70, '2015-02-20', NULL, '2015-04-06 12:39:53', 11, 15),
(71, '2015-02-21', NULL, '2015-04-06 12:39:53', 11, 15),
(72, '2015-02-27', NULL, '2015-04-06 12:39:53', 11, 15),
(73, '2015-02-28', NULL, '2015-04-06 12:39:53', 11, 15),
(74, '2015-02-17', NULL, '2015-04-06 12:41:32', 12, 17),
(75, '2015-02-20', NULL, '2015-04-06 12:41:32', 12, 17),
(76, '2015-02-25', NULL, '2015-04-06 12:41:32', 12, 17),
(77, '2015-02-09', NULL, '2015-04-06 12:41:32', 12, 20),
(78, '2015-02-19', NULL, '2015-04-06 12:41:32', 12, 20),
(79, '2015-02-23', NULL, '2015-04-06 12:41:32', 12, 20),
(80, '2015-02-13', NULL, '2015-04-06 12:41:32', 12, 21),
(81, '2015-02-05', NULL, '2015-04-06 12:41:32', 12, 23),
(82, '2015-02-06', NULL, '2015-04-06 12:41:32', 12, 23),
(83, '2015-02-02', NULL, '2015-04-06 12:41:32', 12, 12),
(84, '2015-02-11', NULL, '2015-04-06 12:41:32', 12, 12),
(85, '2015-02-12', NULL, '2015-04-06 12:41:32', 12, 12),
(86, '2015-02-20', NULL, '2015-04-06 12:41:32', 12, 16),
(87, '2015-02-27', NULL, '2015-04-06 12:41:32', 12, 16),
(88, '2015-02-16', NULL, '2015-04-06 12:41:32', 12, 13),
(89, '2015-02-19', NULL, '2015-04-06 12:41:32', 12, 13),
(90, '2015-02-24', NULL, '2015-04-06 12:41:32', 12, 13),
(91, '2015-02-26', NULL, '2015-04-06 12:41:32', 12, 13),
(92, '2015-02-10', NULL, '2015-04-06 12:43:11', 13, 21),
(93, '2015-02-11', NULL, '2015-04-06 12:43:11', 13, 21),
(94, '2015-02-14', NULL, '2015-04-06 12:43:11', 13, 21),
(95, '2015-02-17', NULL, '2015-04-06 12:43:11', 13, 21),
(96, '2015-02-18', NULL, '2015-04-06 12:43:11', 13, 21),
(97, '2015-02-20', NULL, '2015-04-06 12:43:11', 13, 21),
(98, '2015-02-25', NULL, '2015-04-06 12:43:11', 13, 21),
(99, '2015-02-27', NULL, '2015-04-06 12:43:11', 13, 21),
(100, '2015-02-02', NULL, '2015-04-06 12:43:11', 13, 23),
(101, '2015-02-03', NULL, '2015-04-06 12:43:11', 13, 23),
(102, '2015-02-04', NULL, '2015-04-06 12:43:11', 13, 23),
(103, '2015-02-05', NULL, '2015-04-06 12:43:11', 13, 23),
(104, '2015-02-06', NULL, '2015-04-06 12:43:11', 13, 23),
(105, '2015-02-09', NULL, '2015-04-06 12:43:11', 13, 23),
(106, '2015-02-12', NULL, '2015-04-06 12:43:11', 13, 23),
(107, '2015-02-16', NULL, '2015-04-06 12:43:11', 13, 23),
(108, '2015-02-19', NULL, '2015-04-06 12:43:11', 13, 23),
(109, '2015-02-23', NULL, '2015-04-06 12:43:11', 13, 23),
(110, '2015-02-28', NULL, '2015-04-06 12:43:11', 13, 23),
(111, '2015-02-03', NULL, '2015-04-06 12:44:37', 14, 13),
(112, '2015-02-05', NULL, '2015-04-06 12:44:37', 14, 13),
(113, '2015-02-06', NULL, '2015-04-06 12:44:37', 14, 13),
(114, '2015-02-09', NULL, '2015-04-06 12:44:37', 14, 13),
(115, '2015-02-12', NULL, '2015-04-06 12:44:37', 14, 13),
(116, '2015-02-13', NULL, '2015-04-06 12:44:37', 14, 13),
(117, '2015-02-17', NULL, '2015-04-06 12:44:37', 14, 13),
(118, '2015-02-19', NULL, '2015-04-06 12:44:37', 14, 13),
(119, '2015-02-20', NULL, '2015-04-06 12:44:37', 14, 13),
(120, '2015-02-26', NULL, '2015-04-06 12:44:37', 14, 13),
(121, '2015-02-27', NULL, '2015-04-06 12:44:37', 14, 13),
(122, '2015-02-18', NULL, '2015-04-06 12:46:03', 15, 18),
(123, '2015-02-04', NULL, '2015-04-06 12:46:03', 15, 22),
(124, '2015-02-14', NULL, '2015-04-06 12:47:35', 16, 17),
(125, '2015-02-15', NULL, '2015-04-06 12:47:35', 16, 17),
(126, '2015-02-17', NULL, '2015-04-06 12:47:35', 16, 17),
(127, '2015-02-25', NULL, '2015-04-06 12:47:35', 16, 17),
(128, '2015-02-28', NULL, '2015-04-06 12:47:35', 16, 17),
(129, '2015-02-09', NULL, '2015-04-06 12:47:35', 16, 21),
(130, '2015-02-11', NULL, '2015-04-06 12:47:35', 16, 21),
(131, '2015-02-12', NULL, '2015-04-06 12:47:35', 16, 21),
(132, '2015-02-16', NULL, '2015-04-06 12:47:35', 16, 21),
(133, '2015-02-18', NULL, '2015-04-06 12:47:35', 16, 21),
(134, '2015-02-19', NULL, '2015-04-06 12:47:35', 16, 21),
(135, '2015-02-21', NULL, '2015-04-06 12:47:35', 16, 21),
(136, '2015-02-23', NULL, '2015-04-06 12:47:35', 16, 21),
(137, '2015-02-26', NULL, '2015-04-06 12:47:35', 16, 21),
(138, '2015-02-02', NULL, '2015-04-06 12:47:35', 16, 23),
(139, '2015-02-03', NULL, '2015-04-06 12:47:35', 16, 23),
(140, '2015-02-04', NULL, '2015-04-06 12:47:35', 16, 23),
(141, '2015-02-05', NULL, '2015-04-06 12:47:35', 16, 23),
(142, '2015-02-06', NULL, '2015-04-06 12:47:35', 16, 23),
(143, '2015-02-07', NULL, '2015-04-06 12:47:35', 16, 23),
(144, '2015-02-13', NULL, '2015-04-06 12:47:35', 16, 23),
(145, '2015-02-20', NULL, '2015-04-06 12:47:35', 16, 23),
(146, '2015-02-27', NULL, '2015-04-06 12:47:35', 16, 23),
(147, '2015-02-02', NULL, '2015-04-06 12:47:35', 16, 9),
(148, '2015-02-05', NULL, '2015-04-06 12:47:35', 16, 9),
(149, '2015-02-10', NULL, '2015-04-06 12:47:35', 16, 9),
(150, '2015-02-11', NULL, '2015-04-06 12:47:35', 16, 9),
(151, '2015-02-16', NULL, '2015-04-06 12:47:35', 16, 11),
(152, '2015-02-20', NULL, '2015-04-06 12:47:35', 16, 11),
(153, '2015-02-24', NULL, '2015-04-06 12:47:35', 16, 11),
(154, '2015-02-04', NULL, '2015-04-06 12:49:36', 17, 24),
(155, '2015-02-05', NULL, '2015-04-06 12:49:36', 17, 24),
(156, '2015-02-06', NULL, '2015-04-06 12:49:36', 17, 24),
(157, '2015-02-09', NULL, '2015-04-06 12:49:36', 17, 24),
(158, '2015-02-10', NULL, '2015-04-06 12:49:36', 17, 24),
(159, '2015-02-11', NULL, '2015-04-06 12:49:36', 17, 24),
(160, '2015-02-12', NULL, '2015-04-06 12:49:36', 17, 24),
(161, '2015-02-25', NULL, '2015-04-06 12:49:36', 17, 24),
(162, '2015-02-26', NULL, '2015-04-06 12:49:36', 17, 24),
(163, '2015-02-27', NULL, '2015-04-06 12:49:36', 17, 24),
(164, '2015-02-02', NULL, '2015-04-06 12:49:36', 17, 25),
(165, '2015-02-03', NULL, '2015-04-06 12:49:36', 17, 25),
(166, '2015-02-23', NULL, '2015-04-06 12:49:36', 17, 25),
(167, '2015-02-24', NULL, '2015-04-06 12:49:36', 17, 25),
(168, '2015-02-13', NULL, '2015-04-06 12:49:36', 17, 26),
(169, '2015-02-16', NULL, '2015-04-06 12:49:36', 17, 26),
(170, '2015-02-17', NULL, '2015-04-06 12:49:36', 17, 26),
(171, '2015-02-18', NULL, '2015-04-06 12:49:36', 17, 26),
(172, '2015-02-19', NULL, '2015-04-06 12:49:36', 17, 26),
(173, '2015-02-20', NULL, '2015-04-06 12:49:36', 17, 26),
(174, '2015-02-02', NULL, '2015-04-06 12:49:36', 17, 14),
(175, '2015-02-03', NULL, '2015-04-06 12:49:36', 17, 14),
(176, '2015-02-05', NULL, '2015-04-06 12:49:36', 17, 14),
(177, '2015-02-09', NULL, '2015-04-06 12:49:36', 17, 14),
(178, '2015-02-10', NULL, '2015-04-06 12:49:36', 17, 14),
(179, '2015-02-12', NULL, '2015-04-06 12:49:36', 17, 14),
(180, '2015-02-16', NULL, '2015-04-06 12:49:36', 17, 14),
(181, '2015-02-17', NULL, '2015-04-06 12:49:36', 17, 14),
(182, '2015-02-19', NULL, '2015-04-06 12:49:36', 17, 14),
(183, '2015-02-23', NULL, '2015-04-06 12:49:36', 17, 14),
(184, '2015-02-24', NULL, '2015-04-06 12:49:36', 17, 14),
(185, '2015-02-26', NULL, '2015-04-06 12:49:36', 17, 14),
(186, '2015-02-04', NULL, '2015-04-06 12:49:36', 17, 13),
(187, '2015-02-06', NULL, '2015-04-06 12:49:36', 17, 13),
(188, '2015-02-11', NULL, '2015-04-06 12:49:36', 17, 13),
(189, '2015-02-14', NULL, '2015-04-06 12:49:36', 17, 13),
(190, '2015-02-18', NULL, '2015-04-06 12:49:36', 17, 13),
(191, '2015-02-21', NULL, '2015-04-06 12:49:36', 17, 13),
(192, '2015-02-25', NULL, '2015-04-06 12:49:36', 17, 13),
(193, '2015-02-28', NULL, '2015-04-06 12:49:36', 17, 13),
(194, '2015-02-10', NULL, '2015-04-06 12:50:51', 18, 14),
(195, '2015-02-19', NULL, '2015-04-06 12:50:51', 18, 14),
(196, '2015-02-24', NULL, '2015-04-06 12:50:51', 18, 14),
(197, '2015-02-26', NULL, '2015-04-06 12:50:51', 18, 14),
(198, '2015-02-07', NULL, '2015-04-06 12:50:51', 18, 13),
(199, '2015-02-09', NULL, '2015-04-06 12:50:51', 18, 13),
(200, '2015-02-11', NULL, '2015-04-06 12:50:51', 18, 13),
(201, '2015-02-12', NULL, '2015-04-06 12:50:51', 18, 13),
(202, '2015-02-18', NULL, '2015-04-06 12:50:51', 18, 13),
(203, '2015-02-21', NULL, '2015-04-06 12:50:51', 18, 13),
(204, '2015-02-23', NULL, '2015-04-06 12:50:51', 18, 13),
(205, '2015-02-25', NULL, '2015-04-06 12:50:51', 18, 13),
(206, '2015-02-28', NULL, '2015-04-06 12:50:51', 18, 13),
(207, '2015-02-18', NULL, '2015-04-06 12:52:14', 19, 17),
(208, '2015-02-20', NULL, '2015-04-06 12:52:14', 19, 17),
(209, '2015-02-28', NULL, '2015-04-06 12:52:14', 19, 17),
(210, '2015-02-11', NULL, '2015-04-06 12:52:14', 19, 20),
(211, '2015-02-16', NULL, '2015-04-06 12:52:14', 19, 20),
(212, '2015-02-23', NULL, '2015-04-06 12:52:14', 19, 20),
(213, '2015-02-10', NULL, '2015-04-06 12:52:14', 19, 21),
(214, '2015-02-12', NULL, '2015-04-06 12:52:14', 19, 21),
(215, '2015-02-14', NULL, '2015-04-06 12:52:14', 19, 21),
(216, '2015-02-15', NULL, '2015-04-06 12:52:14', 19, 21),
(217, '2015-02-17', NULL, '2015-04-06 12:52:14', 19, 21),
(218, '2015-02-19', NULL, '2015-04-06 12:52:14', 19, 21),
(219, '2015-02-25', NULL, '2015-04-06 12:52:14', 19, 21),
(220, '2015-02-26', NULL, '2015-04-06 12:52:14', 19, 21),
(221, '2015-02-03', NULL, '2015-04-06 12:52:14', 19, 23),
(222, '2015-02-04', NULL, '2015-04-06 12:52:14', 19, 23),
(223, '2015-02-05', NULL, '2015-04-06 12:52:14', 19, 23),
(224, '2015-02-06', NULL, '2015-04-06 12:52:14', 19, 23),
(225, '2015-02-07', NULL, '2015-04-06 12:52:14', 19, 23),
(226, '2015-02-02', NULL, '2015-04-06 12:52:14', 19, 12),
(227, '2015-02-04', NULL, '2015-04-06 12:52:14', 19, 12),
(228, '2015-02-11', NULL, '2015-04-06 12:52:14', 19, 12),
(229, '2015-02-12', NULL, '2015-04-06 12:52:14', 19, 12),
(230, '2015-02-19', NULL, '2015-04-06 12:52:14', 19, 16),
(231, '2015-02-27', NULL, '2015-04-06 12:52:14', 19, 16),
(232, '2015-02-28', NULL, '2015-04-06 12:52:14', 19, 13),
(233, '2015-02-11', NULL, '2015-04-06 12:53:11', 20, 21),
(234, '2015-02-18', NULL, '2015-04-06 12:53:11', 20, 21),
(235, '2015-02-19', NULL, '2015-04-06 12:53:11', 20, 21),
(236, '2015-02-20', NULL, '2015-04-06 12:53:11', 20, 21),
(237, '2015-02-25', NULL, '2015-04-06 12:53:11', 20, 21),
(238, '2015-02-27', NULL, '2015-04-06 12:53:11', 20, 21),
(239, '2015-02-03', NULL, '2015-04-06 12:53:11', 20, 23),
(240, '2015-02-04', NULL, '2015-04-06 12:53:11', 20, 23),
(241, '2015-02-08', NULL, '2015-04-06 12:53:11', 20, 23),
(242, '2015-02-09', NULL, '2015-04-06 12:53:11', 20, 23),
(243, '2015-02-16', NULL, '2015-04-06 12:53:11', 20, 23),
(244, '2015-02-23', NULL, '2015-04-06 12:53:11', 20, 23);

-- --------------------------------------------------------

--
-- Table structure for table `especialidad`
--

CREATE TABLE IF NOT EXISTS `especialidad` (
  `esp_id` int(11) NOT NULL AUTO_INCREMENT,
  `esp_nombre` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`esp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `especialidad`
--

INSERT INTO `especialidad` (`esp_id`, `esp_nombre`) VALUES
(1, 'Fonoaudiologo'),
(2, 'Terapeuta Ocupacional'),
(3, 'Kinesiologo'),
(4, 'Administrativo');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `log_datetime` datetime NOT NULL,
  `log_action` varchar(255) DEFAULT NULL,
  `log_ip` varchar(16) NOT NULL,
  `pro_id` int(11) NOT NULL,
  KEY `fk_log_profesional1` (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`log_datetime`, `log_action`, `log_ip`, `pro_id`) VALUES
('2015-04-05 23:20:54', 'LOG IN', '127.0.0.1', 7),
('2015-04-05 23:21:28', 'LOG IN', '127.0.0.1', 7),
('2015-04-05 23:21:45', 'REGISTER', '127.0.0.1', 7),
('2015-04-05 23:21:48', 'LOGOUT', '127.0.0.1', 7);

-- --------------------------------------------------------

--
-- Table structure for table `paciente`
--

CREATE TABLE IF NOT EXISTS `paciente` (
  `pac_id` int(11) NOT NULL AUTO_INCREMENT,
  `pac_nombre` varchar(45) DEFAULT NULL,
  `pac_apellido1` varchar(45) DEFAULT NULL,
  `pac_apellido2` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pac_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `paciente`
--

INSERT INTO `paciente` (`pac_id`, `pac_nombre`, `pac_apellido1`, `pac_apellido2`) VALUES
(5, 'Agustina', 'Landeros', NULL),
(6, 'Agustin', 'Mehech', NULL),
(7, 'Belen', 'Barros', NULL),
(8, 'Benjamin', 'Arriagada', NULL),
(9, 'Carolina', 'Padilla', NULL),
(10, 'Catalina', 'Correa', NULL),
(11, 'Catalina', 'Molina', NULL),
(12, 'Felipe', 'Masias', NULL),
(13, 'Isabella', 'Signorelli', NULL),
(14, 'Javier', 'Rojas', NULL),
(15, 'José Pablo', 'Maureira', NULL),
(16, 'Juan Diego', 'Moraga', NULL),
(17, 'Lorenzo', 'Lizana', NULL),
(18, 'Oscar', 'Herrera', NULL),
(19, 'Rodolfo', 'Ruffat', NULL),
(20, 'Violeta', 'Condon', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profesional`
--

CREATE TABLE IF NOT EXISTS `profesional` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_nombre` varchar(45) DEFAULT NULL,
  `pro_apellido1` varchar(45) DEFAULT NULL,
  `pro_apellido2` varchar(45) DEFAULT NULL,
  `pro_email` varchar(45) NOT NULL,
  `pro_password` varchar(45) NOT NULL,
  `pro_es_admin` tinyint(1) DEFAULT '0',
  `esp_id` int(11) NOT NULL,
  PRIMARY KEY (`pro_id`),
  KEY `fk_profesional_especialidad1` (`esp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `profesional`
--

INSERT INTO `profesional` (`pro_id`, `pro_nombre`, `pro_apellido1`, `pro_apellido2`, `pro_email`, `pro_password`, `pro_es_admin`, `esp_id`) VALUES
(7, 'Gerson', 'Morales', 'Fernández', 'gerson.morales@gmail.com', 'gmorales', 1, 4),
(9, 'Pamela', 'Troy', NULL, 'ptroy@ni.cl', 'ptroy', 0, 1),
(10, 'Rafael', 'Tapia', NULL, 'rtapia@ni.cl', 'rtapia', 0, 1),
(11, 'Rodrigo', 'Morales', NULL, 'rmorales@ni.cl', 'rmorales', 1, 1),
(12, 'Isabel', 'Valdes', NULL, 'ivaldes@ni.cl', 'ivaldes', 0, 1),
(13, 'Raul', 'Fernandez', NULL, 'rfernandez@ni.cl', 'rfernandez', 0, 1),
(14, 'Nadia', 'Baeza', NULL, 'nbaeza@ni.cl', 'nbaeza', 0, 1),
(15, 'Mhar', 'Salvo', NULL, 'msalvo@ni.cl', 'msalvo', 0, 1),
(16, 'Sonia', 'Gajardo', NULL, 'sgajardo@ni.cl', 'sgajardo', 0, 1),
(17, 'Juan Francisco', 'Bueno', NULL, 'jbueno@ni.cl', 'jbueno', 0, 3),
(18, 'Juan', 'Salas', NULL, 'jsalas@ni.cl', 'jsalas', 0, 3),
(19, 'Marcelo', 'Vilches', NULL, 'mvilches@ni.cl', 'mvilches', 0, 3),
(20, 'Paola', 'Molina', NULL, 'pmolina@ni.cl', 'pmolina', 0, 3),
(21, 'Catalina', 'Limonado', NULL, 'climonado@ni.cl', 'climonado', 0, 3),
(22, 'Rocio', 'Fuenzalida', NULL, 'rfuenzalida@ni.cl', 'rfuenzalida', 0, 3),
(23, 'Luis', 'Vargas', NULL, 'lvargas@ni.cl', 'lvargas', 0, 3),
(24, 'Camila', 'Ilabaca', NULL, 'cilabaca@ni.cl', 'cilabaca', 0, 2),
(25, 'Marcela', 'Perez', NULL, 'mparez@ni.cl', 'mparez', 0, 2),
(26, 'Myriam', 'Fuentes', NULL, 'mfuentes@ni.cl', 'mfuentes', 0, 2),
(27, 'Pia', 'Coletti', NULL, 'pcoletti@ni.cl', 'pcoletti', 0, 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `atencion`
--
ALTER TABLE `atencion`
  ADD CONSTRAINT `fk_atencion_paciente` FOREIGN KEY (`pac_id`) REFERENCES `paciente` (`pac_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_atencion_profesional1` FOREIGN KEY (`pro_id`) REFERENCES `profesional` (`pro_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `fk_log_profesional1` FOREIGN KEY (`pro_id`) REFERENCES `profesional` (`pro_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `profesional`
--
ALTER TABLE `profesional`
  ADD CONSTRAINT `fk_profesional_especialidad1` FOREIGN KEY (`esp_id`) REFERENCES `especialidad` (`esp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
