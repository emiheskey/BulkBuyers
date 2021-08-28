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
                                <li class="breadcrumb-item"><a href="{{url('/')}}">Bulk Buyers Connect</a></li>
                                <li class="breadcrumb-item active"><a href="{{route('list.category')}}">All Product Category</a></li>
                                <li class="breadcrumb-item active">Edit/View product</li>
                            </ol>
                        </div>
                        <h4 class="page-title">Edit/View Product</h4>
                    </div>
                </div>
            </div>
            <!-- end page title -->

            <div class="row">
                <div class="col-8">
                    <div class="card-box">
                        <h4 class="m-t-0 header-title">Category Information</h4>

                        <div class="row">
                            <div class="col-12">
                                <div class="p-2">
                                    <form class="form-horizontal" enctype="multipart/form-data" role="form" method="POST" action="{{route('edit.category.post',['id'=>$detail->prodcatid])}}">
                                        @csrf
                                        @if ($message = Session::get('success'))

                                            <div class="alert alert-success alert-block">

                                                <button type="button" class="close" data-dismiss="alert">×</button>

                                                <strong>{{ $message }}</strong>

                                            </div>
                                        @endif
                                        @if (count($errors) > 0)
                                            <div class="alert alert-danger">
                                                <ul>
                                                    @foreach ($errors->all() as $error)
                                                        <li>{{ $error }}</li>
                                                    @endforeach
                                                </ul>
                                            </div>
                                        @endif
                                        <div class="form-group row">
                                            <label class="col-sm-2  col-form-label" for="simpleinput">Category Name</label>
                                            <div class="col-sm-10">
                                                <input type="text" id="prodcatname" name="prodcatname" class="form-control" value="{{$detail->prodcatname}}">
                                                @error('prodcatname')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-2  col-form-label" for="example-placeholder">Description</label>
                                            <div class="col-sm-10">
                                                <input type="text" id="description" class="form-control" required name="description" value="{{ old('description') }}">
                                                @error('description')
                                                <span class="invalid-feedback" role="alert">
                                                    <strong>{{ $message }}</strong>
                                                </span>
                                                @enderror

                                            </div>
                                        </div>


{{--                                        <div class="form-group row">--}}
{{--                                            <label class="col-sm-2  col-form-label" for="example-fileinput">Product image</label>--}}
{{--                                            <div class="col-sm-10">--}}
{{--                                                <img src="{{asset($detail->productcatimg)}}" width="200" class="img-fluid rounded-circle img-thumbnail">--}}
{{--                                                <h4>Change Image</h4>--}}
{{--                                                <input type="file" class="form-control" id="productcatimg" name="productcatimg">--}}
{{--                                                @error('productcatimg')--}}
{{--                                                    <span class="invalid-feedback" role="alert">--}}
{{--                                                        <strong>{{ $message }}</strong>--}}
{{--                                                    </span>--}}
{{--                                                @enderror--}}

{{--                                            </div>--}}
{{--                                        </div>--}}

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Status</label>
                                            <div class="col-md-10">
                                                <label>Disable</label>
                                                <input type="radio" disabled name="status" value="0" @if(!$detail->status)checked @endif data-plugin="switchery" data-color="#00b19d" data-size="large" />
                                                <b>Enable</b>
                                                <input type="radio" disabled value="1" name="status" @if($detail->status)checked @endif data-plugin="switchery" data-color="#00b19d" data-size="large" />

                                            </div>
                                        </div>
                                        <div class="form-group row mt-4">
                                            <button class="btn btn-success btn-rounded btn-lg">Save Category</button>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="card-box">
                        <h4 class="m-t-0 header-title">Update Category Image</h4>

                        <div class="row">
                            <div class="col-12">
                                <div class="p-2">
                                    <form class="form-horizontal" enctype="multipart/form-data" role="form" method="POST" action="{{route('edit.category.post',['id'=>$detail->prodcatid])}}">
                                        @csrf
                                        <input type="hidden" name="prodcatid" value="{{$detail->prodcatid}}">
                                        @if ($message = Session::get('successs'))

                                            <div class="alert alert-success alert-block">

                                                <button type="button" class="close" data-dismiss="alert">×</button>

                                                <strong>{{ $message }}</strong>

                                            </div>
                                        @endif
                                        @if (count($errors) > 0)
                                            <div class="alert alert-danger">
                                                <ul>
                                                    @foreach ($errors->all() as $error)
                                                        <li>{{ $error }}</li>
                                                    @endforeach
                                                </ul>
                                            </div>
                                        @endif


                                        <div class="form-group row">

                                            <div class="col-sm-10">
                                                <img src="{{asset($detail->productcatimg)}}" width="120" class="img-fluid rounded-circle img-thumbnail">
                                                <h4>Change Image</h4>
                                                <input type="file" class="form-control" id="productcatimg" name="productcatimg">
                                                @error('productcatimg')
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                                                @enderror

                                            </div>
                                        </div>

                                        <div class="form-group row mt-4">
                                            <button class="btn btn-success btn-rounded btn-lg">Update Image</button>
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>


@endsection


@section('footer')

    @include('admin.partials.masterscripts')

    @endsection
