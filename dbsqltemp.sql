-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2020 at 05:06 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sqljudge_problem_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `NIP` varchar(12) NOT NULL,
  `NAMA_DOSEN` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`NIP`, `NAMA_DOSEN`) VALUES
('AB', 'Ahmad Bahauddin'),
('ADE', 'Ade Ismail, S.Kom., M.TI'),
('AFN', 'Ane Fany Novitasari'),
('ANP', 'Agung Nugroho Pramudhita, S.T., M.T.'),
('ANR', 'Anugrah Nur Rahmanto, S.Sn., M.Ds.'),
('APK', 'Annisa Puspa Kirana, S.Kom., M.Kom'),
('ARI', 'Ariyanti, SH,.MH'),
('ARP', 'Arief Prasetyo, S.Kom., M.Kom.'),
('ARS', 'Arie Rachmad Syulistyo, S.Kom., M.Kom'),
('ARW', 'Arwin Sumari ST., MT., DR.'),
('ASA', 'Ashri Shabrina Afrah SST., MT.'),
('ATF', 'Annisa Taufika Firdausi, ST., MT.'),
('ATQ', 'Atiqah Nurul Asri, S.Pd., M.Pd.'),
('BGS', 'Bagas Satya Dian Nugraha, ST., MT.'),
('BSA', 'Banni Satria Andoko, S. Kom., M.MSI'),
('CDR', 'Candrasena Setiadi, ST., M.MT'),
('CR', 'Cahya Rahmad, ST., M.Kom., Dr. Eng.'),
('DHS', 'Dian Hanifudin Subhi, S.Kom., M.Kom.'),
('DMR', 'Diana Mayangsari Ramadhani, SST'),
('DOD', 'Dodit Suprianto SKom. MT.'),
('DRY', 'Dika Rizky Yunianto, S.Kom, M.Kom'),
('DS', 'Dhebys Suryani, S.Kom., MT'),
('DSE', 'Deasy Sandhya Elya Ikawati, S.Si, M. Si'),
('DWI', 'Dwi Puspitasari, S.Kom., M.Kom.'),
('DWW', 'Dimas Wahyu Wibowo, ST., MT.'),
('ELA', 'Eka Larasati Amalia, S.ST., MT.'),
('ENH', 'Elok Nur Hamdana, S.T., M.T'),
('ERF', 'Erfan Rohadi, ST., M.Eng., Ph.D.'),
('ESA', 'Ely Setyo Astuti, ST., MT.'),
('ESS', 'Endah Septa Sintiya. SPd., MKom.'),
('FPR', 'Farid Angga Pribadi, S.Kom.,M.Kom'),
('FRP', 'Frihandhika Permana SPd., MKom.'),
('FU', 'Farida Ulfa, S.Pd., M.Pd.'),
('FUM', 'Faiz Ushbah Mubarok, S.Pd., M.Pd.'),
('GAP', 'Grezio Arifiyah P. S.Kom., M.Kom'),
('GBP', 'Gunawan Budi Prasetyo, ST., MMT., Ph.D.'),
('GPR', 'Galih Putra Riatma, S.St.'),
('HAR', 'M. Hasyim Ratsanjani, S.Kom., M.Kom'),
('HED', 'Habibie Ed Dien, S.Kom., M.T.'),
('HJT', 'Budi Harijanto, ST., M.MKom.'),
('HP', 'Hendra Pradibta, SE., M.Sc.'),
('HRS', 'Hairus'),
('IAM', 'Irsyad Arif Mashudi, S.Kom., M.Kom'),
('IDW', 'Indra Dharma Wijaya, ST., M.MT.'),
('IFR', 'Imam Fahrur Rozi, ST., MT.'),
('IKP', 'Ika Kusumaning Putri, S.Kom., MT.'),
('IN', 'Immah Inayati SKom., MKom., MBA.'),
('IRA', 'Dyah Ayu Irawati, ST., M.Cs.'),
('IWP', 'Irna Wulan Palupi SH, M.Kn'),
('IYR', 'Inggrid Yanuar Risca P, SST'),
('JAS', 'Jasmine Anting Soraya'),
('KPA', 'Deddy Kusbianto PA, Ir., M.Mkom.'),
('KSB', 'Kadek Suarjuna Batubulan, S.Kom, MT'),
('LA', 'Luqman Affandi, S.Kom., MMSI'),
('MA', 'Moh. Amin'),
('MAH', 'Muhammad Afif Hendrawan.,S.Kom., MT'),
('MEA', 'Meyti Eka Apriyani ST., MT.'),
('MIS', 'Milyun Nima Shoumi, S.Kom., M.Kom'),
('MM', 'Mustika Mentari, S.Kom., M.Kom'),
('MMH', 'Mamluatul Haniah, S.Kom., M.Kom'),
('MQ', 'Mungki Astiningrum, ST., M.Kom.'),
('MS', 'M Sinal'),
('MSK', 'Muhammad Shulhan Khairy, S.Kom, M.Kom'),
('MUP', 'Muhammad Unggul Pamenang, S.St., M.T.'),
('MZA', 'Moch. Zawaruddin Abdullah, S.ST., M.Kom'),
('NOP', 'Noprianto, S.Kom., M.Eng'),
('ODT', 'Odhitya Desta Triswidrananta, S.Pd., M.Pd.'),
('OKE', 'Ekojono, ST., M.Kom.'),
('PPA', 'Putra Prima A., ST., M.Kom.'),
('PYS', 'Pramana Yoga Saputra, S.Kom., MMT.'),
('QH', 'Qonitatul Hasanah, S.ST'),
('RAA', 'Rosa Andrie Asmara, ST., MT., Dr. Eng.'),
('RB', 'Robby Anggriawan SE., ME.'),
('RDA', 'Rudy Ariyanto, ST., M.Cs.'),
('RDM', 'Retno Damayanti, S.Pd., M.T.'),
('RDN', 'Rizdania ST., MKom.'),
('RID', 'Ariadi Retno Ririd, S.Kom., M.Kom.'),
('RIZ', 'Rizky Ardiansyah, S.Kom., MT.'),
('RKA', 'Rakhmat Arianto, S.ST., M.Kom'),
('ROW', 'Rokhimatul Wakhidah, S.Pd., M.T.'),
('RR', 'Ridwan Rismanto, SST., M.Kom.'),
('RWS', 'Rawansyah., Drs., M.Pd.'),
('SBS', 'Satrio Binusa S, SS, M.Pd'),
('SES', 'Septian Enggar Sukmana, S.Pd., M.T'),
('SIR', 'Siti Romlah, Dra., M.M.'),
('SMU', 'Shohib Muslim'),
('SNA', 'Sofyan Noor Arief, S.ST., M.Kom.'),
('TAW', 'Triastana Anang Wibawa, ST., MT.'),
('TOM', 'Faisal Rahutomo, ST., M.Kom., Dr.Eng.'),
('UDR', 'Ulla Delfana Rosiani, ST., MT.'),
('UN', 'Usman Nurhasan, S.Kom., MT.'),
('VAH', 'Vipkas Al Hadid Firdaus, ST,. MT'),
('VAL', 'Vivin Ayu Lestari, S.Pd., M.Kom.'),
('VIS', 'Candra Bella Vista, S.Kom., MT.'),
('VNW', 'Vivi Nur Wijayaningrum, S.Kom, M.Kom'),
('VS', 'Very Sugiarto, S.Pd'),
('WID', 'Widaningsih Condrowardhani, SH, MH.'),
('WIS', 'Wilda Imama Sabilla, S.Kom., M.Kom'),
('YA', 'Yuri Ariyanto, S.Kom., M.Kom.'),
('YP', 'Yushintia Pramitarini, S.ST., MT.'),
('YWS', 'Yan Watequlis Syaifuddin, ST., M.MT.'),
('YY', 'Yoppy Yunhasnawa, S.ST., M.Sc.'),
('ZUL', 'Ahmadi Yuli Ananta, ST., M.M.');

-- --------------------------------------------------------

--
-- Table structure for table `hari`
--

CREATE TABLE `hari` (
  `ID_HARI` int(2) NOT NULL,
  `NAMA_HARI` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hari`
--

INSERT INTO `hari` (`ID_HARI`, `NAMA_HARI`) VALUES
(11, 'SENIN'),
(12, 'SELASA'),
(13, 'RABU'),
(14, 'KAMIS'),
(15, 'JUMAT');

-- --------------------------------------------------------

--
-- Table structure for table `human`
--

CREATE TABLE `human` (
  `id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `ID_JADWAL` int(5) NOT NULL,
  `ID_KELAS` int(3) DEFAULT NULL,
  `ID_HARI` int(2) DEFAULT NULL,
  `ID_JP_MULAI` int(2) DEFAULT NULL,
  `ID_JP_SELESAI` int(2) DEFAULT NULL,
  `ID_RUANG` int(3) DEFAULT NULL,
  `ID_MK` char(10) DEFAULT NULL,
  `NIP` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`ID_JADWAL`, `ID_KELAS`, `ID_HARI`, `ID_JP_MULAI`, `ID_JP_SELESAI`, `ID_RUANG`, `ID_MK`, `NIP`) VALUES
(1, 901, 11, 1, 6, 705, 'RTI172007', 'DRY'),
(2, 901, 11, 7, 8, 507, 'RTI172004', 'HJT'),
(3, 901, 12, 1, 4, 501, 'RTI172006', 'RWS'),
(4, 901, 12, 7, 8, 504, 'RTI172009', 'ATF'),
(5, 901, 12, 10, 12, 501, 'RTI172007', 'DRY'),
(6, 901, 13, 4, 6, 503, 'RTI172001', 'AB'),
(7, 901, 14, 1, 6, 715, 'RTI172009', 'ATF'),
(8, 901, 14, 10, 12, 506, 'RTI172003', 'FUM'),
(9, 901, 15, 1, 4, 503, 'RTI172005', 'RID'),
(10, 901, 15, 10, 12, 505, 'RTI171001', 'HRS'),
(11, 902, 11, 4, 6, 504, 'RTI172009', 'MM'),
(12, 902, 11, 7, 9, 507, 'RTI172004', 'HJT'),
(13, 902, 12, 1, 4, 501, 'RTI172006', 'RWS'),
(14, 902, 12, 10, 12, 501, 'RTI172007', 'DRY'),
(15, 902, 13, 4, 6, 503, 'RTI172001', 'AB'),
(16, 902, 13, 7, 9, 705, 'RTI172003', 'FUM'),
(17, 902, 14, 1, 6, 705, 'RTI172009', 'MM'),
(18, 902, 14, 7, 12, 616, 'RTI172007', 'DRY'),
(19, 902, 15, 1, 4, 503, 'RTI172005', 'RID'),
(20, 902, 15, 10, 12, 505, 'RTI171001', 'HRS');

-- --------------------------------------------------------

--
-- Table structure for table `jp`
--

CREATE TABLE `jp` (
  `ID_JP` int(2) NOT NULL,
  `NAMA_JP` varchar(2) DEFAULT NULL,
  `WAKTU_MULAI` time DEFAULT NULL,
  `WAKTU_SELESAI` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jp`
--

INSERT INTO `jp` (`ID_JP`, `NAMA_JP`, `WAKTU_MULAI`, `WAKTU_SELESAI`) VALUES
(1, '1', '07:00:00', '07:50:00'),
(2, '2', '07:50:00', '08:40:00'),
(3, '3', '08:40:00', '09:30:00'),
(4, '4', '09:40:00', '10:35:00'),
(5, '5', '10:30:00', '11:20:00'),
(6, '6', '11:20:00', '12:10:00'),
(7, '7', '12:50:00', '13:40:00'),
(8, '8', '13:40:00', '14:30:00'),
(9, '9', '14:30:00', '15:20:00'),
(10, '10', '15:30:00', '16:20:00'),
(11, '11', '16:20:00', '17:10:00'),
(12, '12', '17:10:00', '18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `ID_KELAS` int(3) NOT NULL,
  `NAMA_KELAS` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`ID_KELAS`, `NAMA_KELAS`) VALUES
(901, 'TI-1A'),
(902, 'TI-1B'),
(903, 'TI-1C'),
(904, 'TI-1D'),
(905, 'TI-1E');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` char(10) NOT NULL,
  `NAMA_MHS` varchar(100) DEFAULT NULL,
  `ID_KELAS` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `NAMA_MHS`, `ID_KELAS`) VALUES
('1941720213', 'REZALDY RAFI', 902),
('1941720216', 'BAGA DHARMA SEMBADA', 902),
('1941720218', 'RIZQULLAH RAIHAN OSIRIZ', 901),
('1941720221', 'HAARISAH YUSTIKA PUTRI AL-JUFRI', 901),
('1941720225', 'GUSTI WIHARJA TRI CAHYA', 901),
('1941720228', 'THALITA SANIYYA AQILLA PUTRI', 901),
('1941720232', 'NOORR AFIAD', 901);

-- --------------------------------------------------------

--
-- Table structure for table `mk`
--

CREATE TABLE `mk` (
  `ID_MK` char(10) NOT NULL,
  `NAMA_MK` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mk`
--

INSERT INTO `mk` (`ID_MK`, `NAMA_MK`) VALUES
('RTI171001', 'Kewarganegeraan'),
('RTI171002', 'Pancasila'),
('RTI171003', 'Ilmu Komunikasi Dan Organisasi'),
('RTI171004', 'Aplikasi Komputer Perkantoran'),
('RTI171005', 'Bahasa Inggris'),
('RTI171006', 'Konsep Teknologi Informasi'),
('RTI171007', 'Matematika Diskrit'),
('RTI171008', 'Keselamatan Dan Kesehatan Kerja'),
('RTI171009', 'Dasar Pemrograman'),
('RTI171010', 'Praktikum Dasar Pemrograman'),
('RTI172001', 'Agama'),
('RTI172002', 'Teknik Dokumentasi'),
('RTI172003', 'Bahasa Inggris'),
('RTI172004', 'Sistem Operasi'),
('RTI172005', 'Rekayasa Perangkat Lunak'),
('RTI172006', 'Aljabar Linier'),
('RTI172007', 'Basis Data'),
('RTI172008', 'Praktikum Basis Data'),
('RTI172009', 'Algoritma Dan Struktur Data'),
('RTI172010', 'Praktikum Algoritma Dan Struktur Data'),
('RTI173001', 'Desain Antarmuka'),
('RTI173002', 'Statistik Komputasi'),
('RTI173003', 'Kecerdasan Buatan'),
('RTI173004', 'Desain & Pemrograman Web'),
('RTI173005', 'Basis Data Lanjut'),
('RTI173006', 'Jaringan Komputer'),
('RTI173007', 'Praktikum Jaringan Komputer'),
('RTI173008', 'Pemrograman Berbasis Objek'),
('RTI173009', 'Praktikum Pemrograman Berbasis Objek'),
('RTI174001', 'Sistem Informasi'),
('RTI174002', 'Analisis Dan Desain Berorientasi Objek'),
('RTI174003', 'Manajemen Proyek'),
('RTI174004', 'Proyek'),
('RTI174005', 'Komputasi Kognitif'),
('RTI174006', 'Pemrograman Web Lanjut'),
('RTI174007', 'Sistem Manajemen Basis Data'),
('RTI175001', 'E-Business'),
('RTI175002', 'Proyek'),
('RTI175003', 'Pemrograman Mobile'),
('RTI175004', 'Data Warehouse'),
('RTI175005', 'Pengujian Perangkat Lunak'),
('RTI175006', 'Pemrograman Jaringan'),
('RTI176001', 'Digital Enterpreneurship'),
('RTI176002', 'Sistem Pendukung Keputusan'),
('RTI176003', 'Teknologi Data'),
('RTI176004', 'Komputasi Multimedia'),
('RTI176005', 'Internet Of Things'),
('RTI176006', 'Pengolahan Citra Dan Visi Komputer'),
('RTI176007', 'Pemrograman Berbasis Framework'),
('RTI177001', 'Kapita Selekta'),
('RTI177002', 'Proyek'),
('RTI177003', 'Proposal Skripsi'),
('RTI177004', 'Sistem Terdistribusi'),
('RTI177005', 'Metodologi Penelitian'),
('RTI177006', 'Pemrograman Game'),
('RTI178001', 'Bahasa Inggris Persiapan Kerja'),
('RTI178002', 'Etika Profesi Bidang TI'),
('RTI178003', 'Praktek Kerja Lapangan'),
('RTI178004', 'Skripsi');

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `ID_RUANG` int(3) NOT NULL,
  `NAMA_RUANG` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`ID_RUANG`, `NAMA_RUANG`) VALUES
(501, 'Ruang Teori 1 (RT 01)'),
(502, 'Ruang Teori 2 (RT 02)'),
(503, 'Ruang Teori 3 (RT 03)'),
(504, 'Ruang Teori 4 (RT 04)'),
(505, 'Ruang Teori 5 (RT 05)'),
(506, 'Ruang Teori 6 (RT 06)'),
(507, 'Ruang Teori 7 (RT 07)'),
(508, 'Ruang Teori 8 (RT 08)'),
(615, 'Lab. Sistem Informasi 1 (LSI 1)'),
(616, 'Lab. Sistem Informasi 2 (LSI 2)'),
(617, 'Lab. Sistem Informasi 3 (LSI 3)'),
(618, 'Lab. Proyek 1 (LPY 1)'),
(619, 'Ruang Teori 9 (RT 09)'),
(701, 'Lab. Pemrograman 1 (LPR 1)'),
(702, 'Lab. Pemrograman 2 (LPR 2)'),
(703, 'Lab. Pemrograman 3 (LPR 3)'),
(704, 'Lab. Pemrograman 4 (LPR 4)'),
(705, 'Lab. Pemrograman 5 (LPR 5)'),
(706, 'Lab. Pemrograman 6 (LPR 6)'),
(707, 'Lab. Sistem Komputer dan Jaringan 1 (LKJ 1)'),
(708, 'Lab. Pemrograman 7 (LPR 7)'),
(713, 'Lab. Sistem Komputer dan Jaringan 2 (LKJ 2)'),
(714, 'Lab. Pemrograman 8 (LPR 8)'),
(715, 'Lab. Sistem Komputer dan Jaringan 3 (LKJ 3)'),
(716, 'Lab. Visi Komputer 1 (VISIKOM 1)'),
(717, 'Ruang Teori 10 (RT 10)'),
(718, 'Lab. Visi Komputer 2 (VISIKOM 2)'),
(719, 'Lab. Proyek 2 (LPY 2)'),
(720, 'Lab. Proyek 3 (LPY 3)'),
(805, 'Ruang Teori 11 (RT 01)'),
(806, 'Ruang Teori 12 (RT 02)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`NIP`);

--
-- Indexes for table `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`ID_HARI`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`ID_JADWAL`),
  ADD KEY `ID_KELAS` (`ID_KELAS`),
  ADD KEY `ID_HARI` (`ID_HARI`),
  ADD KEY `ID_JP_MULAI` (`ID_JP_MULAI`),
  ADD KEY `ID_JP_SELESAI` (`ID_JP_SELESAI`),
  ADD KEY `ID_RUANG` (`ID_RUANG`),
  ADD KEY `ID_MK` (`ID_MK`),
  ADD KEY `NIP` (`NIP`);

--
-- Indexes for table `jp`
--
ALTER TABLE `jp`
  ADD PRIMARY KEY (`ID_JP`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`ID_KELAS`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`),
  ADD KEY `ID_KELAS` (`ID_KELAS`);

--
-- Indexes for table `mk`
--
ALTER TABLE `mk`
  ADD PRIMARY KEY (`ID_MK`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`ID_RUANG`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `ID_JADWAL` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`ID_KELAS`) REFERENCES `kelas` (`ID_KELAS`),
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`ID_HARI`) REFERENCES `hari` (`ID_HARI`),
  ADD CONSTRAINT `jadwal_ibfk_3` FOREIGN KEY (`ID_JP_MULAI`) REFERENCES `jp` (`ID_JP`),
  ADD CONSTRAINT `jadwal_ibfk_4` FOREIGN KEY (`ID_JP_SELESAI`) REFERENCES `jp` (`ID_JP`),
  ADD CONSTRAINT `jadwal_ibfk_5` FOREIGN KEY (`ID_RUANG`) REFERENCES `ruang` (`ID_RUANG`),
  ADD CONSTRAINT `jadwal_ibfk_6` FOREIGN KEY (`ID_MK`) REFERENCES `mk` (`ID_MK`),
  ADD CONSTRAINT `jadwal_ibfk_7` FOREIGN KEY (`NIP`) REFERENCES `dosen` (`NIP`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`ID_KELAS`) REFERENCES `kelas` (`ID_KELAS`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
