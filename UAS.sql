-- Nama : Muhammad Firmansyah
-- NIM : 23241024
-- Kelas : A smestr 4
-- Mata pelajaran : Administrasi Basis Data

-- munculkan nama produk, tanggal transaksi, bulan, tahun, dan selisih hari dari transaksi dengan tanggal 30 juni 2023 atas semua produk ditransaksikan

SELECT 
    pk.nama_paket AS nama_produk,
    o.tgl_order AS tanggal_transaksi,
    MONTH(o.tgl_order) AS bulan,
    YEAR(o.tgl_order) AS tahun,
    DATEDIFF('2023-06-30', o.tgl_order) AS selisih_hari
FROM 
    `order` o
JOIN 
    paket_joki pk ON o.id_paket = pk.id_paket;
    WHERE o.tgl_order <= '2023-06-30'

-- tampilkan nama pelanggan dan nilai transaksinyadengan nilai transaksi terkecil

SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp qty
FROM tr_penjualan_dqlab as tp
JOIN ms_pelanggan_dqlab as mp 
ON tp.kode_pelanggan = mp.kode_pelanggan
GROUP BY  tp.kode_pelanggan

 

