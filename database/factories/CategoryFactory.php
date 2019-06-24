<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Category;
use Faker\Provider\Lorem;
use Faker\Generator as Faker;

// een factory om de seeders te vertellen hoe het er in de database uit moet zien, een blueprint als het ware

$factory->define(Category::class, function (Faker $faker) {
    return [
        'name' => $faker->word,
        'description' => $faker->sentence($nbWords = 20, $variableNbWords = true),
    ];
});
