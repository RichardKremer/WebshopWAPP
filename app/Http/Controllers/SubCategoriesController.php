<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Subcategory;
use App\Category;   

class SubCategoriesController extends Controller
{
        public function addSubCategory(Request $request) {
            if($request->isMethod('post')){
                $data = $request->all();
               // echo "<pre>"; print_r($data); die;
               $Subcategory = new SubCategory;
               $Subcategory->category_id = $data['maincategory_id'];
               $Subcategory->name = $data['subcategory_name'];
               $Subcategory->summary = $data['summary'];
               $Subcategory->save();
               return redirect ('/admin/view-subcategories')->with('flash_message_success','Subcategory added succesfully!');
            }
            // Level variable die alle main categoriëen die de parent id 0 hebben bevat
            $levels = Subcategory::get();
    
            $categories = Category::get();
            $categories_dropdown = "<option selected disabled>Select</option>";
            foreach($categories as $cat){
            $categories_dropdown .= "<option value='".$cat->id."'>".$cat->name."</option>";
            return view('admin.subcategories.add_subcategory')->with(compact('levels','categories_dropdown'));

        }
        }
        public function editSubcategory(Request $request, $id = null){
            if($request->isMethod('post')){
                $data = $request->all();
    
                Subcategory::where(['id'=>$id])->update(['category_id'=>$data['category_id'], 'name'=>$data['subcategory_name'],
                'summary'=>$data['description']]);
                
                return redirect ('/admin/view-subcategories')->with('flash_message_success','Category updated Succesfully');
            }
                $SubcategoryDetails = Subcategory::where(['id'=>$id])->first();
                $levels = SubCategory::where(['parent_id'=>0])->get();
                return view('admin.subcategories.edit_subcategory')->with(compact('SubcategoryDetails','levels'));
        }
    
        public function deleteSubcategory($id = null){
            if(!empty($id)){
                Subcategory::where(['id'=>$id])->delete();
                return redirect()->back()->with('flash_message_success','Category deleted Successfully!');
            }
        }
    
        public function viewCategories() {
            $Subcategories = Subcategory::get();
            return view ('admin.subcategories.view_subcategory')->with(compact('Subcategories'));
        }
    }

