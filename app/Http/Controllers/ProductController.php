<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProductsRequest;
use App\Http\Resources\ProductsResource;
use App\Models\Product;
use App\Traits\HttpResponses;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ProductController extends Controller
{
    use HttpResponses;
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
    $products = Product::paginate(15);
    return ProductsResource::collection($products);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(ProductsRequest $request)
    {
        $request->validated($request->all());

        $product = Product::create([
            'user_id'=>Auth::user()->id,
            'name'=>$request["name"],
            'description'=>$request["description"],
            'price'=>$request["price"],
            'quantity'=>$request["quantity"],
            'discount'=>$request["discount"],
            'hidden'=>$request["hidden"]
        ]);

        return new ProductsResource($product);
    }

    /**
     * Display the specified resource.
     */
    public function show(Product $product)
    {
        return $this->isNotAuthorized($product) ? $this->isNotAuthorized($product) : new ProductsResource($product);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Product $product)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Product $product)
    {
        if($this->isNotAuthorized($product)){
            return $this->isNotAuthorized($product);
        }else{
            $product->update($request->all());
            return new ProductsResource($product);
        }

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product)
    {
        return $this->isNotAuthorized($product) ? $this->isNotAuthorized($product) : $product->delete();
    }

    private function isNotAuthorized($product){
        if(Auth::user()->id !==$product->user_id){
            return $this->error('','you are not authorized to access this data',403);
        }
    }
}
