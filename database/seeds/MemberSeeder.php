<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class MemberSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //insert
        $faker = Faker::create('id_ID');

        for($i=1; $i<=10; $i++) {
          DB::table('member')->insert([
            'name' => $faker->name,
            'email' => $faker->unique()->safeEmail,
            'phone' => $faker->unique()->phoneNumber,
            'password' => 'test'
          ]);
        }

    }
}
