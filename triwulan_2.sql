-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2018 at 06:48 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `triwulan_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `nama`, `email`, `password`) VALUES
(1, 'zaki', 'zaki@gmail.com', '123'),
(2, 'HAQQY', 'haqqy@gmail.com', '123'),
(3, 'cxcczxcxz', 'cxzcxzzx@fdxf', '6a0bd9bd8c4fdc8d3ad496c3d4272596');

-- --------------------------------------------------------

--
-- Table structure for table `blog_artikel`
--

CREATE TABLE `blog_artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_artikel`
--

INSERT INTO `blog_artikel` (`id`, `judul`, `isi`, `gambar`, `kategori_id`, `user_id`, `tanggal`, `status`) VALUES
(63, 'Sayur Ayam Bakar', '<p><strong>Citizen6, Semarang:</strong>&nbsp;Berbicara tentang kuliner di Yogya memang tidak ada habisnya. Sebagai kota wisata, Yogya selalu menyajikan hal-hal yang menarik termasuk dari segi kulinernya. Tidak selalu Yogja dikaitkan dengan makanan yang manis. Ayam Geprek salah satunya.&nbsp;<br />\r\n<br />\r\nMendengar namanya saja kita mungkin sudah bisa membayangkan. Ya, ayam geprek adalah ayam goreng tepung yang di tumbuk dengan ulekan bersamamaan dengan sambalnya hingga dagingnya terkoyak. Walaupun telah digeprek, namun kerenyahan ayamnya tetap terasa. Pelanggan juga bisa memesan sendiri tingkat kepedasan ayam geprek tersebut, misalnya ingin 2 cabe, 4 cabe atau bahkan 10 cabe. Namun apabila ingin lebih dari 10 cabe di kenakan biaya tambahan sebesar Rp 1000 per kelipatan 5 cabenya. Tentu saja Anda harus tetap mempertimbangkan tingkat kepedasannya, jangan sampai sakit perut gara-gara kepedasan.<br />\r\n<br />\r\nCara pesan makanan di tempat ini agak berbeda dengan tempat lain. Pertama Anda ambil 2 buah piring. Piring yang pertama untuk nasi dan sayur yang bisa Anda pilih di sana. Piring yang satunya lagi untuk memilih ayam yang ingin Anda geprek. Kalau masih kurang, Anda juga bisa menambahkan telur, tahu, atau tempe. Lalu, piring yang berisi lauk yang bakal digeprek diberikan ke tukang gepreknya. Jangan lupa sebutkan jumlah cabai yang Anda inginkan. Kegurihan ayam dan pedasnya sambal yang nikmat menambah gairah untuk makan di tempat ini<br />\r\n<br />\r\nKenikmatan ayam geprek Bu Rum ini dibuktikan dengan selalu ramainya warung makan tersebut. Apalagi di jam-jam makan siang, Anda harus mengantri untuk bisa makan di sini Tempatnya sederhana di pinggir jalan, namun setiap siang para mahasiswa selalu menyerbu tempat ini untuk makan siang. Tidak terima kursi yang penuh, Bu Rum si pemilik warung menyediakan tikar agar bisa makan lesehan.<br />\r\n<br />\r\nBanyak sekali ayam geprek di jalanan Yogya, namun yang paling tersohor adalah Ayam Geprek Bu Rum yang berlokasi di Jalan Wulung Lor, Papringan, Jogyakarta. Selain rasanya yang enak dan nikmat, harga juga tak jadi masalah bagi para mahasiswa dan pengunjung lain. Cukup dengan merogoh kocek sebersar Rp 7 ribu, Anda bisa mendapat ayam geprek dengan nasinya. Warung makan ini buka dari pukul 10.00-16.00 WIB.&nbsp;</p>\r\n', '74784.img6.jpg', 10, 1, '2018-02-26 02:04:29', '1'),
(64, 'Resep sayuran', '<p><strong>Citizen6, Semarang:</strong>&nbsp;Berbicara tentang kuliner di Yogya memang tidak ada habisnya. Sebagai kota wisata, Yogya selalu menyajikan hal-hal yang menarik termasuk dari segi kulinernya. Tidak selalu Yogja dikaitkan dengan makanan yang manis. Ayam Geprek salah satunya.&nbsp;<br />\r\n<br />\r\nMendengar namanya saja kita mungkin sudah bisa membayangkan. Ya, ayam geprek adalah ayam goreng tepung yang di tumbuk dengan ulekan bersamamaan dengan sambalnya hingga dagingnya terkoyak. Walaupun telah digeprek, namun kerenyahan ayamnya tetap terasa. Pelanggan juga bisa memesan sendiri tingkat kepedasan ayam geprek tersebut, misalnya ingin 2 cabe, 4 cabe atau bahkan 10 cabe. Namun apabila ingin lebih dari 10 cabe di kenakan biaya tambahan sebesar Rp 1000 per kelipatan 5 cabenya. Tentu saja Anda harus tetap mempertimbangkan tingkat kepedasannya, jangan sampai sakit perut gara-gara kepedasan.<br />\r\n<br />\r\nCara pesan makanan di tempat ini agak berbeda dengan tempat lain. Pertama Anda ambil 2 buah piring. Piring yang pertama untuk nasi dan sayur yang bisa Anda pilih di sana. Piring yang satunya lagi untuk memilih ayam yang ingin Anda geprek. Kalau masih kurang, Anda juga bisa menambahkan telur, tahu, atau tempe. Lalu, piring yang berisi lauk yang bakal digeprek diberikan ke tukang gepreknya. Jangan lupa sebutkan jumlah cabai yang Anda inginkan. Kegurihan ayam dan pedasnya sambal yang nikmat menambah gairah untuk makan di tempat ini<br />\r\n<br />\r\nKenikmatan ayam geprek Bu Rum ini dibuktikan dengan selalu ramainya warung makan tersebut. Apalagi di jam-jam makan siang, Anda harus mengantri untuk bisa makan di sini Tempatnya sederhana di pinggir jalan, namun setiap siang para mahasiswa selalu menyerbu tempat ini untuk makan siang. Tidak terima kursi yang penuh, Bu Rum si pemilik warung menyediakan tikar agar bisa makan lesehan.<br />\r\n<br />\r\nBanyak sekali ayam geprek di jalanan Yogya, namun yang paling tersohor adalah Ayam Geprek Bu Rum yang berlokasi di Jalan Wulung Lor, Papringan, Jogyakarta. Selain rasanya yang enak dan nikmat, harga juga tak jadi masalah bagi para mahasiswa dan pengunjung lain. Cukup dengan merogoh kocek sebersar Rp 7 ribu, Anda bisa mendapat ayam geprek dengan nasinya. Warung makan ini buka dari pukul 10.00-16.00 WIB.&nbsp;</p>\r\n', '18751.img1.jpg', 10, 1, '2018-02-26 02:05:42', '1'),
(65, 'Sayur Ayam Bakar', '<p><strong>Citizen6, Semarang:</strong>&nbsp;Berbicara tentang kuliner di Yogya memang tidak ada habisnya. Sebagai kota wisata, Yogya selalu menyajikan hal-hal yang menarik termasuk dari segi kulinernya. Tidak selalu Yogja dikaitkan dengan makanan yang manis. Ayam Geprek salah satunya.&nbsp;<br />\r\n<br />\r\nMendengar namanya saja kita mungkin sudah bisa membayangkan. Ya, ayam geprek adalah ayam goreng tepung yang di tumbuk dengan ulekan bersamamaan dengan sambalnya hingga dagingnya terkoyak. Walaupun telah digeprek, namun kerenyahan ayamnya tetap terasa. Pelanggan juga bisa memesan sendiri tingkat kepedasan ayam geprek tersebut, misalnya ingin 2 cabe, 4 cabe atau bahkan 10 cabe. Namun apabila ingin lebih dari 10 cabe di kenakan biaya tambahan sebesar Rp 1000 per kelipatan 5 cabenya. Tentu saja Anda harus tetap mempertimbangkan tingkat kepedasannya, jangan sampai sakit perut gara-gara kepedasan.<br />\r\n<br />\r\nCara pesan makanan di tempat ini agak berbeda dengan tempat lain. Pertama Anda ambil 2 buah piring. Piring yang pertama untuk nasi dan sayur yang bisa Anda pilih di sana. Piring yang satunya lagi untuk memilih ayam yang ingin Anda geprek. Kalau masih kurang, Anda juga bisa menambahkan telur, tahu, atau tempe. Lalu, piring yang berisi lauk yang bakal digeprek diberikan ke tukang gepreknya. Jangan lupa sebutkan jumlah cabai yang Anda inginkan. Kegurihan ayam dan pedasnya sambal yang nikmat menambah gairah untuk makan di tempat ini<br />\r\n<br />\r\nKenikmatan ayam geprek Bu Rum ini dibuktikan dengan selalu ramainya warung makan tersebut. Apalagi di jam-jam makan siang, Anda harus mengantri untuk bisa makan di sini Tempatnya sederhana di pinggir jalan, namun setiap siang para mahasiswa selalu menyerbu tempat ini untuk makan siang. Tidak terima kursi yang penuh, Bu Rum si pemilik warung menyediakan tikar agar bisa makan lesehan.<br />\r\n<br />\r\nBanyak sekali ayam geprek di jalanan Yogya, namun yang paling tersohor adalah Ayam Geprek Bu Rum yang berlokasi di Jalan Wulung Lor, Papringan, Jogyakarta. Selain rasanya yang enak dan nikmat, harga juga tak jadi masalah bagi para mahasiswa dan pengunjung lain. Cukup dengan merogoh kocek sebersar Rp 7 ribu, Anda bisa mendapat ayam geprek dengan nasinya. Warung makan ini buka dari pukul 10.00-16.00 WIB.&nbsp;</p>\r\n', '38746.img8.jpg', 8, 1, '2018-02-26 02:06:32', '1'),
(66, 'Ayam Bakar Spesial', '<p><strong>Citizen6, Semarang:</strong>&nbsp;Berbicara tentang kuliner di Yogya memang tidak ada habisnya. Sebagai kota wisata, Yogya selalu menyajikan hal-hal yang menarik termasuk dari segi kulinernya. Tidak selalu Yogja dikaitkan dengan makanan yang manis. Ayam Geprek salah satunya.&nbsp;<br />\r\n<br />\r\nMendengar namanya saja kita mungkin sudah bisa membayangkan. Ya, ayam geprek adalah ayam goreng tepung yang di tumbuk dengan ulekan bersamamaan dengan sambalnya hingga dagingnya terkoyak. Walaupun telah digeprek, namun kerenyahan ayamnya tetap terasa. Pelanggan juga bisa memesan sendiri tingkat kepedasan ayam geprek tersebut, misalnya ingin 2 cabe, 4 cabe atau bahkan 10 cabe. Namun apabila ingin lebih dari 10 cabe di kenakan biaya tambahan sebesar Rp 1000 per kelipatan 5 cabenya. Tentu saja Anda harus tetap mempertimbangkan tingkat kepedasannya, jangan sampai sakit perut gara-gara kepedasan.<br />\r\n<br />\r\nCara pesan makanan di tempat ini agak berbeda dengan tempat lain. Pertama Anda ambil 2 buah piring. Piring yang pertama untuk nasi dan sayur yang bisa Anda pilih di sana. Piring yang satunya lagi untuk memilih ayam yang ingin Anda geprek. Kalau masih kurang, Anda juga bisa menambahkan telur, tahu, atau tempe. Lalu, piring yang berisi lauk yang bakal digeprek diberikan ke tukang gepreknya. Jangan lupa sebutkan jumlah cabai yang Anda inginkan. Kegurihan ayam dan pedasnya sambal yang nikmat menambah gairah untuk makan di tempat ini<br />\r\n<br />\r\nKenikmatan ayam geprek Bu Rum ini dibuktikan dengan selalu ramainya warung makan tersebut. Apalagi di jam-jam makan siang, Anda harus mengantri untuk bisa makan di sini Tempatnya sederhana di pinggir jalan, namun setiap siang para mahasiswa selalu menyerbu tempat ini untuk makan siang. Tidak terima kursi yang penuh, Bu Rum si pemilik warung menyediakan tikar agar bisa makan lesehan.<br />\r\n<br />\r\nBanyak sekali ayam geprek di jalanan Yogya, namun yang paling tersohor adalah Ayam Geprek Bu Rum yang berlokasi di Jalan Wulung Lor, Papringan, Jogyakarta. Selain rasanya yang enak dan nikmat, harga juga tak jadi masalah bagi para mahasiswa dan pengunjung lain. Cukup dengan merogoh kocek sebersar Rp 7 ribu, Anda bisa mendapat ayam geprek dengan nasinya. Warung makan ini buka dari pukul 10.00-16.00 WIB.&nbsp;</p>\r\n', '75613.asd.jpg', 10, 1, '2018-02-26 02:07:08', '1'),
(67, 'Ayam Geprek Pedas', '<p><strong>Citizen6, Semarang:</strong>&nbsp;Berbicara tentang kuliner di Yogya memang tidak ada habisnya. Sebagai kota wisata, Yogya selalu menyajikan hal-hal yang menarik termasuk dari segi kulinernya. Tidak selalu Yogja dikaitkan dengan makanan yang manis. Ayam Geprek salah satunya.&nbsp;<br />\r\n<br />\r\nMendengar namanya saja kita mungkin sudah bisa membayangkan. Ya, ayam geprek adalah ayam goreng tepung yang di tumbuk dengan ulekan bersamamaan dengan sambalnya hingga dagingnya terkoyak. Walaupun telah digeprek, namun kerenyahan ayamnya tetap terasa. Pelanggan juga bisa memesan sendiri tingkat kepedasan ayam geprek tersebut, misalnya ingin 2 cabe, 4 cabe atau bahkan 10 cabe. Namun apabila ingin lebih dari 10 cabe di kenakan biaya tambahan sebesar Rp 1000 per kelipatan 5 cabenya. Tentu saja Anda harus tetap mempertimbangkan tingkat kepedasannya, jangan sampai sakit perut gara-gara kepedasan.<br />\r\n<br />\r\nCara pesan makanan di tempat ini agak berbeda dengan tempat lain. Pertama Anda ambil 2 buah piring. Piring yang pertama untuk nasi dan sayur yang bisa Anda pilih di sana. Piring yang satunya lagi untuk memilih ayam yang ingin Anda geprek. Kalau masih kurang, Anda juga bisa menambahkan telur, tahu, atau tempe. Lalu, piring yang berisi lauk yang bakal digeprek diberikan ke tukang gepreknya. Jangan lupa sebutkan jumlah cabai yang Anda inginkan. Kegurihan ayam dan pedasnya sambal yang nikmat menambah gairah untuk makan di tempat ini<br />\r\n<br />\r\nKenikmatan ayam geprek Bu Rum ini dibuktikan dengan selalu ramainya warung makan tersebut. Apalagi di jam-jam makan siang, Anda harus mengantri untuk bisa makan di sini Tempatnya sederhana di pinggir jalan, namun setiap siang para mahasiswa selalu menyerbu tempat ini untuk makan siang. Tidak terima kursi yang penuh, Bu Rum si pemilik warung menyediakan tikar agar bisa makan lesehan.<br />\r\n<br />\r\nBanyak sekali ayam geprek di jalanan Yogya, namun yang paling tersohor adalah Ayam Geprek Bu Rum yang berlokasi di Jalan Wulung Lor, Papringan, Jogyakarta. Selain rasanya yang enak dan nikmat, harga juga tak jadi masalah bagi para mahasiswa dan pengunjung lain. Cukup dengan merogoh kocek sebersar Rp 7 ribu, Anda bisa mendapat ayam geprek dengan nasinya. Warung makan ini buka dari pukul 10.00-16.00 WIB.&nbsp;</p>\r\n', '90037.21074.10463809686_bf3d1f28b1_h.0.jpg', 10, 1, '2018-02-26 02:07:47', '1'),
(68, 'sdfsdfds', '<p>sdfdsfdsf</p>\r\n', '61790.Chrysanthemum.jpg', 10, 1, '2018-02-27 20:47:48', '1'),
(69, 'dsfdsdsf', '<p>dsfdsfdsf</p>\r\n', '30860.Jellyfish.jpg', 8, 1, '2018-02-27 21:48:07', '1');

-- --------------------------------------------------------

--
-- Table structure for table `blog_kategori`
--

CREATE TABLE `blog_kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_kategori`
--

INSERT INTO `blog_kategori` (`id`, `nama`, `status`) VALUES
(8, 'Resep Makanan', '1'),
(10, 'Enakk lo', '1');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notelepon` varchar(100) NOT NULL,
  `komentar` text NOT NULL,
  `artikel_id` int(11) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `nama`, `email`, `notelepon`, `komentar`, `artikel_id`, `tanggal`) VALUES
(33, 'ddsadsad', 'dsadsads@gmail.com', '45435', 'dasdasdasdd', 67, '2018-02-26 20:01:27'),
(34, 'adsadssadasd', 'dsaasdads@gmail.kom', '2343242523', 'adssadasdsad', 67, '2018-02-26 21:47:33'),
(35, 'dadadadadsd', 'eqweqwqeqe@gmail.lom', '53453643', 'dasadadsad', 67, '2018-02-26 21:48:37'),
(36, 'dasdsadad', 'dasdsa@gmail.com', '34543535443', 'dadsadsad', 66, '2018-02-26 22:02:18'),
(37, 'adsdadsad', 'haqqy@gmail.com', '353424', 'dasdasasdsad', 65, '2018-02-26 22:45:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_artikel`
--
ALTER TABLE `blog_artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_kategori`
--
ALTER TABLE `blog_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `blog_artikel`
--
ALTER TABLE `blog_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `blog_kategori`
--
ALTER TABLE `blog_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
