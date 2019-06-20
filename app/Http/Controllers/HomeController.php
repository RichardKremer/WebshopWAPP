<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        // pakt de drie meest populaire producten uit de database
        $products = DB::table('products')->limit(3)->inRandomOrder()->get();
        
        // maakt een array van alle variabelen en hun data
        $data = [
            'products' => $products
        ];

        // de view returnen met de data array
        return view('home')->with($data);
    }
}
