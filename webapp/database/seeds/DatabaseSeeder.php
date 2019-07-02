<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->call(UserSeeder::class);
        $this->call(LembagaSeeder::class);
        $this->call(KegiatanSeeder::class);
        $this->call(DanaSeeder::class);
        $this->call(DokumentasiSeeder::class);
        $this->call(BarangSeeder::class);
        $this->call(PeminjamanSeeder::class);
    }
}
