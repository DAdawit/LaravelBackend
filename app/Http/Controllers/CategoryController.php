<?php

namespace App\Http\Controllers;

use App\Http\Requests\CategoryRequest;
use App\Http\Resources\CategoryResourse;
use App\Http\Resources\TrainingCategoryResourse;
use App\Http\Resources\TrainingResource;
use App\Models\Category;
use App\Models\TrainingCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Traits\HttpResponses;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return CategoryResourse::collection(
            Category::paginate(20)
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
    public function store(CategoryRequest $request)
    {
        $request->validated($request->all());

        $category=Category::create([
            "user_id"=>Auth::user()->id,
            "name"=>$request["name"]
        ]);

        return new CategoryResourse($category);
    }

    /**
     * Display the specified resource.
     */
    public function show(Category $category)
    {
        return new CategoryResourse($category);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Category $category)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Category $category)
    {
//        if(Auth::user()->id !== $category->user_id){
//            return $this->error('','you are not allowed to access this data',403);
//        }else{
//            $category->update($request->all());
//            return new TrainingResource($category);
//        }

        $category->update($request->all());
        return new CategoryResourse($category);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Category $category)
    {
        return $this->isNotAuthorized($category) ? $this->isNotAuthorized($category) : $category->delete();

    }
    private function isNotAuthorized($category){
        if(Auth::user()->id !== $category->user_id){
            return $this->error('','you are not allowed to access this data',403);
        }
    }
}
