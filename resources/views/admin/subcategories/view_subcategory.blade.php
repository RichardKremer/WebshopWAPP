@extends('layouts.adminLayout.admin_design')
@section('content')
<div id="content">
  <div id="content-header">
  <div id="breadcrumb"> <a href="{{url('/admin/dashboard')}}" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
   <a href="#">Categories</a> <a href="#" class="current">View Categories</a> </div>
    <h1>View Categories</h1>
  </div>
  <div class="container-fluid">
    <hr>
    <div class="row-fluid">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
            <h5>Category table</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered data-table">
              <thead>
                <tr>
                  <th>Category ID</th>
                  <th>Main Category ID</th>
                  <th>Category Name</th>
                  <th>Category description</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                  @foreach ($Subcategories as $subcategory)
                <tr class="gradeX">
                  <td>{{ $subcategory->id }}</td>
                  <td>{{ $subcategory->category_id}}</td>
                  <td>{{ $subcategory->name }}</td>
                  <td>{{ $subcategory->summary }}</td>
                  <td class="center"><a href="{{ url('/admin/edit-subcategory/'.$subcategory->id) }}" class="btn btn-primary btn-mini">Edit</a>
                  <a id="delCat" href="{{ url('/admin/delete-subcategory/'.$subcategory->id) }}" class="btn btn-danger btn-mini">Delete</a></td>
                </tr>
                @endforeach
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection