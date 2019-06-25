@extends('layouts.adminLayout.admin_design')
@section('content')

<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="{{ url('/admin/dashboard') }}" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
  </div>



  <div class="container-fluid">
    <div class="quick-actions_homepage">
      <ul class="quick-actions">
        <li class="bg_lb"> <a href="http://127.0.0.1:8000/"> <i class="icon-home"></i> Return to the Webshop </a> </li>
        <li class="bg_lg"> <a href="{{url('/admin/add-category')}}"> <i class="icon-plus-sign-alt"></i> Add Category</a> </li>
        <li class="bg_ly"> <a href="{{url('/admin/add-product')}}"> <i class="icon-plus-sign-alt"></i> Add Product </a> </li>
       
      </ul>
    </div>
    <div class="span5">
              <ul class="site-stats">
              <li class="bg_lg"><a href="{{url('/admin/view-users')}}"><i class="icon-user"></i> <strong>{{ count($users) }}</strong> <small>Registered Users</small></li>
                <li class="bg_lg"><i class="icon-shopping-cart"></i> <strong>{{ count($products) }}</strong> <small>Total Products</small></li>
                <li class="bg_lg"><i class="icon-comments"></i> <strong>{{ count($reviews) }}</strong> <small>Total Reviews</small></li>
              </ul>
            </div>

@endsection