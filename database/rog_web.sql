-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 06, 2020 lúc 08:24 AM
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
  `ID_User` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `User_Name` varchar(20) DEFAULT NULL,
  `Pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class`
--

CREATE TABLE `class` (
  `ID_Class` int(11) NOT NULL,
  `Ten_SP` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `ID_Customer` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Phone_Number` int(13) DEFAULT NULL,
  `Mail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `ID_Order` int(11) NOT NULL,
  `ID_Customer` int(11) NOT NULL,
  `ID_Product` int(11) NOT NULL,
  `Ngay_Dat` date DEFAULT NULL,
  `Ten_San_pham` varchar(50) DEFAULT NULL,
  `So_Luong_Sp` int(5) DEFAULT NULL,
  `Don_gia` int(20) DEFAULT NULL,
  `Tong_Don_Gia` int(20) DEFAULT NULL,
  `Dia_Chi` varchar(100) DEFAULT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `ID_Product` int(11) NOT NULL,
  `ID_Class` int(11) NOT NULL,
  `Ten_San_Pham` varchar(50) DEFAULT NULL,
  `Xuat_Xu` varchar(50) DEFAULT NULL,
  `Gia` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinh_trang_dh`
--

CREATE TABLE `tinh_trang_dh` (
  `ID_TinhTrang` int(11) NOT NULL,
  `Tinh_Trang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID_User`);

--
-- Chỉ mục cho bảng `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`ID_Class`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID_Customer`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`ID_Order`),
  ADD KEY `ID_Customer` (`ID_Customer`),
  ADD KEY `ID_Product` (`ID_Product`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID_Product`),
  ADD KEY `fk_product_id_class` (`ID_Class`);

--
-- Chỉ mục cho bảng `tinh_trang_dh`
--
ALTER TABLE `tinh_trang_dh`
  ADD PRIMARY KEY (`ID_TinhTrang`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`ID_Customer`) REFERENCES `customer` (`ID_Customer`),
  ADD CONSTRAINT `donhang_ibfk_2` FOREIGN KEY (`ID_Product`) REFERENCES `product` (`ID_Product`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_id_class` FOREIGN KEY (`ID_Class`) REFERENCES `class` (`ID_Class`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
