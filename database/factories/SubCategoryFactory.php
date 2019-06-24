<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\SubCategory;
use Faker\Generator as Faker;

// een factory om de seeders te vertellen hoe het er in de database uit moet zien, een blueprint als het ware

$factory->define(SubCategory::class, function (Faker $faker) {
    return [
        'name' => $faker->word,
        'summary' => $faker->sentence($nbWords = 6, $variableNbWords = true),
    ];
});