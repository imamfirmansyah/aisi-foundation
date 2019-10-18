
# Sistem Informasi AISI
Repositori untuk Sistem Informasi Pengelolaan Inventaris dan Dokumentasi Kegiatan Yayasan AISI Foundation

## RAW SQL Script

    /* --- JOIN 2 Table --- */
    
    /* memunculkan barang beserta kode barangnya */
    SELECT  barang.kode_barang, 
            barang.nama AS "nama barang", 
            barang.status AS "ketersediaan barang", 
            kategori_barang.id AS "kategori barang", 
            kategori_barang.nama AS "nama kategori"
    FROM barang
    LEFT JOIN kategori_barang
    ON barang.id_kategori_barang = kategori_barang.id;
    
    /* memunculkan barang beserta kode barangnya dan memunculkan barang */
    SELECT *
    FROM barang
    LEFT JOIN kategori_barang
    ON barang.id_kategori_barang = kategori_barang.id;
    
    /* memunculkan peminjaman beserta barangnya */
    SELECT *
    FROM peminjaman_barang
    LEFT JOIN barang
    ON peminjaman_barang.kode_barang = barang.kode_barang;
    
    /* memunculkan peminjaman barang beserta detail peminjamannya */
    SELECT *
    FROM peminjaman_barang
    LEFT JOIN peminjaman
    ON peminjaman_barang.id_peminjaman = peminjaman.id;
    
    SELECT * 
    FROM peminjaman
    LEFT JOIN peminjaman_barang
      ON peminjaman_barang.id_peminjaman = peminjaman.id;
    
    /* 3 Table */
    SELECT PB.kode_barang, B.nama AS "nama barang",
           P.tgl_pinjam, P.tgl_kembali, P.status
    FROM peminjaman P
    JOIN peminjaman_barang PB
      ON PB.id_peminjaman = P.id
    JOIN barang B
      ON B.kode_barang = PB.kode_barang
      
    /* 3 table opsi A */
    SELECT *
    FROM barang B
    LEFT JOIN peminjaman_barang PB
      ON B.kode_barang = PB.kode_barang
    LEFT JOIN peminjaman P
      ON PB.id_peminjaman = P.id
      
    /* 3 table opsi A expand script - work for case peminjaman */
    SELECT B.kode_barang, B.nama AS "nama barang",
           P.tgl_pinjam, P.tgl_kembali, P.status
    FROM barang B
    LEFT JOIN peminjaman_barang PB
      ON B.kode_barang = PB.kode_barang
    LEFT JOIN peminjaman P
      ON PB.id_peminjaman = P.id
    WHERE P.tgl_pinjam IS NUll
      OR P.tgl_pinjam >= "2019-08-10"
      AND P.tgl_pinjam <= "2019-08-12"
      AND P.status LIKE 'DIKEMBALIKAN%'

Hasil eksekusi sql
| kode_barang | nama barang | tgl_pinjam | tgl_kembali | status |
|--|--|--|--|--|
| 1562933685 | EPSON LCD Proyektor | 2019-08-10 | 2019-08-11 | DIKEMBALIKAN |
| 1562947460 | ROL Kabel Steker  |  2019-08-10 | 2019-08-11  | DIKEMBALIKAN |
| 1562940709 | HP LCD Proyektor   |   Null          |    Null         |   Null          |        
| 1562947595 | Speaker Portable Besar |Null |Null |Null |
| 1563149913 | Layar Proyektor |Null |Null |Null |       
| 1563150087 | Papan Tulis Kecil |Null |Null |Null |           
| 1563150146 | Spidol Papan Tulis |Null |Null |Null |  
| 1563150312 | Toa Portable Outdoor |Null |Null |Null |     
| 1571394732 | Map Batik |Null |Null |Null |