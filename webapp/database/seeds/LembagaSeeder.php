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
        DB::table('lembaga')->delete();

        $faker = Faker\Factory::create();

        $user_lembaga = App\User::where('role', 'LEMBAGA')
                                    ->pluck('id')
                                    ->toArray();

        $lembagas = array();

        for ($i=1; $i < count($user_lembaga); $i++) {
            $data = [
                'id_user' => $faker->unique()->randomElement($user_lembaga),
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

        DB::table('lembaga')->insert($lembagas);
    }
}
