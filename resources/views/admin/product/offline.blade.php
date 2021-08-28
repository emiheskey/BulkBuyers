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
                                    <li class="breadcrumb-item active">Offline Orders</li>
                                </ol>
                            </div>
                            <h4 class="page-title">Offline Orders</h4>
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

                            <h4 class="header-title mt-0 mb-3">All Products</h4>
                            <div class="row">
                                <div class="col-md-9 col-sm-9">
                                    <table id="offline" class="table table-striped table-bordered" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Product Name</th>
                                                <th>Description</th>
                                                <th>Price</th>
                                                <th>Quantity</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php $count = 0 ?>
                                        @forelse($products as $key => $list)
                                            <tr>
                                                <td>{{$list->productname}}</td>
                                                <td>{{$list->description}}</td>
                                                <td>{{number_format($list->price)}}</td>
                                                <td>
                                                    <form id='myform' method='POST' action='#'>
                                                        <input type='button' value='-' class='qtyminus' field='qty' name='' id='' />
                                                        <input type='text' name='qty' value='1' class='qty' name='' id='' />
                                                        <input type='button' value='+' class='qtyplus' field='qty' name='' id='' />
                                                    </form>
                                                </td>
                                                <td>
                                                    <a href="{{ url('app/admin/cart/add-to-cart/'.$list->productid) }}" class="btn btn-success btn-block text-center" role="button">ADD</a>
                                                </td>
                                            </tr>
                                            @empty
                                    <tr><div class="alert alert-danger text-center"> No product record exits at the moment</div></tr>
                                            @endforelse
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Product Name</th>
                                                <th>Description</th>
                                                <th>Price(N)</th>
                                                <th>Quantity</th>
                                                <th>Total</th>
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
                                                <tr>
                                                    <td>
                                                        Irish Potato - One-eighth of a sack
                                                        <p>
                                                        2.5 plastic basket <span>x2</span>
                                                        </p>
                                                    </td>
                                                    <td>8,200 <a href="#" class="btn-danger btn btn-xs"> <i class="fa fa-close"></i></a></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Tomatoes
                                                        <p>
                                                        1 plastic basket <span>x2</span>
                                                        </p>
                                                    </td>
                                                    <td>8,200 <a href="#" class="btn-danger btn btn-xs"> <i class="fa fa-close"></i></a></td>
                                                </tr>
                                                <tr class="lead">
                                                    <td>Total Price</td>
                                                    <td>16,200</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <a href="off-line-invoice.html" class="btn btn-danger btn-block">Place this order</a>
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

@endsection
