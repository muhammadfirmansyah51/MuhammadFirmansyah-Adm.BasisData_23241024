-- Membuat database baru
CREATE DATABASE IF NOT EXISTS SHOPE_STYLE;

USE SHOPE_STYLE;

-- Membuat database baru
CREATE DATABASE IF NOT EXISTS SHOPE_STYLE;
USE SHOPE_STYLE;

-- Membuat tabel Konsumen 
CREATE TABLE Konsumen (
    id_konsumen INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(255),
    email VARCHAR(255),
    alamat VARCHAR(255),
    password VARCHAR(255)
);

-- Membuat tabel Barang
CREATE TABLE Barang (
    id_barang INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(255),
    harga DECIMAL(10,2)
);

-- Membuat tabel Kategori
CREATE TABLE Kategori (
    id_kategori INT AUTO_INCREMENT PRIMARY KEY,
    nama_kategori VARCHAR(100),
    deskripsi TEXT
);

-- Membuat tabel Transaksi
CREATE TABLE Transaksi (
    id_transaksi INT AUTO_INCREMENT PRIMARY KEY,
    id_konsumen INT,
    id_barang INT,
    tanggal_transaksi DATE,
    jumlah INT,
    FOREIGN KEY (id_konsumen) REFERENCES Konsumen(id_konsumen),
    FOREIGN KEY (id_barang) REFERENCES Barang(id_barang)
);

-- Membuat tabel Detail_Transaksi
CREATE TABLE Detail_Transaksi (
    id_detail INT AUTO_INCREMENT PRIMARY KEY,
    id_transaksi INT,
    id_barang INT,
    jumlah INT,
    harga_satuan DECIMAL(10,2),
    diskon_persen DECIMAL(5,2),
    subtotal DECIMAL(10,2),
    FOREIGN KEY (id_transaksi) REFERENCES Transaksi(id_transaksi),
    FOREIGN KEY (id_barang) REFERENCES Barang(id_barang)
);

-- Memasukkan data ke tabel Konsumen
INSERT INTO Konsumen (id_konsumen, nama, email, alamat, password) VALUES
(1, 'Dewi Susanti', 'dewi.susanti@email.com', 'Jl. Mawar No. 23, Jakarta Selatan', 'dewi123'),
(2, 'Ratna Permata', 'ratna.p@email.com', 'Perumahan Indah Blok B4, Bandung', 'ratna456'),
(3, 'Fiona Anggraini', 'fiona.a@email.com', 'Jl. Kenanga No. 7, Surabaya', 'fiona789'),
(4, 'Jessica Larasati', 'jessica.l@email.com', 'Apartemen Skyline Tower, Unit 12D, Jakarta', 'jessica2024'),
(5, 'Tiara Dewi', 'tiara.dewi@email.com', 'Jl. Dahlia No. 45, Yogyakarta', 'tiara123'),
(6, 'Siska Ramadhani', 'siska.r@email.com', 'Perumahan Bukit Indah, Blok C3, Makassar', 'siskapass'),
(7, 'Lina Wulandari', 'lina.w@email.com', 'Jl. Anggrek No. 56, Semarang', 'linawulan'),
(8, 'Anita Pratiwi', 'anita.p@email.com', 'Komplek Bintang Asri, Blok D8, Medan', 'anita2024'),
(9, 'Felicia Tanoto', 'felicia.t@email.com', 'Jl. Melati No. 12, Denpasar', 'felicia123'),
(10, 'Dina Maryati', 'dina.m@email.com', 'Perumahan Cempaka, Blok A2 No. 5, Palembang', 'dinapass');


-- Memasukkan data ke tabel Barang
INSERT INTO Barang (id_barang, nama, harga) VALUES
(1, 'Lipstik Matte Tahan Lama', 85000),
(2, 'Bedak Tabur Antishine', 120000),
(3, 'Serum Vitamin C Brightening', 175000),
(4, 'Eyeshadow Palette Natural Glow', 220000),
(5, 'Blush On Waterproof', 95000),
(6, 'Dress Casual Floral', 350000),
(7, 'Blouse Satin Elegant', 275000),
(8, 'Rok Midi Plisket', 235000),
(9, 'Celana Kulot Premium', 265000),
(10, 'Hijab Pashmina Premium', 125000),
(11, 'Face Wash Acne Care', 110000),
(12, 'Maskara Waterproof Extra Volume', 135000),
(13, 'Foundation Matte Full Coverage', 180000),
(14, 'Eyeliner Liquid Precision', 90000),
(15, 'BB Cream SPF 30', 140000),
(16, 'Gamis Modern Casual', 385000),
(17, 'Outer Cardigan Rajut', 210000),
(18, 'Tunik Motif Etnik', 245000),
(19, 'Kemeja Wanita Office Look', 290000),
(20, 'Skincare Set Complete Treatment', 450000);

-- Memasukkan data ke tabel Kategori
INSERT INTO Kategori (id_kategori, nama_kategori, deskripsi) VALUES
(1, 'Makeup', 'Produk kosmetik dekoratif untuk wajah'),
(2, 'Skincare', 'Produk perawatan kulit wajah dan tubuh'),
(3, 'Busana Casual', 'Pakaian untuk kegiatan sehari-hari'),
(4, 'Busana Formal', 'Pakaian untuk acara formal atau kantor'),
(5, 'Hijab & Aksesoris', 'Kerudung dan aksesoris pendukung'),
(6, 'Body Care', 'Produk perawatan tubuh'),
(7, 'Hair Care', 'Produk perawatan rambut'),
(8, 'Perawatan Khusus', 'Treatment khusus kecantikan');

-- Memasukkan data ke tabel Transaksi
INSERT INTO Transaksi (id_transaksi, id_konsumen, id_barang, tanggal_transaksi, jumlah) VALUES
(1, 3, 1, '2024-04-01', 2),
(2, 3, 4, '2024-04-01', 1),
(3, 3, 11, '2024-04-01', 1),
(4, 5, 7, '2024-04-02', 1),
(5, 1, 3, '2024-04-03', 2),
(6, 1, 15, '2024-04-03', 1),
(7, 7, 10, '2024-04-04', 3),
(8, 9, 6, '2024-04-05', 1),
(9, 9, 8, '2024-04-05', 1),
(10, 9, 13, '2024-04-05', 1),
(11, 2, 20, '2024-04-07', 1),
(12, 4, 2, '2024-04-08', 2),
(13, 4, 5, '2024-04-08', 1),
(14, 8, 16, '2024-04-10', 1),
(15, 8, 17, '2024-04-10', 1),
(16, 10, 12, '2024-04-12', 2),
(17, 10, 14, '2024-04-12', 2),
(18, 6, 18, '2024-04-15', 1),
(19, 6, 19, '2024-04-15', 1),
(20, 6, 3, '2024-04-15', 1);

-- Memasukkan data ke tabel Detail_Transaksi
INSERT INTO Detail_Transaksi (id_detail, id_transaksi, id_barang, jumlah, harga_satuan, diskon_persen, subtotal) VALUES
(1, 1, 1, 5, 62500, 0, 312500),
(2, 1, 3, 1, 100000, 25, 75000),
(3, 1, 9, 3, 92000, 0, 276000),
(4, 1, 4, 3, 40000, 0, 120000),
(5, 2, 3, 2, 100000, 0, 200000),
(6, 2, 10, 4, 55000, 0, 220000),
(7, 2, 7, 1, 48000, 0, 48000),
(8, 3, 2, 2, 55000, 12.5, 96250),
(9, 4, 10, 5, 55000, 0, 275000),
(10, 4, 4, 4, 40000, 0, 160000),
(11, 5, 9, 3, 92000, 0, 276000),
(12, 5, 1, 1, 62500, 5, 59375),
(13, 5, 4, 2, 40000, 0, 80000),
(14, 6, 5, 4, 250000, 0, 1000000),
(15, 6, 8, 2, 15800, 0, 31600);

-- Membuat tabel relasi antara Barang dan Kategori
CREATE TABLE Barang_Kategori (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_barang INT,
    id_kategori INT,
    FOREIGN KEY (id_barang) REFERENCES Barang(id_barang),
    FOREIGN KEY (id_kategori) REFERENCES Kategori(id_kategori)
);

-- Menampilkan semua data
SELECT * FROM Konsumen;
SELECT * FROM Barang;
SELECT * FROM Kategori;
SELECT * FROM Transaksi;
SELECT * FROM Detail_Transaksi;
