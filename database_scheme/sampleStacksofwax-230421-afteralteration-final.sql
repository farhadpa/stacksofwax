-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 21, 2023 at 07:32 PM
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
-- Database: `sampleStacksofwax`
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
  `user_id` int(11) NOT NULL,
  `likes_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`collection_id`, `collection_name`, `collection_desc`, `image`, `user_id`, `likes_count`) VALUES
(1, 'info-mediaries', 'pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus', 'http://dummyimage.com/233x100.png/5fa2dd/ffffff', 5, 0),
(2, 'Programmable', 'nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros', 'http://dummyimage.com/192x100.png/5fa2dd/ffffff', 7, 0),
(3, 'Adaptive', 'mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus', 'http://dummyimage.com/151x100.png/dddddd/000000', 5, 0),
(4, 'hybrid', 'eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo', 'http://dummyimage.com/247x100.png/5fa2dd/ffffff', 2, 0),
(5, 'eco-centric', 'nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum', 'http://dummyimage.com/220x100.png/dddddd/000000', 9, 0),
(6, 'ability', 'tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus', 'http://dummyimage.com/130x100.png/dddddd/000000', 16, 0),
(7, 'object-oriented', 'felis ut at dolor quis odio consequat varius integer ac leo pellentesque', 'http://dummyimage.com/188x100.png/5fa2dd/ffffff', 6, 0),
(8, 'local', 'pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem', 'http://dummyimage.com/112x100.png/ff4444/ffffff', 14, 0),
(9, 'full-range', 'mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', 'http://dummyimage.com/198x100.png/cc0000/ffffff', 6, 0),
(10, 'mission-critical', 'dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet', 'http://dummyimage.com/147x100.png/dddddd/000000', 10, 0),
(11, 'context-sensitive', 'augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante', 'http://dummyimage.com/217x100.png/cc0000/ffffff', 1, 0),
(12, 'Re-engineered', 'eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis', 'http://dummyimage.com/240x100.png/ff4444/ffffff', 7, 0),
(13, 'alliance', 'vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis', 'http://dummyimage.com/158x100.png/5fa2dd/ffffff', 8, 0),
(14, 'standardization', 'ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra', 'http://dummyimage.com/117x100.png/cc0000/ffffff', 1, 0),
(15, 'client-driven', 'pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est', 'http://dummyimage.com/242x100.png/dddddd/000000', 12, 0),
(16, 'system engine', 'augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula', 'http://dummyimage.com/184x100.png/cc0000/ffffff', 8, 0),
(17, 'Diverse', 'augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices', 'http://dummyimage.com/153x100.png/5fa2dd/ffffff', 16, 0),
(18, 'executive', 'etiam justo etiam pretium iaculis justo in hac habitasse platea', 'http://dummyimage.com/117x100.png/ff4444/ffffff', 13, 0),
(19, 'Ergonomic', 'dolor morbi vel lectus in quam fringilla rhoncus mauris enim', 'http://dummyimage.com/192x100.png/dddddd/000000', 1, 0),
(20, 'instruction set', 'justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat', 'http://dummyimage.com/192x100.png/cc0000/ffffff', 11, 0),
(21, 'moderator', 'nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis', 'http://dummyimage.com/171x100.png/dddddd/000000', 1, 0),
(22, 'data-warehouse', 'feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam', 'http://dummyimage.com/112x100.png/ff4444/ffffff', 13, 0),
(23, 'mobile', 'commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris', 'http://dummyimage.com/217x100.png/cc0000/ffffff', 3, 0),
(24, 'coherent', 'tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec', 'http://dummyimage.com/100x100.png/dddddd/000000', 4, 0),
(25, 'extranet', 'luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse', 'http://dummyimage.com/147x100.png/dddddd/000000', 8, 0),
(26, 'productivity', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat', 'http://dummyimage.com/111x100.png/ff4444/ffffff', 17, 0),
(27, 'directional', 'pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse', 'http://dummyimage.com/245x100.png/cc0000/ffffff', 15, 0),
(28, 'capacity', 'pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero', 'http://dummyimage.com/119x100.png/cc0000/ffffff', 10, 0),
(29, 'matrices', 'dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat', 'http://dummyimage.com/117x100.png/cc0000/ffffff', 14, 0),
(30, 'leading edge', 'primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam', 'http://dummyimage.com/124x100.png/ff4444/ffffff', 6, 0),
(31, 'approach', 'mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', 'http://dummyimage.com/105x100.png/5fa2dd/ffffff', 13, 0),
(32, 'process improvement', 'hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat', 'http://dummyimage.com/177x100.png/ff4444/ffffff', 16, 0),
(33, 'archive', 'pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit', 'http://dummyimage.com/154x100.png/cc0000/ffffff', 13, 0),
(34, 'local area network', 'vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed', 'http://dummyimage.com/193x100.png/ff4444/ffffff', 6, 0),
(35, 'Team-oriented', 'at lorem integer tincidunt ante vel ipsum praesent blandit lacinia', 'http://dummyimage.com/150x100.png/dddddd/000000', 7, 0),
(36, 'architecture', 'libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas', 'http://dummyimage.com/105x100.png/5fa2dd/ffffff', 2, 0),
(37, 'Inverse', 'justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue', 'http://dummyimage.com/152x100.png/cc0000/ffffff', 9, 0),
(38, 'knowledge user', 'at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo', 'http://dummyimage.com/103x100.png/cc0000/ffffff', 19, 0),
(39, 'Robust', 'tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum', 'http://dummyimage.com/137x100.png/cc0000/ffffff', 10, 0),
(40, 'emulation', 'at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia', 'http://dummyimage.com/245x100.png/ff4444/ffffff', 19, 0),
(41, 'actuating', 'augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida', 'http://dummyimage.com/129x100.png/cc0000/ffffff', 11, 0),
(42, 'conglomeration', 'at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula', 'http://dummyimage.com/236x100.png/5fa2dd/ffffff', 11, 0),
(43, 'User-centric', 'turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc', 'http://dummyimage.com/242x100.png/dddddd/000000', 12, 0),
(44, 'customer loyalty', 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse', 'http://dummyimage.com/218x100.png/5fa2dd/ffffff', 4, 0),
(45, 'Monitored', 'mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at', 'http://dummyimage.com/187x100.png/dddddd/000000', 1, 0),
(46, 'uniform', 'pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras', 'http://dummyimage.com/199x100.png/dddddd/000000', 13, 0),
(47, 'benchmark', 'placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula', 'http://dummyimage.com/155x100.png/ff4444/ffffff', 12, 0),
(48, 'Innovative', 'rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at', 'http://dummyimage.com/170x100.png/ff4444/ffffff', 4, 0),
(49, 'model', 'convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel', 'http://dummyimage.com/106x100.png/5fa2dd/ffffff', 15, 0),
(50, 'Virtual', 'id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 'http://dummyimage.com/249x100.png/dddddd/000000', 7, 0),
(51, 'Fully-configurable', 'a libero nam dui proin leo odio porttitor id consequat in consequat', 'http://dummyimage.com/241x100.png/dddddd/000000', 4, 0),
(52, 'bifurcated', 'elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac', 'http://dummyimage.com/245x100.png/5fa2dd/ffffff', 10, 0),
(53, 'Profit-focused', 'mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec', 'http://dummyimage.com/207x100.png/5fa2dd/ffffff', 17, 0),
(54, 'Progressive', 'ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec', 'http://dummyimage.com/223x100.png/dddddd/000000', 19, 0),
(55, 'internet solution', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', 'http://dummyimage.com/175x100.png/ff4444/ffffff', 10, 0),
(56, 'task-force', 'suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis', 'http://dummyimage.com/227x100.png/ff4444/ffffff', 12, 0),
(57, 'analyzing', 'amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in', 'http://dummyimage.com/123x100.png/ff4444/ffffff', 18, 0),
(58, 'Re-contextualized', 'et tempus semper est quam pharetra magna ac consequat metus sapien', 'http://dummyimage.com/247x100.png/5fa2dd/ffffff', 1, 0),
(59, 'optimal', 'curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus', 'http://dummyimage.com/185x100.png/dddddd/000000', 15, 0),
(60, 'hub', 'elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in', 'http://dummyimage.com/179x100.png/5fa2dd/ffffff', 8, 0),
(61, 'testCollection', 'some description for this test collection', '/url to the image', 29, 0),
(62, 'dsfdsf', 'fasdfdasf', 'public/uploads/1682022254371--ArcoLinux_2023-02-02_12-27-22.png', 32, 0),
(63, 'dfsfadsfd', 'dfadfafdfaf', 'uploads/1682022587154--ArcoLinux_2023-02-02_12-27-22.png', 32, 0),
(64, 'adfafdafasf', 'adsfadfadfafdasfadfadf', '1682022646794--ArcoLinux_2023-02-02_12-27-22.png', 32, 0),
(65, 'adfadfadfadf', 'dasfadfadfadfa', './1682022867041--ArcoLinux_2023-02-02_12-27-22.png', 32, 0),
(66, 'dafsfafaafafafadsf', 'adfadfadsfadfadsfadfafa', '/uploads1682023281999--ArcoLinux_2023-02-02_12-27-22.png', 32, 0),
(67, 'adfsssssssssssssssssssssssssssssssssss', 'fasdddddddddddddddddddddddddddddddddddd', '/uploads/1682023345859--ArcoLinux_2023-02-02_12-27-22.png', 32, 0),
(68, 'sasmple collection', 'some collections are just sample no usecase', '/uploads/1682023463327--index-e.jpg', 32, 0),
(69, 'dsfdsf', 'fadsfafd', '/uploads/1682023672294--react-tree.png', 32, 0);

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
(11, 2, 25),
(12, 2, 55),
(123, 2, 63),
(57, 2, 97),
(70, 3, 47),
(129, 3, 58),
(5, 3, 96),
(3, 3, 100),
(106, 4, 61),
(82, 5, 16),
(110, 5, 38),
(111, 5, 62),
(46, 5, 78),
(62, 6, 56),
(47, 7, 8),
(124, 7, 30),
(23, 7, 33),
(140, 9, 15),
(68, 9, 60),
(91, 9, 61),
(28, 9, 86),
(75, 10, 9),
(95, 10, 23),
(119, 10, 88),
(50, 11, 49),
(100, 12, 1),
(93, 12, 6),
(10, 12, 37),
(7, 12, 58),
(101, 13, 7),
(122, 13, 17),
(30, 13, 37),
(65, 13, 38),
(120, 13, 59),
(37, 13, 71),
(38, 13, 97),
(55, 14, 54),
(31, 14, 59),
(88, 14, 63),
(138, 14, 74),
(79, 15, 57),
(69, 15, 58),
(71, 15, 81),
(67, 17, 23),
(130, 17, 96),
(146, 18, 5),
(49, 18, 11),
(98, 18, 29),
(128, 19, 88),
(94, 19, 95),
(4, 20, 34),
(147, 20, 65),
(19, 20, 76),
(60, 21, 15),
(53, 21, 18),
(86, 21, 24),
(64, 21, 29),
(114, 21, 62),
(97, 22, 30),
(48, 23, 33),
(133, 23, 56),
(24, 24, 11),
(72, 24, 50),
(113, 25, 10),
(63, 25, 16),
(143, 25, 22),
(44, 25, 50),
(56, 25, 77),
(59, 26, 23),
(108, 26, 49),
(1, 27, 72),
(126, 27, 88),
(135, 28, 62),
(107, 28, 90),
(99, 29, 40),
(66, 30, 20),
(34, 31, 34),
(87, 32, 23),
(18, 33, 10),
(117, 33, 22),
(131, 34, 42),
(78, 34, 52),
(22, 34, 72),
(112, 35, 6),
(115, 35, 25),
(14, 35, 49),
(25, 36, 2),
(15, 36, 22),
(8, 36, 48),
(45, 36, 52),
(6, 37, 32),
(104, 37, 90),
(29, 37, 95),
(61, 37, 98),
(84, 38, 97),
(17, 39, 1),
(20, 39, 17),
(36, 39, 25),
(105, 39, 28),
(116, 39, 35),
(13, 39, 61),
(83, 39, 88),
(51, 40, 70),
(132, 41, 14),
(52, 41, 41),
(89, 41, 58),
(90, 41, 77),
(33, 41, 96),
(137, 43, 2),
(41, 43, 10),
(42, 43, 80),
(136, 44, 20),
(142, 45, 16),
(40, 45, 92),
(139, 46, 34),
(127, 48, 6),
(121, 48, 49),
(81, 49, 75),
(26, 49, 81),
(58, 50, 5),
(80, 50, 24),
(102, 50, 99),
(27, 51, 12),
(73, 51, 36),
(54, 51, 85),
(103, 52, 20),
(134, 52, 38),
(35, 52, 41),
(21, 52, 73),
(9, 53, 79),
(145, 54, 21),
(141, 54, 38),
(74, 55, 54),
(16, 56, 21),
(39, 56, 35),
(109, 56, 90),
(118, 57, 49),
(125, 58, 35),
(76, 58, 91),
(2, 58, 97),
(85, 59, 13),
(43, 59, 43),
(144, 59, 49),
(92, 59, 65),
(77, 59, 71),
(32, 59, 82),
(148, 61, 108),
(149, 61, 109);

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
(1, 'Rock'),
(2, 'Pop'),
(3, 'Country'),
(4, 'Traditional'),
(5, 'Classic');

-- --------------------------------------------------------

--
-- Table structure for table `like`
--

CREATE TABLE `like` (
  `like_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(1, 'tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi', 55, 13),
(2, 'sed magna at nunc commodo placerat praesent blandit nam nulla integer pede', 60, 8),
(3, 'tincidunt lacus at velit vivamus vel nulla eget eros elementum', 3, 9),
(4, 'varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci', 45, 1),
(5, 'sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut', 2, 18),
(6, 'erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer', 35, 20),
(7, 'nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget', 17, 18),
(8, 'praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula', 54, 4),
(9, 'in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis', 35, 18),
(10, 'in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum', 53, 14),
(11, 'ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque', 20, 16),
(12, 'sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper', 7, 1),
(13, 'in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis', 33, 4),
(14, 'donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend', 57, 15),
(15, 'nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula', 58, 4),
(16, 'aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero', 4, 14),
(17, 'diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat', 60, 15),
(18, 'ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent', 16, 1),
(19, 'proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in', 16, 4),
(20, 'magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer', 60, 6),
(21, 'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede', 31, 7),
(22, 'cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras', 53, 19),
(23, 'lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet', 55, 1),
(24, 'libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit', 23, 7),
(25, 'leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis', 17, 6),
(26, 'ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam', 43, 8),
(27, 'sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus', 7, 16),
(28, 'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus', 29, 16),
(29, 'cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit', 18, 13),
(30, 'lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra', 25, 2),
(31, 'eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec', 25, 19),
(32, 'pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed', 43, 11),
(33, 'lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit', 21, 4),
(34, 'amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui', 29, 7),
(35, 'ullamcorper augue a suscipit nulla elit ac nulla sed vel', 53, 5),
(36, 'quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed', 18, 18),
(37, 'dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh', 53, 2),
(38, 'justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem', 11, 4),
(39, 'nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh', 28, 5),
(40, 'nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa', 58, 10),
(41, 'integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla', 20, 13),
(42, 'interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus', 41, 3),
(43, 'morbi non lectus aliquam sit amet diam in magna bibendum imperdiet', 21, 2),
(44, 'id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in', 33, 16),
(45, 'amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis', 34, 6),
(46, 'velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam', 36, 2),
(47, 'consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo', 57, 8),
(48, 'vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam', 34, 20),
(49, 'dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper', 12, 9),
(50, 'at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum', 26, 17),
(51, 'orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel', 58, 4),
(52, 'ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque', 33, 3),
(53, 'id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et', 42, 9),
(54, 'hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer', 33, 19),
(55, 'donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna', 43, 11),
(56, 'pellentesque eget nunc donec quis orci eget orci vehicula condimentum', 32, 15),
(57, 'tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl', 27, 10),
(58, 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 55, 7),
(59, 'condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales', 57, 7),
(60, 'ut erat curabitur gravida nisi at nibh in hac habitasse platea', 32, 2),
(61, 'This is some test review created ', 5, 32),
(62, 'some other review ', 5, 32),
(63, 'mazan reviewing', 5, 32),
(64, 'review added just now\r\n', 6, 32),
(65, 'asdfadfafdafad', 62, 32),
(66, 'soo,medfad;\'lfdslfkjasd;okrliaerwufcpoizxkjmc;lasdkfjs', 68, 32);

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
(1, 'Up-sized', 'vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi', 'Susi Ridhole', 8),
(2, 'projection', 'eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia', 'Edd Feedome', 47),
(3, 'architecture', 'nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla', 'Anabella Foyster', 11),
(4, 'solution', 'tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in', 'Krispin Gittins', 14),
(5, 'Integrated', 'integer non velit donec diam neque vestibulum eget vulputate ut', 'Abeu Semour', 35),
(6, 'hybrid', 'nulla suscipit ligula in lacus curabitur at ipsum ac tellus', 'Standford Rouke', 34),
(7, 'national', 'cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis', 'Viviyan Biglin', 66),
(8, 'transitional', 'nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros', 'Henrietta Ribchester', 26),
(9, 'budgetary management', 'eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum', 'Richy Bahlmann', 32),
(10, 'challenge', 'eu mi nulla ac enim in tempor turpis nec euismod scelerisque', 'Cazzie Leppard', 80),
(11, 'complexity', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi', 'Lee Gosnoll', 6),
(12, 'systematic', 'amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam', 'Rosemarie Runnicles', 90),
(13, 'Inverse', 'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris', 'Edmon Brugsma', 30),
(14, '4th generation', 'tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in', 'Kristina Huntley', 80),
(15, 'projection', 'justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis', 'Sally Oakley', 11),
(16, 'Cloned', 'lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed', 'Daisi Laybourne', 14),
(17, 'Decentralized', 'aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst', 'Stevie Checklin', 35),
(18, 'Team-oriented', 'faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit', 'Julita Locke', 33),
(19, 'local', 'convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel', 'Jillana Gauvain', 59),
(20, 'circuit', 'suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in', 'Kipp Grewe', 96),
(21, 'internet solution', 'mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel', 'Merrily Rawe', 4),
(22, 'strategy', 'habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id', 'Billi Radish', 29),
(23, 'optimizing', 'est quam pharetra magna ac consequat metus sapien ut nunc', 'Bathsheba Christopherson', 35),
(24, 'disintermediate', 'feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id', 'Pepito Burgess', 84),
(25, 'database', 'rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit', 'Adriana Lambeth', 18),
(26, 'content-based', 'ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet', 'Bee Collard', 37),
(27, 'Organic', 'pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero', 'Barbie Trevorrow', 32),
(28, 'explicit', 'in est risus auctor sed tristique in tempus sit amet sem fusce consequat', 'Ellissa Sherwen', 46),
(29, 'eco-centric', 'ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus', 'Kipper Lincke', 33),
(30, 'optimizing', 'et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat', 'Jordana Spinnace', 30),
(31, 'model', 'tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi', 'Grady Wheatcroft', 47),
(32, 'Assimilated', 'interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis', 'Natasha Bigg', 44),
(33, 'Business-focused', 'quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea', 'Anselm Meagh', 79),
(34, 'actuating', 'fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi', 'Abramo Arnaudet', 63),
(35, 'Enterprise-wide', 'justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie', 'Dennie Putman', 78),
(36, 'intranet', 'magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', 'Leontyne Sergison', 1),
(37, 'Up-sized', 'orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet', 'Lesya Barford', 68),
(38, 'concept', 'sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam', 'Lucio Mosdell', 37),
(39, 'Organized', 'mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel', 'Tarrance Ludlamme', 81),
(40, 'intranet', 'tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante', 'Riannon Lawford', 93),
(41, 'content-based', 'lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada', 'Asia Daily', 22),
(42, 'background', 'odio porttitor id consequat in consequat ut nulla sed accumsan felis ut', 'Brena Fagge', 31),
(43, 'contextually-based', 'dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum', 'Elana Ramme', 89),
(44, 'Business-focused', 'etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius', 'Esme Westgate', 49),
(45, 'leverage', 'eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in', 'Inge Hebble', 81),
(46, 'Digitized', 'tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus', 'Clo Housin', 54),
(47, 'directional', 'in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis', 'Lanna Archell', 29),
(48, 'value-added', 'tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis', 'Hedi Abrahim', 80),
(49, 'secondary', 'blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', 'Linell Kenealy', 12),
(50, 'groupware', 'penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel', 'Trina Negus', 21),
(51, 'asynchronous', 'dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor', 'Rolf Bastin', 67),
(52, 'global', 'odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum', 'Georgetta Allix', 75),
(53, 'static', 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean', 'Artemis Henricsson', 70),
(54, 'Inverse', 'lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at', 'Reube Tissier', 24),
(55, 'Open-architected', 'lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien', 'Gwendolin Edds', 11),
(56, 'frame', 'odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas', 'Marissa Rabson', 82),
(57, 'complexity', 'sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat', 'Corny Brimacombe', 78),
(58, 'budgetary management', 'primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio', 'Miller Bellay', 43),
(59, 'Managed', 'in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus', 'Almeda Narducci', 81),
(60, 'help-desk', 'venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut', 'Melly Huddleston', 73),
(61, 'global', 'hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque', 'Norma Gorse', 23),
(62, 'De-engineered', 'turpis donec posuere metus vitae ipsum aliquam non mauris morbi', 'Herschel Wessing', 97),
(63, 'hub', 'dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam', 'Jerrie Hazelden', 15),
(64, 'knowledge base', 'laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue', 'Shanon Dobsons', 85),
(65, 'Open-architected', 'ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id', 'Gris Gosse', 79),
(66, 'Organic', 'erat curabitur gravida nisi at nibh in hac habitasse platea dictumst', 'Torr Skyner', 38),
(67, 'Self-enabling', 'molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque', 'Nan Losel', 51),
(68, 'time-frame', 'morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet', 'Joline Rearden', 43),
(69, 'next generation', 'mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum', 'Diane Croshaw', 60),
(70, 'user-facing', 'eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor', 'Bartholomew Sutworth', 69),
(71, 'data-warehouse', 'sed interdum venenatis turpis enim blandit mi in porttitor pede', 'Mickie Thickin', 66),
(72, 'needs-based', 'duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac', 'Maure Quilliam', 23),
(73, 'transitional', 'mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit', 'Raynor Geater', 16),
(74, 'Profit-focused', 'tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus', 'Astrix Aleksankin', 12),
(75, 'Virtual', 'pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis', 'Randolph Defraine', 12),
(76, 'multi-state', 'pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla', 'Shay Brass', 23),
(77, 'encompassing', 'maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum', 'Cullie Cowitz', 78),
(78, 'Optional', 'ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque', 'Zea Philcox', 19),
(79, 'reciprocal', 'nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra', 'Zeke Steven', 60),
(80, 'knowledge base', 'sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam', 'Gwenora Duckinfield', 43),
(81, 'Object-based', 'rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor', 'Vince Wurst', 34),
(82, 'local area network', 'nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum', 'Felipa Wellings', 42),
(83, 'Organized', 'platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi', 'Bellina Goff', 7),
(84, 'systemic', 'id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci', 'Corie Camilleri', 6),
(85, 'challenge', 'massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam', 'Coraline Tonner', 12),
(86, 'artificial intelligence', 'amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper', 'Fara Loomis', 40),
(87, 'Upgradable', 'semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor', 'Edan Priestland', 62),
(88, 'Adaptive', 'eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing', 'Gris Book', 91),
(89, 'empowering', 'tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in', 'Kira Moncrefe', 70),
(90, 'circuit', 'mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi', 'Randie Kilgrew', 77),
(91, 'artificial intelligence', 'amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', 'Cass Hainsworth', 72),
(92, 'software', 'pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a', 'Demetrius Hutchens', 28),
(93, 'hub', 'nulla suscipit ligula in lacus curabitur at ipsum ac tellus', 'Harris Fucher', 25),
(94, 'client-server', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla', 'Karlie Matthensen', 42),
(95, 'utilisation', 'interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam', 'Arie Remington', 32),
(96, 'modular', 'turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec', 'Buddy Marshland', 34),
(97, 'intangible', 'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris', 'Olimpia Catterill', 75),
(98, 'workforce', 'non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non', 'Cyril Bris', 72),
(99, 'dynamic', 'pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat', 'Skippy Alger', 36),
(100, 'Self-enabling', 'nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper', 'Frank Bleasdale', 62),
(101, 'utilisation', 'scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc', 'Sybyl Burgoine', 2),
(102, 'help-desk', 'est quam pharetra magna ac consequat metus sapien ut nunc', 'Haskell Ravelus', 22),
(103, 'Organic', 'suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus', 'Batholomew Duggary', 6),
(104, 'zero defect', 'erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in', 'Sydelle Canwell', 62),
(105, 'Distributed', 'nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac', 'Analise Dowden', 93),
(106, 'system-worthy', 'praesent blandit nam nulla integer pede justo lacinia eget tincidunt', 'Gerome Futcher', 76),
(107, 'Profound', 'sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis', 'Zarla Sheeres', 3),
(108, 'Secured', 'pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus', 'Joseito Holworth', 86),
(109, 'secured line', 'in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est', 'Aleta Burburough', 18),
(110, 'User-centric', 'libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse', 'Dmitri Stiffkins', 35),
(111, 'disintermediate', 'urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo', 'Sharleen Challicum', 18),
(112, 'Re-contextualized', 'ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate', 'Barbra Shwalbe', 84),
(113, 'upward-trending', 'non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem', 'Demetrius Sharpe', 67),
(114, 'Object-based', 'at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget', 'Rurik McNea', 81),
(115, 'directional', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices', 'Honey Caskey', 5),
(116, 'reciprocal', 'sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo', 'Gaby Trebble', 81),
(117, 'Visionary', 'nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed', 'Louisette Moretto', 89),
(118, 'Innovative', 'sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed', 'Duke Dumpleton', 1),
(119, 'encompassing', 'donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce', 'Wade Berth', 39),
(120, 'discrete', 'lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras', 'Mirilla Payley', 90),
(121, 'encoding', 'morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar', 'Molly Pollie', 33),
(122, 'budgetary management', 'odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim', 'Claude Oldridge', 97),
(123, 'function', 'in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor', 'Cleopatra Rakes', 82),
(124, 'middleware', 'turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis', 'Jaquelyn Bartlosz', 20),
(125, 'installation', 'integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien', 'Udell Lorrimer', 55),
(126, 'discrete', 'hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent', 'Willard Hurlin', 12),
(127, 'knowledge user', 'pede justo eu massa donec dapibus duis at velit eu est congue', 'Martin Pochet', 96),
(128, 'function', 'vel sem sed sagittis nam congue risus semper porta volutpat quam', 'Alexandre Sannes', 44),
(129, 'directional', 'ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna', 'Freddy Torbet', 29),
(130, 'non-volatile', 'duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a', 'Britt Mosley', 15),
(131, 'framework', 'hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem', 'Bent Yakolev', 87),
(132, 'neural-net', 'odio odio elementum eu interdum eu tincidunt in leo maecenas', 'Roberto Campbell-Dunlop', 87),
(133, 'Open-source', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan', 'Aloise Whitmarsh', 76),
(134, 'monitoring', 'pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa', 'Tabbi Horsfield', 19),
(135, 'Virtual', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis', 'Brandyn Arrell', 66),
(136, 'static', 'pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta', 'Burr Mapston', 73),
(137, 'background', 'cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a', 'Horatius Rennix', 67),
(138, 'value-added', 'donec ut dolor morbi vel lectus in quam fringilla rhoncus', 'Nicolina MacHarg', 17),
(139, 'Fundamental', 'massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est', 'Ervin Creigan', 82),
(140, 'needs-based', 'porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum', 'Abra Nicholes', 57),
(141, 'User-centric', 'quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec', 'Jefferson Crosston', 42),
(142, 'well-modulated', 'gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi', 'Ebony Daglish', 35),
(143, 'fault-tolerant', 'eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui', 'Gawain Hearty', 49),
(144, 'encryption', 'in libero ut massa volutpat convallis morbi odio odio elementum eu', 'Amanda Lathwood', 40),
(145, 'encryption', 'turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien', 'Irving Domenici', 53),
(146, 'real-time', 'vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla', 'Lothario Aggs', 45),
(147, 'grid-enabled', 'nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis', 'Kenon Shutler', 67),
(148, 'transitional', 'at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a', 'Suki Sebring', 96),
(149, 'needs-based', 'tempus vivamus in felis eu sapien cursus vestibulum proin eu mi', 'Claresta Marner', 82),
(150, 'hierarchy', 'id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris', 'Gene Commin', 19),
(151, 'Down-sized', 'justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing', 'Toni Tidder', 51),
(152, '3rd generation', 'ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non', 'Montague Bridgstock', 97),
(153, 'static', 'nec dui luctus rutrum nulla tellus in sagittis dui vel', 'Chastity Flemmich', 32),
(154, 'systematic', 'in porttitor pede justo eu massa donec dapibus duis at velit eu est', 'Flora Dulson', 68),
(155, 'global', 'nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', 'Artie Prenty', 44),
(156, 'bifurcated', 'sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi', 'Caspar Tomasi', 15),
(157, 'pricing structure', 'ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse', 'Aida Bateson', 44),
(158, 'Graphical User Interface', 'id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada', 'Town Paszak', 72),
(159, 'intermediate', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio', 'Kayla Palomba', 30),
(160, 'Visionary', 'eu est congue elementum in hac habitasse platea dictumst morbi', 'Eugenius Millership', 33),
(161, 'Automated', 'pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna', 'Joe Gosse', 73),
(162, 'extranet', 'turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget', 'Almeta Goble', 65),
(163, 'Programmable', 'ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci', 'Chaddie Dahill', 7),
(164, 'Right-sized', 'in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis', 'Camille Iacopo', 38),
(165, 'hub', 'justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id', 'Brockie Dockrey', 70),
(166, 'Enterprise-wide', 'eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet', 'Bradford Aiers', 37),
(167, 'Customer-focused', 'dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor', 'Kristien Bennough', 71),
(168, 'fresh-thinking', 'massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio', 'Mariellen Grewer', 45),
(169, 'Graphic Interface', 'orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo', 'Ambrose Wheway', 12),
(170, 'Reverse-engineered', 'amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in', 'Cristie Gavan', 26),
(171, 'forecast', 'egestas metus aenean fermentum donec ut mauris eget massa tempor convallis', 'Doy Jzhakov', 92),
(172, 'capability', 'leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non', 'Valida Duny', 82),
(173, 'Focused', 'semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam', 'Alexis Fraulo', 34),
(174, 'neutral', 'sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam', 'Hildegaard Southerton', 22),
(175, 'encryption', 'erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis', 'Roxanne Donnersberg', 10),
(176, 'hub', 'phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie', 'Adriaens Ogelsby', 81),
(177, 'migration', 'cursus vestibulum proin eu mi nulla ac enim in tempor turpis', 'Shepherd Mor', 76),
(178, 'ability', 'rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id', 'Margalit Lobell', 37),
(179, 'Front-line', 'viverra diam vitae quam suspendisse potenti nullam porttitor lacus at', 'Lucretia Laverick', 54),
(180, '24 hour', 'magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque', 'Minnie Bernardo', 60),
(181, 'Enterprise-wide', 'semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci', 'Tilda Clausewitz', 36),
(182, 'orchestration', 'ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel', 'Bidget Backwell', 1),
(183, 'interactive', 'vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero', 'Gregoire Shale', 94),
(184, 'executive', 'ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien', 'Leticia Laimable', 70),
(185, 'Visionary', 'porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac', 'Aurel Eblein', 66),
(186, 'Managed', 'odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla', 'Candace Giabucci', 18),
(187, 'benchmark', 'vulputate ut ultrices vel augue vestibulum ante ipsum primis in', 'Rosaline Morcom', 91),
(188, 'Future-proofed', 'leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui', 'Cole Yates', 3),
(189, 'superstructure', 'vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 'Abbot Sterre', 39),
(190, 'secondary', 'in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan', 'Georg Skipper', 87),
(191, 'Monitored', 'magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis', 'Maddi Webby', 16),
(192, 'Automated', 'tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc', 'Caril Bridgett', 21),
(193, 'policy', 'lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat', 'Vernon Charpling', 53),
(194, 'budgetary management', 'maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas', 'Evin Gooding', 4),
(195, 'hardware', 'posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam', 'Borg Edgett', 60),
(196, 'Realigned', 'iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla', 'Freemon Phittiplace', 86),
(197, 'client-driven', 'in tempus sit amet sem fusce consequat nulla nisl nunc', 'Margaretta Wilde', 51),
(198, 'intranet', 'dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis', 'Howey Yansons', 97),
(199, 'Triple-buffered', 'ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas', 'Spencer Mee', 31),
(200, 'solution-oriented', 'sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit', 'Elston Ainslee', 64);

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
(1, 'dmullineux0', 'XuYjNMKfx3', 'dmullineux0@prnewswire.com', 'Donelle', 'Mullineux'),
(2, 'nsieve1', 'hQYoYhBRm5', 'nsieve1@ftc.gov', 'Nadine', 'Sieve'),
(3, 'tgeorgeon2', 'uD0p3b', 'tgeorgeon2@psu.edu', 'Trstram', 'Georgeon'),
(4, 'kscala3', 'eviMdxVZy', 'kscala3@sourceforge.net', 'Kari', 'Scala'),
(5, 'bklimko4', '8o6BrYm9', 'bklimko4@mac.com', 'Berri', 'Klimko'),
(6, 'ghappel5', '1vHt6fuXY4', 'ghappel5@un.org', 'Graeme', 'Happel'),
(7, 'tcrunkhorn6', '3xof9GKqVrh', 'tcrunkhorn6@whitehouse.gov', 'Torre', 'Crunkhorn'),
(8, 'ayerrell7', 'oAjLRvzU4vM', 'ayerrell7@upenn.edu', 'Amelina', 'Yerrell'),
(9, 'lilchuk8', 'Dd2bq8W', 'lilchuk8@symantec.com', 'Leandra', 'Ilchuk'),
(10, 'efliege9', '4KzoB4F8KiLV', 'efliege9@bing.com', 'Edgardo', 'Fliege'),
(11, 'ehandlina', '00Xn0k6', 'ehandlina@disqus.com', 'Evy', 'Handlin'),
(12, 'tdifranceshcib', 'oeGUG7bv', 'tdifranceshcib@hao123.com', 'Tanitansy', 'Di Franceshci'),
(13, 'sample', '$2b$10$gW6BVdW6PXXW4eEi9F2CQOSHAj8J2Fayio4.lSuvVO6stwvKakUnu', 'sforthc@fda.gov', 'Shell', 'Forth'),
(14, 'eadamekd', 'RmNJ61Vl9qN', 'eadamekd@ask.com', 'Edsel', 'Adamek'),
(15, 'dspataroe', 'vD50Xh', 'dspataroe@canalblog.com', 'Deana', 'Spataro'),
(16, 'jsigertf', '0etwxzqm8nGK', 'jsigertf@gmpg.org', 'Jayme', 'Sigert'),
(17, 'bnokeg', 'HuL28U', 'bnokeg@dyndns.org', 'Bendicty', 'Noke'),
(18, 'adassindaleh', 'nZWpkVLK6yKC', 'adassindaleh@army.mil', 'Abey', 'Dassindale'),
(19, 'obelchampi', 'ljYpUS2fa', 'obelchampi@i2i.jp', 'Ogden', 'Belchamp'),
(20, 'zmaiorj', 'fZsSuASTL', 'zmaiorj@fda.gov', 'Zelda', 'Maior'),
(27, 'parham15', '$2b$10$gW6BVdW6PXXW4eEi9F2CQOSHAj8J2Fayio4.lSuvVO6stwvKakUnu', 'parham15@gmail.com', 'some_first_name', 'some_last_name'),
(28, 'parham16', '$2b$10$vbCsnwzCJzZCURhf4HfvmepZ7ANab8f/9vWMvYoJun7OEubBjJIge', 'parham16@gmail.com', 'parham', 'parhami'),
(29, 'parand', '$2b$10$bcE2Z5fRJsJqD6o6iRXI1.1w450eDQtKyCX2eMkEF3rLAQMeHonYC', 'parand@gmail.com', 'some_first_name', 'some_last_name'),
(30, 'mazan', '$2b$10$fhwXV.6OKh8cbTTzoCUj2.A4mwH5UfPraUnweHiZ69RxJ2nOxI4DS', 'mazan@gmail.com', 'mazan', 'mazan'),
(31, 'new user ', '$2b$10$RP5u6YAkrb9MoX0nspLgfu0oArGfLeIzNul/k3Ur/.ibPfjT3Qnea', 'new@user.com', 'new', 'user'),
(32, 'farhad', '$2b$10$IWgpP5PQiC2zB3pMYNFofOY9aNFLvY.Q6k8Nt1UKp94o3fdT3wEh.', 'farhad@farhad.com', 'farhad', 'farhad');

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
(1, 'middleware', 'lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat', 'http://dummyimage.com/135x100.png/cc0000/ffffff', 7),
(2, 'Ameliorated', 'semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin', 'http://dummyimage.com/202x100.png/dddddd/000000', 2),
(3, 'hardware', 'sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique', 'http://dummyimage.com/216x100.png/cc0000/ffffff', 19),
(4, 'web-enabled', 'at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis', 'http://dummyimage.com/157x100.png/ff4444/ffffff', 1),
(5, '5th generation', 'phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing', 'http://dummyimage.com/190x100.png/cc0000/ffffff', 7),
(6, 'circuit', 'ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla', 'http://dummyimage.com/133x100.png/ff4444/ffffff', 4),
(7, 'Synchronised', 'lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium', 'http://dummyimage.com/192x100.png/ff4444/ffffff', 8),
(8, 'strategy', 'vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien', 'http://dummyimage.com/132x100.png/dddddd/000000', 6),
(9, 'core', 'aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris', 'http://dummyimage.com/169x100.png/dddddd/000000', 10),
(10, 'explicit', 'magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget', 'http://dummyimage.com/119x100.png/cc0000/ffffff', 8),
(11, 'Enhanced', 'velit donec diam neque vestibulum eget vulputate ut ultrices vel', 'http://dummyimage.com/130x100.png/5fa2dd/ffffff', 4),
(12, 'radical', 'ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit', 'http://dummyimage.com/239x100.png/dddddd/000000', 4),
(13, 'system-worthy', 'hac habitasse platea dictumst etiam faucibus cursus urna ut tellus', 'http://dummyimage.com/146x100.png/cc0000/ffffff', 15),
(14, 'discrete', 'nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus', 'http://dummyimage.com/226x100.png/dddddd/000000', 11),
(15, 'website', 'egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu', 'http://dummyimage.com/245x100.png/5fa2dd/ffffff', 1),
(16, 'User-centric', 'ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit', 'http://dummyimage.com/196x100.png/cc0000/ffffff', 1),
(17, 'demand-driven', 'porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum', 'http://dummyimage.com/183x100.png/cc0000/ffffff', 8),
(18, 'knowledge base', 'ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis', 'http://dummyimage.com/239x100.png/cc0000/ffffff', 1),
(19, 'Team-oriented', 'ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer', 'http://dummyimage.com/158x100.png/cc0000/ffffff', 9),
(20, 'time-frame', 'ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet', 'http://dummyimage.com/177x100.png/cc0000/ffffff', 4),
(21, 'flexibility', 'tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum', 'http://dummyimage.com/210x100.png/dddddd/000000', 12),
(22, 'analyzing', 'ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit', 'http://dummyimage.com/201x100.png/5fa2dd/ffffff', 2),
(23, 'circuit', 'duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor', 'http://dummyimage.com/191x100.png/cc0000/ffffff', 10),
(24, 'local', 'tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat', 'http://dummyimage.com/240x100.png/cc0000/ffffff', 1),
(25, 'Public-key', 'eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien', 'http://dummyimage.com/129x100.png/5fa2dd/ffffff', 7),
(26, 'Progressive', 'vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim', 'http://dummyimage.com/133x100.png/5fa2dd/ffffff', 2),
(27, 'neural-net', 'vehicula consequat morbi a ipsum integer a nibh in quis justo', 'http://dummyimage.com/144x100.png/dddddd/000000', 2),
(28, 'Proactive', 'varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel', 'http://dummyimage.com/145x100.png/ff4444/ffffff', 10),
(29, 'encompassing', 'proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in', 'http://dummyimage.com/104x100.png/ff4444/ffffff', 1),
(30, 'Advanced', 'potenti cras in purus eu magna vulputate luctus cum sociis natoque', 'http://dummyimage.com/127x100.png/ff4444/ffffff', 6),
(31, 'Multi-tiered', 'id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in', 'http://dummyimage.com/207x100.png/5fa2dd/ffffff', 5),
(32, 'Switchable', 'suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis', 'http://dummyimage.com/177x100.png/cc0000/ffffff', 9),
(33, 'well-modulated', 'nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat', 'http://dummyimage.com/148x100.png/5fa2dd/ffffff', 3),
(34, 'needs-based', 'velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum', 'http://dummyimage.com/236x100.png/dddddd/000000', 11),
(35, 'core', 'accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi', 'http://dummyimage.com/170x100.png/dddddd/000000', 1),
(36, 'Synergistic', 'eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at', 'http://dummyimage.com/186x100.png/ff4444/ffffff', 4),
(37, 'knowledge base', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut', 'http://dummyimage.com/198x100.png/cc0000/ffffff', 7),
(38, 'conglomeration', 'duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget', 'http://dummyimage.com/128x100.png/ff4444/ffffff', 8),
(39, 'implementation', 'venenatis lacinia aenean sit amet justo morbi ut odio cras', 'http://dummyimage.com/125x100.png/cc0000/ffffff', 16),
(40, 'Managed', 'non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci', 'http://dummyimage.com/174x100.png/5fa2dd/ffffff', 14),
(41, 'migration', 'at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget', 'http://dummyimage.com/175x100.png/dddddd/000000', 10),
(42, 'non-volatile', 'platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi', 'http://dummyimage.com/127x100.png/cc0000/ffffff', 6),
(43, 'neural-net', 'elementum nullam varius nulla facilisi cras non velit nec nisi', 'http://dummyimage.com/221x100.png/ff4444/ffffff', 15),
(44, 'capacity', 'tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean', 'http://dummyimage.com/157x100.png/cc0000/ffffff', 5),
(45, 'help-desk', 'felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed', 'http://dummyimage.com/156x100.png/ff4444/ffffff', 17),
(46, 'Future-proofed', 'ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur', 'http://dummyimage.com/184x100.png/dddddd/000000', 8),
(47, 'Sharable', 'pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus', 'http://dummyimage.com/143x100.png/dddddd/000000', 5),
(48, 'extranet', 'amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in', 'http://dummyimage.com/182x100.png/ff4444/ffffff', 2),
(49, 'Digitized', 'orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer', 'http://dummyimage.com/228x100.png/cc0000/ffffff', 1),
(50, 'Self-enabling', 'dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur', 'http://dummyimage.com/250x100.png/ff4444/ffffff', 4),
(51, 'transitional', 'pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla', 'http://dummyimage.com/177x100.png/dddddd/000000', 9),
(52, 'Upgradable', 'interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat', 'http://dummyimage.com/244x100.png/5fa2dd/ffffff', 2),
(53, 'leading edge', 'imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit', 'http://dummyimage.com/135x100.png/ff4444/ffffff', 2),
(54, 'Monitored', 'vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget', 'http://dummyimage.com/160x100.png/5fa2dd/ffffff', 1),
(55, 'analyzer', 'etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat', 'http://dummyimage.com/228x100.png/5fa2dd/ffffff', 7),
(56, 'intermediate', 'erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt', 'http://dummyimage.com/177x100.png/5fa2dd/ffffff', 3),
(57, '24 hour', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla', 'http://dummyimage.com/150x100.png/dddddd/000000', 12),
(58, 'Integrated', 'ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo', 'http://dummyimage.com/205x100.png/ff4444/ffffff', 5),
(59, 'Graphic Interface', 'justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id', 'http://dummyimage.com/190x100.png/dddddd/000000', 1),
(60, 'contextually-based', 'ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo', 'http://dummyimage.com/103x100.png/cc0000/ffffff', 6),
(61, 'core', 'nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est', 'http://dummyimage.com/126x100.png/ff4444/ffffff', 2),
(62, 'Persevering', 'nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum', 'http://dummyimage.com/213x100.png/cc0000/ffffff', 1),
(63, 'Compatible', 'elementum in hac habitasse platea dictumst morbi vestibulum velit id', 'http://dummyimage.com/207x100.png/ff4444/ffffff', 1),
(64, 'systematic', 'dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices', 'http://dummyimage.com/222x100.png/5fa2dd/ffffff', 20),
(65, 'Adaptive', 'donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis', 'http://dummyimage.com/188x100.png/dddddd/000000', 11),
(66, 'matrix', 'in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl', 'http://dummyimage.com/101x100.png/dddddd/000000', 16),
(67, 'Universal', 'aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci', 'http://dummyimage.com/240x100.png/5fa2dd/ffffff', 17),
(68, 'coherent', 'ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit', 'http://dummyimage.com/153x100.png/dddddd/000000', 17),
(69, 'product', 'ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac', 'http://dummyimage.com/196x100.png/5fa2dd/ffffff', 13),
(70, 'leading edge', 'vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris', 'http://dummyimage.com/141x100.png/dddddd/000000', 19),
(71, 'Profit-focused', 'tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc', 'http://dummyimage.com/191x100.png/dddddd/000000', 8),
(72, 'migration', 'posuere felis sed lacus morbi sem mauris laoreet ut rhoncus', 'http://dummyimage.com/216x100.png/dddddd/000000', 6),
(73, 'empowering', 'in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices', 'http://dummyimage.com/196x100.png/dddddd/000000', 10),
(74, 'Polarised', 'eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi', 'http://dummyimage.com/144x100.png/dddddd/000000', 1),
(75, 'dedicated', 'tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat', 'http://dummyimage.com/161x100.png/ff4444/ffffff', 15),
(76, 'conglomeration', 'lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse', 'http://dummyimage.com/160x100.png/dddddd/000000', 11),
(77, 'frame', 'lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit', 'http://dummyimage.com/234x100.png/ff4444/ffffff', 8),
(78, 'Ameliorated', 'sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim', 'http://dummyimage.com/173x100.png/dddddd/000000', 9),
(79, 'zero administration', 'nulla tempus vivamus in felis eu sapien cursus vestibulum proin', 'http://dummyimage.com/222x100.png/5fa2dd/ffffff', 17),
(80, 'forecast', 'ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget', 'http://dummyimage.com/144x100.png/ff4444/ffffff', 12),
(81, 'definition', 'nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero', 'http://dummyimage.com/198x100.png/ff4444/ffffff', 12),
(82, 'benchmark', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat', 'http://dummyimage.com/132x100.png/cc0000/ffffff', 15),
(83, 'application', 'blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et', 'http://dummyimage.com/195x100.png/cc0000/ffffff', 14),
(84, 'heuristic', 'odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut', 'http://dummyimage.com/139x100.png/ff4444/ffffff', 9),
(85, 'algorithm', 'pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a', 'http://dummyimage.com/193x100.png/ff4444/ffffff', 4),
(86, 'benchmark', 'odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac', 'http://dummyimage.com/220x100.png/dddddd/000000', 6),
(87, 'implementation', 'proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor', 'http://dummyimage.com/239x100.png/ff4444/ffffff', 5),
(88, 'Expanded', 'et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien', 'http://dummyimage.com/187x100.png/5fa2dd/ffffff', 1),
(89, 'upward-trending', 'phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate', 'http://dummyimage.com/200x100.png/cc0000/ffffff', 16),
(90, 'groupware', 'cras in purus eu magna vulputate luctus cum sociis natoque', 'http://dummyimage.com/189x100.png/dddddd/000000', 9),
(91, 'solution', 'ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate', 'http://dummyimage.com/133x100.png/ff4444/ffffff', 1),
(92, 'zero tolerance', 'congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget', 'http://dummyimage.com/249x100.png/ff4444/ffffff', 1),
(93, 'Networked', 'vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa', 'http://dummyimage.com/247x100.png/dddddd/000000', 4),
(94, 'dedicated', 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus', 'http://dummyimage.com/168x100.png/ff4444/ffffff', 11),
(95, 'paradigm', 'libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse', 'http://dummyimage.com/115x100.png/cc0000/ffffff', 1),
(96, 'methodical', 'mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt', 'http://dummyimage.com/169x100.png/5fa2dd/ffffff', 5),
(97, 'demand-driven', 'tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in', 'http://dummyimage.com/120x100.png/5fa2dd/ffffff', 1),
(98, 'executive', 'sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et', 'http://dummyimage.com/180x100.png/5fa2dd/ffffff', 9),
(99, 'complexity', 'mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend', 'http://dummyimage.com/127x100.png/ff4444/ffffff', 7),
(100, 'fault-tolerant', 'duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti', 'http://dummyimage.com/116x100.png/ff4444/ffffff', 5),
(103, 'testVinyl', 'some description for testVinyl', '/path to the image', 4),
(104, 'testVinyl', 'some description for testVinyl', '/path to the image', 4),
(105, 'testVinyl', 'some description for testVinyl', '/path to the image', 9),
(106, 'testVinyl', 'some description for testVinyl', '/path to the image', 14),
(107, 'testVinyl', 'some description for testVinyl', '/path to the image', 20),
(108, 'testVinyl', 'some description for testVinyl', '/path to the image', 29),
(109, 'testVinyl', 'some description for testVinyl', '/path to the image', 29);

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
(52, 1, 4),
(53, 2, 3),
(54, 3, 5),
(55, 4, 5),
(56, 5, 2),
(57, 6, 5),
(58, 7, 1),
(59, 8, 2),
(60, 9, 4),
(61, 10, 2),
(62, 11, 1),
(63, 12, 3),
(64, 13, 3),
(65, 14, 1),
(66, 15, 1),
(67, 16, 4),
(68, 17, 1),
(69, 18, 3),
(70, 19, 3),
(71, 20, 2),
(72, 21, 3),
(73, 22, 4),
(74, 23, 4),
(75, 24, 3),
(76, 25, 1),
(77, 26, 2),
(78, 27, 3),
(79, 28, 5),
(80, 29, 4),
(81, 30, 1),
(82, 31, 5),
(83, 32, 4),
(84, 33, 2),
(85, 34, 1),
(86, 35, 3),
(87, 36, 3),
(88, 37, 2),
(89, 38, 5),
(90, 39, 1),
(91, 40, 4),
(92, 41, 1),
(93, 42, 5),
(94, 43, 1),
(95, 44, 2),
(96, 45, 5),
(97, 46, 2),
(98, 47, 4),
(99, 48, 2),
(100, 49, 1),
(101, 50, 1),
(102, 51, 4),
(103, 52, 1),
(104, 53, 1),
(105, 54, 2),
(106, 55, 5),
(107, 56, 5),
(108, 57, 3),
(109, 58, 1),
(110, 59, 4),
(111, 60, 3),
(112, 61, 1),
(113, 62, 1),
(114, 63, 5),
(115, 64, 3),
(116, 65, 2),
(117, 66, 3),
(118, 67, 2),
(119, 68, 4),
(120, 69, 5),
(121, 70, 5),
(122, 71, 2),
(123, 72, 5),
(124, 73, 5),
(125, 74, 2),
(126, 75, 1),
(127, 76, 5),
(128, 77, 4),
(129, 78, 3),
(130, 79, 1),
(131, 80, 2),
(132, 81, 2),
(133, 82, 1),
(134, 83, 1),
(135, 84, 4),
(136, 85, 3),
(137, 86, 3),
(138, 87, 4),
(139, 88, 4),
(140, 89, 2),
(141, 90, 1),
(142, 91, 3),
(143, 92, 4),
(144, 93, 5),
(145, 94, 1),
(146, 95, 5),
(147, 96, 2),
(148, 97, 2),
(149, 98, 3),
(150, 99, 4),
(151, 100, 4);

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
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `username_3` (`username`),
  ADD UNIQUE KEY `email_3` (`email`),
  ADD UNIQUE KEY `username_4` (`username`),
  ADD UNIQUE KEY `email_4` (`email`),
  ADD UNIQUE KEY `username_5` (`username`),
  ADD UNIQUE KEY `email_5` (`email`),
  ADD UNIQUE KEY `username_6` (`username`),
  ADD UNIQUE KEY `email_6` (`email`),
  ADD UNIQUE KEY `username_7` (`username`),
  ADD UNIQUE KEY `email_7` (`email`),
  ADD UNIQUE KEY `username_8` (`username`),
  ADD UNIQUE KEY `email_8` (`email`),
  ADD UNIQUE KEY `username_9` (`username`),
  ADD UNIQUE KEY `email_9` (`email`);

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
  MODIFY `collection_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `collection_vinyl`
--
ALTER TABLE `collection_vinyl`
  MODIFY `collection_vinyl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `like`
--
ALTER TABLE `like`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `song`
--
ALTER TABLE `song`
  MODIFY `song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `vinyl`
--
ALTER TABLE `vinyl`
  MODIFY `vinyl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `vinyl_genre`
--
ALTER TABLE `vinyl_genre`
  MODIFY `vinyl_genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

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
  ADD CONSTRAINT `collection_vinyl_ibfk_13` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`collection_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `collection_vinyl_ibfk_14` FOREIGN KEY (`vinyl_id`) REFERENCES `vinyl` (`vinyl_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `like`
--
ALTER TABLE `like`
  ADD CONSTRAINT `like_ibfk_1` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`collection_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `like_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_5` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`collection_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_ibfk_6` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `song_ibfk_1` FOREIGN KEY (`vinyl_id`) REFERENCES `vinyl` (`vinyl_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `vinyl`
--
ALTER TABLE `vinyl`
  ADD CONSTRAINT `vinyl_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vinyl_genre`
--
ALTER TABLE `vinyl_genre`
  ADD CONSTRAINT `vinyl_genre_ibfk_13` FOREIGN KEY (`vinyl_id`) REFERENCES `vinyl` (`vinyl_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vinyl_genre_ibfk_14` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
