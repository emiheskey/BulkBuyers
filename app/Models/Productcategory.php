<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Productcategory extends Model
{
    public $primaryKey = 'prodcatid';
    public $timestamps = false;

    protected $fillable = [
        'description','productcatimg'
    ];

    public function products(){
        return $this->hasMany('App\Models\Product', 'prodcatid');
    }
}

