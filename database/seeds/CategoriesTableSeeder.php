<?php

use Illuminate\Database\Seeder;

class CategoriesTableSeeder extends Seeder
{
    /* 
        * wanneer de method run opgeroepen word door het seeden, gaat het 5 categories aanmaken in de database
        * elke category heeft dan ook weer 3 subcategories
        * elke subcategory heeft dann weer 2 products
        * en tot slot heeft elk product 5 reviews
    */
    public function run()
    {
        factory(App\Category::class, 5)->create()->each(function ($category) {
            $category->subCategories()->saveMany(factory(App\SubCategory::class, 3)->create(['category_id' => $category->id])->each(function ($subCategory) {
                $subCategory->products()->saveMany(factory(App\Product::class, 2)->create(['subcategory_id' => $subCategory->id, 'category_id' => $subCategory->category_id])->each(function ($product) {
                    $product->reviews()->saveMany(factory(App\Review::class, 5)->create(['product_id' => $product->id]));
                }));
            }));
        });
    }
}