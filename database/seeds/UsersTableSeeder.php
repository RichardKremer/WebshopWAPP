<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    // er worden 20 users aangemaakt
    public function run()
    {
        factory(App\User::class, 20)->create()->each(function ($user) {

        });
    }
}