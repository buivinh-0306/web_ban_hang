-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 10, 2020 lúc 10:36 AM
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
  `gateway` varchar(225) DEFAULT NULL,
  `OS` varchar(100) DEFAULT NULL,
  `RearCamera` varchar(225) DEFAULT NULL,
  `FrontCamera` varchar(225) DEFAULT NULL,
  `CPU` varchar(225) DEFAULT NULL,
  `Ram` varchar(225) DEFAULT NULL,
  `ROM` varchar(225) DEFAULT NULL,
  `battery` varchar(50) DEFAULT NULL,
  `design` varchar(225) DEFAULT NULL,
  `ProductID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(225) DEFAULT NULL,
  `ProductImage` varchar(225) DEFAULT NULL,
  `PriceCurrent` int(11) DEFAULT NULL,
  `PricePromo` varchar(225) DEFAULT NULL,
  `Brand` varchar(225) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `GroupProduct` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotion`
--

CREATE TABLE `promotion` (
  `PromotionID` int(11) NOT NULL,
  `Promo1` varchar(225) DEFAULT NULL,
  `Promo2` varchar(225) DEFAULT NULL,
  `Promo3` varchar(225) DEFAULT NULL,
  `Promo4` varchar(225) DEFAULT NULL,
  `Promo5` varchar(225) DEFAULT NULL,
  `ProductID` int(11) NOT NULL
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
(7, 'power supply units', 'images/product/Power Supply Units/power.png', '#'),
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
(18, 'Storage', 'images/product/streamingkit,case/streamingkit.png', '#');

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
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Chỉ mục cho bảng `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`PromotionID`),
  ADD KEY `FK_ProductID` (`ProductID`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`slideID`);

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
  ADD CONSTRAINT `detail_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);

--
-- Các ràng buộc cho bảng `promotion`
--
ALTER TABLE `promotion`
  ADD CONSTRAINT `FK_ProductID` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
