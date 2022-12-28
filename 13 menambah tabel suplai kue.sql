use toko_kue;

CREATE TABLE suplai_kue(
	id_suplai_kue int NOT NULL AUTO_INCREMENT,
    kode_kue char(20) NOT NULL,
    jumlah_disuplai int NOT NULL,
    PRIMARY KEY (id_suplai_kue)
);