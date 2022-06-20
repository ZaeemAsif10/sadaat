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


    public function StorPurchaser(Request $request){
        $size = count($request->get('product_id'));
        for ($i = 0; $i < $size; $i++)
        {
            $subJob = new Purchase();
            $subJob->user_id = Auth::user()->id;
            $subJob->warehouse_id = $request->warehouse_id;
            $subJob->item = $size;
            $subJob->name = $request->get('name')[$i];
            $subJob->size = $request->get('size')[$i];
            $subJob->medium = $request->get('medium')[$i];
            $subJob->feature = $request->get('feature')[$i];
            $subJob->qty = $request->get('qty')[$i];
            $subJob->price = $request->get('price')[$i];
            $subJob->total = $request->get('qty')[$i] * $request->get('price')[$i];
            $subJob->save();
        }
        }
}
