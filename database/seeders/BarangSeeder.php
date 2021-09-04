<?php

namespace Database\Seeders;

use App\Models\Barang;
use Faker\Factory as Faker;
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
        $faker = Faker::create('id_ID');

        for ($i = 1; $i <= 10; $i++) {
            Barang::insert([
                'nama_barang' => $faker->realText($maxNbChars = 20, $indexSize = 2),
                'harga_barang' => $faker->randomNumber(5),
                'jumlah_barang' => $faker->randomDigit,
                'foto_barang' => $faker->imageUrl(800, 600, 'product'),
                'kategori_id' => $faker->biasedNumberBetween($min = 1, $max = 10),
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s")
            ]);
        }
    }
}
