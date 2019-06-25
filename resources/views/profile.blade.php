@extends('layouts.main')

@section('content')

<div class="jumbotron mt-3">
    <h1 class="display-4">Profile</h1>
    <p class="lead">Hier kunt u je eigen gegevens wijzigen</p>
    <hr class="my-4">
    <img class="card-img-top" src={{ Auth::user()->img_url }}>
    <ul class="list-group list-group-flush">
        <li class="list-group-item">E-mail: {{ Auth::user()->email }}</li>
        <li class="list-group-item">Username: {{ Auth::user()->name }}</li>
    </ul>
</div>



@endsection
