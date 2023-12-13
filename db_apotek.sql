-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 05:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_category`
--

CREATE TABLE `tbl_m_category` (
  `id_category_tmc` int(11) NOT NULL,
  `name_tmc` varchar(100) NOT NULL,
  `description_tmc` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_m_category`
--

INSERT INTO `tbl_m_category` (`id_category_tmc`, `name_tmc`, `description_tmc`) VALUES
(1, 'Obat Cair', NULL),
(2, 'Tablet', NULL),
(3, 'Kapsul', NULL),
(4, 'Obat Oles', NULL),
(5, 'Supositoria', NULL),
(6, 'Obat Tetes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_product`
--

CREATE TABLE `tbl_m_product` (
  `id_product_tmp` int(11) NOT NULL,
  `name_tmp` varchar(200) NOT NULL,
  `id_category_tmc` int(11) NOT NULL,
  `unit_tmp` enum('Strip','Botol','Ampul','Vial','Tube') NOT NULL,
  `purchase_price_tmp` int(30) NOT NULL,
  `selling_price_tmp` int(30) NOT NULL,
  `id_suplier_tms` int(11) NOT NULL,
  `stock_tmp` int(10) NOT NULL,
  `id_warehouse_tmw` int(11) NOT NULL,
  `id_rack_tmr` int(11) NOT NULL,
  `date_added_tmp` timestamp NOT NULL DEFAULT current_timestamp(),
  `added_by_tmp` varchar(50) NOT NULL,
  `expired_date_tmp` date NOT NULL,
  `img_tmp` varchar(200) DEFAULT 'default.png',
  `update_by_tmp` varchar(50) DEFAULT NULL,
  `update_date_tmp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_m_product`
--

INSERT INTO `tbl_m_product` (`id_product_tmp`, `name_tmp`, `id_category_tmc`, `unit_tmp`, `purchase_price_tmp`, `selling_price_tmp`, `id_suplier_tms`, `stock_tmp`, `id_warehouse_tmw`, `id_rack_tmr`, `date_added_tmp`, `added_by_tmp`, `expired_date_tmp`, `img_tmp`, `update_by_tmp`, `update_date_tmp`) VALUES
(12345677, 'Sanmol', 1, 'Botol', 16000, 18000, 2, 20, 1, 2, '2023-12-05 10:55:28', 'Naser Setiawan', '2023-12-07', '6571a8769fe53_sanmol.png', 'Naser Setiawan', '2023-12-07 11:11:50'),
(12345678, 'Paracetamol', 1, 'Strip', 12000, 15000, 3, 20, 1, 2, '2023-12-04 04:59:22', 'Naser Setiawan', '2023-12-07', '6571a8965eaa2_paracetamol.png', 'Naser Setiawan', '2023-12-07 11:14:04'),
(12345679, 'Amoxilin', 1, 'Strip', 15000, 18000, 3, 30, 1, 2, '2023-12-04 05:00:28', 'Naser Setiawan', '2023-12-07', '6571a89f32600_amoxillin.png', 'Naser Setiawan', '2023-12-07 11:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_rack`
--

CREATE TABLE `tbl_m_rack` (
  `id_rack_tmr` int(11) NOT NULL,
  `name_tmr` varchar(20) NOT NULL,
  `id_warehouse_tmw` int(11) NOT NULL,
  `capacity_tmr` int(10) NOT NULL DEFAULT 300,
  `free_space_tmc` int(10) NOT NULL,
  `created_date_tmr` timestamp NOT NULL DEFAULT current_timestamp(),
  `status_activated_tmr` tinyint(4) NOT NULL DEFAULT 0,
  `status_deleted_tmr` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_m_rack`
--

INSERT INTO `tbl_m_rack` (`id_rack_tmr`, `name_tmr`, `id_warehouse_tmw`, `capacity_tmr`, `free_space_tmc`, `created_date_tmr`, `status_activated_tmr`, `status_deleted_tmr`) VALUES
(1, '1A', 1, 300, 300, '2023-12-03 06:02:28', 0, 0),
(2, '1B', 1, 300, 300, '2023-12-03 06:04:08', 0, 0),
(3, '1C', 1, 300, 300, '2023-12-03 06:04:08', 0, 0),
(4, '1D', 1, 300, 300, '2023-12-03 06:04:08', 0, 0),
(5, '2A', 1, 300, 300, '2023-12-03 06:04:08', 0, 0),
(6, '2B', 1, 300, 300, '2023-12-03 06:04:08', 0, 0),
(7, '2C', 1, 300, 300, '2023-12-03 06:04:08', 0, 0),
(8, '2D', 1, 300, 300, '2023-12-03 06:04:08', 0, 0),
(9, '3A', 1, 300, 300, '2023-12-03 06:04:08', 0, 0),
(10, '3B', 1, 300, 300, '2023-12-03 06:04:08', 0, 0),
(11, '3C', 1, 300, 300, '2023-12-03 06:04:08', 0, 0),
(12, '3D', 1, 300, 300, '2023-12-03 06:04:08', 0, 0);

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
  `website_tms` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_m_suplier`
--

INSERT INTO `tbl_m_suplier` (`id_suplier_tms`, `name_tms`, `address_tms`, `phone_number_tms`, `email_tms`, `website_tms`) VALUES
(2, 'PT Central Filter Gunatama', 'Graha Raya Bintaro Jaya Blok G 10/3B, Pakujaya Serpong – Tangerang 15324 Indonesia', '02153153685', 'info@centralfilterguna.com', ' https://www.centralfilterguna.com/'),
(3, 'PT Enercon Equipment Company', 'Jl Bintaro Utama 3 blok AC No 9 Bintaro Jaya Sektor 3 Tanggerang Selatan 15221 Indonesia', '0217353781', 'infoenercon@gmail.com', 'www.enercon.co.id'),
(4, 'PT Globalindo Inti Sarana', 'Ruko Kedoya Indah Blok RB-BE Jl. Kedoya Raya, Jakarta Barat 11520', '02158355151', 'globalindo.intisarana@yahoo.com', 'www.japanairfilter.com'),
(5, 'PT  Jayapak Sinar Abadi', 'Komplex Gading Bukit Indah blok Q No 8 Jl. Bolevard Artha Gading Kelapa Gading Jakarta 14240 Indonesia', '02145846102', 'jayapak@gmail.com', 'https://www.jayapak.com/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_user`
--

CREATE TABLE `tbl_m_user` (
  `id_tmu` int(11) NOT NULL,
  `name_tmu` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone_number_tmu` varchar(20) NOT NULL,
  `email_tmu` varchar(100) NOT NULL,
  `gender_tmu` enum('LAKI-LAKI','PEREMPUAN') NOT NULL,
  `address_tmu` varchar(200) NOT NULL,
  `password_tmu` varchar(500) NOT NULL,
  `role_tmu` enum('ADMIN','USER') NOT NULL DEFAULT 'USER',
  `status_deactived_tmu` tinyint(4) NOT NULL DEFAULT 0,
  `status_deleted_tmu` tinyint(4) NOT NULL DEFAULT 0,
  `created_date_tmu` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile_picture_tmu` varchar(500) DEFAULT 'default.png',
  `update_by_tmu` varchar(50) DEFAULT NULL,
  `update_date_tmu` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_m_user`
--

INSERT INTO `tbl_m_user` (`id_tmu`, `name_tmu`, `phone_number_tmu`, `email_tmu`, `gender_tmu`, `address_tmu`, `password_tmu`, `role_tmu`, `status_deactived_tmu`, `status_deleted_tmu`, `created_date_tmu`, `profile_picture_tmu`, `update_by_tmu`, `update_date_tmu`) VALUES
(3, 'Naser Setiawan', '081398173028', 'admin@mail.com', 'LAKI-LAKI', 'Teluk Jambe timur', '$2y$10$OuHqbsJXxm3HkZa8VEiZh.K7.n/Sw7L0NFzDMeVMRjh4VhE2kjw0K', 'ADMIN', 0, 0, '2023-11-29 14:33:32', 'default.png', NULL, NULL),
(6, 'Naser Setiawan', '12343131', 'naser@mail.com', 'LAKI-LAKI', 'adoad', '$2y$10$yMfrUljc93O4FUySC.wsXeAVPFOvqxI3mKKCyc.CyKIugjNDaGnRm', 'USER', 0, 0, '2023-11-30 12:52:34', 'default.png', NULL, NULL),
(12, 'ujang mahmudin', '08173028228', 'ujang@mail.com', 'LAKI-LAKI', 'karawang', '$2y$10$07kI5UGtdo6fsSPzUkbarOsK1pkO6IuCfhkAwb2o.v7h2Fxus64Xu', 'USER', 0, 0, '2023-11-30 12:59:50', 'default.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_m_warehouse`
--

CREATE TABLE `tbl_m_warehouse` (
  `id_warehouse_tmw` int(11) NOT NULL,
  `name_tmw` varchar(50) NOT NULL,
  `capacity_tmw` int(10) NOT NULL DEFAULT 20,
  `free_space_tmw` int(10) NOT NULL,
  `created_date_tmw` timestamp NOT NULL DEFAULT current_timestamp(),
  `status_activated_tmw` tinyint(4) NOT NULL DEFAULT 0,
  `status_deleted_tmw` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_m_warehouse`
--

INSERT INTO `tbl_m_warehouse` (`id_warehouse_tmw`, `name_tmw`, `capacity_tmw`, `free_space_tmw`, `created_date_tmw`, `status_activated_tmw`, `status_deleted_tmw`) VALUES
(1, 'Gudang Utama', 20, 20, '2023-12-03 05:59:26', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_t_buy_product`
--

CREATE TABLE `tbl_t_buy_product` (
  `id_ttbp` int(11) NOT NULL,
  `id_product_tmp` int(11) NOT NULL,
  `id_tmu` int(11) NOT NULL,
  `date_buy_ttbp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_t_purchase_product`
--

CREATE TABLE `tbl_t_purchase_product` (
  `id_purchase_ttpp` int(11) NOT NULL,
  `id_suplier_tms` int(11) NOT NULL,
  `product_name_ttpp` varchar(50) NOT NULL,
  `amount_ttpp` int(20) NOT NULL,
  `price_ttpp` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_m_category`
--
ALTER TABLE `tbl_m_category`
  ADD PRIMARY KEY (`id_category_tmc`);

--
-- Indexes for table `tbl_m_product`
--
ALTER TABLE `tbl_m_product`
  ADD PRIMARY KEY (`id_product_tmp`),
  ADD KEY `fk_id_suplier_tms_tmp` (`id_suplier_tms`),
  ADD KEY `fk_id_category_tmc_tmp` (`id_category_tmc`),
  ADD KEY `fk_id_warehouse_tmw_tmp` (`id_warehouse_tmw`),
  ADD KEY `fk_id_rack_tmr_tmp` (`id_rack_tmr`);

--
-- Indexes for table `tbl_m_rack`
--
ALTER TABLE `tbl_m_rack`
  ADD PRIMARY KEY (`id_rack_tmr`),
  ADD KEY `fk_id_warehouse_tmw_tmr` (`id_warehouse_tmw`);

--
-- Indexes for table `tbl_m_suplier`
--
ALTER TABLE `tbl_m_suplier`
  ADD PRIMARY KEY (`id_suplier_tms`);

--
-- Indexes for table `tbl_m_user`
--
ALTER TABLE `tbl_m_user`
  ADD PRIMARY KEY (`id_tmu`);

--
-- Indexes for table `tbl_m_warehouse`
--
ALTER TABLE `tbl_m_warehouse`
  ADD PRIMARY KEY (`id_warehouse_tmw`);

--
-- Indexes for table `tbl_t_buy_product`
--
ALTER TABLE `tbl_t_buy_product`
  ADD PRIMARY KEY (`id_ttbp`),
  ADD KEY `fk_id_tmu_ttbp` (`id_tmu`),
  ADD KEY `fk_id_product_tmp_ttbp` (`id_product_tmp`);

--
-- Indexes for table `tbl_t_purchase_product`
--
ALTER TABLE `tbl_t_purchase_product`
  ADD PRIMARY KEY (`id_purchase_ttpp`),
  ADD KEY `fk_id_suplier_tms_ttpp` (`id_suplier_tms`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_m_category`
--
ALTER TABLE `tbl_m_category`
  MODIFY `id_category_tmc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_m_rack`
--
ALTER TABLE `tbl_m_rack`
  MODIFY `id_rack_tmr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_m_suplier`
--
ALTER TABLE `tbl_m_suplier`
  MODIFY `id_suplier_tms` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_m_user`
--
ALTER TABLE `tbl_m_user`
  MODIFY `id_tmu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_m_warehouse`
--
ALTER TABLE `tbl_m_warehouse`
  MODIFY `id_warehouse_tmw` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_t_buy_product`
--
ALTER TABLE `tbl_t_buy_product`
  MODIFY `id_ttbp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_t_purchase_product`
--
ALTER TABLE `tbl_t_purchase_product`
  MODIFY `id_purchase_ttpp` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_m_product`
--
ALTER TABLE `tbl_m_product`
  ADD CONSTRAINT `fk_id_category_tmc_tmp` FOREIGN KEY (`id_category_tmc`) REFERENCES `tbl_m_category` (`id_category_tmc`),
  ADD CONSTRAINT `fk_id_rack_tmr_tmp` FOREIGN KEY (`id_rack_tmr`) REFERENCES `tbl_m_rack` (`id_rack_tmr`),
  ADD CONSTRAINT `fk_id_suplier_tms_tmp` FOREIGN KEY (`id_suplier_tms`) REFERENCES `tbl_m_suplier` (`id_suplier_tms`),
  ADD CONSTRAINT `fk_id_warehouse_tmw_tmp` FOREIGN KEY (`id_warehouse_tmw`) REFERENCES `tbl_m_warehouse` (`id_warehouse_tmw`);

--
-- Constraints for table `tbl_m_rack`
--
ALTER TABLE `tbl_m_rack`
  ADD CONSTRAINT `fk_id_warehouse_tmw_tmr` FOREIGN KEY (`id_warehouse_tmw`) REFERENCES `tbl_m_warehouse` (`id_warehouse_tmw`);

--
-- Constraints for table `tbl_t_buy_product`
--
ALTER TABLE `tbl_t_buy_product`
  ADD CONSTRAINT `fk_id_product_tmp_ttbp` FOREIGN KEY (`id_product_tmp`) REFERENCES `tbl_m_product` (`id_product_tmp`),
  ADD CONSTRAINT `fk_id_tmu_ttbp` FOREIGN KEY (`id_tmu`) REFERENCES `tbl_m_user` (`id_tmu`);

--
-- Constraints for table `tbl_t_purchase_product`
--
ALTER TABLE `tbl_t_purchase_product`
  ADD CONSTRAINT `fk_id_suplier_tms_ttpp` FOREIGN KEY (`id_suplier_tms`) REFERENCES `tbl_m_suplier` (`id_suplier_tms`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
