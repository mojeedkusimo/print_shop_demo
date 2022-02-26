-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2022 at 11:53 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `print_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(255) NOT NULL,
  `LAST_NAME` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `STATE` varchar(255) NOT NULL,
  `FILE_NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `STATE`, `FILE_NAME`) VALUES
(1, 'Mojeed', 'Kusimo', 'mkusimo90@gmail.com', 'Abuja Federal Capital Territory', 'upload_61b44737b84b2_Capture.PNG'),
(4, 'Mojeed', 'Kusimo', 'mkusimo90@gmail.com', 'Lagos', 'upload_61b5901a5d402_WhatsApp Image 2021-12-05 at 11.23.53.jpeg'),
(5, 'KUSIMO', 'AKINTUNDE', 'mkusimo90@gmail.com', 'Lagos', 'upload_61b447596c69a_com.whatsapp_Screenshot_2020.10.29_13.35.09.jpeg'),
(6, 'Mojeed', 'Kusimo', 'mkusimo90@gmail.com', 'Lagos', 'upload_61ba6f89a4221_WhatsApp Image 2021-12-05 at 11.23.53.jpeg'),
(7, 'Mojeed', 'Kusimo', 'mkusimo90@gmail.com', 'Lagos', 'upload_61ba763783292_energizer-car-power-inverters-enk3000-64_1000.jpg'),
(8, 'Mojeed', 'Kusimo', 'mkusimo90@gmail.com', 'Abuja Federal Capital Territory', 'upload_61ba76db49d3d_photo5834697550060434186.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
