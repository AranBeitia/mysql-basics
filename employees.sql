-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2021 at 11:35 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employees`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `current_dept_emp`
-- (See below for the actual view)
--
CREATE TABLE `current_dept_emp` (
`emp_no` int(11)
,`dept_no` char(4)
,`from_date` date
,`to_date` date
);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dept_no` char(4) NOT NULL,
  `dept_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dept_no`, `dept_name`) VALUES
('4', 'backend'),
('5', 'designUX'),
('1', 'devops'),
('3', 'frontend'),
('2', 'marketing');

-- --------------------------------------------------------

--
-- Table structure for table `dept_emp`
--

CREATE TABLE `dept_emp` (
  `emp_no` int(11) NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept_emp`
--

INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES
(1, '3', '2000-01-02', '2020-01-01'),
(1, '5', '1999-01-01', '2000-01-01'),
(3, '1', '2011-01-01', '2021-01-01'),
(3, '2', '2001-01-01', '2010-01-01'),
(4, '1', '2020-01-02', '2021-01-01'),
(4, '4', '2010-01-01', '2020-01-01'),
(7, '3', '2010-01-01', '2013-01-01'),
(7, '4', '2013-01-01', '2018-01-01'),
(9, '4', '2015-01-01', '2018-01-01'),
(9, '5', '2018-01-01', '2020-01-01'),
(10, '1', '2000-01-01', '2005-01-01'),
(10, '3', '2005-01-01', '2018-01-01'),
(11, '4', '2010-01-01', '2015-01-01'),
(11, '5', '1995-01-01', '1999-01-01'),
(12, '2', '1995-01-01', '2000-01-01'),
(12, '4', '2000-01-01', '2005-01-01'),
(13, '2', '1997-01-01', '2002-01-01'),
(13, '3', '2002-01-01', '2006-01-01'),
(15, '1', '2010-01-01', '2015-01-01'),
(15, '2', '2015-01-01', '2018-01-01');

-- --------------------------------------------------------

--
-- Stand-in structure for view `dept_emp_latest_date`
-- (See below for the actual view)
--
CREATE TABLE `dept_emp_latest_date` (
`emp_no` int(11)
,`from_date` date
,`to_date` date
);

-- --------------------------------------------------------

--
-- Table structure for table `dept_manager`
--

CREATE TABLE `dept_manager` (
  `emp_no` int(11) NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept_manager`
--

INSERT INTO `dept_manager` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES
(2, '1', '1999-01-01', '2000-01-01'),
(5, '2', '2005-01-01', '2021-01-01'),
(6, '3', '1999-01-01', '2020-01-01'),
(7, '4', '2010-01-01', '2020-01-01'),
(9, '5', '2015-01-01', '2020-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_no` int(11) NOT NULL,
  `birth_date` date NOT NULL,
  `first_name` varchar(14) NOT NULL,
  `last_name` varchar(16) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `hire_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES
(1, '1965-01-01', 'Maria', 'DB', 'F', '1995-01-01'),
(2, '1980-01-01', 'Kitty', 'Hello', 'F', '1999-01-01'),
(3, '1985-01-01', 'Louise', 'Woiiii', 'F', '2009-01-01'),
(4, '1985-01-01', 'Jone', 'Woo', 'M', '2010-01-01'),
(5, '1945-01-01', 'Jon', 'Chan', 'M', '2005-01-10'),
(6, '1999-01-01', 'Querina', 'Queri', 'F', '1999-01-01'),
(7, '1955-01-01', 'Peter', 'Marky', 'M', '2010-01-01'),
(8, '1979-01-01', 'Peter', 'Testtube', 'M', '2005-01-01'),
(9, '1995-01-01', 'Mikel', 'Ramone', 'M', '2015-01-01'),
(10, '1960-01-01', 'Peter', 'Parker', 'M', '2003-01-01'),
(11, '1985-01-01', 'Juanita', 'Banana', 'F', '1995-01-01'),
(12, '1972-01-01', 'Jane', 'Doe', 'F', '1995-01-01'),
(13, '1977-01-01', 'Viv', 'Albertine', 'F', '1997-01-01'),
(14, '1980-01-01', 'Patty', 'Smith', 'F', '2000-01-01'),
(15, '1977-01-01', 'Vivien', 'Goldman', 'F', '2010-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `emp_no` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES
(1, 30000, '1999-01-01', '2000-01-01'),
(1, 35000, '2000-01-02', '2020-01-01'),
(2, 50000, '1999-01-01', '2000-01-01'),
(3, 24000, '2001-01-02', '2010-01-01'),
(3, 30000, '2011-01-02', '2021-01-01'),
(4, 25000, '2010-01-01', '2020-01-01'),
(4, 30000, '2020-01-02', '2021-01-01'),
(5, 28000, '2005-01-01', '2021-01-01'),
(6, 33000, '1999-01-01', '2020-01-01'),
(7, 33000, '2010-01-01', '2020-01-01'),
(8, 24000, '2005-01-01', '2000-01-01'),
(9, 25000, '2015-01-01', '2020-01-01'),
(10, 18000, '0000-00-00', '0000-00-00'),
(10, 25000, '2005-01-01', '2018-01-01'),
(11, 20000, '1995-01-01', '1999-01-01'),
(11, 28000, '2010-01-01', '2015-01-01'),
(12, 35000, '1995-01-01', '2000-01-01'),
(13, 35000, '1997-01-01', '2000-01-01'),
(14, 48000, '2000-01-01', '2020-01-01'),
(15, 43000, '1999-01-01', '2019-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `emp_no` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES
(1, 'Computer degree', '1996-01-01', '1999-01-01'),
(2, 'Marketing degree', '1995-01-01', '1999-01-01'),
(3, 'Publicity degree', '2015-01-01', '2020-01-01'),
(4, 'Computer degree', '2015-01-01', '2020-01-01'),
(5, 'Design degree', '2005-01-01', '2010-01-01'),
(6, 'Computer degree', '2000-01-01', '2005-01-01'),
(7, 'Computer degree', '2000-01-01', '2005-01-01'),
(8, 'Computer degree', '2000-01-01', '2005-01-01'),
(9, 'Marketing degree', '2010-01-01', '2015-01-01'),
(10, 'Marketing degree', '2015-01-01', '2020-01-01'),
(11, 'Design degree', '1990-01-01', '1995-01-01'),
(12, 'Publicity degree', '1990-01-01', '1995-01-01'),
(13, 'Publicity degree', '2015-01-01', '2020-01-01'),
(14, 'Computer degree', '2015-01-01', '2020-01-01'),
(15, 'Computer degree', '2005-01-01', '2010-01-01');

-- --------------------------------------------------------

--
-- Structure for view `current_dept_emp`
--
DROP TABLE IF EXISTS `current_dept_emp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `current_dept_emp`  AS SELECT `l`.`emp_no` AS `emp_no`, `d`.`dept_no` AS `dept_no`, `l`.`from_date` AS `from_date`, `l`.`to_date` AS `to_date` FROM (`dept_emp` `d` join `dept_emp_latest_date` `l` on(`d`.`emp_no` = `l`.`emp_no` and `d`.`from_date` = `l`.`from_date` and `l`.`to_date` = `d`.`to_date`)) ;

-- --------------------------------------------------------

--
-- Structure for view `dept_emp_latest_date`
--
DROP TABLE IF EXISTS `dept_emp_latest_date`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dept_emp_latest_date`  AS SELECT `dept_emp`.`emp_no` AS `emp_no`, max(`dept_emp`.`from_date`) AS `from_date`, max(`dept_emp`.`to_date`) AS `to_date` FROM `dept_emp` GROUP BY `dept_emp`.`emp_no` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dept_no`),
  ADD UNIQUE KEY `dept_name` (`dept_name`);

--
-- Indexes for table `dept_emp`
--
ALTER TABLE `dept_emp`
  ADD PRIMARY KEY (`emp_no`,`dept_no`),
  ADD KEY `dept_no` (`dept_no`);

--
-- Indexes for table `dept_manager`
--
ALTER TABLE `dept_manager`
  ADD PRIMARY KEY (`emp_no`,`dept_no`),
  ADD KEY `dept_no` (`dept_no`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_no`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`emp_no`,`from_date`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`emp_no`,`title`,`from_date`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dept_emp`
--
ALTER TABLE `dept_emp`
  ADD CONSTRAINT `dept_emp_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE,
  ADD CONSTRAINT `dept_emp_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE;

--
-- Constraints for table `dept_manager`
--
ALTER TABLE `dept_manager`
  ADD CONSTRAINT `dept_manager_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE,
  ADD CONSTRAINT `dept_manager_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE;

--
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE;

--
-- Constraints for table `titles`
--
ALTER TABLE `titles`
  ADD CONSTRAINT `titles_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
