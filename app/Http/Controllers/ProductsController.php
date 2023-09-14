<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProductsRequest;
use App\Http\Resources\ProductsResource;
use App\Models\Products;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
       return ProductsResource::collection(
           Products::where('user_id',Auth::user()->id)->paginate(10)
       );
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(ProductsRequest $request)
    {
        $request->validated($request->all());
        $product = Products::create([
           'user_id'=>Auth::user()->id,
            'name'=>$request['name'],
            'description'=>$request['description'],
            'price'=>$request['price']
        ]);
        return new ProductsResource($product);
    }

    /**
     * Display the specified resource.
     */
    public function show(Products $products)
    {

        if(Auth::user()->id !== $products->user_id){
            return $this->error('','you are not allowed to display this product',403);
        }
        return new ProductsResource($products);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Products $products)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Products $products)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Products $products)
    {
        //
    }
}
