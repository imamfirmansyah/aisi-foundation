<?php

use Faker\Factory;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'nama' => 'kincat only',
            'email' => 'kincat@gmail.com',
            'password' => bcrypt('1234'),
            'alamat' => 'depok',
            'jenis_kelamin' =>1,
            'no_hp'=>'018329123',
            'foto' => 'user/default.png',
            'role' => 'ADMIN',
            'email_verified_at' => date('Y-m-d H:i:s'),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);

        $faker = Faker\Factory::create();

        $users = array();

        $role = ['ADMIN','LEMBAGA','UMUM','STAFF'];

        for ($i=0; $i < 50; $i++) {
            $data = [
                'nama' => $faker->name,
                'email' => $faker->email,
                'password' => bcrypt('1234'),
                'alamat' => $faker->address,
                'jenis_kelamin' => mt_rand(0,1),
                'no_hp'=> $faker->phoneNumber,
                'foto' => 'user/default.png',
                'role' => $role[mt_rand(0,3)],
                'email_verified_at' => $faker->dateTime(),
                'created_at' => $faker->dateTime(),
                'updated_at' => $faker->dateTime()
            ];
            array_push($users, $data);
        }

        DB::table('users')->insert($users);
    }
}