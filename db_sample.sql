-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2023 at 06:06 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `s_post`
--

CREATE TABLE `s_post` (
  `SP_ID` int(150) NOT NULL,
  `SP_UID` varchar(150) NOT NULL,
  `SP_TEXT` varchar(150) NOT NULL,
  `SP_FILE` varchar(150) NOT NULL,
  `SP_PRICE` varchar(150) NOT NULL,
  `SP_DATE` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_post`
--

INSERT INTO `s_post` (`SP_ID`, `SP_UID`, `SP_TEXT`, `SP_FILE`, `SP_PRICE`, `SP_DATE`) VALUES
(3, '21', 'gaming set', 'p4.jfif', '2000', 'May 17, 2022, 7:47 am');

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `ID` int(150) NOT NULL,
  `USERNAME` varchar(150) NOT NULL,
  `PASSWORD` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`ID`, `USERNAME`, `PASSWORD`) VALUES
(2, 'admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `tb_community`
--

CREATE TABLE `tb_community` (
  `C_ID` int(150) NOT NULL,
  `U_ID` varchar(150) NOT NULL,
  `C_NAME` varchar(150) NOT NULL,
  `C_DES` varchar(150) NOT NULL,
  `C_FILE` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_community`
--

INSERT INTO `tb_community` (`C_ID`, `U_ID`, `C_NAME`, `C_DES`, `C_FILE`) VALUES
(15, '22', 'SALES', 'sales description', 'about.png'),
(16, '24', 'program', 'coding and tech', 'software-762486_1920-1024x717.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_community_members`
--

CREATE TABLE `tb_community_members` (
  `CM_ID` int(150) NOT NULL,
  `CM_COMMUNITYID` varchar(150) NOT NULL,
  `CM_USERID` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_community_members`
--

INSERT INTO `tb_community_members` (`CM_ID`, `CM_COMMUNITYID`, `CM_USERID`) VALUES
(24, '15', '21'),
(25, '16', '20'),
(26, '16', '22');

-- --------------------------------------------------------

--
-- Table structure for table `tb_friendrequest`
--

CREATE TABLE `tb_friendrequest` (
  `ID` int(150) NOT NULL,
  `USER_ID` varchar(150) NOT NULL,
  `FRIEND_ID` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_friendrequest`
--

INSERT INTO `tb_friendrequest` (`ID`, `USER_ID`, `FRIEND_ID`) VALUES
(33, '20', '21'),
(34, '22', '21'),
(35, '24', '20'),
(36, '22', '24'),
(37, '24', '22'),
(38, '25', '20'),
(39, '20', '25');

-- --------------------------------------------------------

--
-- Table structure for table `tb_message`
--

CREATE TABLE `tb_message` (
  `M_ID` int(150) NOT NULL,
  `M_CID` varchar(150) NOT NULL,
  `M_UID` varchar(150) NOT NULL,
  `M_TEXT` varchar(10000) NOT NULL,
  `M_FILE` varchar(150) NOT NULL,
  `M_AMOUNT` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_message`
--

INSERT INTO `tb_message` (`M_ID`, `M_CID`, `M_UID`, `M_TEXT`, `M_FILE`, `M_AMOUNT`) VALUES
(39, '15', '22', 'newone', 'inter.png', '234'),
(40, '16', '24', 'laptop', '123(1).jpg', '50000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_orders`
--

CREATE TABLE `tb_orders` (
  `O_ID` int(150) NOT NULL,
  `O_UID` varchar(150) NOT NULL,
  `O_PID` varchar(150) NOT NULL,
  `O_QUANTITY` varchar(150) NOT NULL,
  `O_TOTAL_PRICE` varchar(150) NOT NULL,
  `O_STATUS` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_orders`
--

INSERT INTO `tb_orders` (`O_ID`, `O_UID`, `O_PID`, `O_QUANTITY`, `O_TOTAL_PRICE`, `O_STATUS`) VALUES
(42, '20', '3', '3', '6000', '1'),
(43, '20', '3', '6', '12000', '1'),
(44, '21', '39', '2', '468', '1'),
(45, '22', '40', '3', '150000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_post`
--

CREATE TABLE `tb_post` (
  `PID` int(150) NOT NULL,
  `PUID` varchar(150) NOT NULL,
  `POST` text NOT NULL,
  `FILE` varchar(150) NOT NULL,
  `DATE` varchar(150) NOT NULL,
  `STATUS` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_post`
--

INSERT INTO `tb_post` (`PID`, `PUID`, `POST`, `FILE`, `DATE`, `STATUS`) VALUES
(19, '22', 'First post', 'groc.jpg', 'April 13, 2023, 7:45 am', ''),
(20, '24', 'test post', '123(1).jpg', 'April 23, 2023, 8:14 am', ''),
(21, '20', 'newo', 'my room-01.jpg', 'April 23, 2023, 8:35 am', ''),
(22, '25', 'test post', 'Picture1.png', 'May 6, 2023, 6:03 am', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_querry`
--

CREATE TABLE `tb_querry` (
  `Q_ID` int(150) NOT NULL,
  `Q_UID` varchar(150) NOT NULL,
  `Q_TITLE` varchar(150) NOT NULL,
  `Q_MESSAGE` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_register`
--

CREATE TABLE `tb_register` (
  `ID` int(150) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `EMAIL` varchar(150) NOT NULL,
  `PASSWORD` varchar(150) NOT NULL,
  `PHOTO` varchar(150) NOT NULL,
  `PHONE` varchar(150) NOT NULL,
  `TYPE` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_register`
--

INSERT INTO `tb_register` (`ID`, `NAME`, `EMAIL`, `PASSWORD`, `PHOTO`, `PHONE`, `TYPE`) VALUES
(20, 'a', 'a@gmail.com', 'aaaaaaaa12_', 'testimonial-3.jpg', '1111111111', 'NOT-STAKEHOLDER'),
(21, 'stakeholder', 'stakeholder@gmail.com', 'ssssssss12_', 'team-3.jpg', '9999999999', 'STAKEHOLDER'),
(22, 'venkad', 'venkad@gmail.com', 'venkad', 'animal.jpg', '9442237618', ''),
(24, 'bala', 'edwardjoshuacse@gmail.com', '1234', '[MYFREEWALLS.COM]Anonymous Hoodie 5K Wallpaper - 5120x2880.jpg', '9894368621', ''),
(25, 'user1', 'user1@gmail.com', '1111', 'Picture1.png', '1111', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `s_post`
--
ALTER TABLE `s_post`
  ADD PRIMARY KEY (`SP_ID`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_community`
--
ALTER TABLE `tb_community`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `tb_community_members`
--
ALTER TABLE `tb_community_members`
  ADD PRIMARY KEY (`CM_ID`);

--
-- Indexes for table `tb_friendrequest`
--
ALTER TABLE `tb_friendrequest`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_message`
--
ALTER TABLE `tb_message`
  ADD PRIMARY KEY (`M_ID`);

--
-- Indexes for table `tb_orders`
--
ALTER TABLE `tb_orders`
  ADD PRIMARY KEY (`O_ID`);

--
-- Indexes for table `tb_post`
--
ALTER TABLE `tb_post`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `tb_querry`
--
ALTER TABLE `tb_querry`
  ADD PRIMARY KEY (`Q_ID`);

--
-- Indexes for table `tb_register`
--
ALTER TABLE `tb_register`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `s_post`
--
ALTER TABLE `s_post`
  MODIFY `SP_ID` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `ID` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_community`
--
ALTER TABLE `tb_community`
  MODIFY `C_ID` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_community_members`
--
ALTER TABLE `tb_community_members`
  MODIFY `CM_ID` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tb_friendrequest`
--
ALTER TABLE `tb_friendrequest`
  MODIFY `ID` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tb_message`
--
ALTER TABLE `tb_message`
  MODIFY `M_ID` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tb_orders`
--
ALTER TABLE `tb_orders`
  MODIFY `O_ID` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tb_post`
--
ALTER TABLE `tb_post`
  MODIFY `PID` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_querry`
--
ALTER TABLE `tb_querry`
  MODIFY `Q_ID` int(150) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_register`
--
ALTER TABLE `tb_register`
  MODIFY `ID` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
