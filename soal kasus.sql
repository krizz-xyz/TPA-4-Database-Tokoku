Use tokoku; 

-- 1 pelanggan membeli 3 barang yang berbeda
select id_pelanggan, pelanggan.nama, id_brg, nama_brg, jumlah_pembelian
from transaksi inner join pelanggan
on transaksi.id_pelanggan = pelanggan.id
inner join barang
on transaksi.id_brg = barang.id
where id_pelanggan = 1;

-- Melihat 3 produk yang paling sering dibeli oleh pelanggan
select * from transaksi order by jumlah_pembelian desc limit 3 ;

-- Melihat Kategori barang yang paling banyak barangnya
select nama_brg, id_ktgr, nama_ktgr, max(stok_brg)
from barang inner join kategori
on barang.id_ktgr = kategori.id;

-- Melihat pendapat rata-rata tiap bulan terakhir
select transaksi.tanggal_transaksi, AVG(transaksi.jumlah_pembelian*barang.harga_brg) as rata_rata_transaksi
FROM transaksi inner join barang
on transaksi.id = barang.id
GROUP BY YEAR(transaksi.tanggal_transaksi), MONTH(transaksi.tanggal_transaksi);