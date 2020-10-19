-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2019 at 10:06 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `branchid` int(10) UNSIGNED NOT NULL,
  `branchname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`branchid`, `branchname`) VALUES
(1, 'Information Technlogy '),
(2, 'Computer Science Engineering'),
(3, 'Electrical Engineering'),
(4, 'Machenical Engineering'),
(5, 'Civil Engineering'),
(6, 'Hotel Management & Catering Technology'),
(7, 'Textile Technology');

-- --------------------------------------------------------

--
-- Table structure for table `examresult`
--

CREATE TABLE `examresult` (
  `resultid` int(10) UNSIGNED NOT NULL,
  `studentid` varchar(100) NOT NULL,
  `paperid` int(10) UNSIGNED NOT NULL,
  `correctanswer` varchar(100) NOT NULL,
  `wronganswer` varchar(100) NOT NULL,
  `notattempted` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examresult`
--

INSERT INTO `examresult` (`resultid`, `studentid`, `paperid`, `correctanswer`, `wronganswer`, `notattempted`) VALUES
(11, '12345', 2, '0', '0', '10'),
(12, '16017I04032', 3, '4', '1', '0'),
(13, '16017I04032', 5, '3', '2', '0'),
(14, '16017I04032', 6, '0', '0', '10');

-- --------------------------------------------------------

--
-- Table structure for table `hod`
--

CREATE TABLE `hod` (
  `HODid` int(10) NOT NULL,
  `HODname` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contactno` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hod`
--

INSERT INTO `hod` (`HODid`, `HODname`, `password`, `contactno`) VALUES
(1, 'Shailendra Satyarthi', '12345', 9876789);

-- --------------------------------------------------------

--
-- Table structure for table `paperdetails`
--

CREATE TABLE `paperdetails` (
  `paperid` int(10) UNSIGNED NOT NULL,
  `sessionid` int(10) UNSIGNED NOT NULL,
  `branchid` int(10) UNSIGNED NOT NULL,
  `semesterid` int(10) UNSIGNED NOT NULL,
  `subjectid` int(10) UNSIGNED NOT NULL,
  `examdate` varchar(10) NOT NULL,
  `questioncount` int(10) NOT NULL,
  `duration` int(10) NOT NULL,
  `passcode` varchar(200) NOT NULL,
  `teacherid` varchar(50) NOT NULL,
  `marksperquest` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paperdetails`
--

INSERT INTO `paperdetails` (`paperid`, `sessionid`, `branchid`, `semesterid`, `subjectid`, `examdate`, `questioncount`, `duration`, `passcode`, `teacherid`, `marksperquest`) VALUES
(2, 1, 1, 47, 15, '2019-05-25', 10, 10, '12321', 'rinki baghel', '0.50'),
(3, 6, 1, 47, 15, '2019/05/24', 5, 5, '12345', 'Rinki Baghel', '0.50'),
(4, 1, 1, 47, 15, '2019-05-24', 5, 5, '123456', 'Rinki Baghel', '0.50'),
(5, 6, 1, 47, 15, '2019/05/24', 5, 5, '123456', 'rinki baghel', '0.50'),
(6, 1, 1, 47, 15, '2019-05-25', 10, 10, '12345', 'rinki baghel', '1');

-- --------------------------------------------------------

--
-- Table structure for table `questionpaper`
--

CREATE TABLE `questionpaper` (
  `paperid` int(10) NOT NULL,
  `questionid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionpaper`
--

INSERT INTO `questionpaper` (`paperid`, `questionid`) VALUES
(1, 32),
(1, 30),
(1, 27),
(1, 26),
(1, 25),
(1, 24),
(1, 23),
(1, 22),
(1, 21),
(1, 18),
(2, 32),
(2, 30),
(2, 29),
(2, 28),
(2, 27),
(2, 26),
(2, 25),
(2, 24),
(2, 23),
(2, 22),
(3, 32),
(3, 30),
(3, 29),
(3, 28),
(3, 27),
(4, 24),
(4, 27),
(4, 28),
(4, 29),
(4, 32),
(5, 32),
(5, 30),
(5, 29),
(5, 28),
(5, 27),
(6, 32),
(6, 29),
(6, 27),
(6, 26),
(6, 25),
(6, 24),
(6, 23),
(6, 21),
(6, 17),
(6, 16);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `questionid` int(10) UNSIGNED NOT NULL,
  `subjectid` int(10) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `a` varchar(1000) NOT NULL,
  `b` varchar(1000) NOT NULL,
  `c` varchar(1000) NOT NULL,
  `d` varchar(1000) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`questionid`, `subjectid`, `question`, `a`, `b`, `c`, `d`, `answer`, `date`) VALUES
(12, 13, 'Communication is a non stop _____________.', 'Paper', 'Process', 'Program', 'Plan', 'b', '2019-04-09'),
(14, 14, 'Which instrument is used to measure altitudes in aircraft\'s ? ', 'Audiometer', 'Ammeter', 'Altimeter', 'Anemometer', 'c', '2019-04-09'),
(15, 14, 'Which instrument is used to measure depth of ocean ?', 'Galvanometer', 'Fluxmeter', 'Endoscope', 'Fathometer', 'c', '2019-04-09'),
(16, 15, 'First generation of computer was based on  which technology?', 'Transistor', 'LSI', 'VLSI ', 'Vacuum Tube', 'd', '2019-04-09'),
(17, 15, 'Second generation computers are made of .......?', 'Vacuum Tubes', 'Transistors', 'LSI', 'VLSI', 'b', '2019-04-09'),
(18, 15, 'Which of the following memory is non- volatile?', 'SRAM', 'DRAM', 'ROM', 'All of the above', 'c', '2019-04-09'),
(19, 16, 'If the letters of word SACHIN are arranged in all possible ways and these words are written out as in dictionary, then the word SACHIN appears at serial number', '601', '600', ' 603', '604', 'a', '2019-04-09'),
(20, 28, 'Full form of DES', 'DATA ENTRY STANDARD', 'DATA ENCRYPTION STANDARD ', 'DATA ENCRYPT STANDARD ', 'NONE OF THESE', 'b', '2019-04-12'),
(21, 15, 'Which is a output device.', 'keyboard', 'mouse', 'monitor', 'joystick', 'c', '2019-04-25'),
(22, 15, 'which is a input device?', 'monitor', 'printer', 'scanner', 'mouse', 'd', '2019-04-25'),
(23, 15, 'A monitor is a .......... device.', 'input ', 'output', 'both', 'none of these', 'b', '2019-04-25'),
(24, 15, 'printer used for ...........?', 'print', 'scan', 'read', 'write', 'a', '2019-04-25'),
(25, 15, 'keyboard is a ............. device?', 'input', 'output', 'scanning', 'printing', 'a', '2019-04-25'),
(26, 15, 'how many type printer used ?', '1', '2', '5', '3', 'b', '2019-04-25'),
(27, 15, 'which is a type of printer ?', 'inkjet', 'black', 'writer', 'environmental', 'a', '2019-04-25'),
(28, 15, 'RAM is a ............. memory.', 'secondary', 'primary', 'both', 'none of these', 'b', '2019-04-25'),
(29, 15, 'which memory is called fast memory?', 'RAM', 'hard disk', 'cache', 'floppy disk', 'c', '2019-04-25'),
(30, 15, 'full form of cpu is.......................', 'central process unit', 'central properties unit', 'central performance unit', 'central processing unit', 'd', '2019-04-25'),
(31, 13, 'what is the good way to respective call..', 'may', 'can', 'both', 'nine', 'a', '2019-05-04'),
(32, 15, 'A binary number hold ......... digit?', '1', '8', '10', '2', 'd', '2019-05-09'),
(33, 28, 'Full form of DES?', 'Digital Enter System', 'Digital Encryption Standard ', 'Digital Encryption System', 'Data Encryption Standard', 'd', '2019-05-16'),
(34, 19, 'Full form of EPROM?', 'Electrical Programmable Right Only Memory.', 'Erasable Programmable Right Only Memory.', 'Erasable Programmable Read Only Memory.', 'None of These', 'c', '2019-05-16'),
(35, 19, 'Compare Register and Counter?', 'Register is a group of flip flop and counter is counting data circuit.', 'Register is a group of data and counter is counting data circuit.', 'Register is a group of flip flop and counter is counting digital circuit.', 'Register is a group of multiplexer and counter is counting decoder circuit.', 'c', '2019-05-16'),
(36, 40, 'full form of DM ?', 'data main', 'data means', 'data mining', 'date manager', 'c', '2019-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `semesterid` int(10) UNSIGNED NOT NULL,
  `semestername` varchar(50) NOT NULL,
  `branchid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`semesterid`, `semestername`, `branchid`) VALUES
(47, '1st', 1),
(48, '2nd', 1),
(49, '3rd', 1),
(50, '4th', 1),
(51, '5th', 1),
(52, '6th', 1),
(53, '1st', 2),
(54, '2nd', 2),
(55, '3rd', 2),
(56, '4th', 2),
(57, '5th', 2),
(58, '6th', 2),
(59, '1st', 3),
(60, '2nd', 3),
(61, '3rd', 3),
(62, '4th', 3),
(63, '5th', 3),
(64, '6th', 3),
(65, '1st', 4),
(66, '2nd', 4),
(67, '3rd', 4),
(68, '4th', 4),
(69, '5th', 4),
(70, '6th', 4),
(71, '1st', 5),
(72, '2nd', 5),
(73, '3rd', 5),
(74, '4th', 5),
(75, '5th', 5),
(76, '6th', 5),
(77, '1st', 6),
(78, '2nd', 6),
(79, '3rd', 6),
(80, '4th', 6),
(81, '5th', 6),
(82, '6th', 6),
(83, '1st', 7),
(84, '2nd', 7),
(85, '3rd', 7),
(86, '4th', 7),
(87, '5th', 7),
(88, '6th', 7),
(89, '4th', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sessionid` int(10) UNSIGNED NOT NULL,
  `sessionname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sessionid`, `sessionname`) VALUES
(1, 'july-dec 2016'),
(2, 'jan-jun 2017'),
(3, 'july-dec 2017'),
(4, 'jan-jun 2018'),
(5, 'july-dec 2018'),
(6, 'jan-jun 2019'),
(7, 'jul-dec-2019'),
(8, 'july-dec 2019');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `rollno` varchar(100) NOT NULL,
  `studentname` varchar(200) NOT NULL,
  `fathername` varchar(200) NOT NULL,
  `branchid` varchar(100) NOT NULL,
  `semesterid` varchar(100) NOT NULL,
  `sessionid` varchar(100) NOT NULL,
  `addmissionbranch` varchar(100) NOT NULL,
  `addmissionsemester` varchar(100) NOT NULL,
  `addmissionsession` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contactno` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`rollno`, `studentname`, `fathername`, `branchid`, `semesterid`, `sessionid`, `addmissionbranch`, `addmissionsemester`, `addmissionsession`, `password`, `contactno`) VALUES
('12345', 'abc', 'efgh', '1', '47', '1', '1', '47', '1', 'krishna', 123456789),
('16017I04032', 'krishna kant rawat', 'Babulal Rawat', '1', '47', '1', '1', '47', '1', 'krishna', 987654321);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subjectid` int(10) UNSIGNED NOT NULL,
  `subjectname` varchar(100) NOT NULL,
  `semesterid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subjectid`, `subjectname`, `semesterid`) VALUES
(13, 'Communication Skills', 47),
(14, 'Physics', 47),
(15, 'Computer Fundamentals and its Applications', 47),
(16, 'Mathematics', 47),
(17, 'Programming in C', 48),
(18, 'Environemental Engineering & safety', 48),
(19, 'Digital Techniques', 48),
(20, 'Basics of Electrical, Electronics & Measurement', 48),
(21, 'Computer Architecture', 49),
(22, 'Operating System', 49),
(23, 'Networking Essential', 49),
(24, 'Data Structurese and Algorithms', 49),
(25, 'Object Oriented Programming Using C++', 49),
(26, 'Enterpreneurship', 50),
(27, 'Marketing Management', 50),
(28, 'Information Security', 50),
(29, 'Database Management System With Query Language ', 50),
(30, 'Linux and Shell Programming', 50),
(31, 'Web Programming', 50),
(32, 'Networking with TCP/IP', 51),
(33, 'Dot Net Technologies', 51),
(34, 'Advance web Technology', 51),
(35, 'Wireless Communication and Mobile Computing ', 51),
(36, 'Software Engineering', 51),
(37, 'Java Programming', 51),
(38, 'Computer Graphics, Multimedia & Animation', 52),
(39, 'Linux Server Administration', 52),
(40, 'Data Mining & Data Warehousing', 52),
(41, 'Artificial Intelligence & Expert System(AI & ES)', 52),
(42, 'Network Management & Administration', 52),
(43, 'Hardware Maintenence & Microprocessor', 52),
(44, 'IC', 65);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacherid` int(10) UNSIGNED NOT NULL,
  `teachername` varchar(200) NOT NULL,
  `branchid` int(10) UNSIGNED NOT NULL,
  `password` varchar(100) NOT NULL,
  `contactno` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacherid`, `teachername`, `branchid`, `password`, `contactno`) VALUES
(1, 'rinki baghel', 1, '368629', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branchid`);

--
-- Indexes for table `examresult`
--
ALTER TABLE `examresult`
  ADD PRIMARY KEY (`resultid`);

--
-- Indexes for table `hod`
--
ALTER TABLE `hod`
  ADD PRIMARY KEY (`HODid`),
  ADD UNIQUE KEY `HODname` (`HODname`);

--
-- Indexes for table `paperdetails`
--
ALTER TABLE `paperdetails`
  ADD PRIMARY KEY (`paperid`),
  ADD KEY `session` (`sessionid`),
  ADD KEY `branch` (`branchid`),
  ADD KEY `semester` (`semesterid`),
  ADD KEY `subject` (`subjectid`);

--
-- Indexes for table `questionpaper`
--
ALTER TABLE `questionpaper`
  ADD KEY `paperid` (`paperid`),
  ADD KEY `questionid` (`questionid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`questionid`),
  ADD KEY `subjectid` (`subjectid`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`semesterid`),
  ADD KEY `branchid` (`branchid`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sessionid`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`rollno`),
  ADD KEY `branchid` (`branchid`),
  ADD KEY `semesterid` (`sessionid`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subjectid`),
  ADD KEY `semesterid` (`semesterid`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacherid`),
  ADD UNIQUE KEY `teachername` (`teachername`),
  ADD KEY `branchid` (`branchid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `branchid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `examresult`
--
ALTER TABLE `examresult`
  MODIFY `resultid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `hod`
--
ALTER TABLE `hod`
  MODIFY `HODid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paperdetails`
--
ALTER TABLE `paperdetails`
  MODIFY `paperid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `questionid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `semesterid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `sessionid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subjectid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `paperdetails`
--
ALTER TABLE `paperdetails`
  ADD CONSTRAINT `paper_branch_fk` FOREIGN KEY (`branchid`) REFERENCES `branches` (`branchid`),
  ADD CONSTRAINT `paper_semester_fk` FOREIGN KEY (`semesterid`) REFERENCES `semesters` (`semesterid`),
  ADD CONSTRAINT `paper_session_fk` FOREIGN KEY (`sessionid`) REFERENCES `sessions` (`sessionid`),
  ADD CONSTRAINT `paper_subject_fk` FOREIGN KEY (`subjectid`) REFERENCES `subjects` (`subjectid`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `que_sub_fk` FOREIGN KEY (`subjectid`) REFERENCES `subjects` (`subjectid`);

--
-- Constraints for table `semesters`
--
ALTER TABLE `semesters`
  ADD CONSTRAINT `sem_branch_fk` FOREIGN KEY (`branchid`) REFERENCES `branches` (`branchid`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `sub_sem_fk` FOREIGN KEY (`semesterid`) REFERENCES `semesters` (`semesterid`);

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `tech_branch_fk` FOREIGN KEY (`branchid`) REFERENCES `branches` (`branchid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
