-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 26, 2023 at 12:13 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalstacksofwax`
--

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `collection_id` int(11) NOT NULL,
  `collection_name` varchar(255) NOT NULL,
  `collection_desc` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `likes_count` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`collection_id`, `collection_name`, `collection_desc`, `image`, `likes_count`, `user_id`) VALUES
(2, 'Emma Love these', 'I like these Vinyls', '/uploads/1682341368525--IMG_1551.JPG', 1, 2),
(3, 'Summer Days', 'Just for summer', '/uploads/1682341487037--IMG_1523.JPG', 0, 2),
(4, 'New Purchases', 'Vinyl\'s that I bought recently', '/uploads/1682341564590--IMG_1552.JPG', 1, 2),
(5, 'William Rocks', 'I do Rock', '/uploads/1682342681846--IMG_1505.jpg', 1, 3),
(6, 'Faves', 'These Are Good', '/uploads/1682342784998--IMG_1514.JPG', 1, 3),
(7, 'Some Oldies', 'These Feel Old to me', '/uploads/1682343985962--IMG_1535.JPG', 0, 4),
(8, 'Lets Listen to Music', 'Some goodies to listen to', '/uploads/1682344105194--IMG_1545.jpg', 1, 4),
(9, 'Fresh Collection', 'These Are Hot from the Oven', '/uploads/1682344189111--IMG_1546.jpg', 1, 4),
(10, 'Groups', 'Some Good Musicians', '/uploads/1682350682235--IMG_1576.JPG', 0, 5),
(11, 'Can\'t Bee', 'Self-descriptive', '/uploads/1682350858907--IMG_1627.JPG', 0, 5),
(12, 'Radiohead ', 'Some Radiohead Albums', '/uploads/1682352354177--radiohead_2000.jpg', 0, 6),
(13, 'Happy Ava Collection', 'Happily presents', '/uploads/1682352460936--IMG_1504.jpg', 0, 6),
(14, 'Gifted', 'Received as a Gift', '/uploads/1682352579808--IMG_1538.JPG', 0, 6),
(15, 'Ethan\'s Favorite', 'These are my favorite', '/uploads/1682443319414--IMG_1569.JPG', 0, 7),
(16, 'Best Memories', '', '/uploads/1682443450073--IMG_1596.jpg', 0, 7),
(17, 'With Friends', '', '/uploads/1682443553548--IMG_1480.JPG', 0, 7),
(18, 'Dance with Me', '', '/uploads/1682443660193--IMG_1584.jpg', 0, 2),
(19, 'Sunny Days', '', '/uploads/1682443757437--IMG_1611.jpg', 0, 2),
(21, 'For My Friends', '', '/uploads/1682443918873--IMG_1489.JPG', 0, 3),
(22, 'Specials', '', '/uploads/1682444006197--IMG_1572.JPG', 0, 3),
(23, 'From Madonna', '', '/uploads/1682444133099--album-covers-812x609.jpg', 0, 4),
(24, 'Ode to myself', '', '/uploads/1682444429071--IMG_1534.JPG', 0, 5),
(25, 'My Night Collection', '', '/uploads/1682444540486--IMG_1553.JPG', 0, 6),
(26, 'Check this out', '', '/uploads/1682444693613--IMG_1490.JPG', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `collection_vinyl`
--

CREATE TABLE `collection_vinyl` (
  `collection_vinyl_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `vinyl_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `collection_vinyl`
--

INSERT INTO `collection_vinyl` (`collection_vinyl_id`, `collection_id`, `vinyl_id`) VALUES
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 3, 6),
(7, 3, 7),
(8, 3, 8),
(11, 4, 6),
(9, 4, 9),
(10, 4, 10),
(12, 5, 11),
(13, 5, 15),
(17, 6, 12),
(15, 6, 14),
(14, 6, 15),
(18, 7, 16),
(19, 7, 18),
(20, 7, 21),
(23, 8, 18),
(22, 8, 19),
(21, 8, 20),
(24, 8, 22),
(25, 9, 16),
(29, 9, 17),
(26, 9, 20),
(27, 9, 21),
(32, 10, 24),
(31, 10, 25),
(30, 10, 29),
(35, 11, 23),
(34, 11, 26),
(33, 11, 30),
(37, 12, 35),
(36, 12, 37),
(38, 13, 31),
(39, 13, 32),
(40, 13, 33),
(44, 14, 32),
(42, 14, 34),
(43, 14, 35),
(41, 14, 36),
(45, 15, 38),
(46, 15, 39),
(47, 15, 40),
(48, 16, 40),
(49, 16, 41),
(50, 16, 42),
(51, 17, 39),
(52, 17, 40),
(54, 18, 3),
(53, 18, 5),
(55, 18, 8),
(56, 18, 9),
(57, 19, 5),
(58, 19, 7),
(59, 19, 9),
(63, 21, 11),
(60, 21, 12),
(61, 21, 13),
(62, 21, 14),
(65, 22, 13),
(66, 23, 18),
(69, 24, 24),
(68, 24, 26),
(67, 24, 30),
(72, 25, 33),
(70, 25, 34),
(71, 25, 36),
(75, 26, 38),
(73, 26, 40),
(74, 26, 42);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_name`) VALUES
(1, 'Pop'),
(2, 'Hip hop'),
(3, 'Rock'),
(4, 'Country'),
(5, 'Folk'),
(6, 'Jazz'),
(7, 'Disco'),
(8, 'Classical'),
(9, 'Traditional'),
(10, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `like`
--

CREATE TABLE `like` (
  `like_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `like`
--

INSERT INTO `like` (`like_id`, `collection_id`, `user_id`) VALUES
(1, 4, 1),
(3, 2, 1),
(4, 5, 1),
(5, 6, 1),
(6, 8, 1),
(7, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `review_text` text NOT NULL,
  `collection_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `review_text`, `collection_id`, `user_id`) VALUES
(1, '', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `song_id` int(11) NOT NULL,
  `song_name` varchar(255) NOT NULL,
  `song_desc` text DEFAULT NULL,
  `song_artist` varchar(255) NOT NULL,
  `vinyl_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`song_id`, `song_name`, `song_desc`, `song_artist`, `vinyl_id`) VALUES
(7, 'Speak to Me', '', 'Pink Floyd', 2),
(8, 'Breathe', '', 'Pink Floyd', 2),
(9, 'On the Run', '', 'Pink Floyd', 2),
(10, 'Time', '', 'Pink Floyd', 2),
(11, 'Money', '', 'Pink Floyd', 2),
(12, 'Us and Them', '', 'Pink Floyd', 2),
(13, 'Second Hand News', '', 'Fleetwood Mac', 3),
(14, 'Dreams', '', 'Fleetwood Mac', 3),
(15, 'Never Going Back Again', '', 'Fleetwood Mac', 3),
(16, 'Don\'t Stop', '', 'Fleetwood Mac', 3),
(17, 'Thunder Road', '', 'Bruce Springsteen', 4),
(18, 'Tenth Avenue Freeze-out', '', 'Bruce Springsteen', 4),
(19, 'Night', '', 'Bruce Springsteen', 4),
(20, 'Hotel California', '', 'The Eagles', 5),
(21, 'New Kid in Town', '', 'The Eagles', 5),
(22, 'Wasted Time', '', 'The Eagles', 5),
(23, 'Life in the Fast Lane', '', 'The Eagles', 5),
(24, 'Try and Love Again', '', 'The Eagles', 5),
(25, 'Brown Suger', '', 'The Rolling Stones', 6),
(26, 'Sway', '', 'The Rolling Stones', 6),
(27, 'Wild Horses', '', 'The Rolling Stones', 6),
(28, 'Help Me', '', 'Joni Mitchell', 7),
(29, 'Free Man in Paris', '', 'Joni Mitchell', 7),
(30, 'The Same Situation', '', 'Joni Mitchell', 7),
(31, 'Car on a Hill', '', 'Joni Mitchell', 7),
(32, 'Just Like This Train', '', 'Joni Mitchell', 7),
(33, 'Trouble Child', '', 'Joni Mitchell', 7),
(34, 'Black Cow', '', 'Steely Dan', 8),
(35, 'Aja', '', 'Steely Dan', 8),
(36, 'Deacon Blues', '', 'Steely Dan', 8),
(37, 'Peg', '', 'Steely Dan', 8),
(38, 'Home at Last', '', 'Steely Dan', 8),
(39, 'I got the News', '', 'Steely Dan', 8),
(40, 'Josie', '', 'Steely Dan', 8),
(41, 'Have a talk with God', '', 'Stevie Wonder', 9),
(42, 'Village Ghetto Land', '', 'Stevie Wonder', 9),
(43, 'Sir Duke', '', 'Stevie Wonder', 9),
(44, 'I wish', '', 'Stevie Wonder', 9),
(45, 'Summer Soft', '', 'Stevie Wonder', 9),
(46, 'Ordinary Pain', '', 'Stevie Wonder', 9),
(47, 'Isn\'t She Lovely', '', 'Stevie Wonder', 9),
(48, 'Hanging on the Telephone', '', 'Blondie', 10),
(49, 'One way or another', '', 'Blondie', 10),
(50, 'Picture This', '', 'Blondie', 10),
(51, 'Pretty Baby', '', 'Blondie', 10),
(52, 'Sunday Girl', '', 'Blondie', 10),
(53, 'Heart of Glass', '', 'Blondie', 10),
(54, 'Just go away', '', 'Blondie', 10),
(55, 'By the Way', '', 'Red Hot Chili Peppers', 11),
(56, 'Universally Speaking', '', 'Red Hot Chili Peppers', 11),
(57, 'Dosed', '', 'Red Hot Chili Peppers', 11),
(58, 'This is the Place', '', 'Red Hot Chili Peppers', 11),
(59, 'Mid Night', '', 'Red Hot Chili Peppers', 11),
(60, 'Cabron', '', 'Red Hot Chili Peppers', 11),
(61, 'Don\'t Forget Me', '', 'Red Hot Chili Peppers', 11),
(62, 'Baby be Mine', '', 'Michael Jackson', 12),
(63, 'Thriller', '', 'Michael Jackson', 12),
(64, 'Beat It', '', 'Michael Jackson', 12),
(65, 'Billy Jane', '', 'Michael Jackson', 12),
(66, 'Human Nature', '', 'Michael Jackson', 12),
(67, 'The Lady in my Life', '', 'Michael Jackson', 12),
(68, 'Let\'s go Crazy', '', 'Prince and The Revolution', 13),
(69, 'Take me with U', '', 'Prince and The Revolution', 13),
(70, 'The beautiful Ones', '', 'Prince and The Revolution', 13),
(71, 'Computer Blue', '', 'Prince and The Revolution', 13),
(72, 'Where the Streets have No Name', '', 'U2', 14),
(73, 'With or Without You', '', 'U2', 14),
(74, 'Bullet the blue sky', '', 'U2', 14),
(75, 'Running to Stand Still', '', 'U2', 14),
(76, 'Red Hill Mining Town', '', 'U2', 14),
(77, 'Exit', '', 'U2', 14),
(78, 'One Tree Hill', '', 'U2', 14),
(79, 'Welcome to the Jungle', '', 'Guns N\' Roses', 15),
(80, 'It\'s so Easy', '', 'Guns N\' Roses', 15),
(81, 'Night Rain', '', 'Guns N\' Roses', 15),
(82, 'Out ta Get Me', '', 'Guns N\' Roses', 15),
(83, 'Paradise City', '', 'Guns N\' Roses', 15),
(84, 'Think About You', '', 'Guns N\' Roses', 15),
(85, 'Rocket Queen', '', 'Guns N\' Roses', 15),
(86, 'Mr. Brownstone', '', 'Guns N\' Roses', 15),
(87, 'Synchronicity I', '', 'The Police', 16),
(88, 'Walking in Your Footsteps', '', 'The Police', 16),
(89, 'O My God', '', 'The Police', 16),
(90, 'Mother', '', 'The Police', 16),
(91, 'Synchronicity II', '', 'The Police', 16),
(92, 'King Of Pain', '', 'The Police', 16),
(93, 'Tea in the Sahara', '', 'The Police', 16),
(94, 'Born In The U.S.A.', '', 'Bruce Springsteen', 17),
(95, 'Cover Me', '', 'Bruce Springsteen', 17),
(96, 'Working on the Highway', '', 'Bruce Springsteen', 17),
(97, 'I am on Fire', '', 'Bruce Springsteen', 17),
(98, 'No Surrender', '', 'Bruce Springsteen', 17),
(99, 'Cherish', '', 'Madonna', 18),
(100, 'Express Yourself', '', 'Madonna', 18),
(101, 'Love Song', '', 'Madonna', 18),
(102, 'Oh Father', '', 'Madonna', 18),
(103, 'Promise to Try', '', 'Madonna', 18),
(104, 'Spanish Eyes', '', 'Madonna', 18),
(105, 'Like A Prayer', '', 'Madonna', 18),
(106, 'Women', '', 'Def Leppard', 19),
(107, 'Rocket', '', 'Def Leppard', 19),
(108, 'Animal', '', 'Def Leppard', 19),
(109, 'Love Bites', '', 'Def Leppard', 19),
(110, 'Don\'t shoot Shotgun', '', 'Def Leppard', 19),
(111, 'Run Riot', '', 'Def Leppard', 19),
(112, 'Hysteria', '', 'Def Leppard', 19),
(113, 'The Boy in the Bubble', '', 'Paul Simon', 20),
(114, 'Grace Land', '', 'Paul Simon', 20),
(115, 'I know What I know', '', 'Paul Simon', 20),
(116, 'Tougher than the Rest', '', 'Bruce Springsteen', 21),
(117, 'Spare Parts', '', 'Bruce Springsteen', 21),
(118, 'We Like a Man', '', 'Bruce Springsteen', 21),
(119, 'Two Faces', '', 'Bruce Springsteen', 21),
(120, 'One Step Up', '', 'Bruce Springsteen', 21),
(121, 'Valentine\'s Day', '', 'Bruce Springsteen', 21),
(122, 'Rio', '', 'Duran Duran', 22),
(123, 'My Own Way', '', 'Duran Duran', 22),
(124, 'Lonely In Your Nightmare', '', 'Duran Duran', 22),
(125, 'Hungry Like the Wolf', '', 'Duran Duran', 22),
(126, 'So What', '', 'Miles Davis', 23),
(127, 'All Blues', '', 'Miles Davis', 23),
(128, 'Blue in Green', '', 'Miles Davis', 23),
(129, 'Flamenco Sketches', '', 'Miles Davis', 23),
(130, 'Freddie Freeloader', '', 'Miles Davis', 23),
(131, 'Back in the U.S.S.R', '', 'The Beatles', 24),
(132, 'Glass Onion', '', 'The Beatles', 24),
(133, 'Ob-La-Di', '', 'The Beatles', 24),
(134, 'wild Honey Pie', '', 'The Beatles', 24),
(135, 'Happiness is a warm Gun', '', 'The Beatles', 24),
(136, 'Martha My Dear', '', 'The Beatles', 24),
(137, 'I am so Tired', '', 'The Beatles', 24),
(138, 'You still believe in Me', '', 'The Beach Boys', 25),
(139, 'That is not Me', '', 'The Beach Boys', 25),
(140, 'Sloop John B', '', 'The Beach Boys', 25),
(141, 'God Only Knows', '', 'The Beach Boys', 25),
(142, 'Here Today', '', 'The Beach Boys', 25),
(143, 'Pet Sounds', '', 'The Beach Boys', 25),
(144, 'Caroline', '', 'The Beach Boys', 25),
(145, 'Like a rolling Stone', '', 'Bob Dylan', 26),
(146, 'It take a lot to laugh', '', 'The Beach Boys', 26),
(147, 'It take a train to cry', '', 'The Beach Boys', 26),
(148, 'Highway 61 revisited', '', 'The Beach Boys', 26),
(149, 'Desolation Row', '', 'The Beach Boys', 26),
(156, 'Sunday Morning', '', 'The Velvet Underground', 29),
(157, 'Run Run Run', '', 'The Velvet Underground', 29),
(158, 'I\'ll Be Your Mirror', '', 'The Velvet Underground', 29),
(159, 'European Son', '', 'The Velvet Underground', 29),
(160, 'There She Goes Again', '', 'The Velvet Underground', 29),
(161, 'Good Times Bad Times', '', 'Led Zeppelin', 30),
(162, 'You shook Me', '', 'Led Zeppelin', 30),
(163, 'Dazed and Confused', '', 'Led Zeppelin', 30),
(164, 'Black Mountain Side', '', 'Led Zeppelin', 30),
(165, 'How Many More Times', '', 'Led Zeppelin', 30),
(166, 'Foxy Lady', '', 'Jimmy Hendrix ', 31),
(167, 'Red House', '', 'Jimmy Hendrix ', 31),
(168, 'Can You See Me', '', 'Jimmy Hendrix ', 31),
(169, 'Love Or Confession', '', 'Jimmy Hendrix ', 31),
(170, 'May this be Love', '', 'Jimmy Hendrix ', 31),
(171, 'Fire', '', 'Jimmy Hendrix ', 31),
(172, 'With a little help from my Friends', '', 'The Beatles', 32),
(173, 'Lucy In The Sky With Diamonds', '', 'The Beatles', 32),
(174, 'Getting Better', '', 'The Beatles', 32),
(175, 'Fixing A Hole', '', 'The Beatles', 32),
(176, 'She Is Leaving Home', '', 'The Beatles', 32),
(177, 'Lovely Rita', '', 'The Beatles', 32),
(178, 'In Bloom', '', 'Nirvana', 33),
(179, 'Come as you are', '', 'Nirvana', 33),
(180, 'Breed', '', 'Nirvana', 33),
(181, 'Polly', '', 'Nirvana', 33),
(182, 'Drain You', '', 'Nirvana', 33),
(183, 'Stay Away', '', 'Nirvana', 33),
(184, 'On a Plain', '', 'Nirvana', 33),
(185, 'Let Me Ride', '', 'Dr. Dre', 34),
(186, 'The Chronic', '', 'Dr. Dre', 34),
(187, 'Fuck wit Dre Day', '', 'Dr. Dre', 34),
(188, 'Deeez nuuuts', '', 'Dr. Dre', 34),
(189, 'Rat-tat-tat-tat', '', 'Dr. Dre', 34),
(190, 'High Powered', '', 'Dr. Dre', 34),
(191, 'Airbag', '', 'Radiohead', 35),
(192, 'Paranoid Android', '', 'Radiohead', 35),
(193, 'Exit Music', '', 'Radiohead', 35),
(194, 'Let Down', '', 'Radiohead', 35),
(195, 'Fitter Happier', '', 'Radiohead', 35),
(196, 'No surprises', '', 'Radiohead', 35),
(197, 'Lucky', '', 'Radiohead', 35),
(198, 'The Tourist', '', 'Radiohead', 35),
(199, 'Intro', '', 'Lauryn Hill', 36),
(200, 'Lost Ones', '', 'Lauryn Hill', 36),
(201, 'Ex-Factor', '', 'Lauryn Hill', 36),
(202, 'Superstar', '', 'Lauryn Hill', 36),
(203, 'Final Hour', '', 'Lauryn Hill', 36),
(204, 'I used to Love Him', '', 'Lauryn Hill', 36),
(205, 'Forgive them Father', '', 'Lauryn Hill', 36),
(206, 'Every City', '', 'Lauryn Hill', 36),
(207, 'The Bends', '', 'Radiohead', 37),
(208, 'High And Dry', '', 'Radiohead', 37),
(209, 'Fake Plastic Trees', '', 'Radiohead', 37),
(210, 'My Iron Lung', '', 'Radiohead', 37),
(211, 'Just', '', 'Radiohead', 37),
(212, 'Bones', '', 'Radiohead', 37),
(213, 'Sulk', '', 'Radiohead', 37),
(214, 'Drive', '', 'R.E.M.', 38),
(215, 'Try not to breathe', '', 'R.E.M.', 38),
(216, 'Everybody Hurts', '', 'R.E.M.', 38),
(217, 'Sweetness Follows', '', 'R.E.M.', 38),
(218, 'Ignoreland', '', 'R.E.M.', 38),
(219, 'Man on the Moon', '', 'R.E.M.', 38),
(220, 'Piggy', '', 'Nine Inch Nails', 39),
(221, 'Closer', '', 'Nine Inch Nails', 39),
(222, 'The Becoming', '', 'Nine Inch Nails', 39),
(223, 'A warm Place', '', 'Nine Inch Nails', 39),
(224, 'Eraser', '', 'Nine Inch Nails', 39),
(225, 'The Downward Spiral', '', 'Nine Inch Nails', 39),
(226, 'Kid A', '', 'Radiohead', 40),
(227, 'Treefingers', '', 'Radiohead', 40),
(228, 'Optimistic', '', 'Radiohead', 40),
(229, 'In Limbo', '', 'Radiohead', 40),
(230, 'Morning Bell', '', 'Radiohead', 40),
(231, 'Kamera', '', 'Wilco', 41),
(232, 'Radio Cure', '', 'Wilco', 41),
(233, 'War on War', '', 'Wilco', 41),
(234, 'Jesus', '', 'Wilco', 41),
(235, 'Heavy Metal Drummer', '', 'Wilco', 41),
(236, 'Pot kettle black', '', 'Wilco', 41),
(237, 'One More Time', '', 'Daft Punk', 42),
(238, 'Digital Love', '', 'Daft Punk', 42),
(239, 'Harder', '', 'Daft Punk', 42),
(240, 'Better', '', 'Daft Punk', 42),
(241, 'Faster', '', 'Daft Punk', 42),
(242, 'Stronger', '', 'Daft Punk', 42),
(243, 'Something about us', '', 'Daft Punk', 42);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(1024) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `email`, `first_name`, `last_name`) VALUES
(1, 'admin', '$2b$10$aaXp1lnxXPh93LYQ/UZpCebAlb2U50ofY2kO18xZWCVdDhNyjXXdK', 'admin@admin.com', 'System', 'Admin'),
(2, 'Emma', '$2b$10$gjq1fQakAKnDYX5ji15Sc.o2x2U.CNgKz2Noa6BzRn7nWeVJ3ETz2', 'emma@gmail.com', 'Emma', 'Johnson'),
(3, 'William', '$2b$10$9XnnAl6KPm1r9TyK0Y.qouISHArCg4s5cEsseQQt/fkjwTU.JScRq', 'william@gmail.com', 'William', 'Rodriguez'),
(4, 'Olivia', '$2b$10$Ow.1SiN8j8EIhQbX4yCljuG9jva6Mz3PdnWBSLg3c9O0XehqRnT62', 'olivia@gmail.com', 'Olivia', 'Lee'),
(5, 'Benjamin', '$2b$10$PFXb1Fgv84xv01sUe/k5aOK89ERXMs6Zq9xnYo6N9XEwVK55bXAFW', 'benjamin@gmail.com', 'Benjamin', 'Kim'),
(6, 'Ava', '$2b$10$EAZdjWN5.uCiDUH3Ewykx.pIUyGzzQVCAQR4gbLfnW5NvBiaDftP2', 'ava@gmail.com', 'Ava', 'Patel'),
(7, 'Ethan', '$2b$10$F80tcsWpU21dhBU.p8pVS.WL2mb7GRfs5dz./i51lE6d5r1BdLuuK', 'ethan@gmail.com', 'Ethan ', 'Wong');

-- --------------------------------------------------------

--
-- Table structure for table `vinyl`
--

CREATE TABLE `vinyl` (
  `vinyl_id` int(11) NOT NULL,
  `vinyl_name` varchar(255) NOT NULL,
  `vinyl_desc` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vinyl`
--

INSERT INTO `vinyl` (`vinyl_id`, `vinyl_name`, `vinyl_desc`, `image`, `user_id`) VALUES
(2, 'Dark Side of the Moon', '', '/uploads/1682335969065--IMG_1527.JPG', 2),
(3, 'Rumours', '', '/uploads/1682337331095--IMG_1499.JPG', 2),
(4, 'Born to Run', '', '/uploads/1682337778512--IMG_1524.JPG', 2),
(5, 'Hotel California', '', '/uploads/1682338178367--IMG_1509.JPG', 2),
(6, 'Sticky Fingers', '', '/uploads/1682339028025--IMG_1580.JPG', 2),
(7, 'Court and Spark', '', '/uploads/1682339316716--IMG_1526.JPG', 2),
(8, 'Aja', '', '/uploads/1682339654153--IMG_1579.JPG', 2),
(9, 'Songs in the Sky of Life', '', '/uploads/1682341119351--IMG_1542.jpg', 2),
(10, 'Parallel Lines', '', '/uploads/1682341279344--IMG_1592.JPG', 2),
(11, 'Parallel Universe', '', '/uploads/1682341886698--IMG_1587.jpg', 3),
(12, 'Thriller', '', '/uploads/1682342024298--IMG_1578.JPG', 3),
(13, 'Purple Rain', '', '/uploads/1682342124402--IMG_1555.jpg', 3),
(14, 'The Joshua Tree', '', '/uploads/1682342305052--IMG_1554.jpg', 3),
(15, 'Appetite for Destruction', '', '/uploads/1682342580501--IMG_1531.JPG', 3),
(16, 'Synchronicity', '', '/uploads/1682343069423--IMG_1574.PNG', 4),
(17, 'Born In The U.S.A.', '', '/uploads/1682343221247--IMG_1570.JPG', 4),
(18, 'Like A Prayer', '', '/uploads/1682343383373--album-covers-812x609.jpg', 4),
(19, 'Hysteria', '', '/uploads/1682343525667--IMG_1568.jpg', 4),
(20, 'Grace Land', '', '/uploads/1682343629424--IMG_1561.JPG', 4),
(21, 'Born to Run', '', '/uploads/1682343779611--IMG_1559.JPG', 4),
(22, 'Rio', '', '/uploads/1682343919630--IMG_1544.PNG', 4),
(23, 'Kind of Blue', '', '/uploads/1682349211015--IMG_1625.JPG', 5),
(24, 'The White Album', '', '/uploads/1682349462165--s-l1600.jpg', 5),
(25, 'Pet Sounds', '', '/uploads/1682349631154--IMG_1581.JPG', 5),
(26, 'Highway 61Revisited', '', '/uploads/1682349805979--IMG_1586.JPG', 5),
(29, 'The Velvet Underground and Nico', '', '/uploads/1682350418162--IMG_1601.JPG', 5),
(30, 'Led Zeppelin', '', '/uploads/1682350629298--IMG_1593.jpg', 5),
(31, 'Are You Experienced', '', '/uploads/1682351201349--IMG_1540.JPG', 6),
(32, 'Sgt.Pepper\'s Lonely Hearts Club Band', '', '/uploads/1682351403794--IMG_1618.JPG', 6),
(33, 'Never Mind', '', '/uploads/1682351533191--IMG_1625.JPG', 6),
(34, 'The Chronic', '', '/uploads/1682351686403--IMG_1602.jpg', 6),
(35, 'Ok Computer', '', '/uploads/1682351831494--IMG_1607.JPG', 6),
(36, 'The miseducation of Lauryn Hill', '', '/uploads/1682352078245--IMG_1594.JPG', 6),
(37, 'The Bends', '', '/uploads/1682352271617--IMG_1521.JPG', 6),
(38, 'Automatic for the People', '', '/uploads/1682442444151--IMG_1506.jpg', 7),
(39, 'The Downward Spiral', '', '/uploads/1682442682462--IMG_1490.JPG', 7),
(40, 'Kid A', '', '/uploads/1682442787646--radiohead_2000.jpg', 7),
(41, 'Yankee Hotel Foxtrot', '', '/uploads/1682442962329--IMG_1598.PNG', 7),
(42, 'Discovery', '', '/uploads/1682443113344--IMG_1560.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `vinyl_genre`
--

CREATE TABLE `vinyl_genre` (
  `vinyl_genre_id` int(11) NOT NULL,
  `vinyl_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vinyl_genre`
--

INSERT INTO `vinyl_genre` (`vinyl_genre_id`, `vinyl_id`, `genre_id`) VALUES
(2, 2, 3),
(3, 3, 1),
(4, 3, 3),
(5, 4, 1),
(6, 4, 3),
(7, 4, 6),
(8, 5, 3),
(9, 5, 4),
(10, 6, 3),
(11, 6, 6),
(12, 7, 3),
(13, 7, 6),
(15, 8, 1),
(14, 8, 3),
(16, 8, 6),
(18, 9, 1),
(17, 9, 5),
(19, 10, 1),
(20, 10, 7),
(21, 11, 1),
(22, 11, 3),
(23, 11, 5),
(24, 12, 1),
(25, 13, 1),
(26, 13, 5),
(27, 14, 1),
(28, 14, 3),
(29, 15, 3),
(30, 15, 10),
(31, 16, 3),
(32, 16, 10),
(33, 17, 3),
(34, 18, 1),
(35, 18, 7),
(36, 19, 3),
(37, 19, 6),
(38, 19, 10),
(39, 20, 1),
(40, 20, 3),
(41, 20, 5),
(42, 20, 6),
(43, 21, 3),
(44, 22, 1),
(45, 22, 2),
(46, 22, 7),
(47, 23, 6),
(48, 24, 1),
(49, 24, 3),
(50, 25, 1),
(51, 25, 3),
(52, 26, 3),
(53, 26, 5),
(56, 29, 1),
(57, 29, 3),
(58, 30, 3),
(59, 30, 6),
(60, 31, 3),
(61, 31, 6),
(62, 32, 1),
(63, 32, 3),
(64, 32, 6),
(65, 33, 3),
(66, 33, 10),
(67, 34, 1),
(68, 34, 2),
(69, 34, 5),
(70, 35, 3),
(71, 35, 6),
(72, 36, 1),
(73, 36, 2),
(74, 36, 7),
(75, 37, 3),
(76, 37, 10),
(77, 38, 1),
(78, 38, 3),
(79, 39, 1),
(80, 39, 3),
(81, 39, 10),
(82, 40, 1),
(83, 40, 3),
(84, 40, 10),
(85, 41, 3),
(86, 41, 4),
(87, 42, 1),
(88, 42, 7),
(89, 42, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`collection_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `collection_vinyl`
--
ALTER TABLE `collection_vinyl`
  ADD PRIMARY KEY (`collection_vinyl_id`),
  ADD UNIQUE KEY `collection_vinyl_vinyl_id_collection_id_unique` (`collection_id`,`vinyl_id`),
  ADD KEY `vinyl_id` (`vinyl_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `like`
--
ALTER TABLE `like`
  ADD PRIMARY KEY (`like_id`),
  ADD KEY `collection_id` (`collection_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `collection_id` (`collection_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`song_id`),
  ADD KEY `vinyl_id` (`vinyl_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username_2` (`username`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- Indexes for table `vinyl`
--
ALTER TABLE `vinyl`
  ADD PRIMARY KEY (`vinyl_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `vinyl_genre`
--
ALTER TABLE `vinyl_genre`
  ADD PRIMARY KEY (`vinyl_genre_id`),
  ADD UNIQUE KEY `vinyl_genre_vinyl_id_genre_id_unique` (`vinyl_id`,`genre_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `collection_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `collection_vinyl`
--
ALTER TABLE `collection_vinyl`
  MODIFY `collection_vinyl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `like`
--
ALTER TABLE `like`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `song`
--
ALTER TABLE `song`
  MODIFY `song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vinyl`
--
ALTER TABLE `vinyl`
  MODIFY `vinyl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `vinyl_genre`
--
ALTER TABLE `vinyl_genre`
  MODIFY `vinyl_genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `collection`
--
ALTER TABLE `collection`
  ADD CONSTRAINT `collection_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `collection_vinyl`
--
ALTER TABLE `collection_vinyl`
  ADD CONSTRAINT `collection_vinyl_ibfk_3` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`collection_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `collection_vinyl_ibfk_4` FOREIGN KEY (`vinyl_id`) REFERENCES `vinyl` (`vinyl_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `like`
--
ALTER TABLE `like`
  ADD CONSTRAINT `like_ibfk_3` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`collection_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `like_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_3` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`collection_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `song_ibfk_1` FOREIGN KEY (`vinyl_id`) REFERENCES `vinyl` (`vinyl_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vinyl`
--
ALTER TABLE `vinyl`
  ADD CONSTRAINT `vinyl_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vinyl_genre`
--
ALTER TABLE `vinyl_genre`
  ADD CONSTRAINT `vinyl_genre_ibfk_3` FOREIGN KEY (`vinyl_id`) REFERENCES `vinyl` (`vinyl_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vinyl_genre_ibfk_4` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
