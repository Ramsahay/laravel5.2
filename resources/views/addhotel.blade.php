@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">Welcome</div>
		<a href="/admin/addhotel"> add hotel </a>
                <div class="panel-body">
			
        <!-- New Task Form -->
        <form action="/admin/addhotel" method="POST" class="form-horizontal">
            {{ csrf_field() }}

            <!-- Task Name -->
            <div class="form-group">
                <label for="task" class="col-sm-3 control-label">name</label>

                <div class="col-sm-6">
                    <input type="text" name="name" id="task-name" class="form-control">
                </div>
            </div>

	    <div class="form-group">
                <label for="task" class="col-sm-3 control-label">Phone</label>

                <div class="col-sm-6">
                    <input type="text" name="phone" id="phone-name" class="form-control">
                </div>
            </div>
		
		<div class="form-group">
                <label for="task" class="col-sm-3 control-label">address</label>

                <div class="col-sm-6">
                    <input type="text" name="address" id="address-name" class="form-control">
                </div>
            </div>


            <!-- Add Task Button -->
            <div class="form-group">
                <div class="col-sm-offset-3 col-sm-6">
                    <button type="submit" class="btn btn-default">
                        <i class="fa fa-plus"></i> Add
                    </button>
                </div>
            </div>
        </form>


                </div>
            </div>
        </div>
    </div>
</div>
@endsection
