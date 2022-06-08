<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Supplier;
use App\Models\WareHouse;
use Illuminate\Http\Request;

class PurchaseController extends Controller
{
    public function createPurchase()
    {
        $warehouses = WareHouse::all();
        $suppliers = Supplier::all();
        return view('backend.pages.purchase.create', get_defined_vars());
    }
}
