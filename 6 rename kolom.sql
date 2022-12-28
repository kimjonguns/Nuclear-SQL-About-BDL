use toko_kue;

ALTER TABLE kue
RENAME COLUMN info to deskripsi;

ALTER TABLE mahasiswa
RENAME COLUMN info TO deskripsi;

ALTER TABLE penjualan
RENAME COLUMN info to deskripsi;