-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2022 at 03:57 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `articleName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `articleAuthor` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creationDate` date DEFAULT NULL,
  `categoryName` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `articleContent` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`articleName`, `articleAuthor`, `creationDate`, `categoryName`, `articleContent`) VALUES
('Ameliorated zero defect orchestration', 'Brand', '2022-09-03', 'Entertainment', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\r\n\r\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\r\n\r\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.'),
('Assimilated clear-thinking matrices', 'Brand', '2022-09-12', 'Entertainment', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\r\n\r\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\r\n\r\nSed ante. Vivamus tortor. Duis mattis egestas metus.'),
('Automated mobile interface', 'Glenn', '2022-09-12', 'Entertainment', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\r\n\r\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\r\n\r\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\r\n\r\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\r\n\r\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.'),
('Cross-group system-worthy alliance', 'Glenn', '2022-09-11', 'Finance', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\r\n\r\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\r\n\r\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.'),
('Customer-focused optimizing moratorium', 'Humberto', '2022-09-19', 'Finance', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\r\n\r\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\r\n\r\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\r\n\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
('Expanded maximized hardware', 'Humberto', '2022-09-18', 'Finance', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.\r\n\r\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\r\n\r\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.'),
('Face to face analyzing structure', 'Darryl', '2022-09-09', 'Music', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\r\n\r\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\r\n\r\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\r\n\r\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.'),
('Persevering full-range artificial intelligence', 'Yank', '2022-09-06', 'Music', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\r\n\r\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\r\n\r\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\r\n\r\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\r\n\r\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.'),
('Profit-focused multi-tasking ability', 'Yank', '2022-09-07', 'Politics', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.\r\n\r\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\r\n\r\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\r\n\r\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\r\n\r\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.'),
('Programmable disintermediate access', 'Josephina', '2022-09-03', 'Politics', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n\r\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\r\n\r\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\r\n\r\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.'),
('Public-key 24 hour instruction set', 'Josephina', '2022-09-19', 'Politics', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\r\n\r\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.'),
('Re-contextualized zero administration protocol', 'Cart', '2022-09-14', 'Politics', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\r\n\r\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\r\n\r\nIn congue. Etiam justo. Etiam pretium iaculis justo.\r\n\r\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.'),
('Switchable non-volatile synergy', 'Lek', '2022-09-06', 'Sport', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.\r\n\r\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.'),
('Synchronised secondary circuit', 'Pepillo', '2022-09-16', 'Sport', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\r\n\r\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\r\n\r\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\r\n\r\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\r\n\r\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.'),
('Team-oriented stable Graphical User Interface', 'Phillip', '2022-09-08', 'Sport', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\r\n\r\nSed ante. Vivamus tortor. Duis mattis egestas metus.\r\n\r\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\r\n\r\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\r\n\r\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.'),
('Triple-buffered systemic adapter', 'Alisha', '2022-09-03', 'Sport', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\r\n\r\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\r\n\r\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\r\n\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
('Upgradable analyzing focus group', 'Rashiv', '2022-09-15', 'Entertainment', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\r\n\r\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.'),
('User-centric contextually-based synergy', 'Rashiv', '2022-09-15', 'Entertainment', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\r\n\r\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\r\n\r\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.'),
('User-friendly stable complexity', '	\nAmbur', '2022-09-10', 'Politics', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\r\n\r\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\r\n\r\nSed ante. Vivamus tortor. Duis mattis egestas metus.\r\n\r\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.'),
('Virtual even-keeled installation', 'Erwéi', '2022-09-18', 'Politics', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\r\n\r\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\r\n\r\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryName` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryName`) VALUES
('Entertainment'),
('Finance'),
('Music'),
('Politics'),
('Sport');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `commentId` int(11) NOT NULL,
  `firstName` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentDate` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentContent` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `articleName` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorised` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`commentId`, `firstName`, `surname`, `commentDate`, `commentContent`, `articleName`, `authorised`, `email`) VALUES
(1, 'Brand', 'Seedhouse', '9/19/2022', '\"Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\"', 'Ameliorated zero defect orchestration', 'Y', 'aseedhouse3@jugem.jp'),
(2, 'Glenn', 'Tuson', '9/11/2022', '\"Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\"', 'Assimilated clear-thinking matrices', 'Y', 'btusond@ucsd.edu'),
(3, 'Humberto', 'Cadney', '9/22/2022', '\"Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\"', 'Automated mobile interface', 'Y', 'ccadney5@fema.gov'),
(4, 'Darryl', 'Andreolli', '9/18/2022', '\"Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\"', 'Cross-group system-worthy alliance', 'Y', 'fandreollic@japanpost.jp'),
(5, 'Yank', 'Simms', '9/9/2022', '\"Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\"', 'Customer-focused optimizing moratorium', 'Y', 'fsimms4@bigcartel.com'),
(6, 'Josephina', 'Meighan', '9/10/2022', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Expanded maximized hardware', 'Y', 'gmeighana@skype.com'),
(7, 'Cart', 'Grundey', '9/20/2022', '\"Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\"', 'Face to face analyzing structure', 'Y', 'lgrundeyb@issuu.com'),
(8, 'Lek', 'Harnell', '9/13/2022', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'Persevering full-range artificial intelligenc', 'Y', 'lharnell1@virginia.edu'),
(9, 'Pepillo', 'Rowbrey', '9/21/2022', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'Profit-focused multi-tasking ability', 'Y', 'lrowbrey8@chronoengine.com'),
(10, 'Phillip', 'Steiner', '9/13/2022', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'Programmable disintermediate access', 'Y', 'nsteiner7@mozilla.org'),
(11, 'Alisha', 'Claw', '9/12/2022', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'Public-key 24 hour instruction set', 'Y', 'pclawe@ftc.gov'),
(12, 'Rashiv', 'Shrestha', '9/4/2022', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'Re-contextualized zero administration protoco', 'Y', 'rashiv@gmail.com'),
(13, 'Nellie', 'Gerrens', '9/22/2022', '\"Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\"', 'Switchable non-volatile synergy', 'Y', 'rgerrens6@ucsd.edu'),
(14, 'Ambur', 'Crackett', '9/3/2022', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'Synchronised secondary circuit', 'Y', 'scrackett9@purevolume.com'),
(15, 'Molly', 'Doberer', '9/6/2022', '\"Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\"', 'Team-oriented stable Graphical User Interface', 'Y', 'sdoberer2@taobao.com'),
(16, 'Torrin', 'Jarratt', '9/20/2022', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'Triple-buffered systemic adapter', 'Y', 'tjarratt0@123-reg.co.uk'),
(17, 'Brand', 'Seedhouse', '9/19/2022', '\"Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\"', 'Upgradable analyzing focus group', 'Y', 'aseedhouse3@jugem.jp'),
(18, 'Glenn', 'Tuson', '9/9/2022', '\"Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\"', 'User-centric contextually-based synergy', 'Y', 'btusond@ucsd.edu'),
(19, 'Humberto', 'Cadney', '9/12/2022', '\"Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\"', 'User-friendly stable complexity', 'Y', 'ccadney5@fema.gov'),
(20, 'Darryl', 'Andreolli', '9/18/2022', 'Fusce consequat. Nulla nisl. Nunc nisl.', 'Virtual even-keeled installation', 'Y', 'fandreollic@japanpost.jp'),
(21, 'Yank', 'Simms', '9/7/2022', '\"Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\"', 'Ameliorated zero defect orchestration', 'Y', 'fsimms4@bigcartel.com'),
(22, 'Josephina', 'Meighan', '9/16/2022', '\"Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\"', 'Assimilated clear-thinking matrices', 'Y', 'gmeighana@skype.com'),
(23, 'Cart', 'Grundey', '9/16/2022', '\"Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\"', 'Automated mobile interface', 'Y', 'lgrundeyb@issuu.com'),
(24, 'Lek', 'Harnell', '9/9/2022', '\"In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\"', 'Cross-group system-worthy alliance', 'Y', 'lharnell1@virginia.edu'),
(25, 'Pepillo', 'Rowbrey', '9/14/2022', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'Customer-focused optimizing moratorium', 'Y', 'lrowbrey8@chronoengine.com'),
(26, 'Phillip', 'Steiner', '9/20/2022', '\"Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\"', 'Expanded maximized hardware', 'Y', 'nsteiner7@mozilla.org'),
(27, 'Alisha', 'Claw', '9/17/2022', '\"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\"', 'Face to face analyzing structure', 'Y', 'pclawe@ftc.gov'),
(28, 'Rashiv', 'Shrestha', '9/12/2022', '\"Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\"', 'Persevering full-range artificial intelligenc', 'Y', 'rashiv@gmail.com'),
(29, 'Nellie', 'Gerrens', '9/13/2022', '\"Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\"', 'Profit-focused multi-tasking ability', 'Y', 'rgerrens6@ucsd.edu'),
(30, 'Ambur', 'Crackett', '9/17/2022', 'Fusce consequat. Nulla nisl. Nunc nisl.', 'Programmable disintermediate access', 'Y', 'scrackett9@purevolume.com'),
(31, 'Molly', 'Doberer', '9/17/2022', '\"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\"', 'Public-key 24 hour instruction set', 'Y', 'sdoberer2@taobao.com'),
(32, 'Torrin', 'Jarratt', '9/15/2022', '\"Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\"', 'Re-contextualized zero administration protoco', 'Y', 'tjarratt0@123-reg.co.uk'),
(33, 'Brand', 'Seedhouse', '9/16/2022', '\"Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\"', 'Switchable non-volatile synergy', 'Y', 'aseedhouse3@jugem.jp'),
(34, 'Glenn', 'Tuson', '9/5/2022', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'Synchronised secondary circuit', 'Y', 'btusond@ucsd.edu'),
(35, 'Humberto', 'Cadney', '9/2/2022', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'Team-oriented stable Graphical User Interface', 'Y', 'ccadney5@fema.gov'),
(36, 'Darryl', 'Andreolli', '9/3/2022', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'Triple-buffered systemic adapter', 'Y', 'fandreollic@japanpost.jp'),
(37, 'Yank', 'Simms', '9/10/2022', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'Upgradable analyzing focus group', 'Y', 'fsimms4@bigcartel.com'),
(38, 'Josephina', 'Meighan', '9/20/2022', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'User-centric contextually-based synergy', 'Y', 'gmeighana@skype.com'),
(39, 'Cart', 'Grundey', '9/15/2022', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'User-friendly stable complexity', 'Y', 'lgrundeyb@issuu.com'),
(40, 'Lek', 'Harnell', '9/10/2022', '\"Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\"', 'Virtual even-keeled installation', 'Y', 'lharnell1@virginia.edu'),
(41, 'Pepillo', 'Rowbrey', '9/19/2022', '\"In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\"', 'Ameliorated zero defect orchestration', 'Y', 'lrowbrey8@chronoengine.com'),
(42, 'Phillip', 'Steiner', '9/19/2022', '\"Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\"', 'Assimilated clear-thinking matrices', 'Y', 'nsteiner7@mozilla.org'),
(43, 'Alisha', 'Claw', '9/5/2022', '\"In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\"', 'Automated mobile interface', 'Y', 'pclawe@ftc.gov'),
(44, 'Rashiv', 'Shrestha', '9/5/2022', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'Cross-group system-worthy alliance', 'Y', 'rashiv@gmail.com'),
(45, 'Nellie', 'Gerrens', '9/19/2022', '\"Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\"', 'Customer-focused optimizing moratorium', 'Y', 'rgerrens6@ucsd.edu'),
(46, 'Ambur', 'Crackett', '9/19/2022', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Expanded maximized hardware', 'Y', 'scrackett9@purevolume.com'),
(47, 'Molly', 'Doberer', '9/14/2022', '\"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\"', 'Face to face analyzing structure', 'Y', 'sdoberer2@taobao.com'),
(48, 'Torrin', 'Jarratt', '9/18/2022', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'Persevering full-range artificial intelligenc', 'Y', 'tjarratt0@123-reg.co.uk'),
(49, 'Brand', 'Seedhouse', '9/15/2022', '\"Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\"', 'Profit-focused multi-tasking ability', 'Y', 'aseedhouse3@jugem.jp'),
(50, 'Glenn', 'Tuson', '9/2/2022', '\"Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\"', 'Programmable disintermediate access', 'Y', 'btusond@ucsd.edu'),
(51, 'Humberto', 'Cadney', '9/19/2022', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'Public-key 24 hour instruction set', 'Y', 'ccadney5@fema.gov'),
(52, 'Darryl', 'Andreolli', '9/11/2022', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'Re-contextualized zero administration protoco', 'Y', 'fandreollic@japanpost.jp'),
(53, 'Yank', 'Simms', '9/22/2022', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 'Switchable non-volatile synergy', 'Y', 'fsimms4@bigcartel.com'),
(54, 'Josephina', 'Meighan', '9/18/2022', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'Synchronised secondary circuit', 'Y', 'gmeighana@skype.com'),
(55, 'Cart', 'Grundey', '9/9/2022', '\"Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\"', 'Team-oriented stable Graphical User Interface', 'Y', 'lgrundeyb@issuu.com'),
(56, 'Lek', 'Harnell', '9/10/2022', '\"In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\"', 'Triple-buffered systemic adapter', 'Y', 'lharnell1@virginia.edu'),
(57, 'Pepillo', 'Rowbrey', '9/20/2022', '\"Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\"', 'Upgradable analyzing focus group', 'Y', 'lrowbrey8@chronoengine.com'),
(58, 'Phillip', 'Steiner', '9/13/2022', '\"In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\"', 'User-centric contextually-based synergy', 'Y', 'nsteiner7@mozilla.org'),
(59, 'Alisha', 'Claw', '9/21/2022', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'User-friendly stable complexity', 'Y', 'pclawe@ftc.gov'),
(60, 'Rashiv', 'Shrestha', '9/13/2022', '\"Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\"', 'Virtual even-keeled installation', 'Y', 'rashiv@gmail.com'),
(61, 'Nellie', 'Gerrens', '9/12/2022', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Ameliorated zero defect orchestration', 'Y', 'rgerrens6@ucsd.edu'),
(62, 'Ambur', 'Crackett', '9/4/2022', '\"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\"', 'Assimilated clear-thinking matrices', 'Y', 'scrackett9@purevolume.com'),
(63, 'Molly', 'Doberer', '9/22/2022', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'Automated mobile interface', 'Y', 'sdoberer2@taobao.com'),
(64, 'Torrin', 'Jarratt', '9/3/2022', '\"Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\"', 'Cross-group system-worthy alliance', 'Y', 'tjarratt0@123-reg.co.uk');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `FirstName` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Surname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Email` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`FirstName`, `Surname`, `DOB`, `Email`, `Password`) VALUES
('Brand', 'Seedhouse', '2001-12-21', 'aseedhouse3@jugem.jp', '3e9c5b80d80feca91857e54e247033bdb251f342'),
('Glenn', 'Tuson', '2001-11-13', 'btusond@ucsd.edu', '3e9c5b80d80feca91857e54e247033bdb251f342'),
('Humberto', 'Cadney', '2002-08-03', 'ccadney5@fema.gov', '3e9c5b80d80feca91857e54e247033bdb251f342'),
('Darryl', 'Andreolli', '2002-09-20', 'fandreollic@japanpost.jp', '3e9c5b80d80feca91857e54e247033bdb251f342'),
('Yank', 'Simms', '2001-11-19', 'fsimms4@bigcartel.com', '3e9c5b80d80feca91857e54e247033bdb251f342'),
('Josephina', 'Meighan', '2002-06-30', 'gmeighana@skype.com', '3e9c5b80d80feca91857e54e247033bdb251f342'),
('Cart', 'Grundey', '2002-01-06', 'lgrundeyb@issuu.com', '3e9c5b80d80feca91857e54e247033bdb251f342'),
('Lek', 'Harnell', '2001-12-05', 'lharnell1@virginia.edu', '3e9c5b80d80feca91857e54e247033bdb251f342'),
('Pepillo', 'Rowbrey', '2002-01-25', 'lrowbrey8@chronoengine.com', '3e9c5b80d80feca91857e54e247033bdb251f342'),
('Phillip', 'Steiner', '2002-07-07', 'nsteiner7@mozilla.org', '3e9c5b80d80feca91857e54e247033bdb251f342'),
('Alisha', 'Claw', '2002-03-26', 'pclawe@ftc.gov', '3e9c5b80d80feca91857e54e247033bdb251f342'),
('Rashiv', 'Shrestha', '2003-01-03', 'rashiv@gmail.com', '3e9c5b80d80feca91857e54e247033bdb251f342'),
('Nellie', 'Gerrens', '2002-04-14', 'rgerrens6@ucsd.edu', '3e9c5b80d80feca91857e54e247033bdb251f342'),
('Ambur', 'Crackett', '2001-12-16', 'scrackett9@purevolume.com', '3e9c5b80d80feca91857e54e247033bdb251f342'),
('Molly', 'Doberer', '2002-01-24', 'sdoberer2@taobao.com', '3e9c5b80d80feca91857e54e247033bdb251f342'),
('Torrin', 'Jarratt', '2002-06-11', 'tjarratt0@123-reg.co.uk', '3e9c5b80d80feca91857e54e247033bdb251f342');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`articleName`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryName`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`commentId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
