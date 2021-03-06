 <!-- sidebar menu area start -->
 @php
     $usr = Auth::guard('admin')->user();
 @endphp
 <div class="sidebar-menu">
     <div class="sidebar-header">
         <div class="logo">
             <a href="{{ route('admin.dashboard') }}">
                 <h2 class="text-white">Admin</h2>
             </a>
         </div>
     </div>
     <div class="main-menu">
         <div class="menu-inner">
             <nav>
                 <ul class="metismenu" id="menu">

                     @if ($usr->can('dashboard.view'))
                         <li class="active">
                             <a href="javascript:void(0)" aria-expanded="true"><i
                                     class="ti-dashboard"></i><span>dashboard</span></a>
                             <ul class="collapse">
                                 <li class="{{ Route::is('admin.dashboard') ? 'active' : '' }}"><a
                                         href="{{ route('admin.dashboard') }}">Dashboard</a></li>
                             </ul>
                         </li>
                     @endif


                     @if ($usr->can('role.create') || $usr->can('role.view') || $usr->can('role.edit') || $usr->can('role.delete') || $usr->can('admin.create') || $usr->can('admin.view') || $usr->can('admin.edit') || $usr->can('admin.delete'))
                         <li>
                             <a href="javascript:void(0)" aria-expanded="true"><i class="fa fa-tasks"></i><span>
                                     Settings
                                 </span></a>
                             <ul
                                 class="collapse {{ Route::is('admin.roles.create') || Route::is('admin.roles.index') || Route::is('admin.roles.edit') || Route::is('admin.roles.show') ? 'in' : '' }}">
                                 @if ($usr->can('role.view'))
                                     <li
                                         class="{{ Route::is('admin.roles.index') || Route::is('admin.roles.edit') ? 'active' : '' }}">
                                         <a href="{{ route('admin.roles.index') }}">All Roles</a>
                                     </li>
                                 @endif
                                 @if ($usr->can('role.create'))
                                     <li class="{{ Route::is('admin.roles.create') ? 'active' : '' }}"><a
                                             href="{{ route('admin.roles.create') }}">Create Role</a></li>
                                 @endif


                                 @if ($usr->can('admin.view'))
                                     <li
                                         class="{{ Route::is('admin.admins.index') || Route::is('admin.admins.edit') ? 'active' : '' }}">
                                         <a href="{{ route('admin.admins.index') }}">All Users</a>
                                     </li>
                                 @endif

                                 @if ($usr->can('admin.create'))
                                     <li class="{{ Route::is('admin.admins.create') ? 'active' : '' }}"><a
                                             href="{{ route('admin.admins.create') }}">Create User</a></li>
                                 @endif
                                 @if ($usr->can('admin.create'))
                                     <li class="{{ Route::is('admin.warehouse') ? 'active' : '' }}"><a
                                             href="{{ route('admin.warehouse') }}">Warehouses</a></li>
                                 @endif

                                 @if ($usr->can('admin.create'))
                                     <li class="{{ Route::is('admin.brand') ? 'active' : '' }}"><a
                                             href="{{ route('admin.brand') }}">Brands</a></li>
                                 @endif

                                 @if ($usr->can('admin.create'))
                                     <li class="{{ Route::is('create.customer.group') ? 'active' : '' }}"><a
                                             href="{{ route('create.customer.group') }}">Customer Group</a></li>
                                 @endif

                                 @if ($usr->can('admin.create'))
                                     <li class="{{ Route::is('admin.unit') ? 'active' : '' }}"><a
                                             href="{{ route('admin.unit') }}">Unit</a></li>
                                 @endif
                             </ul>

                         </li>
                     @endif


                     @if ($usr->can('role.create') || $usr->can('role.view') || $usr->can('role.edit') || $usr->can('role.delete') || $usr->can('admin.create') || $usr->can('admin.view') || $usr->can('admin.edit') || $usr->can('admin.delete'))
                         <li>
                             <a href="javascript:void(0)" aria-expanded="true"><i class="fa fa-tasks"></i><span>
                                     People
                                 </span></a>
                             <ul
                                 class="collapse {{ Route::is('admin.roles.create') || Route::is('admin.roles.index') || Route::is('admin.roles.edit') || Route::is('admin.roles.show') ? 'in' : '' }}">

                                 @if ($usr->can('admin.create'))
                                     <li class="{{ Route::is('create.supplier') ? 'active' : '' }}"><a
                                             href="{{ route('create.supplier') }}">Supplier</a></li>
                                 @endif

                                 @if ($usr->can('admin.create'))
                                     <li class="{{ Route::is('create.customer') ? 'active' : '' }}"><a
                                             href="{{ route('create.customer') }}">Customer</a></li>
                                 @endif
                             </ul>

                         </li>
                     @endif

                     @if ($usr->can('role.create') || $usr->can('role.view') || $usr->can('role.edit') || $usr->can('role.delete') || $usr->can('admin.create') || $usr->can('admin.view') || $usr->can('admin.edit'))
                         <li
                             class=" active {{ Route::is('admin.product') || Route::is('admin.sale') || Route::is('admin.catagory') ? 'in' : '' }}">
                             <a href="javascript:void(0)" aria-expanded="true"><i class="fa fa-tasks"></i><span> Product
                                 </span></a>
                             <ul
                                 class="collapse {{ Route::is('admin.product') || Route::is('admin.sale') || Route::is('admin.catagory') ? 'in' : '' }}">

                                 @if ($usr->can('admin.create'))
                                     <li class="{{ Route::is('admin.product') ? 'active' : '' }}"><a
                                             href="{{ route('admin.product') }}">Products</a></li>


                                     <li class="{{ Route::is('admin.catagory') ? 'active' : '' }}"><a
                                             href="{{ route('admin.catagory') }}">Catagory</a></li>


                                     <li class="{{ Route::is('admin.sale') ? 'active' : '' }}"><a
                                             href="{{ route('admin.sale') }}">Sale</a></li>

                                     <li class="{{ Route::is('pos') ? 'active' : '' }}"><a
                                             href="{{ route('pos') }}">POS</a></li>
                                 @endif
                             </ul>

                         </li>
                     @endif

                     @if ($usr->can('role.create') || $usr->can('role.view') || $usr->can('role.edit') || $usr->can('role.delete') || $usr->can('admin.create') || $usr->can('admin.view') || $usr->can('admin.edit') || $usr->can('admin.catagory'))
                         <li>
                             <a href="javascript:void(0)" aria-expanded="true"><i class="fa fa-tasks"></i><span>
                                     Purchase </span></a>
                             <ul
                                 class="collapse {{ Route::is('admin.roles.create') || Route::is('admin.roles.index') || Route::is('admin.roles.edit') || Route::is('admin.roles.show') ? 'in' : '' }}">

                                 @if ($usr->can('admin.create'))
                                     <li class="{{ Route::is('purchase') ? 'active' : '' }}"><a
                                             href="{{ route('purchase') }}"> Purchase</a></li>
                                 @endif
                             </ul>

                         </li>
                     @endif

                 </ul>
             </nav>
         </div>
     </div>
 </div>
 <!-- sidebar menu area end -->
