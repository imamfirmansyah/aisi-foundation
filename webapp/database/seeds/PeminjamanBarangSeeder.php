<?php

use Illuminate\Database\Seeder;

class PeminjamanBarangSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create();

        $peminjaman = App\Peminjaman::pluck('id')->toArray();
        $barang = App\Barang::pluck('kode_barang')->toArray();

        $peminjaman_barang = array();

        for ($i=1; $i <= 100; $i++) {

            $data = [
                'id_peminjaman' => $faker->randomElement($peminjaman),
                'kode_barang' => $faker->randomElement($barang)
            ];
            array_push($peminjaman_barang, $data);
        }

        DB::table('peminjaman_barang')->insert($peminjaman_barang);
    }
}
