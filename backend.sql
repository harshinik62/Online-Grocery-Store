-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2019 at 10:51 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mini`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `username` varchar(10) NOT NULL,
  `acc_password` varchar(10) NOT NULL,
  `user_id` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `acc_password`, `user_id`) VALUES
('ananya', 'ana123', 'U011'),
('arvind', 'arv123', 'U015'),
('deekshith', 'dek123', 'U020'),
('divith', 'div123', 'U002'),
('harshi', 'har123', 'U001'),
('ishita', 'ish123', 'U009'),
('jhanvi', 'jha123', 'U012'),
('kiran', 'kir123', 'U019'),
('madhu', 'mad123', 'U014'),
('nidhi', 'nid123', 'U018'),
('pooja', 'poo123', 'U013'),
('ravi', 'rav123', 'U004'),
('sandhya', 'san123', 'U006'),
('sanketh', 'sank123', 'U007'),
('sirisha', 'sir123', 'U016'),
('sowmya', 'sow123', 'U005'),
('sushma', 'sus123', 'U017'),
('swetha', 'swe123', 'U010'),
('vibha', 'vib123', 'U003'),
('yatin', 'yat123', 'U008');

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `card_no` varchar(10) NOT NULL,
  `name_on_card` varchar(10) DEFAULT NULL,
  `date_of_expiry` date NOT NULL,
  `cvv` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`card_no`, `name_on_card`, `date_of_expiry`, `cvv`) VALUES
('C01', 'har', '2020-01-01', 143),
('C02', 'div', '2012-09-12', 420),
('C03', 'vib ', '2021-02-19', 360),
('C04', 'rav', '2020-12-26', 840),
('C05', 'sow', '2019-06-30', 280),
('C06', 'san', '2018-12-30', 260),
('C07', 'sank', '2022-10-16', 920),
('C08', 'yat', '2023-09-17', 666),
('C09', 'ish', '2025-06-18', 618),
('C10', 'swe', '2026-07-09', 709),
('C11', 'ana', '2023-03-11', 731),
('C12', 'jha', '2013-04-12', 290),
('C13', 'poo', '2073-08-28', 339),
('C14', 'mad', '2034-02-13', 837),
('C15', 'arv', '2065-12-25', 253),
('C16', 'sir', '2032-03-31', 774),
('C17', 'sus', '2051-07-31', 214),
('C18', 'nid', '2063-09-24', 742),
('C19', 'kir', '2062-03-15', 987),
('C20', 'dek', '2020-12-31', 327);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_no` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `item_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_no`, `quantity`, `price`, `item_no`) VALUES
(1110, 25, 300, 6),
(1111, 10, 100, 2),
(1112, 20, 120, 10),
(1113, 25, 800, 5),
(1114, 15, 300, 1),
(1115, 1, 25, 8),
(1116, 2, 60, 3),
(1117, 6, 300, 9),
(1118, 4, 320, 7),
(1119, 1, 120, 4),
(1120, 53, 425, 11),
(1121, 34, 200, 12),
(1122, 16, 120, 13),
(1123, 28, 220, 14),
(1124, 20, 130, 15),
(1125, 33, 290, 16),
(1126, 71, 500, 17),
(1127, 19, 180, 18),
(1128, 27, 260, 19),
(1129, 40, 380, 20);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(666, 'bakery'),
(444, 'dairy'),
(555, 'frozen foods'),
(111, 'fruits'),
(0, 'harsh'),
(333, 'meat'),
(222, 'vegetables');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_no` int(11) NOT NULL,
  `item_name` varchar(15) DEFAULT NULL,
  `item_price` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_no`, `item_name`, `item_price`, `category_id`) VALUES
(1, 'apple', 20, 111),
(2, 'tomato', 10, 222),
(3, 'bread', 30, 666),
(4, 'chicken', 120, 333),
(5, 'fish', 400, 555),
(6, 'french fries', 150, 555),
(7, 'capsicum', 80, 222),
(8, 'milk', 25, 444),
(9, 'cauliflower', 50, 222),
(10, 'mango', 60, 111),
(11, 'cake', 30, 666),
(12, 'curd', 20, 444),
(13, 'cheese', 60, 444),
(14, 'panner', 80, 555),
(15, 'mutton', 200, 333),
(16, 'carrot', 30, 222),
(17, 'beans', 18, 222),
(18, 'orange', 30, 111),
(19, 'grapes', 50, 111),
(20, 'cabbage', 40, 222);

--
-- Triggers `item`
--
DELIMITER $$
CREATE TRIGGER `t1` BEFORE UPDATE ON `item` FOR EACH ROW begin
if new.item_price<50 then
set new.item_price=new.item.price*2;
end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `items_in_cart`
--

CREATE TABLE `items_in_cart` (
  `item_no` int(11) NOT NULL,
  `cart_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items_in_cart`
--

INSERT INTO `items_in_cart` (`item_no`, `cart_no`) VALUES
(1, 1114),
(2, 1111),
(3, 1116),
(4, 1119),
(5, 1113),
(6, 1110),
(7, 1118),
(8, 1115),
(9, 1117),
(10, 1112),
(11, 1120),
(12, 1121),
(13, 1122),
(14, 1123),
(15, 1124),
(16, 1125),
(17, 1126),
(18, 1127),
(19, 1128),
(20, 1129);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_no` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `cart_no` int(11) DEFAULT NULL,
  `user_id` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_no`, `total_price`, `cart_no`, `user_id`) VALUES
(0, 300, 1110, 'U001'),
(11, 100, 1111, 'U002'),
(22, 120, 1112, 'U003'),
(33, 800, 1116, 'U003'),
(44, 300, 1114, 'U001'),
(55, 25, 1115, 'U001'),
(66, 60, 1116, 'U004'),
(77, 300, 1117, 'U005'),
(88, 320, 1118, 'U006'),
(99, 120, 1119, 'U002'),
(110, 425, 1120, 'U010'),
(120, 200, 1121, 'U011'),
(130, 120, 1122, 'U012'),
(140, 220, 1123, 'U012'),
(150, 130, 1124, 'U001'),
(160, 290, 1125, 'U013'),
(170, 500, 1126, 'U014'),
(180, 180, 1127, 'U015'),
(190, 260, 1128, 'U016'),
(210, 380, 1129, 'U008');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(5) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(10) NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone_no` int(11) NOT NULL,
  `street` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `password`, `gender`, `dob`, `phone_no`, `street`, `city`, `state`, `country`) VALUES
('U001', 'harshini', 'har@mail.com', 'har123', 'f', '1998-07-23', 123456, 'kasturinagar', 'bangalore', 'karnataka', NULL),
('U002', 'divith', 'div@mail.com', 'div123', 'm', '2003-06-21', 367193, 'kasturinagar', 'bangalore', 'karnataka', NULL),
('U003', 'vibha', 'vib@mail.com', 'vib123', 'f', '1998-05-13', 932156, 'langford town', 'bangalore', 'karnataka', NULL),
('U004', 'ravi', 'rav@mail.com', 'rav123', 'm', '1997-12-06', 256840, 'nadiad', 'ahmedabad', 'gujarat', NULL),
('U005', 'sowmya', 'sow@mail.com', 'sow123', 'f', '1998-10-15', 653218, 'karthiknagar', 'bangalore', 'karnataka', NULL),
('U006', 'sandhya', 'san@mail.com', 'san123', 'f', '1998-11-01', 765983, 'hsr', 'bangalore', 'karnataka', NULL),
('U007', 'sanketh', 'sank@mail.com', 'sank123', 'm', '1997-01-06', 987654, 'k r puram', 'bangalore', 'karnataka', NULL),
('U008', 'yatin', 'yat@mail.com', 'yat123', 'm', '1998-09-28', 651890, 'hsr', 'bangalore', 'karnataka', NULL),
('U009', 'ishita', 'ish@mail.com', 'ish123', 'f', '1998-06-18', 238754, 'kasturinagar', 'bangalore', 'karnataka', NULL),
('U010', 'swetha', 'swe@mail.com', 'swe123', 'f', '1998-07-09', 456329, 'hsr', 'bangalore', 'karnataka', NULL),
('U011', 'ananya', 'ana@mail.com', 'ana123', 'f', '2000-02-23', 890876, 'indiranagar', 'bangalore', 'karnataka', NULL),
('U012', 'jhanvi', 'jha@mail.com', 'jha123', 'f', '2001-12-03', 754216, 'jayanagar', 'bangalore', 'karnataka', NULL),
('U013', 'pooja', 'poo@mail.com', 'poo123', 'f', '2012-01-13', 634518, 'yelahanka', 'bangalore', 'karnataka', NULL),
('U014', 'madhu', 'mad@mail.com', 'mad123', 'm', '2005-11-29', 212479, 'koramangala', 'bangalore', 'karnataka', NULL),
('U015', 'arvind', 'arv@mail.com', 'arv123', 'm', '2007-10-19', 627491, 'koramangala', 'bangalore', 'karnataka', NULL),
('U016', 'sirisha', 'sir@mail.com', 'sir123', 'f', '2006-06-01', 891462, 'yelahanka', 'bangalore', 'karnataka', NULL),
('U017', 'sushma', 'sus@mail.com', 'sus123', 'f', '2002-07-31', 789372, 'domlur', 'bangalore', 'karnataka', NULL),
('U018', 'nidhi', 'nid@mail.com', 'nid123', 'f', '2008-08-08', 872491, 'marathalli', 'bangalore', 'karnataka', NULL),
('U019', 'kiran', 'kir@mail.com', 'kir123', 'm', '2001-09-12', 237245, 'whitefield', 'bangalore', 'karnataka', NULL),
('U020', 'deekshith', 'dek@mail.com', 'dek123', 'm', '2003-06-21', 371241, 'kasturinagar', 'bangalore', 'karnataka', NULL),
('U021', 'new user', 'new@mail.com', 'new123', 'm', '1980-06-24', 645746, 'sea link', 'mumbai', 'maharashtra', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_count`
--

CREATE TABLE `user_count` (
  `numb` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_count`
--

INSERT INTO `user_count` (`numb`) VALUES
(20);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v1`
-- (See below for the actual view)
--
CREATE TABLE `v1` (
`user_id` varchar(5)
,`name` varchar(20)
,`email` varchar(20)
,`password` varchar(10)
,`gender` varchar(1)
,`dob` date
,`phone_no` int(11)
,`street` varchar(20)
,`city` varchar(20)
,`state` varchar(20)
,`country` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v2`
-- (See below for the actual view)
--
CREATE TABLE `v2` (
`item_name` varchar(15)
,`category_id` int(11)
,`max(item_price)` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v3`
-- (See below for the actual view)
--
CREATE TABLE `v3` (
`max(item_price)` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v4`
-- (See below for the actual view)
--
CREATE TABLE `v4` (
`item_name` varchar(15)
,`item_price` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `v1`
--
DROP TABLE IF EXISTS `v1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v1`  AS  select `user`.`user_id` AS `user_id`,`user`.`name` AS `name`,`user`.`email` AS `email`,`user`.`password` AS `password`,`user`.`gender` AS `gender`,`user`.`dob` AS `dob`,`user`.`phone_no` AS `phone_no`,`user`.`street` AS `street`,`user`.`city` AS `city`,`user`.`state` AS `state`,`user`.`country` AS `country` from `user` where (`user`.`gender` = 'f') ;

-- --------------------------------------------------------

--
-- Structure for view `v2`
--
DROP TABLE IF EXISTS `v2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v2`  AS  select `i`.`item_name` AS `item_name`,`c`.`category_id` AS `category_id`,max(`i`.`item_price`) AS `max(item_price)` from (`item` `i` join `category` `c`) where (`i`.`category_id` = `c`.`category_id`) group by `c`.`category_id` ;

-- --------------------------------------------------------

--
-- Structure for view `v3`
--
DROP TABLE IF EXISTS `v3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v3`  AS  select max(`item`.`item_price`) AS `max(item_price)` from `item` ;

-- --------------------------------------------------------

--
-- Structure for view `v4`
--
DROP TABLE IF EXISTS `v4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v4`  AS  select `item`.`item_name` AS `item_name`,`item`.`item_price` AS `item_price` from `item` where ((`item`.`item_name` like 'c%e') and (`item`.`item_price` < (select max(`item`.`item_price`) from `item`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`card_no`),
  ADD UNIQUE KEY `cvv` (`cvv`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_no`),
  ADD KEY `item_no` (`item_no`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_no`),
  ADD UNIQUE KEY `item_name` (`item_name`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `items_in_cart`
--
ALTER TABLE `items_in_cart`
  ADD PRIMARY KEY (`item_no`,`cart_no`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_no`),
  ADD KEY `cart_no` (`cart_no`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`item_no`) REFERENCES `item` (`item_no`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`cart_no`) REFERENCES `cart` (`cart_no`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
