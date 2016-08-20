@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">Welcome</div>

                <div class="panel-body">
			
                    @foreach($hotels as $hotel)
			<div> name : <a href="/hoteldetail/{{$hotel->id}}">{{ $hotel->name }} </a> </div>
			<div> address : {{ $hotel->address }}</div>
			<div> phone : {{ $hotel->phone }}</div>
			<br/>
		    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
