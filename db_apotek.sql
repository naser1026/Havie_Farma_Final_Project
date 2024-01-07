-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 07, 2024 at 11:49 AM
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
-- Table structure for table `tbl_m_opname`
--

CREATE TABLE `tbl_m_opname` (
  `id_opname_tmo` int(11) NOT NULL,
  `description_tmo` varchar(100) NOT NULL,
  `qty_ok_tmo` int(11) NOT NULL,
  `qty_up_tmo` int(11) NOT NULL,
  `qty_down_tmo` int(11) NOT NULL,
  `created_by_tmo` varchar(50) NOT NULL,
  `created_date_tmo` timestamp NOT NULL DEFAULT current_timestamp(),
  `percentase_tmo` varchar(10) NOT NULL,
  `total_difference_price_tmo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_m_opname`
--

INSERT INTO `tbl_m_opname` (`id_opname_tmo`, `description_tmo`, `qty_ok_tmo`, `qty_up_tmo`, `qty_down_tmo`, `created_by_tmo`, `created_date_tmo`, `percentase_tmo`, `total_difference_price_tmo`) VALUES
(5, 'SO 30/12/2023', 7, 0, 0, 'admin', '2023-12-30 01:22:20', '0.00%', 0);

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
(32, '', '', 'ABOCATH 18', 31, 31, 1, 15000, 16650, 0, 0, '2023-12-21 01:27:32', 'admin', 'admin', '2023-12-21 01:34:16', 6),
(33, '89919906181646', '89919906181646', 'ABOCATH 20	', 31, 31, 1, 15000, 16650, 0, 0, '2023-12-21 01:31:34', 'admin', NULL, NULL, 20),
(34, '', '', 'ACRAN 150MG TAB', 32, 35, 30, 144000, 5328, 5, 1, '2023-12-21 01:32:50', 'admin', 'admin', '2023-12-21 01:33:38', 20),
(35, '', '', 'ACTIVED KUNING', 36, 25, 1, 47523, 52750, 0, 0, '2023-12-21 01:35:27', 'admin', 'admin', '2023-12-21 01:36:34', 1),
(36, '', '', 'ACTIVED MERAH', 36, 25, 1, 54535, 60533, 0, 0, '2023-12-21 01:37:33', 'admin', NULL, NULL, 1),
(37, '', '', 'ACYCLOVIR 200MG TAB', 32, 35, 100, 59500, 660, 0, 21, '2023-12-21 01:38:40', 'admin', NULL, NULL, 2300),
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
-- Table structure for table `tbl_m_report`
--

CREATE TABLE `tbl_m_report` (
  `id_report_tmre` int(11) NOT NULL,
  `report_date_tmre` date DEFAULT NULL,
  `income_tmre` int(15) DEFAULT NULL,
  `qty_tmre` int(11) DEFAULT NULL,
  `profit_tmre` int(11) DEFAULT NULL,
  `retur_amount_tmre` int(11) DEFAULT NULL,
  `retur_price_tmre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_m_report`
--

INSERT INTO `tbl_m_report` (`id_report_tmre`, `report_date_tmre`, `income_tmre`, `qty_tmre`, `profit_tmre`, `retur_amount_tmre`, `retur_price_tmre`) VALUES
(2, '2024-01-07', 40000, 2, 2000, NULL, NULL);

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
  `status_tmu` enum('ACTIVE','NONACTIVE','DELETED''') NOT NULL DEFAULT 'ACTIVE',
  `created_date_tmu` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile_picture_tmu` varchar(500) DEFAULT 'default.png',
  `update_by_tmu` varchar(50) DEFAULT NULL,
  `update_date_tmu` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_m_user`
--

INSERT INTO `tbl_m_user` (`id_tmu`, `name_tmu`, `phone_number_tmu`, `email_tmu`, `password_tmu`, `role_tmu`, `status_tmu`, `created_date_tmu`, `profile_picture_tmu`, `update_by_tmu`, `update_date_tmu`) VALUES
(17, 'admin', '083377199913', 'admin@mail.com', '$2y$10$07kI5UGtdo6fsSPzUkbarOsK1pkO6IuCfhkAwb2o.v7h2Fxus64Xu', 'ADMIN', 'ACTIVE', '2023-12-19 00:05:04', 'default.png', NULL, NULL);

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
	UPDATE tbl_m_product SET stock_tmp = stock_tmp - NEW.add_qty_ttc WHERE id_product_tmp = OLD.id_product_ttc;
    
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
(31, 'INV77228883', 6, '33', '10', '2024-01-01', '2024-01-11', 166500, 'Penerimaan', 'admin', '2023-12-30'),
(32, 'INV77564429', 3, '34,32', '1,2', '2024-01-06', '2024-02-15', 193140, 'Penerimaan', 'admin', '2023-12-30'),
(33, 'INV77564422', 8, '32,33,37', '2,10,20', '2024-01-01', '2024-01-17', 1520700, 'Penerimaan', 'admin', '2023-12-30'),
(34, 'FAK22133188', 5, '33,37', '10,2', '2024-01-17', '2024-01-26', 298590, 'Penerimaan', 'admin', '2024-01-05');

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
-- Table structure for table `tbl_t_retur`
--

CREATE TABLE `tbl_t_retur` (
  `id_retur_ttr` int(11) NOT NULL,
  `invoice_number_ttr` varchar(100) NOT NULL,
  `list_id_product_ttr` varchar(100) NOT NULL,
  `list_qty_ttr` varchar(100) NOT NULL,
  `creater_date_ttr` timestamp NOT NULL DEFAULT current_timestamp(),
  `retur_price_ttr` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(28, '24578090379451', '2023-12-21 13:36:03', 11880, 1224, 'admin'),
(29, '61406169269172', '2023-12-22 06:35:49', 13200, 2544, 'admin'),
(30, '80441209222128', '2023-12-22 06:40:33', 48200, 9572, 'admin'),
(31, '93532375259165', '2023-12-22 09:29:46', 6600, 1272, 'admin'),
(32, '10695719377945', '2023-12-22 09:31:09', 16000, 2800, 'admin'),
(33, '77524156525714', '2023-12-22 09:34:40', 16000, 2800, 'admin'),
(34, '53065829816898', '2023-12-22 09:45:00', 65900, 13150, 'admin'),
(35, '89076519561881', '2023-12-23 10:09:13', 20810, 4160, 'admin'),
(36, '20468057200337', '2023-12-27 09:23:11', 83240, 16640, 'admin'),
(37, '80183119897250', '2023-12-27 09:32:19', 208120, 41620, 'admin'),
(38, '57644824455745', '2023-12-28 02:41:52', 1685770, 187270, 'admin'),
(39, '24673876858726', '2023-12-30 03:47:41', 416240, 83240, 'admin'),
(40, '12950219011805', '2024-01-05 13:00:48', 66600, 13320, 'admin'),
(43, 'INV2242', '2024-01-07 10:26:31', 20000, 1000, 'admin'),
(44, '209uu93u', '2024-01-07 10:36:38', 10000, 2000, 'admin'),
(45, 'INV2242', '2024-01-07 10:37:23', 20000, 1000, 'admin'),
(46, 'INV2242', '2024-01-07 10:38:37', 20000, 1000, 'admin'),
(47, 'INV2242', '2024-01-07 10:39:07', 20000, 1000, 'admin');

--
-- Triggers `tbl_t_sales`
--
DELIMITER $$
CREATE TRIGGER `add_report` AFTER INSERT ON `tbl_t_sales` FOR EACH ROW BEGIN
	DECLARE transaction_date DATE;
    SELECT DATE(new.transaction_date_tts) INTO transaction_date;
    
    IF NOT EXISTS (SELECT * FROM tbl_m_report WHERE report_date_tmre = transaction_date) THEN 
    INSERT INTO tbl_m_report (report_date_tmre, profit_tmre, income_tmre, qty_tmre) VALUES (transaction_date, NEW.profit_tts, NEW.gross_income_tts, '1');
    
    ELSE 
    UPDATE tbl_m_report SET income_tmre = income_tmre + NEW.gross_income_tts, profit_tmre = profit_tmre + NEW.profit_tts, qty_tmre = qty_tmre + 1 WHERE report_date_tmre = transaction_date;
    END IF;         
END
$$
DELIMITER ;
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
-- Indexes for table `tbl_m_opname`
--
ALTER TABLE `tbl_m_opname`
  ADD PRIMARY KEY (`id_opname_tmo`);

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
-- Indexes for table `tbl_m_report`
--
ALTER TABLE `tbl_m_report`
  ADD PRIMARY KEY (`id_report_tmre`);

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
-- Indexes for table `tbl_t_retur`
--
ALTER TABLE `tbl_t_retur`
  ADD PRIMARY KEY (`id_retur_ttr`);

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
-- AUTO_INCREMENT for table `tbl_m_opname`
--
ALTER TABLE `tbl_m_opname`
  MODIFY `id_opname_tmo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_m_product`
--
ALTER TABLE `tbl_m_product`
  MODIFY `id_product_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_m_report`
--
ALTER TABLE `tbl_m_report`
  MODIFY `id_report_tmre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id_ttc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `tbl_t_list_purchase`
--
ALTER TABLE `tbl_t_list_purchase`
  MODIFY `id_list_ttlp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `tbl_t_purchase`
--
ALTER TABLE `tbl_t_purchase`
  MODIFY `id_purchase_ttp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_t_retur`
--
ALTER TABLE `tbl_t_retur`
  MODIFY `id_retur_ttr` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_t_sales`
--
ALTER TABLE `tbl_t_sales`
  MODIFY `id_sales_tts` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

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
