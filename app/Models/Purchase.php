<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Purchase extends Model
{
    use HasFactory;

    public function supplier()
    {
        return $this->belongsTo(Supplier::class, 'supplier_id','id');
    }

    
    public function product_purchase()
    {
        return $this->hasMany(Purchase_product::class, 'purchase_id','id');
    }
}
