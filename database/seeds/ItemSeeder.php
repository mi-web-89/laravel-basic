<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class ItemSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_ID');
        
        for($i=0; $i<20; $i++) {
          DB::table('item')->insert([
            'name' => $faker->word,
            'price' => $faker->numberBetween(1,100),
            'supplier_id' => $faker->numberBetween(1, 25)
          ]);
        }
    }
}
