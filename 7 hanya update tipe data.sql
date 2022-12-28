use toko_kue;

ALTER TABLE kue
MODIFY COLUMN info varchar(50);

ALTER TABLE kue
MODIFY COLUMN kode_kue char(20) NOT NULL UNIQUE;

ALTER TABLE mahasiswa
MODIFY COLUMN npm_mahasiswa char(20) NOT NULL UNIQUE;