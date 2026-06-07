-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2025 at 10:42 PM
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
-- Database: `emerald_ventures`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentID` int(11) NOT NULL,
  `DepartmentName` varchar(100) DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartmentID`, `DepartmentName`, `EmployeeID`) VALUES
(1, 'Administration', 1),
(2, 'Finance', 2),
(3, 'Media and Publicity', 3),
(4, 'Finance', 4),
(5, 'Administration', 5),
(6, 'Security', 6),
(7, 'Media and Publicity', 7),
(8, 'Administration', 8),
(9, 'IT', 9),
(10, 'Maintenance', 10),
(11, 'Customer Care', 11),
(12, 'Internal Audit', 12),
(13, 'IT', 13),
(14, 'Administration', 14),
(15, 'Administration', 15),
(16, 'Security', 16),
(17, 'Administration', 17),
(18, 'IT', 18),
(19, 'Maintenance', 19),
(20, 'Security', 20);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EmployeeID` int(11) NOT NULL,
  `EmployeeName` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EmployeeID`, `EmployeeName`, `Email`, `PhoneNumber`) VALUES
(1, 'Alice Olusegun', 'olualice43@gmail.com', '08096536373'),
(2, 'Ekpo Otu', 'ekpootu@yahoo.com', '08135627836'),
(3, 'Sharon John', 'sharonjay@gmail.com', '07034516736'),
(4, 'Innocent Ajala', 'ajalainnocent78@gmail.com', '09126736475'),
(5, 'Victoria Usen', 'vicusen435@gmail.com', '08027364558'),
(6, 'Sharon Udo', 'udosharon65@gmail.com', '09027837465'),
(7, 'Rose Chinenye', 'chinenyer564@icloud.com', '08187635494'),
(8, 'Etukudo Ibangha', 'eibangha@yahoo.com', '07062650120'),
(9, 'Sarah Omazibe', 'sarazibe@icloud.com', '09124673014'),
(10, 'Robert Tamuno', 'expendiblerobtam001@yahoo.com', '07084710253'),
(11, 'Eno Mkpouto', 'enomkpouto@yahoo.com', '07045637827'),
(12, 'Omawunmi Olatunji', 'olaoma219@gmail.com', '08017635637'),
(13, 'Chukwuemeka Kosisochukwu', 'ckosi703@gmail.com', '09086375342'),
(14, 'Susan Ndiana', 'ndianasusan@gmail.com', '09164568746'),
(15, 'Marshall Oghenero', 'Marshallog884@icloud.com', '09027837465'),
(16, 'Rosemary Udo', 'rosemaryudo@gmail.com', '09038277364'),
(17, 'Sandra Osigwe', 'osigwesandra135@gmail.com', '09153674657'),
(18, 'Maria Olatuji', 'olamaria245@outlook.com', '08163452789'),
(19, 'Abosde Michael', 'micabosede@gmail.com', '07035163864'),
(20, 'Johnson Etim', 'etimjohnson@yahoo.com', '09137263541');

-- --------------------------------------------------------

--
-- Table structure for table `hire_date`
--

CREATE TABLE `hire_date` (
  `HireDateID` int(11) NOT NULL,
  `HireDate` date DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hire_date`
--

INSERT INTO `hire_date` (`HireDateID`, `HireDate`, `EmployeeID`) VALUES
(1, '2024-04-26', 1),
(2, '2024-01-15', 2),
(3, '2024-03-08', 3),
(4, '2024-04-23', 4),
(5, '2024-09-04', 5),
(6, '2024-05-17', 6),
(7, '2024-03-06', 7),
(8, '2024-08-02', 8),
(9, '2024-01-16', 9),
(10, '2024-12-12', 10),
(11, '2024-02-07', 11),
(12, '2024-07-27', 12),
(13, '2024-11-11', 13),
(14, '2024-06-19', 14),
(15, '2024-10-26', 15),
(16, '2024-06-26', 16),
(17, '2025-02-12', 17),
(18, '2025-03-20', 18),
(19, '2025-03-31', 19),
(20, '2025-09-04', 17);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `PositionID` int(11) NOT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`PositionID`, `Position`, `EmployeeID`) VALUES
(1, 'Manager', 1),
(2, 'Chief Accountant', 2),
(3, 'Social Media Manager', 3),
(4, 'Chief Accountant', 4),
(5, 'Assistant Manager', 5),
(6, 'Chief Security', 6),
(7, 'Content Creator', 7),
(8, 'Human Resource Manager', 8),
(9, 'Data Analyst', 9),
(10, 'Ganitor', 10),
(11, 'Customer Care Representative', 11),
(12, 'Auditor', 12),
(13, 'Software Engineer', 13),
(14, 'Procurement Officer', 14),
(15, 'Receptionist', 15),
(16, 'Security 1', 16),
(17, 'Executive Assistant', 17),
(18, 'Network Administrator', 18),
(19, 'Ganitor', 19),
(20, 'Security 2', 20);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `RegionID` int(11) NOT NULL,
  `Region` varchar(20) DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`RegionID`, `Region`, `EmployeeID`) VALUES
(1, 'South-South', 1),
(2, 'South-South', 2),
(3, 'South-South', 3),
(4, 'South-South', 4),
(5, 'South-South', 5),
(6, 'South-South', 6),
(7, 'South-South', 7),
(8, 'South-South', 8),
(9, 'South-South', 9),
(10, 'South-South', 10),
(11, 'South-South', 11),
(12, 'South-South', 12),
(13, 'South-South', 13),
(14, 'South-South', 14),
(15, 'South-South', 15),
(16, 'South-South', 16),
(17, 'South-South', 17),
(18, 'South-South', 18),
(19, 'South-South', 19),
(20, 'South-South', 20);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `SalaryID` int(11) NOT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`SalaryID`, `Salary`, `EmployeeID`) VALUES
(1, 552150.00, 1),
(2, 370052.00, 2),
(3, 200000.00, 3),
(4, 328290.00, 4),
(5, 490510.00, 5),
(6, 120000.00, 6),
(7, 158300.00, 7),
(8, 250000.00, 8),
(9, 260705.00, 9),
(10, 80000.00, 10),
(11, 200000.00, 11),
(12, 280605.00, 12),
(13, 300000.00, 13),
(14, 180730.00, 14),
(15, 140000.00, 15),
(16, 95000.00, 16),
(17, 150000.00, 17),
(18, 195000.00, 18),
(19, 80000.00, 19),
(20, 95000.00, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentID`),
  ADD KEY `EmployeeID` (`EmployeeID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `hire_date`
--
ALTER TABLE `hire_date`
  ADD PRIMARY KEY (`HireDateID`),
  ADD KEY `EmployeeID` (`EmployeeID`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`PositionID`),
  ADD KEY `EmployeeID` (`EmployeeID`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`RegionID`),
  ADD KEY `EmployeeID` (`EmployeeID`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`SalaryID`),
  ADD KEY `EmployeeID` (`EmployeeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DepartmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `hire_date`
--
ALTER TABLE `hire_date`
  MODIFY `HireDateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `PositionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `RegionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `SalaryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`);

--
-- Constraints for table `hire_date`
--
ALTER TABLE `hire_date`
  ADD CONSTRAINT `hire_date_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`);

--
-- Constraints for table `position`
--
ALTER TABLE `position`
  ADD CONSTRAINT `position_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`);

--
-- Constraints for table `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `region_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`);

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
