-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2019 at 02:53 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('VSV', 'VSV@gmail.com', '9487810674', 'Hi', ''),
('Sanjay K', 'SanjayK@gmail.com', '9487810674', 'hello', '');
-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('VSV', 'Srini Venkat V', 'VSV@gmail.com', '8903079750', '123 street,madurai,', 'VSV'),
('KS', 'Sanjay K', 'KS@gmail.com', '9487810674', '234 street,Madurai', 'KS'),
('PKN', 'Kathir  Nikshon P', 'PKN@gmail.com', '998696572', '345 street,madurai', 'PKN'),
('SYV', 'S Yajith Vishwa', 'SYV@gmail.com', '8779546521', '456 street,madurai', 'SYV'),
('SSD', 'Suvisesh Daniel', 'SSD@gmail.com', '9547123658', '567 street,madurai', 'SSD');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(58, 'Dosa', 10, 'Crispy Dosa with chutneys', 1, 'images/dosa.jpg', 'ENABLE'),
(59, 'Idly', 10, 'Soft Idly with Chutneys', 2, 'images/idly.jpg', 'ENABLE'),
(60, 'Chappathi', 15, 'soft and fresh wheat Chappathi ', 3, 'images/chappathi.jpg', 'ENABLE'),
(61, 'Poori', 15, 'Tasty Poori', 1, 'images/poori.jpg', 'ENABLE'),
(62, 'Pongal', 15, 'Pongal made with fresh ghee', 2, 'images/pongal.jpg', 'ENABLE'),
(63, 'Meals', 25, 'South indian meals enough for 2 persons', 3, 'images/meals.jpg', 'ENABLE'),
(65, 'Coffee', 5, 'coffee made by forcing pressurized water through finely ground coffee beans.', 4, 'images/coffee.jpg', 'DISABLE'),
(66, 'Tea', 5, 'Refreshing Tea', 4, 'images/tea.jpg', 'DISABLE'),
(68, 'Pakora', 5, 'crispy and hot pakora', 6, 'images/pakora.jpg', 'DISABLE'),
(69, 'Coffee', 5, 'coffee made by forcing pressurized water through finely ground coffee beans.', 2, 'images/coffee.jpg', 'ENABLE'),
(70, 'Tea', 5, 'Refreshing Tea', 2, 'images/tea.jpg', 'ENABLE'),
(71, 'Samosa 4 pieces', 10, ' Crispy Samosa with fresh masala', 2, 'images/samosa.jpg', 'ENABLE'),
(72, 'Pakora',10 , 'crispy and hot pakora', 2, 'images/pakora.jpg', 'ENABLE'),
(73, 'Puff', 5, 'A delightful snack ', 2, 'images/puff.jpg', 'ENABLE'),
(74, 'parotta', 10, 'Good and Tasty ', 2, 'parotta.jpg', 'DISABLE'),
(75, 'Chips', 5, 'Crispy cheesy and spicy', 2, 'chips.jpg', 'DISABLE'),
(76, 'Pakora', 10, 'crispy and hot pakora', 2, 'images/pakora.jpg', 'DISABLE'),
(77, 'parotta', 10, 'Good and Tasty', 2, 'images/parotta.jpg', 'ENABLE'),
(78, 'Chips', 5, 'Crispy cheesy and spicy', 2, 'images/chips.jpg', 'ENABLE'),
(79, 'Pakora', 10, 'crispy and hot pakora', 2, 'images/pakora.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('VSV', 'Srini Venkat V', 'VSV@gmail.com', '8903079750', '123 street,madurai,', 'VSV'),
('KS', 'Sanjay K', 'KS@gmail.com', '9487810674', '234 street,Madurai', 'KS'),
('PKN', 'Kathir  Nikshon P', 'PKN@gmail.com', '998696572', '345 street,madurai', 'PKN'),
('SYV', 'S Yajith Vishwa', 'SYV@gmail.com', '8779546521', '456 street,madurai', 'SYV'),
('SSD', 'Suvisesh Daniel', 'SSD@gmail.com', '9547123658', '567 street,madurai', 'SSD');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(1, 58, 'Dosa', 40, 1, '2019-03-03', 'KS', 1),
(2, 61, 'Dosa', 80, 2, '2019-03-03', 'KS', 1),
(3, 61, 'Dosa', 80, 2, '2019-03-03', 'KS', 1),
(4, 65, 'Coffee', 25, 4, '2019-03-03', 'KS', 4),
(5, 58, 'Dosa', 40, 7, '2019-03-03', 'KS', 1),
(6, 65, 'Coffee', 25, 2, '2019-03-03', 'KS', 4),
(7, 58, 'Dosa', 40, 7, '2019-03-03', 'KS', 1),
(8, 65, 'Coffee', 25, 2, '2019-03-03', 'KS', 4),
(9, 60, 'Chappathi', 99, 1, '2019-03-03', 'KS', 3),
(10, 59, 'Poori', 60, 1, '2019-03-05', 'KS', 2),
(11, 60, 'Chappathi', 99, 1, '2019-03-05', 'KS', 3),
(12, 65, 'Coffee', 25, 1, '2019-03-05', 'KS', 4),
(13, 59, 'Poori', 60, 4, '2019-03-05', 'KS', 2),
(14, 58, 'Dosa', 40, 1, '2019-03-05', 'KS', 1),
(15, 60, 'Chappathi', 99, 4, '2019-03-05', 'KS', 3),
(16, 65, 'Coffee', 25, 1, '2019-03-05', 'KS', 4),
(17, 66, 'Tea', 20, 7, '2019-03-05', 'KS', 4),
(18, 59, 'Poori', 60, 5, '2019-03-05', 'VSV', 2),
(19, 63, 'Meals', 75, 1, '2019-03-05', 'VSV', 3),
(20, 68, 'Pakora', 75, 1, '2019-03-05', 'VSV', 6),
(21, 62, 'Samosa', 65, 1, '2019-03-05', 'VSV', 2),
(22, 68, 'Pakora', 75, 1, '2019-03-05', 'VSV', 6),
(23, 62, 'Samosa', 65, 1, '2019-03-05', 'VSV', 2),
(24, 65, 'Coffee', 25, 1, '2019-03-05', 'VSV', 4),
(25, 68, 'Pakora', 75, 1, '2019-03-05', 'VSV', 6),
(26, 59, 'Poori', 60, 6, '2019-03-05', 'VSV', 2),
(27, 58, 'Dosa', 40, 1, '2019-03-05', 'VSV', 1),
(28, 59, 'Poori', 60, 1, '2019-03-05', 'VSV', 2),
(29, 58, 'Dosa', 40, 1, '2019-03-05', 'VSV', 1),
(30, 60, 'Chappathi', 99, 1, '2019-03-15', 'KS', 3),
(31, 59, 'Poori', 60, 1, '2019-03-15', 'KS', 2),
(32, 61, 'Dosa', 80, 1, '2019-03-15', 'KS', 1),
(33, 60, 'Chappathi', 99, 1, '2019-03-15', 'KS', 3),
(34, 59, 'Poori', 60, 1, '2019-03-15', 'KS', 2),
(35, 61, 'Dosa', 80, 1, '2019-03-15', 'KS', 1),
(36, 62, 'Samosa', 65, 1, '2019-03-15', 'KS', 2),
(37, 72, 'Pakora', 45, 6, '2019-03-15', 'KS', 2),
(38, 78, 'Chips', 75, 7, '2019-03-15', 'KS', 2),
(39, 78, 'Chips', 75, 1, '2019-03-15', 'KS', 2),
(40, 73, 'Puff', 35, 1, '2019-03-15', 'KS', 2),
(41, 77, 'Parotta', 200, 2, '2019-03-16', 'KS', 2),
(42, 70, 'Tea', 20, 1, '2019-03-16', 'KS', 2),
(43, 60, 'Chappathi', 99, 2, '2019-03-16', 'KS', 3),
(44, 70, 'Tea', 20, 1, '2019-03-16', 'KS', 2),
(45, 60, 'Chappathi', 99, 2, '2019-03-16', 'KS', 3),
(46, 70, 'Tea', 20, 1, '2019-03-16', 'KS', 2),
(47, 60, 'Chappathi', 99, 2, '2019-03-16', 'KS', 3),
(48, 60, 'Chappathi', 99, 4, '2019-03-25', 'KS', 3),
(49, 62, 'Samosa', 65, 6, '2019-03-25', 'KS', 2),
(50, 70, 'Tea', 20, 5, '2019-03-25', 'KS', 2),
(51, 73, 'Puff', 35, 3, '2019-03-25', 'KS', 2),
(52, 70, 'Tea', 20, 1, '2019-03-30', 'KS', 2),
(53, 60, 'Chappathi', 99, 5, '2019-03-30', 'KS', 3),
(54, 69, 'Coffee', 25, 7, '2019-03-30', 'KS', 2),
(55, 62, 'Samosa', 65, 1, '2019-04-01', 'KS', 2),
(56, 70, 'Tea', 20, 4, '2019-04-01', 'KS', 2),
(57, 70, 'Tea', 20, 1, '2019-04-01', 'KS', 2),
(58, 60, 'Chappathi', 99, 1, '2019-04-01', 'KS', 3),
(59, 59, 'Poori', 60, 6, '2019-04-02', 'KS', 2),
(60, 61, 'Dosa', 80, 1, '2019-04-02', 'KS', 1),
(61, 71, 'Samosa', 40, 3, '2019-04-17', 'KS', 2),
(62, 70, 'Tea', 20, 4, '2019-04-17', 'KS', 2),
(63, 72, 'Pakora', 45, 2, '2019-04-17', 'KS', 2),
(64, 71, 'Samosa', 40, 3, '2019-04-17', 'KS', 2),
(65, 70, 'Tea', 20, 4, '2019-04-17', 'KS', 2),
(66, 72, 'Pakora', 45, 2, '2019-04-17', 'KS', 2),
(67, 60, 'Chappathi', 99, 1, '2019-04-18', 'KS', 3),
(68, 71, 'Samosa', 40, 1, '2019-04-18', 'KS', 2);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'VSV\'s Restaurant', 'VSV@restaurant.com', '7998562145', 'Madurai', 'VSV'),
(2, 'KS\'s Restaurant', 'KS@restaurant.com', '9887546821', 'Madurai', ' KS'),
(3, 'PKN\'s Restaurant', 'PKN@restaurant.com', '7778564231', 'Madurai', 'PKN'),
(4, 'SYJ\'s Restaurant', 'SYJ@gmail.com', '09487810674', 'Madurai', 'SYJ'),
(5, 'SSD\'s Restaurant', 'SSD@gmail.com', '9443369040', 'Madurai', 'SSD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
