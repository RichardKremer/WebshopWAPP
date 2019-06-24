<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Product;
use Faker\Generator as Faker;

// een factory om de seeders te vertellen hoe het er in de database uit moet zien, een blueprint als het ware

$factory->define(Product::class, function (Faker $faker) {
    return [
        'image_url' => '/images/iets.png',
        'product_name' => $faker->word,
        'description' => $faker->sentence($nbWords = 20, $variableNbWords = true),
        'price' => $faker->randomFloat($nbMaxDecimals = 2, $min = 1, $max = 500),
        'inStock' => $faker->numberBetween($min = 1, $max = 200),
    ];
});