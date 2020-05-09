-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 09, 2020 at 12:03 PM
-- Server version: 10.2.31-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u6029100_sqljudge_problem_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `advisor`
--

CREATE TABLE `advisor` (
  `s_ID` varchar(5) NOT NULL DEFAULT '',
  `i_ID` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `advisor`
--

INSERT INTO `advisor` (`s_ID`, `i_ID`) VALUES
('12345', '10101'),
('44553', '22222'),
('45678', '22222'),
('00128', '45565'),
('76543', '45565'),
('23121', '76543'),
('98988', '76766'),
('76653', '98345'),
('98765', '98345');

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

CREATE TABLE `airports` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `belong_country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `airports`
--

INSERT INTO `airports` (`id`, `name`, `belong_country_id`) VALUES
(3, 'DOH', 4),
(2, 'HKG', 3),
(4, 'MAN', 2),
(5, 'NRT', 5),
(1, 'TPE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `building` varchar(15) NOT NULL DEFAULT '',
  `room_number` varchar(7) NOT NULL DEFAULT '',
  `capacity` decimal(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`building`, `room_number`, `capacity`) VALUES
('Packard', '101', 500),
('Painter', '514', 10),
('Taylor', '3128', 70),
('Watson', '100', 30),
('Watson', '120', 50);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `timezone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `timezone`) VALUES
(1, 'Taiwan', '+8:00'),
(2, 'England', '+0:00'),
(3, 'China', '+8:00'),
(4, 'Qatar', '+3:00'),
(5, 'Japan', '+9:00');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(8) NOT NULL DEFAULT '',
  `title` varchar(50) DEFAULT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `credits` decimal(2,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `title`, `dept_name`, `credits`) VALUES
('BIO-101', 'Intro. to Biology', 'Biology', 4),
('BIO-301', 'Genetics', 'Biology', 4),
('BIO-399', 'Computational Biology', 'Biology', 3),
('CS-101', 'Intro. to Computer Science', 'Comp. Sci.', 4),
('CS-190', 'Game Design', 'Comp. Sci.', 4),
('CS-315', 'Robotics', 'Comp. Sci.', 3),
('CS-319', 'Image Processing', 'Comp. Sci.', 3),
('CS-347', 'Database System Concepts', 'Comp. Sci.', 3),
('EE-181', 'Intro. to Digital Systems', 'Elec. Eng.', 3),
('FIN-201', 'Investment Banking', 'Finance', 3),
('HIS-351', 'World History', 'History', 3),
('MU-199', 'Music Video Production', 'Music', 3),
('PHY-101', 'Physical Principles', 'Physics', 4);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` enum('male','female') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `sex`) VALUES
(1, 'ensky', 'male'),
(2, 'dy93', 'male'),
(3, 'ueebwd', 'female'),
(4, 'wensnoopy', 'female');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_name` varchar(20) NOT NULL DEFAULT '',
  `building` varchar(15) DEFAULT NULL,
  `budget` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_name`, `building`, `budget`) VALUES
('Biology', 'Watson', 90000.00),
('Comp. Sci.', 'Taylor', 100000.00),
('Elec. Eng.', 'Taylor', 85000.00),
('Finance', 'Painter', 120000.00),
('History', 'Painter', 50000.00),
('Music', 'Packard', 80000.00),
('Physics', 'Watson', 70000.00);

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
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` int(10) NOT NULL,
  `departure_id` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `flight_number` varchar(255) DEFAULT NULL,
  `departure_date` datetime DEFAULT NULL,
  `arrival_date` datetime DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `departure_id`, `destination_id`, `flight_number`, `departure_date`, `arrival_date`, `price`) VALUES
(76, 1, 5, 'JP-123', '2014-05-01 10:00:00', '2014-05-01 12:00:00', 6000),
(77, 5, 4, 'JPM-123', '2014-05-01 14:00:00', '2014-05-01 23:00:00', 15000),
(78, 1, 4, 'TM-123', '2014-05-01 10:00:00', '2014-05-01 19:00:00', 20000),
(79, 1, 2, 'TH-123', '2014-05-01 10:00:00', '2014-05-01 11:30:00', 4000),
(80, 2, 3, 'HKD-123', '2014-05-01 15:00:00', '2014-05-01 23:00:00', 10000),
(81, 3, 4, 'DM-123', '2014-05-02 02:00:00', '2014-05-02 06:30:00', 8000),
(82, 1, 3, 'TDO-123', '2014-05-01 13:00:00', '2014-05-01 20:22:00', 13000),
(83, 5, 3, 'JDO-123', '2014-05-01 15:08:00', '2014-05-01 19:00:00', 12000);

-- --------------------------------------------------------

--
-- Table structure for table `fruits`
--

CREATE TABLE `fruits` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` enum('red','yellow','green') NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fruits`
--

INSERT INTO `fruits` (`id`, `name`, `color`, `price`) VALUES
(1, 'apple', 'red', 50),
(2, 'orange', 'yellow', 20),
(3, 'lemon', 'green', 35),
(4, 'tomato', 'red', 15);

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
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `ID` varchar(5) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `salary` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`ID`, `name`, `dept_name`, `salary`) VALUES
('10101', 'Srinivasan', 'Comp. Sci.', 65000.00),
('12121', 'Wu', 'Finance', 90000.00),
('15151', 'Mozart', 'Music', 40000.00),
('22222', 'Einstein', 'Physics', 95000.00),
('32343', 'El Said', 'History', 60000.00),
('33456', 'Gold', 'Physics', 87000.00),
('45565', 'Katz', 'Comp. Sci.', 75000.00),
('58583', 'Califieri', 'History', 62000.00),
('76543', 'Singh', 'Finance', 80000.00),
('76766', 'Crick', 'Biology', 72000.00),
('83821', 'Brandt', 'Comp. Sci.', 92000.00),
('98345', 'Kim', 'Elec. Eng.', 80000.00);

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
('1841720101', 'MASNING SALAMAH', 902),
('1941720003', 'YOCKI FEBRIANTO', 902),
('1941720004', 'MOCHAMMAD FAJAR DARUSSALAM', 902),
('1941720008', 'RIZKINA HAYYUNI PUTRI', 901),
('1941720018', 'CHIKA LABITA', 901),
('1941720028', 'WULAN WIDIASARI', 902),
('1941720031', 'MUHAMMAD AUFUL KIROM', 902),
('1941720033', 'DWITYANTHERRYS BEKTI UTOMO', 901),
('1941720034', 'HARIST DANI HISYAM RISYALMAN ', 902),
('1941720035', 'ANARADI DESLANIA', 902),
('1941720051', 'DIKKY ANDISA TRIPAMUNGKAS', 901),
('1941720055', 'MAULANA MALIK IBRAHIM', 902),
('1941720059', 'GISANDA ALIYA RAMADHANTY', 901),
('1941720067', 'KHOSY ROBBIN HOOD', 901),
('1941720070', 'I MADE GENADI DHARMA SLAWA', 901),
('1941720071', 'AHMAD ZAENAL ARIFIN', 901),
('1941720073', 'RISKA NUR SAFITRI', 901),
('1941720094', 'ABDUR ROZAK JUNAIDI', 902),
('1941720095', 'FEBRIAN PRATAMA PUTRA', 902),
('1941720099', 'EDI IRAWAN', 902),
('1941720100', 'R SUNU RAIHAN W', 905),
('1941720103', 'MUHAMMAD RIEFKI ARIYANTO', 902),
('1941720108', 'PUTRI ALIVIA NUR KUSUMAWATI', 901),
('1941720112', 'RIZQY GHANIYYU FADHILAH', 902),
('1941720113', 'ARGIAN WIMBANG EKIVAREL', 902),
('1941720114', 'OKVYAN RIZKY PRAMARTA', 901),
('1941720124', 'M.ARDLI AQDAMA', 901),
('1941720127', 'ARHAM IZZA SYANY', 902),
('1941720131', 'ANDI MUH FADHIL BASO', 901),
('1941720134', 'NABILA SENJA WAHYUNINGTIAS', 902),
('1941720136', 'WILDAN ACHMAD FACHRURROZI', 901),
('1941720138', 'MOH. SONI BUDI WIJANARKO', 902),
('1941720141', 'IBNU ZAKI NAUFAL ADHA', 902),
('1941720142', 'REYNALDI RAMADHANI EKA PURNOMO', 901),
('1941720148', 'HAMDAN DAALAL FAUZI', 901),
('1941720149', 'MUHAMMAD RIDHO RAMADHAN', 901),
('1941720154', 'ILHAM MOGA SOPANA', 901),
('1941720157', 'RIZQITA SISKA LESTARI ROHMATULLAH', 902),
('1941720158', 'NABILA KAMILIA', 901),
('1941720164', 'DAFFA SETYA NUGRAHA', 902),
('1941720165', 'MOCHAMMAD DIMASQI ALIFFUDIN FAIZ', 901),
('1941720170', 'DAFA BINTANG ATHAILLAH', 902),
('1941720176', 'DILA PRASTIWI', 902),
('1941720178', 'ILHAM NUR FEBRIANTO INDRA WAHYUDI', 902),
('1941720188', 'ARIF ARFI MURDANI', 902),
('1941720195', 'AGUNG SETYO NUGROHO', 902),
('1941720198', 'AHMAD SOFYAN ARGYANTO', 902),
('1941720200', 'MUHAMMAD ASAD PRABOWO', 901),
('1941720203', 'FITRANZA AKBAR SARRAZIN', 902),
('1941720205', 'AKHMAD DIAN MUZAKI', 902),
('1941720206', 'DIMAS ILHAM RIVALDY', 901),
('1941720207', 'RIZA KHATAMI', 901),
('1941720212', 'ANDIKA HILMI HAMDANI', 901),
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
-- Table structure for table `prereq`
--

CREATE TABLE `prereq` (
  `course_id` varchar(8) NOT NULL DEFAULT '',
  `prereq_id` varchar(8) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prereq`
--

INSERT INTO `prereq` (`course_id`, `prereq_id`) VALUES
('BIO-301', 'BIO-101'),
('BIO-399', 'BIO-101'),
('CS-190', 'CS-101'),
('CS-315', 'CS-101'),
('CS-319', 'CS-101'),
('CS-347', 'CS-101'),
('EE-181', 'PHY-101');

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

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `course_id` varchar(8) NOT NULL DEFAULT '',
  `sec_id` varchar(8) NOT NULL DEFAULT '',
  `semester` varchar(6) NOT NULL DEFAULT '',
  `year` decimal(4,0) NOT NULL DEFAULT 0,
  `building` varchar(15) DEFAULT NULL,
  `room_number` varchar(7) DEFAULT NULL,
  `time_slot_id` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`course_id`, `sec_id`, `semester`, `year`, `building`, `room_number`, `time_slot_id`) VALUES
('BIO-101', '1', 'Summer', 2009, 'Painter', '514', 'B'),
('BIO-301', '1', 'Summer', 2010, 'Painter', '514', 'A'),
('CS-101', '1', 'Fall', 2009, 'Packard', '101', 'H'),
('CS-101', '1', 'Spring', 2010, 'Packard', '101', 'F'),
('CS-190', '1', 'Spring', 2009, 'Taylor', '3128', 'E'),
('CS-190', '2', 'Spring', 2009, 'Taylor', '3128', 'A'),
('CS-315', '1', 'Spring', 2010, 'Watson', '120', 'D'),
('CS-319', '1', 'Spring', 2010, 'Watson', '100', 'B'),
('CS-319', '2', 'Spring', 2010, 'Taylor', '3128', 'C'),
('CS-347', '1', 'Fall', 2009, 'Taylor', '3128', 'A'),
('EE-181', '1', 'Spring', 2009, 'Taylor', '3128', 'C'),
('FIN-201', '1', 'Spring', 2010, 'Packard', '101', 'B'),
('HIS-351', '1', 'Spring', 2010, 'Painter', '514', 'C'),
('MU-199', '1', 'Spring', 2010, 'Packard', '101', 'D'),
('PHY-101', '1', 'Fall', 2009, 'Watson', '100', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_list`
--

CREATE TABLE `shopping_list` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `fruit_id` int(10) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shopping_list`
--

INSERT INTO `shopping_list` (`customer_id`, `fruit_id`, `amount`) VALUES
(1, 2, 2),
(1, 3, 23),
(2, 1, 11),
(2, 4, 2),
(3, 1, 2),
(3, 3, 3),
(4, 3, 4),
(4, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` varchar(7) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `tot_cred` decimal(3,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `name`, `dept_name`, `tot_cred`) VALUES
('00128', 'Zhang', 'Comp. Sci.', 102),
('12345', 'Shankar', 'Comp. Sci.', 32),
('19991', 'Brandt', 'History', 80),
('23121', 'Chavez', 'Finance', 110),
('44553', 'Peltier', 'Physics', 56),
('45678', 'Levy', 'Physics', 46),
('54321', 'Williams', 'Comp. Sci.', 54),
('55739', 'Sanchez', 'Music', 38),
('70557', 'Snow', 'Physics', 0),
('76543', 'Brown', 'Comp. Sci.', 58),
('76653', 'Aoi', 'Elec. Eng.', 60),
('98765', 'Bourikas', 'Elec. Eng.', 98),
('98988', 'Tanaka', 'Biology', 120);

-- --------------------------------------------------------

--
-- Table structure for table `takes`
--

CREATE TABLE `takes` (
  `ID` varchar(5) NOT NULL DEFAULT '',
  `course_id` varchar(8) NOT NULL DEFAULT '',
  `sec_id` varchar(8) NOT NULL DEFAULT '',
  `semester` varchar(6) NOT NULL DEFAULT '',
  `year` decimal(4,0) NOT NULL DEFAULT 0,
  `grade` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `takes`
--

INSERT INTO `takes` (`ID`, `course_id`, `sec_id`, `semester`, `year`, `grade`) VALUES
('00128', 'CS-101', '1', 'Fall', 2009, 'A+'),
('00128', 'CS-347', '1', 'Fall', 2009, 'A-'),
('12345', 'CS-101', '1', 'Fall', 2009, 'C'),
('12345', 'CS-190', '2', 'Spring', 2009, 'A'),
('12345', 'CS-315', '1', 'Spring', 2010, 'A'),
('12345', 'CS-347', '1', 'Fall', 2009, 'A'),
('19991', 'HIS-351', '1', 'Spring', 2010, 'B'),
('23121', 'FIN-201', '1', 'Spring', 2010, 'C+'),
('44553', 'PHY-101', '1', 'Fall', 2009, 'B-'),
('45678', 'CS-101', '1', 'Fall', 2009, 'F'),
('45678', 'CS-101', '1', 'Spring', 2010, 'B+'),
('45678', 'CS-319', '1', 'Spring', 2010, 'B'),
('54321', 'CS-101', '1', 'Fall', 2009, 'A-'),
('54321', 'CS-190', '2', 'Spring', 2009, 'B+'),
('55739', 'MU-199', '1', 'Spring', 2010, 'A-'),
('76543', 'CS-101', '1', 'Fall', 2009, 'A'),
('76543', 'CS-319', '2', 'Spring', 2010, 'A'),
('76653', 'EE-181', '1', 'Spring', 2009, 'C'),
('98765', 'CS-101', '1', 'Fall', 2009, 'C-'),
('98765', 'CS-315', '1', 'Spring', 2010, 'B'),
('98988', 'BIO-101', '1', 'Summer', 2009, 'A'),
('98988', 'BIO-301', '1', 'Summer', 2010, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teaches`
--

CREATE TABLE `teaches` (
  `ID` varchar(5) NOT NULL DEFAULT '',
  `course_id` varchar(8) NOT NULL DEFAULT '',
  `sec_id` varchar(8) NOT NULL DEFAULT '',
  `semester` varchar(6) NOT NULL DEFAULT '',
  `year` decimal(4,0) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teaches`
--

INSERT INTO `teaches` (`ID`, `course_id`, `sec_id`, `semester`, `year`) VALUES
('10101', 'CS-101', '1', 'Fall', 2009),
('10101', 'CS-315', '1', 'Spring', 2010),
('10101', 'CS-347', '1', 'Fall', 2009),
('12121', 'FIN-201', '1', 'Spring', 2010),
('15151', 'MU-199', '1', 'Spring', 2010),
('22222', 'PHY-101', '1', 'Fall', 2009),
('32343', 'HIS-351', '1', 'Spring', 2010),
('45565', 'CS-101', '1', 'Spring', 2010),
('45565', 'CS-319', '1', 'Spring', 2010),
('76766', 'BIO-101', '1', 'Summer', 2009),
('76766', 'BIO-301', '1', 'Summer', 2010),
('83821', 'CS-190', '1', 'Spring', 2009),
('83821', 'CS-190', '2', 'Spring', 2009),
('83821', 'CS-319', '2', 'Spring', 2010),
('98345', 'EE-181', '1', 'Spring', 2009);

-- --------------------------------------------------------

--
-- Table structure for table `time_slot`
--

CREATE TABLE `time_slot` (
  `time_slot_id` varchar(4) NOT NULL DEFAULT '',
  `day` varchar(1) NOT NULL DEFAULT '',
  `start_hr` decimal(2,0) NOT NULL DEFAULT 0,
  `start_min` decimal(2,0) NOT NULL DEFAULT 0,
  `end_hr` decimal(2,0) DEFAULT NULL,
  `end_min` decimal(2,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `time_slot`
--

INSERT INTO `time_slot` (`time_slot_id`, `day`, `start_hr`, `start_min`, `end_hr`, `end_min`) VALUES
('A', 'F', 8, 0, 8, 50),
('A', 'M', 8, 0, 8, 50),
('A', 'W', 8, 0, 8, 50),
('B', 'F', 9, 0, 9, 50),
('B', 'M', 9, 0, 9, 50),
('B', 'W', 9, 0, 9, 50),
('C', 'F', 11, 0, 11, 50),
('C', 'M', 11, 0, 11, 50),
('C', 'W', 11, 0, 11, 50),
('D', 'F', 13, 0, 13, 50),
('D', 'M', 13, 0, 13, 50),
('D', 'W', 13, 0, 13, 50),
('E', 'R', 10, 30, 11, 45),
('E', 'T', 10, 30, 11, 45),
('F', 'R', 14, 30, 15, 45),
('F', 'T', 14, 30, 15, 45),
('G', 'F', 16, 0, 16, 50),
('G', 'M', 16, 0, 16, 50),
('G', 'W', 16, 0, 16, 50),
('H', 'W', 10, 0, 12, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advisor`
--
ALTER TABLE `advisor`
  ADD PRIMARY KEY (`s_ID`),
  ADD KEY `i_ID` (`i_ID`);

--
-- Indexes for table `airports`
--
ALTER TABLE `airports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`,`belong_country_id`),
  ADD KEY `belong_country_id` (`belong_country_id`);

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`building`,`room_number`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `dept_name` (`dept_name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_name`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`NIP`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departure_id` (`departure_id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- Indexes for table `fruits`
--
ALTER TABLE `fruits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`ID_HARI`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `dept_name` (`dept_name`);

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
-- Indexes for table `prereq`
--
ALTER TABLE `prereq`
  ADD PRIMARY KEY (`course_id`,`prereq_id`),
  ADD KEY `prereq_id` (`prereq_id`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`ID_RUANG`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`course_id`,`sec_id`,`semester`,`year`),
  ADD KEY `building` (`building`,`room_number`);

--
-- Indexes for table `shopping_list`
--
ALTER TABLE `shopping_list`
  ADD PRIMARY KEY (`customer_id`,`fruit_id`),
  ADD KEY `fruit_id` (`fruit_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `dept_name` (`dept_name`);

--
-- Indexes for table `takes`
--
ALTER TABLE `takes`
  ADD PRIMARY KEY (`ID`,`course_id`,`sec_id`,`semester`,`year`),
  ADD KEY `course_id` (`course_id`,`sec_id`,`semester`,`year`);

--
-- Indexes for table `teaches`
--
ALTER TABLE `teaches`
  ADD PRIMARY KEY (`ID`,`course_id`,`sec_id`,`semester`,`year`),
  ADD KEY `course_id` (`course_id`,`sec_id`,`semester`,`year`);

--
-- Indexes for table `time_slot`
--
ALTER TABLE `time_slot`
  ADD PRIMARY KEY (`time_slot_id`,`day`,`start_hr`,`start_min`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airports`
--
ALTER TABLE `airports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `fruits`
--
ALTER TABLE `fruits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `ID_JADWAL` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airports`
--
ALTER TABLE `airports`
  ADD CONSTRAINT `airports_ibfk_1` FOREIGN KEY (`belong_country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `flights_ibfk_1` FOREIGN KEY (`departure_id`) REFERENCES `airports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `flights_ibfk_2` FOREIGN KEY (`destination_id`) REFERENCES `airports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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

--
-- Constraints for table `shopping_list`
--
ALTER TABLE `shopping_list`
  ADD CONSTRAINT `shopping_list_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `shopping_list_ibfk_2` FOREIGN KEY (`fruit_id`) REFERENCES `fruits` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
