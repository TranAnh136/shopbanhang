-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 07, 2020 at 08:53 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doan`
--

-- --------------------------------------------------------

--
-- Table structure for table `cthd`
--

DROP TABLE IF EXISTS `cthd`;
CREATE TABLE IF NOT EXISTS `cthd` (
  `SOHD` int NOT NULL,
  `MASP` int NOT NULL,
  `SL` int NOT NULL,
  `THANHTIEN` double NOT NULL,
  `HINHANH` varchar(255) NOT NULL,
  PRIMARY KEY (`SOHD`,`MASP`),
  KEY `FK_CTHD_SP` (`MASP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cthd`
--

INSERT INTO `cthd` (`SOHD`, `MASP`, `SL`, `THANHTIEN`, `HINHANH`) VALUES
(9, 3, 1, 265000, 'Ao Hoodle Nu.jpg'),
(10, 3, 1, 265000, 'Ao Hoodle Nu.jpg'),
(11, 2, 1, 250000, 'ae4fc184bf01e573b7e1f73e1e1922c2.jpg_600x600q80.jpg'),
(11, 3, 2, 530000, 'Ao Hoodle Nu.jpg'),
(12, 3, 1, 265000, 'Ao Hoodle Nu.jpg'),
(13, 3, 3, 795000, 'Ao Hoodle Nu.jpg'),
(14, 1, 1, 250000, '1ee4fa62eeb3a309600189fde334883d.jpg'),
(15, 1, 1, 250000, '1ee4fa62eeb3a309600189fde334883d.jpg'),
(17, 2, 1, 250000, 'ae4fc184bf01e573b7e1f73e1e1922c2.jpg_600x600q80.jpg'),
(18, 1, 2, 500000, '1ee4fa62eeb3a309600189fde334883d.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
CREATE TABLE IF NOT EXISTS `hoadon` (
  `SOHD` int NOT NULL AUTO_INCREMENT,
  `NGHD` date NOT NULL,
  `MAKH` int DEFAULT NULL,
  `TRIGIA` double NOT NULL,
  `TINHTRANG` varchar(255) NOT NULL,
  `THANHTOAN` int NOT NULL,
  `GHICHU` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SOHD`),
  KEY `fk_HD_KH` (`MAKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`SOHD`, `NGHD`, `MAKH`, `TRIGIA`, `TINHTRANG`, `THANHTOAN`, `GHICHU`) VALUES
(1, '2020-07-01', NULL, 0, 'cho xu ly', 0, 'HCM'),
(2, '2020-07-01', NULL, 0, 'cho xu ly', 0, 'HCM'),
(3, '2020-07-02', NULL, 0, 'cho xu ly', 0, 'HCM'),
(4, '2020-07-02', NULL, 0, 'cho xu ly', 0, 'HCM'),
(5, '2020-07-03', NULL, 0, 'cho xu ly', 0, 'HCM'),
(6, '2020-07-03', NULL, 0, 'cho xu ly', 0, 'HCM'),
(7, '2020-07-03', 1, 0, 'cho xu ly', 0, 'Q3 TH HCM'),
(8, '2020-07-06', 2, 0, 'cho xu ly', 0, 'HCM'),
(9, '2020-07-06', 4, 0, 'cho xu ly', 0, 'HCM'),
(10, '2020-07-06', 5, 0, 'cho xu ly', 0, 'TP HCM'),
(11, '2020-07-06', 6, 780000, 'cho xu ly', 0, 'TP HCM'),
(12, '2020-07-06', 7, 265000, 'cho xu ly', 0, 'TP HCM'),
(13, '2020-07-06', 1, 795000, 'cho xu ly', 0, 'Q3 TH HCM'),
(14, '2020-07-06', 1, 250000, 'cho xu ly', 0, 'Q3 TH HCM'),
(15, '2020-07-07', 1, 250000, 'cho xu ly', 0, 'Q3 TH HCM'),
(16, '2020-12-03', 10, 0, 'cho xu ly', 0, 'ádsadsad'),
(17, '2020-12-03', 10, 250000, 'cho xu ly', 0, 'ádsadsad'),
(18, '2020-12-07', 12, 500000, 'cho xu ly', 0, 'KTX A');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
CREATE TABLE IF NOT EXISTS `khachhang` (
  `MAKH` int NOT NULL AUTO_INCREMENT,
  `HOTEN` varchar(40) NOT NULL,
  `DCHI` varchar(50) NOT NULL,
  `SODT` varchar(10) NOT NULL,
  `NGSINH` date NOT NULL,
  `NGDK` date NOT NULL,
  `DOANHSO` double NOT NULL DEFAULT '0',
  `GIOITINH` varchar(3) NOT NULL,
  PRIMARY KEY (`MAKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MAKH`, `HOTEN`, `DCHI`, `SODT`, `NGSINH`, `NGDK`, `DOANHSO`, `GIOITINH`) VALUES
(1, 'Nguyen Ngoc Thao Ngan', 'Q3 TH HCM', '0123456789', '1997-07-21', '2019-04-18', 0, 'nữ'),
(2, 'Nguyen Ngoc Thao', 'Q3 TH HCM', '0123456788', '1997-07-21', '2019-04-18', 0, 'nữ'),
(3, 'Thanh', 'TP HCM', '01234', '2020-07-06', '2020-07-06', 0, 'Nam'),
(4, 'thanh', 'HCM', '02135', '1997-04-23', '2020-07-06', 0, 'nu'),
(5, 'Tuan', 'TP HCM', '01659', '1999-04-26', '2020-07-06', 0, 'Nam'),
(6, 'Tuan', 'TP HCM', '01659', '1999-04-26', '2020-07-06', 0, 'Nam'),
(7, 'Tuan', 'TP HCM', '01659', '1999-04-26', '2020-07-06', 0, 'Nam'),
(8, 'thanh', 'hcm', '02135', '1997-04-23', '2020-07-07', 0, 'nu'),
(9, 'mnbv', 'hcm', '02135', '2020-07-09', '2020-07-07', 0, 'nu'),
(10, 'anh', 'ádsadsad', '0945581232', '2020-11-30', '2020-11-30', 0, 'nam'),
(11, 'anh', 'KTX A', '0945581232', '2020-12-07', '2020-12-07', 0, 'nam'),
(12, 'anh', 'KTX A', '0945581232', '2020-12-07', '2020-12-07', 0, 'nam');

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

DROP TABLE IF EXISTS `khuyenmai`;
CREATE TABLE IF NOT EXISTS `khuyenmai` (
  `MAKM` int NOT NULL AUTO_INCREMENT,
  `PHANTRAMKM` int NOT NULL,
  `TGBD` date NOT NULL,
  `TGKT` date NOT NULL,
  PRIMARY KEY (`MAKM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khuyenmai`
--

INSERT INTO `khuyenmai` (`MAKM`, `PHANTRAMKM`, `TGBD`, `TGKT`) VALUES
(0, 0, '2019-02-01', '2022-03-19');

-- --------------------------------------------------------

--
-- Table structure for table `phanhoi`
--

DROP TABLE IF EXISTS `phanhoi`;
CREATE TABLE IF NOT EXISTS `phanhoi` (
  `MAPH` int NOT NULL AUTO_INCREMENT,
  `MAKH` int NOT NULL,
  `MASP` int NOT NULL,
  `THOIGIANPH` date NOT NULL,
  `NOIDUNG` char(255) NOT NULL,
  PRIMARY KEY (`MAPH`),
  KEY `FK_PH_KH` (`MAKH`),
  KEY `FK_PH_SP` (`MASP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phanhoi`
--

INSERT INTO `phanhoi` (`MAPH`, `MAKH`, `MASP`, `THOIGIANPH`, `NOIDUNG`) VALUES
(1, 1, 2, '2020-07-07', 'dep'),
(2, 1, 3, '2020-07-07', 'dep'),
(3, 1, 3, '2020-07-07', 'dep'),
(4, 1, 3, '2020-07-07', 'dep'),
(5, 1, 3, '2020-07-07', 'dep'),
(10, 1, 3, '2020-07-07', 'dep qua'),
(11, 10, 6, '2020-11-30', 'ngon'),
(12, 12, 1, '2020-12-07', 'đẹp');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `MASP` int NOT NULL AUTO_INCREMENT,
  `TENSP` varchar(40) NOT NULL,
  `LOAISP` varchar(20) NOT NULL,
  `THUONGHIEU` varchar(255) NOT NULL,
  `NUOCSX` varchar(40) NOT NULL,
  `KICHTHUOC` char(10) NOT NULL,
  `HINHANH` varchar(255) NOT NULL,
  `GIA` double NOT NULL,
  `GIOITINH` char(3) NOT NULL,
  `SOLUONG` int NOT NULL,
  `MOTA` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `MAKM` int NOT NULL,
  PRIMARY KEY (`MASP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MASP`, `TENSP`, `LOAISP`, `THUONGHIEU`, `NUOCSX`, `KICHTHUOC`, `HINHANH`, `GIA`, `GIOITINH`, `SOLUONG`, `MOTA`, `MAKM`) VALUES
(1, 'Ao hoodie gau nau', 'Ao hoodie', '', 'Viet Nam', 'M', '1ee4fa62eeb3a309600189fde334883d.jpg', 250000, 'Nu', 0, '', 0),
(2, 'Ao hoodie BTS', 'Ao hoodie ', '', 'Viet Nam', 'M', 'ae4fc184bf01e573b7e1f73e1e1922c2.jpg_600x600q80.jpg', 250000, 'nu', 0, '', 0),
(3, 'Ao hoodie tho hong', 'Ao hoodie', '', 'Viet Nam', 'L', 'Ao Hoodle Nu.jpg', 265000, 'nu', 0, '', 0),
(4, 'Ao hoodie tho trang', 'Ao hoodie', '', 'Thai Lan', 'S', 'b7bf27d84c1a08ba33b4507b6862a7fa.jpg', 230000, 'nu', 0, '', 0),
(5, 'Ao hoodie tho trum', 'Ao hoosie', '', 'Thai Lan', 'XL', 'ELtXr6_simg_de2fe0_500x500_maxb.jpg', 250000, 'nu', 0, '', 0),
(6, 'Ao hoodie  ca rot', 'Ao hoodie', '', 'Viet Nam', 'M', 'f8fa7e0f44aaae8ae63a373bed53595d.jpg', 265000, 'nu', 0, '', 0),
(7, 'Ao hoodie meo', 'Ao hoodie', '', 'Viet Nam', 'L', 'f8fa7e0f44aaae8ae63a373bed53595d.jpg', 265000, 'nu', 0, '', 0),
(8, 'Ao hoodie tay rong', 'Ao hoodie', '', 'Viet Nam', 'M', 'unnamed.jpg', 265000, 'nu', 0, '', 0),
(9, 'Ao hoodie suong', 'Ao hoodie', '', 'Viet Nam', 'M', 'unnamed.jpg', 265000, 'nu', 0, '', 0),
(10, 'Áo thun xanh in hình trái tim', 'ao thun', 'ADOBE', 'VIet Nam', 'M', 'aothunxanhtraitim.jpg', 100000, 'nu', 1000, 'Áo thun vải min mát', 0),
(11, 'Bộ balo 4 món màu đen cài nơ', 'tui', 'ADOBE', 'VIet Nam', 'M', 'balo_den_no.jpg', 100000, 'nu', 1000, 'Baolo 4 món dễ thương tiện lợi', 0),
(12, 'Bộ balo 4 món màu hồng dễ thương', 'tui', 'ADOBE', 'VIet Nam', 'M', 'balo_den_no.jpg', 100000, 'nu', 1000, 'Baolo 4 món dễ thương tiện lợi', 0),
(13, 'Bộ balo 4 món màu cam dễ thương', 'tui', 'ADOBE', 'VIet Nam', 'M', 'balocam.jpg', 100000, 'nu', 1000, 'Baolo 4 món dễ thương tiện lợi', 0),
(14, 'Bộ balo 4 món màu vàng dễ thương', 'tui', 'ADOBE', 'VIet Nam', 'M', 'balocam.jpg', 100000, 'nu', 1000, 'Baolo 4 món dễ thương tiện lợi', 0),
(16, 'Túi tote hình gấu dễ thương', 'tui', 'ADOBE', 'Thai Lan', 'M', 'gau.jpg', 100000, 'nu', 1000, 'Balo 4 món dễ thương tiện lợi', 0),
(17, 'Túi tote hình gấu dễ thương', 'tui', 'ADOBE', 'Thai Lan', 'M', 'gaugau.jpg', 100000, 'nu', 1000, 'Balo 4 món dễ thương tiện lợi', 0),
(18, 'Túi tote hình gấu dễ thương', 'tui', 'ADOBE', 'Thai Lan', 'M', 'gautrangden.jpg', 100000, 'nu', 1000, 'Balo 4 món dễ thương tiện lợi', 0),
(19, 'Túi tote hình hoa cúc dễ thương', 'tui', 'ADOBE', 'Thai Lan', 'M', 'hoacuc.jpg', 100000, 'nu', 1000, 'Balo 4 món dễ thương tiện lợi', 0),
(20, 'Balo hồng đan nơ dễ thương', 'tui', 'ADOBE', 'Thai Lan', 'M', 'hongthuan.jpg', 100000, 'nu', 1000, 'Balo 4 món dễ thương tiện lợi', 0),
(21, 'Balo hồng xen trắng đan nơ dễ thương', 'tui', 'ADOBE', 'Thai Lan', 'M', 'hongtrang.jpg', 100000, 'nu', 1000, 'Balo 4 món dễ thương tiện lợi', 0),
(22, 'Túi đen xen trắng hình mèo dễ thương', 'tui', 'ADOBE', 'Han Quoc', 'M', 'hongtrang.jpg', 100000, 'nu', 1000, 'Balo 4 món dễ thương tiện lợi', 0),
(23, 'Túi đen xen trắng hình mèo dễ thương', 'tui', 'ADOBE', 'Han Quoc', 'M', 'meoden.jpg', 100000, 'nu', 1000, 'Balo 4 món dễ thương tiện lợi', 0),
(24, 'Giày Fila', 'giay', 'FILA', 'Han Quoc', '37', 'meoden.jpg', 250000, 'nu', 1000, 'Giày đẹp êm chân', 0),
(25, 'Giày nam trắng', 'giay', 'FILA', 'Han Quoc', '42', 'giaynamtrang.jpg', 250000, 'nam', 1000, 'Giày đẹp êm chân', 0),
(26, 'Giày nữ trắng', 'giay', 'FILA', 'Han Quoc', '42', 'giaynutrang.png', 250000, 'nu', 1000, 'Giày đẹp êm chân', 0),
(27, 'Giày nữ NUTT trắng', 'giay', 'FILA', 'Han Quoc', '38', 'giaynuttnu.jpg', 250000, 'nu', 1000, 'Giày đẹp êm chân', 0),
(28, 'Giày Run One nam trắng', 'giay', 'RUN ONE', 'Han Quoc', '38', 'giayrunonenam.jpg', 250000, 'nam', 1000, 'Giày đẹp êm chân', 0),
(29, 'Giày Run One nam trắng', 'giay', 'RUN ONE', 'Han Quoc', '38', 'giayrunonenam.jpg', 250000, 'nam', 1000, 'Giày đẹp êm chân', 0),
(30, 'Giày vans đỏ', 'giay', 'Vans', 'Han Quoc', '38', 'giayvando.jpg', 250000, 'nam', 1000, 'Giày đẹp êm chân', 0),
(31, 'Giày Boston trắng', 'giay', 'Vans', 'Han Quoc', '38', 'giayvando.jpg', 250000, 'nu', 1000, 'Giày đẹp êm chân', 0),
(32, 'Balo in chữ smile trắng', 'tui', 'Vans', 'Viet Nam', 'M', 'smiletrang.jpg', 90000, 'nu', 1000, 'Balo dễ thương', 0),
(33, 'Balo in chữ smile vàng', 'tui', 'Vans', 'Viet Nam', 'M', 'smilevang.jpg', 90000, 'nu', 1000, 'Balo dễ thương', 0),
(34, 'Balo in chữ smile đen', 'tui', 'Vans', 'Viet Nam', 'M', 'smileden.jpg', 90000, 'nu', 1000, 'Balo dễ thương', 0),
(35, 'Balo màu trắng rêu ', 'tui', 'Vans', 'Viet Nam', 'M', 'trangreu.jpg', 90000, 'nu', 1000, 'Balo dễ thương', 0),
(36, 'Balo màu trắng đỏ ', 'tui', 'Vans', 'Viet Nam', 'M', 'trangdo.jpg', 90000, 'nu', 1000, 'Balo dễ thương', 0),
(37, 'Balo màu trắng hong ', 'tui', 'Vans', 'Viet Nam', 'M', 'tranghong.jpg', 90000, 'nu', 1000, 'Balo dễ thương', 0),
(38, 'Balo màu trắng xanh lá ', 'tui', 'Vans', 'Viet Nam', 'M', 'trangxanhla.jpg', 90000, 'nu', 1000, 'Balo dễ thương', 0),
(39, 'Balo màu xanh dương', 'tui', 'Vans', 'Viet Nam', 'M', 'xanhduong.jpg', 90000, 'nu', 1000, 'Balo dễ thương', 0),
(40, 'Quần đen ', 'quan', 'Vans', 'Viet Nam', 'M', 'quanden.jpg', 90000, 'nu', 1000, 'Quần ngắn thời trang', 0),
(41, 'Quần đen có túi', 'quan', 'Vans', 'Viet Nam', 'M', 'quandentui.jpg', 90000, 'nu', 1000, 'Quần ngắn thời trang', 0),
(42, 'Quần vàng ', 'quan', 'Vans', 'Viet Nam', 'M', 'quanvangtui.jpg', 90000, 'nu', 1000, 'Quần ngắn thời trang', 0),
(43, 'Quần trắng ', 'quan', 'Vans', 'Viet Nam', 'M', 'quantrang.jpg', 90000, 'nu', 1000, 'Quần ngắn thời trang', 0),
(44, 'Quần vàng', 'quan', 'Vans', 'Viet Nam', 'M', 'quanvang.jpg', 90000, 'nu', 1000, 'Quần ngắn thời trang', 0),
(45, 'Quần xanh có túi', 'quan', 'Vans', 'Viet Nam', 'M', 'quanxanhtui.jpg', 90000, 'nu', 1000, 'Quần ngắn thời trang', 0),
(46, 'Áo thun in hình thỏ dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thunthotron.jpg', 109000, 'nam', 1000, 'Áo thun mát mẻ thời trang', 0),
(47, 'Áo thun in hình thỏ dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thunthotron.jpg', 109000, 'nu', 1000, 'Áo thun mát mẻ thời trang', 0),
(48, 'Áo thun in hình hươu dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thuntranghuou.jpg', 109000, 'nam', 1000, 'Áo thun mát mẻ thời trang', 0),
(49, 'Áo thun in hình hươu dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thuntranghuou.jpg', 109000, 'nu', 1000, 'Áo thun mát mẻ thời trang', 0),
(50, 'Áo thun in hình đôi giày dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thuntrangdoigiay.jpg', 109000, 'nu', 1000, 'Áo thun mát mẻ thời trang', 0),
(51, 'Áo thun in hình cô gái dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thuntranggirl.jpg', 109000, 'nu', 1000, 'Áo thun mát mẻ thời trang', 0),
(52, 'Áo thun in hình hươu dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thuntranghuou.jpg', 109000, 'nam', 1000, 'Áo thun mát mẻ thời trang', 0),
(53, 'Áo thun in hình thỏ con dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thuntranghuou.jpg', 109000, 'nu', 1000, 'Áo thun mát mẻ thời trang', 0),
(54, 'Áo thun in hình thỏ con dễ thương', 'ao', 'Vans', 'Viet Nam', 'L', 'thuntranghuou.jpg', 109000, 'nam', 1000, 'Áo thun mát mẻ thời trang', 0),
(55, 'Áo thun in hình trái tim dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thuntrangtimdo.jpg', 109000, 'nu', 1000, 'Áo thun mát mẻ thời trang', 0),
(56, 'Áo thun in hình trái tim', 'ao', 'Vans', 'Viet Nam', 'L', 'thuntrangtimdo.jpg', 109000, 'nam', 1000, 'Áo thun mát mẻ thời trang', 0),
(57, 'Áo thun in hình hoa hồng dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thunxanhhoahong.jpg', 109000, 'nu', 1000, 'Áo thun mát mẻ thời trang', 0),
(58, 'Áo thun in hình hoa hồng', 'ao', 'Vans', 'Viet Nam', 'L', 'thunxanhhoahong.jpg', 109000, 'nam', 1000, 'Áo thun mát mẻ thời trang', 0),
(59, 'Áo thun in hình mèo đen dễ thương', 'ao', 'Vans', 'Viet Nam', 'M', 'thunxanhmeoden.jpg', 109000, 'nu', 1000, 'Áo thun mát mẻ thời trang', 0),
(60, 'Áo thun in hình mèo đen ', 'ao', 'Vans', 'Viet Nam', 'L', 'thunxanhmeoden.jpg', 109000, 'nam', 1000, 'Áo thun mát mẻ thời trang', 0);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
CREATE TABLE IF NOT EXISTS `taikhoan` (
  `USERNAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `LOAITK` int NOT NULL,
  `MAKH` int NOT NULL,
  PRIMARY KEY (`USERNAME`),
  UNIQUE KEY `MAKH` (`MAKH`),
  UNIQUE KEY `UC_tk` (`USERNAME`),
  KEY `FK_TK_KH` (`MAKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`USERNAME`, `PASSWORD`, `LOAITK`, `MAKH`) VALUES
('17520254', '1234567', 1, 10),
('thanh12', '1', 1, 8),
('thao', '123', 1, 9),
('thaongan', '1', 1, 1),
('thaothao', '1', 1, 2),
('Tiến Anh', '1234567', 1, 12);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cthd`
--
ALTER TABLE `cthd`
  ADD CONSTRAINT `FK_cthd_hd` FOREIGN KEY (`SOHD`) REFERENCES `hoadon` (`SOHD`),
  ADD CONSTRAINT `FK_CTHD_SP` FOREIGN KEY (`MASP`) REFERENCES `sanpham` (`MASP`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `fk_HD_KH` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`MAKH`);

--
-- Constraints for table `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD CONSTRAINT `FK_PH_KH` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`MAKH`),
  ADD CONSTRAINT `FK_PH_SP` FOREIGN KEY (`MASP`) REFERENCES `sanpham` (`MASP`);

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `FK_TK_KH` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`MAKH`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
