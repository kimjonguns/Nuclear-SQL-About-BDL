use toko_kue;

#mencari jumlah maksimum harga kue
SELECT MAX(harga_kue) as harga_tertinggi FROM kue;

#mencari jumlah minimum harga kue
SELECT MIN(harga_kue) as harga_terendah FROM kue;

#mencari rata-rata harga kue
SELECT AVG(harga_kue) as rata_kue from kue;

 #mencari jumlah kue yang ada
 SELECT COUNT(*) as jumlah_kue from kue;
 
 #menjadikan 1 nama kembar
 SELECT distinct(nama_kue) from kue;