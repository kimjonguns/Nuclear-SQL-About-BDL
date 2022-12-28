use toko_kue;

DELIMITER $$
CREATE TRIGGER jual_kue_kurangi_stock AFTER INSERT
ON penjualan
FOR EACH ROW BEGIN

UPDATE kue
SET jumlah_kue = jumlah_kue - new.jumlah_beli_kue
WHERE kode_kue = new.kode_kue;

END $$
DELIMITER ;

# pakai INSERT atau UPDATE trigger
# jual_kue_kurangi_stock adalah nama trigger
# pakai after atau before
# penjualan adalah tabel yang sedang digunakan

#logikanya: (setelah menambahkan penjualan karena menggunakan AFTER, lalu update kue yang entitasnya jumlah_kue di tabel kue untuk
# mengurangi jumlah_kue karena telah berdasarkan kode_kue)
#catatan: new. mengacu pada tabel penjualan

#UPDATE kue
#SET jumlah_kue = jumlah_kue - new.jumlah_beli_kue
#WHERE kode_kue = new.kode_kue;

INSERT INTO penjualan (kode_kue, npm_mahasiswa, waktu_beli, jumlah_beli_kue, sub_total) VALUES
("kue001", "0094", "2022-12-01", 2, 4000)
;