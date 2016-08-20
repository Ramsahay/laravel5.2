<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;
use App\Hotel;
use App\Comment;
use Validator;
use Auth;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }

    public function listhotels(){
	$hotels = Hotel::all();
        //dd($hotels);
        return view('welcome',array('hotels'=>$hotels));

	// return view('welcome');
    }

    public function adminlist(){
	$hotels = Hotel::all();
        //dd($hotels);
        return view('adminlist',array('hotels'=>$hotels));
    }
	

    public function addhotelform(){
	     
	return view('addhotel');
    }

    public function addhotel(Request $request){
	     $validator = Validator::make($request->all(), [
              'name' => 'required|max:255',
	     
	    ]);

	    if ($validator->fails()) {
		return redirect('/admin/addhotel')
		    ->withInput()
		    ->withErrors($validator);
	    }

	    $task = new Hotel;
	    $task->name = $request->name;
	    $task->address = $request->address;
	    $task->phone = $request->phone;

	    $task->save();

	    return redirect('admin/list');

	//return view('addhotel');
    }

       public function showhotel($id=''){
	   if($id == ''){
		return redirect('/');
	    }
	  $hotel  = Hotel::findOrfail($id) ;
          
	  return view('hoteldetail',array('hotel'=>$hotel));

	}  

	public function comments(Request $request){
            $hotel_id= '';
	    $validator = Validator::make($request->all(), [
              'comment' => 'required|max:255',
	     
	    ]);
	     $requestData = $request->all() ;
			$hotel_id = $requestData['hotel_id'] ;
             //dd($requestData);
	    if ($validator->fails()) {
		
		return redirect('/hoteldetail/'.$hotel_id)
		    ->withInput()
		    ->withErrors($validator);
	    }

	    $task = new Comment;
	    $task->comment = $requestData['comment'] ;
	    $task->hotel_id = $requestData['hotel_id'] ;
	    $task->user_id = Auth::id() ;

	    $task->save();

	    return redirect('/hoteldetail/'.$hotel_id);
	} 
}
