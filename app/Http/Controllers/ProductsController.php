<?php

namespace App\Http\Controllers;

use App\User;
use App\Review;
use App\Product;
use App\Category;
use App\SubCategory;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;

class ProductsController extends Controller
{
    public function index()
    {
        // pakt all (sub)categoriën uit de database
        $categories = Category::all();
        $subCategories = SubCategory::all();

        // pakt alle products uit de database en pagineerd h'm met 9 per pagina
        $products = DB::table('products')->paginate(9);

        // maakt een array van alle variabelen en hun data
        $data = [
            'categories' => $categories,
            'products' => $products,
            'subCategories' => $subCategories
        ];

        // de view returnen met de data array
        return view('assortment')->with($data);
    }

    public function contact()
    {
        return view('contact');
    }

    public function profile()
    {
        return view('profile');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function search(Request $request)
    {
        // pakt all (sub)categoriën uit de database
        $categories = Category::all();
        $subCategories = SubCategory::all();

        $price = $request->price;
        $product = $request->product;
        $category = $request->category;
        $subCategory = $request->subCategory;
        $amountPerPage = $request->amount;
        if($amountPerPage == null) { $amountPerPage = 12; }
        if($category == '0') { $category = null; }
        if($subCategory == '0') { $subCategory = null; }

        $iets = [];

        if($category != null) { array_push($iets, ['category_id', '=', $category]); }
        if($subCategory != null) { array_push($iets, ['subCategory_id', '=', $subCategory]); }
        if($price != null) { array_push($iets, ['price', '<=', $price]); }
        if($product != null) { array_push($iets, ['product_name', 'LIKE', '%'.$product.'%']); }

        if(!empty($iets)) {
            switch($request->search) {
                case 'search':
                    $products = Product::where($iets)->paginate($amountPerPage);
                break;
                case 'clear':
                    $price = null;
                    $product = null;
                    $category = null;
                    $subCategory = null;
                    $products = Product::paginate($amountPerPage);
                break;
            }
        } else {
            $products = Product::paginate($amountPerPage);
        }

        // halen de huidige waardes op die je hebt opgezocht
        $crntCategory = DB::table('categories')->where('id', $category)->first();
        $crntSubCategory = DB::table('sub_categories')->where('id', $subCategory)->first();
        $crntName = $product;
        $crntPrice = $price;
        $crntAmount = $amountPerPage;

        // maakt een array van alle variabelen en hun data
        $data = [
            'crntAmount' => $crntAmount,
            'crntName' => $product,
            'crntSubCategory' => $crntSubCategory,
            'crntCategory' => $crntCategory,
            'crntPrice' => $crntPrice,
            'categories' => $categories,
            'products' => $products->appends(Input::except('page')),
            'subCategories' => $subCategories
        ];

        // de view returnen met de data array
        return view('assortment')->with($data);
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }
    
    public function store(Request $request)
    {
        //
    }
    
    public function show($id)
    {
        // pakt het product met het juiste id
        $product = Product::find($id);

        // pakt alle reviews waar het product_id hetzelfde is als de product id en de user die erbij hoort
        $reviews = Review::where('product_id', $id)->with('user')->get();

        // pak alle reviews die bij het product horen en average de rating
        $rating = DB::table('reviews')->where('product_id', $id)->avg('rating');
        $rating = number_format($rating, 2, '.', ',');

        // maakt een array van alle variabelen en hun data
        $data = [
            'product' => $product,
            'reviews' => $reviews,
            'rating' => $rating
        ];

        // de view returnen met de data array
        return view('product')->with($data);
    }
    
    public function edit($id)
    {
        // 
    }
    
    public function update(Request $request, $id)
    {
        //
    }
    
    public function destroy($id)
    {
        //
    }
}
