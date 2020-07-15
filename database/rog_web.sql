-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 15, 2020 lúc 08:38 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `rog_web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `AccountID` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `PhoneNUmber` int(11) DEFAULT NULL,
  `Email` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `bannerID` int(11) NOT NULL,
  `images` varchar(225) DEFAULT NULL,
  `content` varchar(225) DEFAULT NULL,
  `link` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`bannerID`, `images`, `content`, `link`) VALUES
(1, 'images/banner,background/background/background_2.png', ' ', '#');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color_products`
--

CREATE TABLE `color_products` (
  `ColorID` int(11) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `image_product` varchar(225) DEFAULT NULL,
  `ProductID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `FullName` varchar(225) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `PhoneNUmber` int(11) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` varchar(225) DEFAULT NULL,
  `NoteCart` varchar(225) DEFAULT NULL,
  `TotalPay` int(11) DEFAULT NULL,
  `CreateTime` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail`
--

CREATE TABLE `detail` (
  `DetailID` int(11) NOT NULL,
  `Display` varchar(225) DEFAULT NULL,
  `Card` varchar(225) DEFAULT NULL,
  `gateway` varchar(225) DEFAULT NULL,
  `OS` varchar(50) DEFAULT NULL,
  `RearCamera` varchar(225) DEFAULT NULL,
  `FrontCamera` varchar(225) DEFAULT NULL,
  `CPU` varchar(50) DEFAULT NULL,
  `RAM` varchar(50) DEFAULT NULL,
  `ROM` varchar(50) DEFAULT NULL,
  `Network` varchar(225) NOT NULL,
  `battery` varchar(50) DEFAULT NULL,
  `design` varchar(225) DEFAULT NULL,
  `ProductID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `detail`
--

INSERT INTO `detail` (`DetailID`, `Display`, `Card`, `gateway`, `OS`, `RearCamera`, `FrontCamera`, `CPU`, `RAM`, `ROM`, `Network`, `battery`, `design`, `ProductID`) VALUES
(1, 'ads', 'ád', 'áđá', 'adsd', 'sadsad', 'ád', 'ads', 'gdfg', 'ádsad', '', 'áds', 'adsasd', 27),
(2, '$Display', '$Card', '$gateway', '$OS', '$RearCamera', '$FrontCamera', '$CPU', '$RAM', '$ROM', '$network', '$battery', '$design', 29),
(3, '$Display', '$Card', '$gateway', '$OS', '$RearCamera', '$FrontCamera', '$CPU', '$RAM', '$ROM', '$network', '$battery', '$design', 30),
(4, 'ih', 'hg', 'k', 'jn', 'l', 'h', 'iuh', 'olj', 'jnhb', 'jgh', 'jh', 'jh', 35),
(5, 'ih', 'hg', 'k', 'jn', 'l', 'h', 'iuh', 'olj', 'jnhb', 'jgh', 'jh', 'jh', 35),
(6, 'ih', 'hg', 'k', 'jn', 'l', 'h', 'iuh', 'olj', 'jnhb', 'jgh', 'jh', 'jh', 35),
(7, 'ih', 'hg', 'k', 'jn', 'l', 'h', 'iuh', 'olj', 'jnhb', 'jgh', 'jh', 'jh', 35),
(8, 'ih', 'hg', 'k', 'jn', 'l', 'h', 'iuh', 'olj', 'jnhb', 'jgh', 'jh', 'jh', 35),
(9, 'ih', 'hg', 'k', 'jn', 'l', 'h', 'iuh', 'olj', 'jnhb', 'jgh', 'jh', 'jh', 35),
(10, 'ih', 'hg', 'k', 'jn', 'l', 'h', 'iuh', 'olj', 'jnhb', 'jgh', 'jh', 'jh', 35),
(11, 'ih', 'hg', 'k', 'jn', 'l', 'h', 'iuh', 'olj', 'jnhb', 'jgh', 'jh', 'jh', 35),
(12, 'ih', 'hg', 'k', 'jn', 'l', 'h', 'iuh', 'olj', 'jnhb', 'jgh', 'jh', 'jh', 35),
(13, 'ih', 'hg', 'k', 'jn', 'l', 'h', 'iuh', 'olj', 'jnhb', 'jgh', 'jh', 'jh', 35),
(14, 'ih', 'hg', 'k', 'jn', 'l', 'h', 'iuh', 'olj', 'jnhb', 'jgh', 'jh', 'jh', 35),
(15, 'ih', 'hg', 'k', 'jn', 'l', 'h', 'iuh', 'olj', 'jnhb', 'jgh', 'jh', 'jh', 35),
(16, 'ih', 'hg', 'k', 'jn', 'l', 'h', 'iuh', 'olj', 'jnhb', 'jgh', 'jh', 'jh', 35),
(17, 'ih', 'hg', 'k', 'jn', 'l', 'h', 'iuh', 'olj', 'jnhb', 'jgh', 'jh', 'jh', 35),
(18, 'vinhbiu', 'vinhbiu', 'vinhbiu', 'vinhbiu', 'vinhbiu', 'vinhbiu', 'vinhbiu', 'vinhbiu', 'vinhbiu', 'vinhbiu', 'v', 'vinhbiu', 36);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

CREATE TABLE `district` (
  `ID` int(11) DEFAULT NULL,
  `_name` varchar(100) DEFAULT NULL,
  `_prefix` varchar(20) DEFAULT NULL,
  `_province` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `Product` varchar(225) NOT NULL,
  `Image` varchar(225) NOT NULL,
  `PriceUnit` int(11) DEFAULT NULL,
  `PricePromote` int(11) DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `TotalPay` int(11) DEFAULT NULL,
  `OrderDate` varchar(225) NOT NULL,
  `EstimatedDeliveryTime` varchar(225) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `productID` int(11) NOT NULL,
  `ProductName` varchar(225) DEFAULT NULL,
  `ProductImage` varchar(225) DEFAULT NULL,
  `PriceCurrent` int(11) DEFAULT NULL,
  `PricePromo` varchar(225) DEFAULT NULL,
  `Brand` varchar(225) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `GroupProduct` varchar(50) NOT NULL,
  `folder` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`productID`, `ProductName`, `ProductImage`, `PriceCurrent`, `PricePromo`, `Brand`, `Quantity`, `GroupProduct`, `folder`) VALUES
(22, 'vinh', 'images/product/h525 (1).png', 8406, '00', '04384', 1531, '3123', '3123'),
(23, 'bùi', 'images/product/h525 (2).png', 2147483647, '41022', 'adfa', 6666, 'dghf', 'dfgh'),
(24, 'dhgf', 'images/product/h525 (1).png', 250545, '110111', 'dfghdf', 555, 'fghd', 'dfghdfg'),
(25, 'vinh-test', 'images/product/h525 (1).png', 693401, '5344', 'vinh-test', 4538, 'vinh-test', 'vinh-test'),
(26, 'vinh-test2', 'images/product/h525 (1).png', 113543, '0', 'vinh-test', 5435, 'vinh-test2', 'vinh-test2'),
(27, 'v', 'images/product/h525 (2).png', 100000, '100', 'a', 99, '455', '456'),
(28, 'sd', 'images/product/h525.png', 1000, '0', 'ghj', 99, 'dfgfd', 'dgfdg'),
(29, 'aaa', 'images/product/h525.png', 1000, '0', 'gfhgfh', 99, 'ghyjgh', 'fdgdfg'),
(30, 'vvv', 'images/product/h525 (2).png', 1000, '0', 'uuu', 99, 'ee', 'eee'),
(31, 'ccc', 'images/product/h525 (2).png', 10, '0', 'd', 10, '1', '2'),
(32, 'd', 'images/product/h525 (1).png', 10, '0', '1', 4, 'd', 'g'),
(33, 'd', 'images/product/h525.png', 10, '0', '2', 2, 'fd', 'd'),
(34, 'd', 'images/product/h525 (2).png', 10, '0', '1', 1, '1', '1'),
(35, 'aa', 'images/product/h525.png', 10, '0', 'dfc', 10, 'dfas', 'dsvfs'),
(36, 'vinhbiu', 'images/product/h525 (2).png', 403, '0', 'asus', 9699, '60', '360');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotion`
--

CREATE TABLE `promotion` (
  `promotionID` int(11) NOT NULL,
  `promo1` varchar(225) DEFAULT NULL,
  `promo2` varchar(225) DEFAULT NULL,
  `promo3` varchar(225) DEFAULT NULL,
  `promo4` varchar(225) DEFAULT NULL,
  `promo5` varchar(225) DEFAULT NULL,
  `productID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province`
--

CREATE TABLE `province` (
  `ID` int(11) DEFAULT NULL,
  `_name` varchar(50) DEFAULT NULL,
  `_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `slideID` int(11) NOT NULL,
  `slideName` varchar(225) DEFAULT NULL,
  `images` varchar(225) DEFAULT NULL,
  `link` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`slideID`, `slideName`, `images`, `link`) VALUES
(1, 'laptops', 'images/product/laptops/laptop.png', '#'),
(2, 'motherboards', 'images/product/motherboards/motherboard.png', '#'),
(3, 'graphics Cards', 'images/product/cards/card.png', '#'),
(4, 'monitors', 'images/product/monitors/monitor.png', '#'),
(5, 'phones', 'images/product/phones/phone.png', '#'),
(6, 'desktops', 'images/product/desktops/desktop.png', '#'),
(7, 'power supply units', 'images/product/PowerSupplyUnits/power.png', '#'),
(8, 'cooling', 'images/product/cooling/cooling.png', '#'),
(9, 'networking', 'images/product/networking&Controller/networking.png', '#'),
(10, 'keyboards', 'images/product/keyboards/keyboard.png', '#'),
(11, 'Mice & Mouse Pads', 'images/product/mouses/mouse.png', '#'),
(12, 'Headsets & Audio', 'images/product/headsets&audio&storage/headsets&audio.png', '#'),
(13, 'cases', 'images/product/streamingkit,case/case.png', '#'),
(14, 'Apparel, Bags, & Gear', 'images/product/apparel,bag&gear/gears/gear.png', '#'),
(15, 'Streaming Kits', 'images/product/streamingkit,case/streamingkit.png', '#'),
(16, 'Controllers', 'images/product/networking&Controller/Controller.png', '#'),
(17, 'Power & Protection Gadgets', 'images/product/PowerSupplyUnits/power.png', '#'),
(18, 'Storage', 'images/product/headsets&audio&storage/storage.png', '#');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `street`
--

CREATE TABLE `street` (
  `ID` int(11) DEFAULT NULL,
  `_name` varchar(100) DEFAULT NULL,
  `_prefix` int(11) DEFAULT NULL,
  `_province_ID` int(11) DEFAULT NULL,
  `_district_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ward`
--

CREATE TABLE `ward` (
  `id` int(11) DEFAULT NULL,
  `_name` varchar(50) DEFAULT NULL,
  `_prefix` varchar(20) DEFAULT NULL,
  `_province_id` int(11) DEFAULT NULL,
  `_district_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`AccountID`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`bannerID`);

--
-- Chỉ mục cho bảng `color_products`
--
ALTER TABLE `color_products`
  ADD PRIMARY KEY (`ColorID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Chỉ mục cho bảng `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`DetailID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`);

--
-- Chỉ mục cho bảng `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`promotionID`),
  ADD KEY `productID` (`productID`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`slideID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `detail`
--
ALTER TABLE `detail`
  MODIFY `DetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `promotion`
--
ALTER TABLE `promotion`
  MODIFY `promotionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `color_products`
--
ALTER TABLE `color_products`
  ADD CONSTRAINT `color_products_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`);

--
-- Các ràng buộc cho bảng `detail`
--
ALTER TABLE `detail`
  ADD CONSTRAINT `detail_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `product` (`productID`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);

--
-- Các ràng buộc cho bảng `promotion`
--
ALTER TABLE `promotion`
  ADD CONSTRAINT `promotion_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
