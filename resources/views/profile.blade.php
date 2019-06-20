@extends('layouts.main')

@section('content')

<div class="jumbotron mt-3">
    <h1 class="display-4">Profile</h1>
    <p class="lead">Hier kunt u je eigen gegevens wijzigen</p>
    <hr class="my-4">
    <img class="card-img-top" src={{ Auth::user()->img_url }}>
    <ul class="list-group list-group-flush">
        <li class="list-group-item">E-mail: {{ Auth::user()->email }}</li>
        <li class="list-group-item">{{ Auth::user()->name }}</li>
    </ul>
</div>

<div id="DeleteModal" class="modal fade text-danger" role="dialog">
    <div class="modal-dialog ">
        <!-- Modal content-->
        <form action="" id="deleteForm" method="post">
            <div class="modal-content">
                <div class="modal-header bg-danger">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title text-center">DELETE CONFIRMATION</h4>
                </div>
                <div class="modal-body">
                    {{ csrf_field() }}
                    {{ method_field('DELETE') }}
                    <p class="text-center">Are You Sure Want To Delete ?</p>
                </div>
                <div class="modal-footer">
                    <center>
                        <button type="button" class="btn btn-success" data-dismiss="modal">Cancel</button>
                        <button type="submit" name="" class="btn btn-danger" data-dismiss="modal"
                            onclick="formSubmit()">Yes, Delete</button>
                    </center>
                </div>
            </div>
        </form>
    </div>
</div>


@endsection
