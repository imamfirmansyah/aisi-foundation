<?php

use Faker\Factory;
use Illuminate\Database\Seeder;

class PeminjamanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create();

        $peminjamans = array();

        $status = ['ACTIVE','INACTIVE'];

        for ($i=1; $i <= 50; $i++) {
            $data = [
                'id_barang' => mt_rand(1,50),
                'id_user' => mt_rand(1,50),
                'id_kegiatan' => mt_rand(0,50),
                'keterangan'=> $faker->sentence($nb = 4, $asText = true),
                'tgl_pinjam'=> $faker->date(),
                'tgl_kembali'=> $faker->date(),
                'status'=> $status[mt_rand(0,1)],
                'created_at' => $faker->dateTime(),
                'updated_at' => $faker->dateTime()
            ];
            array_push($peminjamans, $data);
        }

        DB::table('peminjamans')->insert($peminjamans);
    }
}
