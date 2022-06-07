<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <title>@yield('title', 'Laravel Role Admin')</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    @include('backend.layouts.partials.styles')
    @yield('styles')
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- preloader area start -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- preloader area end -->
    <!-- page container area start -->
    <div class="page-container">

       @include('backend.layouts.partials.sidebar')

        <!-- main content area start -->
        <div class="main-content">
            @include('backend.layouts.partials.header')
            @yield('admin-content')
        </div>
        <!-- main content area end -->
        @include('backend.layouts.partials.footer')
    </div>
    <!-- page container area end -->

    @include('backend.layouts.partials.offsets')
    @include('backend.layouts.partials.scripts')
    {{-- <script>
        $(document).ready(function(){
          
       $('.multipledepartment').select2({
        dropdownAutoWidth: true,
        multiple: true,
        width: '100%',
        height: '30px',
        placeholder: "Select multiple department",
        allowClear: true
    });
            $("#contact").inputmask({ mask: "(999) 999-9999" });
    $(":input").inputmask();
                        $('.summernote').summernote({
                    height: 150,
                });
            $(function () {
                $(".datepicker").datepicker({
                    autoclose: true,
                    todayHighlight: true,
                    startDate: '-0m',
                    minDate: 0,
                });
            });
            var deleteID = document.querySelectorAll(".alert-confirm");
            deleteID.forEach(function(e) {
                e.addEventListener("click", function(event) {
                    event.preventDefault();
                    $url=$(this).attr("href");
                    swal({
                        title: 'Are you sure?',
                        text: 'You want be to do this?',
                        icon: "warning",
                        buttons: true,
                        dangerMode: true,
                        })
                        .then((willDelete) => {
                        if (willDelete) {
                            window.location.href = $url;
                        }
    
                        });
                });
                });
            });
        </script>
        <script>
               @if(session('message'))
                toastr.success("{{ session('message') }}");
            @elseif(session('error'))
                toastr.error("{{ session('error') }}");
            @endif
            $('.dropify').dropify();
        </script>
        <script>
    
    
      function myFunction() {
          if(!confirm("Are You Sure to delete this"))
          event.preventDefault();
      }
            
            function deleteAlert(url) {
                Swal.fire({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    type: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                    if (result.value) {
                        location.href = url;
                    }
                });
            }
            function unblockAlert(url) {
                Swal.fire({
                    title: 'Are you sure?',
                    text: "You want to Activate!",
                    type: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, activate it!'
                }).then((result) => {
                    if (result.value) {
                        location.href = url;
                    }
                });
            }
            
        </script>
      
      <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js"></script>
    <script type="text/javascript">
     
         $('.show_confirm').click(function(event) {
              var form =  $(this).closest("form");
              var name = $(this).data("name");
              event.preventDefault();
              swal({
                  title: `Are you sure you want to delete this record?`,
                  text: "If you delete this, it will be gone forever.",
                  icon: "warning",
                  buttons: true,
                  dangerMode: true,
              })
              .then((willDelete) => {
                if (willDelete) {
                  form.submit();
                }
              });
          });
      
    </script> --}}
    @yield('scripts')
</body>

</html>
