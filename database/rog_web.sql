-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 29, 2020 lúc 05:26 AM
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
(1, 'images/banner,background/background/banner__rog.jpg', ' ', '#');

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
  `OS` varchar(225) DEFAULT NULL,
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
(40, '17.3-inch,FHD (1920 x 1080) 16:9,sRGB: 100%.', 'NVIDIA® GeForce RTX™ 2080 8GB GDDR6.', '1x Headphone out, 1x MIC in 1x HDMI 2.0 ,1x Mini DisplayPort 1.4, 1x RJ45 LAN Port, 1x Type C USB 3.2 Gen 2 with Display Port and Thunderbolt™ 3, 3x USB 3.2 Gen 2 Type-A ,1x 2 in 1 Card reader SD/MMC.', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for', 'not availblie.', '720P HD.', 'Intel® Core™ i9-8950HK Processor 2.9 GHz (12M Cach', '16GB DDR4-2666 SO-DIMM x 4.', '1TB 5400RPM 2.5\" SATA FireCuda SSHD ,512GB *3 M.2 ', 'Wi-Fi 5 (802.11ac)+Bluetooth 5.0 (Dual band) 2*2 (*BT version may change with OS upgrades.).', '96WHrs, 4S2P, 8-cell Li-ion', '42.5 x 31.9 x 4.75 ~ 5.10 cm; 16.70 x 12.50 x 1.87 ~ 2.00 inches', 59),
(41, '17.3-inch FHD ,(1920 x 1080) 16:9, anti-glare display, sRGB: 100%, Adobe: 75.35%, Refresh Rate: 144Hz, Response Time: 3ms ,IPS-level, G-Sync.', 'NVIDIA® GeForce RTX™ 2080 8GB GDDR6.', '1x HDMI 2.0,Port and Thunderbolt™ 3,1x 2 in 1 Card reader SD/MMC,1x Headphone out, 1x MIC in', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for', 'not available', '720P HD', 'Intel® Core™ i9-9980HK Processor 2.4 GHz (16M Cach', '16GB DDR4-2666 SO-DIMM x 4', '1TB 5400RPM 2.5\" SATA FireCuda SSHD, 512GB *3 M.2 ', 'Wi-Fi 5 (802.11ac)+Bluetooth 5.0 (Dual band) 2*2 ,(*BT version may change with OS upgrades.).', '96WHrs, 4S2P, 8-cell Li-ion', '42.5 x 31.9 x 4.75 ~ 5.10 cm, 16.70 x 12.50 x 1.87 ~ 2.00 inches,', 60),
(42, '17.3-inch,4K UHD (3840 x 2160) 16:9,sRGB: 132.7,Refresh Rate: 60Hz', 'NVIDIA® GeForce RTX™ 2080 8GB GDDR6', ' 1x Headphone out, 1x MIC in ,1x HDMI 2.0 ,1x RJ45 LAN Port ,1x USB 3.2 Gen 1 Type-A ,1x USB 3.2 Gen 2 Type-C support displayport / G-SYNC, 1x Type C USB 3.2 Gen 2 with Display Port and Thunderbolt™ 3 ,3x USB 3.2 Gen 2 Type-A', 'Windows 10 Home (ASUS recommends Windows 10 Pro fo', 'not available', '720P HD', ' Intel® Core™ i9-9980HK Processor 2.4 GHz (16M Cac', ' 16GB DDR4-2666 SO-DIMM x 4', ' 512GB *3 M.2 NVMe™ PCIe® 3.0 SSD (RAID 0)  x 2 ,5', 'Intel Wi-Fi 6(Gig+)(802.11ax)+Bluetooth 5.0 (Dual band) 2*2;(*BT version may change with OS upgrades.) -RangeBoost', ' 90WHrs, 3S2P, 6-cell Li-ion', '41.0 x 32.0 x 2.99 ~ 2.99 cm; 161.42 x 12.60 x 1.18 ~ 1.18 inches', 61),
(43, ' 15.6-inch,FHD (1920 x 1080) 16:9,anti-glare display', ' NVIDIA® GeForce® GTX1060 6GB GDDR5', ' 1x Headphone out, 1x MIC in ,1x HDMI 2.0 ,1x RJ45 LAN Port ,1x USB 3.2 Gen 1 Type-A ,1x USB 3.2 Gen 2 Type-C support displayport / G-SYNC, 1x Type C USB 3.2 Gen 2 with Display Port and Thunderbolt™ 3 ,3x USB 3.2 Gen 2 Type-A', 'Windows 10 Home (ASUS recommends Windows 10 Pro fo', 'not available', ' 720P HD', ' Intel® Core™ i7-10750H Processor 2.2 GHz (9M Cach', ' 16GB DDR4-2666 SO-DIMM', ' 256GB M.2 NVMe™ PCIe® 3.0 x4 SSD (HyperDrive) 1TB', 'Wi-Fi 5 (802.11ac)+Bluetooth 5.0 (Dual band) 2*2 (*BT version may change with OS upgrades.)', '55WHrs, 4S1P, 4-cell Li-ion', ' 38.4(W) x 26.2(D) x 1.75 ~ 1.99(H) cm; 15.12(W) x 10.31(D) x 0.70 ~ 0.78(H) inches', 62),
(44, '14-inch,FHD (1920 x 1080) 16:9,sRGB: 100%,Adobe: 75.35%', 'NVIDIA® GeForce® GTX 1650 Ti 4GB GDDR6', '1x 3.5mm combo audio jack ,1x HDMI 2.0b, 1x USB 3.2 Gen 2 Type-C, 2x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 2 Type-C support displayport / power delivery / G-SYNC', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for', 'not available', ' Optional (Call to order: 1800.1000)', 'AMD Ryzen™ 7 4800HS Processor 2.9 GHz (8M Cache, u', '16GB DDR4 on board ,16GB DDR4-3200 SO-DIMM', '1TB M.2 NVMe™ PCIe® 3.0 SSD', 'Intel Wi-Fi 6(Gig+)(802.11ax)+Bluetooth 5.0 (Dual band) 2*2 (*BT version may change with OS upgrades.)', ' 76WHrs, 4S1P, 4-cell Li-ion', '32.4 x 22.0 x 1.99 ~ 1.99 cm; 12.77 x 8.66 x 0.78 ~ 0.78 inches', 63),
(45, '14-inch,FHD (1920 x 1080) 16:9,sRGB: 100%,Adobe: 75.35%', 'NVIDIA® GeForce® GTX 1650 Ti 4GB GDDR6', '1x 3.5mm combo audio jack ,1x HDMI 2.0b, 1x USB 3.2 Gen 2 Type-C, 2x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 2 Type-C support displayport / power delivery / G-SYNC', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for', 'not available', ' Optional (Call to order: 1800.1000)', 'AMD Ryzen™ 9 4900HS Processor 3.0 GHz (8M Cache, u', '16GB DDR4 on board ,16GB DDR4-3200 SO-DIMM', '1TB M.2 NVMe™ PCIe® 3.0 SSD', 'Intel Wi-Fi 6(Gig+)(802.11ax)+Bluetooth 5.0 (Dual band) 2*2 (*BT version may change with OS upgrades.)', ' 76WHrs, 4S1P, 4-cell Li-ion', '32.4 x 22.0 x 1.99 ~ 1.99 cm; 12.77 x 8.66 x 0.78 ~ 0.78 inches', 64),
(46, '14-inch,FHD (1920 x 1080) 16:9,sRGB: 100%,Adobe: 75.35%', 'NVIDIA® GeForce® GTX 1650 Ti 4GB GDDR6', '1x 3.5mm combo audio jack ,1x HDMI 2.0b, 1x USB 3.2 Gen 2 Type-C, 2x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 2 Type-C support displayport / power delivery / G-SYNC', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for', 'not available', ' Optional (Call to order: 1800.1000)', 'AMD Ryzen™ 9 4900HS Processor 3.0 GHz (8M Cache, u', '16GB DDR4 on board ,16GB DDR4-3200 SO-DIMM', '1TB M.2 NVMe™ PCIe® 3.0 SSD', 'Intel Wi-Fi 6(Gig+)(802.11ax)+Bluetooth 5.0 (Dual band) 2*2 (*BT version may change with OS upgrades.)', ' 76WHrs, 4S1P, 4-cell Li-ion', '32.4 x 22.0 x 1.99 ~ 1.99 cm; 12.77 x 8.66 x 0.78 ~ 0.78 inches', 65),
(47, '14-inch,FHD (1920 x 1080) 16:9,sRGB: 100%,Adobe: 75.35%', 'NVIDIA® GeForce® GTX 1660Ti with Max-Q Design 6GB GDDR6', '1x 3.5mm combo audio jack ,1x HDMI 2.0b, 1x USB 3.2 Gen 2 Type-C, 2x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 2 Type-C support displayport / power delivery / G-SYNC', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for', 'not available', ' Optional (Call to order: 1800.1000)', 'AMD Ryzen™ 9 4900HS Processor 3.0 GHz (8M Cache, u', '16GB DDR4 on board ,16GB DDR4-3200 SO-DIMM', '1TB M.2 NVMe™ PCIe® 3.0 SSD', 'Intel Wi-Fi 6(Gig+)(802.11ax)+Bluetooth 5.0 (Dual band) 2*2 (*BT version may change with OS upgrades.)', ' 76WHrs, 4S1P, 4-cell Li-ion', '32.4 x 22.0 x 1.79 ~ 1.79 cm; 12.77 x 8.66 x 0.70 ~ 0.70 inches', 66),
(48, '15.6-inch ,4K UHD (3840 x 2160) 16:9 ,anti-glare display sRGB: 132.70%, Adobe: 100%, Pantone Validated Refresh Rate: 60Hz, IPS-level G-Sync', 'NVIDIA® GeForce RTX™ 2070 Super 8GB GDDR6', '1x Headphone out, 1x MIC in, 1x HDMI 2.0b, 2x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 2 Type-A, 1x USB 3.2 Gen 2 Type-C support displayport / power delivery / G-SYNC / Thunderbolt™ 3, 1x RJ45 LAN Port,', '(ASUS recommends Windows 10 Pro for business)', 'not available', ' Optional (Call to order: 1800.1000)', 'Intel® Core™ i9-10980HK Processor 2.4 GHZ (16M Cac', '16GB DDR4 on board 16GB DDR4-3200 SO-DIMM(for i7-1', '1TB + 1TB M.2 NVMe™ PCIe® 3.0 Performance RAID0 SS', 'Wi-Fi 5 (802.11ac)+Bluetooth 5.0 (Dual band) 2*2 (*BT version may change with OS upgrades.)', ' 90WHrs, 4S1P, 4-cell Li-ion', '36.0 x 26.8 x 2.09 ~ 2.09 cm; 14.17 x 10.56 x 0.82 ~ 0.82 inches', 67),
(49, '  15.6-inch, 4K UHD (3840 x 2160) 16:9, anti-glare display, sRGB: 132.70%, Adobe: 100%, Pantone Validated, Refresh Rate:60Hz, IPS-level, G-Sync,', 'NVIDIA® GeForce RTX™ 2080 Super  8GB GDDR6', '1x Headphone out, 1x MIC in, 1x HDMI 2.0b, 2x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 2 Type-A, 1x USB 3.2 Gen 2 Type-C support displayport / power delivery / G-SYNC / Thunderbolt™ 3, 1x RJ45 LAN Port,', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for business)', 'not available', 'Optional (Call to order: 1800.1000)', 'Intel® Core™ i9-10980HK Processor 2.4 GHZ (16M Cac', '16GB DDR4 on board ,16GB DDR4-3200 SO-DIMM', '1TB + 1TB M.2 NVMe™ PCIe® 3.0 Performance RAID0 SS', 'Wi-Fi 5 (802.11ac)+Bluetooth 5.0 (Dual band) 2*2 (*BT version may change with OS upgrades.)', '90WHrs, 4S1P, 4-cell Li-ion', '36.0 x 26.8 x 2.09 ~ 2.09 cm; 14.17 x 10.56 x 0.82 ~ 0.82 inches', 68),
(50, ' 15.6-inch, 4K UHD (3840 x 2160) 16:9, anti-glare display, sRGB: 132.70%, Adobe: 100%, Pantone Validated, Refresh Rate:60Hz, IPS-level, G-Sync,', 'NVIDIA® GeForce RTX™ 2070 Super 8GB GDDR6', ' 1x Headphone out, 1x MIC in, 1x HDMI 2.0b, 2x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 2 Type-A, 1x USB 3.2 Gen 2 Type-C support displayport / power delivery / G-SYNC / Thunderbolt™ 3, 1x RJ45 LAN Port,', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for business)', 'not available', 'Optional (Call to order: 1800.1000)', 'Intel® Core™ i7-10875H Processor 2.3 GHz (16M Cach', '16GB DDR4 on board ,16GB DDR4-3200 SO-DIMM', ' 1TB + 1TB M.2 NVMe™ PCIe® 3.0 Performance RAID0 S', 'Intel Wi-Fi 6(Gig+)(802.11ax)+Bluetooth 5.1 (Dual band) 2*2;(*BT version may change with OS upgrades.) -RangeBoost', '66WHrs, 4S1P, 4-cell Li-ion', '36.0 x 26.8 x 2.09 ~ 2.09 cm; 14.17 x 10.56 x 0.82 ~ 0.82 inches', 69),
(51, '  15.6-inch, 4K UHD (3840 x 2160) 16:9, anti-glare display, sRGB: 132.70%, Adobe: 100%, Pantone Validated, Refresh Rate:60Hz, IPS-level, G-Sync,', 'NVIDIA® GeForce RTX™ 2070 Super 8GB GDDR6', ' 1x Headphone out, 1x MIC in, 1x HDMI 2.0b, 2x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 2 Type-A, 1x USB 3.2 Gen 2 Type-C support displayport / power delivery / G-SYNC / Thunderbolt™ 3, 1x RJ45 LAN Port,', ' Windows 10 Pro (ASUS recommends Windows 10 Pro for business)', 'not available   ', 'Optional (Call to order: 1800.1000)', 'Intel® Core™ i7-10875H Processor 2.3 GHz (16M Cach', '16GB DDR4 on board ,16GB DDR4-3200 SO-DIMM', '1TB + 1TB M.2 NVMe™ PCIe® 3.0 Performance RAID0 SS', 'Intel Wi-Fi 6(Gig+)(802.11ax)+Bluetooth 5.1 (Dual band) 2*2;(*BT version may change with OS upgrades.) -RangeBoost', '48WHrs, 3S1P, 3-cell Li-ion', '36.0 x 26.8 x 2.09 ~ 2.09 cm; 14.17 x 10.56 x 0.82 ~ 0.82 inches', 70),
(52, ' 15.6-inch, 4K UHD (3840 x 2160) 16:9, anti-glare display, sRGB: 132.70%, Adobe: 100%, Pantone Validated, Refresh Rate:60Hz, IPS-level, G-Sync,', 'NVIDIA® GeForce RTX™ 2070 Super 8GB GDDR6', '1x Headphone out, 1x MIC in, 1x HDMI 2.0b, 2x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 2 Type-A, 1x USB 3.2 Gen 2 Type-C support displayport / power delivery / G-SYNC / Thunderbolt™ 3, 1x RJ45 LAN Port,', ' Windows 10 Pro (ASUS recommends Windows 10 Pro for business)', 'not available', 'Optional (Call to order: 1800.1000)', 'Intel® Core™ i7-10875H Processor 2.3 GHz (16M Cach', '16GB DDR4 on board ,16GB DDR4-3200 SO-DIMM', ' 1TB + 1TB M.2 NVMe™ PCIe® 3.0 Performance RAID0 S', 'Intel Wi-Fi 6(Gig+)(802.11ax)+Bluetooth 5.1 (Dual band) 2*2;(*BT version may change with OS upgrades.) -RangeBoost', '66WHrs, 4S1P, 4-cell Li-ion', '36.0 x 26.8 x 2.09 ~ 2.09 cm; 14.17 x 10.56 x 0.82 ~ 0.82 inches', 71),
(53, '17.3-inch, 4K UHD (3840 x 2160) 16:9, anti-glare display, sRGB: 132.70%, Adobe: 100%, Pantone Validated, Refresh Rate:60Hz, IPS-level, G-Sync,', 'NVIDIA® GeForce RTX™ 2060 6GB GDDR6', '1x Headphone out, 1x MIC in, 1x HDMI 2.0b, 2x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 2 Type-A, 1x USB 3.2 Gen 2 Type-C support displayport / power delivery / G-SYNC / Thunderbolt™ 3, 1x RJ45 LAN Port,', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for business)', 'not available', 'Optional (Call to order: 1800.1000)', 'Intel® Core™ i9-9880H Processor 2.3GHz (16M Cache,', '16GB DDR4 on board ,16GB DDR4-3200 SO-DIMM', ' 1TB + 1TB M.2 NVMe™ PCIe® 3.0 Performance RAID0 S', 'Intel Wi-Fi 6(Gig+)(802.11ax)+Bluetooth 5.1 (Dual band) 2*2;(*BT version may change with OS upgrades.) -RangeBoost', '90WHrs, 4S1P, 4-cell Li-ion', '39.9 x 29.3 x 2.62 ~ 2.62 cm; 15.74 x 11.55 x 1.03 ~ 1.03 inches', 72),
(54, '17.3-inch, 4K UHD (3840 x 2160) 16:9, anti-glare display, sRGB: 132.70%, Adobe: 100%, Pantone Validated, Refresh Rate:60Hz, IPS-level, G-Sync,', 'NVIDIA® GeForce RTX™ 2060 6GB GDDR6', '1x Headphone out, 1x MIC in, 1x HDMI 2.0b, 2x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 2 Type-A, 1x USB 3.2 Gen 2 Type-C support displayport / power delivery / G-SYNC / Thunderbolt™ 3, 1x RJ45 LAN Port,', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for business)', 'not available', 'Optional (Call to order: 1800.1000)', 'Intel® Core™ i9-9880H Processor 2.3GHz (16M Cache,', '16GB DDR4 on board ,16GB DDR4-3200 SO-DIMM', ' 1TB + 1TB M.2 NVMe™ PCIe® 3.0 Performance RAID0 S', 'Intel Wi-Fi 6(Gig+)(802.11ax)+Bluetooth 5.1 (Dual band) 2*2;(*BT version may change with OS upgrades.) -RangeBoost', '90WHrs, 4S1P, 4-cell Li-ion', '39.9 x 29.3 x 2.62 ~ 2.62 cm; 15.74 x 11.55 x 1.03 ~ 1.03 inches', 73),
(55, '17.3-inch, 4K UHD (3840 x 2160) 16:9, anti-glare display, sRGB: 132.70%, Adobe: 100%, Pantone Validated, Refresh Rate:60Hz, IPS-level, G-Sync,', 'NVIDIA® GeForce RTX™ 2060 6GB GDDR6', '1x Headphone out, 1x MIC in, 1x HDMI 2.0b, 2x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 2 Type-A, 1x USB 3.2 Gen 2 Type-C support displayport / power delivery / G-SYNC / Thunderbolt™ 3, 1x RJ45 LAN Port,', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for business)', 'not available', 'Optional (Call to order: 1800.1000)', 'Intel® Core™ i9-9880H Processor 2.3GHz (16M Cache,', '16GB DDR4 on board ,16GB DDR4-3200 SO-DIMM', ' 1TB + 1TB M.2 NVMe™ PCIe® 3.0 Performance RAID0 S', 'Intel Wi-Fi 6(Gig+)(802.11ax)+Bluetooth 5.1 (Dual band) 2*2;(*BT version may change with OS upgrades.) -RangeBoost', '90WHrs, 4S1P, 4-cell Li-ion', '39.9 x 29.3 x 2.62 ~ 2.62 cm; 15.74 x 11.55 x 1.03 ~ 1.03 inches', 74),
(56, '17.3-inch, 4K UHD (3840 x 2160) 16:9, anti-glare display, sRGB: 132.70%, Adobe: 100%, Pantone Validated, Refresh Rate:60Hz, IPS-level, G-Sync,', 'NVIDIA® GeForce RTX™ 2060 6GB GDDR6', '1x Headphone out, 1x MIC in, 1x HDMI 2.0b, 2x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 2 Type-A, 1x USB 3.2 Gen 2 Type-C support displayport / power delivery / G-SYNC / Thunderbolt™ 3, 1x RJ45 LAN Port,', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for business)', 'not available', 'Optional (Call to order: 1800.1000)', 'Intel® Core™ i9-9880H Processor 2.3GHz (16M Cache,', '16GB DDR4 on board ,16GB DDR4-3200 SO-DIMM', ' 1TB + 1TB M.2 NVMe™ PCIe® 3.0 Performance RAID0 S', 'Intel Wi-Fi 6(Gig+)(802.11ax)+Bluetooth 5.1 (Dual band) 2*2;(*BT version may change with OS upgrades.) -RangeBoost', '90WHrs, 4S1P, 4-cell Li-ion', '39.9 x 29.3 x 2.62 ~ 2.62 cm; 15.74 x 11.55 x 1.03 ~ 1.03 inches', 75),
(57, '17.3-inch, 4K UHD (3840 x 2160) 16:9, anti-glare display, sRGB: 132.70%, Adobe: 100%, Pantone Validated, Refresh Rate:60Hz, IPS-level, G-Sync,', 'NVIDIA® GeForce RTX™ 2060 6GB GDDR6', '1x Headphone out, 1x MIC in, 1x HDMI 2.0b, 2x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 2 Type-A, 1x USB 3.2 Gen 2 Type-C support displayport / power delivery / G-SYNC / Thunderbolt™ 3, 1x RJ45 LAN Port,', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for business)', 'not available', 'Optional (Call to order: 1800.1000)', 'Intel® Core™ i9-9880H Processor 2.3GHz (16M Cache,', '16GB DDR4 on board ,16GB DDR4-3200 SO-DIMM', ' 1TB + 1TB M.2 NVMe™ PCIe® 3.0 Performance RAID0 S', 'Intel Wi-Fi 6(Gig+)(802.11ax)+Bluetooth 5.1 (Dual band) 2*2;(*BT version may change with OS upgrades.) -RangeBoost', '90WHrs, 4S1P, 4-cell Li-ion', '39.9 x 29.3 x 2.62 ~ 2.62 cm; 15.74 x 11.55 x 1.03 ~ 1.03 inches', 76),
(58, '17.3-inch, 4K UHD (3840 x 2160) 16:9, anti-glare display, sRGB: 132.70%, Adobe: 100%, Pantone Validated, Refresh Rate:60Hz, IPS-level, G-Sync,', 'NVIDIA® GeForce RTX™ 2060 6GB GDDR6', '1x Headphone out, 1x MIC in, 1x HDMI 2.0b, 2x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 2 Type-A, 1x USB 3.2 Gen 2 Type-C support displayport / power delivery / G-SYNC / Thunderbolt™ 3, 1x RJ45 LAN Port,', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for business)', 'not available', 'Optional (Call to order: 1800.1000)', 'Intel® Core™ i9-9880H Processor 2.3GHz (16M Cache,', '16GB DDR4 on board ,16GB DDR4-3200 SO-DIMM', ' 1TB + 1TB M.2 NVMe™ PCIe® 3.0 Performance RAID0 S', 'Intel Wi-Fi 6(Gig+)(802.11ax)+Bluetooth 5.1 (Dual band) 2*2;(*BT version may change with OS upgrades.) -RangeBoost', '90WHrs, 4S1P, 4-cell Li-ion', '39.9 x 29.3 x 2.62 ~ 2.62 cm; 15.74 x 11.55 x 1.03 ~ 1.03 inches', 77),
(59, '17.3-inch, 4K UHD (3840 x 2160) 16:9, anti-glare display, sRGB: 132.70%, Adobe: 100%, Pantone Validated, Refresh Rate:60Hz, IPS-level, G-Sync,', 'NVIDIA® GeForce RTX™ 2060 6GB GDDR6', '1x Headphone out, 1x MIC in, 1x HDMI 2.0b, 2x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 2 Type-A, 1x USB 3.2 Gen 2 Type-C support displayport / power delivery / G-SYNC / Thunderbolt™ 3, 1x RJ45 LAN Port,', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for business)', 'not available', 'Optional (Call to order: 1800.1000)', 'Intel® Core™ i9-9880H Processor 2.3GHz (16M Cache,', '16GB DDR4 on board ,16GB DDR4-3200 SO-DIMM', ' 1TB + 1TB M.2 NVMe™ PCIe® 3.0 Performance RAID0 S', 'Intel Wi-Fi 6(Gig+)(802.11ax)+Bluetooth 5.1 (Dual band) 2*2;(*BT version may change with OS upgrades.) -RangeBoost', '90WHrs, 4S1P, 4-cell Li-ion', '39.9 x 29.3 x 2.62 ~ 2.62 cm; 15.74 x 11.55 x 1.03 ~ 1.03 inches', 80),
(60, '17.3-inch, 4K UHD (3840 x 2160) 16:9, anti-glare display, sRGB: 132.70%, Adobe: 100%, Pantone Validated, Refresh Rate:60Hz, IPS-level, G-Sync,', 'NVIDIA® GeForce RTX™ 2060 6GB GDDR6', '1x Headphone out, 1x MIC in, 1x HDMI 2.0b, 2x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 2 Type-A, 1x USB 3.2 Gen 2 Type-C support displayport / power delivery / G-SYNC / Thunderbolt™ 3, 1x RJ45 LAN Port,', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for business)', 'not available', 'Optional (Call to order: 1800.1000)', 'Intel® Core™ i9-9880H Processor 2.3GHz (16M Cache,', '16GB DDR4 on board ,16GB DDR4-3200 SO-DIMM', ' 1TB + 1TB M.2 NVMe™ PCIe® 3.0 Performance RAID0 S', 'Intel Wi-Fi 6(Gig+)(802.11ax)+Bluetooth 5.1 (Dual band) 2*2;(*BT version may change with OS upgrades.) -RangeBoost', '90WHrs, 4S1P, 4-cell Li-ion', '39.9 x 29.3 x 2.62 ~ 2.62 cm; 15.74 x 11.55 x 1.03 ~ 1.03 inches', 81),
(61, '17.3-inch, 4K UHD (3840 x 2160) 16:9, anti-glare display, sRGB: 132.70%, Adobe: 100%, Pantone Validated, Refresh Rate:60Hz, IPS-level, G-Sync,', 'NVIDIA® GeForce RTX™ 2060 6GB GDDR6', '1x Headphone out, 1x MIC in, 1x HDMI 2.0b, 2x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 2 Type-A, 1x USB 3.2 Gen 2 Type-C support displayport / power delivery / G-SYNC / Thunderbolt™ 3, 1x RJ45 LAN Port,', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for business)', 'not available', 'Optional (Call to order: 1800.1000)', 'Intel® Core™ i9-9880H Processor 2.3GHz (16M Cache,', '16GB DDR4 on board ,16GB DDR4-3200 SO-DIMM', ' 1TB + 1TB M.2 NVMe™ PCIe® 3.0 Performance RAID0 S', 'Intel Wi-Fi 6(Gig+)(802.11ax)+Bluetooth 5.1 (Dual band) 2*2;(*BT version may change with OS upgrades.) -RangeBoost', '90WHrs, 4S1P, 4-cell Li-ion', '39.9 x 29.3 x 2.62 ~ 2.62 cm; 15.74 x 11.55 x 1.03 ~ 1.03 inches', 82),
(62, '17.3-inch, 4K UHD (3840 x 2160) 16:9, anti-glare display, sRGB: 132.70%, Adobe: 100%, Pantone Validated, Refresh Rate:60Hz, IPS-level, G-Sync,', 'NVIDIA® GeForce RTX™ 2060 6GB GDDR6', '1x Headphone out, 1x MIC in, 1x HDMI 2.0b, 2x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 2 Type-A, 1x USB 3.2 Gen 2 Type-C support displayport / power delivery / G-SYNC / Thunderbolt™ 3, 1x RJ45 LAN Port,', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for business)', 'not available', 'Optional (Call to order: 1800.1000)', 'Intel® Core™ i9-9880H Processor 2.3GHz (16M Cache,', '16GB DDR4 on board ,16GB DDR4-3200 SO-DIMM', ' 1TB + 1TB M.2 NVMe™ PCIe® 3.0 Performance RAID0 S', 'Intel Wi-Fi 6(Gig+)(802.11ax)+Bluetooth 5.1 (Dual band) 2*2;(*BT version may change with OS upgrades.) -RangeBoost', '90WHrs, 4S1P, 4-cell Li-ion', '39.9 x 29.3 x 2.62 ~ 2.62 cm; 15.74 x 11.55 x 1.03 ~ 1.03 inches', 83),
(63, '17.3-inch, 4K UHD (3840 x 2160) 16:9, anti-glare display, sRGB: 132.70%, Adobe: 100%, Pantone Validated, Refresh Rate:60Hz, IPS-level, G-Sync,', 'NVIDIA® GeForce RTX™ 2060 6GB GDDR6', '1x Headphone out, 1x MIC in, 1x HDMI 2.0b, 2x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 2 Type-A, 1x USB 3.2 Gen 2 Type-C support displayport / power delivery / G-SYNC / Thunderbolt™ 3, 1x RJ45 LAN Port,', 'Windows 10 Pro (ASUS recommends Windows 10 Pro for business)', 'not available', 'Optional (Call to order: 1800.1000)', 'Intel® Core™ i9-9880H Processor 2.3GHz (16M Cache,', '16GB DDR4 on board ,16GB DDR4-3200 SO-DIMM', ' 1TB + 1TB M.2 NVMe™ PCIe® 3.0 Performance RAID0 S', 'Intel Wi-Fi 6(Gig+)(802.11ax)+Bluetooth 5.1 (Dual band) 2*2;(*BT version may change with OS upgrades.) -RangeBoost', '90WHrs, 4S1P, 4-cell Li-ion', '39.9 x 29.3 x 2.62 ~ 2.62 cm; 15.74 x 11.55 x 1.03 ~ 1.03 inches', 84);

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
(59, 'ROG G703  G703GX-E5025R', 'images/product/h525 (1).png', 17000000, '0', 'ROG SERIES', 999, 'laptop', 'laptop'),
(60, 'ROG G703  G703GXR-EV025R', 'images/product/h525 (1).png', 19000000, '0', 'ROG SERIES', 999, 'laptop', 'laptop'),
(61, 'ROG Mothership GZ700  GZ700GX-AD027T', 'images/product/h525.png', 22000000, '0', 'ROG SERIES', 999, 'laptop', 'laptop'),
(62, 'ROG Zephyrus M GM501GM-WS74', 'images/product/h456.png', 50000000, '0', 'ROG Zephyrus', 999, 'laptop', 'latop'),
(63, 'ROG Zephyrus G14 GA401  GA401IH-HE072T', 'images/product/h525 (7).png', 29000000, '0', 'ROG Zephyrus', 999, 'laptop', 'laptop'),
(64, 'ROG Zephyrus G14 GA401  GA401II-HE177R', 'images/product/h525 (7).png', 18000000, '0', 'ROG Zephyrus', 999, 'laptop', 'laptop'),
(65, 'ROG Zephyrus G14 GA401  GA401IU-HA182R', 'images/product/h526.png', 18000000, '0', 'ROG Zephyrus', 999, 'laptop', 'laptop'),
(66, 'ROG Zephyrus G14 GA401  GA401IV-HA258R', 'images/product/h526.png', 18000000, '0', 'ROG Zephyrus', 999, 'laptop', 'laptop'),
(67, 'ROG Zephyrus Duo 15 GX550  GX550LXS-HC021R', 'images/product/h525 (6).png', 25000000, '0', 'ROG Zephyrus', 999, 'laptop', 'laptop'),
(68, 'ROG Zephyrus Duo 15 GX550  GX550LWS-HC099T', 'images/product/h525 (6).png', 25000000, '0', 'ROG Zephyrus', 999, 'laptop', 'laptop'),
(69, 'ROG Strix G15 G512  G512LWS-AZ046R', 'images/product/h525 (14).png', 26000000, '0', 'ROG Strix', 999, 'laptop', 'laptop'),
(70, 'ROG Strix G15 G512  G512LWS-AZ047R', 'images/product/h525 (8).png', 27800000, '0', 'ROG Strix', 999, 'laptop', 'laptop'),
(71, 'ROG Strix G15 G512  G512LW-AZ107R', 'images/product/h525 (11).png', 16000000, '0', 'ROG Strix', 999, 'laptop', 'laptop'),
(72, 'ROG Strix Hero III G731  G731GW-H6289R', 'images/product/h525 (9).png', 19990000, '0', 'ROG Strix', 999, 'laptop', 'laptop'),
(73, 'ROG Strix Hero III G731  G731GV-EV240R', 'images/product/h525 (3).png', 29990000, '0', 'ROG Strix', 999, 'laptop', 'laptop'),
(74, 'ROG Strix Hero III G731  G731GU-EV286R', 'images/product/h525 (2).png', 29990000, '0', 'ROG Strix', 999, 'laptop', 'laptop'),
(75, 'ROG Strix SCAR 15 G532  G532LWS-HF122R', 'images/product/h525 (4).png', 25990000, '0', 'ROG Strix', 999, 'laptop', 'laptop'),
(76, 'ROG Strix SCAR 15 G532  G532LW-AZ087R', 'images/product/h525 (4).png', 25990000, '0', 'ROG Strix', 999, 'laptop', 'laptop'),
(77, 'ROG Strix SCAR 15 G532  G532LV-AZ074R', 'images/product/h525 (15).png', 25990000, '0', 'ROG Strix', 999, 'laptop', 'laptop'),
(78, 'ROG Strix G15 G512  G512LWS-AZ046R', 'images/product/h525 (9).png', 25990000, '0', 'ROG Strix', 999, 'laptop', 'laptop'),
(79, 'ROG Strix G15 G512  G512LWS-AZ047R', 'images/product/h525 (10).png', 25990000, '0', 'ROG Strix', 999, 'laptop', 'laptop'),
(80, 'ROG Strix G15 G512  G512LWS-AZ049R', 'images/product/h525 (8).png', 25990000, '0', 'ROG Strix', 999, 'laptop', 'laptop'),
(81, 'ROG Strix G15 G512  G512LW-AZ104R', 'images/product/h525 (8).png', 25990000, '0', 'ROG Strix', 999, 'laptop', 'laptop'),
(82, 'ROG Zephyrus M15 GU502  GU502LW-HC135R', 'images/product/h525 (4).png', 25990000, '0', 'ROG Zephyrus', 999, 'laptop', 'laptop'),
(83, 'ROG Zephyrus M15 GU502  GU502LV-HC099R', 'images/product/h525 (4).png', 25990000, '0', 'ROG Zephyrus', 999, 'laptop', 'laptop'),
(84, 'ROG Zephyrus M15 GU502  GU502LU-HC098R', 'images/product/h525 (4).png', 25990000, '0', 'ROG Zephyrus', 999, 'laptop', 'laptop');

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

--
-- Đang đổ dữ liệu cho bảng `promotion`
--

INSERT INTO `promotion` (`promotionID`, `promo1`, `promo2`, `promo3`, `promo4`, `promo5`, `productID`) VALUES
(18, 'mua kèm bản quyền Microsoft 365 Personal(giảm giá 600.000đ)', 'mua balo rog khi kèm theo (ưu đãi được giảm 50%).', 'được tặng phiếu mua hàng lên đến 1.000.000đ.', 'tặng chuột không dây ROG.', '', 59),
(19, 'tặng chuột không dây ROG.', 'được tặng phiếu mua hàng lên đến 1.000.000đ.', 'mua balo rog khi kèm theo (ưu đãi được giảm 50%).', 'mua kèm bản quyền Microsoft 365 Personal (giảm giá 600.000đ).', '', 60),
(20, 'được tặng phiếu mua hàng lên đến 1.000.000đ.', 'mua kèm bản quyền Microsoft 365 Personal(giảm giá 600.000đ)', 'tặng chuột không dây ROG.', '', '', 61),
(21, 'mua balo rog khi kèm theo (ưu đãi được giảm 50%).', 'tặng chuột không dây ROG.', 'mua kèm bản quyền Microsoft 365 Personal(giảm giá 600.000đ)', 'tặng gói bảo hiểm một năm', '', 62),
(22, 'tặng chuột không dây ROG.', 'hỗ trợ mua gói bảo hiểm một năm (giảm 50%)', 'mua balo rog khi kèm theo (ưu đãi được giảm 50%).', 'tặng áo ROG (trị giá 120.000đ)', '', 63),
(23, 'mua balo rog khi kèm theo (ưu đãi được giảm 50%).', 'được tặng phiếu mua hàng lên đến 1.000.000đ.', 'tặng chuột không dây ROG.', 'tặng áo ROG (trị giá 120.000đ)', '', 64),
(24, 'mua balo rog khi kèm theo (ưu đãi được giảm 50%).', 'được tặng phiếu mua hàng lên đến 1.000.000đ.', 'tặng chuột không dây ROG.', 'tặng áo ROG (trị giá 120.000đ)', '', 65),
(25, 'tặng áo ROG (trị giá 120.000đ)', 'được tặng phiếu mua hàng lên đến 1.000.000đ.', 'mua balo rog khi kèm theo (ưu đãi được giảm 50%).', 'tặng chuột không dây ROG.', '', 66),
(26, 'tặng áo ROG (trị giá 120.000đ)', 'được tặng phiếu mua hàng lên đến 1.000.000đ.', '', '', '', 67),
(27, 'tặng chuột không dây ROG.                              ', 'tặng chuột không dây ROG.      ', 'mua kèm bản quyền Microsoft 365 Personal (giảm giá 600.000đ).                 ', 'tặng áo ROG (trị giá 120.000đ)', 'mua balo rog khi kèm theo (ưu đãi được giảm 50%).', 68),
(28, ' tặng chuột không dây ROG.', ' mua kèm bản quyền Microsoft 365 Personal (giảm giá 600.000đ).', 'tặng phiếu mua hàng lên đến 1.000.000đ', '', '', 69),
(29, 'tặng chuột không dây ROG.', 'mua balo rog khi kèm theo (ưu đãi được giảm 50%).', 'tặng áo ROG (trị giá 120.000đ)', 'tặng phiếu mua hàng lên đến 1.000.000đ', '', 70),
(30, 'tặng chuột không dây ROG.', 'tặng phiếu mua hàng lên đến 1.000.000đ', '', '', '', 71),
(31, 'tặng phiếu mua hàng lên đến 1.000.000đ', 'mua balo rog khi kèm theo (ưu đãi được giảm 50%).', 'tặng áo ROG (trị giá 120.000đ', '', '', 72),
(32, 'tặng phiếu mua hàng lên đến 1.000.000đ', 'mua balo rog khi kèm theo (ưu đãi được giảm 50%).', 'tặng áo ROG (trị giá 120.000đ', '', '', 73),
(33, 'tặng phiếu mua hàng lên đến 1.000.000đ', 'mua balo rog khi kèm theo (ưu đãi được giảm 50%).', 'tặng áo ROG (trị giá 120.000đ', '', '', 74),
(34, 'tặng phiếu mua hàng lên đến 1.000.000đ', 'mua balo rog khi kèm theo (ưu đãi được giảm 50%).', 'tặng áo ROG (trị giá 120.000đ', 'tặng chuột không dây ROG.', '', 75),
(35, 'tặng phiếu mua hàng lên đến 1.000.000đ', 'mua balo rog khi kèm theo (ưu đãi được giảm 50%).', 'tặng áo ROG (trị giá 120.000đ', 'tặng chuột không dây ROG.', '', 76),
(36, 'tặng phiếu mua hàng lên đến 1.000.000đ', 'mua balo rog khi kèm theo (ưu đãi được giảm 50%).', 'tặng áo ROG (trị giá 120.000đ', 'tặng chuột không dây ROG.', '', 77),
(37, 'tặng phiếu mua hàng lên đến 1.000.000đ', 'mua balo rog khi kèm theo (ưu đãi được giảm 50%).', 'tặng áo ROG (trị giá 120.000đ', 'tặng chuột không dây ROG.', '', 80),
(38, 'tặng phiếu mua hàng lên đến 1.000.000đ', 'mua balo rog khi kèm theo (ưu đãi được giảm 50%).', 'tặng áo ROG (trị giá 120.000đ', 'tặng chuột không dây ROG.', '', 81),
(39, 'tặng phiếu mua hàng lên đến 1.000.000đ', 'mua balo rog khi kèm theo (ưu đãi được giảm 50%).', 'tặng áo ROG (trị giá 120.000đ', 'tặng chuột không dây ROG.', '', 82),
(40, 'tặng phiếu mua hàng lên đến 1.000.000đ', 'mua balo rog khi kèm theo (ưu đãi được giảm 50%).', 'tặng áo ROG (trị giá 120.000đ', 'tặng chuột không dây ROG.', '', 83),
(41, 'tặng phiếu mua hàng lên đến 1.000.000đ', 'mua balo rog khi kèm theo (ưu đãi được giảm 50%).', 'tặng áo ROG (trị giá 120.000đ', 'tặng chuột không dây ROG.', '', 84);

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
(1, 'laptops', 'images/product/laptop.png', 'laptop/index.php'),
(2, 'motherboards', 'images/product/motherboard.png', '#'),
(3, 'graphics Cards', 'images/product/card.png', '#'),
(4, 'monitors', 'images/product/monitor.png', '#'),
(5, 'phones', 'images/product/phone.png', '#'),
(6, 'desktops', 'images/product/desktop.png', '#'),
(7, 'power supply units', 'images/product/power.png', '#'),
(8, 'cooling', 'images/product/cooling.png', '#'),
(9, 'networking', 'images/product/networking.png', '#'),
(10, 'keyboards', 'images/product/keyboard.png', '#'),
(11, 'Mice & Mouse Pads', 'images/product/mouse.png', '#'),
(12, 'Headsets & Audio', 'images/product/headsets&audio.png', '#'),
(13, 'cases', 'images/product/case.png', '#'),
(14, 'Apparel, Bags, & Gear', 'images/product/gear.png', '#'),
(15, 'Streaming Kits', 'images/product/streamingkit.png', '#'),
(16, 'Controllers', 'images/product/Controller.png', '#'),
(17, 'Power & Protection Gadgets', 'images/product/power.png', '#'),
(18, 'Storage', 'images/product/storage.png', '#');

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
  MODIFY `DetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `promotion`
--
ALTER TABLE `promotion`
  MODIFY `promotionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
