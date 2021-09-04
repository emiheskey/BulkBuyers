<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OfflineOrder extends Model
{
    protected $fillable = [
        'fname', 'lname', 'email', 'phone', 'address', 'town', 'state', 'product_id', 'qty', 'total', 'order_status', 'order_id'
    ];

    public function product() {
        return $this->belongsTo(Produt::class, 'product_id', 'productid');
    }
}
