<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Review;
use Faker\Generator as Faker;

// een factory om de seeders te vertellen hoe het er in de database uit moet zien, een blueprint als het ware

$factory->define(Review::class, function (Faker $faker) {
    return [
        'user_id' => $faker->numberBetween($min = 1, $max = 20),
        'title' =>  $faker->bs,
        'description' => $faker->sentence($nbWords = 20, $variableNbWords = true),
        'rating' => $faker->numberBetween($min = 1, $max = 5),
    ];
});
