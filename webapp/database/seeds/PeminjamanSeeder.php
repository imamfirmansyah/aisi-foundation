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
        DB::table('peminjaman')->delete();

        $faker = Faker\Factory::create();

        $user = App\User::pluck('id')->toArray();

        $peminjaman = array();

        $status = ['DIPINJAM','DIKEMBALIKAN'];
        $random_lama_peminjaman = [
            '+1 days',
            '+2 days',
            '+3 days',
            '+4 days',
            '+5 days',
            '+6 days',
            '+7 days',
            '+8 days',
        ];

        $get_random_peminjaman = $random_lama_peminjaman[mt_rand(0, count( $random_lama_peminjaman ))];

        for ($i=1; $i <= 50; $i++) {

            $startingDate = $faker->dateTimeBetween('this week', $get_random_peminjaman );
            $endingDate   = $faker->dateTimeBetween($startingDate, strtotime( $get_random_peminjaman ));

            $data = [
                'id_user' => $faker->randomElement($user),
                'keterangan'=> $faker->sentence($nb = 4, $asText = true),
                'tgl_pinjam'=> $startingDate,
                'tgl_kembali'=> $endingDate,
                'status'=> $status[mt_rand(0,1)],
                'created_at' => $faker->dateTime(),
                'updated_at' => $faker->dateTime()
            ];
            array_push($peminjaman, $data);
        }

        DB::table('peminjaman')->insert($peminjaman);
    }
}
