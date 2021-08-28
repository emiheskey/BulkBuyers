@extends('admin.layout.master')

@section('bulk')

    <header id="topnav">

        @include('admin.partials.toplink')

        @include('admin.partials.adminnav')

    </header>

    <div class="wrapper">
            <div class="container-fluid">

                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box">
                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Bulk Buyers Connect</a></li>
                                    <li class="breadcrumb-item active">Offline Cart</li>
                                </ol>
                            </div>
                            <h4 class="page-title">Offline Cart</h4>
                        </div>
                    </div>
                </div>     
                <!-- end page title --> 

                <div class="row">

                    <div class="col-xl-12">
                        <div class="card-box">
                            <div class="dropdown float-right">
                                <a href="#" class="dropdown-toggle arrow-none card-drop" data-toggle="dropdown" aria-expanded="false">
                                    <i class="mdi mdi-dots-vertical"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Refresh</a>
                                </div>
                            </div>

                            <h4 class="header-title mt-0 mb-3">Offline Cart</h4>
                            <div class="row">
                                <div class="col-md-9 col-sm-9">
                                    <table id="offline" class="table table-striped table-bordered" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Product</th>
                                                <th>Price</th>
                                                <th>Quantity</th>
                                                <th>Subtotal</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php $total = 0 ?>
                                        @if(session('cart'))
                                            @foreach(session('cart') as $id => $details)
                                                <?php $total += $details['price'] * $details['quantity'] ?>

                                                <tr>
                                                    <td data-th="Product">
                                                        <div class="row">
                                                            <div class="col-sm-3 hidden-xs"><img src="{{ asset($details['photo']) }}" width="70" height="70" class="img-responsive"/></div>
                                                            <div class="col-sm-9">
                                                                <h4 class="nomargin">{{ $details['productname'] }} </h4>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td data-th="Price">${{ $details['price'] }}</td>
                                                    <td data-th="Quantity">
                                                        <input type="number" value="{{ $details['quantity'] }}" class="form-control quantity" />
                                                    </td>
                                                    <td data-th="Subtotal" class="text-center"> {{ $details['price'] * $details['quantity'] }}</td>
                                                    <td class="actions" data-th="">
                                                        <button class="btn btn-info btn-sm update-cart" data-id="{{ $id }}"><i class="fa fa-refresh"></i></button>
                                                        <button class="btn btn-danger btn-sm remove-from-cart" data-id="{{ $id }}"><i class="fa fa-trash-o"></i></button>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        @endif
            
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Product</th>
                                                <th>Price</th>
                                                <th>Quantity</th>
                                                <th>Subtotal</th>
                                                <th></th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                                <div class="col-md-3 col-sm-3">
                                    <h3>Your Cart</h3>
                                    <div class="offline-cart">
                                        <table class="table">
                                            <thead>
                                            <tr>
                                                <th>Products</th>
                                                <th>Price(N)</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="lead">
                                                    <td>Total Price</td>
                                                    <td>{{ $total  }}</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <a href="{{ url('app/admin/cart/invoice')}}" class="btn btn-danger btn-block">Place this order</a>
                                                    </td>
                                                </tr>
                                               
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div><!-- end col -->

                </div>
                <!-- end row -->        

            </div> <!-- end container -->
        </div>


@endsection

@section('footer')

@include('admin.partials.masterscripts')

<script type="text/javascript">
 
    $(".update-cart").click(function (e) {
       e.preventDefault();

       var ele = $(this);

        $.ajax({
           url: '{{ url("app/admin/cart/update-cart") }}',
           method: "patch",
           data: {_token: '{{ csrf_token() }}', id: ele.attr("data-id"), quantity: ele.parents("tr").find(".quantity").val()},
           success: function (response) {
               window.location.reload();
           }
        });
    });

    $(".remove-from-cart").click(function (e) {
        e.preventDefault();

        var ele = $(this);

        if(confirm("Are you sure")) {
            $.ajax({
                url: '{{ url("app/admin/cart/remove-from-cart") }}',
                method: "DELETE",
                data: {_token: '{{ csrf_token() }}', id: ele.attr("data-id")},
                success: function (response) {
                    window.location.reload();
                }
            });
        }
    });

</script>

@endsection
