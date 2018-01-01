-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2018 at 05:12 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `node`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `User_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`User_name`, `password`) VALUES
('bob', 'bob');

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `id` int(11) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `route` varchar(50) NOT NULL,
  `departuer_date` varchar(50) NOT NULL,
  `departure_time` varchar(50) NOT NULL,
  `starting_counter` varchar(50) NOT NULL,
  `ending_counter` varchar(50) NOT NULL,
  `fare` int(10) DEFAULT NULL,
  `coach_type` varchar(10) NOT NULL,
  `arival_Time` varchar(50) DEFAULT NULL,
  `seat_Available` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`id`, `bus_name`, `route`, `departuer_date`, `departure_time`, `starting_counter`, `ending_counter`, `fare`, `coach_type`, `arival_Time`, `seat_Available`) VALUES
(73, 'Bus 1', 'Dhaka-Syllet', '01/01/2018', '01:01 AM', 'Dhaka', 'Syllet', 700, 'AC', '06:01 AM', 32),
(74, 'Bus 2', 'Dhaka-Syllet', '01/01/2018', '02:02 AM', 'Dhaka', 'Syllet', 700, 'AC', '07:07 AM', 32),
(75, '', '', '//', ': ', '', '', 0, '', ': ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Pial', 'aaaaaaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `id` int(11) NOT NULL,
  `Passenger_name` varchar(50) NOT NULL,
  `Mobile` int(15) NOT NULL,
  `Age` int(2) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Nationality` varchar(50) DEFAULT NULL,
  `Boarding_point` varchar(50) DEFAULT NULL,
  `Droping_point` varchar(50) DEFAULT NULL,
  `Departure_date` date DEFAULT NULL,
  `Boarding_time` time DEFAULT NULL,
  `Payment_method` varchar(50) NOT NULL,
  `nid` varchar(50) NOT NULL,
  `Bus_id` int(11) NOT NULL,
  `paymentammount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`id`, `Passenger_name`, `Mobile`, `Age`, `Email`, `Gender`, `Address`, `Nationality`, `Boarding_point`, `Droping_point`, `Departure_date`, `Boarding_time`, `Payment_method`, `nid`, `Bus_id`, `paymentammount`) VALUES
(1, 'Passenger 1', 17123456, 24, 'pas@gmail.com', 'Male', 'Dhaka', 'Male', 'dhaka', 'Barisal', NULL, NULL, 'Male', '4565454364365465', 36, 700),
(2, 'Passenger 2', 17123456, 24, 'pas@gmail.com', 'Male', 'Dhaka', 'Male', 'dhaka', 'Barisal', NULL, NULL, 'Male', '4565454364365465', 36, 700),
(3, 'Passenger 2', 17123456, 24, 'pas@gmail.com', 'Male', 'Dhaka', 'Male', 'dhaka', 'Barisal', NULL, NULL, 'Male', '4565454364365465', 36, 700),
(4, 'Passenger 1', 5485445, 53, 'uftfcjhc', 'Male', 'uigtiyjhg', 'Bangladeshi', 'uyrfu6', 'yfjvg', NULL, NULL, 'Cash', '53465435', 36, 700),
(5, 'Passenger 1', 5485445, 53, 'uftfcjhc', 'Male', 'uigtiyjhg', 'Bangladeshi', 'uyrfu6', 'yfjvg', NULL, NULL, 'Cash', '53465435', 36, 700),
(6, 'Passenger 1', 5485445, 53, 'uftfcjhc', 'Male', 'uigtiyjhg', 'Bangladeshi', 'uyrfu6', 'yfjvg', NULL, NULL, 'Cash', '53465435', 36, 700),
(7, 'pgfhngfv', 8743683, 44, 'uyfkyth', 'Male', 'kguygh', 'Bangladeshi', 'fvjukyf', 'tdh cnhc', NULL, NULL, 'Cash', 'yfjyh v,', 36, 700),
(8, 'pgfhngfv', 8743683, 44, 'uyfkyth', 'Male', 'kguygh', 'Bangladeshi', 'fvjukyf', 'tdh cnhc', NULL, NULL, 'Cash', 'yfjyh v,', 36, 700),
(9, 'pgfhngfv', 8743683, 44, 'uyfkyth', 'Male', 'kguygh', 'Bangladeshi', 'fvjukyf', 'tdh cnhc', NULL, NULL, 'Cash', 'yfjyh v,', 36, 700),
(10, 'pgfhngfv', 8743683, 44, 'uyfkyth', 'Male', 'kguygh', 'Bangladeshi', 'fvjukyf', 'tdh cnhc', NULL, NULL, 'Cash', 'yfjyh v,', 36, 700),
(11, 'pgfhngfv', 8743683, 44, 'uyfkyth', 'Male', 'kguygh', 'Bangladeshi', 'fvjukyf', 'tdh cnhc', NULL, NULL, 'Cash', 'yfjyh v,', 36, 700),
(12, 'pgfhngfv', 8743683, 44, 'uyfkyth', 'Male', 'kguygh', 'Bangladeshi', 'fvjukyf', 'tdh cnhc', NULL, NULL, 'Cash', 'yfjyh v,', 36, 700),
(13, 'pgfhngfv', 8743683, 44, 'uyfkyth', 'Male', 'kguygh', 'Bangladeshi', 'fvjukyf', 'tdh cnhc', NULL, NULL, 'Cash', 'yfjyh v,', 36, 700),
(14, 'pgfhngfv', 8743683, 44, 'uyfkyth', 'Male', 'kguygh', 'Bangladeshi', 'fvjukyf', 'tdh cnhc', NULL, NULL, 'Cash', 'yfjyh v,', 36, 700),
(15, 'pgfhngfv', 8743683, 44, 'uyfkyth', 'Male', 'kguygh', 'Bangladeshi', 'fvjukyf', 'tdh cnhc', NULL, NULL, 'Cash', 'yfjyh v,', 36, 700),
(16, 'pgfhngfv', 8743683, 44, 'uyfkyth', 'Male', 'kguygh', 'Bangladeshi', 'fvjukyf', 'tdh cnhc', NULL, NULL, 'Cash', 'yfjyh v,', 36, 700),
(17, 'pgfhngfv', 8743683, 44, 'uyfkyth', 'Male', 'kguygh', 'Bangladeshi', 'fvjukyf', 'tdh cnhc', NULL, NULL, 'Cash', 'yfjyh v,', 36, 700),
(18, 'pgfhngfv', 8743683, 44, 'uyfkyth', 'Male', 'kguygh', 'Bangladeshi', 'fvjukyf', 'tdh cnhc', NULL, NULL, 'Cash', 'yfjyh v,', 36, 700),
(19, 'pgfhngfv', 8743683, 44, 'uyfkyth', 'Male', 'kguygh', 'Bangladeshi', 'fvjukyf', 'tdh cnhc', NULL, NULL, 'Cash', 'yfjyh v,', 36, 700),
(20, 'htcdhgch', 58436543, 11, 'uggjg', 'Male', 'jukgbmjkgb', 'Bangladeshi', 'barisal', 'dhaka', NULL, NULL, 'Cash', '6453431643', 36, 700),
(21, 'htcdhgch', 58436543, 11, 'uggjg', 'Male', 'jukgbmjkgb', 'Bangladeshi', 'barisal', 'dhaka', NULL, NULL, 'Cash', '6453431643', 36, 700),
(22, 'ygjgj', 543, 24, 'kgbjilhknk,', 'Male', 'ukijgibj', 'Bangladeshi', 'fhyv', 'yf ku', NULL, NULL, 'Cash', '31356441.', 36, 465),
(23, 'Pial', 1765677215, 23, 'pial0007l@gmail.com', 'Male', NULL, 'Bangladeshi', 'Dhaka', 'Barisal', NULL, NULL, 'Card', '3654634746', 36, 700),
(24, 'jkhghujvg', 54654, 22, 'uyfytf', 'Male', 'uigog', 'Bangladeshi', 'igouigh', 'uyfyut', NULL, NULL, 'Cash', '65454151', 33, 700),
(25, 'Pa', 165465465, 24, 'passenger@gmail.com', 'Male', 'basjfb,sahfui', 'Bangladeshi', 'dhaka', 'Syllet', NULL, NULL, 'Card', '543512165313215', 33, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `catId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `id` int(11) NOT NULL,
  `seat_name` varchar(10) DEFAULT NULL,
  `bus_id` int(11) DEFAULT NULL,
  `passenger_id` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`id`, `seat_name`, `bus_id`, `passenger_id`, `status`) VALUES
(285, 'A1', 73, 0, 0),
(286, 'A2', 73, 0, 0),
(287, 'A3', 73, 0, 0),
(288, 'A4', 73, 0, 0),
(289, 'B1', 73, 0, 0),
(290, 'B2', 73, 0, 0),
(291, 'B3', 73, 0, 0),
(292, 'B4', 73, 0, 0),
(293, 'C1', 73, 0, 0),
(294, 'C2', 73, 0, 0),
(295, 'C3', 73, 0, 0),
(296, 'C4', 73, 0, 0),
(297, 'D1', 73, 0, 0),
(298, 'D2', 73, 0, 0),
(299, 'D3', 73, 0, 0),
(300, 'D4', 73, 0, 0),
(301, 'E1', 73, 0, 0),
(302, 'E2', 73, 0, 0),
(303, 'E3', 73, 0, 0),
(304, 'E4', 73, 0, 0),
(305, 'F1', 73, 0, 0),
(306, 'F2', 73, 0, 0),
(307, 'F3', 73, 0, 0),
(308, 'F4', 73, 0, 0),
(309, 'G1', 73, 0, 0),
(310, 'G2', 73, 0, 0),
(311, 'G3', 73, 0, 0),
(312, 'G4', 73, 0, 0),
(313, 'H1', 73, 0, 0),
(314, 'H2', 73, 0, 0),
(315, 'H3', 73, 0, 0),
(316, 'H4', 73, 0, 0),
(317, 'A1', 74, 0, 0),
(318, 'A2', 74, 0, 0),
(319, 'A3', 74, 0, 0),
(320, 'A4', 74, 0, 0),
(321, 'B1', 74, 0, 0),
(322, 'B2', 74, 0, 0),
(323, 'B3', 74, 0, 0),
(324, 'B4', 74, 0, 0),
(325, 'C1', 74, 0, 0),
(326, 'C2', 74, 0, 0),
(327, 'C3', 74, 0, 0),
(328, 'C4', 74, 0, 0),
(329, 'D1', 74, 0, 0),
(330, 'D2', 74, 0, 0),
(331, 'D3', 74, 0, 0),
(332, 'D4', 74, 0, 0),
(333, 'E1', 74, 0, 0),
(334, 'E2', 74, 0, 0),
(335, 'E3', 74, 0, 0),
(336, 'E4', 74, 0, 0),
(337, 'F1', 74, 0, 0),
(338, 'F2', 74, 0, 0),
(339, 'F3', 74, 0, 0),
(340, 'F4', 74, 0, 0),
(341, 'G1', 74, 0, 0),
(342, 'G2', 74, 0, 0),
(343, 'G3', 74, 0, 0),
(344, 'G4', 74, 0, 0),
(345, 'H1', 74, 0, 0),
(346, 'H2', 74, 0, 0),
(347, 'H3', 74, 0, 0),
(348, 'H4', 74, 0, 0),
(349, 'A1', 75, 0, 0),
(350, 'A2', 75, 1, 1),
(351, 'A3', 75, 0, 0),
(352, 'A4', 75, 0, 0),
(353, 'B1', 75, 0, 0),
(354, 'B2', 75, 0, 0),
(355, 'B3', 75, 0, 0),
(356, 'B4', 75, 0, 0),
(357, 'C1', 75, 0, 0),
(358, 'C2', 75, 0, 0),
(359, 'C3', 75, 0, 0),
(360, 'C4', 75, 0, 0),
(361, 'D1', 75, 0, 0),
(362, 'D2', 75, 0, 0),
(363, 'D3', 75, 0, 0),
(364, 'D4', 75, 0, 0),
(365, 'E1', 75, 0, 0),
(366, 'E2', 75, 0, 0),
(367, 'E3', 75, 0, 0),
(368, 'E4', 75, 0, 0),
(369, 'F1', 75, 0, 0),
(370, 'F2', 75, 0, 0),
(371, 'F3', 75, 0, 0),
(372, 'F4', 75, 0, 0),
(373, 'G1', 75, 0, 0),
(374, 'G2', 75, 0, 0),
(375, 'G3', 75, 0, 0),
(376, 'G4', 75, 0, 0),
(377, 'H1', 75, 0, 0),
(378, 'H2', 75, 0, 0),
(379, 'H3', 75, 0, 0),
(380, 'H4', 75, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'user', 'user'),
(3, 'test', 'test'),
(4, 'test2', 'test2'),
(6, 'testing', 'testing'),
(7, 'tested', 'tested'),
(8, 'xyz', 'xyz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`User_name`);

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catId` (`catId`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `passengers`
--
ALTER TABLE `passengers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
