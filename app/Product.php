<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    
    // variabele om te vertellen wat ingevuld mag worden door de user
    protected $fillable = [
        'category_id', 'subcategory_id', 'image_url', 'rating',
        'product_name', 'description', 'price', 'inStock'
    ];

    // method die de relatie tegenover de user class aangeeft
    public function user() {
        return $this->belongsTo(User::class);
    }

    // method die de relatie tegenover de category class aangeeft
    public function category() {
        return $this->belongsTo(Category::class);
    }

    // method die de relatie tegenover de subcategory class aangeeft
    public function subCategory() {
        return $this->belongsTo(SubCategory::class);
    }

    // method die de relatie tegenover de reviews class aangeeft
    public function reviews() {
        return $this->hasMany(Review::class);
    }

}
