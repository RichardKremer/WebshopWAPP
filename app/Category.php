<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    
    // variabele om te vertellen wat ingevuld mag worden door de user
    protected $fillable = [
        'name', 'summary'
    ];

    // method die de relatie tegenover de product class aangeeft
    public function products() {
        return $this->hasMany(Product::class);
    }

    // method die de relatie tegenover de subcategory class aangeeft
    public function subCategories() {
        return $this->hasMany(SubCategory::class);
    }
}
