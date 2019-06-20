@extends('layouts.adminLayout.admin_design');
@section('content')
<div id="content">
  <div id="content-header">
  <div id="breadcrumb"> <a href="{{url('/admin/dashboard')}}" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
   <a href="#">Products</a> <a href="#" class="current">View Products</a> </div>
    <h1>View Products</h1>
  </div>
  <div class="container-fluid">
    <hr>
    <div class="row-fluid">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
            <h5>Product table</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered data-table">
              <thead>
                <tr>
                  <th>Category</th>
                  <th>Brand name</th>
                  <th>Product Name</th>
                  <th>Instock</th>
                  <th>Image</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                  @foreach ($products as $product)
                <tr class="gradeX">
                  <td>{{ $product->category_id}}</td>
                  <td>{{ $product->subcategory_id}}</td>
                  <td>{{ $product->product_name }}</td>
                
                  <td>{{ $product->inStock }}</td>
                  <td>
                    <img src="{{ asset('/images/backend_images/products/small/'.$product->image_url) }}">
                  </td>
                  <td class="center"><a href="#myModal{{ $product->id }}" data-toggle="modal" class="btn btn-success btn-mini">Info </a><br> <a href="{{ url('/admin/edit-product/'.$product->id) }}"
                    class="btn btn-primary btn-mini">Edit</a><br>
                  <a id="delCat" href="{{ url('/admin/delete-product/'.$product->id) }}" class="btn btn-danger btn-mini">Delete</a></td>
                </tr>

               
      <div id="myModal{{ $product->id }}" class="modal hide">
        <div class="modal-header">
          <button data-dismiss="modal" class="close" type="Button">x</button>
          <h3>{{ $product->product_name }} All details</h3>
          </div>
          <div class="modal-body">
            <p>Product ID: {{ $product->id }} </p>
            <p>Category ID: {{ $product->category_id }} </p>
            <p>Subcategory ID: {{ $product->subcategory_id }} </p>
            <p>Description: {{ $product->description }} </p>
            <p>Price: {{ $product->price }} </p>
          </div>
          </div>
          </div>

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