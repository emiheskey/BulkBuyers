@extends('layouts.master')

@section('content')

    <div class="breadcrumbs_area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                        <ul>
                            <li><a href="index.html">home</a></li>
                            <li>Checkout</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs area end-->

    <!--Checkout page section-->
    <div class="Checkout_section mt-60">
        <div class="container">

            <div class="checkout_form">
                <form action="{{route('pay')}}" method="POST">
                    <input type="hidden" name="email" value="{{$user->email}}"> {{-- required --}}
                    <input type="hidden" name="first_name" value="{{$user->userprofile->fname}}"> {{-- required --}}
                    <input type="hidden" name="last_name" value="{{$user->userprofile->lname}}"> {{-- required --}}
                    <input type="hidden" name="orderID" value="{{$myorders->orderid}}">
                    <input type="hidden" name="amount" value="{{($myorders->totalcost * 100)}}"> {{-- required in kobo --}}
                    {{-- <input type="hidden" name="quantity" value="{{$myorders->qty}}"> --}}
                    <input type="hidden" name="metadata" value="{{ json_encode($array = ['customerid' => $user->userid,'first_name'=>$user->userprofile->fname,'last_name'=>$user->userprofile->lname, 'orderid'=>$myorders->orderid]) }}" > {{-- For other necessary things you want to add to your payload. it is optional though --}}
                    <input type="hidden" name="customer" value="{{ json_encode($array = ['first_name'=>$user->userprofile->fname,'last_name'=>$user->userprofile->lname]) }}" > {{-- For other necessary things you want to add to your payload. it is optional though --}}
                    <input type="hidden" name="reference" value="{{ Paystack::genTranxRef() }}"> {{-- required --}}
                    <input type="hidden" name="key" value="{{ config('paystack.secretKey') }}"> {{-- required --}}
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <h3>Billing Details</h3>
                            <div class="row">
                                @csrf
                                <input name="userid" type="hidden" value="{{$user->userid}}">
                                <div class="col-lg-6 mb-20">
                                    <label>First Name <span>*</span></label>
                                    <input type="text" name="fname" required value="{{$user->userprofile->fname}}">
                                </div>
                                <div class="col-lg-6 mb-20">
                                    <label>Last Name  <span>*</span></label>
                                    <input type="text" name="lname" required value="{{$user->userprofile->lname}}">
                                </div>
                                <div class="col-lg-6 mb-20">
                                    <label>Phone <span>*</span></label>
                                    <input type="text" name="phone" required value="{{$user->phone}}">
                                </div>

                                <div class="col-lg-6 mb-20">
                                    <label for="city">Town <span>*</span></label>
                                    <select class="nice-select niceselect_option" name="stateid" id="town" required>
                                        @foreach($fees as $fee)
                                            <option value="{{$fee->name}}">
                                                {{$fee->name}}
                                            </option>
                                       @endforeach
                                    </select>
                                </div>

                                <div class="col-lg-6 mb-20">
                                    <label for="city">Location <span>*</span></label>
                                    <select class="nice-select niceselect_option" name="stateid" id="stateid" required>
                                        @foreach($states as $state)
                                            <option selected value="{{$state->stateid}}">
                                                {{$state->statename}}
                                            </option>
                                       @endforeach
                                    </select>
                                </div>

                                <div class="col-12 mb-20">
                                    <label>Address  <span>*</span></label>
                                    <input placeholder="Type your address" name="address" type="text" value="{{ ($user->billaddress) ? $user->billaddress->address : $user->userprofile->address }}" required>
                                </div>
{{--                                <div class="col-12">--}}
{{--                                    <div class="order-notes">--}}
{{--                                        <label for="order_note">Order Notes</label>--}}
{{--                                        <textarea id="order_note" placeholder="Notes about your order, e.g. special notes for delivery."></textarea>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                                <h3>Your order</h3>
                                <div class="order_table table-responsive">
                                    <table>
                                        <thead>
                                        <tr>
                                            <th>Product</th>
                                            <th>Total</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                          @forelse($mydetails as $list)
                                            <tr>
                                                <td> {{$list->product->productname}} <strong> × {{$list->quantity}}</strong></td>
                                                <td> &#8358;{{number_format($list->totalprice)}}</td>
                                            </tr>
                                            @empty
                                                <tr><div class="text-danger text-center"> No Record Exists </div> </tr>
                                          @endforelse
                                        </tbody>
                                        <tfoot>
                                            <tr class="order_total">
                                                <th>Shipping</th>
                                                <td><strong>&#8358; 000</strong></td>
                                            </tr>
                                            <tr class="order_total">
                                                <th>Order Total</th>
                                                <td><strong>&#8358;{{number_format($myorders->totalcost)}}</strong></td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                                <div class="payment_method">

                                <div class="order_button text-center">
                                    <button type="submit" class="btn-block">Proceed to payment</button>
                                 {{--  <a href="#Payment" data-toggle="modal" class="text-center btn-success btn-lg">Proceed to Payment</a> --}}
                                </div>
                                <p class="mt-4 text-center"><img src="{{asset('assets/img/icon/payment2.png')}}"></p>
                            </div>
                        </div>

                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Modal -->
<div class="modal fade" id="Payment" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Payment Information</h5>
      </div>
      <div class="modal-body text-center">
        <h3>Our online payment is not available at the moment</h3>
        <h4>Please use the payment information below</h4>
        <p></p>
        <h4>Union Bank
            <br>Bulk Buyers Connect
            <br>0146856636
        </h4>
        <p><strong>Please do a Bank transfer into the account and send us a proof of payment</strong></p>
        <p>Kindly send us delivery address, email address and contact number after making payment.</p>
        <p>Send proof of payment to us via WHATSAPP/SMS ON: <br>
            07089749873 | 08099755559 | 08121973664
        <p>THANK YOU!</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <a class="btn btn-success" href="https://www.bulkbuyersconnect.com/product/list">Go back to Shop</a>
      </div>
    </div>
  </div>
</div>
@endsection
