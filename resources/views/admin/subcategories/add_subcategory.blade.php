@extends('layouts.adminLayout.admin_design')
@section('content')


<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="{{url('/admin/dashboard')}}" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> 
    <a href="{{ url('/admin/view-subcategories') }}" title="Go to all Categories"class="tip-bottom">Categories</a> <a href="#" class="current">Add Category</a> </div>
    <h1>Add Category</h1>

  </div>
  <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-info-sign"></i> </span>
            <h5>Add Category</h5>
          </div>
          <div class="widget-content nopadding">
            <form class="form-horizontal" method="post" action="{{ url('/admin/add-subcategory') }}" name="add_subcategory" id="add_subcategory" novalidate="novalidate">
            {{csrf_field()}}
            <div class="control-group">
                <label class="control-label">Main Category</label>
                <div class="controls">
                    <select name="maincategory_id" id="maincategory_id" style="width: 220px;">
                   <?php echo $categories_dropdown; ?>
                </select>
                 </div>
              <div class="control-group">
                <label class="control-label">Category Name</label>
                <div class="controls">
                  <input type="text" name="subcategory_name" id="subcategory_name">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Description</label>
                <div class="controls">
                  <textarea name="summary" id="summary"></textarea>
                </div>
              </div>
              <div class="form-actions">
                <input type="submit" value="Add Subcategory" class="btn btn-success">
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

@endsection