-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 08, 2020 lúc 12:35 PM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_rog`
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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color_products`
--

CREATE TABLE `color_products` (
  `ColorID` int(11) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `image_product` varchar(225) DEFAULT NULL,
  `productID` int(11) NOT NULL
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
  `DetailD` int(11) NOT NULL,
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
  ADD PRIMARY KEY (`ColorID`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Chỉ mục cho bảng `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`DetailD`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
