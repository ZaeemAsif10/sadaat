@extends('backend.layouts.master')

@section('title')
    Customer
@endsection

@section('styles')
    <!-- Start datatable css -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css"
        href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css">
    <link rel="stylesheet" type="text/css"
        href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css">
@endsection


@section('admin-content')
    <style>
        #cus {
            padding: 6px 10px;
            margin: 0px -1px;
        }

        #cus1 {
            padding: 6px 10px;
            margin: 0px -1px;
        }
    </style>
    <!-- page title area start -->
    <div class="page-title-area">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <div class="breadcrumbs-area clearfix">
                    <h5 class="page-title pull-left">Add Purchase</h5>
                    <ul class="breadcrumbs pull-left">
                        <li><a href="{{ route('admin.dashboard') }}">Dashboard</a></li>
                        <li><span>Add Purchase</span></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-6 clearfix">
                @include('backend.layouts.partials.logout')
            </div>
        </div>
    </div>
    <!-- page title area end -->

    <div class="main-content-inner">
        <!-- data table start -->
        <form action="" method="POST" enctype="multipart/form-data">
            <div class="card mt-5">
                <div class="card-body">
                    <h4 class="">Add Purchase</h4>
                    <div class="row mt-4">
                        <div class="col-md-6">
                            <label for="">Warehouse </label>
                            <select name="warehouse_id" id="cus" class="form-control" required>
                                <option value="" selected disabled>Choose Warehouse</option>
                                @foreach ($warehouses as $warehouse)
                                    <option value="{{ $warehouse->id }}">{{ $warehouse->wareh_name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label for="">Supplier </label>
                            <select name="supplier_id" id="cus1" class="form-control" required>
                                <option value="" selected disabled>Choose Supplier</option>
                                @foreach ($suppliers as $supplier)
                                    <option value="{{ $supplier->id }}">{{ $supplier->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-md-6 mt-3">
                            <label for="">Purchase Status </label>
                            <select name="supplier_id" id="cus1" class="form-control">
                                <option value="" selected disabled>Choose Status</option>
                                <option value="1">Received</option>
                                <option value="2">Partial</option>
                                <option value="3">Pending</option>
                                <option value="4">Ordered</option>
                            </select>
                        </div>

                        <div class="col-md-6 mt-3">
                            <label for="">Attach Document </label>
                            <input type="file" name="document" class="form-control" required>
                        </div>

                        <div class="col-md-12 mt-3">
                            <label for="">Select Product </label>
                            <select name="product" id="cus1" class="form-control">
                                <option value="" selected disabled>Choose Product</option>
                                <option value="1">Product 1</option>
                                <option value="2">Product 2</option>
                                <option value="3">Product 3</option>
                                <option value="4">Product 4</option>
                            </select>
                        </div>

                        <div class="col-md-12 mt-3">
                        <table class="table ">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Code</th>
                                    <th>Quantity</th>
                                    <th>Net Unit Cost</th>
                                    <th>Discount</th>
                                    <th>Tax</th>
                                    <th>SubTotal</th>
                                    <th class="text-danger"><i class="fa fa-trash" aria-hidden="true"></i></th>
                                </tr>
                            </thead>
                        </table>
                    </div>

                        <div class="col-md-6 mt-3">
                            <label for="">Discount </label>
                            <input type="text" name="order_discount" class="form-control" required>
                        </div>

                        <div class="col-md-6 mt-3">
                            <label for="">Shipping Cost </label>
                            <input type="text" name="shipping_cost" class="form-control" required>
                        </div>

                        <div class="col-md-12 mt-3">
                            <label for="">Note </label>
                            <textarea name="note" cols="30" rows="5" class="form-control"></textarea>
                        </div>
                        <div class="col-md-12 mt-3">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>

                    <table class="table mt-4 table-bordered">
                        <thead>
                            <tr>
                                <th>Items  <span class="float-right text-secondary">0.00</span></th>
                                <th>Total <span class="float-right text-secondary">0.00</span></th>
                                <th>Order Tax <span class="float-right text-secondary">0.00</span></th>
                                <th>Order Discount <span class="float-right text-secondary">0.00</span></th>
                                <th>Shipping Cost <span class="float-right text-secondary">0.00</span></th>
                                <th>Grand Total <span class="float-right text-secondary">0.00</span></th>
                            </tr>
                        </thead>
                    </table>

                </div>
            </div>
        </form>

        <!-- data table end -->


    </div>
@endsection



@section('scripts')
    <!-- Start datatable js -->
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js"></script>

    <script>
        /*================================
                                                                datatable active
                                                                ==================================*/
        if ($('#dataTables').length) {
            $('#dataTables').DataTable({});
        }
    </script>
@endsection
