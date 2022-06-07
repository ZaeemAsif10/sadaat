<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Customer_group;
use Illuminate\Http\Request;

class CustomerGroupController extends Controller
{
    public function createCustomerGroup()
    {
        return view('backend.pages.customer_group.index');
    }

    public function getCustomerGroup()
    {
        $customer_group = Customer_group::all();
        return $customer_group;
    }
}
