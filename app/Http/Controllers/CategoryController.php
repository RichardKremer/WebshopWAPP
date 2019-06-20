<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;

class CategoryController extends Controller
{
    public function addCategory(Request $request) {
        if($request->isMethod('post')){
            $data = $request->all();
           // echo "<pre>"; print_r($data); die;
           $category = new Category;
           $category->name = $data['category_name'];
           $category->description = $data['description'];
           $category->save();
           return redirect ('/admin/view-categories')->with('flash_message_success','Category added succesfully!');
        }
        // Level variable die alle main categoriëen die de parent id 0 hebben bevat
        $levels = Category::get();

        return view('admin.categories.add_category')->with(compact('levels'));
    }
    public function editCategory(Request $request, $id = null){
        if($request->isMethod('post')){
            $data = $request->all();

            Category::where(['id'=>$id])->update(['name'=>$data['category_name'],'description'=>$data['description']]);
            
            return redirect ('/admin/view-categories')->with('flash_message_success','Category updated Succesfully');
        }
            $categoryDetails = Category::where(['id'=>$id])->first();
            $levels = Category::where(['parent_id'=>0])->get();
            return view('admin.categories.edit_category')->with(compact('categoryDetails','levels'));
    }

    public function deleteCategory($id = null){
        if(!empty($id)){
            Category::where(['id'=>$id])->delete();
            return redirect()->back()->with('flash_message_success','Category deleted Successfully!');
        }
    }

    public function viewCategories() {
        $categories = Category::get();
        return view ('admin.categories.view_category')->with(compact('categories'));
    }
}
