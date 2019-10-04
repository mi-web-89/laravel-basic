<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class supplierSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_ID');
        for($i=0; $i<25; $i++) {
          DB::table('supplier')->insert([
            'name' => $faker->company,
            'city' => $faker->city
          ]);
        }
    }
}
