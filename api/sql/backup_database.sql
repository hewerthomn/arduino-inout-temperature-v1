-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Servidor: mysql02-farm31.uni5.net
-- Tempo de Geração: Jul 25, 2013 as 07:56 PM
-- Versão do Servidor: 5.5.32
-- Versão do PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `hewertho01`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `temperaturas`
--

CREATE TABLE IF NOT EXISTS `temperaturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temp_externa` int(11) NOT NULL,
  `humidity_externa` int(11) NOT NULL,
  `dew_point_externa` decimal(10,0) NOT NULL,
  `temp_interna` int(11) NOT NULL,
  `humidity_interna` int(11) NOT NULL,
  `dew_point_interna` int(11) NOT NULL,
  `datahora` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=445 ;

--
-- Extraindo dados da tabela `temperaturas`
--

INSERT INTO `temperaturas` (`id`, `temp_externa`, `humidity_externa`, `dew_point_externa`, `temp_interna`, `humidity_interna`, `dew_point_interna`, `datahora`) VALUES
(1, 17, 94, '16', 22, 41, 8, '2013-07-24 01:15:13'),
(2, 17, 94, '16', 22, 41, 8, '2013-07-24 01:20:21'),
(3, 17, 94, '16', 21, 40, 7, '2013-07-24 01:25:30'),
(4, 17, 94, '16', 21, 40, 7, '2013-07-24 01:30:38'),
(5, 17, 94, '16', 21, 40, 7, '2013-07-24 01:35:47'),
(6, 17, 94, '16', 21, 40, 7, '2013-07-24 01:40:55'),
(7, 17, 94, '16', 20, 41, 6, '2013-07-24 01:46:05'),
(8, 17, 94, '16', 20, 40, 6, '2013-07-24 01:51:13'),
(9, 17, 94, '16', 20, 40, 6, '2013-07-24 01:56:22'),
(10, 17, 94, '16', 20, 40, 6, '2013-07-24 02:01:30'),
(11, 17, 82, '14', 20, 40, 6, '2013-07-24 02:06:39'),
(12, 17, 82, '14', 19, 40, 5, '2013-07-24 02:11:48'),
(13, 17, 82, '14', 20, 40, 6, '2013-07-24 02:16:56'),
(14, 17, 82, '14', 19, 40, 5, '2013-07-24 02:22:05'),
(15, 17, 82, '14', 19, 40, 5, '2013-07-24 02:27:13'),
(16, 17, 82, '14', 19, 40, 5, '2013-07-24 02:32:22'),
(17, 17, 82, '14', 20, 40, 6, '2013-07-24 02:37:31'),
(18, 17, 82, '14', 19, 40, 5, '2013-07-24 02:42:39'),
(19, 17, 82, '14', 20, 40, 6, '2013-07-24 02:47:50'),
(20, 17, 82, '14', 20, 40, 6, '2013-07-24 02:52:58'),
(21, 17, 82, '14', 21, 39, 7, '2013-07-24 02:58:07'),
(22, 17, 82, '14', 21, 40, 7, '2013-07-24 03:03:15'),
(23, 17, 82, '14', 21, 40, 7, '2013-07-24 03:08:24'),
(24, 17, 82, '14', 21, 40, 7, '2013-07-24 03:13:33'),
(25, 17, 82, '14', 21, 40, 7, '2013-07-24 03:18:41'),
(26, 17, 82, '14', 22, 40, 8, '2013-07-24 03:23:49'),
(27, 17, 82, '14', 22, 40, 8, '2013-07-24 03:28:58'),
(28, 17, 82, '14', 22, 40, 8, '2013-07-24 03:34:06'),
(29, 17, 82, '14', 22, 41, 8, '2013-07-24 03:39:15'),
(30, 17, 82, '14', 22, 41, 8, '2013-07-24 03:44:24'),
(31, 17, 82, '14', 22, 41, 8, '2013-07-24 03:49:32'),
(32, 17, 82, '14', 22, 41, 8, '2013-07-24 03:54:41'),
(33, 17, 77, '13', 22, 41, 8, '2013-07-24 03:59:49'),
(34, 17, 77, '13', 22, 41, 8, '2013-07-24 04:04:58'),
(35, 17, 77, '13', 22, 41, 8, '2013-07-24 04:10:07'),
(36, 17, 77, '13', 22, 42, 9, '2013-07-24 04:15:15'),
(37, 17, 77, '13', 22, 41, 8, '2013-07-24 04:20:24'),
(38, 17, 77, '13', 22, 42, 9, '2013-07-24 04:25:33'),
(39, 17, 77, '13', 22, 42, 9, '2013-07-24 04:30:41'),
(40, 17, 77, '13', 22, 42, 9, '2013-07-24 04:35:50'),
(41, 17, 77, '13', 22, 42, 9, '2013-07-24 04:40:58'),
(42, 17, 77, '13', 22, 42, 9, '2013-07-24 04:46:07'),
(43, 17, 77, '13', 22, 42, 9, '2013-07-24 04:51:16'),
(44, 17, 77, '13', 22, 42, 9, '2013-07-24 04:56:25'),
(45, 17, 77, '13', 22, 42, 9, '2013-07-24 05:01:33'),
(46, 17, 77, '13', 22, 43, 9, '2013-07-24 05:06:42'),
(47, 17, 77, '13', 22, 43, 9, '2013-07-24 05:11:51'),
(48, 17, 77, '13', 22, 43, 9, '2013-07-24 05:16:59'),
(49, 17, 77, '13', 22, 43, 9, '2013-07-24 05:22:08'),
(50, 17, 77, '13', 22, 43, 9, '2013-07-24 05:27:16'),
(51, 17, 77, '13', 22, 43, 9, '2013-07-24 05:32:25'),
(52, 17, 77, '13', 22, 43, 9, '2013-07-24 05:37:33'),
(53, 17, 77, '13', 22, 43, 9, '2013-07-24 05:42:42'),
(54, 17, 77, '13', 22, 43, 9, '2013-07-24 05:47:50'),
(55, 17, 77, '13', 22, 43, 9, '2013-07-24 05:53:01'),
(56, 17, 77, '13', 22, 43, 9, '2013-07-24 05:58:09'),
(57, 15, 88, '13', 22, 43, 9, '2013-07-24 06:03:18'),
(58, 15, 88, '13', 22, 44, 9, '2013-07-24 06:08:27'),
(59, 15, 88, '13', 22, 43, 9, '2013-07-24 06:13:35'),
(60, 15, 88, '13', 22, 44, 9, '2013-07-24 06:18:44'),
(61, 15, 88, '13', 22, 44, 9, '2013-07-24 06:23:52'),
(62, 15, 88, '13', 22, 44, 9, '2013-07-24 06:29:01'),
(63, 15, 88, '13', 22, 44, 9, '2013-07-24 06:34:09'),
(64, 15, 88, '13', 22, 44, 9, '2013-07-24 06:39:18'),
(65, 15, 88, '13', 22, 44, 9, '2013-07-24 06:44:26'),
(66, 15, 88, '13', 22, 44, 9, '2013-07-24 06:49:35'),
(67, 15, 88, '13', 22, 44, 9, '2013-07-24 06:54:44'),
(68, 16, 82, '13', 22, 42, 9, '2013-07-24 06:59:52'),
(69, 16, 82, '13', 22, 42, 9, '2013-07-24 07:05:01'),
(70, 16, 82, '13', 22, 43, 9, '2013-07-24 07:10:10'),
(71, 16, 82, '13', 22, 43, 9, '2013-07-24 07:15:18'),
(72, 16, 82, '13', 22, 43, 9, '2013-07-24 07:20:27'),
(73, 16, 82, '13', 22, 42, 9, '2013-07-24 07:25:35'),
(74, 16, 82, '13', 22, 42, 9, '2013-07-24 07:30:44'),
(75, 16, 82, '13', 22, 42, 9, '2013-07-24 07:35:52'),
(76, 16, 82, '13', 22, 42, 9, '2013-07-24 07:41:01'),
(77, 16, 82, '13', 22, 42, 9, '2013-07-24 07:46:09'),
(78, 16, 82, '13', 22, 41, 8, '2013-07-24 07:51:18'),
(79, 16, 82, '13', 22, 41, 8, '2013-07-24 07:56:28'),
(80, 16, 77, '12', 22, 41, 8, '2013-07-24 08:01:37'),
(81, 16, 77, '12', 21, 43, 8, '2013-07-24 08:06:45'),
(82, 16, 77, '12', 21, 43, 8, '2013-07-24 08:11:54'),
(83, 16, 77, '12', 21, 44, 8, '2013-07-24 08:17:12'),
(84, 16, 77, '12', 21, 43, 8, '2013-07-24 08:22:21'),
(85, 16, 77, '12', 21, 44, 8, '2013-07-24 08:27:29'),
(86, 16, 77, '12', 21, 44, 8, '2013-07-24 08:32:38'),
(87, 16, 77, '12', 21, 44, 8, '2013-07-24 08:37:47'),
(88, 16, 77, '12', 21, 44, 8, '2013-07-24 08:42:55'),
(89, 16, 77, '12', 21, 44, 8, '2013-07-24 08:48:04'),
(90, 16, 77, '12', 21, 44, 8, '2013-07-24 08:53:13'),
(91, 17, 72, '12', 21, 44, 8, '2013-07-24 08:58:22'),
(92, 17, 72, '12', 21, 44, 8, '2013-07-24 09:03:30'),
(93, 17, 72, '12', 21, 44, 8, '2013-07-24 09:08:39'),
(94, 17, 72, '12', 21, 44, 8, '2013-07-24 09:13:48'),
(95, 17, 72, '12', 21, 44, 8, '2013-07-24 09:18:56'),
(96, 17, 72, '12', 21, 44, 8, '2013-07-24 09:24:05'),
(97, 17, 72, '12', 21, 44, 8, '2013-07-24 09:29:14'),
(98, 17, 72, '12', 21, 44, 8, '2013-07-24 09:34:23'),
(99, 17, 72, '12', 21, 44, 8, '2013-07-24 09:39:31'),
(100, 17, 72, '12', 21, 44, 8, '2013-07-24 09:44:41'),
(101, 17, 72, '12', 21, 44, 8, '2013-07-24 09:49:50'),
(102, 17, 72, '12', 21, 44, 8, '2013-07-24 09:54:58'),
(103, 18, 68, '12', 21, 44, 8, '2013-07-24 10:00:08'),
(104, 18, 68, '12', 21, 44, 8, '2013-07-24 10:05:17'),
(105, 18, 68, '12', 21, 45, 9, '2013-07-24 10:10:25'),
(106, 18, 68, '12', 21, 45, 9, '2013-07-24 10:15:37'),
(107, 18, 68, '12', 21, 44, 8, '2013-07-24 10:20:46'),
(108, 18, 68, '12', 21, 45, 9, '2013-07-24 10:25:54'),
(109, 18, 68, '12', 21, 45, 9, '2013-07-24 10:31:03'),
(110, 18, 68, '12', 21, 45, 9, '2013-07-24 10:36:12'),
(111, 18, 68, '12', 21, 45, 9, '2013-07-24 10:41:20'),
(112, 18, 68, '12', 21, 44, 8, '2013-07-24 10:46:29'),
(113, 18, 68, '12', 21, 44, 8, '2013-07-24 10:51:38'),
(114, 19, 64, '12', 21, 44, 8, '2013-07-24 10:56:47'),
(115, 19, 64, '12', 21, 44, 8, '2013-07-24 11:01:56'),
(116, 19, 64, '12', 21, 44, 8, '2013-07-24 11:07:05'),
(117, 19, 64, '12', 21, 44, 8, '2013-07-24 11:12:13'),
(118, 19, 64, '12', 21, 44, 8, '2013-07-24 11:17:22'),
(119, 19, 64, '12', 21, 44, 8, '2013-07-24 11:22:31'),
(120, 19, 64, '12', 21, 44, 8, '2013-07-24 11:27:39'),
(121, 19, 64, '12', 21, 44, 8, '2013-07-24 11:32:48'),
(122, 19, 64, '12', 21, 45, 9, '2013-07-24 11:37:56'),
(123, 19, 64, '12', 21, 44, 8, '2013-07-24 11:43:05'),
(124, 19, 64, '12', 21, 44, 8, '2013-07-24 11:48:14'),
(125, 19, 68, '13', 21, 44, 8, '2013-07-24 11:53:24'),
(126, 19, 68, '13', 21, 44, 8, '2013-07-24 11:58:32'),
(127, 19, 68, '13', 21, 44, 8, '2013-07-24 12:03:41'),
(128, 19, 68, '13', 21, 44, 8, '2013-07-24 12:08:50'),
(129, 19, 68, '13', 22, 44, 9, '2013-07-24 12:13:59'),
(130, 19, 68, '13', 21, 44, 8, '2013-07-24 12:19:10'),
(131, 19, 68, '13', 22, 44, 9, '2013-07-24 12:24:19'),
(132, 19, 68, '13', 22, 44, 9, '2013-07-24 12:29:27'),
(133, 19, 68, '13', 22, 44, 9, '2013-07-24 12:34:36'),
(134, 19, 68, '13', 22, 44, 9, '2013-07-24 12:39:45'),
(135, 19, 68, '13', 22, 44, 9, '2013-07-24 12:44:53'),
(136, 19, 68, '13', 22, 44, 9, '2013-07-24 12:50:02'),
(137, 19, 68, '13', 22, 44, 9, '2013-07-24 12:55:11'),
(138, 19, 68, '13', 22, 44, 9, '2013-07-24 01:00:20'),
(139, 19, 68, '13', 22, 44, 9, '2013-07-24 01:05:28'),
(140, 19, 68, '13', 22, 43, 9, '2013-07-24 01:10:37'),
(141, 19, 68, '13', 22, 43, 9, '2013-07-24 01:15:46'),
(142, 19, 68, '13', 22, 43, 9, '2013-07-24 01:20:56'),
(143, 19, 68, '13', 22, 43, 9, '2013-07-24 01:26:04'),
(144, 19, 68, '13', 22, 43, 9, '2013-07-24 01:31:13'),
(145, 19, 68, '13', 22, 43, 9, '2013-07-24 01:36:22'),
(146, 19, 68, '13', 22, 44, 9, '2013-07-24 01:41:31'),
(147, 19, 68, '13', 22, 44, 9, '2013-07-24 01:46:39'),
(148, 19, 68, '13', 22, 44, 9, '2013-07-24 01:51:48'),
(149, 19, 68, '13', 22, 44, 9, '2013-07-24 01:56:57'),
(150, 19, 68, '13', 22, 43, 9, '2013-07-24 02:02:05'),
(151, 19, 68, '13', 22, 44, 9, '2013-07-24 02:07:14'),
(152, 19, 68, '13', 22, 43, 9, '2013-07-24 02:12:23'),
(153, 19, 68, '13', 22, 43, 9, '2013-07-24 02:17:31'),
(154, 19, 68, '13', 22, 43, 9, '2013-07-24 02:22:40'),
(155, 19, 68, '13', 23, 43, 10, '2013-07-24 02:27:50'),
(156, 19, 68, '13', 23, 43, 10, '2013-07-24 02:32:59'),
(157, 19, 68, '13', 23, 43, 10, '2013-07-24 02:38:08'),
(158, 19, 68, '13', 23, 43, 10, '2013-07-24 02:43:16'),
(159, 19, 68, '13', 23, 43, 10, '2013-07-24 02:48:26'),
(160, 19, 68, '13', 23, 43, 10, '2013-07-24 02:53:35'),
(161, 19, 68, '13', 23, 43, 10, '2013-07-24 02:58:44'),
(162, 18, 77, '14', 23, 44, 10, '2013-07-24 03:21:57'),
(163, 18, 77, '14', 23, 44, 10, '2013-07-24 03:27:06'),
(164, 18, 77, '14', 23, 44, 10, '2013-07-24 03:32:15'),
(165, 18, 77, '14', 23, 44, 10, '2013-07-24 03:37:24'),
(166, 18, 77, '14', 23, 44, 10, '2013-07-24 03:42:34'),
(167, 18, 77, '14', 23, 44, 10, '2013-07-24 03:46:08'),
(168, 18, 77, '14', 23, 44, 10, '2013-07-24 03:51:20'),
(169, 20, 68, '14', 23, 44, 10, '2013-07-24 04:02:09'),
(170, 20, 68, '14', 23, 44, 10, '2013-07-24 04:07:17'),
(171, 20, 68, '14', 23, 44, 10, '2013-07-24 04:12:26'),
(172, 20, 68, '14', 23, 43, 10, '2013-07-24 04:17:34'),
(173, 20, 68, '14', 23, 43, 10, '2013-07-24 04:22:43'),
(174, 20, 68, '14', 24, 44, 11, '2013-07-24 04:27:19'),
(175, 20, 68, '14', 24, 44, 11, '2013-07-24 04:32:30'),
(176, 20, 68, '14', 25, 42, 11, '2013-07-24 04:33:14'),
(177, 20, 68, '14', 25, 44, 12, '2013-07-24 04:50:27'),
(178, 20, 68, '14', 25, 45, 12, '2013-07-24 04:52:05'),
(179, 20, 68, '14', 26, 44, 13, '2013-07-24 04:52:27'),
(180, 20, 68, '14', 27, 43, 13, '2013-07-24 04:57:36'),
(181, 20, 68, '14', 28, 43, 14, '2013-07-24 05:02:44'),
(182, 20, 68, '14', 28, 42, 14, '2013-07-24 05:07:31'),
(183, 20, 68, '14', 29, 41, 14, '2013-07-24 05:09:36'),
(184, 20, 68, '14', 31, 40, 16, '2013-07-24 05:14:46'),
(185, 20, 68, '14', 31, 39, 15, '2013-07-24 05:19:54'),
(186, 20, 68, '14', 32, 38, 16, '2013-07-24 05:25:03'),
(187, 20, 68, '14', 34, 37, 17, '2013-07-24 05:30:12'),
(188, 20, 68, '14', 34, 37, 17, '2013-07-24 05:35:21'),
(189, 20, 68, '14', 28, 31, 9, '2013-07-24 05:38:23'),
(190, 20, 68, '14', 28, 39, 13, '2013-07-24 05:43:32'),
(191, 20, 68, '14', 24, 41, 10, '2013-07-24 05:48:41'),
(192, 20, 68, '14', 24, 42, 10, '2013-07-24 05:53:50'),
(193, 19, 78, '15', 24, 41, 10, '2013-07-24 05:58:59'),
(194, 19, 78, '15', 24, 41, 10, '2013-07-24 06:04:09'),
(195, 19, 78, '15', 24, 42, 10, '2013-07-24 06:09:17'),
(196, 19, 78, '15', 24, 41, 10, '2013-07-24 06:14:26'),
(197, 19, 78, '15', 24, 43, 11, '2013-07-24 06:19:35'),
(198, 19, 78, '15', 24, 43, 11, '2013-07-24 06:24:44'),
(199, 19, 78, '15', 24, 43, 11, '2013-07-24 06:29:53'),
(200, 19, 78, '15', 23, 43, 10, '2013-07-24 06:35:03'),
(201, 19, 78, '15', 24, 43, 11, '2013-07-24 06:40:11'),
(202, 19, 78, '15', 23, 43, 10, '2013-07-24 06:45:20'),
(203, 19, 78, '15', 24, 43, 11, '2013-07-24 06:50:29'),
(204, 19, 78, '15', 23, 43, 10, '2013-07-24 06:55:37'),
(205, 18, 83, '15', 23, 43, 10, '2013-07-24 07:00:46'),
(206, 18, 83, '15', 23, 43, 10, '2013-07-24 07:05:55'),
(207, 18, 83, '15', 23, 43, 10, '2013-07-24 07:11:05'),
(208, 18, 83, '15', 23, 43, 10, '2013-07-24 07:16:14'),
(209, 18, 83, '15', 23, 43, 10, '2013-07-24 07:21:24'),
(210, 18, 83, '15', 23, 44, 10, '2013-07-24 07:26:33'),
(211, 18, 83, '15', 23, 44, 10, '2013-07-24 07:31:42'),
(212, 18, 83, '15', 23, 44, 10, '2013-07-24 07:36:51'),
(213, 18, 83, '15', 23, 44, 10, '2013-07-24 07:41:59'),
(214, 18, 83, '15', 23, 44, 10, '2013-07-24 07:47:08'),
(215, 18, 83, '15', 23, 43, 10, '2013-07-24 07:52:17'),
(216, 18, 83, '15', 23, 43, 10, '2013-07-24 07:57:25'),
(217, 18, 83, '15', 23, 44, 10, '2013-07-24 08:02:34'),
(218, 18, 83, '15', 23, 44, 10, '2013-07-24 08:07:43'),
(219, 18, 83, '15', 23, 44, 10, '2013-07-24 08:12:51'),
(220, 18, 83, '15', 23, 44, 10, '2013-07-24 08:18:00'),
(221, 18, 83, '15', 23, 44, 10, '2013-07-24 08:23:09'),
(222, 18, 83, '15', 23, 43, 10, '2013-07-24 08:28:18'),
(223, 18, 83, '15', 23, 43, 10, '2013-07-24 08:33:26'),
(224, 18, 83, '15', 23, 43, 10, '2013-07-24 08:38:35'),
(225, 18, 83, '15', 23, 43, 10, '2013-07-24 08:43:44'),
(226, 18, 83, '15', 23, 43, 10, '2013-07-24 08:48:53'),
(227, 18, 83, '15', 23, 43, 10, '2013-07-24 08:54:02'),
(228, 18, 77, '14', 23, 43, 10, '2013-07-24 08:59:10'),
(229, 18, 77, '14', 23, 43, 10, '2013-07-24 09:04:19'),
(230, 18, 77, '14', 23, 43, 10, '2013-07-24 09:09:28'),
(231, 18, 77, '14', 23, 43, 10, '2013-07-24 09:14:37'),
(232, 18, 77, '14', 23, 43, 10, '2013-07-24 09:19:45'),
(233, 18, 77, '14', 23, 43, 10, '2013-07-24 09:24:55'),
(234, 18, 77, '14', 23, 43, 10, '2013-07-24 09:30:04'),
(235, 18, 77, '14', 23, 43, 10, '2013-07-24 09:35:13'),
(236, 18, 77, '14', 23, 43, 10, '2013-07-24 09:40:22'),
(237, 18, 77, '14', 23, 43, 10, '2013-07-24 09:45:31'),
(238, 18, 77, '14', 23, 43, 10, '2013-07-24 09:50:42'),
(239, 18, 77, '14', 23, 43, 10, '2013-07-24 09:53:34'),
(240, 17, 82, '14', 24, 44, 11, '2013-07-24 09:53:55'),
(241, 17, 82, '14', 24, 44, 11, '2013-07-24 09:59:04'),
(242, 17, 82, '14', 24, 43, 11, '2013-07-24 10:04:13'),
(243, 17, 82, '14', 24, 43, 11, '2013-07-24 10:09:22'),
(244, 17, 82, '14', 24, 43, 11, '2013-07-24 10:14:30'),
(245, 17, 82, '14', 24, 43, 11, '2013-07-24 10:19:39'),
(246, 17, 82, '14', 24, 43, 11, '2013-07-24 10:24:47'),
(247, 17, 82, '14', 24, 43, 11, '2013-07-24 10:29:56'),
(248, 17, 82, '14', 23, 43, 10, '2013-07-24 10:35:05'),
(249, 17, 82, '14', 23, 43, 10, '2013-07-24 10:40:13'),
(250, 17, 82, '14', 23, 43, 10, '2013-07-24 10:45:22'),
(251, 17, 82, '14', 23, 43, 10, '2013-07-24 10:50:31'),
(252, 17, 82, '14', 23, 43, 10, '2013-07-24 10:55:39'),
(253, 17, 82, '14', 23, 43, 10, '2013-07-24 11:00:48'),
(254, 17, 82, '14', 23, 43, 10, '2013-07-24 11:05:56'),
(255, 17, 82, '14', 23, 44, 10, '2013-07-24 11:11:05'),
(256, 17, 82, '14', 23, 43, 10, '2013-07-24 11:16:13'),
(257, 17, 82, '14', 23, 43, 10, '2013-07-24 11:21:22'),
(258, 17, 82, '14', 23, 43, 10, '2013-07-24 11:26:30'),
(259, 17, 82, '14', 23, 43, 10, '2013-07-24 11:31:39'),
(260, 17, 82, '14', 23, 43, 10, '2013-07-24 11:36:47'),
(261, 17, 82, '14', 23, 44, 10, '2013-07-24 11:41:56'),
(262, 17, 82, '14', 22, 44, 9, '2013-07-24 11:47:04'),
(263, 17, 82, '14', 22, 44, 9, '2013-07-24 11:52:13'),
(264, 16, 88, '14', 22, 45, 10, '2013-07-24 11:57:22'),
(265, 16, 88, '14', 23, 43, 10, '2013-07-25 12:02:30'),
(266, 16, 88, '14', 22, 45, 10, '2013-07-25 12:07:39'),
(267, 16, 88, '14', 22, 45, 10, '2013-07-25 12:12:47'),
(268, 16, 88, '14', 22, 45, 10, '2013-07-25 12:17:56'),
(269, 16, 88, '14', 22, 45, 10, '2013-07-25 12:23:04'),
(270, 16, 88, '14', 22, 45, 10, '2013-07-25 12:28:13'),
(271, 16, 88, '14', 22, 45, 10, '2013-07-25 12:33:22'),
(272, 16, 88, '14', 22, 45, 10, '2013-07-25 12:38:30'),
(273, 16, 88, '14', 22, 45, 10, '2013-07-25 12:43:39'),
(274, 16, 88, '14', 22, 45, 10, '2013-07-25 12:48:48'),
(275, 16, 88, '14', 22, 45, 10, '2013-07-25 12:53:56'),
(276, 16, 88, '14', 22, 45, 10, '2013-07-25 12:59:05'),
(277, 16, 88, '14', 22, 45, 10, '2013-07-25 01:04:13'),
(278, 16, 88, '14', 22, 45, 10, '2013-07-25 01:09:22'),
(279, 16, 88, '14', 22, 45, 10, '2013-07-25 01:14:30'),
(280, 16, 88, '14', 22, 45, 10, '2013-07-25 01:19:39'),
(281, 16, 88, '14', 22, 45, 10, '2013-07-25 01:24:48'),
(282, 16, 88, '14', 22, 46, 10, '2013-07-25 01:29:56'),
(283, 16, 88, '14', 22, 46, 10, '2013-07-25 01:35:05'),
(284, 16, 88, '14', 22, 46, 10, '2013-07-25 01:40:14'),
(285, 16, 88, '14', 22, 46, 10, '2013-07-25 01:45:22'),
(286, 16, 88, '14', 22, 46, 10, '2013-07-25 01:50:31'),
(287, 16, 88, '14', 22, 46, 10, '2013-07-25 01:55:39'),
(288, 16, 88, '14', 22, 46, 10, '2013-07-25 02:00:48'),
(289, 16, 88, '14', 22, 46, 10, '2013-07-25 02:05:56'),
(290, 16, 88, '14', 21, 46, 9, '2013-07-25 02:11:05'),
(291, 16, 88, '14', 21, 46, 9, '2013-07-25 02:16:14'),
(292, 16, 88, '14', 21, 46, 9, '2013-07-25 02:21:22'),
(293, 16, 88, '14', 21, 46, 9, '2013-07-25 02:26:30'),
(294, 16, 88, '14', 21, 46, 9, '2013-07-25 02:31:39'),
(295, 16, 88, '14', 21, 46, 9, '2013-07-25 02:36:48'),
(296, 16, 88, '14', 21, 46, 9, '2013-07-25 02:41:56'),
(297, 16, 88, '14', 21, 47, 9, '2013-07-25 02:47:05'),
(298, 16, 88, '14', 21, 47, 9, '2013-07-25 02:52:13'),
(299, 16, 82, '13', 21, 47, 9, '2013-07-25 02:57:22'),
(300, 16, 82, '13', 21, 47, 9, '2013-07-25 03:02:30'),
(301, 16, 82, '13', 21, 47, 9, '2013-07-25 03:07:39'),
(302, 16, 82, '13', 21, 47, 9, '2013-07-25 03:12:47'),
(303, 16, 82, '13', 21, 47, 9, '2013-07-25 03:17:56'),
(304, 16, 82, '13', 21, 47, 9, '2013-07-25 03:23:04'),
(305, 16, 82, '13', 21, 47, 9, '2013-07-25 03:28:13'),
(306, 16, 82, '13', 21, 47, 9, '2013-07-25 03:33:22'),
(307, 16, 82, '13', 21, 47, 9, '2013-07-25 03:38:31'),
(308, 16, 82, '13', 21, 47, 9, '2013-07-25 03:43:39'),
(309, 16, 82, '13', 21, 47, 9, '2013-07-25 03:48:48'),
(310, 15, 88, '13', 21, 47, 9, '2013-07-25 03:53:56'),
(311, 15, 88, '13', 21, 47, 9, '2013-07-25 03:59:05'),
(312, 15, 88, '13', 21, 47, 9, '2013-07-25 04:04:14'),
(313, 15, 88, '13', 21, 47, 9, '2013-07-25 04:09:23'),
(314, 15, 88, '13', 21, 47, 9, '2013-07-25 04:14:31'),
(315, 15, 88, '13', 21, 48, 10, '2013-07-25 04:19:40'),
(316, 15, 88, '13', 21, 48, 10, '2013-07-25 04:24:48'),
(317, 15, 88, '13', 21, 48, 10, '2013-07-25 04:29:57'),
(318, 15, 88, '13', 21, 48, 10, '2013-07-25 04:35:06'),
(319, 15, 88, '13', 21, 48, 10, '2013-07-25 04:40:14'),
(320, 15, 88, '13', 21, 48, 10, '2013-07-25 04:45:23'),
(321, 15, 88, '13', 21, 48, 10, '2013-07-25 04:50:32'),
(322, 15, 88, '13', 21, 48, 10, '2013-07-25 04:55:40'),
(323, 15, 88, '13', 21, 48, 10, '2013-07-25 05:00:49'),
(324, 15, 88, '13', 21, 48, 10, '2013-07-25 05:05:58'),
(325, 15, 88, '13', 21, 48, 10, '2013-07-25 05:11:06'),
(326, 15, 88, '13', 21, 48, 10, '2013-07-25 05:16:15'),
(327, 15, 88, '13', 21, 48, 10, '2013-07-25 05:21:23'),
(328, 15, 88, '13', 21, 48, 10, '2013-07-25 05:26:32'),
(329, 15, 88, '13', 21, 48, 10, '2013-07-25 05:31:40'),
(330, 15, 88, '13', 21, 48, 10, '2013-07-25 05:36:49'),
(331, 15, 88, '13', 21, 48, 10, '2013-07-25 05:41:57'),
(332, 15, 88, '13', 21, 48, 10, '2013-07-25 05:47:06'),
(333, 15, 88, '13', 21, 48, 10, '2013-07-25 05:52:15'),
(334, 15, 82, '12', 21, 48, 10, '2013-07-25 05:57:23'),
(335, 15, 82, '12', 21, 48, 10, '2013-07-25 06:02:32'),
(336, 15, 82, '12', 21, 48, 10, '2013-07-25 06:07:40'),
(337, 15, 82, '12', 21, 48, 10, '2013-07-25 06:12:49'),
(338, 15, 82, '12', 21, 48, 10, '2013-07-25 06:17:58'),
(339, 15, 82, '12', 21, 49, 10, '2013-07-25 06:23:07'),
(340, 15, 82, '12', 21, 49, 10, '2013-07-25 06:28:15'),
(341, 15, 82, '12', 21, 49, 10, '2013-07-25 06:33:24'),
(342, 15, 82, '12', 21, 49, 10, '2013-07-25 06:38:33'),
(343, 15, 82, '12', 21, 49, 10, '2013-07-25 06:43:41'),
(344, 15, 82, '12', 21, 49, 10, '2013-07-25 06:48:50'),
(345, 15, 82, '12', 21, 48, 10, '2013-07-25 06:53:59'),
(346, 15, 82, '12', 21, 48, 10, '2013-07-25 06:59:07'),
(347, 15, 82, '12', 21, 48, 10, '2013-07-25 07:04:16'),
(348, 15, 82, '12', 21, 48, 10, '2013-07-25 07:09:24'),
(349, 15, 82, '12', 21, 48, 10, '2013-07-25 07:14:33'),
(350, 15, 82, '12', 21, 48, 10, '2013-07-25 07:19:42'),
(351, 15, 82, '12', 21, 47, 9, '2013-07-25 07:24:50'),
(352, 15, 82, '12', 21, 47, 9, '2013-07-25 07:29:59'),
(353, 15, 82, '12', 21, 47, 9, '2013-07-25 07:35:07'),
(354, 15, 82, '12', 21, 47, 9, '2013-07-25 07:40:16'),
(355, 15, 82, '12', 21, 46, 9, '2013-07-25 07:45:25'),
(356, 15, 82, '12', 21, 46, 9, '2013-07-25 07:50:33'),
(357, 16, 77, '12', 21, 45, 9, '2013-07-25 07:55:42'),
(358, 16, 77, '12', 21, 45, 9, '2013-07-25 08:00:51'),
(359, 16, 77, '12', 21, 45, 9, '2013-07-25 08:06:00'),
(360, 16, 77, '12', 21, 44, 8, '2013-07-25 08:11:08'),
(361, 16, 77, '12', 21, 44, 8, '2013-07-25 08:16:17'),
(362, 16, 77, '12', 21, 43, 8, '2013-07-25 08:21:25'),
(363, 16, 77, '12', 21, 43, 8, '2013-07-25 08:26:34'),
(364, 16, 77, '12', 21, 44, 8, '2013-07-25 08:31:42'),
(365, 16, 77, '12', 21, 44, 8, '2013-07-25 08:36:50'),
(366, 16, 77, '12', 21, 44, 8, '2013-07-25 08:41:59'),
(367, 16, 77, '12', 21, 45, 9, '2013-07-25 08:47:07'),
(368, 16, 77, '12', 21, 44, 8, '2013-07-25 08:52:16'),
(369, 18, 64, '11', 21, 44, 8, '2013-07-25 08:57:25'),
(370, 18, 64, '11', 21, 44, 8, '2013-07-25 09:02:34'),
(371, 18, 64, '11', 21, 44, 8, '2013-07-25 09:07:42'),
(372, 18, 64, '11', 21, 44, 8, '2013-07-25 09:12:51'),
(373, 18, 64, '11', 21, 44, 8, '2013-07-25 09:17:59'),
(374, 18, 64, '11', 21, 44, 8, '2013-07-25 09:23:08'),
(375, 18, 64, '11', 21, 44, 8, '2013-07-25 09:28:17'),
(376, 18, 64, '11', 21, 44, 8, '2013-07-25 09:33:25'),
(377, 18, 64, '11', 21, 44, 8, '2013-07-25 09:38:34'),
(378, 18, 64, '11', 21, 44, 8, '2013-07-25 09:43:42'),
(379, 18, 64, '11', 21, 44, 8, '2013-07-25 09:48:51'),
(380, 18, 64, '11', 21, 44, 8, '2013-07-25 09:53:59'),
(381, 18, 64, '11', 21, 44, 8, '2013-07-25 09:59:08'),
(382, 18, 64, '11', 21, 44, 8, '2013-07-25 10:04:17'),
(383, 20, 52, '10', 21, 44, 8, '2013-07-25 10:09:25'),
(384, 20, 52, '10', 21, 44, 8, '2013-07-25 10:14:34'),
(385, 20, 52, '10', 21, 44, 8, '2013-07-25 10:19:43'),
(386, 20, 52, '10', 21, 44, 8, '2013-07-25 10:24:51'),
(387, 20, 52, '10', 21, 44, 8, '2013-07-25 10:30:00'),
(388, 20, 52, '10', 21, 44, 8, '2013-07-25 10:35:08'),
(389, 20, 52, '10', 22, 44, 9, '2013-07-25 10:40:17'),
(390, 20, 52, '10', 21, 44, 8, '2013-07-25 10:45:25'),
(391, 20, 52, '10', 22, 44, 9, '2013-07-25 10:50:34'),
(392, 20, 52, '10', 22, 44, 9, '2013-07-25 10:55:43'),
(393, 20, 52, '10', 22, 44, 9, '2013-07-25 11:00:52'),
(394, 20, 52, '10', 22, 44, 9, '2013-07-25 11:06:00'),
(395, 22, 46, '10', 22, 44, 9, '2013-07-25 11:11:09'),
(396, 22, 46, '10', 22, 44, 9, '2013-07-25 11:16:17'),
(397, 22, 46, '10', 22, 44, 9, '2013-07-25 11:21:26'),
(398, 22, 46, '10', 22, 44, 9, '2013-07-25 11:26:35'),
(399, 22, 46, '10', 22, 43, 9, '2013-07-25 11:31:43'),
(400, 22, 46, '10', 22, 43, 9, '2013-07-25 11:36:52'),
(401, 22, 46, '10', 22, 43, 9, '2013-07-25 11:42:00'),
(402, 22, 46, '10', 22, 43, 9, '2013-07-25 11:47:09'),
(403, 22, 46, '10', 22, 44, 9, '2013-07-25 11:52:18'),
(404, 23, 47, '11', 22, 43, 9, '2013-07-25 11:57:26'),
(405, 23, 47, '11', 22, 43, 9, '2013-07-25 12:02:35'),
(406, 23, 47, '11', 22, 43, 9, '2013-07-25 12:07:44'),
(407, 23, 47, '11', 22, 43, 9, '2013-07-25 12:12:52'),
(408, 23, 47, '11', 22, 43, 9, '2013-07-25 12:18:01'),
(409, 23, 47, '11', 22, 43, 9, '2013-07-25 12:23:09'),
(410, 23, 47, '11', 22, 43, 9, '2013-07-25 12:28:18'),
(411, 23, 47, '11', 23, 42, 9, '2013-07-25 12:33:27'),
(412, 23, 47, '11', 23, 42, 9, '2013-07-25 12:38:36'),
(413, 23, 47, '11', 23, 42, 9, '2013-07-25 12:43:44'),
(414, 23, 47, '11', 23, 42, 9, '2013-07-25 12:48:53'),
(415, 23, 47, '11', 23, 42, 9, '2013-07-25 12:54:01'),
(416, 23, 47, '11', 23, 42, 9, '2013-07-25 12:59:10'),
(417, 25, 41, '11', 23, 42, 9, '2013-07-25 01:04:19'),
(418, 25, 41, '11', 24, 42, 10, '2013-07-25 01:09:27'),
(419, 25, 41, '11', 24, 42, 10, '2013-07-25 01:14:37'),
(420, 25, 41, '11', 24, 42, 10, '2013-07-25 01:19:46'),
(421, 25, 41, '11', 24, 41, 10, '2013-07-25 01:24:55'),
(422, 25, 41, '11', 24, 40, 10, '2013-07-25 01:30:14'),
(423, 25, 41, '11', 24, 40, 10, '2013-07-25 01:35:23'),
(424, 25, 41, '11', 25, 39, 10, '2013-07-25 01:50:50'),
(425, 26, 42, '12', 25, 40, 10, '2013-07-25 01:55:59'),
(426, 26, 42, '12', 25, 40, 10, '2013-07-25 02:01:09'),
(427, 26, 42, '12', 25, 39, 10, '2013-07-25 02:06:18'),
(428, 26, 42, '12', 25, 40, 10, '2013-07-25 02:11:27'),
(429, 26, 42, '12', 25, 40, 10, '2013-07-25 02:16:35'),
(430, 26, 42, '12', 25, 40, 10, '2013-07-25 02:21:44'),
(431, 27, 45, '14', 27, 44, 9, '2013-07-25 04:49:59'),
(432, 27, 45, '14', 25, 41, 11, '2013-07-25 04:50:07'),
(433, 26, 47, '14', 25, 40, 10, '2013-07-25 04:55:16'),
(434, 26, 47, '14', 25, 40, 10, '2013-07-25 05:00:25'),
(435, 26, 47, '14', 26, 40, 11, '2013-07-25 05:05:34'),
(436, 26, 47, '14', 26, 41, 12, '2013-07-25 05:10:42'),
(437, 24, 57, '15', 23, 39, 8, '2013-07-25 06:20:12'),
(438, 24, 57, '15', 24, 39, 9, '2013-07-25 06:25:21'),
(439, 24, 57, '15', 24, 39, 9, '2013-07-25 06:30:29'),
(440, 24, 57, '15', 25, 38, 10, '2013-07-25 06:35:38'),
(441, 24, 57, '15', 25, 38, 10, '2013-07-25 06:40:47'),
(442, 24, 57, '15', 25, 38, 10, '2013-07-25 06:45:55'),
(443, 24, 57, '15', 25, 38, 10, '2013-07-25 06:51:04'),
(444, 22, 64, '15', 25, 39, 10, '2013-07-25 06:56:13');