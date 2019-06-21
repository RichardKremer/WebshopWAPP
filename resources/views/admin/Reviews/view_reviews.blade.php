@extends('layouts.adminLayout.admin_design');
@section('content')
<div id="content">
  <div id="content-header">
  <div id="breadcrumb"> <a href="{{url('/admin/dashboard')}}" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
   <a href="#">Reviews</a> <a href="#" class="current">View Reviews</a> </div>
    <h1>View Reviews</h1>
  </div>
  <div class="container-fluid">
    <hr>
    <div class="row-fluid">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
            <h5>Review table</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered data-table">
              <thead>
                <tr>
                  <th>User ID</th>
                  <th>Product ID</th>
                  <th>Title</th>
                  <th>Description</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                  @foreach ($reviews as $review)
                <tr class="gradeX">
                  <td>{{ $review->user_id }}</td>
                  <td>{{ $review->product_id }}</td>
                  <td>{{ $review->title }}</td>
                  <td>{{ $review->description}}</td>
                  <td><a id="delRev" href="{{ url('/admin/delete-review/'.$review->id) }}" class="btn btn-danger btn-mini">Delete</a></td>
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