-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2021 at 10:34 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_product1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `a_id` int(11) NOT NULL,
  `a_user` varchar(20) NOT NULL,
  `a_pass` varchar(20) NOT NULL,
  `a_name` varchar(100) NOT NULL,
  `datesave` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`a_id`, `a_user`, `a_pass`, `a_name`, `datesave`) VALUES
(1, 'aaa', 'aaa', 'aaa', '2018-11-16 05:34:50'),
(2, '222', '222', 'admin2', '2018-11-16 05:34:50'),
(3, '333', '333', 'admin3', '2018-11-16 05:35:30'),
(7, 'aaa', 'aaa', 'aaa', '2021-07-24 15:11:26'),
(8, 'bbb', 'bbb', 'bbb', '2021-07-24 15:12:34'),
(9, 'ccc', 'ccc', 'ccc', '2021-07-24 15:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `member_id` int(11) NOT NULL,
  `m_user` varchar(20) NOT NULL,
  `m_pass` varchar(20) NOT NULL,
  `m_name` varchar(100) NOT NULL,
  `m_email` varchar(100) NOT NULL,
  `m_tel` varchar(20) NOT NULL,
  `m_address` varchar(200) NOT NULL,
  `date_save` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`member_id`, `m_user`, `m_pass`, `m_name`, `m_email`, `m_tel`, `m_address`, `date_save`) VALUES
(1, '111', '111', 'devtai', 'name@hotmail.com', '087657831', '181 หมู่ 10 ต.โนนสุง อ.บ้านผือ จ.อุดรธานี 41160', '2018-06-16 01:49:48'),
(2, '222', '222', 'sssss', 'wootlove@gmail.com', '0931294710', '28/38-39 ถนนยิงเป้า ต.สนามจันทร์ \r\nอ.เมือง จ.นครปฐม 73000', '2018-06-16 01:52:55'),
(3, '123', '213', 'waina', 'aaaa@gmail.com', '025837588', '46/148-9 ม.3 ถ.ศรีสมาน ต.บ้านใหม่ \r\nอ.ปากเกร็ด จ.นนทบุรี 11120', '2018-06-16 02:02:30'),
(4, '666', '666', 'eeee', 'eeee@amial.com', '0388241313', '72/33-34 ถ.ศุขประยูร ต.หน้าเมือง \r\nอ.เมือง จ.ฉะเชิงเทรา 24000', '2018-06-16 02:11:21'),
(5, '456', '654', 'waiya', 'waiy@gmail.com', '032419717', '252/1-2 ม.6 ถ.เพชรเกษม ต.บ้านหม้อ \r\nอ.เมือง จ.เพชรบุรี 76000', '2018-06-16 02:12:45'),
(6, '88', '8888', 'mmmm', 'mmmm@m.com', '038467809', '104/32 หมู่ 2 ถนนพระยาสัจจา ต.เสม็ด \r\nอ.เมือง จ.ชลบุรี 20000', '2018-06-16 02:18:42'),
(7, '999', '999', 'tbanbi', 'eoom@n.com', '038860799', '109/10-11 ถ.จันทอุดม ต.เชิงเนิน \r\nอ.เมือง จ.ระยอง 21000	', '2018-06-16 02:20:34'),
(8, '765', '765', 'moota', 'aaaa@gmail.com', '053302450', '459/98 ถ.เจริญเมือง ต.วัดเกตุ \r\nอ.เมือง จ.เชียงใหม่ 50000', '2018-06-16 02:23:37'),
(9, '777', '777', 'foodra', 'wsss@gmail.com', '053733708', '111/12-13 ม.13 ต.สันทราย \r\nอ.เมือง จ.เชียงราย 57000', '2018-06-16 02:26:55'),
(10, '144', '311', 'wiratai', 'boom@m.com', '043324754', '269/64-65 ม.4 ถ.มิตรภาพ \r\nอ.เมือง จ.ขอนแก่น 40000', '2018-06-16 02:29:48'),
(11, '333', '899', 'sadart', 'roomne@n.com', '044262223', '1982/4-5 ถ.มิตรภาพ ต.ในเมือง \r\nอ.เมือง จ.นครราชสีมา 30000', '2018-06-16 02:31:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
