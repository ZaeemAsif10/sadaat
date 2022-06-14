<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Purchase;
use App\Models\Supplier;
use App\Models\WareHouse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PurchaseController extends Controller
{
    public function createPurchase()
    {
        $warehouses = WareHouse::all();
        $suppliers = Supplier::all();
        $products = Product::all();
        return view('backend.pages.purchase.create', get_defined_vars());
    }

    public function getProductDetail(Request $request)
    {
        $data = Product::where('id',$request->product_id)->first();
        return $data;   
    }


 
}
