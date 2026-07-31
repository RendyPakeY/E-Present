-- Schema Database E-Present (Inisialisasi Tabel Tanpa Data)

CREATE TABLE IF NOT EXISTS `absen` (
  `id_absen` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(10) NOT NULL,
  `fingerprint` varchar(50) NOT NULL,
  PRIMARY KEY (`id_absen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `akun` (
  `id_akun` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id_akun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `anggota` (
  `id_anggota` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(15) NOT NULL,
  PRIMARY KEY (`id_anggota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `event` (
  `id_event` int(11) NOT NULL AUTO_INCREMENT,
  `publisher` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `kode` varchar(15) NOT NULL,
  PRIMARY KEY (`id_event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `kelas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kelas` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
