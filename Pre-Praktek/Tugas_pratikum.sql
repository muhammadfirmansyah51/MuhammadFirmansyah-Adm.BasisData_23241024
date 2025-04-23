-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shope_style
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `barang`
--

DROP TABLE IF EXISTS `barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang`
--

LOCK TABLES `barang` WRITE;
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT INTO `barang` VALUES (1,'Lipstik Matte Tahan Lama',85000.00),(2,'Bedak Tabur Antishine',120000.00),(3,'Serum Vitamin C Brightening',175000.00),(4,'Eyeshadow Palette Natural Glow',220000.00),(5,'Blush On Waterproof',95000.00),(6,'Dress Casual Floral',350000.00),(7,'Blouse Satin Elegant',275000.00),(8,'Rok Midi Plisket',235000.00),(9,'Celana Kulot Premium',265000.00),(10,'Hijab Pashmina Premium',125000.00),(11,'Face Wash Acne Care',110000.00),(12,'Maskara Waterproof Extra Volume',135000.00),(13,'Foundation Matte Full Coverage',180000.00),(14,'Eyeliner Liquid Precision',90000.00),(15,'BB Cream SPF 30',140000.00),(16,'Gamis Modern Casual',385000.00),(17,'Outer Cardigan Rajut',210000.00),(18,'Tunik Motif Etnik',245000.00),(19,'Kemeja Wanita Office Look',290000.00),(20,'Skincare Set Complete Treatment',450000.00);
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barang_kategori`
--

DROP TABLE IF EXISTS `barang_kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `barang_kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` int(11) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_barang` (`id_barang`),
  KEY `id_kategori` (`id_kategori`),
  CONSTRAINT `barang_kategori_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  CONSTRAINT `barang_kategori_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang_kategori`
--

LOCK TABLES `barang_kategori` WRITE;
/*!40000 ALTER TABLE `barang_kategori` DISABLE KEYS */;
/*!40000 ALTER TABLE `barang_kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_transaksi`
--

DROP TABLE IF EXISTS `detail_transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_transaksi` (
  `id_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_transaksi` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga_satuan` decimal(10,2) DEFAULT NULL,
  `diskon_persen` decimal(5,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_detail`),
  KEY `id_transaksi` (`id_transaksi`),
  KEY `id_barang` (`id_barang`),
  CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`),
  CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_transaksi`
--

LOCK TABLES `detail_transaksi` WRITE;
/*!40000 ALTER TABLE `detail_transaksi` DISABLE KEYS */;
INSERT INTO `detail_transaksi` VALUES (1,1,1,5,62500.00,0.00,312500.00),(2,1,3,1,100000.00,25.00,75000.00),(3,1,9,3,92000.00,0.00,276000.00),(4,1,4,3,40000.00,0.00,120000.00),(5,2,3,2,100000.00,0.00,200000.00),(6,2,10,4,55000.00,0.00,220000.00),(7,2,7,1,48000.00,0.00,48000.00),(8,3,2,2,55000.00,12.50,96250.00),(9,4,10,5,55000.00,0.00,275000.00),(10,4,4,4,40000.00,0.00,160000.00),(11,5,9,3,92000.00,0.00,276000.00),(12,5,1,1,62500.00,5.00,59375.00),(13,5,4,2,40000.00,0.00,80000.00),(14,6,5,4,250000.00,0.00,1000000.00),(15,6,8,2,15800.00,0.00,31600.00);
/*!40000 ALTER TABLE `detail_transaksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` VALUES (1,'Makeup','Produk kosmetik dekoratif untuk wajah'),(2,'Skincare','Produk perawatan kulit wajah dan tubuh'),(3,'Busana Casual','Pakaian untuk kegiatan sehari-hari'),(4,'Busana Formal','Pakaian untuk acara formal atau kantor'),(5,'Hijab & Aksesoris','Kerudung dan aksesoris pendukung'),(6,'Body Care','Produk perawatan tubuh'),(7,'Hair Care','Produk perawatan rambut'),(8,'Perawatan Khusus','Treatment khusus kecantikan');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `konsumen`
--

DROP TABLE IF EXISTS `konsumen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `konsumen` (
  `id_konsumen` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_konsumen`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konsumen`
--

LOCK TABLES `konsumen` WRITE;
/*!40000 ALTER TABLE `konsumen` DISABLE KEYS */;
INSERT INTO `konsumen` VALUES (1,'Dewi Susanti','dewi.susanti@email.com','Jl. Mawar No. 23, Jakarta Selatan','dewi123'),(2,'Ratna Permata','ratna.p@email.com','Perumahan Indah Blok B4, Bandung','ratna456'),(3,'Fiona Anggraini','fiona.a@email.com','Jl. Kenanga No. 7, Surabaya','fiona789'),(4,'Jessica Larasati','jessica.l@email.com','Apartemen Skyline Tower, Unit 12D, Jakarta','jessica2024'),(5,'Tiara Dewi','tiara.dewi@email.com','Jl. Dahlia No. 45, Yogyakarta','tiara123'),(6,'Siska Ramadhani','siska.r@email.com','Perumahan Bukit Indah, Blok C3, Makassar','siskapass'),(7,'Lina Wulandari','lina.w@email.com','Jl. Anggrek No. 56, Semarang','linawulan'),(8,'Anita Pratiwi','anita.p@email.com','Komplek Bintang Asri, Blok D8, Medan','anita2024'),(9,'Felicia Tanoto','felicia.t@email.com','Jl. Melati No. 12, Denpasar','felicia123'),(10,'Dina Maryati','dina.m@email.com','Perumahan Cempaka, Blok A2 No. 5, Palembang','dinapass');
/*!40000 ALTER TABLE `konsumen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `id_konsumen` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `tanggal_transaksi` date DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`),
  KEY `id_konsumen` (`id_konsumen`),
  KEY `id_barang` (`id_barang`),
  CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_konsumen`) REFERENCES `konsumen` (`id_konsumen`),
  CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
INSERT INTO `transaksi` VALUES (1,3,1,'2024-04-01',2),(2,3,4,'2024-04-01',1),(3,3,11,'2024-04-01',1),(4,5,7,'2024-04-02',1),(5,1,3,'2024-04-03',2),(6,1,15,'2024-04-03',1),(7,7,10,'2024-04-04',3),(8,9,6,'2024-04-05',1),(9,9,8,'2024-04-05',1),(10,9,13,'2024-04-05',1),(11,2,20,'2024-04-07',1),(12,4,2,'2024-04-08',2),(13,4,5,'2024-04-08',1),(14,8,16,'2024-04-10',1),(15,8,17,'2024-04-10',1),(16,10,12,'2024-04-12',2),(17,10,14,'2024-04-12',2),(18,6,18,'2024-04-15',1),(19,6,19,'2024-04-15',1),(20,6,3,'2024-04-15',1);
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-22 14:47:28
