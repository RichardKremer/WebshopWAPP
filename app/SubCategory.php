<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SubCategory extends Model
{
    // variabele om te vertellen wat ingevuld mag worden door de user
    protected $fillable = [
        'category_id', 'name', 'summary'
    ];

    // method die de relatie tegenover de category class aangeeft
    public function category() {
        return $this->belongsTo(Category::class);
    }

    // method die de relatie tegenover de products class aangeeft
    public function products() {
        return $this->hasMany(Product::class, 'subcategory_id', 'id');
    }
}