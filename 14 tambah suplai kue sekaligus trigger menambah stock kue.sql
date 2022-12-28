use toko_kue;

DELIMITER $$
CREATE TRIGGER tambah_stock_kue AFTER INSERT
ON suplai_kue
FOR EACH ROW BEGIN

UPDATE kue
SET jumlah_kue = jumlah_kue + new.jumlah_disuplai
WHERE kode_kue = new.kode_kue;

END $$
DELIMITER ;

INSERT INTO suplai_kue (kode_kue, jumlah_disuplai) VALUES
("kue001", 5)
;