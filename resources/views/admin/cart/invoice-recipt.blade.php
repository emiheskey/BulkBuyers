@extends('admin.layout.master')

@section('bulk')

    <header id="topnav">

        @include('admin.partials.toplink')

        @include('admin.partials.adminnav')

    </header>

        <!-- ============================================================== -->
        <!-- Start Page Content here -->
        <!-- ============================================================== -->

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
                            <h4 class="page-title">Offline Order Invoice</h4>
                        </div>
                    </div>
                </div>     
                <!-- end page title --> 

                <div class="row">

                    <div class="col-xl-12">
                        <div class="card-box">
                            <!-- <div class="panel-heading">
                                <h4>Invoice</h4>
                            </div> -->
                            <div class="panel-body">
                                <div class="clearfix">
                                    <div class="float-left mt-3">
                                        <h3>Your Customer</h3>
                                        <p>Please provide Customer's detail</p>
                                    </div>
                                </div>
                                <hr>
                                <section class="invoice">
                                    <!-- title row -->
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <h2 class="page-header">
                                                <i class="fa fa-globe"></i> Bulk Buyers Connect<br>
                                                
                                            </h2>
                                            <p class="pull-right">Date: 2021/01/09</p>
                                        </div><!-- /.col -->
                                    </div>
                                    <!-- info row -->
                                    <div class="row invoice-info">
                                        <div class="col-sm-4 invoice-col">
                                            From
                                            <address>
                                                <strong>
                                                Bulk Buyers Connect</strong><br>
                                                Address: Wuse 2 <br>
                                                Phone:
                                                123456789 <br>
                                                admin@bulkbuyersconnect.com 
                                            </address>
                                        </div><!-- /.col -->
                                        <div class="col-sm-4 invoice-col">
                                            To
                                            <address>
                                                <strong> {{ $request->fname }} {{ $request->lname}} </strong> <br>
                                                Address:
                                                {{ $request->address}} <br>
                                                Phone:
                                                {{ $request->phone}} <br>
                                                Email: {{ $request->email }}
                                            </address>
                                        </div><!-- /.col -->
                                        <div class="col-sm-4 invoice-col">
                                            <b>Invoice #007612</b><br>
                                            <br>
                                            <b>Order ID:</b> 4F3S8J<br>
                                            <b>Payment Due:</b> 2/22/2014<br>
                                            <b>Account Details:</b> Bulk Buyers Connect Limited.<br>
                                            Union Bank 0146856636<br>
                                            Stanbic IBTC 0029618957<br>
                                        </div><!-- /.col -->
                                    </div><!-- /.row -->
            
                                    <!-- Table row -->
                                    <div class="row">
                                        <div class="col-xs-12 table-responsive">
                                            <table class="table table-striped">
                                                <thead>
                                                    <tr>
                                                        <th>Qty</th>
                                                        <th>Product</th>
                                                         <th>Price</th>
                                                        <th>Sub Total</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php $total = 0 ?>
                                                    @if(session('cart'))
                                                        @foreach(session('cart') as $id => $details)
                                                            <?php $total += $details['price'] * $details['quantity'] ?>
                                                            <tr>
                                                                <td>{{ $details['quantity']}}</td>
                                                                <td> {{ $details['productname']}}</td>
                                                                <td>{{ $details['price']}}</td>
                                                                <td>{{ $details['price'] * $details['quantity'] }}</td>
                                                            </tr>
                                                        @endforeach
                                                    @endif
                                                </tbody>
                                            </table>
                                        </div><!-- /.col -->
                                    </div><!-- /.row -->
            
                                    <div class="row">
                                        <!-- accepted payments column -->
                                        <div class="col-md-12">
                                            <p class="lead">Amount Due 2/22/2014</p>
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <tbody>
                                                        <tr>
                                                            <th>Total:</th>
                                                            <td> {{ $total}}</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div><!-- /.col -->
                                    </div><!-- /.row -->
            
                                    <!-- this row will not appear when printing -->
                                    <div class="row no-print">
                                        <div class="col-xs-12">
                                            <a href="" class="btn btn-secondary mr-2"><i class="fa fa-print"></i> Print</a>
                                            <button class="btn btn-success pull-right mr-2"><i class="fa fa-credit-card"></i> Submit Payment</button>
                                            <button class="btn btn-primary pull-right" style="margin-right: 5px;"><i class="fa fa-download"></i> Generate PDF</button>
                                            <a href="{{ route('offline.cart-clear') }}" class="btn btn-danger mr-2"><i class="fa fa-trash"></i> Clear Cart</a>
                                        </div>
                                    </div>
                                </section>
                                <div class="clearfix">
                                </div>

                            </div>
                        </div>
                        
                    </div><!-- end col -->

                </div>
                <!-- end row -->     

            </div> <!-- end container -->
        </div>
        <!-- end wrapper -->


@endsection

@section('footer')

@include('admin.partials.masterscripts')

@endsection
