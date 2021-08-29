<?php

namespace App\Http\Controllers\Admin;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Session;

class CartController extends Controller
{
    //view cart
    public function cart()
    {
        return view('admin.cart.cart');
    }

    //cart invoice
    public function invoice()
    {
        return view('admin.cart.invoice');
    }

    //invoice reciept
    public function invoiceRecipt(Request $request)
    {
        return view('admin.cart.invoice-recipt', compact('request'));
    }

    //add item to cart
    public function addToCart($id)
    {
        $product = Product::find($id);
        if(!$product) {
            abort(404);
        }
        $cart = session()->get('cart');
        if(!$cart) {
            $cart = [
                $id => [
                    "productname" => $product->productname,
                    "quantity" => 1,
                    "price" => $product->price,
                    "photo" => $product->productimg,
                    "desc" => $product->description
                ]
            ];
            session()->put('cart', $cart);
            return redirect()->back()->with('success', 'Product added to cart successfully!');
        }
 
        // if cart not empty then check if this product exist then increment quantity
        if(isset($cart[$id])) {
            $cart[$id]['quantity']++;
            session()->put('cart', $cart);
            return redirect()->back()->with('success', 'Product added to cart successfully!');
        }
 
        // if item not exist in cart then add to cart with quantity = 1
        $cart[$id] = [
            "productname" => $product->productname,
            "quantity" => 1,
            "price" => $product->price,
            "photo" => $product->productimg,
            "desc" => $product->description
        ];
        session()->put('cart', $cart);
        return redirect()->back()->with('success', 'Product added to cart successfully!');
    }

    //update cart
    public function update(Request $request)
    {
        if($request->id and $request->quantity)
        {
            $cart = session()->get('cart');
            $cart[$request->id]["quantity"] = $request->quantity;
            session()->put('cart', $cart);
            session()->flash('success', 'Cart updated successfully');
        }
    }

    //remove item from cart
    public function remove(Request $request)
    {
        if($request->id) {
            $cart = session()->get('cart');
            if(isset($cart[$request->id])) {
                unset($cart[$request->id]);
                session()->put('cart', $cart);
            }
            session()->flash('success', 'Product removed successfully');
        }
    }

     //remove item from cart
    public function clearCart()
    {
        $cart = session()->pull('cart', []);
        foreach ($cart as $idToDelete) {
            if(($key = array_search($idToDelete, $cart)) !== false) {
                unset($cart[$key]);
            }
            session()->put('cart', $cart);
        }
        return redirect()->back()->with('success', 'Cart cleard successfully');
    }

}
