-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 19, 2023 at 10:22 AM
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
-- Table structure for table `tbl_h_user`
--

CREATE TABLE `tbl_h_user` (
  `id_thu` int(11) NOT NULL,
  `name_thu` varchar(50) NOT NULL,
  `email_tmu` varchar(50) NOT NULL,
  `phone_number_tmu` varchar(20) NOT NULL,
  `password_tmu` varchar(200) NOT NULL,
  `address_thu` enum('LAKI-LAKI','PEREMPUAN') NOT NULL,
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
  `id_suplier_tmp` int(11) NOT NULL,
  `id_factory_tmp` int(11) NOT NULL,
  `date_added_tmp` timestamp NOT NULL DEFAULT current_timestamp(),
  `added_by_tmp` varchar(50) DEFAULT NULL,
  `update_by_tmp` varchar(50) DEFAULT NULL,
  `update_date_tmp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_m_product`
--

INSERT INTO `tbl_m_product` (`id_product_tmp`, `large_barcode_tmp`, `small_barcode_tmp`, `name_tmp`, `id_large_unit_tmp`, `id_small_unit_tmp`, `fill_tmp`, `large_price_tmp`, `small_price_tmp`, `id_suplier_tmp`, `id_factory_tmp`, `date_added_tmp`, `added_by_tmp`, `update_by_tmp`, `update_date_tmp`) VALUES
(24, '11111111111', '2222222222', 'SANMOL', 36, 36, 10, 30000, 3330, 2, 1, '2023-12-19 01:20:46', NULL, 'admin', '2023-12-19 08:22:31'),
(25, '4444444444', '333333333', 'Amoxilin', 3, 3, 2, 10000, 5550, 4, 1, '2023-12-19 02:55:50', 'admin', 'admin', '2023-12-19 08:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_rack`
--

CREATE TABLE `tbl_m_rack` (
  `id_rack_tmr` int(11) NOT NULL,
  `name_tmr` varchar(20) NOT NULL,
  `status_activated` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_m_rack`
--

INSERT INTO `tbl_m_rack` (`id_rack_tmr`, `name_tmr`, `status_activated`) VALUES
(1, 'A', 0),
(2, 'B', 0),
(3, 'C', 0),
(4, 'D', 0),
(5, 'E', 0);

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
(2, 'PT Central Filter Gunatama', 'Graha Raya Bintaro Jaya Blok G 10/3B, Pakujaya Serpong – Tangerang 15324 Indonesia', '02153153685', 'info@centralfilterguna.com', ' https://www.centralfilterguna.com/', '0'),
(3, 'PT Enercon Equipment Company', 'Jl Bintaro Utama 3 blok AC No 9 Bintaro Jaya Sektor 3 Tanggerang Selatan 15221 Indonesia', '0217353781', 'infoenercon@gmail.com', 'www.enercon.co.id', '0'),
(4, 'PT Globalindo Inti Sarana', 'Ruko Kedoya Indah Blok RB-BE Jl. Kedoya Raya, Jakarta Barat 11520', '02158355151', 'globalindo.intisarana@yahoo.com', 'www.japanairfilter.com', '0'),
(5, 'PT  Jayapak Sinar Abadi', 'Komplex Gading Bukit Indah blok Q No 8 Jl. Bolevard Artha Gading Kelapa Gading Jakarta 14240 Indonesia', '02145846102', 'jayapak@gmail.com', 'https://www.jayapak.com/', '0'),
(6, 'PT.SAPTA SARI TAMA', 'Jakarta', '-', '-', '-', '-'),
(7, 'MADU AM', 'Karawang', '-', '-', '-', '-'),
(8, 'ALKES RYAN', 'Karawang', '-', '-', '-', '-'),
(9, 'PT.MILLENNIUM PHARMACON INTERNATIONAL', 'Jakarta', '-', '-', '-', '-'),
(10, 'MADU NUSANTARA', 'JL.SOEKARNO HATTA NO.639', '082287340884', '-', '-', '-');

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
-- Table structure for table `tbl_t_purchase`
--

CREATE TABLE `tbl_t_purchase` (
  `id_purchase_ttp` int(11) NOT NULL,
  `invoice_number_ttp` varchar(50) NOT NULL,
  `invoice_date_ttp` date NOT NULL,
  `payment_date_ttp` date NOT NULL,
  `expire_date_ttp` date NOT NULL,
  `id_product_ttp` int(11) NOT NULL,
  `id_rack_ttp` int(11) NOT NULL,
  `amount_ttp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_t_sell`
--

CREATE TABLE `tbl_t_sell` (
  `id_sell_tts` int(11) NOT NULL,
  `invoice_number_tts` varchar(20) NOT NULL,
  `transaction_date_tts` timestamp NOT NULL DEFAULT current_timestamp(),
  `total_price_tts` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `tbl_m_rack`
--
ALTER TABLE `tbl_m_rack`
  ADD PRIMARY KEY (`id_rack_tmr`);

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
-- Indexes for table `tbl_t_purchase`
--
ALTER TABLE `tbl_t_purchase`
  ADD PRIMARY KEY (`id_purchase_ttp`),
  ADD KEY `fk_id_product_ttp` (`id_product_ttp`),
  ADD KEY `fk_id_rack_ttp` (`id_rack_ttp`);

--
-- Indexes for table `tbl_t_sell`
--
ALTER TABLE `tbl_t_sell`
  ADD PRIMARY KEY (`id_sell_tts`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_m_factory`
--
ALTER TABLE `tbl_m_factory`
  MODIFY `id_factory_tmf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_m_product`
--
ALTER TABLE `tbl_m_product`
  MODIFY `id_product_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_m_rack`
--
ALTER TABLE `tbl_m_rack`
  MODIFY `id_rack_tmr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_m_suplier`
--
ALTER TABLE `tbl_m_suplier`
  MODIFY `id_suplier_tms` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- AUTO_INCREMENT for table `tbl_t_purchase`
--
ALTER TABLE `tbl_t_purchase`
  MODIFY `id_purchase_ttp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_t_sell`
--
ALTER TABLE `tbl_t_sell`
  MODIFY `id_sell_tts` int(11) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `tbl_t_purchase`
--
ALTER TABLE `tbl_t_purchase`
  ADD CONSTRAINT `fk_id_product_ttp` FOREIGN KEY (`id_product_ttp`) REFERENCES `tbl_m_product` (`id_product_tmp`),
  ADD CONSTRAINT `fk_id_rack_ttp` FOREIGN KEY (`id_rack_ttp`) REFERENCES `tbl_m_rack` (`id_rack_tmr`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
