-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2023 at 01:04 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trisakaydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `admin_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `admin_password`) VALUES
(1, 'Admin Justine', 'justine.apol21@gmail.com', '09212001'),
(2, 'Krizia', 'kriziabate02@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `admin_otp_checker`
--

CREATE TABLE `admin_otp_checker` (
  `id` int(11) NOT NULL,
  `otp` int(11) NOT NULL,
  `is_expired` tinyint(4) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_otp_checker`
--

INSERT INTO `admin_otp_checker` (`id`, `otp`, `is_expired`, `create_at`) VALUES
(0, 39186, 1, '2023-09-29 13:49:25'),
(0, 83444, 1, '2023-10-27 08:53:55'),
(0, 12350, 1, '2023-10-27 16:01:20');

-- --------------------------------------------------------

--
-- Table structure for table `com_sign_up`
--

CREATE TABLE `com_sign_up` (
  `user_id` varchar(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `CodeV` varchar(255) NOT NULL,
  `verification` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `com_sign_up`
--

INSERT INTO `com_sign_up` (`user_id`, `full_name`, `email`, `password`, `CodeV`, `verification`) VALUES
('', 'Ana Reyes', 'anareyes@gmail.com', '5390489da3971cbbcd22c159d54d24da', 'b34b3b9f21208dffc43d16847165a8f9', 0),
('', 'Andres Ramos', 'andres.ramos@gmail.com', '8ab2b393f039807dc8ace6fdd2c52b5d', 'a5b06bd80b9ba704588dead2c96c5ac1', 0),
('', 'Antonio Santos', 'antonio.santos@gmail.com', 'ea1ec124cebfb43eaafe99366ae5e480', '8b56d10636f86da428574692ffac44ff', 0),
('', 'April Joy Hachero', 'apriljoyhachero1@gmail.com', '3df82057f5434cf22c7a2cf31a345703', 'f3f6e0a28564aaf36c0552c2be0e53d4', 0),
('', 'Carla Fernandez', 'carla.fernandez21@gmail.com', 'a261108357a8dbcb6a891b1efd40a794', 'b0d1880767fd7cfa95be07a4358cc1a7', 0),
('', 'Daniel Rivas', 'daniel.rivas.ph@gmail.com', '0f281d173f0fdfdccccd7e5b8edc21f1', '1429fed9ff78c9f5cfdf30d9ec945af5', 0),
('', 'Dunkurt Salazar', 'dunkurt.salazar@gmail.com', '970f81366c42e7098ffa84e38c279028', '6cecd6cf5fa85f26161015fb8b2ec331', 0),
('', 'Eduardo Torres', 'eduardo.torres4u@gmail.com', 'd2c9694bdad14eaabbed8b425f994fce', '0b03c6bf4ff1f65680fad13b13ff22e8', 0),
('', 'Emmanuel Rodriguez', 'emmanuel.rodriguez7@gmail.com', 'a6bbf15f971811d992d30b54cef9eb80', '887e2db9ea63af63496dd734cd3c6bb9', 0),
('', 'Victor Espinosa', 'espinosa88@gmail.com', '1e654bb1fb86391601438245e10b25bb', '394264961c826ad3eea65bbb2d8f56d8', 0),
('', 'Fernando Gonzales', 'fernando.gonzales123@gmail.com', 'fbc4fef99cdd459c958f92ef36c9fe2b', '533e6ea43166f992a1df3e3053646674', 0),
('', 'Isabella Rivera', 'isabella.rivera123@gmail.com', '779b4d5f8313022902638fd6a0d4c2a3', 'd091aaa253266b56549631e3f621d452', 0),
('', 'Jose Reyes', 'jose.reyes@gmail.comom', 'b6ae0021d23a113da04061b4caf8cc73', '24e142b29e09f01463d5a1a01714f870', 0),
('', 'Jose Santos', 'josesantos@gmail.com', '90e528618534d005b1a7e7b7a367813f', 'c9340e759a28fe2084e1e2bd8906c884', 0),
('', 'Justine Apol B. Trinidad', 'justine.apol21@gmail.com', '202cb962ac59075b964b07152d234b70', 'd5f4f9efaff4ea3d07464b43a6dfabc9', 0),
('', 'Krizia Kaye Bate', 'kriziakayebate02@gmail.com', '3d2a06899ce90d771338756e78f53327', '098f9cb012b890866bca6d5d60d73f8e', 0),
('', 'Lorna Garcia', 'lorna.garcia99@gmail.com', '056c042d932277c3704394a54f4bfbc6', '1fd9ac930a44511c012649b53c230785', 0),
('', 'Luis Hernandez', 'luis.hernandez@gmail.com', 'c6dd12e1a12f489f5aac58261be2ca4d', 'a35a28ff512a59b7c2d05849cdb04afe', 0),
('', 'Maria Cruz', 'mariacruz@gmail.com', 'f8461b554d59b3014e8ff5165dc62fac', 'c802bcb1afeff7a7c459223d1e844bc2', 0),
('', 'Maureen Bautista', 'maureen.bautista99@gmail.com', 'b7e6b7f31c074e168204d44f97f9a513', 'e42691bf3b7dfd2ee4015ae28954b97e', 0),
('', 'Miguel Morales', 'miguel.morales.ph@gmail.com', '8fa56f2195a1c9da3a819f39fda4e724', 'fbfe88357bde91947a3c1bd6b7ab02eb', 0),
('', 'Patricia Valdez', 'patricia.valdez.ph@gmail.com', '8e3a8d3e644e608d25ec40162988a137', '3a4c0ef69a98346ba71bb248d9b2052b', 0),
('', 'Rosario Reyes', 'rosario.reyes22@gmail.com', 'd2200b3c9b3d1e7a1effb538d8e23be2', 'c95122634215a71a0d1acfabb695ae66', 0),
('', 'Sofia Castro', 'sofia.castro22@gmail.com', 'e3327dde20d1f851c7af510df664854d', '1cbf3360d119ec6c33a5cca0ccef89bc', 0),
('', 'Yvonne Alvarado', 'yvonne.alvarado.ph@gmail.com', '19faf0c476b0ff1673371a2b72c84a39', 'c194b152c68f860832d7fd24e78b89ba', 0);

-- --------------------------------------------------------

--
-- Table structure for table `driv_personalinfo`
--

CREATE TABLE `driv_personalinfo` (
  `user_id` int(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `driver_contactnumber` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `chasis_number` varchar(255) NOT NULL,
  `body_number` varchar(255) NOT NULL,
  `model_of_motor` varchar(100) NOT NULL,
  `color` varchar(50) NOT NULL,
  `toda` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `email_sent` tinyint(1) NOT NULL,
  `used` tinyint(1) NOT NULL,
  `role` varchar(255) NOT NULL,
  `plate_number` varchar(255) NOT NULL,
  `qrcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driv_personalinfo`
--

INSERT INTO `driv_personalinfo` (`user_id`, `full_name`, `driver_contactnumber`, `email`, `chasis_number`, `body_number`, `model_of_motor`, `color`, `toda`, `Password`, `email_sent`, `used`, `role`, `plate_number`, `qrcode`) VALUES
(1, 'Axel Reyes', '944324586', 'Areyes@gmail.com', 'FTR2421521515', '67', 'Honda', 'Red', 'Sabang', '', 0, 0, '', 'ARS-524', 'qrcodes/1.png'),
(2, 'Butchoy', '', 'butchoy@gmail.com', '', '', '', '', '', '12345', 1, 0, 'commuter', '', ''),
(3, 'VALDERAMA JR., RODELIO E.', '09322680505', 'valderamar.@gmail.com', 'KSW00204341', '00004', 'Honda', 'red', 'SUBIC', 'val12345', 0, 0, 'driver', 'CP-35212', ''),
(4, 'ROXAS, EDUARDO P.', '09236853445', 'roxase@gmail.com', 'KSW10269387', '00014', 'kawasaki', 'green', 'SUBIC', '', 1, 0, 'driver', 'BO-6165', ''),
(5, 'Juan Dela Cruz', '9222516855', 'delacruz@gmail.com', 'KW42782675', '2', 'Honda', 'Pink', 'Sta.Barbara', '', 1, 0, '', 'ABC 435', ''),
(6, 'LAWIS, ROGELIO C.', '9232657855', 'lawis@gmail.com', 'RFCPCKXJXJB024360', '1', 'Rusi', 'Red', 'Sabang', '', 1, 0, '', 'EFG 234', ''),
(7, 'SANTIAGO, MARVIN G.', '09344658933santiago@', '', 'MD2A76BY4JWE56150', '16', 'Kawasaki', 'Black', 'San Roque', '', 0, 0, '', 'NP#A', ''),
(8, 'HERNANDEZ, JUANITO D.', '9463256864', 'hernandez@gmail.com', 'KYY20007356', '3', 'Honda', 'Black', 'Subic', '', 1, 0, '', 'For HIRE', ''),
(9, 'VALDERAMA JR., RODELIO E.', '9322680505', 'valderama@gmail.com', 'KSW00204341', '4', 'Honda', 'Red', 'Subic', '', 1, 0, '', 'CP-35212', ''),
(10, 'DUAY JR., EMILIO G./NNW', '9232657855', 'duay@gmail.com', 'KSW00204341', '5', 'Honda', 'Red', 'Subic', '', 1, 0, '', 'NP#A', ''),
(11, 'RUSTIA, JACOBO P.', '9333567844', 'rustia@gmail.com', 'MD2A18AY5HWC62123', '6', 'Kawasaki', 'Black', 'San Roque', '', 1, 0, '', 'NP#A', ''),
(12, 'CALMA, MARZAN H.', '9416478532', 'calma@gmail.com', 'KYY20015789', '7', 'Honda', 'Red', 'Pagala', '', 1, 0, '', 'NP#A PVT.', ''),
(13, 'GERONIMO, HELEN S.', '9256754365', 'geronimo@gmail.com', 'MD2A18AZ3EWB72277', '8', 'Kawasaki', 'Black', 'Bagong Nayon', '', 1, 0, '', 'NP#A /F.H', ''),
(14, 'LIBIRAN, JOE C.', '9420616781', 'libiran@gmail.com', 'MD2DDDUZZRWB36861', '9', 'Kawasaki', 'Black', 'Subic', '', 1, 0, '', '6663-RX', ''),
(15, 'Buenaventura Arnel', '95556437822', 'buenaventura@gmail.com', 'KSW735653892', '5', 'Honda', 'Red', 'Subic', 'c6dd12e1a12f489f5aac58261be2ca4d', 1, 1, '', 'EFD 356', ''),
(16, 'Peralta Alexis', '954378211', 'peralta@gmail.com', 'MFG256825135', '6', 'Kawasaki', 'Black', 'San Roque', '', 1, 0, '', 'ACV 321', ''),
(17, 'Ramon Nabua', '93334566177', 'ramon@gmail.com', 'ACV124052385', '7', 'Honda', 'Red', 'Pagala', '', 1, 0, '', 'AWR 211', ''),
(18, 'Villanueva Rommel', '9412345877', 'villanueva@gmail.com', 'MFW214270523', '8', 'Kawasaki', 'Black', 'Bagong Nayon', '', 1, 0, '', 'VLN 112', ''),
(19, 'Gamboa Willie', '9222515744', 'Gamboa@gmail.com', 'MR24215768023', '9', 'Kawasaki', 'Black', 'Subic', '', 1, 0, '', 'GMB 200', ''),
(20, 'Trinidad Abel', '9234532744', 'trinidad@gmail.com', 'MA5638232532', '10', 'Kawasaki', 'Red', 'Sta.Barbara', '', 1, 0, '', 'TDD 643', ''),
(21, 'Villarca John Michael', '9555324655', 'villarca@gmail.com', 'MG537592035', '11', 'Honda', 'Black', 'Sabang', '', 1, 0, '', 'VLC 123', ''),
(22, 'Santiago Mart Lowie', '911142577', 'santiago@gmail.com', 'MF562035235321', '12', 'Honda', 'Black', 'Tiaong', '', 1, 0, '', 'STO 888', ''),
(23, 'Dela Pena James', '934521644', 'dela@gmail.com', 'KYYY232421572', '13', 'Honda', 'Black', 'Sabang', '', 1, 0, '', 'DLP 765', ''),
(24, 'Reyes Hardie', '96679135422', 'reyes@gmail.com', 'KSW24851532', '14', 'Rusi', 'Red', 'Matang Tubif', '', 1, 0, '', 'RYS 378', ''),
(25, 'LIBIRAN, MICHAEL C.', '93119800091', 'libiran@gmail.com', 'KSW00239624', '15', 'Honda', 'Red', 'Subic', '', 1, 0, '', 'NP#A', ''),
(26, 'HERNANDEZ, ROSALINA DC.', '9222647833', 'hernandez@gmail.com', 'KYY30015874', '16', 'Kawasaki', 'Black', 'Subic', '', 1, 0, '', 'NP#A/PVT.', ''),
(27, 'CORDIZ, IRENE M.', '944675233', 'cordiz@gmail.com', 'KWS00024486', '17', 'Honda', 'Red', 'Pinagbarilan', '', 1, 0, '', '4483-XS', ''),
(28, 'ROXAS, EDUARDO P.', '9443124855', 'roxas@gmail.com', 'KSW00013562', '18', 'Kawasaki', 'Black', 'Sabang', '', 1, 0, '', 'BO-61650', ''),
(29, 'ESCALONA, PATRICK JOHN M.', '9334572844', 'escalona@gmail.com', 'KSW10269387', '19', 'Kawasaki', 'Black', 'Pinagbarilan', '', 1, 0, '', 'NP#A', ''),
(30, 'DELA CRUZ, ROMARICO R.', '9345674311', 'delacruz1@gmail.com', 'RPATC125A00012112', '20', 'Kawasaki', 'Red', 'Subic', '', 1, 0, '', 'NP#A', ''),
(31, 'DELA CRUZ, LUISITO L.', '9333257855', 'delacruz2@gmail.com', 'KSW00252254', '21', 'Honda', 'Black', 'Tibag', '', 1, 0, '', 'NP#A/PVT.', ''),
(32, 'VENUS, REYNOLD T.', '9444325955', 'venus@gmail.com', 'MF562035235321', '22', 'Honda', 'Black', 'Pagala', '', 1, 0, '', '8915-RW', ''),
(33, 'BARAYUGA, BERNARDO S.', '9222456733', 'barayug@gmail.com', 'KSW10272043', '23', 'Honda', 'Black', 'Subic', '', 1, 0, '', 'NP#A', ''),
(34, 'LAROZA, CELSO D.', '946216412', 'laroza@gmail.com', 'KB509340007', '24', 'Rusi', 'Red', 'Subic', '', 1, 0, '', '3957-RX', ''),
(35, 'Santos, Juan', '9171234567', 'juan.santos@gmail.com', 'KYT4237493932', '25', 'Honda', 'Red', 'Sabang', '', 1, 0, '', 'DEF 789', ''),
(36, 'Garcia, Pedro', '9234567890', 'pedro.garcia@gmail.com', 'KYTF3930539', '26', 'Kawasaki', 'Black', 'Subic', '', 1, 0, '', 'GHI 1011', ''),
(37, 'Hernandez, Carlos', '9321234567', 'carlos.hernandez@gmail.com', 'KDR5395739279', '27', 'Honda', 'Red', 'Matang Tubig', '', 1, 0, '', 'JKL 1213', ''),
(38, 'Lim, Jose', '9456789012', 'jose.lim@gmail.com', 'MTF33459', '28', 'Kawasaki', 'Black', 'Sabang', '', 1, 0, '', 'MNO 1415', ''),
(39, 'Bautista, Antonio', '9561234567', 'antonio.bautista@gmail.com', 'KWE24953829', '29', 'Kawasaki', 'Black', 'Pinagpala', '', 1, 0, '', 'PQR 1617', ''),
(40, 'Serrano, Maria', '9671234567', 'maria.serrano@gmail.com', 'KYY3432563832', '30', 'Kawasaki', 'Red', 'Tioang', '', 1, 0, '', 'STU 1819', ''),
(41, 'Mendoza, Jose', '9781234567', 'jose.mendoza@gmail.com', 'KOU3435352', '31', 'Honda', 'Black', 'Tibag', '', 1, 0, '', 'VWX 2021', ''),
(42, 'Ramos, Francisco', '9891234567', 'francisco.ramos@gmail.com', 'ASD35625398532', '32', 'Honda', 'Black', 'Sabang', '', 1, 0, '', 'YZA 2223', ''),
(43, 'Santos, Eduardo', '9183456789', 'eduardo.santos@gmail.com', 'KRF43235353232', '33', 'Honda', 'Black', 'Subic', '', 1, 0, '', 'BCD 2425', ''),
(44, 'Reyes, Gabriel', '9276789012', 'gabriel.reyes@gmail.com', 'GVB353532532', '34', 'Rusi', 'Red', 'Sta.Barbara', '', 1, 0, '', 'EFG 2627', ''),
(45, 'Tan, Ramon', '9691234567', 'ramon.tan@gmail.com', 'KTY857856823', '31', 'Honda', 'Black', 'Sabang', '', 1, 0, '', 'CDE 4243', ''),
(46, 'Torres, Diego', '9581234567', 'diego.torres@gmail.com', 'KHT65483924328', '32', 'Kawasaki', 'Red', 'Subic', '', 1, 0, '', 'IJK 4647', ''),
(47, 'Cruz, Roberto', '9381234567', 'robert.cruz@gmail.com', 'KGT743743737385', '33', 'Honda', 'Red', 'Matang Tubig', '', 1, 0, '', 'LMN 4849', ''),
(48, 'Tan, Eduardo', '9251234567', 'eduardo.tan@gmail.com', 'MTF35257325325', '34', 'Kawasaki', 'Red', 'Sabang', '', 1, 0, '', 'FGH 4445', ''),
(49, 'Reyes, Daniel', '9121234567', 'daniel.reyes@gmail.com', 'TWB35728573573', '35', 'Kawasaki', 'Black', 'Pinagpala', '', 1, 0, '', 'OPQ 5051', ''),
(50, 'Chua, Arthur', '9493456789', 'arthur.chua@gmail.com', 'GTT35257353', '36', 'Kawasaki', 'Red', 'Tioang', '', 1, 0, '', 'RST 5253', ''),
(51, 'Dunkurt Salazar', '9222516855', 'kriziabate02@gmail.com', 'KY202012937128', '12', 'Honda', 'Pink', 'Sabang', '663a39e0225b4dc46bfac773316c8264', 1, 1, 'driver', 'ABC-123', ''),
(52, 'Axel Reyes', '944324586', 'Areyes@gmail.com', 'FTR2421521515', '67', 'Honda', 'Red', 'Sabang', '', 0, 0, '', 'ARS-524', 'qrcodes/52.png'),
(53, 'Norberto Chong', '9245235955', 'norbert@gmail.com', 'FTH22142525353', '65', 'Honda', 'Red', 'Sulivan', '', 0, 0, '', 'NBC-453', 'qrcodes/53.png'),
(54, 'Ice Cruz', '9444234622', 'Ice@gmail.com', 'ART5835395030959', '102', 'Honda', 'Red', 'Subic', '', 0, 0, '', 'ICC-132', 'qrcodes/Ice Cruz.png'),
(55, 'Red Dela Cruz', '952495422', 'Red@gmail.com', 'KSW83532058305380', '100', 'Honda', 'Black', 'Concepcion', '', 0, 0, '', 'RDC-142', 'qrcodes/Red Dela Cruz.png'),
(56, 'Ice Cruz', '9444234622', 'Ice@gmail.com', 'ART5835395030959', '102', 'Honda', 'Red', 'Subic', '', 0, 0, '', 'ICC-132', 'qrcodes/Ice Cruz.png'),
(57, 'Red Dela Cruz', '952495422', 'Red@gmail.com', 'KSW83532058305380', '100', 'Honda', 'Black', 'Concepcion', '', 0, 0, '', 'RDC-142', 'qrcodes/Red Dela Cruz.png');

-- --------------------------------------------------------

--
-- Table structure for table `proposed_fare`
--

CREATE TABLE `proposed_fare` (
  `fare_id` int(11) NOT NULL,
  `minimum_fare` varchar(255) NOT NULL,
  `additional_per_km` varchar(255) NOT NULL,
  `proposed_by` varchar(100) NOT NULL,
  `date_propose` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proposed_fare`
--

INSERT INTO `proposed_fare` (`fare_id`, `minimum_fare`, `additional_per_km`, `proposed_by`, `date_propose`) VALUES
(1, '30', '10', 'Admin Justine', '2023-10-18 00:00:00'),
(2, '30', '10', 'Admin Justine', '2023-10-26 00:52:44');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `user_id` int(11) NOT NULL,
  `Fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `CodeV` varchar(255) NOT NULL,
  `verification` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`user_id`, `Fullname`, `email`, `Password`, `CodeV`, `verification`) VALUES
(56, 'April Joy Hachero', 'apriljoyhachero1@gmail.com', '3d2a06899ce90d771338756e78f53327', '188760bacaec9aab7c6ebe92bb79ecbe', 0),
(57, 'Mart Lowie Santiago', 'lumotte27@gmail.com', '3d2a06899ce90d771338756e78f53327', '209a30927cdbe7477c6860f8266ed2f8', 0),
(58, 'John Michael Villarca', 'johnmichaelvillarca@gmail.com', '3d2a06899ce90d771338756e78f53327', 'be8641ac8d6e8763f3adb664035b213e', 0),
(59, 'Juan Dela Cruz', 'delacruzjuan@gmail.com', '3d2a06899ce90d771338756e78f53327', 'ac7431226aba660d14f3a773dae211ce', 0),
(77, 'Krizia Bate', 'kriziabate02@gmail.com', '202cb962ac59075b964b07152d234b70', '04bdeb3e8948cc148a211a695cd73099', 1),
(78, 'Justine', 'trisakay0@gmail.com', '202cb962ac59075b964b07152d234b70', '645eb3e1ef3453b7663d24709e34419c', 1);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `report_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `plate_number` varchar(255) NOT NULL,
  `report_concern` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`report_id`, `user_id`, `name`, `subject`, `plate_number`, `report_concern`, `date_time`) VALUES
(1, '1', 'fgjg', 'asfsd', 'fgj', 'gjh', '2023-10-27 16:05:14'),
(2, '1', 'Krizia Kaye Bate', 'lost bag', '123ABC', 'i lost my red bag.', '2023-10-27 16:06:45'),
(3, '1', '', '', '', '', '2023-10-27 16:39:14'),
(4, '1', 'gjghj', 'gdfg', 'fgjfg', 'fgjg', '2023-10-27 16:41:03'),
(5, '1', 'sample', 'sample', 'sample', 'sample', '2023-10-27 17:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `CodeV` varchar(255) NOT NULL,
  `verification` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Fullname`, `email`, `Password`, `CodeV`, `verification`) VALUES
(1, 'Krizia Bate', 'kriziabate02@gmail.com', '202cb962ac59075b964b07152d234b70', '8cd350fee24a6ff3b83019f3b2ac02f2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_signup`
--

CREATE TABLE `user_signup` (
  `user_id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_signup`
--

INSERT INTO `user_signup` (`user_id`, `email`, `password`, `role`) VALUES
('', 'kriziabate02@gmail.com', 'kaye12345', 'commuter');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `com_sign_up`
--
ALTER TABLE `com_sign_up`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `driv_personalinfo`
--
ALTER TABLE `driv_personalinfo`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `proposed_fare`
--
ALTER TABLE `proposed_fare`
  ADD PRIMARY KEY (`fare_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `driv_personalinfo`
--
ALTER TABLE `driv_personalinfo`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `proposed_fare`
--
ALTER TABLE `proposed_fare`
  MODIFY `fare_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
