-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jul 2020 pada 02.34
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmvc`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nrp` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peoples`
--

CREATE TABLE `peoples` (
  `id` int(9) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `peoples`
--

INSERT INTO `peoples` (`id`, `name`, `address`, `email`) VALUES
(2, 'Prof. Coy Fahey', '19710 Murazik Field', 'schneider.dallas@example.net'),
(3, 'Vivianne Klein', '7786 Hickle Views', 'csteuber@example.com'),
(4, 'Cleve Tremblay', '231 Weissnat Junctions Apt. 398', 'arnold35@example.com'),
(5, 'Prof. Joshuah Schumm', '016 Sauer Loaf Suite 662', 'mateo64@example.com'),
(6, 'Mrs. Alverta Nicolas IV', '3089 Nikolaus Lane', 'dariana10@example.com'),
(7, 'Mrs. Alivia Huels', '487 Lemke Track', 'pconn@example.com'),
(8, 'Rickie Wuckert', '919 Cronin Glens', 'zrunte@example.org'),
(9, 'Dr. Lurline Will', '320 Magnolia Rapids Suite 908', 'tod40@example.net'),
(10, 'Kristin Auer', '0939 Rosalee Flat Apt. 630', 'holden.vandervort@example.net'),
(11, 'Yadira Abshire', '0603 Beier Tunnel', 'bartoletti.audreanne@example.org'),
(12, 'Mrs. Darby Fay Sr.', '034 Langosh Place', 'xabbott@example.net'),
(13, 'Dixie Lakin', '64655 Ebert Forges Apt. 550', 'rene50@example.org'),
(14, 'Prof. Monserrate Boyle DDS', '40358 Hartmann Path Apt. 840', 'vstehr@example.com'),
(15, 'Simone Larson DVM', '9991 Aubree Avenue Apt. 998', 'rutherford.francis@example.net'),
(16, 'Moises Prohaska', '58016 Cruickshank Mountains Apt. 072', 'kaycee.boyle@example.org'),
(17, 'Raymundo Huel', '21908 Bernadette Ranch Apt. 914', 'kohler.marcelina@example.net'),
(18, 'Rashad Kuhn I', '21812 Jayson Plain', 'funk.justyn@example.net'),
(19, 'Kaela Morissette', '613 Ciara Extension', 'davonte.daugherty@example.com'),
(20, 'Dr. Brody Ondricka Jr.', '07544 Cordie Wells Apt. 138', 'njohnston@example.com'),
(21, 'Ralph Christiansen', '573 Wilma Isle', 'kacie.feil@example.org'),
(22, 'Dessie Mosciski', '1783 Hettinger Key', 'rafaela.haag@example.net'),
(23, 'Aurelio Schowalter', '31059 Price View', 'adelbert28@example.com'),
(24, 'Malachi Abshire', '628 Corkery Passage Suite 738', 'cole.missouri@example.com'),
(25, 'Dr. Muhammad Bruen Jr.', '9042 Kylie Lane Apt. 088', 'dana33@example.com'),
(26, 'Mike Lebsack', '5393 Crona Garden', 'alvah59@example.net'),
(27, 'Lloyd Blanda', '22581 Bauch Park', 'gstamm@example.com'),
(28, 'Hershel Renner DVM', '987 Leanna Burg Suite 657', 'bradtke.domenica@example.org'),
(29, 'Amari Christiansen', '1954 Renner Spur Apt. 664', 'lea.osinski@example.net'),
(30, 'Prof. Brenden Vandervort DVM', '102 Annabelle Streets', 'josianne.ankunding@example.com'),
(31, 'Mallory Bayer PhD', '632 Sidney Ports Apt. 873', 'wunsch.heather@example.com'),
(32, 'Wiley Murphy', '7261 Fausto Lodge', 'gutkowski.jordi@example.com'),
(33, 'Miss Krista Mayer', '39671 Anita Plains', 'lucienne.kutch@example.com'),
(34, 'Mrs. Maddison Bailey MD', '13126 Kilback Corner Apt. 588', 'stephan95@example.net'),
(35, 'Mr. Jermey Schroeder', '14120 Raven Lake', 'davon70@example.com'),
(36, 'Gilda Hickle', '7020 Ondricka Common', 'darryl.altenwerth@example.com'),
(37, 'Chyna Kris', '356 Ellie Springs Suite 437', 'ischumm@example.org'),
(38, 'Liliane Wuckert Jr.', '3260 Aisha Rest Suite 458', 'johnson.jack@example.org'),
(39, 'Aniya Bauch', '44540 Hector Trail Suite 014', 'nicholas.kub@example.com'),
(40, 'Hortense Blick', '9787 Jamar Pike Apt. 932', 'valentine22@example.com'),
(41, 'Mr. Art Will III', '71395 Turcotte Underpass', 'reid82@example.org'),
(42, 'Ms. Eleonore Jacobi Jr.', '2190 Jannie Island Apt. 384', 'edyth.shanahan@example.com'),
(43, 'Ulices Trantow III', '85392 Spinka Wall', 'hertha77@example.net'),
(44, 'Emory VonRueden', '1874 McClure Key Suite 230', 'sierra.gorczany@example.org'),
(45, 'Miss Maegan Volkman', '6976 Beahan Ridge', 'cecile.johns@example.net'),
(46, 'Prof. Cleve Konopelski', '1113 Noemie Rest', 'niko83@example.org'),
(47, 'Korey Mraz', '7122 Little Trafficway', 'rippin.guy@example.org'),
(48, 'Alfreda Denesik', '933 Okuneva Locks Suite 018', 'tbatz@example.com'),
(49, 'Dr. Ewald Reilly', '8516 Travon Manors Suite 283', 'andrew.rice@example.com'),
(50, 'Mr. Oda Koepp', '54997 Leslie Streets', 'rice.jade@example.org'),
(51, 'Maritza Barton MD', '2154 Jennie Shores', 'phoebe.feeney@example.net'),
(52, 'Ora Schowalter PhD', '95581 Bruen Island', 'gibson.henriette@example.net'),
(53, 'Carlie Walsh', '62950 Rolfson Village', 'lakin.khalid@example.com'),
(54, 'Nettie Schumm', '5124 Kole Cliffs Suite 097', 'dane40@example.com'),
(55, 'Austin Nicolas', '911 Hartmann Drive', 'wleannon@example.net'),
(56, 'Isobel Krajcik I', '77353 Howe Extensions', 'larkin.dejah@example.org'),
(57, 'Hal Altenwerth', '838 Hugh Expressway Suite 733', 'florian.block@example.net'),
(58, 'Mrs. Leonie Gulgowski', '6385 Konopelski Course', 'domenick35@example.com'),
(59, 'Keanu Nolan', '5415 Camren Dam', 'lupe18@example.com'),
(60, 'Hobart Ryan', '572 Kattie Crest Apt. 311', 'linda.doyle@example.com'),
(61, 'Kristian Hermiston', '6199 Hegmann Club', 'king.rudolph@example.org'),
(62, 'Kale Zieme', '6700 Samantha Harbors Suite 292', 'sawayn.justus@example.org'),
(63, 'Joel Corkery', '33589 Rau Prairie', 'creola25@example.net'),
(64, 'Freida Durgan', '9652 Fisher Court', 'eerdman@example.org'),
(65, 'Neva Bashirian', '5991 Runte Summit Suite 902', 'roberta84@example.org'),
(66, 'Francesca Parker', '6283 Herman Club', 'elza99@example.net'),
(67, 'Prof. Clifford Stiedemann', '343 Mayert Branch Apt. 283', 'rsporer@example.org'),
(68, 'Reece McClure II', '2324 Milton Throughway', 'kuphal.jordane@example.com'),
(69, 'Prof. Reanna Runolfsson DVM', '6362 Deondre Loaf', 'ltromp@example.org'),
(70, 'Eldridge Gleichner', '47501 Maribel Haven', 'melvina49@example.com'),
(71, 'Omer Daniel', '6420 Ramon Fall', 'weissnat.jeffry@example.net'),
(72, 'Zander Koss DVM', '81574 Vincent Inlet Apt. 839', 'alphonso98@example.net'),
(73, 'Chloe Cummerata MD', '25870 Abshire Field Suite 723', 'dayne59@example.org'),
(74, 'Prof. Nicholas O\'Kon', '472 Rogahn Drive Apt. 465', 'christop.beahan@example.net'),
(75, 'Janessa Reinger', '9416 Genesis Mill', 'anahi32@example.net'),
(76, 'Camden Beier', '9137 Lebsack Lock Apt. 069', 'makenna.strosin@example.com'),
(77, 'Rosalyn Schaefer', '86257 Marks Squares Suite 054', 'jerry.glover@example.com'),
(78, 'Arvel Lynch PhD', '0462 Garry Fall', 'jude.davis@example.net'),
(79, 'Lenna Upton', '11494 Antonietta Rest Suite 654', 'lamont.gislason@example.net'),
(80, 'Prof. Isai Tremblay DVM', '5256 Jakubowski Overpass', 'filomena.crooks@example.net'),
(81, 'Aaron Ward', '47522 Pouros Drives Apt. 161', 'marquardt.eloisa@example.org'),
(82, 'Oswald Carroll', '1120 Patricia Square', 'akuphal@example.org'),
(83, 'Rhiannon Koss', '4255 Alessia Lake', 'johan56@example.com'),
(84, 'Anita Kihn', '56972 Mavis Street', 'morton.herzog@example.com'),
(85, 'Evelyn Schuppe', '92939 Lesch Pike', 'dante31@example.com'),
(86, 'Golden Cole', '092 Bennie Prairie Apt. 743', 'mking@example.net'),
(87, 'Adella Kohler PhD', '17630 Shields Coves', 'kay.stracke@example.org'),
(88, 'Kacie Nolan III', '0285 Armstrong Coves Apt. 544', 'keebler.oswaldo@example.net'),
(89, 'Mr. Roman Cummerata', '54296 Rosemary Parks', 'robert46@example.com'),
(90, 'Ms. Esperanza Bechtelar V', '59735 Paul Via Suite 354', 'maverick.schinner@example.net'),
(91, 'Ms. Felipa Gislason', '095 Christiansen Mill Apt. 412', 'emard.noelia@example.net'),
(92, 'Ms. Yesenia Fisher', '174 Carmela Rapids', 'rhea.veum@example.com'),
(93, 'Brenda Cartwright', '0267 Runolfsson Hollow Suite 235', 'justen08@example.net'),
(94, 'Alessandra Gerlach Jr.', '9189 Demarcus Station Apt. 080', 'sconnelly@example.org'),
(95, 'Mr. Fredrick Daugherty', '885 Brekke Hill', 'isabel88@example.com'),
(96, 'Lera Douglas', '743 Klein Passage', 'kerluke.bria@example.com'),
(97, 'Dr. Toy Hudson DVM', '49413 Kara Union Apt. 003', 'eddie.schmitt@example.com'),
(98, 'Ms. Edwina Lind II', '644 Dietrich Hills Suite 744', 'wintheiser.doyle@example.com'),
(99, 'Dr. Nikolas Jones Jr.', '91472 Thiel Throughway', 'lewis84@example.org'),
(100, 'Carmine Schmitt DVM', '318 Oren Shore', 'johnson.dereck@example.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peoples`
--
ALTER TABLE `peoples`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `peoples`
--
ALTER TABLE `peoples`
  MODIFY `id` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
