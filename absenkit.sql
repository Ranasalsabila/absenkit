-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2020 at 06:54 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absenkit`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_bayar`
--

CREATE TABLE `jenis_bayar` (
  `th_pelajaran` char(9) NOT NULL,
  `tingkat` varchar(3) NOT NULL,
  `jumlah` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenis_bayar`
--

INSERT INTO `jenis_bayar` (`th_pelajaran`, `tingkat`, `jumlah`) VALUES
('2019/2020', 'X', 360),
('2019/2020', 'XI', 360),
('2019/2020', 'XII', 360);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kelas` varchar(8) NOT NULL DEFAULT '',
  `th_pelajaran` char(9) NOT NULL DEFAULT '',
  `nis` char(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kelas`, `th_pelajaran`, `nis`) VALUES
('XII', '2019/2020', '8869'),
('XII', '2019/2020', '8870'),
('XII', '2019/2020', '8871'),
('XII', '2019/2020', '8872'),
('XII', '2019/2020', '8873'),
('XII', '2019/2020', '8874'),
('XII', '2019/2020', '8875'),
('XII', '2019/2020', '8876'),
('XII', '2019/2020', '8877'),
('XII', '2019/2020', '8878'),
('XII', '2019/2020', '8879'),
('XII', '2019/2020', '8880'),
('XII', '2019/2020', '8881'),
('XII', '2019/2020', '8882'),
('XII', '2019/2020', '8883'),
('XII', '2019/2020', '8884'),
('XII', '2019/2020', '8885'),
('XII', '2019/2020', '8886'),
('XII', '2019/2020', '8887'),
('XII', '2019/2020', '8888'),
('XII', '2019/2020', '8889'),
('XII', '2019/2020', '8890'),
('XII', '2019/2020', '8891'),
('XII', '2019/2020', '8892'),
('XII', '2019/2020', '8893'),
('XII', '2019/2020', '8894'),
('XII', '2019/2020', '8895'),
('XII', '2019/2020', '8896'),
('XII', '2019/2020', '8897'),
('XII', '2019/2020', '8898'),
('XII', '2019/2020', '8899'),
('XII', '2019/2020', '8900'),
('XII', '2019/2020', '8901'),
('XII', '2019/2020', '8902'),
('XII', '2019/2020', '8903'),
('XII', '2019/2020', '8904');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `kelas` varchar(8) NOT NULL,
  `nis` char(10) NOT NULL,
  `bulan` varchar(45) NOT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `jumlah` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`kelas`, `nis`, `bulan`, `tgl_bayar`, `jumlah`) VALUES
('XII RPL', '8869', 'August', '2020-08-22', 1),
('XII RPL', '8870', 'August', '2020-08-22', 1),
('XII RPL', '8871', 'August', '2020-08-22', 1),
('XII RPL', '8872', 'August', '2020-08-22', 1),
('XII RPL', '8873', 'August', '2020-08-22', 1),
('XII RPL', '8874', 'August', '2020-08-22', 1),
('XII RPL', '8875', 'August', '2020-08-22', 1),
('XII RPL', '8876', 'August', '2020-08-22', 1),
('XII RPL', '8877', 'August', '2020-08-22', 1),
('XII RPL', '8878', 'August', '2020-08-22', 1),
('XII RPL', '8879', 'August', '2020-08-22', 1),
('XII RPL', '8880', 'August', '2020-08-22', 1),
('XII RPL', '8881', 'August', '2020-08-22', 1),
('XII RPL', '8882', 'August', '2020-08-22', 1),
('XII RPL', '8883', 'August', '2020-08-22', 1),
('XII RPL', '8884', 'August', '2020-08-22', 1),
('XII RPL', '8885', 'August', '2020-08-22', 1),
('XII RPL', '8886', 'August', '2020-08-22', 1),
('XII RPL', '8887', 'August', '2020-08-22', 1),
('XII RPL', '8888', 'August', '2020-08-22', 1),
('XII RPL', '8889', 'August', '2020-08-22', 1),
('XII RPL', '8890', 'August', '2020-08-22', 1),
('XII RPL', '8891', 'August', '2020-08-22', 1),
('XII RPL', '8892', 'August', '2020-08-22', 1),
('XII RPL', '8893', 'August', '2020-08-22', 1),
('XII RPL', '8894', 'August', '2020-08-22', 1),
('XII RPL', '8895', 'August', '2020-08-22', 1),
('XII RPL', '8896', 'August', '2020-08-22', 1),
('XII RPL', '8897', 'August', '2020-08-22', 1),
('XII RPL', '8898', 'August', '2020-08-22', 1),
('XII RPL', '8899', 'August', '2020-08-22', 1),
('XII RPL', '8900', 'August', '2020-08-22', 1),
('XII RPL', '8901', 'August', '2020-08-22', 1),
('XII RPL', '8902', 'August', '2020-08-22', 1),
('XII RPL', '8903', 'August', '2020-08-22', 1),
('XII RPL', '8904', 'August', '2020-08-22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `idprodi` varchar(4) NOT NULL,
  `prodi` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`idprodi`, `prodi`) VALUES
('AKL', 'Akuntansi dan Keuangan Lembaga'),
('BDP', 'Bisnis Daring dan Pemasaran'),
('OTP', 'Otomatisasi dan Tata Kelola Perkantoran'),
('RPL', 'Rekayasa Perangkat Lunak');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` char(10) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `kelas` varchar(255) NOT NULL,
  `idprodi` varchar(4) DEFAULT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `tanggal`, `nama`, `kelas`, `idprodi`, `keterangan`) VALUES
('8869', '2020-08-22', 'AFIFAH DEVIANDA PRASTIWI', 'XII ', 'RPL', 'Hadir'),
('8870', '2020-08-22', 'AGUSTINA NUR WULANDARI', 'XII', 'RPL', 'Hadir'),
('8871', '2020-08-22', 'AISYAH RAHMAWATI IMRAN', 'XII', 'RPL', 'Hadir'),
('8872', '2020-08-22', 'AMFITA DEWI', 'XII', 'RPL', 'Hadir'),
('8873', '2020-08-22', 'ANGGA FIRDAYANTO', 'XII', 'RPL', 'Hadir'),
('8874', '2020-08-22', 'ANNIATSARI NORMA HANIFFA', 'XII', 'RPL', 'Hadir'),
('8875', '2020-08-22', 'ARGA ZAIN AKSANI', 'XII', 'RPL', 'Hadir'),
('8876', '2020-08-22', 'ATTHAFAH RANAA SALSABIILA', 'XII', 'RPL', 'Hadir'),
('8877', '2020-08-22', 'BERLIANA NURWANDANI', 'XII', 'RPL', 'Hadir'),
('8878', '2020-08-22', 'CINDYIKA APRILYA NORGYA PUTRI', 'XII', 'RPL', 'Hadir'),
('8879', '2020-08-22', 'DIAN IKA SARI', 'XII', 'RPL', 'Hadir'),
('8880', '2020-08-22', 'DIMAS FAJAR MUHAMAD RIZAL', 'XII', 'RPL', 'Hadir'),
('8881', '2020-08-22', 'DIMAS GENTA AJI SAPUTRA', 'XII', 'RPL', 'Hadir'),
('8882', '2020-08-22', 'FAIZAL AJI PAMUNGKAS', 'XII', 'RPL', 'Hadir'),
('8883', '2020-08-22', 'FITRI WIDAYANTI', 'XII', 'RPL', 'Hadir'),
('8884', '2020-08-22', 'ICHSANDA KHARISMA TIFFANI', 'XII', 'RPL', 'Hadir'),
('8885', '2020-08-22', 'KAUTSAR HAKIM', 'XII', 'RPL', 'Hadir'),
('8886', '2020-08-22', 'MAHIR IBNU ABBAS', 'XII', 'RPL', 'Hadir'),
('8887', '2020-08-22', 'MAUDINAR FAJRINA RAHMADITYA', 'XII', 'RPL', 'Hadir'),
('8888', '2020-08-22', 'M. DENNIS ALFARIZI', 'XII', 'RPL', 'Hadir'),
('8889', '2020-08-22', 'M. RIZKY IRNANDA', 'XII', 'RPL', 'Hadir'),
('8890', '2020-08-22', 'M. RIZKY FAJARULLAH', 'XII', 'RPL', 'Hadir'),
('8891', '2020-08-22', 'NARITA PUJI WAHYUNINGSIH', 'XII', 'RPL', 'Hadir'),
('8892', '2020-08-22', 'NAUFAL BAGUS RAMADHAN ZARKASY', 'XII', 'RPL', 'Hadir'),
('8893', '2020-08-22', 'PRULIA GUSARITAMA', 'XII', 'RPL', 'Hadir'),
('8894', '2020-08-22', 'PUTRI RIMAWATI', 'XII', 'RPL', 'Hadir'),
('8895', '2020-08-22', 'RAISHA PERMATA CAHYANI', 'XII', 'RPL', 'Hadir'),
('8896', '2020-08-22', 'RESTYA NANDA YASSINTA PUTRI', 'XII', 'RPL', 'Hadir'),
('8897', '2020-08-22', 'SABRINA NOVIA PUTRI', 'XII', 'RPL', 'Hadir'),
('8898', '2020-08-22', 'SABRINA ZAHRA RAMADHANY', 'XII', 'RPL', 'Hadir'),
('8899', '2020-08-22', 'SALSABILA EKA ZAHRA', 'XII', 'RPL', 'Hadir'),
('8900', '2020-08-22', 'SIVA ZAHLIMATUL ZAHRIA', 'XII', 'RPL', 'Hadir'),
('8901', '2020-08-22', 'TAMARISKA RACHELIA PUTRI', 'XII', 'RPL', 'Hadir'),
('8902', '2020-08-22', 'TARISA PIPIT MEILINA', 'XII', 'RPL', 'Hadir'),
('8903', '2020-08-22', 'TASYA ARDHITA SARI', 'XII', 'RPL', 'Hadir'),
('8904', '2020-08-22', 'UTARI PRAMASARI', 'XII', 'RPL', 'Hadir');

-- --------------------------------------------------------

--
-- Table structure for table `tapel`
--

CREATE TABLE `tapel` (
  `id` int(11) NOT NULL,
  `tapel` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tapel`
--

INSERT INTO `tapel` (`id`, `tapel`) VALUES
(4, '2019/2020');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `fullname` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`, `admin`, `fullname`) VALUES
(4, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Administrator'),
(5, 'guru', 'e10adc3949ba59abbe56e057f20f883e', 0, 'Guru'),
(8, 'sekretaris', 'e10adc3949ba59abbe56e057f20f883e', 0, 'Sekretaris');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_bayar`
--
ALTER TABLE `jenis_bayar`
  ADD PRIMARY KEY (`th_pelajaran`,`tingkat`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kelas`,`th_pelajaran`,`nis`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`kelas`,`nis`,`bulan`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`idprodi`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
