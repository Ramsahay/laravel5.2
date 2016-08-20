<?php

namespace App;
use Eloquent; // ******** This Line *********
use DB;

class Comment extends Eloquent
{
	
    
    protected $table = 'comments';

    public function hotel()
    {
        return $this->belongsTo('App\Hotel');
    }
    
    public function user()
    {
        return $this->hasOne('App\User');
    }
    
    
}
