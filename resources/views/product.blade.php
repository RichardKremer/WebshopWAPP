@extends('layouts.main')

@section('content')

<div class="card my-3">
    <div class="row no-gutters">
        <div class="col-md-4">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100, card-img" src="{{$product->image_url}}" alt="...">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="{{ $product->image_url}}" alt="...">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="{{$product->image_url }}" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
        </div>
        <div class="col-md-8">
            <div class="card-body">
                <h5 class="card-title">{{ $product->product_name }}</h5>
                <p class="card-text">{{ $product->description }}</p>
                <p class="card-text">In stock: {{ $product->inStock }}</p>
                <p class="card-text">Rating: {{ $rating }}</p>
                <p class="card-text"><small class="text-muted">€ {{ $product->price }}</small></p>
            </div>
        </div>
    </div>
</div>

@if (Auth::check())

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
    Launch demo modal
</button>

<!-- Modal -->
<form method="POST" action="{{ url('addReview') }}">
@csrf
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Review:</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                
                    <div class="form-group row">
                
                        <div class="col">
                            <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name"
                                value="{{ old('name') }}" required autocomplete="name" autofocus>
                
                            @error('name')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                    </div>
                
                    <div class="form-group row">
                
                        <div class="col">
                            <textarea id="description" type="text" class="form-control @error('description') is-invalid @enderror"
                                name="description" value="{{ old('description') }}" required autocomplete="description"
                                autofocus></textarea>
                
                            @error('description')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                            @enderror
                        </div>
                    </div>

                    <label for="rating">Rating: </label>
                    <input type="range" class="custom-range" name="rating" min="0" max="5" id="rating">
                
                    <input id="product" type="text" name="product" value="{{ $product->id }}" hidden readonly>
                    <input id="user" type="text" name="user" value="{{ Auth::user()->id }}" hidden readonly>
                
                    <div class="form-group row mb-0">
                        <div class="col-md-6 offset-md-4">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">
                        {{ __('Submit') }}
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>

@endif

<div class="mt-5">
    <div class="card">
        <div class="card-header">
            Reviews:
        </div>
        <ul class="list-group list-group-flush">

            @foreach($reviews as $review)

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">{{ $review->title }}</h5>
                        <p class="card-text">{{ $review->description }}</p>
                        <h6 class="card-subtitle mb-2 text-muted">Gebruiker: {{ $review->user->name }}</h6>
                    </div>
                </div>

            @endforeach

        </ul>
    </div>
</div>
    
@endsection