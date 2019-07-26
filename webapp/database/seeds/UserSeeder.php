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
        DB::table('user')->delete();

        DB::table('user')->insert([
            'nama' => 'AISI Administrator',
            'email' => 'administrator@aisifoundation.org',
            'password' => bcrypt('pass1234'),
            'alamat' => 'Depok',
            'jenis_kelamin' => 1,
            'no_hp' => '018329123',
            'foto' => 'avatar-boy.png',
            'role' => 'ADMIN',
            'validate_status' => 1,
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('user')->insert([
            'nama' => 'Staff Yayasan AISI',
            'email' => 'staff@aisifoundation.org',
            'password' => bcrypt('pass1234'),
            'alamat' => 'Depok',
            'jenis_kelamin' => 1,
            'no_hp' => '018329123',
            'foto' => 'avatar-boy.png',
            'role' => 'STAFF',
            'validate_status' => 1,
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);

        DB::table('user')->insert([
            'nama' => 'Imam Firmansyah',
            'email' => 'imamfirmansyah27@gmail.com',
            'password' => bcrypt('pass1234'),
            'alamat' => 'Depok',
            'jenis_kelamin' => 1,
            'no_hp' => '018329123',
            'foto' => 'avatar-boy.png',
            'role' => 'UMUM',
            'validate_status' => 1,
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);

        $lembaga = DB::table('user')->insert([
            'nama' => 'KPMD Depok',
            'email' => 'kpmd@gmail.com',
            'password' => bcrypt('pass1234'),
            'alamat' => 'Depok',
            'jenis_kelamin' => 1,
            'no_hp' => '018329123',
            'foto' => 'avatar-boy.png',
            'role' => 'LEMBAGA',
            'validate_status' => 1,
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
                'password' => bcrypt('pass1234'),
                'alamat' => $faker->address,
                'jenis_kelamin' => mt_rand(0,1),
                'no_hp'=> $faker->phoneNumber,
                'foto' => 'avatar-boy.png',
                'role' => $role[mt_rand(0,3)],
                'validate_status' => mt_rand(0,1),
                'created_at' => $faker->dateTime(),
                'updated_at' => $faker->dateTime()
            ];
            array_push($users, $data);
        }

        DB::table('user')->insert($users);
    }
}
