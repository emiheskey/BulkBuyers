<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Productcategory;
use Illuminate\Http\Request;

class ProductcategoryController extends Controller
{

    public function __construct()
    {
        $this->middleware(['admin','backinvalidate']);
    }

    public function index()
    {
        $category = Productcategory::with(['products'=> function($query){
            $query->select('productid', 'prodcatid');
        }])->paginate(10);
        //dd($category);
        return view('admin.product.category', compact('category'));
    }


    public function create()
    {
        //
        $category = Productcategory::all();
        return view('admin.product.category', compact('category'));
    }

    public function store(Request $request)
    {

        $rules = [
            'prodcatname' => 'required', 'string', 'max:100', 'unique:products',
            'description' => 'required', 'string', 'min:200',
            'status' => 'required',
            'productcatimg'  => 'required|mimes:jpeg,gif,png,jpg|max:2048'
        ];

        $validatedData = $request->validate($rules);

        $check = Productcategory::where('prodcatname', $request['productname'])->first();

        if($check){

            return redirect()->back()->withErrors('Product name already exist');
        }

        if($validatedData){
            $files = $request->file('productcatimg');
            $filename = time().''.$files->getClientOriginalName();
            $temp_dir = public_path('products/cat').'/';
            $files->move($temp_dir, $filename);
            $validatedData['productcatimg'] = 'products/cat/'.$filename;

            $category = new Productcategory();
            $category->prodcatname = $validatedData['prodcatname'];
            $category->description = $validatedData['description'];
            $category->status = $validatedData['status'];
            $category->productcatimg = $validatedData['productcatimg'];

            $category->save();

            return $this->index()->withSuccess('Product category created');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $collection=$category->getProductCollection();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $detail = Productcategory::find($id);
         $category = Productcategory::find($id);
        return view('admin.product.editcategory', compact('detail','category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if ($request->file('productcatimg')){
            $files = $request->file('productcatimg');
            $category = Productcategory::find($request->prodcatid);
            $catlocation = $category->productcatimg;
            if(unlink($catlocation)){

                $filename = time().''.$files->getClientOriginalName();
                $temp_dir = public_path('products/cat').'/';
                $files->move($temp_dir, $filename);
                $productcatimg = 'products/cat/'.$filename;
                $category->productcatimg = $productcatimg;
                $category->save();

                return redirect()->back()->with('successs','Category Image successfully created');
            }

        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $productcat = Productcategory::find($id);

        $productcat->status = ($productcat->status > 0) ? 0 : 1;

        $productcat->save();

        return redirect()->back()->withSuccess('Category status successfully changed');
    }
}
