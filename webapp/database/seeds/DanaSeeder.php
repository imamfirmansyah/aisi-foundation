<?php

use Faker\Factory;
use Illuminate\Database\Seeder;

class DanaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create();

        $danas = array();

        $status = ['DISETUJUI','DITOLAK','PROSES'];

        for ($i=1; $i <= 50; $i++) {
            $data = [
                'id_kegiatan' => mt_rand(1,50),
                'jumlah_pengajuan' => $faker->numberBetween(1000000,100000000),
                'jumlah_pencairan' => $faker->numberBetween(1000000,100000000),
                'keterangan' => $faker->sentence($nb = 2, $asText = true),
                'tgl_pengajuan'=> $faker->date(),
                'tgl_pencairan'=> $faker->date(),
                'status'=> $status[mt_rand(0,2)],
                'created_at' => $faker->dateTime(),
                'updated_at' => $faker->dateTime()
            ];
            array_push($danas, $data);
        }

        DB::table('dana')->insert($danas);
    }
}
