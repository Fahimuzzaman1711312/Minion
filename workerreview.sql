-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2021 at 06:47 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workerreview`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(10) NOT NULL,
  `adminPassword` varchar(10) NOT NULL,
  `adminname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `adminPassword`, `adminname`) VALUES
('1234', 'sleepyrafi', 'Daiyan Rafi');

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `userid` varchar(10) NOT NULL,
  `workerid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`userid`, `workerid`) VALUES
('1232345678', '9876565434'),
('Abril', '1234345467'),
('Robin', 'Bilal'),
('Robin', 'Daniol'),
('Robin', 'Ethan');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `jobid` varchar(10) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `wtype` int(1) NOT NULL,
  `salary` int(10) NOT NULL,
  `details` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`jobid`, `userid`, `wtype`, `salary`, `details`) VALUES
('1232343456', '1231345678', 1, 34000, 'Only if you are superman'),
('1284209482', 'Mac', 0, 5000, 'I need someone who can cook healthy food'),
('1284932840', 'Dancia', 1, 7000, 'Looking for a driver'),
('2134601493', 'Santos', 1, 10000, 'We need a driver who have 10years experienceof driving'),
('2153098520', 'Kenny ', 1, 14000, 'We are searching for a driver with good behaviour'),
('2174039285', 'Nailah', 0, 4000, 'Looking a servant who can cook for diabetes patient '),
('2184039486', 'Farrah', 1, 11000, 'Need a driver who can speak English'),
('2194029184', 'Winne', 0, 5000, '\r\nNeed to find a educated helping hand'),
('2196403942', 'Reagan', 1, 1000, 'Need a driver who can drive safely'),
('2321234345', '1231345678', 1, 23000, 'Only apply if you have wings and you can fly, Thank you'),
('2321234346', '1231345678', 1, 2000, 'Apply if you are better than Steve Jobs'),
('42454245', 'Robin', 1, 2000, 'sfsf'),
('42454278', 'Robin', 1, 8, 'sfsf'),
('435344', 'Robin', 1, 232, 'fdvgfd'),
('7678', 'Robin', 1, 7887, 'nkln'),
('99080', 'Robin', 1, 8, 'kl');

-- --------------------------------------------------------

--
-- Table structure for table `massage`
--

CREATE TABLE `massage` (
  `massageid` int(11) NOT NULL,
  `fromperson` varchar(10) NOT NULL,
  `toperson` varchar(10) NOT NULL,
  `massage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `massage`
--

INSERT INTO `massage` (`massageid`, `fromperson`, `toperson`, `massage`) VALUES
(1234558857, '1231345678', '1234', 'sdffgfv sdfverfe efverv dsrg '),
(1234558858, '1231345678', '1234', 'wkjrhfkjhsfw '),
(1234558859, '1234', '1231345678', 'what the hell '),
(1234558860, '1234', '1231345678', 'hi '),
(1234558861, '1234345467', '1234', 'hello I am a worker  '),
(1234558862, '1234', '1234345467', 'i am an admin, sending massage to worker '),
(1234558863, '1232345678', '1234', 'jdnfv '),
(1234558864, '1232345678', '1234', 'jdnfv '),
(1234558865, '1234345467', '1234', 'skdjnb '),
(1234558866, '1234345467', '1234', 'Hello '),
(1234558867, '1231345678', '1234', 'bnjb '),
(1234558868, '1234345467', '1234', 'hello its me '),
(1234558869, 'Abner', '1234', 'dfad '),
(1234558870, 'Abner', '1234', ' '),
(1234558871, 'dfgdgf', 'dfg', 'dfg '),
(1234558872, 'b', 'c', 'd '),
(1234558873, 'Robin', '1234', 'dfgdfg ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` varchar(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userpassword` varchar(10) NOT NULL,
  `userphone` varchar(11) NOT NULL,
  `useremail` varchar(255) NOT NULL,
  `useradress` varchar(255) NOT NULL,
  `userage` int(10) NOT NULL,
  `usergender` int(1) NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `userpassword`, `userphone`, `useremail`, `useradress`, `userage`, `usergender`, `active`) VALUES
('1231345678', 'tarek', 'Faysal1998', '01768266415', 'faysal546@gmail.com', 'H-48, JAGANNATHPUR, VATARA', 12, 0, 1),
('1232345678', 'tarek', 'Faysal1998', '01723456543', 'faysal546@gmail.com', 'Kanchan', 13, 1, 1),
('1232346678', 'tarek', 'Faysal1998', '01768266415', 'faysal546@gmail.com', 'H-48, JAGANNATHPUR, VATARA', 32, 1, 1),
('Abner', 'Abner', 'abner45', '01840258193', 'abner04@gmail.com', '261/F,Mirpur 13\r\n', 22, 1, 1),
('Abril', 'Abril', 'abril84', '01853058128', 'abril31@gmail.com', '36/, Greenroad, Dhanmondi', 24, 0, 1),
('Dancia', 'Dancia', 'dancia546', '01749068320', 'dancia76@gmail.com', '16/A, Kalabagan, Kalabagan', 24, 0, 1),
('Farrah', 'Farrah', 'farrah', '01842691302', 'farrah32@Wgmail.com', '132/A, Rayerbag', 25, 0, 1),
('Kenny ', 'Kenny', 'kenny1029', '01784935042', 'kenny05@gmail.com', 'H-98, Bashundhara R/A', 25, 1, 1),
('Mac', 'Mac', 'Mac0923', '01385028491', 'Mac111@gmail.com', '97/E, Demra, Demra', 33, 1, 1),
('Nailah', 'Nailah', 'nailah34', '01682091748', 'nailah46@gmail.com', '56, Jatrabari, Jatrabari', 26, 0, 1),
('Raylee', 'Raylee', 'raylee02', '01840294194', 'raylee56@gmail.com', '34/A, Chasara, Fatullah', 31, 0, 1),
('Reagan', 'Reagan', 'reagan25', '01842945820', 'reagan435@gmail.com', '57/E, Mayakanon, Khilgaon', 33, 1, 1),
('Robin', 'Robin', 'robin63', '01748350239', 'robin34@gmail.com', '66/D, Sonir akhra, Rayerbag', 33, 1, 0),
('Santos', 'Santos', 'santos435', '01639603491', 'santos12@gmail.com', 'H-216, Moghbazar, Shantinagar', 30, 1, 1),
('Simeon', 'Simeon', 'simeon', '01548730959', 'simeon50@gmail.com', '169/F, Khilgaon', 31, 1, 1),
('Winne', 'Winne', 'Winne2435', '01584932878', 'winne984@gmail.com', 'H-186, Dhanmondi, Kalabagan', 21, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `workerid` varchar(10) NOT NULL,
  `workername` varchar(255) NOT NULL,
  `workerpassword` varchar(10) NOT NULL,
  `workerphone` varchar(11) NOT NULL,
  `workeradress` varchar(255) NOT NULL,
  `workerage` int(10) NOT NULL,
  `workergender` int(1) NOT NULL,
  `wtype` int(1) NOT NULL,
  `minimumwage` int(10) NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`workerid`, `workername`, `workerpassword`, `workerphone`, `workeradress`, `workerage`, `workergender`, `wtype`, `minimumwage`, `active`) VALUES
('1234345467', 'Rafi', 'Faysal1998', '01723454567', 'Gram', 198, 1, 1, 10, 1),
('1234565456', 'Arnab', 'Faysal1998', '01768266415', 'Dhaka', 34, 1, 1, 34555, 1),
('5555555555', 'Rasel', 'Faysal1998', '0163462836', 'Dhaka', 34, 1, 1, 4000, 1),
('9876565434', 'Dayian', '1342456345', '01768226415', 'Chicken Farm', 12, 0, 0, 2123, 1),
('Adhay', 'Adhay', 'adhay45', '01784530291', '736/S, Uttora\r\n', 29, 0, 0, 6000, 1),
('Alisha', 'Alisha', 'alisha45', '01853029130', '24/A, Mohammedpur, Shyamoli', 25, 0, 0, 5000, 1),
('Ayva', 'Ayva', 'ayva457', '01703941082', '35/I, Mitama, Ulkahndw', 35, 0, 0, 6000, 1),
('Bilal', 'Bilal', 'bilal54', '01893541024', '35/L, Pantapath, Kawran bazar', 45, 1, 1, 9000, 1),
('Daniol', 'Daniol', 'daniol23', '01503295423', '525/S, Bashpool, Kalabagan', 27, 1, 1, 11000, 1),
('Ethan', 'Ethan', 'ethan34', '01743905231', '267/A, Dhaka, Narayanganj', 20, 1, 1, 1000, 1),
('Macco', 'Macco', 'macco34', '01873201987', '362/A, Dhaka, Bangladesh', 43, 1, 1, 8000, 1),
('Ramior', 'Ramior', 'ramior43', '01593012950', '279/A, Urnusha, Hamburg', 22, 1, 1, 8000, 1),
('Sarahi', 'Sarahi', 'sarahi43', '01839210461', '83/B, Maniknogor, Kawran bazar', 33, 0, 0, 5000, 1),
('Tara', 'Tara', 'tara345', '01534067497', '69/H, Nanok, Dhanmondi', 28, 0, 0, 4000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `workerreview`
--

CREATE TABLE `workerreview` (
  `userid` varchar(10) NOT NULL,
  `workerid` varchar(10) NOT NULL,
  `review` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `workerreview`
--

INSERT INTO `workerreview` (`userid`, `workerid`, `review`) VALUES
('Abner', 'Daniol', 'was good'),
('Abner', 'Ramior', 'This man is a great man'),
('Abner', 'Sarahi', 'was good'),
('Kenny ', 'Alisha', 'This person is a thief'),
('Nailah', 'Adhay', 'Put too much salts in food'),
('Raylee', 'Ayva', 'She stole my mobile'),
('Raylee', 'Macco', 'He is one off a hell dude'),
('Raylee', 'Sarahi', 'Always unreachable'),
('Reagan', 'Tara', 'Don\'t hire her'),
('Robin', '1234345467', 'hkhh'),
('Robin', 'Bilal', 'Disgusting'),
('Robin', 'Daniol', 'Always unreachable'),
('Santos', 'Ramior', 'He is not good');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`userid`,`workerid`),
  ADD KEY `workerid` (`workerid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`jobid`,`userid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `massage`
--
ALTER TABLE `massage`
  ADD PRIMARY KEY (`massageid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`workerid`);

--
-- Indexes for table `workerreview`
--
ALTER TABLE `workerreview`
  ADD PRIMARY KEY (`userid`,`workerid`),
  ADD KEY `workerid` (`workerid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `massage`
--
ALTER TABLE `massage`
  MODIFY `massageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1234558874;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `contract_ibfk_2` FOREIGN KEY (`workerid`) REFERENCES `worker` (`workerid`);

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `workerreview`
--
ALTER TABLE `workerreview`
  ADD CONSTRAINT `workerreview_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `workerreview_ibfk_2` FOREIGN KEY (`workerid`) REFERENCES `worker` (`workerid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
