-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: web-niit-interior-decors-mysqldbserver.mysql.database.azure.com
-- Generation Time: Sep 12, 2020 at 03:00 PM
-- Server version: 5.7.29-log
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-08-10 16:21:18', '2020-08-20 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `billingdetails`
--

CREATE TABLE `billingdetails` (
  `userid` int(11) DEFAULT NULL,
  `billingaddress` varchar(80) NOT NULL,
  `bilingstate` varchar(80) NOT NULL,
  `billingcity` varchar(80) NOT NULL,
  `billingpincode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billingdetails`
--

INSERT INTO `billingdetails` (`userid`, `billingaddress`, `bilingstate`, `billingcity`, `billingpincode`) VALUES
(12, '', ' ', '', 0),
(12, '', ' ', '', 0),
(12, '', ' ', '', 0),
(14, '', ' ', '', 0),
(12, '', '', '', 0),
(12, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Decoration Items\r\n', 'NIIT', '2020-08-14 19:17:37', ''),
(4, 'Furniture Items', 'NIIT', '2020-08-14 19:19:32', ''),
(5, 'Rugs and Mats', 'NIIT', '2020-08-16 19:18:52', ''),
(6, 'Wall Paintings', 'NIIT', '2020-08-16 19:19:54', ''),
(9, 'Appliances', 'NIIT', '2020-09-06 16:22:29', '06-09-2020 09:53:50 PM');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `userid` int(11) DEFAULT NULL,
  `Cardholdername` varchar(80) NOT NULL,
  `Cardnumber` int(11) NOT NULL,
  `CVV` int(11) NOT NULL,
  `ExpirationDate` int(11) NOT NULL,
  `EmailAddress` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`userid`, `Cardholdername`, `Cardnumber`, `CVV`, `ExpirationDate`, `EmailAddress`) VALUES
(12, '', 0, 0, 0, ''),
(12, '', 0, 0, 0, ''),
(12, '', 0, 0, 0, ''),
(14, '', 0, 0, 0, ''),
(12, '', 0, 0, 0, ''),
(12, 'saba', 0, 0, 0, ''),
(12, 'saba', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` date NOT NULL,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(42, 12, 15, 1, '0000-00-00', 'COD', NULL),
(43, 14, 16, 1, '0000-00-00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 43, 'in Process', 'Order has been Shipped.', '2020-08-20'),
(2, 42, 'Delivered', 'Order Has been delivered', '2020-08-20'),
(3, 43, 'Delivered', 'Product delivered successfully', '2020-08-20');

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
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Neha Khan', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2020-08-21 20:43:57'),
(3, 3, 3, 4, 3, 'Tehreem Sultan', 'Nice Product', 'Value for money', '2020-08-21 20:52:46'),
(4, 3, 3, 4, 3, 'Iman ', 'Nice Product', 'Value for money', '2020-08-21 20:59:19'),
(5, 3, 4, 3, 3, 'Iqra farooq malik', 'I like it !', 'Wow :)', '2020-08-19 13:08:23');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'Bed Set', 'NIIT Home Decor', 139900, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue mauris augue neque gravida in. In eu mi bibendum neque. Dignissim sodales ut eu sem integer vitae. Vel turpis nunc eget lorem dolor sed. Tellus cras adipiscing enim eu turpis egestas pretium. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit. Leo integer malesuada nunc vel risus. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada. Vitae semper quis lectus nulla at volutpat diam ut.', 'bed1.jpg', 'bed1.jpg', 'bed1.jpg', 1200, 'In Stock', '2020-08-10 16:54:35', ''),
(2, 4, 4, 'Two Seater', 'NIIT Home Decor', 36990, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue mauris augue neque gravida in. In eu mi bibendum neque. Dignissim sodales ut eu sem integer vitae. Vel turpis nunc eget lorem dolor sed. Tellus cras adipiscing enim eu turpis egestas pretium. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit. Leo integer malesuada nunc vel risus. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada. Vitae semper quis lectus nulla at volutpat diam ut.', 'seater1.jpg', 'seater1.jpg', 'seater1.jpg', 0, 'In Stock', '2020-08-10 16:59:00', ''),
(3, 4, 4, 'Grey Side Seater', 'NIIT Home Decor', 10999, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue mauris augue neque gravida in. In eu mi bibendum neque. Dignissim sodales ut eu sem integer vitae. Vel turpis nunc eget lorem dolor sed. Tellus cras adipiscing enim eu turpis egestas pretium. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit. Leo integer malesuada nunc vel risus. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada. Vitae semper quis lectus nulla at volutpat diam ut.', 'seater2.jpg', 'seater2.jpg', 'seater2.jpg', 0, 'In Stock', '2020-08-10 04:03:15', ''),
(4, 4, 4, 'Printed Seater', 'NIIT Home Decor', 9999, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue mauris augue neque gravida in. In eu mi bibendum neque. Dignissim sodales ut eu sem integer vitae. Vel turpis nunc eget lorem dolor sed. Tellus cras adipiscing enim eu turpis egestas pretium. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit. Leo integer malesuada nunc vel risus. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada. Vitae semper quis lectus nulla at volutpat diam ut.', 'seater3.jpg', 'seater3.jpg', 'seater3.jpg', 45, 'In Stock', '2020-08-10 04:04:43', ''),
(5, 4, 4, 'Modern Seater', 'NIIT Home Decor', 11999, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue mauris augue neque gravida in. In eu mi bibendum neque. Dignissim sodales ut eu sem integer vitae. Vel turpis nunc eget lorem dolor sed. Tellus cras adipiscing enim eu turpis egestas pretium. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit. Leo integer malesuada nunc vel risus. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada. Vitae semper quis lectus nulla at volutpat diam ut.', 'seater5.jpg', 'seater5.jpg', 'seater5.jpg', 0, 'In Stock', '2020-08-10 04:06:17', ''),
(6, 4, 4, 'White Elegant Seater', 'NIIT Home Decor', 6999, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue mauris augue neque gravida in. In eu mi bibendum neque. Dignissim sodales ut eu sem integer vitae. Vel turpis nunc eget lorem dolor sed. Tellus cras adipiscing enim eu turpis egestas pretium. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit. Leo integer malesuada nunc vel risus. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada. Vitae semper quis lectus nulla at volutpat diam ut.', 'seater4.jpg', 'seater4.jpg', 'seater4.jpg', 35, 'In Stock', '2020-08-10 04:08:07', ''),
(7, 4, 4, 'Pillow Seater', 'NIIT Home Decor', 7490, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue mauris augue neque gravida in. In eu mi bibendum neque. Dignissim sodales ut eu sem integer vitae. Vel turpis nunc eget lorem dolor sed. Tellus cras adipiscing enim eu turpis egestas pretium. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit. Leo integer malesuada nunc vel risus. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada. Vitae semper quis lectus nulla at volutpat diam ut.', 'seater6.jpg', 'seater6.jpg', 'seater6.jpg', 20, 'In Stock', '2020-08-10 04:10:17', ''),
(8, 4, 4, 'Affix Dining Table Set', 'NIIT Home Decor', 14990, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue mauris augue neque gravida in. In eu mi bibendum neque. Dignissim sodales ut eu sem integer vitae. Vel turpis nunc eget lorem dolor sed. Tellus cras adipiscing enim eu turpis egestas pretium. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit. Leo integer malesuada nunc vel risus. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada. Vitae semper quis lectus nulla at volutpat diam ut.', 'dntable1.jpg', 'dntable1.jpg', 'dntable1.jpg', 0, 'In Stock', '2020-08-10 04:11:54', ''),
(9, 4, 5, 'White Elegant Full Cupboard ', 'NIIT Home Decor', 259, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue mauris augue neque gravida in. In eu mi bibendum neque. Dignissim sodales ut eu sem integer vitae. Vel turpis nunc eget lorem dolor sed. Tellus cras adipiscing enim eu turpis egestas pretium. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit. Leo integer malesuada nunc vel risus. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada. Vitae semper quis lectus nulla at volutpat diam ut.', 'cup1.jpg', 'cup2.png', 'cup3.jpg', 10, 'In Stock', '2020-08-10 04:17:03', ''),
(15, 3, 8, 'Elegant Chandelier\r\n', 'NIIT Home Decor', 205, 250, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue mauris augue neque gravida in. In eu mi bibendum neque. Dignissim sodales ut eu sem integer vitae. Vel turpis nunc eget lorem dolor sed. Tellus cras adipiscing enim eu turpis egestas pretium. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit. Leo integer malesuada nunc vel risus. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada. Vitae semper quis lectus nulla at volutpat diam ut.', 'chand1.jpg', 'chand1.jpg', 'chand1.jpg', 50, 'In Stock', '2020-08-10 04:35:13', ''),
(16, 3, 8, 'Aesthetic Chandelier', 'NIIT Home Decor', 240, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue mauris augue neque gravida in. In eu mi bibendum neque. Dignissim sodales ut eu sem integer vitae. Vel turpis nunc eget lorem dolor sed. Tellus cras adipiscing enim eu turpis egestas pretium. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit. Leo integer malesuada nunc vel risus. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada. Vitae semper quis lectus nulla at volutpat diam ut.', 'chand2.jpg', 'chand2.jpg', 'chand2.jpg', 30, 'In Stock', '2020-08-10 04:36:23', ''),
(17, 6, 9, 'Honey Comb Wall Painting', 'NIIT Home Decor', 32566, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue mauris augue neque gravida in. In eu mi bibendum neque. Dignissim sodales ut eu sem integer vitae. Vel turpis nunc eget lorem dolor sed. Tellus cras adipiscing enim eu turpis egestas pretium. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit. Leo integer malesuada nunc vel risus. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada. Vitae semper quis lectus nulla at volutpat diam ut.', 'honey1.jpg', 'honey1.jpg', 'honey1.jpg', 0, 'In Stock', '2020-08-10 04:40:37', ''),
(18, 6, 10, '3D Styles', 'NIIT Home Decor', 6523, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue mauris augue neque gravida in. In eu mi bibendum neque. Dignissim sodales ut eu sem integer vitae. Vel turpis nunc eget lorem dolor sed. Tellus cras adipiscing enim eu turpis egestas pretium. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit. Leo integer malesuada nunc vel risus. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada. Vitae semper quis lectus nulla at volutpat diam ut.', 'wall1.jpg', 'wall2.jpg', 'wall3.jpg', 0, 'In Stock', '2020-08-10 04:42:27', ''),
(19, 5, 12, 'Fluffy Foot Mat', 'NIIT Home Decor', 379, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue mauris augue neque gravida in. In eu mi bibendum neque. Dignissim sodales ut eu sem integer vitae. Vel turpis nunc eget lorem dolor sed. Tellus cras adipiscing enim eu turpis egestas pretium. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit. Leo integer malesuada nunc vel risus. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada. Vitae semper quis lectus nulla at volutpat diam ut.', 'footrug1.jpg', 'footrug1.jpg', 'footrug1.jpg', 45, 'In Stock', '2020-08-10 20:16:03', ''),
(20, 5, 12, 'Foot Rug', 'NIIT Home Decor', 4129, 5000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Augue mauris augue neque gravida in. In eu mi bibendum neque. Dignissim sodales ut eu sem integer vitae. Vel turpis nunc eget lorem dolor sed. Tellus cras adipiscing enim eu turpis egestas pretium. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit. Leo integer malesuada nunc vel risus. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada. Vitae semper quis lectus nulla at volutpat diam ut.', 'footrug3.jpg', 'footrug3.jpg', 'footrug3.jpg', 0, 'In Stock', '2020-08-10 20:19:22', ''),
(21, 9, 13, 'TV', 'NIIT Home Decor', 80000, 90000, '<br>', 'download.jpg', 'download.jpg', 'download.jpg', 90, 'In Stock', '2020-09-06 16:27:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shippingdetails`
--

CREATE TABLE `shippingdetails` (
  `userid` int(11) DEFAULT NULL,
  `shippingaddress` varchar(80) NOT NULL,
  `shippingstate` varchar(80) NOT NULL,
  `shippingcity` varchar(80) NOT NULL,
  `shippingpincode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shippingdetails`
--

INSERT INTO `shippingdetails` (`userid`, `shippingaddress`, `shippingstate`, `shippingcity`, `shippingpincode`) VALUES
(12, '', ' ', '', 0),
(12, '', ' ', '', 0),
(12, '', ' ', '', 0),
(14, '', ' ', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(3, 4, 'Beds', '2020-08-15 16:29:09', ''),
(4, 4, 'Dining Table and Seaters', '2020-08-15 16:55:48', ''),
(5, 4, 'Cupboards', '2020-08-15 04:12:40', ''),
(8, 3, 'Chandelier', '2020-08-15 04:13:54', ''),
(9, 6, 'HoneyComb', '2020-08-17 04:36:45', ''),
(10, 6, '3D Boxes', '2017-02-04 04:37:02', ''),
(12, 5, 'Foot Design', '2020-08-16 20:12:59', ''),
(13, 9, 'Home Appliances', '2020-09-06 16:24:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(26, 'nehaiman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-08-19 06:08:33', '19-08-2020 04:11:52 PM', 1),
(27, 'n.nehakhan333@gmail.com', 0x3a3a3100000000000000000000000000, '2020-08-19 10:55:05', '19-08-2020 05:08:01 PM', 1),
(28, 'n.nehakhan333@gmail.com', 0x3a3a3100000000000000000000000000, '2020-08-19 11:38:31', '19-08-2020 05:28:27 PM', 1),
(29, 'n.nehakhan333@gmail.com', 0x3a3a3100000000000000000000000000, '2020-08-19 12:50:01', '20-08-2020 09:33:03 PM', 1),
(30, 'n.nehakhan333@gmail.com', 0x3a3a3100000000000000000000000000, '2020-08-20 16:19:47', NULL, 1),
(31, 'tehreemsultanali@gmail.com', 0x3131312e38382e3139392e3137370000, '2020-09-05 19:27:02', NULL, 0),
(32, 'tehreemsultanali@gmail.com', 0x3131312e38382e3139392e3137370000, '2020-09-05 19:31:01', NULL, 0),
(33, 'tehreemsultanali@gmail.com', 0x3131312e38382e3139392e3137370000, '2020-09-05 19:31:17', NULL, 0),
(34, 'tehreemsultanali@gmail.com', 0x3131312e38382e3139392e3137370000, '2020-09-05 19:31:52', NULL, 1),
(35, 'nehakhan@gmail.com', 0x33392e34342e3134352e313339000000, '2020-09-06 12:12:25', NULL, 0),
(36, 'neha@gmail.com', 0x33392e34342e3134352e313339000000, '2020-09-06 12:12:59', NULL, 1),
(37, 'nehakhan@gmail.com', 0x33392e34342e3134352e313339000000, '2020-09-06 14:39:23', NULL, 0),
(38, 'neha@gmail.com', 0x33392e34342e3134352e313339000000, '2020-09-06 14:39:40', NULL, 1),
(39, 'NIIT123@gmail.com', 0x33392e35302e3137382e353700000000, '2020-09-06 14:53:39', NULL, 0),
(40, 'iqramalik200021@gmail.com', 0x33392e35302e3137382e353700000000, '2020-09-06 14:56:08', NULL, 1),
(41, 'imannaqvi2000@gmail.com', 0x3139322e3134322e3134312e32333000, '2020-09-06 14:56:51', NULL, 1),
(42, 'neha@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-06 15:13:00', NULL, 1),
(43, 'imannaqvi2000@gmail.com', 0x3139322e3134322e3134312e32333000, '2020-09-06 18:31:16', NULL, 1),
(44, 'test123@gmail.com', 0x33392e34342e3134352e313339000000, '2020-09-07 04:16:01', NULL, 1),
(45, 'test123@gmail.com', 0x33392e34342e3133302e313835000000, '2020-09-09 15:11:57', NULL, 1),
(46, 'test123@gmail.com', 0x33392e34342e3131332e323133000000, '2020-09-10 13:59:47', NULL, 0),
(47, 'test123@gmail.com', 0x33392e34342e3131332e323133000000, '2020-09-10 13:59:56', NULL, 0),
(48, 'n.nehakhan333@gmail.com', 0x33392e34342e3131332e323133000000, '2020-09-10 14:00:04', NULL, 0),
(49, 'n.nehakhan333@gmail.com', 0x33392e34342e3131332e323133000000, '2020-09-10 14:00:34', NULL, 0),
(50, 'test123@gmail.com', 0x33392e34342e3131332e323133000000, '2020-09-10 14:00:59', NULL, 1),
(51, 'jasmine@gmail.com', 0x33392e34342e3134332e313834000000, '2020-09-11 07:33:58', NULL, 1),
(52, 'imannaqvi2000@gmail.com', 0x3139322e3134322e3133352e32000000, '2020-09-12 06:17:48', NULL, 0),
(53, 'imannaqvi2000@gmail.com', 0x3139322e3134322e3133352e32000000, '2020-09-12 06:18:08', NULL, 0),
(54, 'imannaqvi2000@gmail.com', 0x3139322e3134322e3133352e32000000, '2020-09-12 06:20:05', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userproductview`
--

CREATE TABLE `userproductview` (
  `productid` int(11) DEFAULT NULL,
  `OrderDate` varchar(20) NOT NULL,
  `OrderTime` varchar(20) NOT NULL,
  `pName` varchar(30) NOT NULL,
  `Reviews` varchar(80) NOT NULL,
  `userNo` int(11) DEFAULT NULL,
  `userName` varchar(20) NOT NULL,
  `paymentmethod` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userproductview`
--

INSERT INTO `userproductview` (`productid`, `OrderDate`, `OrderTime`, `pName`, `Reviews`, `userNo`, `userName`, `paymentmethod`) VALUES
(16, '18-08-2019', '10:00', 'Aesthetic Chandelier', 'In Good Order', 12, 'Jasmine', 'Mobile Payment'),
(16, '20-08-2019', '09:00', 'Aesthetic Chandelier', 'Good service', 13, 'Ford', 'COD'),
(16, '30-09-2019', '12:00', 'Aesthetic Chandelier', 'Reasonable Price', 13, 'Ford', 'Debit/Credit Card'),
(15, '20-08-2019', '13:00', 'Elegant Chandelier', 'Satisfaction', 13, 'Ford', 'COD'),
(15, '25-09-2019', '14:00', 'Elegant Chandelier', 'Beautiful Design', 12, 'Jasmine', 'Debit/Credit Card');

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
  `regDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `regDate`) VALUES
(12, 'Jasmine', 'jasmine@gmail.com', 987908689, 'cc03e747a6afbbcbf8be7668acfebee5', NULL),
(13, 'Ford', 'ford@gmail.com', 318166242, '3aaa4ff6fa71d98282e0b2e0c49d4066', NULL),
(14, 'Syeda Iman Sarwar', 'imannaqvi2000@gmail.com', 306219191, 'd54d1702ad0f8326224b817c796763c9', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(3, 12, 5, '2020-08-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billingdetails`
--
ALTER TABLE `billingdetails`
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderId` (`orderId`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`),
  ADD KEY `subCategory` (`subCategory`);

--
-- Indexes for table `shippingdetails`
--
ALTER TABLE `shippingdetails`
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryid` (`categoryid`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userproductview`
--
ALTER TABLE `userproductview`
  ADD KEY `productid` (`productid`),
  ADD KEY `userNo` (`userNo`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`),
  ADD KEY `userId` (`userId`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `billingdetails`
--
ALTER TABLE `billingdetails`
  ADD CONSTRAINT `billingdetails_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `details_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD CONSTRAINT `ordertrackhistory_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD CONSTRAINT `productreviews_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`subCategory`) REFERENCES `subcategory` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `shippingdetails`
--
ALTER TABLE `shippingdetails`
  ADD CONSTRAINT `shippingdetails_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `userproductview`
--
ALTER TABLE `userproductview`
  ADD CONSTRAINT `userproductview_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `userproductview_ibfk_2` FOREIGN KEY (`userNo`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
