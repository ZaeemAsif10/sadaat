<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Purchase;
use App\Models\Supplier;
use App\Models\WareHouse;
use App\Models\Admin;
use App\Models\Purchase_product;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PurchaseController extends Controller
{
    public $user;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->user = Auth::guard('admin')->user();
            return $next($request);
        });
    }

    public function index()
    {
        $purchases = Purchase::all();
        $purchase_products = Purchase_product::all();
        return view('backend.pages.purchase.index', get_defined_vars());
    }

    public function createPurchase()
    {
        $warehouses = WareHouse::all();
        $suppliers = Supplier::all();
        $products = Product::all();
        return view('backend.pages.purchase.create', get_defined_vars());
    }

    public function getProductDetail(Request $request)
    {
        $data = Product::where('id', $request->product_id)->first();
        return $data;
    }

    public function storPurchase(Request $request)
    {
        $user_id =  Auth::guard('admin')->user()->id;
        $size = count($request->product_id);

<<<<<<< HEAD
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
=======
        $purchase = new Purchase();
        $purchase->user_id = $user_id;
        $purchase->warehouse_id = $request->warehouse_id;
        $purchase->supplier_id = $request->supplier_id;
        $purchase->payment_status = $request->payment_status;
        $purchase->order_discount = $request->order_discount;
        $purchase->shipping_cost = $request->shipping_cost;
        $purchase->note = $request->note;
        $purchase->total_qty = $request->total_qty;
        $purchase->total_cost = $request->total_cost;
        $purchase->order_discount = $request->order_discount;
        $purchase->shipping_cost = $request->shipping_cost;
        $purchase->grand_total = $request->grand_total;
        $purchase->due_ammount = $request->grand_total;
        $purchase->item = $request->item;
        $purchase->status = "0";

        if ($request->hasFile('document')) {

            $file = $request->file('document');
            $extension = $file->getClientOriginalExtension();
            $filename = time() . '.' . $extension;
            $file->move('storage/app/public/uploads/document/', $filename);
            $purchase->document = $filename;
        }

        $purchase->save();


        for ($i = 0; $i < $size; $i++) {

            $pur = new Purchase_product();
            $pur->product_id = $request->product_id[$i];
            $pur->name = $request->name[$i];
            $pur->code = $request->code[$i];
            $pur->qty = $request->qty[$i];
            $pur->net_unit_cost = $request->net_unit_cost[$i];
            $pur->total = $request->total[$i];
            $pur->save();
        }

        return back()->with('message', 'Purchase Added successfully');
    }
>>>>>>> c5909d8b1d412ca1254d9415bdf1643db9d6e313
}
