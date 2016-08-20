<?php

namespace App;
use Eloquent; // ******** This Line *********
use DB;       // ******** This Line *********

class Hotel extends Eloquent
{
	
    protected $table = 'hotels';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    
    
    protected $fillable = [
        'name', 'phone', 'address',
    ];
    
    
    public function comments()
    {
        return $this->hasMany('App\Comment');
    }

    
}
