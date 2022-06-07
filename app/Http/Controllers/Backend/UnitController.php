<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Unit;
use Illuminate\Http\Request;

class UnitController extends Controller
{
    public function WareHouse()
    {
        $Unit = Unit::get();
        return view('backend.pages.unit.unit', get_defined_vars());
    }
}
