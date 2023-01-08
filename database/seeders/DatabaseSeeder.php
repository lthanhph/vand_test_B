<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Store;
use App\Models\Product;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'admin',
            'email' => 'admin@gmail.com',
            'password' => Hash::make('123456'),
            'gender' => 1,
            'address' => 'TPHCM',
            'phone' => '123456789',
            'api_token' => Str::random(50),
        ]);
        User::factory(10)->create();

        for ($i = 1; $i <= 5; $i++) {
            Store::create([
                'title' => 'store_' . $i,
                'description' => 'This is description of store_' . $i,
                'user_id' => 1
            ]);
        }
        
        for ($i = 1; $i <= 100; $i++) {
            Product::create([
                'name' => 'product_' . $i,
                'description' => 'This is description of product_' . $i,
                'brand' => 'branch_sample_' . rand(1, 5),
                'category' => 'category_sample_' . rand(1, 10),
                'date_of_manufacture' => date('Y-m-d H:i:s', rand(strtotime('1/1/2000'), strtotime('now'))),
                'store_id' => rand(1, 5),
            ]);
        }
    }
}
