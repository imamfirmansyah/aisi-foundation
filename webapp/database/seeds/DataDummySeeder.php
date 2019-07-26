<?php

use Illuminate\Database\Seeder;

class DataDummySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            UserSeeder::class,
            LembagaSeeder::class,
            KategoriBarangSeeder::class,
            BarangSeeder::class,
            PeminjamanSeeder::class,
            PeminjamanBarangSeeder::class,
        ]);

        $this->command->info('Berhasil menambah data dummy!');
    }
}
