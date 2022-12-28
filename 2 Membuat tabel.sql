use toko_kue;

CREATE TABLE kue(
	id_kue int NOT NULL AUTO_INCREMENT,
    kode_kue char(20) NOT NULL,
    nama_kue varchar(30) NOT NULL,
    jumlah_kue int(5) NOT NULL,
    harga_kue int NOT NULL,
    PRIMARY KEY (id_kue)
);

CREATE TABLE mahasiswa(
	id_mahasiswa int NOT NULL AUTO_INCREMENT,
    npm_mahasiswa char(20) NOT NULL,
    nama_mahasiswa varchar(30) NOT NULL,
    jurusan char(20) NOT NULL,
    PRIMARY KEY (id_mahasiswa)
);

CREATE TABLE penjualan(
	id_penjualan int NOT NULL AUTO_INCREMENT,
    kode_kue char(20) NOT NULL,
    npm_mahasiswa char(20) NOT NULL,
    waktu_beli date,
    PRIMARY KEY (id_penjualan)
);

ALTER TABLE penjualan ADD jumlah_beli_kue int NOT NULL;
ALTER TABLE penjualan ADD sub_total int NOT NULL;

desc mahasiswa;