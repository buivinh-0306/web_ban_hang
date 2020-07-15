-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 15, 2020 lúc 12:46 PM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.3.19

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
(19, '17.3-inch FHD (1920 x 1080) 16:9 anti-glare display sRGB: 100% Adobe: 75.35% Refresh Rate: 144Hz Response Time: 3ms IPS-level G-Sync', 'NVIDIA® GeForce RTX™ 2080 8GB GDDR6', '1x Headphone out, 1x MIC in 1x HDMI 2.0 1x Mini DisplayPort 1.4 1x RJ45 LAN Port 1x Type C USB 3.2 Gen 2 with Display Port and Thunderbolt™ 3 3x USB 3.2 Gen 2 Type-A 1x 2 in 1 Card reader SD/MMC', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for', ' not available', '720P HD', 'Intel® Core™ i9-8950HK Processor 2.9 GHz (12M Cach', '16GB DDR4-2666 SO-DIMM x 4', '1TB 5400RPM 2.5\" SATA FireCuda SSHD 512GB *3 M.2 N', 'Wi-Fi 5 (802.11ac)+Bluetooth 5.0 (Dual band) 2*2 (*BT version may change with OS upgrades.)', '96WHrs, 4S2P, 8-cell Li-ion', '42.5 x 31.9 x 4.75 ~ 5.10 cm; 16.70 x 12.50 x 1.87 ~ 2.00 inches', 37),
(20, '17.3-inch FHD (1920 x 1080) 16:9 anti-glare display sRGB: 100% Adobe: 75.35% Refresh Rate: 144Hz Response Time: 3ms IPS-level G-Sync', 'NVIDIA® GeForce RTX™ 2080 8GB GDDR6', '1x Headphone out, 1x MIC in 1x HDMI 2.0 1x Mini DisplayPort 1.4 1x RJ45 LAN Port 1x Type C USB 3.2 Gen 2 with Display Port and Thunderbolt™ 3 3x USB 3.2 Gen 2 Type-A 1x 2 in 1 Card reader SD/MMC', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for', 'not available', '720P HD', 'Intel® Core™ i9-8950HK Processor 2.9 GHz (12M Cach', '16GB DDR4-2666 SO-DIMM x 4', '1TB 5400RPM 2.5\" SATA FireCuda SSHD 512GB *3 M.2 N', 'Wi-Fi 5 (802.11ac)+Bluetooth 5.0 (Dual band) 2*2 (*BT version may change with OS upgrades.)', '96WHrs, 4S2P, 8-cell Li-ion', '42.5 x 31.9 x 4.75 ~ 5.10 cm; 16.70 x 12.50 x 1.87 ~ 2.00 inches', 38),
(22, ' 17.3-inch 4K UHD (3840 x 2160) 16:9 anti-glare display sRGB: 132.7 Adobe: 100 Refresh Rate: 60Hz IPS-level G-Sync', 'NVIDIA® GeForce RTX™ 2080 8GB GDDR6', ' 1x Headphone out, 1x MIC in 1x HDMI 2.0 1x RJ45 LAN Port 1x USB 3.2 Gen 1 Type-A 1x USB 3.2 Gen 2 Type-C support displayport / G-SYNC 1x Type C USB 3.2 Gen 2 with Display Port and Thunderbolt™ 3 3x USB 3.2 Gen 2 Type-A 1x 2 ', ' Windows 10 Home (ASUS recommends Windows 10 Pro f', ' not available', '720P HD', ' Intel® Core™ i9-9980HK Processor 2.4 GHz (16M Cac', '16GB DDR4-2666 SO-DIMM x 4', ' 512GB *3 M.2 NVMe™ PCIe® 3.0 SSD (RAID 0)  x 2 51', '1x Headphone out, 1x MIC in 1x HDMI 2.0 1x RJ45 LAN Port 1x USB 3.2 Gen 1 Type-A 1x USB 3.2 Gen 2 Type-C support displayport / G-SYNC 1x Type C USB 3.2 Gen 2 with Display Port and Thunderbolt™ 3 3x USB 3.2 Gen 2 Type-A 1x 2 i', ' 90WHrs, 3S2P, 6-cell Li-ion', ' 41.0 x 32.0 x 2.99 ~ 2.99 cm; 161.42 x 12.60 x 1.18 ~ 1.18 inches', 39),
(23, '15.6-inch FHD (1920 x 1080) 16:9 anti-glare display sRGB: 100% Adobe: 75.35% Refresh Rate: 144Hz Response Time: 3ms IPS-level G-Sync', ' NVIDIA® GeForce® GTX1060 6GB GDDR5', '1x Headphone out, 1x MIC in 1x HDMI 2.0 1x Mini DisplayPort 1.4 1x RJ45 LAN Port 1x Type C USB 3.2 Gen 2 with Display Port and Thunderbolt™ 3 3x USB 3.2 Gen 2 Type-A 1x 2 in 1 Card reader SD/MMC', 'Windows 10 Home (ASUS recommends Windows 10 Pro fo', ' not available', '720P HD', 'Intel® Core™ i7-8750H Processor 2.2 GHz (9M Cache,', '16GB DDR4-2666 SO-DIMM x 4', '256GB M.2 NVMe™ PCIe® 3.0 x4 SSD (HyperDrive) 1TB ', 'Wi-Fi 5 (802.11ac)+Bluetooth 5.0 (Dual band) 2*2 (*BT version may change with OS upgrades.)', '55WHrs, 4S1P, 4-cell Li-ion', '38.4(W) x 26.2(D) x 1.75 ~ 1.99(H) cm; 15.12(W) x 10.31(D) x 0.70 ~ 0.78(H) inches', 40),
(24, '14-inch FHD (1920 x 1080) 16:9 anti-glare display sRGB: 100% Adobe: 75.35% Pantone Validated Refresh Rate: 120Hz IPS-level', ' NVIDIA® GeForce® GTX1050 4GB GDDR6', '1x Headphone out, 1x MIC in 1x HDMI 2.0 1x Mini DisplayPort 1.4 1x RJ45 LAN Port 1x Type C USB 3.2 Gen 2 with Display Port and Thunderbolt™ 3 3x USB 3.2 Gen 2 Type-A 1x 2 in 1 Card reader SD/MMC', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for', ' not available', '720P HD', ' Intel® Core™ i9-9980HK Processor 2.4 GHz (16M Cac', '16GB DDR4-2666 SO-DIMM x 4', ' 512GB *3 M.2 NVMe™ PCIe® 3.0 SSD (RAID 0)  x 2 51', 'Wi-Fi 5 (802.11ac)+Bluetooth 5.0 (Dual band) 2*2 (*BT version may change with OS upgrades.)', '96WHrs, 4S2P, 8-cell Li-ion', '32.4 x 22.0 x 1.99 ~ 1.99 cm; 12.77 x 8.66 x 0.78 ~ 0.78 inches', 41),
(25, '17.3-inch FHD (1920 x 1080) 16:9 anti-glare display sRGB: 100% Adobe: 75.35% Refresh Rate: 144Hz Response Time: 3ms IPS-level G-Sync', 'NVIDIA® GeForce RTX™ 2080 8GB GDDR6', '1x Headphone out, 1x MIC in 1x HDMI 2.0 1x Mini DisplayPort 1.4 1x RJ45 LAN Port 1x Type C USB 3.2 Gen 2 with Display Port and Thunderbolt™ 3 3x USB 3.2 Gen 2 Type-A 1x 2 in 1 Card reader SD/MMC', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for', ' not available', '720P HD', 'Intel® Core™ i9-8950HK Processor 2.9 GHz (12M Cach', '16GB DDR4-2666 SO-DIMM x 4', '1TB 5400RPM 2.5\" SATA FireCuda SSHD 512GB *3 M.2 N', 'Wi-Fi 5 (802.11ac)+Bluetooth 5.0 (Dual band) 2*2 (*BT version may change with OS upgrades.)', '96WHrs, 4S2P, 8-cell Li-ion', '32.4 x 22.0 x 1.99 ~ 1.99 cm; 12.77 x 8.66 x 0.78 ~ 0.78 inches', 42),
(26, '17.3-inch FHD (1920 x 1080) 16:9 anti-glare display sRGB: 100% Adobe: 75.35% Refresh Rate: 144Hz Response Time: 3ms IPS-level G-Sync', 'NVIDIA® GeForce RTX™ 2080 8GB GDDR6', '1x Headphone out, 1x MIC in 1x HDMI 2.0 1x Mini DisplayPort 1.4 1x RJ45 LAN Port 1x Type C USB 3.2 Gen 2 with Display Port and Thunderbolt™ 3 3x USB 3.2 Gen 2 Type-A 1x 2 in 1 Card reader SD/MMC', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for', ' not available', '720P HD', 'Intel® Core™ i9-8950HK Processor 2.9 GHz (12M Cach', '16GB DDR4-2666 SO-DIMM x 4', '1TB 5400RPM 2.5\" SATA FireCuda SSHD 512GB *3 M.2 N', 'Wi-Fi 5 (802.11ac)+Bluetooth 5.0 (Dual band) 2*2 (*BT version may change with OS upgrades.)', '96WHrs, 4S2P, 8-cell Li-ion', '42.5 x 31.9 x 4.75 ~ 5.10 cm; 16.70 x 12.50 x 1.87 ~ 2.00 inches', 43),
(27, '17.3-inch FHD (1920 x 1080) 16:9 anti-glare display sRGB: 100% Adobe: 75.35% Refresh Rate: 144Hz Response Time: 3ms IPS-level G-Sync', ' NVIDIA® GeForce® GTX1060 6GB GDDR5', '1x Headphone out, 1x MIC in 1x HDMI 2.0 1x Mini DisplayPort 1.4 1x RJ45 LAN Port 1x Type C USB 3.2 Gen 2 with Display Port and Thunderbolt™ 3 3x USB 3.2 Gen 2 Type-A 1x 2 in 1 Card reader SD/MMC', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for', ' not available', '720P HD', 'Intel® Core™ i9-8950HK Processor 2.9 GHz (12M Cach', '16GB DDR4-2666 SO-DIMM x 4', '1TB 5400RPM 2.5\" SATA FireCuda SSHD 512GB *3 M.2 N', 'Wi-Fi 5 (802.11ac)+Bluetooth 5.0 (Dual band) 2*2 (*BT version may change with OS upgrades.)', '55WHrs, 4S1P, 4-cell Li-ion', '38.4(W) x 26.2(D) x 1.75 ~ 1.99(H) cm; 15.12(W) x 10.31(D) x 0.70 ~ 0.78(H) inches', 44),
(28, '15.6-inch FHD (1920 x 1080) 16:9 anti-glare display sRGB: 100% Adobe: 75.35% Refresh Rate: 144Hz Response Time: 3ms IPS-level G-Sync', ' NVIDIA® GeForce® GTX1050 4GB GDDR6', ' 1x Headphone out, 1x MIC in 1x HDMI 2.0 1x RJ45 LAN Port 1x USB 3.2 Gen 1 Type-A 1x USB 3.2 Gen 2 Type-C support displayport / G-SYNC 1x Type C USB 3.2 Gen 2 with Display Port and Thunderbolt™ 3 3x USB 3.2 Gen 2 Type-A 1x 2 ', ' Windows 10 Home (ASUS recommends Windows 10 Pro f', ' not available', '720P HD', 'Intel® Core™ i7-8750H Processor 2.2 GHz (9M Cache,', '16GB DDR4-2666 SO-DIMM x 4', '1TB 5400RPM 2.5\" SATA FireCuda SSHD 512GB *3 M.2 N', 'Wi-Fi 5 (802.11ac)+Bluetooth 5.0 (Dual band) 2*2 (*BT version may change with OS upgrades.)', '96WHrs, 4S2P, 8-cell Li-ion', ' 41.0 x 32.0 x 2.99 ~ 2.99 cm; 161.42 x 12.60 x 1.18 ~ 1.18 inches', 45),
(29, '15.6-inch FHD (1920 x 1080) 16:9 anti-glare display sRGB: 100% Adobe: 75.35% Pantone Validated Refresh Rate: 144Hz Response Time: 3ms IPS-level', 'NVIDIA® GeForce RTX™ 2070  8GB GDDR6', '1x Headphone out, 1x MIC in 1x HDMI 2.0 1x Mini DisplayPort 1.4 1x RJ45 LAN Port 1x Type C USB 3.2 Gen 2 with Display Port and Thunderbolt™ 3 3x USB 3.2 Gen 2 Type-A 1x 2 in 1 Card reader SD/MMC', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for', ' not available', '720P HD', 'Intel® Core™ i7-9750H Processor 2.6 GHz (12M Cache', '8GB DDR4 on board 16GB DDR4-2666 SO-DIMM', '1TB M.2 NVMe™ PCIe® 3.0 Performance SSD', 'not available', '60WHrs, 4S1P, 4-cell Li-ion', '36.0 x 26.8 x 1.53 ~ 1.61 cm; 14.17 x 10.55 x 0.60 ~ 0.63 inches', 46),
(31, '17.3-inch FHD (1920 x 1080) 16:9 anti-glare display sRGB: 100% Adobe: 75.35% Refresh Rate: 144Hz Response Time: 3ms IPS-level G-Sync', ' NVIDIA® GeForce® GTX1060 6GB GDDR5', '1x Headphone out, 1x MIC in 1x HDMI 2.0 1x Mini DisplayPort 1.4 1x RJ45 LAN Port 1x Type C USB 3.2 Gen 2 with Display Port and Thunderbolt™ 3 3x USB 3.2 Gen 2 Type-A 1x 2 in 1 Card reader SD/MMC', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for', ' not available', '720P HD', ' Intel® Core™ i9-9980HK Processor 2.4 GHz (16M Cac', '8GB DDR4 on board 16GB DDR4-2666 SO-DIMM', '256GB M.2 NVMe™ PCIe® 3.0 x4 SSD (HyperDrive) 1TB ', 'Wi-Fi 5 (802.11ac)+Bluetooth 5.0 (Dual band) 2*2 (*BT version may change with OS upgrades.)', '60WHrs, 4S1P, 4-cell Li-ion', '36.0 x 26.8 x 1.53 ~ 1.61 cm; 14.17 x 10.55 x 0.60 ~ 0.63 inches', 47),
(32, '17.3-inch FHD (1920 x 1080) 16:9 anti-glare display sRGB: 100% Adobe: 75.35% Refresh Rate: 144Hz Response Time: 3ms IPS-level G-Sync', 'NVIDIA® GeForce RTX™ 2070  8GB GDDR6', '1x Headphone out, 1x MIC in 1x HDMI 2.0 1x Mini DisplayPort 1.4 1x RJ45 LAN Port 1x Type C USB 3.2 Gen 2 with Display Port and Thunderbolt™ 3 3x USB 3.2 Gen 2 Type-A 1x 2 in 1 Card reader SD/MMC', ' Windows 10 Home (ASUS recommends Windows 10 Pro f', ' not available', '720P HD', 'Intel® Core™ i7-10875H Processor 2.3 GHz (16M Cach', '16GB DDR4 on board 16GB DDR4-3200 SO-DIMM(for i7-1', '1TB M.2 NVMe™ PCIe® 3.0 Performance SSD', '1x Headphone out, 1x MIC in 1x HDMI 2.0 1x RJ45 LAN Port 1x USB 3.2 Gen 1 Type-A 1x USB 3.2 Gen 2 Type-C support displayport / G-SYNC 1x Type C USB 3.2 Gen 2 with Display Port and Thunderbolt™ 3 3x USB 3.2 Gen 2 Type-A 1x 2 i', '96WHrs, 4S2P, 8-cell Li-ion', '39.9 x 27.2 x 1.87 ~ 1.87 cm; 15.70 x 10.71 x 0.74 ~ 0.74 inches', 48),
(33, '15.6-inch FHD (1920 x 1080) 16:9 anti-glare display sRGB: 100% Adobe: 75.35% Pantone Validated Refresh Rate: 144Hz Response Time: 3ms IPS-level', 'NVIDIA® GeForce RTX™ 2060 6GB GDDR6', ' 1x Headphone out, 1x MIC in 1x HDMI 2.0 1x RJ45 LAN Port 1x USB 3.2 Gen 1 Type-A 1x USB 3.2 Gen 2 Type-C support displayport / G-SYNC 1x Type C USB 3.2 Gen 2 with Display Port and Thunderbolt™ 3 3x USB 3.2 Gen 2 Type-A 1x 2 ', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for', ' not available', '720P HD', 'Intel® Core™ i9-8950HK Processor 2.9 GHz (12M Cach', '16GB DDR4-2666 SO-DIMM x 4', '1TB 5400RPM 2.5\" SATA FireCuda SSHD 512GB *3 M.2 N', '1x Headphone out, 1x MIC in 1x HDMI 2.0 1x RJ45 LAN Port 1x USB 3.2 Gen 1 Type-A 1x USB 3.2 Gen 2 Type-C support displayport / G-SYNC 1x Type C USB 3.2 Gen 2 with Display Port and Thunderbolt™ 3 3x USB 3.2 Gen 2 Type-A 1x 2 i', '60WHrs, 4S1P, 4-cell Li-ion', '32.4 x 22.0 x 1.99 ~ 1.99 cm; 12.77 x 8.66 x 0.78 ~ 0.78 inches', 49);

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
(37, 'ROG G703  G703GX-E5025R', 'images/product/h525 (1).png', 250000000, '0', 'ROG SERIES', 999, 'laptop', 'laptop'),
(38, 'ROG G703  G703GXR-EV025R', 'images/product/h525 (2).png', 26000000, '0', 'ROG SERIES', 999, 'laptop', 'laptop'),
(39, 'ROG Mothership GZ700  GZ700GX-AD027T', 'images/product/h525.png', 26700000, '0', 'ROG SERIES', 999, 'laptop', 'laptop'),
(40, 'ROG Zephyrus M GM501', 'images/product/h525 (4).png', 27000000, '0', 'ROG Zephyrus', 999, 'laptop', 'laptop'),
(41, 'ROG Zephyrus G14 GA401  GA401II-HE177R', 'images/product/h526.png', 27000000, '0', 'ROG Zephyrus', 999, 'laptop', 'laptop'),
(42, 'ROG Zephyrus G14 GA401  GA401IU-HA182R', 'images/product/h526.png', 25500000, '0', 'ROG Zephyrus', 999, 'laptop', 'laptop'),
(43, 'ROG Zephyrus G14 GA401  GA401IV-HA258R', 'images/product/h526.png', 28000000, '0', 'ROG Zephyrus', 999, 'laptop', 'laptop'),
(44, 'ROG Zephyrus S GX531  GX531GX-ES047R', 'images/product/h525(8).png', 29000000, '0', 'ROG Zephyrus', 999, 'laptop', 'laptop'),
(45, 'ROG Zephyrus S GX531  GX531GXR-ES012R', 'images/product/h525 (4).png', 29000000, '0', 'ROG Zephyrus', 999, 'laptop', 'laptop'),
(46, 'ROG Zephyrus S GX531  GX531GWR-ES073R', 'images/product/h525 (3).png', 20000000, '0', 'ROG Zephyrus', 999, 'laptop', 'laptop'),
(47, 'ROG Zephyrus S17 GX701  GX701LXS-XS78', 'images/product/h525 (3).png', 25000000, '0', 'ROG Zephyrus', 999, 'laptop', 'laptop'),
(48, 'ROG Zephyrus S17 GX701  GX701LWS-HG052R', 'images/product/h525 (3).png', 21000000, '0', 'ROG Zephyrus', 999, 'laptop', 'laptop'),
(49, 'ROG Zephyrus S17 GX701  GX701LV-HG025R', 'images/product/h525 (3).png', 19000000, '0', 'ROG Zephyrus', 999, 'laptop', 'laptop');

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
  MODIFY `DetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `promotion`
--
ALTER TABLE `promotion`
  MODIFY `promotionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
