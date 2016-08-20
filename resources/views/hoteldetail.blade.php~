@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">Welcome</div>

                <div class="panel-body">
			
			<div> name : <a href="/hoteldetail/{{$hotel->id}}">{{ $hotel->name }} </a> </div>
			<div> address : {{ $hotel->address }}</div>
			<div> phone : {{ $hotel->phone }}</div>
			<br/>
			
                </div>
			All Comments({{count($hotel->comments)}})
			@if(count($hotel->comments))
			 <ul>
			   @foreach($hotel->comments as $comment)
			    <li> {{$comment->comment}} <span style="float:right">{{$comment->created_at}}</span></li> 
		           @endforeach
			 </ul>
			@endif

			@if(Auth::id())
			
			<!-- New Task Form -->
        <form action="/comments" method="POST" class="form-horizontal">
            {{ csrf_field() }}

            <!-- Task Name -->
            <div class="form-group">
                <label for="task" class="col-sm-3 control-label">Comment</label>

                <div class="col-sm-6">
                    <input type="text" name="comment" id="task-name" class="form-control">
                </div>
            </div>

	    
                    <input type="hidden" name="hotel_id" value="{{ $hotel->id }}">
                
		
		


            <!-- Add Task Button -->
            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-6">
                    <button type="submit" class="btn btn-default">
                        <i class="fa fa-plus"></i> Add
                    </button>
                </div>
            </div>
        </form>
			@endif
            </div>
        </div>
    </div>
</div>
@endsection
