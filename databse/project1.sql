-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2021 at 05:08 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `ClassId` int(10) NOT NULL,
  `ClassName` varchar(5) NOT NULL,
  `Section` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`ClassId`, `ClassName`, `Section`) VALUES
(180106002, '3', 'A'),
(180106005, '2', 'B'),
(180106007, '3', 'A'),
(180106009, '3', 'B'),
(180106013, '3', 'A'),
(180106018, '2', 'B'),
(180106020, '2', 'B'),
(180106025, '1', 'A'),
(180106035, '1', 'B'),
(180106036, '2', 'A'),
(180106040, '1', 'B'),
(180106043, '2', 'B'),
(180106053, '3', 'B'),
(180106060, '3', 'A'),
(180106070, '2', 'B'),
(180106073, '1', 'A'),
(180106075, '2', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `Id` int(11) NOT NULL,
  `StudentId` int(15) NOT NULL,
  `ClassId` int(10) NOT NULL,
  `SubjectId` int(5) NOT NULL,
  `Marks` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`Id`, `StudentId`, `ClassId`, `SubjectId`, `Marks`) VALUES
(1, 6040, 180106040, 101, 96),
(2, 6040, 180106040, 102, 93),
(3, 6040, 180106040, 103, 70),
(4, 6040, 180106040, 104, 100),
(5, 6043, 180106043, 101, 81),
(6, 6043, 180106043, 102, 90),
(7, 6043, 180106043, 103, 70),
(8, 6043, 180106043, 104, 79),
(9, 6053, 180106053, 101, 75),
(10, 6053, 180106053, 102, 87),
(11, 6053, 180106053, 103, 70),
(12, 6053, 180106053, 104, 96),
(13, 6005, 180106005, 101, 80),
(14, 6025, 180106025, 101, 82),
(15, 6025, 180106025, 101, 84),
(16, 6025, 180106025, 102, 90),
(17, 6025, 180106025, 113, 80);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(15) NOT NULL,
  `StudentName` varchar(30) NOT NULL,
  `RollId` varchar(15) NOT NULL,
  `ClassId` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `ClassId`) VALUES
(6005, 'Abhinandan Yadav', '5', 180106005),
(6025, 'Kumar Rishabh', '25', 180106025),
(6036, 'Navarun Kr', '36', 180106036),
(6040, 'Ronit Raj', '40', 180106040),
(6043, 'Sanskar Kumar', '43', 180106043),
(6053, 'Sugyan Mishra', '53', 180106053);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `ClassId` int(10) NOT NULL,
  `SubjectId` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`ClassId`, `SubjectId`) VALUES
(180106040, 101),
(180106040, 102),
(180106040, 103),
(180106040, 104),
(180106053, 101),
(180106053, 102),
(180106053, 103),
(180106053, 104),
(180106043, 101),
(180106043, 102),
(180106043, 103),
(180106043, 104);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `SubjectId` int(10) NOT NULL,
  `SubjectName` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`SubjectId`, `SubjectName`) VALUES
(101, 'Maths'),
(102, 'Physics'),
(103, 'Chemistry'),
(104, 'Biology'),
(105, 'English'),
(108, 'History'),
(110, 'Geography'),
(113, 'Psychology');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserName`, `Password`) VALUES
('admin123', 'admin'),
('ronit07', 'password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`ClassId`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `StudentId` (`StudentId`),
  ADD KEY `ClassId` (`ClassId`),
  ADD KEY `SubjectId` (`SubjectId`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`),
  ADD KEY `ClassId` (`ClassId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD KEY `ClassId` (`ClassId`),
  ADD KEY `SubjectId` (`SubjectId`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`SubjectId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6054;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `SubjectId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD CONSTRAINT `tblresult_ibfk_1` FOREIGN KEY (`StudentId`) REFERENCES `tblstudents` (`StudentId`),
  ADD CONSTRAINT `tblresult_ibfk_2` FOREIGN KEY (`ClassId`) REFERENCES `tblclasses` (`ClassId`),
  ADD CONSTRAINT `tblresult_ibfk_3` FOREIGN KEY (`SubjectId`) REFERENCES `tblsubjects` (`SubjectId`);

--
-- Constraints for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD CONSTRAINT `tblstudents_ibfk_1` FOREIGN KEY (`ClassId`) REFERENCES `tblclasses` (`ClassId`);

--
-- Constraints for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD CONSTRAINT `tblsubjectcombination_ibfk_1` FOREIGN KEY (`ClassId`) REFERENCES `tblclasses` (`ClassId`),
  ADD CONSTRAINT `tblsubjectcombination_ibfk_2` FOREIGN KEY (`SubjectId`) REFERENCES `tblsubjects` (`SubjectId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
