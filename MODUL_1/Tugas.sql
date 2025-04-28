USE SHOPE_STYLE;

-- SELECT 1 Kolom
-- 1. Konsumen - 1 kolom
SELECT k.nama AS nama_konsumen FROM Konsumen k;

-- 2. Barang - 1 kolom
SELECT b.nama AS nama_barang FROM Barang b;

-- 3. Kategori - 1 kolom
SELECT kt.nama_kategori AS nama_kategori FROM Kategori kt;

-- 4. Transaksi - 1 kolom
SELECT t.tanggal_transaksi AS tanggal_transaksi FROM Transaksi t;

-- 5. Detail_Transaksi - 1 kolom
SELECT dt.subtotal AS subtotal_transaksi FROM Detail_Transaksi dt;

-- 6. Barang_Kategori - 1 kolom
SELECT bk.id_barang AS id_barang_relasi FROM Barang_Kategori bk;

-- 7. (Konsumen lagi untuk variasi) - 1 kolom
SELECT k.email AS email_konsumen FROM Konsumen k;

-- 8. (Barang lagi untuk variasi) - 1 kolom
SELECT b.harga AS harga_barang FROM Barang b;

-- 9. (Kategori lagi untuk variasi) - 1 kolom
SELECT kt.deskripsi AS deskripsi_kategori FROM Kategori kt;

-- 10. (Detail_Transaksi lagi untuk variasi) - 1 kolom
SELECT dt.jumlah AS jumlah_detail FROM Detail_Transaksi dt;

-- SELECT 2 Kolom
-- 1. Konsumen - 2 kolom
SELECT k.nama AS nama_konsumen, k.alamat AS alamat_konsumen FROM Konsumen k;

-- 2. Barang - 2 kolom
SELECT b.nama AS nama_barang, b.harga AS harga_barang FROM Barang b;

-- 3. Kategori - 2 kolom
SELECT kt.nama_kategori AS nama_kategori, kt.deskripsi AS deskripsi_kategori FROM Kategori kt;

-- 4. Transaksi - 2 kolom
SELECT t.id_transaksi AS id_transaksi, t.tanggal_transaksi AS tanggal_transaksi FROM Transaksi t;

-- 5. Detail_Transaksi - 2 kolom
SELECT dt.jumlah AS jumlah_barang, dt.subtotal AS subtotal_detail FROM Detail_Transaksi dt;

-- 6. Barang_Kategori - 2 kolom
SELECT bk.id_barang AS id_barang_relasi, bk.id_kategori AS id_kategori_relasi FROM Barang_Kategori bk;

-- 7. Konsumen lagi - 2 kolom
SELECT k.nama AS nama_konsumen, k.email AS email_konsumen FROM Konsumen k;

-- 8. Barang lagi - 2 kolom
SELECT b.nama AS nama_barang, b.id_barang AS kode_barang FROM Barang b;

-- 9. Kategori lagi - 2 kolom
SELECT kt.id_kategori AS kode_kategori, kt.nama_kategori AS nama_kategori FROM Kategori kt;

-- 10. Detail_Transaksi lagi - 2 kolom
SELECT dt.harga_satuan AS harga_satuan_detail, dt.diskon_persen AS diskon_detail FROM Detail_Transaksi dt;
