-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 31, 2016 at 10:32 PM
-- Server version: 10.0.21-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `geekhavendb`
--

-- --------------------------------------------------------

--
-- Table structure for table `mentors`
--

CREATE TABLE `mentors` (
  `rollnum` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `wing` int(10) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `student1r` varchar(20) NOT NULL,
  `student1n` varchar(20) NOT NULL,
  `student2r` varchar(20) NOT NULL,
  `student2n` varchar(20) NOT NULL,
  `student3r` varchar(20) NOT NULL,
  `student3n` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mentors`
--

INSERT INTO `mentors` (`rollnum`, `name`, `wing`, `count`, `student1r`, `student1n`, `student2r`, `student2n`, `student3r`, `student3n`) VALUES
('icm2015007', 'Saurabh Mishra ', 3, 4, 'iit2016075', 'SIDDHARTH SIMHARAJU', 'iit2016086', 'PRANAV MAHAJAN', 'iit2016045', 'SAURABH MISHRA'),
('IEC2015011', 'G. Naga Nikhil', 7, 4, 'imm2016007', 'MALIGIREDDY DILEEP K', 'iec2016071', 'A AKHIL REDDY', 'iec2016069', 'MANIDEEP PENDEM'),
('IEC2015013', 'Rajeev Dixit', 7, 4, 'iec2016046', 'UPASNA NA', 'iec2016010', 'PRACHI SHANKAR', 'icm2016003', 'DHVIT JAYEN MEHTA'),
('IEC2015015', 'Jainender Kumar', 7, 4, 'iit2016017', 'ASHUTOSH VISHWAKARMA', 'lit2016040', 'SHUBHAM UPADHYAY', 'iec2016011', 'SHUBHAM VARSHNEY'),
('iec2015018', 'Satyarth Agrahari', 3, 4, 'iit2016068', 'SHREYANSH CHAUDHARY', 'iec2016030', 'KAMAL NAYAN CHAUBEY', 'lit2016013', 'SURYANSH TIWARI'),
('IEC2015020', 'Akash Tiwari', 7, 4, 'iec2016019', 'NEELESH KUMAR', 'iec2016055', 'LOVISH GOEL', 'iit2016142', 'RAHUL UDAIWAL'),
('IEC2015026', 'Somendra Agrawal', 7, 4, 'iec2016039', 'AYUSH GUPTA', 'iec2016039', 'AYUSH GUPTA', 'iit2016018', 'AKSHAY KUMAR'),
('IEC2015035', 'Roopesh Krishna', 5, 4, 'iit2016097', 'SASHI TARUN KONDAPAL', 'lit2016021', 'PRINCY PATHAK', 'iit2016113', 'SIDDHANTH BABU JAGLU'),
('iec2015048', 'Neha Kandpal', 1, 4, 'iit2016016', 'MANSI CHOUDHARY', 'iec2016032', 'SUKHAVASI MEGHANA', 'bim2016006', 'RITIK SINHA'),
('IEC2015062', 'Nitish Verma', 4, 4, 'imm2016003', 'AJITESH KUMAR GUPTA', 'iit2016109', 'BHARGAV SATYA NARASI', 'iit2016099', 'SANIKA SUDAM SURSE'),
('IHM2015005', 'Abhishek Sharma', 5, 4, 'iec2016056', 'SHUBHI KHANDELWAL', 'imm2016006', 'AKANSHA KUMARI', 'iit2016130', 'ELAINE MARY ROSE'),
('IIM2015003', 'Sayantan Chatterjee', 4, 4, 'itm2016005', 'ADITI BANSAL', 'itm2016008', 'LEKHIKA DUGTAL', 'iit2016128', 'ANUPAM DAGAR'),
('IIT2015002', 'Affan', 4, 4, 'iec2016026', 'AGAM DWIVEDI', 'iec2016064', 'ANSHU KUMARI', 'lit2016014', 'ARINDAM PRATAP'),
('iit2015026', 'Somya Verma', 3, 4, 'iec2016031', 'SHREYANSH DWIVEDI', 'iec2016052', 'AANANDITA DHAWAN', 'iit2016088', 'SIMRAN GILL'),
('iit2015027', 'Praveen', 6, 4, 'iit2016138', 'MANAS RANJAN ADHA', 'iit2016139', 'ROCHISHA HALDYANI', 'ihm2016007', 'SOMINEE GUPTA'),
('IIT2015028', 'Chinmoy Das', 4, 4, 'iec2016054', 'NOONETY JAYANTH', 'lit2016032', 'YAVER NA', 'iim2016005', 'MRADUL KUMAR'),
('iit2015032', 'Rohan M Rayaraddi', 3, 4, 'iit2016041', 'VIKASH KUMAR', 'iec2016024', 'ANANT CHATURVEDI', 'lit2016011', 'AMIT KUMAR'),
('iit2015036', 'Abhinav Khare', 1, 4, 'iit2016038', 'GAGAN GANAPATHY SUDH', 'iit2016007', 'MANTEK SINGH', 'iec2016066', 'VINIT DILIP MANKAR'),
('iit2015044', 'Jayesh Chaudhari', 6, 4, 'iit2016074', 'NITIN VIJAY', 'iim2016004', 'RAGHVENDRA KUMAR', 'ism2016001', 'UTSAV KUMAR NARETI'),
('IIT2015047', 'Rishabh Rai', 5, 4, 'ism2016007', 'PIYUSH SURESH SHARMA', 'iit2016062', 'SUNIL SOHANLAL BANSI', 'iit2016095', 'PARAG PARIHAR'),
('iit2015051', 'M Diwakar', 2, 4, 'iit2016014', 'AKASH DIXIT', 'iit2016129', 'ROHAN VINOD BHALERAO', 'iit2016103', 'CHAHAK SHARMA'),
('iit2015064', 'Jayesh Patil', 5, 4, 'iit2016117', 'UTKARSH AGARWAL', 'itm2016007', 'NIHARIKA GALI', 'lit2016036', 'SHUBHI AGARWAL'),
('IIT2015073', 'Rohan Chaudhary', 5, 4, 'iit2016015', 'NISHANT MALIK', 'lit2016028', 'RAKSHIT CHOUDHARY', 'bim2016002', 'SAICHARAN REDDY SHAN'),
('iit2015074', 'Shubham Padia', 1, 4, 'iec2016045', 'NAVYASRI ALAPATI', 'iec2016029', 'GURANSHI NILI', 'iec2016025', 'SHRAVYA PANDEY'),
('iit2015097', 'Aditya Dewan', 1, 4, 'iit2016040 ', 'ANMOL SINGH SETHI', 'iit2016125', 'NEIL LEESON SYIEMLIE', 'iec2016012', 'NIKHIL MUNDRA'),
('iit2015113', 'Faheem Hassan Zunjani', 2, 4, 'iec2016027', 'BHANU BHANDARI', 'iit2016085', 'LUV', 'iec2016007', 'RISHI JAISHANKAR SHU'),
('iit2015120', 'Chaitanya Yadav', 1, 4, 'iit2016002', 'PALLAK SRIVASTAVA', 'lit2016017', 'YASH YADAV', 'iit2016032', 'ROHIT KUMAR'),
('iit2015134', 'Mubaris NK', 2, 4, 'iec2016044', 'NIHARIKA SHRIVASTAVA', 'iit2016111', 'KADAMBARI ANURANJANA', 'iit2016136', 'TANYA AGARWAL'),
('iit2015138', 'Vaibhav Bansal', 3, 4, 'iit2016047', 'RISHAB AGARWAL', 'iit2016036', 'ARINDAM DAS MODAK', 'iit2016035', 'PIYUSH DINKAR GURNUL'),
('IRM2015001', 'Ashutosh Chandra', 6, 4, 'iit2016030', 'G SRISHA ANAGH', 'iec2016028', 'PRATYUSH RAJ', 'iit2016024', 'ANKIT KUMAR'),
('irm2015006', 'Himanshu Shekhar', 2, 4, 'irm2016003', 'ADITYA GOEL', 'iit2016079', 'HARSH JAIN', 'iit2016081', 'PULKIT DINESH CHANDR'),
('ism2015004', 'Priyanka Singla', 6, 4, 'iit2016011', 'MUKUL KUMAR SINGH', 'iit2016134', 'RIDAM ARORA', 'ihm2016005', 'DIVIJA PALLETI');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `rollnum` varchar(20) NOT NULL,
  `mentor` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`rollnum`, `mentor`, `time`) VALUES
('bim2016002', 'IIT2015073', '2016-08-31 15:16:32'),
('bim2016006', 'iec2015048', '2016-08-31 13:14:33'),
('icm2016003', 'IEC2015013', '2016-08-31 15:42:55'),
('iec2016007', 'iit2015113', '2016-08-31 13:16:00'),
('iec2016010', 'IEC2015013', '2016-08-31 15:41:01'),
('iec2016011', 'IEC2015015', '2016-08-31 16:07:06'),
('iec2016012', 'iit2015097', '2016-08-31 13:09:48'),
('iec2016019', 'IEC2015020', '2016-08-31 13:52:26'),
('iec2016024', 'iit2015032', '2016-08-31 13:36:28'),
('iec2016025', 'iit2015074', '2016-08-31 13:32:08'),
('iec2016026', 'IIT2015002', '2016-08-31 13:28:01'),
('iec2016027', 'iit2015113', '2016-08-31 13:07:10'),
('iec2016028', 'IRM2015001', '2016-08-31 13:31:14'),
('iec2016029', 'iit2015074', '2016-08-31 13:29:16'),
('iec2016030', 'iec2015018', '2016-08-31 13:23:53'),
('iec2016031', 'iit2015026', '2016-08-31 13:29:08'),
('iec2016032', 'iec2015048', '2016-08-31 13:12:51'),
('iec2016039', 'IEC2015026', '2016-08-31 14:58:54'),
('iec2016044', 'iit2015134', '2016-08-31 13:41:41'),
('iec2016045', 'iit2015074', '2016-08-31 13:25:46'),
('iec2016046', 'IEC2015013', '2016-08-31 15:24:35'),
('iec2016052', 'iit2015026', '2016-08-31 13:31:58'),
('iec2016054', 'IIT2015028', '2016-08-31 14:28:12'),
('iec2016055', 'IEC2015020', '2016-08-31 15:26:21'),
('iec2016056', 'IHM2015005', '2016-08-31 13:59:38'),
('iec2016064', 'IIT2015002', '2016-08-31 14:02:34'),
('iec2016066', 'iit2015036', '2016-08-31 13:22:31'),
('iec2016069', 'IEC2015011', '2016-08-31 15:29:05'),
('iec2016071', 'IEC2015011', '2016-08-31 15:21:15'),
('ihm2016005', 'ism2015004', '2016-08-31 14:19:03'),
('ihm2016007', 'iit2015027', '2016-08-31 14:23:40'),
('iim2016004', 'iit2015044', '2016-08-31 14:15:03'),
('iim2016005', 'IIT2015028', '2016-08-31 14:36:55'),
('iit2016002', 'iit2015120', '2016-08-31 13:36:18'),
('iit2016007', 'iit2015036', '2016-08-31 13:11:21'),
('iit2016011', 'ism2015004', '2016-08-31 14:08:00'),
('iit2016014', 'iit2015051', '2016-08-31 14:13:30'),
('iit2016015', 'IIT2015073', '2016-08-31 15:10:11'),
('iit2016016', 'iec2015048', '2016-08-31 13:04:23'),
('iit2016017', 'IEC2015015', '2016-08-31 15:31:27'),
('iit2016018', 'IEC2015026', '2016-08-31 15:30:57'),
('iit2016024', 'IRM2015001', '2016-08-31 13:45:15'),
('iit2016030', 'IRM2015001', '2016-08-31 13:06:06'),
('iit2016032', 'iit2015120', '2016-08-31 13:51:00'),
('iit2016035', 'iit2015138', '2016-08-31 13:35:35'),
('iit2016036', 'iit2015138', '2016-08-31 13:10:20'),
('iit2016038', 'iit2015036', '2016-08-31 13:05:16'),
('iit2016040 ', 'iit2015097', '2016-08-31 13:04:20'),
('iit2016041', 'iit2015032', '2016-08-31 13:33:11'),
('iit2016045', 'icm2015007', '2016-08-31 13:27:01'),
('iit2016047', 'iit2015138', '2016-08-31 13:10:17'),
('iit2016062', 'IIT2015047', '2016-08-31 15:16:16'),
('iit2016068', 'iec2015018', '2016-08-31 13:23:16'),
('iit2016074', 'iit2015044', '2016-08-31 13:40:42'),
('iit2016075', 'icm2015007', '2016-08-31 13:16:51'),
('iit2016079', 'irm2015006', '2016-08-31 13:49:35'),
('iit2016081', 'irm2015006', '2016-08-31 13:50:23'),
('iit2016085', 'iit2015113', '2016-08-31 13:08:53'),
('iit2016086', 'icm2015007', '2016-08-31 13:22:40'),
('iit2016088', 'iit2015026', '2016-08-31 13:33:06'),
('iit2016095', 'IIT2015047', '2016-08-31 15:17:51'),
('iit2016097', 'IEC2015035', '2016-08-31 14:15:43'),
('iit2016099', 'IEC2015062', '2016-08-31 14:38:34'),
('iit2016103', 'iit2015051', '2016-08-31 14:36:02'),
('iit2016109', 'IEC2015062', '2016-08-31 14:33:00'),
('iit2016111', 'iit2015134', '2016-08-31 14:22:56'),
('iit2016113', 'IEC2015035', '2016-08-31 15:13:38'),
('iit2016117', 'iit2015064', '2016-08-31 14:16:35'),
('iit2016125', 'iit2015097', '2016-08-31 13:07:25'),
('iit2016128', 'IIM2015003', '2016-08-31 14:32:24'),
('iit2016129', 'iit2015051', '2016-08-31 14:29:48'),
('iit2016130', 'IHM2015005', '2016-08-31 14:14:44'),
('iit2016134', 'ism2015004', '2016-08-31 14:17:14'),
('iit2016136', 'iit2015134', '2016-08-31 14:26:19'),
('iit2016138', 'iit2015027', '2016-08-31 14:15:51'),
('iit2016139', 'iit2015027', '2016-08-31 14:21:49'),
('iit2016142', 'IEC2015020', '2016-08-31 15:28:44'),
('imm2016003', 'IEC2015062', '2016-08-31 13:59:37'),
('imm2016006', 'IHM2015005', '2016-08-31 14:00:19'),
('imm2016007', 'IEC2015011', '2016-08-31 15:20:58'),
('irm2016003', 'irm2015006', '2016-08-31 13:10:13'),
('ism2016001', 'iit2015044', '2016-08-31 14:15:14'),
('ism2016007', 'IIT2015047', '2016-08-31 15:13:00'),
('itm2016005', 'IIM2015003', '2016-08-31 14:22:45'),
('itm2016007', 'iit2015064', '2016-08-31 14:21:48'),
('itm2016008', 'IIM2015003', '2016-08-31 14:23:12'),
('lit2016011', 'iit2015032', '2016-08-31 13:42:53'),
('lit2016013', 'iec2015018', '2016-08-31 13:25:04'),
('lit2016014', 'IIT2015002', '2016-08-31 14:28:36'),
('lit2016017', 'iit2015120', '2016-08-31 13:46:29'),
('lit2016021', 'IEC2015035', '2016-08-31 14:53:18'),
('lit2016028', 'IIT2015073', '2016-08-31 15:12:19'),
('lit2016032', 'IIT2015028', '2016-08-31 14:34:41'),
('lit2016036', 'iit2015064', '2016-08-31 14:55:52'),
('lit2016040', 'IEC2015015', '2016-08-31 15:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `students_2`
--

CREATE TABLE `students_2` (
  `roll` text NOT NULL,
  `webd` longtext NOT NULL,
  `foss` longtext NOT NULL,
  `appd` longtext NOT NULL,
  `comp` longtext NOT NULL,
  `tesl` longtext NOT NULL,
  `netw` longtext NOT NULL,
  `grap` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students_2`
--

INSERT INTO `students_2` (`roll`, `webd`, `foss`, `appd`, `comp`, `tesl`, `netw`, `grap`) VALUES
('', '', '', '', ',1', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `roll` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`roll`) VALUES
('irm2015006'),
('iit2014141'),
('iit2014147'),
('icm2014001'),
('irm2014004'),
('iit2014129'),
('iit2015027');

-- --------------------------------------------------------

--
-- Table structure for table `workshops`
--

CREATE TABLE `workshops` (
  `id` int(10) NOT NULL,
  `wing` text NOT NULL,
  `workshop_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workshops`
--

INSERT INTO `workshops` (`id`, `wing`, `workshop_no`) VALUES
(1, 'foss', 0),
(2, 'appd', 0),
(3, 'webd', 1),
(4, 'netw', 1),
(5, 'grap', 0),
(6, 'comp', 1),
(7, 'tesl', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mentors`
--
ALTER TABLE `mentors`
  ADD PRIMARY KEY (`rollnum`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`rollnum`,`mentor`);

--
-- Indexes for table `workshops`
--
ALTER TABLE `workshops`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `workshops`
--
ALTER TABLE `workshops`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
