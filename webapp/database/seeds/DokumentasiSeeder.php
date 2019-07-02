<?php

use Faker\Factory;
use Illuminate\Database\Seeder;

class DokumentasiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create();

        $dokumentasis = array();

        for ($i=1; $i <= 100; $i++) {
            $data = [
                'id_kegiatan' => mt_rand(1,50),
                'keterangan' => $faker->sentence($nb = 4, $asText = true),
                'file'=> 'dokumentasi/default.png',
                'created_at' => $faker->dateTime(),
                'updated_at' => $faker->dateTime()
            ];
            array_push($dokumentasis, $data);
        }

        DB::table('dokumentasi')->insert($dokumentasis);
    }
}
