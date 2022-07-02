-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2022 at 08:44 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apes`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_data`
--

CREATE TABLE `admin_data` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `passkey` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_data`
--

INSERT INTO `admin_data` (`id`, `username`, `passkey`, `name`) VALUES
(1, 'aeraf', 'aeraf123', 'aeraf');

-- --------------------------------------------------------

--
-- Table structure for table `be_stud_data`
--

CREATE TABLE `be_stud_data` (
  `id` int(200) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `seat_no` varchar(10) NOT NULL,
  `in_dsp` int(10) NOT NULL,
  `in_css` int(10) NOT NULL,
  `in_sa` int(10) NOT NULL,
  `in_ai` int(10) NOT NULL,
  `p_dsp` int(10) NOT NULL,
  `p_css` int(10) NOT NULL,
  `p_sa` int(10) NOT NULL,
  `p_ai` int(10) NOT NULL,
  `p_ntal` int(10) NOT NULL,
  `p_prj1` int(10) NOT NULL,
  `te_dsp` int(10) NOT NULL,
  `te_css` int(10) NOT NULL,
  `te_sa` int(10) NOT NULL,
  `te_ai` int(10) NOT NULL,
  `in_dwm` int(10) NOT NULL,
  `in_hmi` int(10) NOT NULL,
  `in_pds` int(10) NOT NULL,
  `in_df` int(10) NOT NULL,
  `p_dwm` int(10) NOT NULL,
  `p_hmi` int(10) NOT NULL,
  `p_pds` int(10) NOT NULL,
  `p_df` int(10) NOT NULL,
  `p_ccl` int(10) NOT NULL,
  `p_prj2` int(10) NOT NULL,
  `te_dwm` int(10) NOT NULL,
  `te_hmi` int(10) NOT NULL,
  `te_pds` int(10) NOT NULL,
  `te_df` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `be_stud_data`
--

INSERT INTO `be_stud_data` (`id`, `first_name`, `last_name`, `address`, `Email`, `phone`, `seat_no`, `in_dsp`, `in_css`, `in_sa`, `in_ai`, `p_dsp`, `p_css`, `p_sa`, `p_ai`, `p_ntal`, `p_prj1`, `te_dsp`, `te_css`, `te_sa`, `te_ai`, `in_dwm`, `in_hmi`, `in_pds`, `in_df`, `p_dwm`, `p_hmi`, `p_pds`, `p_df`, `p_ccl`, `p_prj2`, `te_dwm`, `te_hmi`, `te_pds`, `te_df`) VALUES
(1, 'Adrash ', 'Tiwari', 'A/201, Sainath Society, Achor Park, Opp. Water taki, Nallasopara(East) ', 'adrashtiwari112@yahoo.com', '7754949656', 'BE-01', 11, 12, 13, 14, 15, 40, 41, 42, 43, 44, 65, 66, 67, 68, 69, 5, 12, 13, 14, 15, 18, 45, 45, 45, 45, 29, 45, 50),
(2, 'Sahil', 'Tambe', 'Virar(west)', 'sahiltambe@gmail.com', '1111111111', 'BE-02', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(200) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `section` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `msg` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fy_stud_data`
--

CREATE TABLE `fy_stud_data` (
  `id` int(200) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `seat_no` varchar(10) NOT NULL,
  `in_emaths1` int(10) NOT NULL,
  `in_ephy1` int(10) NOT NULL,
  `in_echem1` int(10) NOT NULL,
  `in_emech` int(10) NOT NULL,
  `in_bee` int(10) NOT NULL,
  `p_ephy1` int(10) NOT NULL,
  `p_echem1` int(10) NOT NULL,
  `p_emech` int(10) NOT NULL,
  `p_bee` int(10) NOT NULL,
  `p_workshop1` int(10) NOT NULL,
  `te_emaths1` int(10) NOT NULL,
  `te_ephy1` int(10) NOT NULL,
  `te_echem1` int(10) NOT NULL,
  `te_emech` int(10) NOT NULL,
  `te_bee` int(10) NOT NULL,
  `in_emaths2` int(10) NOT NULL,
  `in_ephy2` int(10) NOT NULL,
  `in_echem2` int(10) NOT NULL,
  `in_egraph` int(10) NOT NULL,
  `in_c` int(10) NOT NULL,
  `p_ephy2` int(10) NOT NULL,
  `p_echem2` int(10) NOT NULL,
  `p_egraph` int(10) NOT NULL,
  `p_c` int(10) NOT NULL,
  `p_workshop2` int(10) NOT NULL,
  `te_emaths2` int(10) NOT NULL,
  `te_ephy2` int(10) NOT NULL,
  `te_echem2` int(10) NOT NULL,
  `te_egraph` int(10) NOT NULL,
  `te_c` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fy_stud_data`
--

INSERT INTO `fy_stud_data` (`id`, `first_name`, `last_name`, `address`, `Email`, `phone`, `seat_no`, `in_emaths1`, `in_ephy1`, `in_echem1`, `in_emech`, `in_bee`, `p_ephy1`, `p_echem1`, `p_emech`, `p_bee`, `p_workshop1`, `te_emaths1`, `te_ephy1`, `te_echem1`, `te_emech`, `te_bee`, `in_emaths2`, `in_ephy2`, `in_echem2`, `in_egraph`, `in_c`, `p_ephy2`, `p_echem2`, `p_egraph`, `p_c`, `p_workshop2`, `te_emaths2`, `te_ephy2`, `te_echem2`, `te_egraph`, `te_c`) VALUES
(1, 'Umang', 'Kambli', 'asdvdfbbh ', 'u@gmail.com', '8728762829', 'FY-01', 15, 12, 12, 13, 16, 45, 47, 35, 39, 39, 75, 64, 67, 49, 57, 19, 13, 37, 11, 10, 45, 37, 25, 48, 49, 78, 70, 67, 56, 44);

-- --------------------------------------------------------

--
-- Table structure for table `sy_stud_data`
--

CREATE TABLE `sy_stud_data` (
  `id` int(200) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `seat_no` varchar(10) NOT NULL,
  `in_emaths3` int(10) NOT NULL,
  `in_dsgt` int(10) NOT NULL,
  `in_ds` int(10) NOT NULL,
  `in_dlca` int(10) NOT NULL,
  `in_cg` int(10) NOT NULL,
  `p_dsgt` int(10) NOT NULL,
  `p_ds` int(10) NOT NULL,
  `p_dlca` int(10) NOT NULL,
  `p_cg` int(10) NOT NULL,
  `p_java` int(10) NOT NULL,
  `te_emaths3` int(10) NOT NULL,
  `te_dsgt` int(10) NOT NULL,
  `te_ds` int(10) NOT NULL,
  `te_dlca` int(10) NOT NULL,
  `te_cg` int(10) NOT NULL,
  `in_emaths4` int(10) NOT NULL,
  `in_aoa` int(10) NOT NULL,
  `in_dbms` int(10) NOT NULL,
  `in_os` int(10) NOT NULL,
  `in_mp` int(10) NOT NULL,
  `p_aoa` int(10) NOT NULL,
  `p_dbms` int(10) NOT NULL,
  `p_os` int(10) NOT NULL,
  `p_mp` int(10) NOT NULL,
  `p_python` int(10) NOT NULL,
  `te_emaths4` int(10) NOT NULL,
  `te_aoa` int(10) NOT NULL,
  `te_dbms` int(10) NOT NULL,
  `te_os` int(10) NOT NULL,
  `te_mp` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sy_stud_data`
--

INSERT INTO `sy_stud_data` (`id`, `first_name`, `last_name`, `address`, `Email`, `phone`, `seat_no`, `in_emaths3`, `in_dsgt`, `in_ds`, `in_dlca`, `in_cg`, `p_dsgt`, `p_ds`, `p_dlca`, `p_cg`, `p_java`, `te_emaths3`, `te_dsgt`, `te_ds`, `te_dlca`, `te_cg`, `in_emaths4`, `in_aoa`, `in_dbms`, `in_os`, `in_mp`, `p_aoa`, `p_dbms`, `p_os`, `p_mp`, `p_python`, `te_emaths4`, `te_aoa`, `te_dbms`, `te_os`, `te_mp`) VALUES
(1, 'Pratik', 'Kharat', 'vxaweryu', 'p@gmail.com', '6276312725', 'SY-01', 0, 0, 0, 0, 0, 0, 23, 32, 34, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_data`
--

CREATE TABLE `teacher_data` (
  `id` int(100) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `phoneNumber` varchar(11) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `dept` varchar(200) NOT NULL,
  `username_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_data`
--

INSERT INTO `teacher_data` (`id`, `first_name`, `last_name`, `address`, `Email`, `phoneNumber`, `qualification`, `dept`, `username_pass`) VALUES
(1, 'Aarti', 'Chavan', 'Siddhi Homes Society, Achole Cross rd, Sanyukth Nagar, Opp. Zallawad Ground, Nallasopara(East). ', 'aartichavan201@gmail.com', '7219788097', 'Master in Information and Technology', 'Information Technology', 'aarti123'),
(2, 'Rahul', 'yadav', 'B/102, Shantiniketan , Achole road, Nallasopara(east).', 'rahulyadav@gmail.com', '7448271254', 'Master In Bachelor Of information and technology', 'Information Technology', 'rahul123');

-- --------------------------------------------------------

--
-- Table structure for table `ty_stud_data`
--

CREATE TABLE `ty_stud_data` (
  `id` int(200) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `seat_no` varchar(10) NOT NULL,
  `in_tcs` int(10) NOT NULL,
  `in_se` int(10) NOT NULL,
  `in_cn` int(10) NOT NULL,
  `in_dwm` int(10) NOT NULL,
  `in_ip` int(10) NOT NULL,
  `p_tcs` int(10) NOT NULL,
  `p_se` int(10) NOT NULL,
  `p_cn` int(10) NOT NULL,
  `p_dwm` int(10) NOT NULL,
  `p_ip` int(10) NOT NULL,
  `p_pce` int(10) NOT NULL,
  `te_tcs` int(10) NOT NULL,
  `te_se` int(10) NOT NULL,
  `te_cn` int(10) NOT NULL,
  `te_dwm` int(10) NOT NULL,
  `te_ip` int(10) NOT NULL,
  `in_spcc` int(10) NOT NULL,
  `in_css` int(10) NOT NULL,
  `in_mc` int(10) NOT NULL,
  `in_ai` int(10) NOT NULL,
  `in_iot` int(10) NOT NULL,
  `p_spcc` int(10) NOT NULL,
  `p_css` int(10) NOT NULL,
  `p_ai` int(10) NOT NULL,
  `p_mc` int(10) NOT NULL,
  `p_sblc` int(10) NOT NULL,
  `te_spcc` int(10) NOT NULL,
  `te_css` int(10) NOT NULL,
  `te_mc` int(10) NOT NULL,
  `te_ai` int(10) NOT NULL,
  `te_iot` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ty_stud_data`
--

INSERT INTO `ty_stud_data` (`id`, `first_name`, `last_name`, `address`, `Email`, `phone`, `seat_no`, `in_tcs`, `in_se`, `in_cn`, `in_dwm`, `in_ip`, `p_tcs`, `p_se`, `p_cn`, `p_dwm`, `p_ip`, `p_pce`, `te_tcs`, `te_se`, `te_cn`, `te_dwm`, `te_ip`, `in_spcc`, `in_css`, `in_mc`, `in_ai`, `in_iot`, `p_spcc`, `p_css`, `p_ai`, `p_mc`, `p_sblc`, `te_spcc`, `te_css`, `te_mc`, `te_ai`, `te_iot`) VALUES
(1, 'Varun', 'Margam', 'asdvdfb bh ', 'v@gmail.com', '8728762829', 'TY-01', 12, 13, 14, 15, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_data`
--
ALTER TABLE `admin_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fy_stud_data`
--
ALTER TABLE `fy_stud_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sy_stud_data`
--
ALTER TABLE `sy_stud_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_data`
--
ALTER TABLE `teacher_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ty_stud_data`
--
ALTER TABLE `ty_stud_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fy_stud_data`
--
ALTER TABLE `fy_stud_data`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sy_stud_data`
--
ALTER TABLE `sy_stud_data`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `teacher_data`
--
ALTER TABLE `teacher_data`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `ty_stud_data`
--
ALTER TABLE `ty_stud_data`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
