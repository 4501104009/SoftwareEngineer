-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2021 at 03:39 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_bh`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'admin1', 'admin1@gmail.com', 'admin1', 'e10adc3949ba59abbe56e057f20f883e', 0),
(2, 'admin2', 'admin2@gmail.com', 'admin2', 'admin123456', 0),
(3, 'NgoGiaBao', 'ngobao2001htmhcm@gmail.com', 'NgoGiaBao', '71Tangbatho', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(6, 'Samsung'),
(7, 'Apple'),
(8, 'Huawei'),
(9, 'Oppo'),
(10, 'Dell'),
(12, 'Viettel'),
(13, 'OEM'),
(14, 'TP-Link');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(1, 7, '0omn99jipm7namf6srjhj4kva2', '??i???n tho???i samsung S10+', '12000000', 3, '6deaf01c29.jpg'),
(2, 7, 'up8l6ff347ik19fsoa18qff452', '??i???n tho???i samsung S10+', '12000000', 1, '6deaf01c29.jpg'),
(3, 7, '9lmppj5kalib60o1s7soiiaqo4', '??i???n tho???i samsung S10+', '12000000', 1, '6deaf01c29.jpg'),
(4, 8, '9lmppj5kalib60o1s7soiiaqo4', '??i???n tho???i Huawei Pro', '5000000', 1, 'd611667f13.jpg'),
(8, 6, 'c6o66m1rfnpfhqmdffk77pu083', 'M??y T??nh Dell A503', '10000000', 1, 'dbb417a309.jpg'),
(9, 8, '3e1a29t1pgb3ock6s8hi8ho2d5', '??i???n tho???i Huawei Pro', '5000000', 1, 'd611667f13.jpg'),
(13, 17, 'grfc2bmmrmga6mn5q7484i87f2', '??? C???ng SSD Samsung 860 Evo 250GB Sata III 2.5 inch - H??ng Nh???p Kh???u', '1099000', 1, '785e8d373d.jpg'),
(14, 19, '39p4lauudimhcb91i8mhna4bf2', '?????ng H??? Th??ng Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', '9700000', 3, '6d72eb58ae.jpg'),
(18, 18, '3eg83l0tcklmed91e5h8raqsa2', 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', 1000, '32942e9470.jpg'),
(19, 19, 'hlkksgphiqn70b37sjg3u89unu', '?????ng H??? Th??ng Minh Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', '9700000', 1, '6d72eb58ae.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(3, 'M??y T??nh X??ch Tay'),
(5, '??i???n Tho???i Di ?????ng'),
(7, 'Ph???n M???m'),
(16, '?????ng H??? Th??ng Minh'),
(17, 'Thi???t B??? M???ng');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(3, 'Nguy???n V??n A', '113 L???c Long Qu??n, Qu???n 11, TP.HCM', 'TPHCM', 'Vi???t Nam', '700000', '099999123', 'thanhviendangki@gmail.com', '123456'),
(4, 'Nguy???n V??n B', '290 An D????ng V????ng, Qu???n 5, TP.HCM', 'TPHCM', 'Vi???t Nam', '700000', '092225294', 'hoathuytinh071@gmail.com', 'abc123'),
(5, 'Nguy???n Th??? C', '5 Kh??nh H???i, Qu???n 4, TP.HCM', 'TPHCM', 'Vi???t Nam', '700000', '0922525294', 'abc@gmail.com', '123xyz'),
(6, 'Bao', '71 Tang Bat Ho, thanh pho Pleiku, tinh Gia Lai', '', 'hcm', '', '0342199289', 'ngogiabao2001@gmail.com', '2cc56d8d8c4455029ee959447ee6ea9a');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(56, 22, 'Apple New For Mysql Server', 3, 5, '300000', '643929ce40.jpg', 1, '2019-07-17 00:54:42'),
(57, 22, 'Apple New For Mysql Server', 3, 4, '240000', '643929ce40.jpg', 1, '2019-07-17 00:56:49'),
(58, 22, 'Apple New For Mysql Server', 3, 5, '300000', '643929ce40.jpg', 1, '2019-07-17 00:57:49'),
(59, 20, 'Router Wifi 4G Huawei 300Mbps B593S-12, K???t n???i nhi???u thi???t b???', 3, 10, '12400000', '49b106217c.jpg', 1, '2019-07-17 01:51:22'),
(60, 18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', 6, 5, '12949500', '32942e9470.jpg', 0, '2021-09-17 20:31:13'),
(61, 17, '??? C???ng SSD Samsung 860 Evo 250GB Sata III 2.5 inch', 6, 5, '5495000', '785e8d373d.jpg', 0, '2021-09-17 20:32:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(6, 'M??y T??nhMH1122 Dell A503', '50', '0', '0', '50', 3, 10, '<p>M??y T??nh Dell A503</p>\r\n<p>RAM: 8GB DDR4, 2133 MHz</p><p>??? c???ng: SSD 256 GB</p>\r\n', 1, '10000000', 'images.jfif'),
(7, '??i???n tho???i samsung S10+', 'MH1123', '60', '0', '60', 5, 6, '<p>M??n h??nh: Infinity - O Dynamic AMOLED, 6.4 inch, Quad HD+ (2K+)</p>\r\n<p>CPU:	Exynos 9820 8 nh??n 64 bit</p>\\r\\n<p>RAM: 8 GB</p>\\r\\n<p>Camera sau: 12 MP, 12 MP, 16 MP (3 camera)</p>\r\n<p>Camera tr?????c: 10 MP, 8 MP (Camera k??p)</p>\r\n<p>B??? nh??? trong: 128 GB</p>', 0, '12000000', 'f71a0935f3.jpg'),
(8, '??i???n Tho???i Huawei Pro', 'MH1124', '70', '0', '70', 5, 8, '<p>M??n h??nh 6.47\\\", FHD+, OLED, 1080 x 2340 Pixel</p>\r\n<p>Camera sau 40.0 MP + 20.0 MP + 8.0 MP + 2.0 MP</p>\r\n<p>Camera Selfie 32.0 MP</p>\r\n<p>RAM 8 GB</p>\r\n<p>B??? nh??? trong 256 GB</p>', 0, '5000000', '03ae5f8327.jpg'),
(9, 'HP Pavilion 14-dv0008TU 2D7A5PA Core I5-1135G7', 'MH1125', '100', '0', '100', 3, 7, '<p>CPU:	11th Generation Intel Core i5-1135G7 Tiger Lake 10nm (2.40GHz Up to 4.20 GHz, 4 Cores, 8 Threads, 8MB Cache </p>\r\n<p>M??u s???c: Gold</p>\\r\\n<p>T??nh Tr???ng M??y : M???i 100%</p>\\r\\n<p>Xu???t x???: Ch??nh H??ng</p>\r\n<p>RAM: Ram 8GB DDR4 Buss 3200</p>\r\n<p>??? c???ng: 512GB PCIe NVMe M.2 SSD</p>', 0, '17000000', 'loptophp.jfif'),
(13, '?????ng H??? Th??ng Minh Theo D??i S???c Kh???e Garmin Forerunner', 'MH1126', '30', '0', '30', 16, 13, '<p>Pin S???c Lithium-ion</p>\r\n<p>C?? K???t N???i: Bluetooth Smart ANT+</p>\r\n<p>Ph???n M???m Di???t Virus BKAV Profressional 1 PC 12 Th??ng\', \'MH1127\', \'20\', \'0\', \'20\', 7, 9.</p>\r\n<p>Ng??n ch???n b??? theo d??i b???i ph???n m???m gi??n ??i???p</p>\r\n<p>Ng??n ch???n ????nh c???p t??i kho???n ng??n h??ng, ????nh c???p m???t kh???u</p>\r\n<p>Qu??t virus l??m ch???m m??y</p>\r\n<p>S??? d???ng tr?? tu??? nh??n t???o (AI), t??ch h???p c??ng ngh??? ??i???n to??n ????m m??y, b???o v??? ??a l???p</p>', 0, '195000', '4167b1a4c5.jpg'),
(16, 'TP - Link TL- WN725N - USB Wifi Nano  150Mbps', 'MH1128', '90', '0', '90', 17, 14, '<p>M?? h??a b???o m???t kh??ng d??y d??? d??ng ch??? v???i n??t ???n QSS.</p>\r\n<p>K???t n???i nhanh v???i c??ng c??? c??i ?????t h??? tr??? 14 ng??n ng???.</p>\r\n<p>D??? d??ng c??i ?????t v?? c???u h??nh v???i ????a CD c??i ?????t v?? ti???n ??ch.</p>\r\n<p>Ti??u th??? ??i???n n??ng th???p.</p>\r\n<p>Thi???t k??? thu nh??? - C???c g???n, c???c xinh.</p>', 0, '125000', '6c53b185b0.jpg'),
(17, '??? C???ng SSD Samsung 860 Evo 250GB Sata III 2.5 inch', 'MH1129', '100', '0', '100', 7, 6, '<p>Th????ng hi???u:	??? c???ng SSD 2.5-Inch Samsung</p>\r\n<p>Model: MZ-76E250BW</p>\r\n<p>B???o h??nh: 5 n??m</p>\r\n<p>Dung l?????ng: 250 GB</p>', 0, '1099000', '785e8d373d.jpg'),
(18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', 'MH1130', '120', '0', '120', 3, 10, '<p>Chip: Intel Core i7-8750H (2.2GHz up to 4.1GHz, 9MB)</p>\r\n<p>RAM: 8GB DDR4 2400MHz</p>\r\n<p> ??? c???ng: HDD 1TB 5400rpm + 128GB SSD M.2</p>\r\n<p>Chipset : NVIDIA GeForce GTX 1050Ti 4GB GDDR5</p>\r\n<p>M??n h??nh: 15.6 inch Full HD (1920 x 1080) IPS, Anti-Glare, LED Backlit Display</p>\r\n<p>H??? ??i???u h??nh: Windows 10 Home</p>\r\n<p>Pin: 4 Cell 56 Whrs</p>', 0, '2589900', '32942e9470.jpg'),
(19, '?????ng H??? Th??ng Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', 'MH1140', '65', '0', '65', 16, 7, '<p>Chu???n kh??ng n?????c ISO 22810:2010</p>\r\n<p>K???t n???i: Wi-Fi (802.11b / g / n 2,4 GHz), bluetooth 5.0</p>\\r\\n<p>T????ng th??ch: iPhone</p>\r\n<p>Ch???c n??ng: Ca??m bi????n nhi??p tim, ch????c n??ng ??o ??i????n t??m ?????? (EKG)</p>\r\n<p>T??ch h???p GPS, GLONASS, Galileo v?? QZSS</p>', 0, '9700000', '6d72eb58ae.jpg'),
(20, 'Router Wifi 4G Huawei 300Mbps B593S-12,K???t n???i nhi???u thi???t b???', 'MH1150', '70', '10', '65', 17, 8, '<p>B??? ph??t wifi 4G Huawei B593S-12 la?? sa??n ph????m pha??t so??ng wifi t???? sim 3G/4G ch????t l??????ng cao.</p>\r\n<p>T????c ?????? download l??n ??????n 100Mbps va?? Upload nhanh cho??ng, ti????n l????i </p>\r\n<p>Pha??t so??ng wifi (chu????n b/g/n), t????c ?????? cao l??n ??????n 300Mbps.</p>', 0, '1240000', '49b106217c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(5, 'slider1', '720bc173fa.png', 0),
(6, 'slider2', 'ff79579ac7.png', 0),
(7, 'slider3', 'a94222690e.png', 0),
(8, 'slider4', '5b2e64d6ab.jpg', 1),
(9, 'slider5', 'f50b2e4171.png', 1),
(11, 'slider6', '72a159f760.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_warehouse`
--

INSERT INTO `tbl_warehouse` (`id_warehouse`, `id_sanpham`, `sl_nhap`, `sl_ngaynhap`) VALUES
(1, 22, '5', '2019-07-16 11:31:22'),
(2, 21, '10', '2019-07-16 11:32:03'),
(3, 21, '3', '2019-07-16 11:42:59'),
(4, 20, '5', '2019-07-16 11:51:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(3, 3, 6, 'Loptop Dell A503', '10000000', 'dbb417a309.jpg'),
(4, 3, 18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', '32942e9470.jpg'),
(5, 6, 18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', '32942e9470.jpg'),
(6, 6, 17, '??? C???ng SSD Samsung 860 Evo 250GB Sata III 2.5 inch', '1099000', '785e8d373d.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Indexes for table `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
