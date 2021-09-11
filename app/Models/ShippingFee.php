<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ShippingFee extends Model
{
    protected $fillable = [
        'name', 'state', 'zones', 'fee'
    ];

    protected $casts = [
        'zones' => 'array'
    ];
}
