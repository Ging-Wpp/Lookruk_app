-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2022 at 06:17 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lookruk`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkin`
--

CREATE TABLE `checkin` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `time` varchar(48) COLLATE utf8_unicode_ci NOT NULL,
  `day` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `place` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'โรงเรียน',
  `sick` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `checkin`
--

INSERT INTO `checkin` (`id`, `teacher_id`, `student_id`, `time`, `day`, `month`, `year`, `place`, `sick`) VALUES
(1, 0, 0, '8:30', 22, 11, 2565, 'บ้าน', 0),
(2, 0, 0, '10:00', 23, 11, 2565, 'โรงเรียน', 0),
(3, 0, 0, '8:30', 24, 11, 2565, 'โรงเรียน', 0),
(4, 0, 0, '10:00', 25, 11, 2565, 'โรงเรียน', 1),
(5, 0, 0, '8:35', 28, 11, 2565, 'โรงเรียน', 0),
(6, 0, 0, '8:20', 29, 11, 2565, 'โรงเรียน', 0),
(7, 0, 0, '8:30', 30, 11, 2565, 'บ้าน', 0),
(8, 0, 0, '10:00', 1, 12, 2565, 'โรงเรียน', 0),
(9, 0, 0, '8:30', 2, 12, 2565, 'โรงเรียน', 0),
(10, 0, 0, '10:00', 5, 12, 2565, 'โรงเรียน', 1),
(11, 0, 0, '8:35', 6, 12, 2565, 'โรงเรียน', 0),
(12, 0, 0, '8:20', 7, 12, 2565, 'โรงเรียน', 0),
(13, 0, 0, '8:40', 8, 12, 2565, 'โรงเรียน', 0),
(14, 0, 0, '9:00', 9, 12, 2565, 'บ้าน', 0),
(15, 0, 0, '10:00', 12, 12, 2565, 'โรงเรียน', 1),
(16, 0, 0, '8:15', 13, 12, 2565, 'โรงเรียน', 0);

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `time` varchar(48) COLLATE utf8_unicode_ci NOT NULL,
  `day` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `place` varchar(24) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'บ้าน',
  `sick` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `teacher_id`, `student_id`, `time`, `day`, `month`, `year`, `place`, `sick`) VALUES
(1, 0, 0, '14:40', 22, 11, 2565, 'บ้าน', 0),
(2, 0, 0, '14:40', 23, 11, 2565, 'โรงเรียน', 0),
(3, 0, 0, '14:30', 24, 11, 2565, 'โรงเรียน', 0),
(4, 0, 0, '14:40', 25, 11, 2565, 'โรงเรียน', 1),
(5, 0, 0, '14:40', 28, 11, 2565, 'โรงเรียน', 0),
(6, 0, 0, '14:40', 29, 11, 2565, 'โรงเรียน', 0),
(7, 0, 0, '14:30', 30, 11, 2565, 'โรงเรียน', 0),
(8, 0, 0, '14:40', 1, 12, 2565, 'โรงเรียน', 0),
(9, 0, 0, '14:50', 2, 12, 2565, 'บ้าน', 0),
(10, 0, 0, '14:40', 5, 12, 2565, 'โรงเรียน', 1),
(11, 0, 0, '14:55', 6, 12, 2565, 'โรงเรียน', 0),
(12, 0, 0, '14:40', 7, 12, 2565, 'โรงเรียน', 0),
(13, 0, 0, '14:40', 8, 12, 2565, 'โรงเรียน', 0),
(14, 0, 0, '14:40', 9, 12, 2565, 'โรงเรียน', 0),
(15, 0, 0, '14:30', 12, 12, 2565, 'โรงเรียน', 1),
(16, 0, 0, '15:00', 13, 12, 2565, 'โรงเรียน', 0);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `classname` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `classname`) VALUES
(0, '1/1'),
(1, '1/2'),
(2, '1/3'),
(3, '2/1'),
(4, '2/2'),
(5, '2/3'),
(6, '3/1'),
(7, '3/2'),
(8, '3/3');

-- --------------------------------------------------------

--
-- Table structure for table `gpa`
--

CREATE TABLE `gpa` (
  `id` int(11) NOT NULL,
  `student_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `gpa` float NOT NULL DEFAULT '0',
  `term` int(11) NOT NULL DEFAULT '0',
  `year` int(11) NOT NULL DEFAULT '2564'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gpa`
--

INSERT INTO `gpa` (`id`, `student_id`, `gpa`, `term`, `year`) VALUES
(0, '2', 3.98, 0, 2565);

-- --------------------------------------------------------

--
-- Table structure for table `homeroom_teacher`
--

CREATE TABLE `homeroom_teacher` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `homeroom_teacher`
--

INSERT INTO `homeroom_teacher` (`id`, `teacher_id`, `class_id`) VALUES
(1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `assigned_date` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `due_date` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci DEFAULT 'notsubmit',
  `file` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `needfile` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `homework`
--

INSERT INTO `homework` (`id`, `teacher_id`, `student_id`, `name`, `description`, `type`, `assigned_date`, `due_date`, `status`, `file`, `needfile`) VALUES
(1, 0, 0, 'การเก็บสะสมใบไม้รอบสถานที่อาศัย', 'ให้นักเรียนรวบรวมใบของพืช 10 ชนิด\r\n', 'homework', '6/12/2556', '8/12/2556', 'notsubmit', '', 0),
(2, 0, 0, 'เตรียมตักบาตรพระ 99 รูป', 'ให้นักเรียนนำข้าวสาร อาหารแห้ง มาโรงเรียนเพื่อเตรียมตักบาตร', 'notice', '3/12/2556', '4/12/2556', 'notsubmit', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `id` int(11) NOT NULL,
  `firstname` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`id`, `firstname`, `lastname`) VALUES
(0, 'ไพลิน', 'ปิ่นแก้ว'),
(1, 'ศรีริษา', 'ผ่องไพร'),
(2, 'มัลลิการ์', 'ดวงสุวรรณ');

-- --------------------------------------------------------

--
-- Table structure for table `parental`
--

CREATE TABLE `parental` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `parental`
--

INSERT INTO `parental` (`id`, `parent_id`, `child_id`) VALUES
(0, 0, 0),
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_slot` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `day_id`, `subject_id`, `time_slot`, `class_id`) VALUES
(1, 0, 0, 0, 0),
(2, 0, 1, 1, 0),
(3, 0, 2, 2, 0),
(4, 0, 3, 3, 0),
(5, 0, 4, 4, 0),
(6, 0, 5, 5, 0),
(7, 0, 6, 6, 0),
(8, 0, 7, 7, 0),
(9, 1, 0, 0, 0),
(10, 1, 1, 1, 0),
(11, 1, 2, 2, 0),
(12, 1, 3, 3, 0),
(13, 1, 4, 4, 0),
(14, 1, 5, 5, 0),
(15, 1, 6, 6, 0),
(16, 1, 7, 7, 0),
(17, 2, 0, 0, 0),
(18, 2, 1, 1, 0),
(19, 2, 2, 2, 0),
(20, 2, 3, 3, 0),
(21, 2, 4, 4, 0),
(22, 2, 5, 5, 0),
(23, 2, 6, 6, 0),
(24, 2, 7, 7, 0),
(25, 3, 0, 0, 0),
(26, 3, 1, 1, 0),
(27, 3, 2, 2, 0),
(28, 3, 3, 3, 0),
(29, 3, 4, 4, 0),
(30, 3, 5, 5, 0),
(31, 3, 6, 6, 0),
(32, 3, 7, 7, 0),
(33, 4, 0, 0, 0),
(34, 4, 1, 1, 0),
(35, 4, 2, 2, 0),
(36, 4, 3, 3, 0),
(37, 4, 4, 4, 0),
(38, 4, 5, 5, 0),
(39, 4, 6, 6, 0),
(40, 4, 7, 7, 0),
(41, 0, 0, 0, 3),
(42, 0, 1, 1, 3),
(43, 0, 2, 2, 3),
(44, 0, 3, 3, 3),
(45, 0, 4, 4, 3),
(46, 0, 5, 5, 3),
(47, 0, 6, 6, 3),
(48, 0, 7, 7, 3),
(49, 1, 0, 0, 3),
(50, 1, 1, 1, 3),
(51, 1, 2, 2, 3),
(52, 1, 3, 3, 3),
(53, 1, 4, 4, 3),
(54, 1, 5, 5, 3),
(55, 1, 6, 6, 3),
(56, 1, 7, 7, 3),
(57, 2, 0, 0, 3),
(58, 2, 1, 1, 3),
(59, 2, 2, 2, 3),
(60, 2, 3, 3, 3),
(61, 2, 4, 4, 3),
(62, 2, 5, 5, 3),
(63, 2, 6, 6, 3),
(64, 2, 7, 7, 3),
(65, 3, 0, 0, 3),
(66, 3, 1, 1, 3),
(67, 3, 2, 2, 3),
(68, 3, 3, 3, 3),
(69, 3, 4, 4, 3),
(70, 3, 5, 5, 3),
(71, 3, 6, 6, 3),
(72, 3, 7, 7, 3),
(73, 4, 0, 0, 3),
(74, 4, 1, 1, 3),
(75, 4, 2, 2, 3),
(76, 4, 3, 3, 3),
(77, 4, 4, 4, 3),
(78, 4, 5, 5, 3),
(79, 4, 6, 6, 3),
(80, 4, 7, 7, 3),
(81, 0, 0, 0, 6),
(82, 0, 1, 1, 6),
(83, 0, 2, 2, 6),
(84, 0, 3, 3, 6),
(85, 0, 4, 4, 6),
(86, 0, 5, 5, 6),
(87, 0, 6, 6, 6),
(88, 0, 7, 7, 6),
(89, 1, 0, 0, 6),
(90, 1, 1, 1, 6),
(91, 1, 2, 2, 6),
(92, 1, 3, 3, 6),
(93, 1, 4, 4, 6),
(94, 1, 5, 5, 6),
(95, 1, 6, 6, 6),
(96, 1, 7, 7, 6),
(97, 2, 0, 0, 6),
(98, 2, 1, 1, 6),
(99, 2, 2, 2, 6),
(100, 2, 3, 3, 6),
(101, 2, 4, 4, 6),
(102, 2, 5, 5, 6),
(103, 2, 6, 6, 6),
(104, 2, 7, 7, 6),
(105, 3, 0, 0, 6),
(106, 3, 1, 1, 6),
(107, 3, 2, 2, 6),
(108, 3, 3, 3, 6),
(109, 3, 4, 4, 6),
(110, 3, 5, 5, 6),
(111, 3, 6, 6, 6),
(112, 3, 7, 7, 6),
(113, 4, 0, 0, 6),
(114, 4, 1, 1, 6),
(115, 4, 2, 2, 6),
(116, 4, 3, 3, 6),
(117, 4, 4, 4, 6),
(118, 4, 5, 5, 6),
(119, 4, 6, 6, 6),
(120, 4, 7, 7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `firstname` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `classname` int(11) NOT NULL,
  `profile` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `firstname`, `lastname`, `classname`, `profile`) VALUES
(0, 'มินตรา', 'สวยสม', 0, ''),
(1, 'ชานนท์', 'มากมี', 0, ''),
(2, 'กรกช', 'รักษา', 1, ''),
(3, 'กัลยกร', 'ว่านแก้ว', 1, ''),
(4, 'กัลยรักษ์', 'กานดา', 2, ''),
(5, 'จีรวัต', 'ศรีภูมิ', 2, ''),
(6, 'ญาดา', 'ญาดี', 3, ''),
(7, 'ญี่เปง', 'ญี่ปาน', 3, ''),
(8, 'กุลวัต', 'บุรเกษ', 4, ''),
(9, 'ธนาภา', 'มาลี', 4, ''),
(10, 'ธนกร', 'จิโนม', 5, ''),
(11, 'มาวิน', 'มากมาย', 5, ''),
(12, 'นภสร', 'สนที', 6, ''),
(13, 'ปรียนัน', 'สมานสี', 6, ''),
(14, 'มีเดช', 'ปิยวิมล', 7, ''),
(15, 'เมธาวี', 'สดใส', 7, ''),
(16, 'อารยา', 'วิไล', 8, ''),
(17, 'แทนคุณ', 'อภินิต', 8, '');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `subject_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `description` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `code`, `subject_name`, `teacher_id`, `description`) VALUES
(0, 'PE101', 'พละศึกษา', 0, 'วอลเลย์บอล'),
(1, 'NU101', 'คัดตัวเลข', 1, 'การคัดตัวเลข'),
(2, 'TH102', 'การอ่านไทย', 2, 'การอ่านภาษาไทย'),
(3, 'CH101', 'ภาษาจีนกลาง', 3, 'ภาษาจีนกลางเพื่อการสื่อสาร'),
(4, 'ST101', 'STEM', 4, 'STEM Education (Science, Technology, Engineering and Mathematics)'),
(5, 'CM101', 'นิทานสร้างสรรค์', 5, 'นิทานสร้างสรรค์'),
(6, 'TH101', 'ภาษาไทย', 6, 'ภาษาไทย'),
(7, 'EN101', 'ภาษาอังกฤษ', 7, 'ภาษาอังกฤษในชีวิตประจำวัน');

-- --------------------------------------------------------

--
-- Table structure for table `submit_homework`
--

CREATE TABLE `submit_homework` (
  `student_id` int(11) NOT NULL,
  `homework_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `file` varchar(512) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `firstname` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` text COLLATE utf8_unicode_ci NOT NULL,
  `description1` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `description2` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `profile` varchar(384) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `firstname`, `lastname`, `description1`, `description2`, `profile`) VALUES
(0, 'กิตติเดช', 'เทพ', 'สอนพละศึกษา', 'ซี 6', ''),
(1, 'วนาจิกา', 'วันนา', 'สอนคัดตัวเลข', 'ซี 6', ''),
(2, 'วิศรุต', 'บัญชา', 'สอนการอ่านไทย', 'ซี 7', ''),
(3, 'ปาลินี', 'จันทร์แจ่ม', 'สอนวิชาภาษาจีนกลาง', 'ซี 5', ''),
(4, 'จอยลดา', 'จันทร์เพ็ญ', 'สอนวิชา STEM', 'ซี 7', ''),
(5, 'บุศรา', 'ชลหาญ', 'สอนนิทานสร้างสรรค์', 'ซี 6', ''),
(6, 'ลินดา', 'อิ่มเอม', 'สอนภาษาไทย', 'ซี 6', ''),
(7, 'กำพล', 'เจริญสุข', 'สอนภาษาอังกฤษ', 'ซี 7', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_assigned_student`
--

CREATE TABLE `teacher_assigned_student` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher_assigned_student`
--

INSERT INTO `teacher_assigned_student` (`id`, `teacher_id`, `student_id`) VALUES
(0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_assigned_subject`
--

CREATE TABLE `teacher_assigned_subject` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher_assigned_subject`
--

INSERT INTO `teacher_assigned_subject` (`id`, `teacher_id`, `subject_id`, `class_id`) VALUES
(1, 0, 0, 0),
(2, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `id` int(11) NOT NULL,
  `time` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `time_slots`
--

INSERT INTO `time_slots` (`id`, `time`) VALUES
(0, '8:30-9:00'),
(1, '9:00-9:30'),
(2, '9:00-9:40'),
(3, '9:40-10:40'),
(4, '10:40-11:30'),
(5, '11:30-12:00'),
(6, '12:05-14:00'),
(7, '14:15-14:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkin`
--
ALTER TABLE `checkin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `gpa`
--
ALTER TABLE `gpa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `homeroom_teacher`
--
ALTER TABLE `homeroom_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parental`
--
ALTER TABLE `parental`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `submit_homework`
--
ALTER TABLE `submit_homework`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `teacher_assigned_student`
--
ALTER TABLE `teacher_assigned_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_assigned_subject`
--
ALTER TABLE `teacher_assigned_subject`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkin`
--
ALTER TABLE `checkin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `gpa`
--
ALTER TABLE `gpa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeroom_teacher`
--
ALTER TABLE `homeroom_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `parental`
--
ALTER TABLE `parental`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `submit_homework`
--
ALTER TABLE `submit_homework`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teacher_assigned_subject`
--
ALTER TABLE `teacher_assigned_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
