@extends('layouts.main')

@section('content')

<div class="card my-3">
    <div class="card-body">
        <form method="GET" action="{{ url('assortment') }}">
            @csrf
            <div class="form-row align-items-center">
                
                <div class="col-auto my-1">
                    <label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Preference</label>
                    <select name="category" class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                        @if($crntCategory == null)
                            <option class="font-weight-bold" value="0" selected>All categories</option>
                        @else
                            <option class="font-weight-bold" value={{$crntCategory->id}} selected>{{$crntCategory->name}}</option>
                        @endif

                        @if($crntCategory != null)
                            <option value="0">All categories</option>
                        @endif

                        @foreach ($categories as $category)
                            <option value={{ $category->id }}>{{ $category->name }}</option>
                        @endforeach
                    </select>
                    
                </div>

                <div class="col-auto my-1">
                    <label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Preference</label>
                    <select name="subCategory" class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                        @if($crntSubCategory == null)
                            <option class="font-weight-bold" value="0" selected>All subcategories</option>
                        @else
                            <option class="font-weight-bold" value={{$crntSubCategory->id}} selected>{{$crntSubCategory->name}}</option>
                        @endif
                
                        @if($crntSubCategory != null)
                            <option value="0">All subcategories</option>
                        @endif
                
                        @foreach ($subCategories as $subCategory)
                            <option value={{$subCategory->id }}>{{ $subCategory->name }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="col-auto my-1">
                    @if($crntPrice == null)
                        <input type="text" class="form-control" name="price" placeholder="price">
                    @else
                        <input type="text" class="form-control" name="price" placeholder="price" value={{$crntPrice}}>
                    @endif
                </div>

                <div class="col-auto my-1">
                    @if($crntName == null)
                        <input type="text" class="form-control" name="product" placeholder="name">
                    @else
                        <input type="text" class="form-control" name="product" placeholder="name" value={{$crntName}}>
                    @endif
                </div>

                <div class="col-auto my-1">
                <select name="amount" class="custom-select" id="inputGroupSelect01">
                        @if($crntAmount != null)
                            <option class="font-weight-bold" value={{$crntAmount}} selected>{{$crntAmount}}</option>
                        @endif
                        <option value="3">3</option>
                        <option value="6">6</option>
                        <option value="9">9</option>
                        <option value="12">12</option>
                        <option value="15">15</option>
                    </select>
                </div>

                <div class="col-auto my-1">
                    <button value="search" name="search" type="submit" class="btn btn-secondary">search</button>
                </div>

                <div class="col-auto my-1">
                    <button value="clear" name="search" type="submit" class="btn btn-secondary">clear</button>
                </div>
             </form>
         </div>
    </div>
</div>

@if(count($products) != 0)

{{ $products->links() }}
    <div>
        <p class="card-text"><small class="text-muted">Products on page: {{count($products)}}</small></p>
        @foreach($products as $product)
        <div class="card mb-3" style="width:33%; display:inline-block;">
            <img class="card-img-top" src={{ $product->image_url }} alt={{ $product->product_name }}>
            <div class="card-body">
                <h5 class="card-title">{{ $product->name }}</h5>
                <p class="card-text">
                    {{ (strlen($product->description) > 50) ? substr($product->description, 0, 50) . '...' : $product->description }}
                </p>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Rating: {{ number_format($rating = DB::table('reviews')->where('product_id', $product->id)->avg('rating'), 2, '.', ',') }}</li>
                <li class="list-group-item">In stock: {{ $product->inStock }}</li>
                <li class="list-group-item">€ {{ $product->price }}</li>
            </ul>
            <div class="card-body">
            <a href="/product/{{ $product->id }}" class="card-link">Meer...</a>
            </div>
        </div>
        @endforeach
    </div>
    {{ $products->links() }}
@else
    <div class="alert alert-secondary" role="alert">
        We're sorry, we couldn't find any records that match your search criteria.
    </div>
@endif
        
@endsection       