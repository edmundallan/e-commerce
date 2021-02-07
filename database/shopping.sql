-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 07, 2021 at 08:32 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'undria', '44b06ab0e3b6fa92b7a1cbc49b29bbf6', '2017-01-24 16:21:18', '22-01-2021 08:50:37 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(4, 'ACCESSORIES', 'Electronic Products', '2017-01-24 19:19:32', '21-01-2021 10:29:43 PM'),
(6, 'WOMENS FASHION', 'Fashion dresses tops shoes', '2017-02-20 19:18:52', '27-01-2021 07:07:38 PM'),
(9, 'MENS FASHION ', 'Best mens ware', '2021-01-21 16:57:46', '27-01-2021 07:08:29 PM'),
(10, 'KIDS FASHION', 'Best kids wares', '2021-01-21 16:58:36', '27-01-2021 06:56:05 PM'),
(11, 'Casual shoes', 'Best designer shoes', '2021-01-21 17:01:16', '27-01-2021 05:54:46 PM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(14, 8, '5', 1, '2021-01-22 19:15:55', 'Debit / Credit card', NULL),
(15, 9, '47', 1, '2021-02-04 13:30:00', 'COD', 'in Process');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(9, 15, 'in Process', 'product wil be delivered on sunday', '2021-02-04 13:31:37');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(22, 10, 14, 'Little Misses', 'GUCCI', 100000, 120000, 'pretty and nice looking dress for the little princess<div>size 6 7 8</div><div>hand wash only</div><div>color pink<br><div><br></div></div>', 'download.jpeg', 'download.jpeg', 'download.jpeg', 2000, 'In Stock', '2021-01-24 09:56:14', NULL),
(23, 10, 14, 'The Charming Baby', 'LV', 100000, 120000, 'Size 4 5 6 7<div>color pink</div><div>hand and machine wash</div><div>100% slick&nbsp;</div>', 'download (1).jpeg', 'download (1).jpeg', 'download (1).jpeg', 1000, 'In Stock', '2021-01-24 09:59:48', NULL),
(24, 10, 14, 'Sugar Babies', 'Spreeme', 100000, 120000, '<p class=\"text\" style=\"box-sizing: border-box; line-height: 20px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">pretty and nice looking dress for the little princess</p><div style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">size 6 7 8</div><div style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">hand wash only</div><div style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\">color red</div>', 'download (2).jpeg', 'download (2).jpeg', 'download (2).jpeg', 2000, 'In Stock', '2021-01-24 10:02:26', NULL),
(25, 10, 15, 'little man', 'GUCCI', 150000, 200000, '<font color=\"#545454\" face=\"-apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Oxygen, Ubuntu, Cantarell, Fira Sans, Droid Sans, Helvetica Neue, sans-serif\"><span style=\"font-size: 16px;\">color blue</span></font><div><font color=\"#545454\" face=\"-apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Oxygen, Ubuntu, Cantarell, Fira Sans, Droid Sans, Helvetica Neue, sans-serif\"><span style=\"font-size: 16px;\">size 7 8 9</span></font></div><div><font color=\"#545454\" face=\"-apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Oxygen, Ubuntu, Cantarell, Fira Sans, Droid Sans, Helvetica Neue, sans-serif\"><span style=\"font-size: 16px;\">hand and machine wash</span></font></div><div><font color=\"#545454\" face=\"-apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Oxygen, Ubuntu, Cantarell, Fira Sans, Droid Sans, Helvetica Neue, sans-serif\"><span style=\"font-size: 16px;\">pure cotton</span></font></div>', 'download (10).jpeg', 'download (10).jpeg', 'download (10).jpeg', 3000, 'In Stock', '2021-01-24 10:08:27', NULL),
(26, 10, 15, 'little man', 'Owino ', 90000, 120000, 'color blue.<div>size 7</div><div>hand and machine wash</div>', 'download (8).jpeg', 'download (8).jpeg', 'download (8).jpeg', 2000, 'In Stock', '2021-01-24 10:11:46', NULL),
(27, 10, 15, 'little man', 'undria', 90000, 100000, '<p class=\"text\" style=\"box-sizing: border-box; line-height: 20px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\"><font color=\"#545454\" face=\"-apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Oxygen, Ubuntu, Cantarell, Fira Sans, Droid Sans, Helvetica Neue, sans-serif\" style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 16px;\">color blue</span></font></p><div style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\"><font color=\"#545454\" face=\"-apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Oxygen, Ubuntu, Cantarell, Fira Sans, Droid Sans, Helvetica Neue, sans-serif\" style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 16px;\">size 7 8 9</span></font></div><div style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\"><font color=\"#545454\" face=\"-apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Oxygen, Ubuntu, Cantarell, Fira Sans, Droid Sans, Helvetica Neue, sans-serif\" style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 16px;\">hand and machine wash</span></font></div><div style=\"box-sizing: border-box; color: rgb(102, 102, 102); font-family: Roboto, sans-serif;\"><font color=\"#545454\" face=\"-apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Oxygen, Ubuntu, Cantarell, Fira Sans, Droid Sans, Helvetica Neue, sans-serif\" style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 16px;\">pure cotton</span></font></div>', 'download (12).jpeg', 'download (12).jpeg', 'download (12).jpeg', 1000, 'In Stock', '2021-01-24 10:15:31', NULL),
(28, 10, 17, 'shoes', 'GUCCI', 65000, 70000, 'size 13<div>leather</div><div>black</div>', 'download.jpeg', 'download.jpeg', 'download.jpeg', 2000, 'In Stock', '2021-01-24 10:23:45', NULL),
(29, 11, 18, 'Casual', 'TG', 100000, 120000, '<br>', '1.jpeg', '1.jpeg', '1.jpeg', 1000, 'In Stock', '2021-01-24 18:15:08', NULL),
(30, 11, 18, 'shoes', 'undriagraphics', 100000, 120000, '<br>', 'download.jpeg', 'download.jpeg', 'download.jpeg', 2000, 'In Stock', '2021-01-24 18:16:08', NULL),
(31, 11, 18, 'shoes', 'undriagraphics', 100000, 120000, '<br>', 'download (1).jpeg', 'download (1).jpeg', 'download (1).jpeg', 2000, 'In Stock', '2021-01-24 18:16:47', NULL),
(32, 11, 18, 'shoes', 'undriagraphics', 100000, 120000, '<br>', 'download (2).jpeg', 'download (2).jpeg', 'download (2).jpeg', 3000, 'In Stock', '2021-01-24 18:17:26', NULL),
(33, 11, 18, 'shoes', 'undriagraphics', 100000, 120000, '<br>', 'download (3).jpeg', 'download (3).jpeg', 'download (3).jpeg', 2000, 'In Stock', '2021-01-24 18:18:05', NULL),
(34, 11, 18, 'shoes', 'undriagraphics', 100000, 120000, '<br>', 'download (4).jpeg', 'download (4).jpeg', 'download (4).jpeg', 3000, 'In Stock', '2021-01-24 18:18:38', NULL),
(35, 11, 18, 'shoes', 'undriagraphics', 100000, 120000, '<br>', 'download (5).jpeg', 'download (5).jpeg', 'download (5).jpeg', 3000, 'In Stock', '2021-01-24 18:19:15', NULL),
(36, 11, 18, 'shoes', 'undriagraphics', 100000, 120000, '<br>', 'download (6).jpeg', 'download (6).jpeg', 'download (6).jpeg', 2000, 'In Stock', '2021-01-24 18:19:50', NULL),
(37, 11, 18, 'shoes', 'undriagraphics', 100000, 120000, '<br>', 'download (8).jpeg', 'download (8).jpeg', 'download (8).jpeg', 3000, 'In Stock', '2021-01-24 18:21:26', NULL),
(38, 11, 18, 'shoes', 'undriagraphics', 100000, 120000, '<br>', 'download (11).jpeg', 'download (11).jpeg', 'download (11).jpeg', 3000, 'In Stock', '2021-01-24 18:22:05', NULL),
(39, 11, 18, 'shoes', 'undriagraphics', 100000, 120000, '<br>', 'download (13).jpeg', 'download (13).jpeg', 'download (13).jpeg', 1000, 'In Stock', '2021-01-24 18:22:41', NULL),
(40, 11, 18, 'shoes', 'undriagraphics', 100000, 120000, '<br>', 'download (18).jpeg', 'download (18).jpeg', 'download (18).jpeg', 1000, 'In Stock', '2021-01-24 18:23:12', NULL),
(41, 11, 19, 'shoes', 'undriagraphics', 100000, 120000, '<br>', 'download (10).jpeg', 'download (10).jpeg', 'download (10).jpeg', 1000, 'In Stock', '2021-01-24 18:35:01', NULL),
(42, 10, 16, 'boys shoes', 'LV', 65000, 100000, 'color black<div>size 9</div>', 'download (5).jpeg', 'download (5).jpeg', 'download (5).jpeg', 2000, 'In Stock', '2021-01-27 11:53:17', NULL),
(43, 10, 16, 'boys shoes', 'Spreeme', 90000, 120000, 'black<div>size 7</div>', 'download (14).jpeg', 'download (14).jpeg', 'download (14).jpeg', 3000, 'In Stock', '2021-01-27 12:03:40', NULL),
(44, 10, 16, 'boys shoes', 'GUCCI', 65000, 100000, 'pink<div>size 9</div>', 'download.jpeg', 'download.jpeg', 'download.jpeg', 2000, 'In Stock', '2021-01-27 12:04:48', NULL),
(45, 10, 17, 'girls shoes', 'LV', 65000, 100000, 'size 6', 'download (3).jpeg', 'download (3).jpeg', 'download (3).jpeg', 3000, 'In Stock', '2021-01-27 12:10:03', NULL),
(46, 10, 17, 'girls shoes', 'GUCCI', 65000, 70000, 'color pink<div>size 8</div>', 'download (15).jpeg', 'download (15).jpeg', 'download (15).jpeg', 2000, 'In Stock', '2021-01-27 12:12:06', NULL),
(47, 9, 21, 't-shirt', 'polo', 40000, 45000, 'best pure cotton<div>xl xxl l</div>', 'download.jpeg', 'download.jpeg', 'download.jpeg', 3000, 'In Stock', '2021-01-27 12:32:19', NULL),
(48, 9, 21, 't-shirt', 'undriagraphics', 40000, 70000, 'cotton<div>hand wash only</div>', 'download (17).jpeg', 'download (17).jpeg', 'download (17).jpeg', 2000, 'In Stock', '2021-01-27 12:33:49', NULL),
(49, 9, 21, 't-shirt', 'GUCCI', 40000, 45000, 'black white<div>hand wash only</div>', 'download (1).jpeg', 'download (1).jpeg', 'download (1).jpeg', 3000, 'In Stock', '2021-01-27 12:35:17', NULL),
(50, 9, 21, 'shirt', 'undriagraphics', 90000, 100000, 'long&nbsp;<div>cotton</div>', 'download (2).jpeg', 'download (2).jpeg', 'download (2).jpeg', 2000, 'In Stock', '2021-01-27 12:36:59', NULL),
(51, 9, 22, 'grey pant', 'LV', 40000, 45000, 'cotton', 'download (5).jpeg', 'download (5).jpeg', 'download (5).jpeg', 1000, 'In Stock', '2021-01-27 12:44:25', NULL),
(52, 9, 22, 'pant', 'Owino ', 65000, 70000, 'cotton', 'download (6).jpeg', 'download (6).jpeg', 'download (6).jpeg', 3000, 'In Stock', '2021-01-27 12:46:14', NULL),
(53, 9, 22, 'classy', 'DG', 90000, 100000, 'cool<div>cotton</div>', 'download (7).jpeg', 'download (7).jpeg', 'download (7).jpeg', 3000, 'In Stock', '2021-01-27 12:48:30', NULL),
(54, 6, 27, 'long dress', 'vc', 20000, 250000, 'nice&nbsp;<div>cotton dress</div>', 'download.jpeg', 'download.jpeg', 'download.jpeg', 3000, 'In Stock', '2021-01-27 13:53:35', NULL),
(55, 6, 27, 'dress pnt', 'Owino ', 150000, 200000, 'nice slick', 'download (1).jpeg', 'download (1).jpeg', 'download (1).jpeg', 1000, 'In Stock', '2021-01-27 13:55:07', NULL),
(56, 6, 27, 'gucci gress', 'GUCCI', 100000, 120000, 'designer dress', 'download (2).jpeg', 'download (2).jpeg', 'download (2).jpeg', 3000, 'In Stock', '2021-01-27 13:56:33', NULL),
(57, 6, 27, 'designer dress', 'undriagraphics', 170000, 200000, 'look cool', 'download (3).jpeg', 'download (3).jpeg', 'download (3).jpeg', 3000, 'In Stock', '2021-01-27 13:58:29', NULL),
(58, 6, 27, 'crop top', 'vlt', 40000, 45000, 'nice', 'download (6).jpeg', 'download (6).jpeg', 'download (6).jpeg', 3000, 'In Stock', '2021-01-27 14:00:49', NULL),
(59, 6, 27, 'top', 'undriagraphics', 65000, 70000, 'look cool', 'download (4).jpeg', 'download (4).jpeg', 'download (4).jpeg', 3000, 'In Stock', '2021-01-27 14:01:50', NULL),
(60, 6, 28, 'cool pant', 'undriagraphics', 35000, 45000, 'elegant pant', 'download (9).jpeg', 'download (9).jpeg', 'download (9).jpeg', 2000, 'In Stock', '2021-01-27 14:03:42', NULL),
(61, 6, 28, 'nice pant', 'wet', 65000, 70000, 'look pretty', 'download (7).jpeg', 'download (7).jpeg', 'download (7).jpeg', 3000, 'In Stock', '2021-01-27 14:05:23', NULL),
(62, 6, 29, 'lady shoes', 'tbl', 69000, 70000, 'move with class', 'download (3).jpeg', 'download (3).jpeg', 'download (3).jpeg', 3000, 'In Stock', '2021-01-27 14:09:27', NULL),
(63, 6, 29, 'office lady', 'part', 90000, 100000, 'office lady', 'download (9).jpeg', 'download (9).jpeg', 'download (9).jpeg', 3000, 'In Stock', '2021-01-27 14:11:35', NULL),
(64, 6, 29, 'shoes', 'undriagraphics', 35000, 45000, 'black', 'download (11).jpeg', 'download (11).jpeg', 'download (11).jpeg', 2000, 'In Stock', '2021-01-27 14:14:28', NULL),
(65, 6, 29, 'elegant women', 'undriagraphics', 65000, 70000, 'look pretty', 'download (15).jpeg', 'download (15).jpeg', 'download (15).jpeg', 2000, 'In Stock', '2021-01-27 14:16:03', NULL),
(66, 6, 29, 'skyline shoes', 'LV', 100000, 200000, 'elegant blue', 'download (17).jpeg', 'download (17).jpeg', 'download (17).jpeg', 3000, 'In Stock', '2021-01-27 14:17:59', NULL),
(67, 6, 29, 'designer shoes', 'undriagraphics', 90000, 100000, 'best designer shoes&nbsp;<div>black</div>', 'download (12).jpeg', 'download (12).jpeg', 'download (12).jpeg', 3000, 'In Stock', '2021-01-27 14:23:09', NULL),
(68, 6, 29, 'shoes', 'GUCCI', 65000, 70000, 'move with style', 'download (6).jpeg', 'download (6).jpeg', 'download (6).jpeg', 3000, 'In Stock', '2021-01-27 14:26:26', NULL),
(69, 6, 29, 'ladys shoes', 'LV', 90000, 100000, 'Neve blue', 'download (13).jpeg', 'download (13).jpeg', 'download (13).jpeg', 3000, 'In Stock', '2021-01-27 14:28:44', NULL),
(70, 6, 29, 'fashion shoes', 'DG', 100000, 200000, 'styled', 'download (2).jpeg', 'download (2).jpeg', 'download (2).jpeg', 3000, 'In Stock', '2021-01-27 14:30:56', NULL),
(71, 6, 27, 'crop top', 'undriagraphics', 35000, 45000, 'stay classy', 'download (5).jpeg', 'download (5).jpeg', 'download (5).jpeg', 3000, 'In Stock', '2021-01-27 14:32:54', NULL),
(72, 6, 27, 'girls tops', 'LV', 35000, 45000, 'stay classy', 'download (15).jpeg', 'download (15).jpeg', 'download (15).jpeg', 3000, 'In Stock', '2021-01-27 14:40:39', NULL),
(73, 6, 27, 'girls crop tops', 'GUCCI', 90000, 100000, 'pretty lady', 'download (14).jpeg', 'download (14).jpeg', 'download (14).jpeg', 3000, 'In Stock', '2021-01-27 14:42:06', NULL),
(74, 6, 27, 'top', 'undriagraphics', 35000, 45000, 'simple black', 'download (16).jpeg', 'download (16).jpeg', 'download (16).jpeg', 2000, 'In Stock', '2021-01-27 14:43:00', NULL),
(75, 6, 28, 'pretty pants', 'undriagraphics', 70000, 100000, 'look nice', 'download (12).jpeg', 'download (12).jpeg', 'download (12).jpeg', 1000, 'In Stock', '2021-01-27 14:45:23', NULL),
(76, 6, 28, 'lady pants', 'undriagraphics', 65000, 70000, 'blue comfi pants', 'download (10).jpeg', 'download (10).jpeg', 'download (10).jpeg', 3000, 'In Stock', '2021-01-27 14:47:01', NULL),
(77, 6, 28, 'boss lady pants', 'boss', 100000, 120000, 'the boss ways&nbsp;', 'download (11).jpeg', 'download (11).jpeg', 'download (11).jpeg', 3000, 'In Stock', '2021-01-27 14:49:09', NULL),
(78, 6, 28, 'pants', 'LV', 35000, 45000, 'pink', 'download (13).jpeg', 'download (13).jpeg', 'download (13).jpeg', 3000, 'In Stock', '2021-01-27 14:50:19', NULL),
(79, 9, 21, 'spreeme', 'undriagraphics', 65000, 70000, 'feel good', 'download (3).jpeg', 'download (3).jpeg', 'download (3).jpeg', 3000, 'In Stock', '2021-01-27 14:54:45', NULL),
(80, 9, 21, 't-shirt', 'undriagraphics', 35000, 45000, 'look nice', 'download (17).jpeg', 'download (17).jpeg', 'download (17).jpeg', 3000, 'In Stock', '2021-01-27 14:56:23', NULL),
(81, 9, 23, 'black shoes ', 'DG', 90000, 100000, 'black shoes<div>size 44</div><div><br></div>', 'download.jpeg', 'download.jpeg', 'download.jpeg', 2000, 'In Stock', '2021-01-27 16:58:01', NULL),
(82, 9, 23, 'mens shoes', 'LV', 90000, 100000, 'black shoes<div>size 45..44..43</div>', 'download (1).jpeg', 'download (1).jpeg', 'download (1).jpeg', 3000, 'In Stock', '2021-01-27 17:01:27', NULL),
(83, 9, 23, 'leather shoes', 'tb', 65000, 70000, 'comfortable black shoes<div>size 45..44</div>', 'download (10).jpeg', 'download (10).jpeg', 'download (10).jpeg', 3000, 'In Stock', '2021-01-27 17:04:04', NULL),
(84, 9, 23, 'men black', 'GUCCI', 65000, 70000, 'designer shoes for men<div>size 45</div>', 'download (15).jpeg', 'download (15).jpeg', 'download (15).jpeg', 2000, 'In Stock', '2021-01-27 17:07:56', NULL),
(85, 9, 23, 'boss man', 'undriagraphics', 100000, 120000, 'size 44', 'download (8).jpeg', 'download (8).jpeg', 'download (8).jpeg', 3000, 'In Stock', '2021-01-27 17:10:04', NULL),
(86, 9, 23, 'shoes', 'GUCCI', 65000, 70000, 'size 45<div>black&nbsp;</div>', 'download (12).jpeg', 'download (12).jpeg', 'download (12).jpeg', 3000, 'In Stock', '2021-01-27 17:14:12', NULL),
(87, 4, 13, 'ROLEX watch', 'ROLEX', 90000, 120000, 'stay classy', 'download (1).jpeg', 'download (1).jpeg', 'download (1).jpeg', 2000, 'In Stock', '2021-02-02 18:14:41', NULL),
(88, 4, 13, 'watch', 'GUCCI', 35000, 70000, 'time keeper', 'download (7).jpeg', 'download (7).jpeg', 'download (7).jpeg', 3000, 'In Stock', '2021-02-02 18:22:50', NULL),
(89, 4, 13, 'GUCCI watch', 'GUCCI', 90000, 120000, 'long last', 'download.jpeg', 'download.jpeg', 'download.jpeg', 3000, 'In Stock', '2021-02-02 19:57:52', NULL),
(90, 4, 13, 'watch', 'sine', 170000, 200000, 'stay classy', 'download (6).jpeg', 'download (6).jpeg', 'download (6).jpeg', 3000, 'In Stock', '2021-02-02 20:04:16', NULL),
(91, 4, 13, 'men watch', 'GUCCI', 100000, 200000, 'cool watch', 'download (8).jpeg', 'download (8).jpeg', 'download (8).jpeg', 3000, 'In Stock', '2021-02-02 20:08:34', NULL),
(92, 4, 13, 'The origin times ', 'andy', 65000, 120000, 'real time watch', 'download (10).jpeg', 'download (10).jpeg', 'download (10).jpeg', 3000, 'In Stock', '2021-02-02 20:11:00', NULL),
(93, 4, 30, 'neck less', 'princess', 35000, 45000, 'stay classy', 'download (4).jpeg', 'download (4).jpeg', 'download (4).jpeg', 2000, 'In Stock', '2021-02-02 20:19:46', NULL),
(94, 4, 31, 'bag', 'LV', 90000, 100000, 'ladies', 'download.jpeg', 'download.jpeg', 'download.jpeg', 3000, 'In Stock', '2021-02-02 20:21:09', NULL),
(95, 4, 32, 'iphone', 'apple ', 900000, 1000000, 'orign', 'download.jpeg', 'download.jpeg', 'download.jpeg', 3000, 'In Stock', '2021-02-02 20:23:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 4, 'WATCHES', '2021-01-22 19:19:26', NULL),
(14, 10, 'Girls wares', '2021-01-24 09:53:23', NULL),
(15, 10, 'Boys wares', '2021-01-24 10:04:50', NULL),
(16, 10, 'boys shoes', '2021-01-24 10:05:09', NULL),
(17, 10, 'Girls shoes', '2021-01-24 10:05:36', NULL),
(18, 11, 'Casual', '2021-01-24 18:11:51', NULL),
(21, 9, 'shirts and t-shirts', '2021-01-27 12:14:39', NULL),
(22, 9, 'pants', '2021-01-27 12:14:51', NULL),
(23, 9, 'shoes', '2021-01-27 12:15:12', NULL),
(24, 8, 'Tops and dresses', '2021-01-27 12:15:35', NULL),
(25, 8, 'pants', '2021-01-27 12:15:48', NULL),
(26, 8, 'shoes', '2021-01-27 12:15:57', NULL),
(27, 6, 'Dress and tops', '2021-01-27 13:39:57', NULL),
(28, 6, 'pants', '2021-01-27 13:40:07', NULL),
(29, 6, 'shoes', '2021-01-27 13:40:21', NULL),
(30, 4, 'Jewellery', '2021-01-27 18:03:29', NULL),
(31, 4, 'Bags', '2021-01-27 18:03:43', NULL),
(32, 4, 'Phones', '2021-01-27 18:03:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(30, 'mukwayaedmund@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-22 19:15:01', NULL, 0),
(31, 'mukwayaedmund53@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-22 19:15:43', NULL, 1),
(32, 'mukwayaedmund53@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-29 17:12:16', NULL, 0),
(33, 'mukwayaedmund@gmail.com', 0x3a3a3100000000000000000000000000, '2021-01-29 17:13:21', '29-01-2021 10:45:36 PM', 1),
(34, 'mukwayaedmund@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-02 17:24:04', '02-02-2021 11:35:58 PM', 1),
(35, 'mukwayaedmund@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-04 13:29:52', '04-02-2021 07:02:36 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(8, 'Mukwaya Edmund', 'mukwayaedmund53@gmail.com', 777667878, '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-22 19:15:24', NULL),
(9, 'Mukwaya Edmund', 'mukwayaedmund@gmail.com', 777667878, '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-29 17:12:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(2, 9, 54, '2021-02-02 17:24:38'),
(3, 9, 55, '2021-02-02 17:29:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
