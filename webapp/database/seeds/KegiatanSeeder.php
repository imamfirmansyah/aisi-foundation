<?php

use Illuminate\Database\Seeder;
use Faker\Factory;

class KegiatanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create();

        $kegiatans = array();

        $status = ['PENGAJUAN','DITERIMA','DITOLAK'];

        for ($i=1; $i <= 50; $i++) {
            $data = [
                'id_lembaga' => mt_rand(1,50),
                'judul' => $faker->sentence($nb = 1, $asText = true),
                'deskripsi' => $faker->sentence($nb = 5, $asText = true),
                'proposal_kegiatan' => 'kegiatan/test.doc',
                'tgl_kegiatan'=> $faker->date(),
                'status'=> $status[mt_rand(0,2)],
                'created_at' => $faker->dateTime(),
                'updated_at' => $faker->dateTime()
            ];
            array_push($kegiatans, $data);
        }

        DB::table('kegiatan')->insert($kegiatans);
    }
}
