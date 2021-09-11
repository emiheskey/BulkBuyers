<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\ShippingFee;

class ShippingController extends Controller
{
    public function index()
    {
        $fees = ShippingFee::latest()->paginate(10);
        return view('admin.fee.index', compact('fees'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'state' => 'required',
            'name' => 'required',
            'zones'  => 'required|array',
            'fee' => 'required'
        ]);

        $fee = ShippingFee::create([
            'state' => $request->state,
            'name' => $request->name,
            'zones'  => json_encode($request->zones),
            'fee' => $request->fee
        ]);
        return redirect()->back()->with('success', "Shipping category created successfully");
    }

    public function edit($id)
    {
        $fee = ShippingFee::find($id);
        return view('admin.fee.edit', compact('fee'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'state' => 'required',
            'name' => 'required',
            'zones'  => 'sometimes|array',
            'fee' => 'required'
        ]);
        $fee = ShippingFee::find($id);
        $udate = $fee->update([
            'state' => $request->state,
            'name' => $request->name,
            'zones'  => empty($request->zones) ? $fee->zones : json_encode($request->zones),
            'fee' => $request->fee
        ]);
        return redirect()->back()->with('success', "Shipping category udpated successfully");
    }

    public function delete($id)
    {
        $fee = ShippingFee::find($id);
        $delete = $fee->delete();
        return redirect()->back()->with('success', "Shipping category deleted successfully");
    }
}
