<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use App\Models\Product;
use App\Models\Sale;
use App\Models\WareHouse;
use Illuminate\Http\Request;

class SaleController extends Controller
{
    public function Sale()
    {
        $sale = Sale::get();
        $ware_houses = WareHouse::get();
        $products = Product::get();
        $customers = Customer::get();
        return view('backend.pages.sales.sales', get_defined_vars());
    }
}
