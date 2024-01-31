-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Jan 2024 pada 03.41
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ci`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_berkas`
--

CREATE TABLE `tb_berkas` (
  `kode_berkas` int(11) NOT NULL,
  `nama_berkas` varchar(255) NOT NULL,
  `ket_berkas` varchar(255) NOT NULL,
  `tipe_berkas` varchar(255) NOT NULL,
  `ukuran_berkas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_berkas`
--

INSERT INTO `tb_berkas` (`kode_berkas`, `nama_berkas`, `ket_berkas`, `tipe_berkas`, `ukuran_berkas`) VALUES
(12, '', 'test', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_diskon`
--

CREATE TABLE `tb_diskon` (
  `id_diskon` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `diskon` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_diskon`
--

INSERT INTO `tb_diskon` (`id_diskon`, `nama`, `harga`, `jumlah`, `diskon`, `total`) VALUES
(7, 'DOKLAT MINT', '10000', '10', '10', ''),
(8, 'COKLAT WHITE', '30000', '5', '20', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_fakultas`
--

CREATE TABLE `tb_fakultas` (
  `id_fakultas` int(11) NOT NULL,
  `nama_fakultas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_fakultas`
--

INSERT INTO `tb_fakultas` (`id_fakultas`, `nama_fakultas`) VALUES
(1, 'Teknik'),
(2, 'Hukum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_dosen` int(255) NOT NULL,
  `nama_dosen` varchar(255) NOT NULL,
  `matkul` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_guru`
--

INSERT INTO `tb_guru` (`id_dosen`, `nama_dosen`, `matkul`, `kelas`) VALUES
(17, 'Kakuk ', 'IPS', 'RU001'),
(18, 'Kakuk ', 'sdwdw', 'RU002'),
(19, 'Jen', 'sdwdw', 'RU003'),
(20, 'Nani', 'Data Base', 'RU004');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_js`
--

CREATE TABLE `tb_js` (
  `id_prodak` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jurusan`
--

CREATE TABLE `tb_jurusan` (
  `kode_jurusan` char(255) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`kode_jurusan`, `nama_jurusan`) VALUES
('TI', 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`id_pegawai`, `nama`, `alamat`, `pekerjaan`) VALUES
(12, 'Saril', 'CILEDUG', 'sdwdw'),
(13, 'Saril', 'CILEDUG', 'sdwdw'),
(14, 'DOKLAT MINT', 'Jl. Dipatiukur 112-114 Bandung ', 'sdwdw'),
(15, 'DOKLAT MINT', 'Jl. Dipatiukur 112-114 Bandung ', 'sdwdw'),
(16, 'Saril', 'Jl. Dipatiukur 112-114 Bandung ', 'sdwdw'),
(17, 'Saril', 'Jl. Dipatiukur 112-114 Bandung ', 'sdwdw'),
(18, 'Saril', 'Jl. Dipatiukur 112-114 Bandung ', 'sdwdw');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_prodak`
--

CREATE TABLE `tb_prodak` (
  `id_prodak` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_prodak`
--

INSERT INTO `tb_prodak` (`id_prodak`, `nama`, `harga`, `satuan`) VALUES
(115, 'dwd', '726277', 'kg'),
(118, 'JEN', '30000', 'kg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jk` varchar(255) NOT NULL,
  `jurusan` char(255) NOT NULL,
  `umur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nama`, `kelas`, `alamat`, `jk`, `jurusan`, `umur`) VALUES
(98, 'Saril', 'RU002', 'Jl. Dipatiukur 112-114 Bandung ', 'Perempuan', 'AI', 25),
(99, 'Nani', 'RU001', 'CILEDUG', 'Perempuan', 'AI', 29),
(102, 'Dere', 'RU004', 'Bali', 'Perempuan', 'SK', 29),
(103, 'Jef', 'RU005', 'kapu', 'Laki-Laki', 'SK', 90),
(104, 'DOKLAT MINT', 'RU003', 'Jl. Dipatiukur 112-114 Bandung ', 'Laki-Laki', 'SK', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `username`, `password`) VALUES
(1, 'dwdw', 'dww', '$2y$10$fM8LF6O.nurjJx7iTqRfV.qwnoIDXKlmyKCx8ShN4LhII.kay9XdK'),
(2, 'dwd', 'dwdw', '$2y$10$n8Oe.CPTMSohb4wKfnxLBeDQjWPBizi9aQvm2TpDhyyjfWnxPiFOO'),
(3, 'cscscs', 'cscs', '$2y$10$qT80TxFX4NpDIsmHVE4PlOQVddsF9WMxsQUvnBdOZNNn7jez9oCVS'),
(4, 'scc', 'scsc', '$2y$10$CM2evd4yGq.l4Vjm4RoZKuzDC7jGPE/.XzP1tlmDTK6BFM1hHtCDC'),
(5, 'wwc', 'ccsc', '$2y$10$iaqBgfkEVAjoVvtPnSWKCehA9NCZVHgGmHePCOyQY9FCSS0CdS9xe'),
(6, 'jen', 'jen', '$2y$10$3NoTVbQRhXPbx2GHW4nJ2O4bYXcYXUqrzu7kfEfgdaV2TiZuGF0x6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `usia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_berkas`
--
ALTER TABLE `tb_berkas`
  ADD PRIMARY KEY (`kode_berkas`);

--
-- Indeks untuk tabel `tb_diskon`
--
ALTER TABLE `tb_diskon`
  ADD PRIMARY KEY (`id_diskon`);

--
-- Indeks untuk tabel `tb_fakultas`
--
ALTER TABLE `tb_fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indeks untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indeks untuk tabel `tb_js`
--
ALTER TABLE `tb_js`
  ADD PRIMARY KEY (`id_prodak`);

--
-- Indeks untuk tabel `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  ADD PRIMARY KEY (`kode_jurusan`);

--
-- Indeks untuk tabel `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `tb_prodak`
--
ALTER TABLE `tb_prodak`
  ADD PRIMARY KEY (`id_prodak`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_berkas`
--
ALTER TABLE `tb_berkas`
  MODIFY `kode_berkas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_diskon`
--
ALTER TABLE `tb_diskon`
  MODIFY `id_diskon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_fakultas`
--
ALTER TABLE `tb_fakultas`
  MODIFY `id_fakultas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id_dosen` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tb_js`
--
ALTER TABLE `tb_js`
  MODIFY `id_prodak` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tb_prodak`
--
ALTER TABLE `tb_prodak`
  MODIFY `id_prodak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
