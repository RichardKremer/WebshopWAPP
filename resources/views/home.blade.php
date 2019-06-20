@extends('layouts.main')

@section('content')

    <div class="jumbotron mt-3">
        <h1 class="display-4">Webshop</h1>
        <p class="lead">Een Webshop voor al uw shop behoeftes.</p>
        <hr class="my-4">
        <p>Gemaakt door Richard Kremer, Joris Mellema, Stefan Schneiders en Berend Korendijk</p>
        <a class="btn btn-primary btn-lg" href="/assortment" role="button">Ons assortiment</a>
    </div>

    <div>
    @foreach($products as $product)

        <div class="card mb-3" style="width:33%; display:inline-block;">
            <img class="card-img-top" src={{ $product->image_url }} alt={{ $product->product_name }}>
            <div class="card-body">
                <h5 class="card-title">{{ $product->product_name }}</h5>
                <p class="card-text">{{ (strlen($product->description) > 50) ? substr($product->description, 0, 50) . '...' : $product->description }}</p>
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

@endsection
