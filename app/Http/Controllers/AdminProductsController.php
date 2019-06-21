<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Auth;
use Session;
use Image;
use App\Category;
use App\SubCategory;
use App\Product;
use App\Review;

class AdminProductsController extends Controller
{
    public function addProduct(Request $request){

        if($request->isMethod('post')){
            $data = $request->all();
           // echo "<pre>"; print_r($data); die;
           $product = new Product;
           $product->category_id = $data['category_id'];
           $product->subcategory_id = $data['subcategory_id'];
           $product->product_name = $data['product_name'];
           $product->description =  $data['description'];
           $product->price = $data['price'];
           $product->instock = $data['instock'];
           $product->image_url = $data['image_url'];
           //upload image
        //    $product->image_url = $data['image_url'];
            if($request->hasFile('image_url')){
                $image_tmp = Input::file('image_url');
                if($image_tmp->isValid()){
                    $extension = $image_tmp->getClientOriginalExtension();
                    $filename = $request->image_url->getClientOriginalName();
                    $small_image_path = 'images/'.$filename;

                    //resize image
                    Image::make($image_tmp)->resize(364,364)->save($small_image_path);

                    // image name in products table opslaan
                    $product->image_url = "/images".$filename;
            }
        }
           $product->save();
          // return redirect()->back()->with('flash_message_success','Product added!');

          return redirect('/admin/view-products')->with('flash_message_success','Product added!');

        }

        $categories = Category::get();
        $categories_dropdown = "<option selected disabled>Select</option>";
        foreach($categories as $cat){
            $categories_dropdown .= "<option value='".$cat->id."'>".$cat->name."</option>";
        }

        $subCategories = SubCategory::get();
        $subCategories_dropdown = "<option selected disabled>Select</option>";
        foreach($subCategories as $subCat){
            $subCategories_dropdown .= "<option value='".$subCat->id."'>".$subCat->name."</option>";
        }

        return view('admin.products.add_product')->with(compact('categories_dropdown', 'subCategories_dropdown'));


    }

    public function editProduct(Request $request, $id=null){

        if($request->isMethod('post')){
          
            $data = $request->all();
            //echo "<pre>"; print_r($data); die;
        if($request->hasFile('image_url')){
            $image_tmp = Input::file('image_url');
            if($image_tmp->isValid()){
                $extension = $image_tmp->getClientOriginalExtension();
                $filename = $request->image_url->getClientOriginalName();
                $small_image_path = 'images/backend_images/products/small/'.$filename;

                //resize image
                Image::make($image_tmp)->resize(364,364)->save($small_image_path);
            }
        } else{ 
            $filename = $data['current_image'];
        }   
        if (empty($data['description'])){
            $data['description']= '';
        }
            
    
            Product::where(['id'=>$id])->update(['category_id'=>$data['category_id'],
            'product_name'=>$data['product_name'],'description'=>$data['description'],'price'=>$data['price'],'instock'=>$data['instock'],
            'image_url'=>$data['image_url']]);

            return redirect ('/admin/view-products')->with('flash_message_success','Product updated Succesfully');
        }

        $productDetails = Product::where(['id'=>$id])->first();
        
        $categories = Category::get();
        $categories_dropdown = "<option selected disabled>Select</option>";
        foreach($categories as $cat){
            if($cat->id==$productDetails->category_id){
                $selected = "selected";
            }else{
                $selected = "";
            }
            $categories_dropdown .= "<option value='".$cat->id."' ".$selected.">".$cat->name."</option>";
        
            $sub_categories = Category::get();
            
            foreach ($sub_categories as $sub_cat) {
                if($sub_cat->id==$productDetails->subcategory_id){
                    $selected = "selected";
                }else{
                    $selected = "";
                }
                $categories_dropdown .= "<option value = '".$sub_cat->id."".$selected."'>&nbsp;--&nbsp;".$sub_cat->name."</option>";
            }
        }
        return view ('admin.products.edit_product')->with(compact('productDetails','categories_dropdown'));
    }

    public function viewProducts(Request $request){
        $products = Product::get();
        $products = json_decode(json_encode($products));
        // showt de namen van de categoriëen inplaats van de ID's
        // foreach($products as $key => $val){
        //     $category_name = Category::where(['id'=>$val->category_id])->first();
        //     $products[$key]->category_name = $category_name->name;
        //     $subcategory_name = Category::where(['id'=>$val->subcategory_id])->first();
        //     $products[$key]->subcategory_name = $subcategory_name->name;
        // }
      //  echo "<pre>"; print_r($products); die;
        return view ('admin.products.view_products')->with(compact('products'));
    }
    public function viewReviews() {
        $reviews = Review::get();
        return view ('admin.reviews.view_reviews')->with(compact('reviews'));
    }
    public function deleteReview($id = null){
        if(!empty($id)){
            Review::where(['id'=>$id])->delete();
            return redirect()->back()->with('flash_message_success','Category deleted Successfully!');
        }
    }
}
