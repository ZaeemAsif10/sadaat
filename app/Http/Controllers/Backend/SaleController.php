<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use App\Models\Product;
use App\Models\ProductSale;
use App\Models\Sale;
use App\Models\WareHouse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;

class SaleController extends Controller
{
    public function Sale()
    {
        $sale= Sale::with('ware')->get();
        // dd($sale);
        $warehouses = WareHouse::get();
                $warehouses = WareHouse::get();

        $products = Product::get();
        $ware_houses=WareHouse::get();
        $suppliers = Customer::get();

        return view('backend.pages.sales.sales', get_defined_vars());
    }

    public function SaleUpdate(Request $request,$id)
    {
        $sale_first= Sale::with('productsales')->where('id',$id)->first();
        //  dd($sale_first);
        $warehouses = WareHouse::get();
        $products = Product::get();
        $ware_houses=WareHouse::get();
        $suppliers = Customer::get();

        return view('backend.pages.sales.edit', get_defined_vars());
    }

    public function saleStore(Request $request){
    //    dd($request->all());
        $subJob = new Sale();
        $size = count($request->get('product_id'));
        $subJob->user_id = Auth::guard('admin')->user()->id;
        $subJob->warehouse_id = $request->warehouse_id;
        $subJob->item = $size;
        $subJob->total_qty=$request->total_quantity;
        $subJob->order_discount = $request->order_discount;
        $subJob->customer_id=$request->customer_id;
        $subJob->payment_status=$request->payment_status;
        $subJob->grand_total=$request->grand_total;
        $subJob->sale_status=$request->sale_status;
        $subJob->shipping_cost=$request->shipping_cost;
        $subJob->order_discount=$request->order_discount;

        if ($request->hasFile('document')) {
           
            $file = $request->file('document');
            $extension = $file->getClientOriginalExtension();
            $filename = time() . '.' . $extension;
            $file->move('storage/app/public/uploads/sale/', $filename);
            $subJob->document = $filename;
        }
        $subJob->save();
//         $value=Sale::where('id',$subJob->id)->first();
// $value->local_id=$subJob->id;
// $value->save();
        for ($i = 0; $i  < $size; $i++)
        {
            $Product_sale = new ProductSale();

            $Product_sale->sale_id = $subJob->id ;
            $Product_sale->product_id = $request->get('product_id')[$i];
            $Product_sale->product_code = $request->get('code')[$i];
            $Product_sale->product_name = $request->get('name')[$i];
            $Product_sale->product_total_price = $request->get('product_subtot')[$i];
            $Product_sale->product_qty = $request->get('qty')[$i];
            $Product_sale->product_unit_price = $request->get('price')[$i];
            $Product_sale->save();
        }
        return back()->with('message','Sale Add successfully');
        }



        public function saleStoreupdatedata(Request $request,$id){
            //    dd($request->all());

            // $delete_sale=Sale::where('local_id',$id);
            // $delete_sale->delete();
            $subJob=Sale::where('id',$id)->first();

                if($request->product_id==null )
                {
                    
                $subJob->user_id = Auth::guard('admin')->user()->id;
                $subJob->warehouse_id = $request->warehouse_id;
                $subJob->item = 0;
                $subJob->total_qty=$request->total_quantity;
                $subJob->order_discount = $request->order_discount;
                $subJob->customer_id=$request->customer_id;
                $subJob->payment_status=$request->payment_status;
                $subJob->grand_total=$request->grand_total;
                $subJob->sale_status=$request->sale_status;
                $subJob->shipping_cost=$request->shipping_cost;
                $subJob->order_discount=$request->order_discount;
        
                if ($request->hasFile('document')) {
                    $path = 'storage/app/public/uploads/sale/'.$subJob->document;
                    if(File::exists($path))
                    {
                        File::delete($path);
                    }
                    $file = $request->file('document');
                    $extension = $file->getClientOriginalExtension();
                    $filename = time() . '.' . $extension;
                    $file->move('storage/app/public/uploads/catagory/', $filename);
                    $subJob->document = $filename;
                }
                $subJob->save();

                    
                    $delete_sale=ProductSale::where('sale_id',$id);
                    $delete_sale->delete();
                      return redirect()->back()->with('message','Sale Add successfully');

                }
                else{
                $size = count($request->product_id );

                $subJob->user_id = Auth::guard('admin')->user()->id;
                $subJob->warehouse_id = $request->warehouse_id;
                $subJob->item = $size;
                $subJob->total_qty=$request->total_quantity;
                $subJob->order_discount = $request->order_discount;
                $subJob->customer_id=$request->customer_id;
                $subJob->payment_status=$request->payment_status;
                $subJob->grand_total=$request->grand_total;
                $subJob->sale_status=$request->sale_status;
                $subJob->shipping_cost=$request->shipping_cost;
                $subJob->order_discount=$request->order_discount;
        
                if ($request->hasFile('document')) {
                    $path = 'storage/app/public/uploads/sale/'.$subJob->document;
                    if(File::exists($path))
                    {
                        File::delete($path);
                    }
                    $file = $request->file('document');
                    $extension = $file->getClientOriginalExtension();
                    $filename = time() . '.' . $extension;
                    $file->move('storage/app/public/uploads/catagory/', $filename);
                    $subJob->document = $filename;
                }
                $subJob->save();
                $delete_sale=ProductSale::where('sale_id',$id);
                $delete_sale->delete();
                for ($i = 0; $i  < $size; $i++)
                {
                    $Product_sale = new ProductSale();
        
                    $Product_sale->sale_id = $subJob->id ;
                    $Product_sale->product_id = $request->get('product_id')[$i];
                    $Product_sale->product_code = $request->get('code')[$i];
                    $Product_sale->product_name = $request->get('name')[$i];
                    $Product_sale->product_total_price = $request->get('product_subtot')[$i];
                    $Product_sale->product_qty = $request->get('qty')[$i];
                    $Product_sale->product_unit_price = $request->get('price')[$i];
                    $Product_sale->save();
                }
                return redirect()->back()->with('message','Sale Add successfully');
            }
                }
}