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
                                    <li class="breadcrumb-item active">Shipping Fee</li>
                                </ol>
                            </div>
                            <h4 class="page-title">Shipping Fees</h4>
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
                                        <h3>Add a shipping category</h3>
                                    </div>
                                </div>
                                <hr>
                                @if(count($errors) > 0)
                                <div class="alert  alert-danger alert-dismissible fade show" role="alert">
                                    <span class="badge badge-pill badge-error"> <strong >Error</strong> </span>
                                    <ol class="p-2">
                                        @foreach ($errors->all() as $error)
                                        <li> {{ $error }} </li>
                                        @endforeach
                                    </ol>
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                            @endif
                            @if (session()->has('success'))
                                <div class="alert alert-success" role="alert">
                                    {{ session('success') }}
                                </div>
                            @endif
                                <form class="bg-light p-3" method="post" action="{{ route('offline.create-fee') }}" style="border-radius: 5px;">
                                    @csrf
                                    <div class="form-row">
                                      <div class="form-group col-md-6">
                                        <label for="name">Name</label>
                                        <input type="text" class="form-control" id="name" name="name">
                                      </div>
                                      <div class="form-group col-md-6">
                                        <label for="inputState">State</label>
                                        <select id="inputState" name="state" class="form-control">
                                          <option value="Abuja" selected>Abuja</option>
                                        </select>
                                      </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-8">
                                            <label for="zone">Zones</label>
                                            <select id="zones" name="zones[]" multiple>
                                                <option value="Maitama">Maitama</option>
                                                <option value="Wuse 2">Wuse 2</option>
                                                <option value="Asokoro">Asokoro</option>
                                                <option value="Kado">Kado</option>
                                                <option value="Karshi">Karshi</option>
                                                <option value="Gwarimpa">Gwarimpa</option>
                                              </select>
                                          </div>
                                    <div class="form-group col-md-4">
                                        <label for="lname">Fee (In Naira)</label>
                                        <input type="text" class="form-control" placeholder="1,000" id="fee" name="fee">
                                    </div>

                                    </div>
                                    <button class="btn btn-success btn-md"><i class="mdi mdi-plus"></i>Add</button>
                                  </form>
                                <div class="clearfix">
                                    <div class="float-left text-center mt-3">
                                        <h3>All Shipping categories</h3>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-responsive table-striped">
                                            <table class="table mt-2">
                                                <thead>
                                                <tr><th>#</th>
                                                    <th>Name</th>
                                                    <th>State</th>
                                                    <th>Fee (NGN)</th>
                                                    <th>Zones</th>
                                                    <th></th>
                                                </tr></thead>
                                                <tbody>
                                                    @foreach ($fees as $fee)
                                                        <tr>
                                                            <td>1</td>
                                                            <td>{{ $fee->name }}</td>
                                                            <td>{{  $fee->state }}</td>
                                                            <td>{{ $fee->fee }}</td>
                                                            <td>{{ $fee->zones }}</td>
                                                            <td>
                                                                <a href="{{ route('offline.edit-fee', $fee->id) }}" class="btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
                                                                <a href="{{ route('offline.delete-fee', $fee->id) }}" class="btn btn-danger btn-sm"><i class="fa fa-close" id="sa-params"></i></a>
                                                            </td>
                                                        </tr>
                                                    @endforeach
                                                </tbody>
                                            </table>
                                        </div>
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
@section('scripts')
<script>
    $(document).ready(function() {
    $('#offline').DataTable();
} );
</script>
<script src="assets/js/increment.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slim-select/1.18.10/slimselect.min.js"></script>
<script>
    $(document).ready(function() {
        var x = new SlimSelect({
        select: '#zones'
        });
        });

</script>s
@endsection
