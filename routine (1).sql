-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 30, 2017 at 06:23 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `routine`
--

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `User_Id` varchar(255) NOT NULL,
  `Subject` varchar(255) NOT NULL,
  `Shortened_form` varchar(255) NOT NULL,
  `Colour` varchar(255) NOT NULL,
  `Teachers_name` varchar(255) NOT NULL,
  `Day` varchar(255) NOT NULL,
  `S_time` varchar(255) NOT NULL,
  `E_time` varchar(255) NOT NULL,
  `Class_duration` int(11) NOT NULL,
  `Keywords` varchar(200) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`Id`, `User_Id`, `Subject`, `Shortened_form`, `Colour`, `Teachers_name`, `Day`, `S_time`, `E_time`, `Class_duration`, `Keywords`) VALUES
(6, 'Kamal', 'Digital Logic', 'EEEG-202', 'red', 'Aanand Shrestha', 'Monday', '9', '11', 2, 'Digital Logic'),
(7, 'Kamal', 'Electronics', 'EEEG-211', 'green', 'Ashish Shrestha', 'Monday', '11', '13', 2, 'Electronics'),
(41, 'Kamal', 'Statistics', 'MATH-208', 'yellow', 'Jyoti Upadhaya', 'Tuesday', '14', '16', 2, 'Statistics'),
(32, 'Kamal', 'BREAK', '', 'white', '', 'Thrusday', '10', '11', 1, 'BREAK'),
(43, 'Kamal', 'Discrete Mathematics', 'MCSC-201', 'purple', 'K.B. Manandar', 'Thrusday', '14', '15', 1, 'Discrete Mathematics'),
(13, 'Kamal', 'Electronics', 'EEEG-211', 'green', 'Ashish Shrestha', 'Friday', '9', '11', 2, 'Electronics'),
(16, 'Kamal', 'Statistics', 'MATH-208', 'yellow', 'Jyoti Upadhaya', 'Friday', '14', '16', 2, 'Statistics'),
(24, 'Kamal', 'HOLIDAY', '', 'pink', '', 'Sunday', '9', '16', 7, 'HOLIDAY'),
(18, 'Kamal', 'HOLIDAY', 'HOLIDAY', 'pink', '', 'Saturday', '9', '16', 7, 'LUNCH'),
(19, 'Kamal', 'PROJECT DAY', '', 'gray', '', 'Wednesday', '9', '16', 7, 'PROJECT DAY'),
(20, 'Kamal', 'LUNCH', '', 'aqua', '', 'Monday', '13', '14', 1, 'LUNCH'),
(23, 'Kamal', 'LUNCH', '', 'aqua', '', 'Friday', '11', '12', 1, 'LUNCH'),
(29, 'Kamal', 'BREAK', '', 'white', '', 'Monday', '14', '16', 2, 'BREAK'),
(30, 'Kamal', 'Discrete Mathematics', 'MCSC-201', 'purple', 'K.B. Manandar', 'Friday', '12', '14', 2, 'Discrete Mathematics'),
(40, 'Kamal', 'BREAK', '', 'white', '', 'Tuesday', '13', '14', 1, 'BREAK'),
(39, 'Kamal', 'BREAK', '', 'white', '', 'Tuesday', '11', '12', 1, 'BREAK'),
(31, 'Kamal', 'Data Structure and Algorithm', 'COMP-202', 'blue', 'Gajendra Sharma', 'Thrusday', '9', '10', 1, 'Data Structure and Algorithm'),
(42, 'Kamal', 'LUNCH', '', 'aqua', '', 'Thrusday', '12', '13', 1, 'LUNCH'),
(38, 'Kamal', 'Data Structure and Algorithm', 'COMP-202', 'blue', 'Gajendra Sharma', 'Tuesday', '9', '11', 2, 'Data Structure and Algorithm'),
(34, 'Kamal', 'LUNCH', '', 'aqua', '', 'Tuesday', '12', '13', 1, 'LUNCH'),
(33, 'Kamal', 'Digital Logic', 'EEEG 202', 'red', 'Aanand Shrestha', 'Thrusday', '11', '12', 1, 'Digital Logic'),
(122, 'Ram', 'HOLIDAY', '', '', '', 'Tuesday', '9', '15', 6, 'HOLIDAY'),
(35, 'Kamal', 'Discrete Mathematics', 'MCSC-201', 'purple', 'K.B. Manandar', 'Thrusday', '13', '15', 2, 'Discrete Mathematics'),
(36, 'Kamal', 'BREAK', '', 'white', '', 'Thrusday', '10', '11', 1, 'BREAK'),
(37, 'Kamal', 'BREAK', '', 'white', '', 'Thrusday', '15', '16', 1, 'BREAK'),
(113, 'Ram', 'Digital Logic', 'EEEG 202', 'red', 'Aanand Shrestha', 'Sunday', '11', '12', 1, 'Digital Logic'),
(114, 'Ram', 'BREAK', '', '', '', 'Sunday', '12', '13', 1, 'BREAK'),
(115, 'Ram', 'LUNCH', '', '', '', 'Sunday', '13', '14', 1, 'LUNCH'),
(116, 'Ram', 'BREAK', 'EEEG 202', '', '', 'Sunday', '14', '15', 1, 'BREAK'),
(117, 'Ram', 'Electronics', 'EEEG-211', 'green', 'Ashish Shrestha', 'Sunday', '15', '16', 1, 'Electronics'),
(118, 'Ram', 'Electronics', 'EEEG-211', 'green', 'Ashish Shrestha', 'Monday', '9', '11', 2, 'Electronics'),
(119, 'Ram', 'BREAK', 'EEEG 202', '', 'Aanand Shrestha', 'Monday', '11', '13', 2, 'BREAK'),
(120, 'Ram', 'LUNCH', '', '', '', 'Monday', '13', '15', 2, 'LUNCH'),
(121, 'Ram', 'Digital Logic', 'EEEG 202', 'red', 'Aanand Shrestha', 'Monday', '15', '16', 1, 'Digital Logic'),
(132, 'Ram', 'BREAK', '', '', '', 'Friday', '9', '10', 1, 'BREAK'),
(142, 'Ram', 'LUNCH', '', '', '', 'Wednesday', '15', '16', 1, 'LUNCH'),
(140, 'Ram', 'Digital Logic', '', 'red', '', 'Thrusday', '13', '15', 2, 'Digital Logic'),
(141, 'Ram', 'Data Structure and Algorithm', '', 'purple', '', 'Thrusday', '15', '16', 1, 'Data Structure and Algorithm'),
(139, 'Ram', 'BREAK', '', '', '', 'Thrusday', '11', '13', 2, 'BREAK'),
(138, 'Ram', 'Digital Logic', 'EEEG 202', 'red', 'Aanand Shrestha', 'Thrusday', '9', '11', 2, 'Digital Logic'),
(127, 'Ram', 'BREAK', '', '', '', 'Tuesday', '15', '16', 1, 'BREAK'),
(126, 'Ram', 'Electronics', 'EEEG-211', 'green', 'Ashish Shrestha', 'Wednesday', '13', '15', 2, 'Electronics'),
(125, 'Ram', 'LUNCH', '', '', '', 'Wednesday', '11', '13', 2, 'LUNCH'),
(124, 'Ram', 'Discrete Mathematics', 'MCSC-201', 'blue', 'K.B. Manandar', 'Wednesday', '9', '11', 2, 'Discrete Mathematics'),
(123, 'Ram', 'Data Structure and Algorithm', 'COMP-202', 'purple', 'Gajendra Sharma', 'Tuesday', '15', '16', 1, 'Data Structure and Algorithm'),
(111, 'Ram', 'Discrete Mathematics', 'MCSC-201', 'blue', 'K.B. Manandar', 'Sunday', '9', '10', 1, 'Discrete Mathematics'),
(112, 'Ram', 'Data Structure and Algorithm', 'COMP-202', 'purple', 'Gajendra Sharma', 'Sunday', '10', '11', 1, 'Data Structure and Algorithm'),
(75, 'Aagya', 'PHAR 301', 'PHARM 301', 'red', 'Sahana', 'Sunday', '9', '11', 2, 'PHAR 301'),
(76, 'Aagya', 'LUNCH', '', '', '', 'Sunday', '11', '12', 1, 'LUNCH'),
(77, 'Aagya', 'PHARM 303', '', 'blue', 'RKS', 'Sunday', '12', '14', 2, 'PHARM 303'),
(78, 'Aagya', 'LIBRARY', '', 'white', '', 'Sunday', '14', '16', 2, 'LIBRARY'),
(80, 'Aagya', 'INAN 302 LAB(Roll No:1-30) RB,Sweta,PG  [Pharmaceutical Chemistry Lab ]    PHARM 305 LAB(Roll No-31-60) AKS/RG/PG  [Pharmaceuticals Lab]', '', 'yellow', 'AKS,RG,PG', 'Monday', '9', '12', 3, 'INAN 302 LAB(Roll No:1-30) RB,Sweta,PG  [Pharmaceutical Chemistry Lab ]    PHARM 305 LAB(Roll No-31-60) AKS/RG/PG  [Pharmaceuticals Lab]'),
(81, 'Aagya', 'LUNCH', '', '', '', 'Monday', '12', '13', 1, 'LUNCH'),
(82, 'Aagya', 'PHARM 304', '', 'pink', 'RG', 'Monday', '13', '14', 1, 'PHARM 304'),
(83, 'Aagya', 'INAN 301', '', 'green', 'Chem Staff', 'Monday', '14', '16', 2, 'INAN 301'),
(103, 'Aagya', 'PHARM 304', '', 'pink', '', 'Tuesday', '9', '11', 2, 'PHARM 304'),
(86, 'Aagya', 'LIBRARY', '', '', '', 'Tuesday', '11', '12', 1, 'LIBRARY'),
(87, 'Aagya', 'LUNCH', '', '', '', 'Tuesday', '12', '13', 1, 'LUNCH'),
(88, 'Aagya', 'INAN 302 LAB(Roll No:1-30)', '', 'yellow', '', '', '13', '16', 3, 'INAN 302 LAB(Roll No:1-30)'),
(89, 'Aagya', 'INAN 302 LAB(Roll No:1-30)', '', 'yellow', '', 'Wednesday', '9', '12', 3, 'INAN 302 LAB(Roll No:1-30)'),
(90, 'Aagya', 'LUNCH', '', '', '', '', '12', '13', 1, 'LUNCH'),
(91, 'Aagya', 'INAN 302 LAB(Roll No:1-30)', '', 'yellow', '', 'Wednesday', '13', '16', 3, 'INAN 302 LAB(Roll No:1-30)'),
(92, 'Aagya', 'MGTS 301', '', 'purple', '', 'Thrusday', '9', '11', 2, 'MGTS 301'),
(93, 'Aagya', 'LUNCH', '', '', '', 'Thrusday', '11', '12', 1, 'LUNCH'),
(95, 'Aagya', 'PHARM 303', '', 'blue', 'SH', 'Thrusday', '12', '14', 2, 'PHARM 303'),
(96, 'Aagya', 'PHARM 304', '', 'pink', 'RG', 'Thrusday', '14', '15', 1, 'PHARM 304'),
(97, 'Aagya', 'LIBRARY', '', '', '', '', '15', '16', 1, 'LIBRARY'),
(98, 'Aagya', 'PHAR 301', '', 'red', 'Rajan', 'Friday', '9', '11', 2, 'PHAR 301'),
(99, 'Aagya', 'LUNCH', '', '', '', 'Friday', '11', '12', 1, 'LUNCH'),
(100, 'Aagya', 'INAN 301', '', 'green', '', 'Friday', '12', '14', 2, 'INAN 301'),
(101, 'Aagya', 'MGTS 301', '', 'purple', '', 'Friday', '14', '16', 2, 'MGTS 301'),
(102, 'Aagya', 'HOLIDAY', '', 'aqua', '', 'Saturday', '9', '16', 7, 'HOLIDAY'),
(133, 'Ram', 'Discrete Mathematics', 'MCSC-201', 'blue', 'K.B. Manandar', 'Friday', '10', '12', 2, 'Discrete Mathematics'),
(134, 'Ram', 'Digital Logic', 'EEEG 202', 'red', 'Aanand Shrestha', 'Friday', '12', '13', 1, 'Digital Logic'),
(135, 'Ram', 'Data Structure and Algorithm', 'COMP-202', 'purple', 'Gajendra Sharma', 'Friday', '13', '14', 1, 'Data Structure and Algorithm'),
(136, 'Ram', 'LUNCH', '', '', '', 'Friday', '14', '16', 2, 'LUNCH'),
(137, 'Ram', 'HOLIDAY', '', 'pink', '', 'Saturday', '9', '16', 7, 'HOLIDAY');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
