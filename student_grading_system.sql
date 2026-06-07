-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2025 at 10:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_grading_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `DepartmentID` int(11) NOT NULL,
  `DepartmentName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`DepartmentID`, `DepartmentName`) VALUES
(1, 'Mathematics'),
(2, 'Biology'),
(3, 'Chemistry'),
(4, 'English'),
(5, 'Economics');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `EnrollmentID` int(11) NOT NULL,
  `EnrollmentDate` date NOT NULL,
  `StudentID` int(11) NOT NULL,
  `SubjectID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`EnrollmentID`, `EnrollmentDate`, `StudentID`, `SubjectID`) VALUES
(1, '2024-02-20', 1, 1),
(2, '2024-02-20', 2, 2),
(3, '2024-02-20', 3, 3),
(4, '2024-02-20', 4, 4),
(5, '2024-02-20', 5, 5),
(6, '2024-02-20', 6, 5),
(7, '2024-02-20', 7, 4),
(8, '2024-02-20', 8, 3),
(9, '2024-02-20', 9, 2),
(10, '2024-02-20', 10, 1),
(11, '2025-09-15', 11, 1),
(12, '2025-09-15', 12, 2),
(13, '2025-09-15', 13, 3),
(14, '2025-09-15', 14, 4),
(15, '2025-09-15', 15, 5),
(16, '2025-09-15', 16, 1),
(17, '2025-09-15', 17, 4),
(18, '2025-09-15', 18, 2),
(19, '2025-09-15', 19, 2),
(20, '2025-09-15', 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `GradeID` int(11) NOT NULL,
  `Grade` char(2) DEFAULT NULL,
  `StudentID` int(11) DEFAULT NULL,
  `SubjectID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`GradeID`, `Grade`, `StudentID`, `SubjectID`) VALUES
(1, 'A', 1, 1),
(2, 'C', 2, 2),
(3, 'B', 3, 3),
(4, 'A', 4, 4),
(5, 'A', 5, 5),
(6, 'D', 6, 5),
(7, 'B', 7, 4),
(8, 'C', 8, 3),
(9, 'C', 9, 2),
(10, 'D', 10, 1),
(11, 'B', 11, 1),
(12, 'A', 12, 2),
(13, 'C', 13, 3),
(14, 'A', 14, 4),
(15, 'D', 15, 5),
(16, 'C', 16, 1),
(17, 'B', 17, 4),
(18, 'B', 18, 2),
(19, 'C', 19, 2),
(20, 'E', 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `LecturerID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `DepartmentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`LecturerID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `DepartmentID`) VALUES
(1, 'Sylvester', 'Asuquo', 'slyesko@gmail.com', '07063536478', 1),
(2, 'Zoe', 'Ntekim', 'ntekimzoe230@gmail.com', '09106748575', 2),
(3, 'Sarah', 'Nwigwe', 'nwigwesarah@icloud.com', '08123674657', 3),
(4, 'Johnson', 'Babatunde', 'babajohnson@gmail.com', '09146583940', 4),
(5, 'Diwa', 'Shekari', 'shekaridiwa126@gmail.com', '09073453645', 5);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `PhoneNumber` varchar(15) DEFAULT NULL,
  `DepartmentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `DepartmentID`) VALUES
(1, 'Umo', 'Essien', 'umoessien74@gmail.com', '09176354637', 1),
(2, 'Blessing', 'Linus', 'Blesslin@yahoo.com', '08045637678', 2),
(3, 'Stella', 'Mbagwu', 'Bigstesmbagwu@gmail.com', '09162453727', 3),
(4, 'Esther', 'Olusegun', 'eolusegun560@icloud.com', '07043562763', 4),
(5, 'Emmanuel', 'Ekong', 'doublee001@gmail.com', '08163788361', 5),
(6, 'Bello', 'Sambo', 'sambell01@gmail.com', '09036574857', 5),
(7, 'Uchechi', 'Eberechukwu', 'uchechie@yahoo.com', '08023464736', 4),
(8, 'Idong', 'Calistus', 'icalistus@icloud.com', '08189856748', 3),
(9, 'Ochuko', 'Oghenero', 'ooghenero@gmail.com', '07015637486', 2),
(10, 'Eluan', 'Daniel', 'eluandaniel@gmail.com', '09166783746', 1),
(11, 'Mohammad', 'Sani', 'msani92@icloud.com', '09129394677', 1),
(12, 'Adaeze', 'Mbachu', 'mbachuada@yahoo.com', '08063452673', 2),
(13, 'Stephen', 'Udosen', 'steeveu@gmail.com', '09084563836', 3),
(14, 'Bose', 'Abiodun', 'abose1275@icloud.com', '07042536547', 4),
(15, 'Uduak', 'Gregory', 'guduak001@gmail.com', '08142945647', 5),
(16, 'Abdulrahman', 'Khalid', 'abdulkhalid901@gmail.com', '08027845624', 1),
(17, 'Emame', 'Godwin', 'egodwin324@gmail.com', '09164352637', 4),
(18, 'Nchewi', 'Godwin', 'ngodwin673@icloud.com', '09052673827', 2),
(19, 'Osaze', 'Peter', 'posaze@yahoo.com', '07042784563', 2),
(20, 'Esther', 'Daniel', 'edan5801@gmail.com', '08142376489', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `SubjectID` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `CreditHours` int(11) NOT NULL,
  `LecturerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`SubjectID`, `SubjectName`, `CreditHours`, `LecturerID`) VALUES
(1, 'Statitics', 6, 1),
(2, 'Anatomy', 4, 2),
(3, 'Molecular Chemistry', 5, 3),
(4, 'Linguistics', 4, 4),
(5, 'Monetary Economics', 4, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`EnrollmentID`),
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `SubjectID` (`SubjectID`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`GradeID`),
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `SubjectID` (`SubjectID`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`LecturerID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`SubjectID`),
  ADD KEY `LecturerID` (`LecturerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `DepartmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `EnrollmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `GradeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `lecturers`
--
ALTER TABLE `lecturers`
  MODIFY `LecturerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `SubjectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`SubjectID`) REFERENCES `subjects` (`SubjectID`);

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`SubjectID`) REFERENCES `subjects` (`SubjectID`);

--
-- Constraints for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD CONSTRAINT `lecturers_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`LecturerID`) REFERENCES `lecturers` (`LecturerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
