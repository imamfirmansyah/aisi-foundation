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
        $faker = Faker\Factory::create();

        $barangs = array();

        $status = ['ACTIVE','INACTIVE'];
        $jenis_barang = ['ATK','ELEKTRONIK','RUANGAN'];

        for ($i=1; $i <= 50; $i++) {
            $data = [
                'kode_barang' => $faker->word.'-'.$i,
                'nama' => $faker->word,
                'jenis_barang'=> $jenis_barang[mt_rand(0,2)],
                'keterangan'=> $faker->paragraph($nb = 1, $asText = true),
                'foto'=> 'barang/default.png',
                'status'=> $status[mt_rand(0,1)],
                'created_at' => $faker->dateTime(),
                'updated_at' => $faker->dateTime()
            ];
            array_push($barangs, $data);
        }

        DB::table('barangs')->insert($barangs);
    }
}
