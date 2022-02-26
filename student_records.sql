-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2022 at 09:11 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_records`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_code` varchar(10) NOT NULL,
  `course_description` varchar(255) NOT NULL,
  `course_unit` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_code`, `course_description`, `course_unit`) VALUES
('CIVL322', 'Hydromechanics', 4),
('CSC214', 'Computer Science', 2),
('EEC437', 'ELectrical Electronics', 2),
('ENG101', 'English Language', 3),
('GST100', 'General Studies', 1),
('LEGEND101', 'Legendary', 3),
('STA201', 'Statistics', 1),
('SVG401', 'Surverying & Geinformatics', 3);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(14) NOT NULL,
  `matric_number` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `date_of_registration` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `matric_number`, `first_name`, `last_name`, `gender`, `date_of_registration`) VALUES
(1, 'FCT/182/100', 'Yasir', 'Chioma', 'M', '2022-01-29 10:31:50'),
(2, 'FCT/182/234', 'Yasir', 'Chioma', 'M', '2022-01-29 10:43:34'),
(3, 'FCT/999/567', 'Ridwan', 'Wunmi', 'F', '2022-01-29 10:43:34'),
(5, '', 'Ibrahim', 'Aishah', '', '2022-02-05 10:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `student_scores`
--

CREATE TABLE `student_scores` (
  `id` int(11) NOT NULL,
  `matric_number` int(11) DEFAULT NULL,
  `course_code` varchar(255) NOT NULL,
  `score` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_scores`
--

INSERT INTO `student_scores` (`id`, `matric_number`, `course_code`, `score`) VALUES
(1, 1, 'EEC437', 60),
(2, 2, 'ENG101', 80),
(3, 3, 'CIVL322', 58),
(4, 1, 'STA201', 70),
(5, 2, 'LEGEND101', 99),
(6, 3, 'SVG401', 79);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_scores`
--
ALTER TABLE `student_scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matric_number` (`matric_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_scores`
--
ALTER TABLE `student_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_scores`
--
ALTER TABLE `student_scores`
  ADD CONSTRAINT `student_scores_ibfk_1` FOREIGN KEY (`matric_number`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
