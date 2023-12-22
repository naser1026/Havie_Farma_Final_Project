-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 22, 2023 at 01:34 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_h_product`
--

CREATE TABLE `tbl_h_product` (
  `id_product_thp` int(11) NOT NULL,
  `large_barcode_thp` varchar(20) NOT NULL,
  `small_barcode_thp` varchar(20) NOT NULL,
  `name_thp` varchar(200) NOT NULL,
  `id_large_unit_thp` int(11) NOT NULL,
  `id_small_unit_thp` int(11) NOT NULL,
  `fill_thp` int(11) NOT NULL,
  `large_price_thp` int(10) NOT NULL,
  `small_price_thp` int(11) NOT NULL,
  `id_suplier_thp` int(11) NOT NULL,
  `id_factory_thp` int(11) NOT NULL,
  `date_added_thp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `added_by_thp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_h_product`
--

INSERT INTO `tbl_h_product` (`id_product_thp`, `large_barcode_thp`, `small_barcode_thp`, `name_thp`, `id_large_unit_thp`, `id_small_unit_thp`, `fill_thp`, `large_price_thp`, `small_price_thp`, `id_suplier_thp`, `id_factory_thp`, `date_added_thp`, `added_by_thp`) VALUES
(29, '-', '-', 'Mixagrip', 32, 3, 10, 10000, 1110, 5, 2, '2023-12-20 04:37:46', 'admin'),
(32, '-', '-', 'ABOCATH 18', 31, 31, 1, 15000, 16650, 0, 0, '2023-12-21 01:27:32', 'admin'),
(33, '89919906181646', '89919906181646', 'ABOCATH 20	', 31, 31, 1, 15000, 16650, 0, 0, '2023-12-21 01:31:34', 'admin'),
(34, '', '', 'ACRAN 150MG TAB', 32, 35, 30, 144000, 5328, 0, 1, '2023-12-21 01:32:50', 'admin'),
(35, '', '', 'ACRAN 150MG TAB', 36, 25, 1, 47523, 52750, 0, 0, '2023-12-21 01:35:27', 'admin'),
(36, '', '', 'ACTIVED MERAH', 36, 25, 1, 54535, 60533, 0, 0, '2023-12-21 01:37:33', 'admin'),
(37, '', '', 'ACYCLOVIR 200MG TAB', 32, 35, 100, 59500, 660, 0, 21, '2023-12-21 01:38:40', 'admin'),
(38, '', '', 'ACYCLOVIR 400 MG TAB', 32, 35, 100, 70000, 777, 0, 0, '2023-12-21 01:39:30', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_h_user`
--

CREATE TABLE `tbl_h_user` (
  `id_thu` int(11) NOT NULL,
  `name_thu` varchar(50) NOT NULL,
  `email_tmu` varchar(50) NOT NULL,
  `phone_number_tmu` varchar(20) NOT NULL,
  `password_tmu` varchar(200) NOT NULL,
  `role_thu` enum('USER','ADMIN') NOT NULL,
  `profile_picture_thu` varchar(500) NOT NULL,
  `created_date_thu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_factory`
--

CREATE TABLE `tbl_m_factory` (
  `id_factory_tmf` int(11) NOT NULL,
  `name_tmf` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_m_factory`
--

INSERT INTO `tbl_m_factory` (`id_factory_tmf`, `name_tmf`) VALUES
(0, '-'),
(1, 'SANBE FARMA'),
(2, 'YUPHARIN'),
(3, 'SOHO'),
(4, 'BOEHRINGER I'),
(5, 'RUSCH'),
(6, 'JITU'),
(7, 'OTTO PHARMACEUTICAL'),
(8, 'NEW INTERBAT'),
(10, 'COMBIPHAR'),
(11, 'TERUMO'),
(12, 'BECTON DICKI	'),
(13, 'NOVO NORDISK	'),
(14, 'PHAPROS'),
(15, 'LAPI LABORATORIES'),
(16, 'SANBE FARMA OTC	'),
(17, 'NOVELL ALFA'),
(18, 'JITU'),
(19, 'KALBE FARMA'),
(20, 'BAYER'),
(21, 'GENERIK'),
(22, 'MERAPI'),
(23, 'GABAH'),
(24, 'MERCK');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_product`
--

CREATE TABLE `tbl_m_product` (
  `id_product_tmp` int(11) NOT NULL,
  `large_barcode_tmp` varchar(20) DEFAULT NULL,
  `small_barcode_tmp` varchar(20) DEFAULT NULL,
  `name_tmp` varchar(200) NOT NULL,
  `id_large_unit_tmp` int(11) NOT NULL,
  `id_small_unit_tmp` int(11) NOT NULL,
  `fill_tmp` int(11) NOT NULL,
  `large_price_tmp` int(10) NOT NULL,
  `small_price_tmp` int(11) NOT NULL,
  `id_suplier_tmp` int(11) DEFAULT NULL,
  `id_factory_tmp` int(11) DEFAULT NULL,
  `date_added_tmp` timestamp NOT NULL DEFAULT current_timestamp(),
  `added_by_tmp` varchar(50) DEFAULT NULL,
  `update_by_tmp` varchar(50) DEFAULT NULL,
  `update_date_tmp` timestamp NULL DEFAULT NULL,
  `stock_tmp` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_m_product`
--

INSERT INTO `tbl_m_product` (`id_product_tmp`, `large_barcode_tmp`, `small_barcode_tmp`, `name_tmp`, `id_large_unit_tmp`, `id_small_unit_tmp`, `fill_tmp`, `large_price_tmp`, `small_price_tmp`, `id_suplier_tmp`, `id_factory_tmp`, `date_added_tmp`, `added_by_tmp`, `update_by_tmp`, `update_date_tmp`, `stock_tmp`) VALUES
(32, '', '', 'ABOCATH 18', 31, 31, 1, 15000, 16650, 0, 0, '2023-12-21 01:27:32', 'admin', 'admin', '2023-12-21 01:34:16', 1),
(33, '89919906181646', '89919906181646', 'ABOCATH 20	', 31, 31, 1, 15000, 16650, 0, 0, '2023-12-21 01:31:34', 'admin', NULL, NULL, 1),
(34, '', '', 'ACRAN 150MG TAB', 32, 35, 30, 144000, 5328, 5, 1, '2023-12-21 01:32:50', 'admin', 'admin', '2023-12-21 01:33:38', 61),
(35, '', '', 'ACTIVED KUNING', 36, 25, 1, 47523, 52750, 0, 0, '2023-12-21 01:35:27', 'admin', 'admin', '2023-12-21 01:36:34', 1),
(36, '', '', 'ACTIVED MERAH', 36, 25, 1, 54535, 60533, 0, 0, '2023-12-21 01:37:33', 'admin', NULL, NULL, 1),
(37, '', '', 'ACYCLOVIR 200MG TAB', 32, 35, 100, 59500, 660, 0, 21, '2023-12-21 01:38:40', 'admin', NULL, NULL, 100),
(38, '', '', 'ACYCLOVIR 400 MG TAB', 32, 35, 100, 70000, 777, 0, 0, '2023-12-21 01:39:30', 'admin', NULL, NULL, 100);

--
-- Triggers `tbl_m_product`
--
DELIMITER $$
CREATE TRIGGER `product_history` AFTER INSERT ON `tbl_m_product` FOR EACH ROW BEGIN

INSERT INTO tbl_h_product(
    id_product_thp,
    name_thp,
    large_barcode_thp,
    small_barcode_thp,
    id_large_unit_thp,
    id_small_unit_thp,
    fill_thp,
    large_price_thp,
    small_price_thp,
    id_suplier_thp,
    id_factory_thp,
    date_added_thp,
    added_by_thp)
    VALUES(
    NEW.id_product_tmp,
	NEW.name_tmp,
	NEW.large_barcode_tmp,
	NEW.small_barcode_tmp,
	NEW.id_large_unit_tmp,
	NEW.id_small_unit_tmp,
	NEW.fill_tmp,
	NEW.large_price_tmp,
	NEW.small_price_tmp,
	NEW.id_suplier_tmp,
	NEW.id_factory_tmp,
	NEW.date_added_tmp,
	NEW.added_by_tmp);
    
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_suplier`
--

CREATE TABLE `tbl_m_suplier` (
  `id_suplier_tms` int(11) NOT NULL,
  `name_tms` varchar(50) NOT NULL,
  `address_tms` varchar(200) NOT NULL,
  `phone_number_tms` varchar(15) NOT NULL,
  `email_tms` varchar(100) NOT NULL,
  `website_tms` varchar(50) DEFAULT NULL,
  `information_tms` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_m_suplier`
--

INSERT INTO `tbl_m_suplier` (`id_suplier_tms`, `name_tms`, `address_tms`, `phone_number_tms`, `email_tms`, `website_tms`, `information_tms`) VALUES
(0, '-', '-', '-', '-', '-', '-'),
(3, 'PT Enercon Equipment Company', 'Jl Bintaro Utama 3 blok AC No 9 Bintaro Jaya Sektor 3 Tanggerang Selatan 15221 Indonesia', '0217353781', 'infoenercon@gmail.com', 'www.enercon.co.id', '-'),
(4, 'PT Globalindo Inti Sarana', 'Ruko Kedoya Indah Blok RB-BE Jl. Kedoya Raya, Jakarta Barat 11520', '02158355151', 'globalindo.intisarana@yahoo.com', 'www.japanairfilter.com', '-'),
(5, 'PT  Jayapak Sinar Abadi', 'Komplex Gading Bukit Indah blok Q No 8 Jl. Bolevard Artha Gading Kelapa Gading Jakarta 14240 Indonesia', '02145846102', 'jayapak@gmail.com', 'https://www.jayapak.com/', '-'),
(6, 'PT.SAPTA SARI TAMA', 'Jakarta', '-', '-', '-', '-'),
(7, 'MADU AM', 'Karawang', '-', '-', '-', '-'),
(8, 'ALKES RYAN', 'Karawang', '-', '-', '-', '-'),
(9, 'PT.MILLENNIUM PHARMACON INTERNATIONAL', 'Jakarta', '-', '-', '-', '-'),
(10, 'MADU NUSANTARA', 'JL.SOEKARNO HATTA NO.639', '082287340884', '-', '-', '-'),
(11, 'PT Setia Farma', 'Jl. Pegangsaan timur no 72', '-', 'setia@gmail.com', '-', '-'),
(12, 'PT Naser Setiawan Jaya Abadi', 'kp ciseureuh no 55 rt 005 rw 002 Desa CIbodas Kecamatan Bungursari Kabupaten Purwakarta Jawa Barat', '081398173028', 'setiawan@gmail.com', 'https://www.nasersetiawan.com', '-'),
(13, 'PT Bukit Farma', 'Bukit Indah City Purwakarta', '08000020038', 'bukitfarma@gmail.com', '-', '-'),
(16, 'PT SINAR TERANG', '-', '-', '-', '-', '-'),
(17, 'PT ANUGRAH JAYA MANDIRI', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_unit`
--

CREATE TABLE `tbl_m_unit` (
  `id_unit_tmun` int(11) NOT NULL,
  `name_tmun` varchar(50) NOT NULL,
  `information_tmun` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_m_unit`
--

INSERT INTO `tbl_m_unit` (`id_unit_tmun`, `name_tmun`, `information_tmun`) VALUES
(3, 'PCS', '-'),
(4, 'PIL', '-'),
(5, 'BPL', '-'),
(6, 'KOTAK', '-'),
(7, 'TOPLES', '-'),
(8, 'TERM', ''),
(9, 'AMPLOP', '-'),
(10, 'DOSE', '-'),
(11, 'AMB', '-'),
(12, 'SALI', '-'),
(13, 'STP', '-'),
(14, 'KAPLET', '-'),
(15, 'KOLF', '-'),
(16, 'FCS', '-'),
(17, 'SYR', '-'),
(18, 'PAK', '-'),
(19, 'SUPP', '-'),
(20, 'VIAL', '-'),
(21, 'PCS', '-'),
(22, 'POT', '-'),
(23, 'KAPSUL', '-'),
(24, 'LSN', '-'),
(25, 'FLS', '-'),
(26, 'AMPUL', '-'),
(27, 'STRIP', '-'),
(28, 'KALENG', '-'),
(29, 'AMP', '-'),
(30, 'TUBE', '-'),
(31, 'BUAH', '-'),
(32, 'BOX', '-'),
(33, 'SACHET', '-'),
(35, 'TABLET', '-'),
(36, 'BOTOL', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_user`
--

CREATE TABLE `tbl_m_user` (
  `id_tmu` int(11) NOT NULL,
  `name_tmu` varchar(50) CHARACTER SET latin1 NOT NULL,
  `phone_number_tmu` varchar(20) NOT NULL,
  `email_tmu` varchar(100) NOT NULL,
  `password_tmu` varchar(500) NOT NULL,
  `role_tmu` enum('ADMIN','OWNER','CASHIRE') NOT NULL,
  `status_deactived_tmu` tinyint(4) NOT NULL DEFAULT 0,
  `status_deleted_tmu` tinyint(4) NOT NULL DEFAULT 0,
  `created_date_tmu` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile_picture_tmu` varchar(500) DEFAULT 'default.png',
  `update_by_tmu` varchar(50) DEFAULT NULL,
  `update_date_tmu` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_m_user`
--

INSERT INTO `tbl_m_user` (`id_tmu`, `name_tmu`, `phone_number_tmu`, `email_tmu`, `password_tmu`, `role_tmu`, `status_deactived_tmu`, `status_deleted_tmu`, `created_date_tmu`, `profile_picture_tmu`, `update_by_tmu`, `update_date_tmu`) VALUES
(17, 'admin', '083377199913', 'admin@mail.com', '$2y$10$07kI5UGtdo6fsSPzUkbarOsK1pkO6IuCfhkAwb2o.v7h2Fxus64Xu', 'ADMIN', 0, 0, '2023-12-19 00:05:04', 'default.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_t_cart`
--

CREATE TABLE `tbl_t_cart` (
  `id_ttc` int(11) NOT NULL,
  `id_product_ttc` int(11) NOT NULL,
  `qty_ttc` int(11) NOT NULL,
  `discount_ttc` int(11) NOT NULL,
  `price_ttc` int(11) NOT NULL,
  `add_qty_ttc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `tbl_t_cart`
--
DELIMITER $$
CREATE TRIGGER `add_to_cart_insert` AFTER INSERT ON `tbl_t_cart` FOR EACH ROW BEGIN
	UPDATE tbl_m_product SET stock_tmp = stock_tmp - NEW.qty_ttc WHERE id_product_tmp = NEW.id_product_ttc;
    
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `add_to_cart_update` AFTER UPDATE ON `tbl_t_cart` FOR EACH ROW BEGIN
	UPDATE tbl_m_product SET stock_tmp = stock_tmp - NEW.qty_ttc WHERE id_product_tmp = OLD.id_product_ttc;
    
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `delete_from_cart` AFTER DELETE ON `tbl_t_cart` FOR EACH ROW BEGIN
	UPDATE tbl_m_product SET stock_tmp = stock_tmp + OLD.qty_ttc WHERE id_product_tmp = OLD.id_product_ttc;
    
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_t_list_purchase`
--

CREATE TABLE `tbl_t_list_purchase` (
  `id_list_ttlp` int(11) NOT NULL,
  `id_product_ttlp` int(11) NOT NULL,
  `qty_ttlp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_t_purchase`
--

CREATE TABLE `tbl_t_purchase` (
  `id_purchase_ttp` int(11) NOT NULL,
  `invoice_number_ttp` varchar(50) NOT NULL,
  `id_suplier_ttp` int(11) NOT NULL,
  `list_id_product_ttp` varchar(200) NOT NULL,
  `list_qty_ttp` varchar(200) NOT NULL,
  `invoice_date_ttp` date NOT NULL,
  `payment_date_ttp` date NOT NULL,
  `total_payment_ttp` int(12) NOT NULL,
  `status_ttp` enum('Retur','Penerimaan') NOT NULL DEFAULT 'Penerimaan',
  `created_by_ttp` varchar(20) NOT NULL,
  `created_date_ttp` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_t_purchase`
--

INSERT INTO `tbl_t_purchase` (`id_purchase_ttp`, `invoice_number_ttp`, `id_suplier_ttp`, `list_id_product_ttp`, `list_qty_ttp`, `invoice_date_ttp`, `payment_date_ttp`, `total_payment_ttp`, `status_ttp`, `created_by_ttp`, `created_date_ttp`) VALUES
(28, 'FAK22133131', 4, '32,33,34,34,35,36,37,38', '1,1,1,1,1,1,1,1', '2023-12-29', '2023-12-30', 61000938, 'Penerimaan', 'admin', '2023-12-22');

--
-- Triggers `tbl_t_purchase`
--
DELIMITER $$
CREATE TRIGGER `delete_list_purchase` AFTER INSERT ON `tbl_t_purchase` FOR EACH ROW BEGIN

DELETE FROM tbl_t_list_purchase;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_t_sales`
--

CREATE TABLE `tbl_t_sales` (
  `id_sales_tts` int(11) NOT NULL,
  `invoice_number_tts` varchar(20) NOT NULL,
  `transaction_date_tts` timestamp NOT NULL DEFAULT current_timestamp(),
  `gross_income_tts` int(11) NOT NULL,
  `profit_tts` int(11) NOT NULL,
  `cashier_name_tts` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_t_sales`
--

INSERT INTO `tbl_t_sales` (`id_sales_tts`, `invoice_number_tts`, `transaction_date_tts`, `gross_income_tts`, `profit_tts`, `cashier_name_tts`) VALUES
(3, '36576813864611', '2023-12-20 14:59:52', 6900, 6900, 'admin'),
(4, '36576813864611', '2023-12-20 15:01:48', 11000, 2120, 'admin'),
(5, '36576813864611', '2023-12-20 15:07:40', 11000, 2120, 'admin'),
(6, '32758567484763', '2023-12-20 15:11:11', 4100, 770, 'admin'),
(7, '51083498418934', '2023-12-20 15:13:09', 4100, 770, 'admin'),
(8, '52008539917786', '2023-12-20 15:13:50', 2340, 120, 'admin'),
(9, '77538477910983', '2023-12-20 15:14:17', 10400, 1520, 'admin'),
(10, '82664951438060', '2023-12-20 15:35:07', 4100, 770, 'admin'),
(11, '75634655515427', '2023-12-21 00:29:08', 6640, -20, 'admin'),
(12, '17443630474792', '2023-12-21 00:30:14', 6030, 480, 'admin'),
(13, '86158381349995', '2023-12-21 10:59:26', 13200, 2544, 'admin'),
(14, '91031615472156', '2023-12-21 13:28:13', 18720, 2070, 'admin'),
(15, '91031615472156', '2023-12-21 13:29:23', 18720, 2070, 'admin'),
(16, '28676798903955', '2023-12-21 13:30:03', 199080, 21924, 'admin'),
(17, '28676798903955', '2023-12-21 13:30:47', 199080, 21924, 'admin'),
(18, '28676798903955', '2023-12-21 13:30:59', 199080, 21924, 'admin'),
(19, '28676798903955', '2023-12-21 13:31:18', 199080, 21924, 'admin'),
(20, '28676798903955', '2023-12-21 13:32:05', 199080, 21924, 'admin'),
(21, '28676798903955', '2023-12-21 13:32:17', 199080, 21924, 'admin'),
(22, '28676798903955', '2023-12-21 13:32:41', 199080, 21924, 'admin'),
(23, '28676798903955', '2023-12-21 13:32:59', 199080, 21924, 'admin'),
(24, '28676798903955', '2023-12-21 13:33:37', 199080, 21924, 'admin'),
(25, '39174195938839', '2023-12-21 13:33:57', 37440, 4140, 'admin'),
(26, '37193591794844', '2023-12-21 13:34:51', 59400, 6120, 'admin'),
(27, '24634145670727', '2023-12-21 13:35:44', 29700, 3060, 'admin'),
(28, '24578090379451', '2023-12-21 13:36:03', 11880, 1224, 'admin'),
(29, '61406169269172', '2023-12-22 06:35:49', 13200, 2544, 'admin'),
(30, '80441209222128', '2023-12-22 06:40:33', 48200, 9572, 'admin'),
(31, '93532375259165', '2023-12-22 09:29:46', 6600, 1272, 'admin'),
(32, '10695719377945', '2023-12-22 09:31:09', 16000, 2800, 'admin'),
(33, '77524156525714', '2023-12-22 09:34:40', 16000, 2800, 'admin'),
(34, '53065829816898', '2023-12-22 09:45:00', 65900, 13150, 'admin');

--
-- Triggers `tbl_t_sales`
--
DELIMITER $$
CREATE TRIGGER `drop_all_product_from_cart` AFTER INSERT ON `tbl_t_sales` FOR EACH ROW BEGIN

	DELETE FROM tbl_t_cart;
    

END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_h_product`
--
ALTER TABLE `tbl_h_product`
  ADD PRIMARY KEY (`id_product_thp`);

--
-- Indexes for table `tbl_m_factory`
--
ALTER TABLE `tbl_m_factory`
  ADD PRIMARY KEY (`id_factory_tmf`);

--
-- Indexes for table `tbl_m_product`
--
ALTER TABLE `tbl_m_product`
  ADD PRIMARY KEY (`id_product_tmp`),
  ADD KEY `fk_id_suplier_tms_tmp` (`id_suplier_tmp`),
  ADD KEY `fk_id_warehouse_tmw_tmp` (`id_factory_tmp`),
  ADD KEY `fk_id_unit_tmun_large_tmp` (`id_large_unit_tmp`),
  ADD KEY `fk_id_unit_tmun_small_tmp` (`id_small_unit_tmp`);

--
-- Indexes for table `tbl_m_suplier`
--
ALTER TABLE `tbl_m_suplier`
  ADD PRIMARY KEY (`id_suplier_tms`);

--
-- Indexes for table `tbl_m_unit`
--
ALTER TABLE `tbl_m_unit`
  ADD PRIMARY KEY (`id_unit_tmun`);

--
-- Indexes for table `tbl_m_user`
--
ALTER TABLE `tbl_m_user`
  ADD PRIMARY KEY (`id_tmu`);

--
-- Indexes for table `tbl_t_cart`
--
ALTER TABLE `tbl_t_cart`
  ADD PRIMARY KEY (`id_ttc`),
  ADD KEY `fk_id_product_ttc` (`id_product_ttc`);

--
-- Indexes for table `tbl_t_list_purchase`
--
ALTER TABLE `tbl_t_list_purchase`
  ADD PRIMARY KEY (`id_list_ttlp`),
  ADD KEY `fk_id_product_ttlp` (`id_product_ttlp`);

--
-- Indexes for table `tbl_t_purchase`
--
ALTER TABLE `tbl_t_purchase`
  ADD PRIMARY KEY (`id_purchase_ttp`),
  ADD KEY `fk_id_suplier_ttp` (`id_suplier_ttp`);

--
-- Indexes for table `tbl_t_sales`
--
ALTER TABLE `tbl_t_sales`
  ADD PRIMARY KEY (`id_sales_tts`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_m_factory`
--
ALTER TABLE `tbl_m_factory`
  MODIFY `id_factory_tmf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_m_product`
--
ALTER TABLE `tbl_m_product`
  MODIFY `id_product_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_m_suplier`
--
ALTER TABLE `tbl_m_suplier`
  MODIFY `id_suplier_tms` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_m_unit`
--
ALTER TABLE `tbl_m_unit`
  MODIFY `id_unit_tmun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_m_user`
--
ALTER TABLE `tbl_m_user`
  MODIFY `id_tmu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_t_cart`
--
ALTER TABLE `tbl_t_cart`
  MODIFY `id_ttc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tbl_t_list_purchase`
--
ALTER TABLE `tbl_t_list_purchase`
  MODIFY `id_list_ttlp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `tbl_t_purchase`
--
ALTER TABLE `tbl_t_purchase`
  MODIFY `id_purchase_ttp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_t_sales`
--
ALTER TABLE `tbl_t_sales`
  MODIFY `id_sales_tts` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_m_product`
--
ALTER TABLE `tbl_m_product`
  ADD CONSTRAINT `fk_id_factory_tmf_tmp` FOREIGN KEY (`id_factory_tmp`) REFERENCES `tbl_m_factory` (`id_factory_tmf`),
  ADD CONSTRAINT `fk_id_suplier_tms_tmp` FOREIGN KEY (`id_suplier_tmp`) REFERENCES `tbl_m_suplier` (`id_suplier_tms`),
  ADD CONSTRAINT `fk_id_unit_tmun_large_tmp` FOREIGN KEY (`id_large_unit_tmp`) REFERENCES `tbl_m_unit` (`id_unit_tmun`),
  ADD CONSTRAINT `fk_id_unit_tmun_small_tmp` FOREIGN KEY (`id_small_unit_tmp`) REFERENCES `tbl_m_unit` (`id_unit_tmun`);

--
-- Constraints for table `tbl_t_cart`
--
ALTER TABLE `tbl_t_cart`
  ADD CONSTRAINT `fk_id_product_ttc` FOREIGN KEY (`id_product_ttc`) REFERENCES `tbl_m_product` (`id_product_tmp`);

--
-- Constraints for table `tbl_t_purchase`
--
ALTER TABLE `tbl_t_purchase`
  ADD CONSTRAINT `fk_id_suplier_ttp` FOREIGN KEY (`id_suplier_ttp`) REFERENCES `tbl_m_suplier` (`id_suplier_tms`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
