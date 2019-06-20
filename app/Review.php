<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    // variabele om te vertellen wat ingevuld mag worden door de user
    protected $fillable = [
        'user_id', 'product_id',
        'title', 'description', 'rating'
    ];

    // method die de relatie tegenover de user class aangeeft
    public function user() {
        return $this->belongsTo(User::class);
    }

    // method die de relatie tegenover de product class aangeeft
    public function product() {
        return $this->belongsTo(Product::class);
    }
}
