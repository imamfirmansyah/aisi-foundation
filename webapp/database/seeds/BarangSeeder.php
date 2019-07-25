<?php

use Faker\Factory;
use Illuminate\Database\Seeder;

class BarangSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('barang')->insert([
            'kode_barang' => '1562933685',
            'nama' => 'EPSON LCD Proyektor',
            'keterangan' => 'EPSON LCD Proyektor Putih Tahun 2018',
            'foto' => '1562933685_epson_lcd_white.jpg',
            'status' => 1,
            'id_kategori_barang' => 2,
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('barang')->insert([
            'kode_barang' => '1562940709',
            'nama' => 'HP LCD Proyektor',
            'keterangan' => 'HP LCD Proyektor Hitam - Silver Tahun 2017',
            'foto' => '1562940709_hp_lcd.jpg',
            'status' => 1,
            'id_kategori_barang' => 2,
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('barang')->insert([
            'kode_barang' => '1562947460',
            'nama' => 'ROL Kabel Steker',
            'keterangan' => 'ROL Kabel Steker 6 Port',
            'foto' => '1562947460_rol_kabel_steker.jpg',
            'status' => 1,
            'id_kategori_barang' => 2,
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('barang')->insert([
            'kode_barang' => '1564048178',
            'nama' => 'ROL Kabel',
            'keterangan' => 'ROL Kabel 10 Meter',
            'foto' => '1564048178_kabel-rol_10_meter.jpg',
            'status' => 1,
            'id_kategori_barang' => 2,
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('barang')->insert([
            'kode_barang' => '1562947595',
            'nama' => 'Speaker Portable Besar',
            'keterangan' => 'Speaker Ampli + Wireless Microphone Dorong',
            'foto' => '1562947595_speaker_portable.jpg',
            'status' => 1,
            'id_kategori_barang' => 2,
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);
        
        DB::table('barang')->insert([
            'kode_barang' => '1563149797',
            'nama' => 'Meeting Room',
            'keterangan' => 'Ruang Meeting Lantai 2 Kapasitas 8 Orang',
            'foto' => '1563149797_meeting_room.jpg',
            'status' => 1,
            'id_kategori_barang' => 3,
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('barang')->insert([
            'kode_barang' => '1563149913',
            'nama' => 'Layar Proyektor',
            'keterangan' => 'Layar Proyektor Portable',
            'foto' => '1563149913_layar_proyektor.jpg',
            'status' => 1,
            'id_kategori_barang' => 3,
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('barang')->insert([
            'kode_barang' => '1563150019',
            'nama' => 'Epson Printer',
            'keterangan' => 'Epson Printer White and Color',
            'foto' => '1563150019_epson_printer.jpg',
            'status' => 1,
            'id_kategori_barang' => 2,
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('barang')->insert([
            'kode_barang' => '1563150087',
            'nama' => 'Papan Tulis Kecil',
            'keterangan' => 'Papan Tulis Kecil Ukuran 1 x 0.5 Meter',
            'foto' => '1563150087_papan_tulis_kecil.jpg',
            'status' => 1,
            'id_kategori_barang' => 3,
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('barang')->insert([
            'kode_barang' => '1563150146',
            'nama' => 'Spidol Papan Tulis',
            'keterangan' => 'Spidol Snowman Merah, Hitam, Biru',
            'foto' => '1563150146_spidol_papan_tulis.jpg',
            'status' => 1,
            'id_kategori_barang' => 1,
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('barang')->insert([
            'kode_barang' => '1563150218',
            'nama' => 'Tas Dokumen',
            'keterangan' => 'Tas / Map untuk Membawa Dokumen',
            'foto' => '1563150218_bag_dokumen.jpg',
            'status' => 1,
            'id_kategori_barang' => 1,
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('barang')->insert([
            'kode_barang' => '1563150272',
            'nama' => 'Toa Speaker Portable',
            'keterangan' => 'Toa Speaker Portable kecil dengan Wireless dan Batrai',
            'foto' => '1563150272_toa_mic_wireless.jpg',
            'status' => 1,
            'id_kategori_barang' => 2,
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);  

        DB::table('barang')->insert([
            'kode_barang' => '1563150312',
            'nama' => 'Toa Portable Outdoor',
            'keterangan' => 'Toa Speaker Portable untuk kegiatan Outdoor',
            'foto' => '1563150312_TOA_portable.jpg',
            'status' => 1,
            'id_kategori_barang' => 2,
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);        
    }
}
