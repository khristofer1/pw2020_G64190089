-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Mar 2024 pada 03.31
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpdasar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nim` char(9) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `email`, `jurusan`, `gambar`) VALUES
(184, 'John Doe', '123456789', 'john.doe@example.com', 'Computer Science', 'john.jpg'),
(185, 'Alice Smith', '987654321', 'alice.smith@example.com', 'Biology', 'alice.jpg'),
(186, 'Robert Johnson', '456789012', 'robert.johnson@example.com', 'Mechanical Engineering', 'robert.jpg'),
(187, 'Emily Davis', '234567890', 'emily.davis@example.com', 'Psychology', 'emily.jpg'),
(188, 'David Wilson', '890123456', 'david.wilson@example.com', 'Business Administration', 'david.jpg'),
(189, 'Jennifer Lee', '567890123', 'jennifer.lee@example.com', 'Electrical Engineering', 'jennifer.jpg'),
(190, 'Michael Brown', '345678901', 'michael.brown@example.com', 'Chemistry', 'michael.jpeg'),
(191, 'Samantha Miller', '901234567', 'samantha.miller@example.com', 'Environmental Science', 'samantha.jpg'),
(192, 'Kevin Turner', '678901234', 'kevin.turner@example.com', 'Mathematics', 'kevin.webp'),
(193, 'Olivia White', '112233445', 'olivia.white@example.com', 'English Literature', 'olivia.webp'),
(194, 'Khristofer', 'G64190089', 'kurniawankhristofer@apps.ipb.ac.id', 'Ilmu Komputer', '65cdbc60d5616.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
