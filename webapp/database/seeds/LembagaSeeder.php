<?php

use Illuminate\Database\Seeder;
use Faker\Factory;

class LembagaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create();

        $lembagas = array();

        for ($i=1; $i < 50; $i++) {
            $data = [
                'id_user' => $i+1,
                'nama' => $faker->company,
                'email' => $faker->email,
                'alamat' => $faker->address,
                'no_hp'=> $faker->phoneNumber,
                'keterangan'=> $faker->sentence($nb = 4, $asText = true),
                'created_at' => $faker->dateTime(),
                'updated_at' => $faker->dateTime()
            ];
            array_push($lembagas, $data);
        }

        DB::table('lembagas')->insert($lembagas);
    }
}
