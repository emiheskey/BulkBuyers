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
                                <form class="bg-light p-3" style="border-radius: 5px;">
                                    <div class="form-row">
                                      <div class="form-group col-md-6">
                                        <label for="fname">First Name</label>
                                        <input type="text" class="form-control" id="fname" name="fname">
                                      </div>
                                      <div class="form-group col-md-6">
                                        <label for="lname">Last Name</label>
                                        <input type="text" class="form-control" id="lname" name="lname">
                                      </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                          <label for="email">Email</label>
                                          <input type="email" class="form-control" id="email" name="email">
                                        </div>
                                        <div class="form-group col-md-6">
                                          <label for="phone">Phone</label>
                                          <input type="text" class="form-control" id="phone" name="phone">
                                        </div>
                                      </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-8">
                                            <label for="inputAddress">Address</label>
                                            <input type="text" class="form-control" id="inputAddress" name="address" placeholder="1234 Main St, Wuse">
                                          </div>
                                    <div class="form-group col-md-2">
                                        <label for="inputown">Town</label>
                                        <select id="inputown" class="form-control" name="town">
                                            <option value="Asokoro" selected>Asokoro</option>
                                            <option value="Wuse 2" selected>Wuse 2</option>
                                            <option value="Garki" selected>Garki</option>
                                        </select>
                                    </div>
                                      <div class="form-group col-md-2">
                                        <label for="inputState">State</label>
                                        <select id="inputState" class="form-control" name="state">
                                          <option value="Abuja" selected>Abuja</option>
                                        </select>
                                      </div>
                                    </div>
                                  </form>
                                <div class="clearfix">
                                    <div class="float-left text-center mt-3">
                                        <h3>Your Customer's Order</h3>
                                        <p>Please review order before submiting</p>
                                    </div>
                                </div>
                                <hr>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive table-striped">
                                            <table class="table mt-2">
                                                <thead>
                                                <tr><th>#</th>
                                                    <th>Item</th>
                                                    <th>Description</th>
                                                    <th>Quantity</th>
                                                    <th>Unit Cost (NGN)</th>
                                                    <th>Total (NGN)</th>
                                                </tr></thead>
                                                <tbody>
                                                    <?php $total = 0 ?>
                                                        @if(session('cart'))
                                                            @foreach(session('cart') as $id => $details)
                                                                <?php $total += $details['price'] * $details['quantity'] ?>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>{{ $details['productname'] }}</td>
                                                                    <td>{{ $details['desc'] }}</td>
                                                                    <td>{{ $details['quantity'] }}</td>
                                                                    <td>{{ $details['price'] }}</td>
                                                                    <td>{{ $details['price'] * $details['quantity'] }}</td>
                                                                </tr>
                                                            @endforeach
                                                        @endif
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xl-6 col-6">
                                    </div>
                                    <div class="col-xl-3 col-6 offset-xl-3">
                                        <p class=""><b>Sub-total:</b> {{ $total }}</p>
                                        <!--<p class="text-right">Discout: 9%</p>
                                        <p class="text-right">VAT: 7.5%</p>-->
                                        <hr>
                                        <div class="form-group row">
                                            <label for="inputPassword" class="col-sm-2 col-form-label">Discount</label>
                                            <div class="col-sm-6">
                                                <div class="col-auto">
                                                    <label class="sr-only" for="inlineFormInputGroup">Discount</label>
                                                    <div class="input-group mb-2">
                                                      <div class="input-group-prepend">
                                                        <div class="input-group-text">%</div>
                                                      </div>
                                                      <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="00.0">
                                                    </div>
                                                  </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <a href="#" class="btn btn-secondary">Apply</a>
                                            </div>
                                          </div>
                                          <h3 class="">Total: N{{ $total }}</h3>
                                          <p>
                                              <a href="offlineinvoice.html" class="btn btn-success btn-block btn-lg"><i class="mdi mdi-cart"></i> Generate Invoice</a>
                                          </p>
                                    </div>
                                </div>
                                <hr>
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
