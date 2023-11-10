<?php

namespace App\Http\Controllers;

use App\Http\Requests\HeroRequest;
use App\Http\Resources\CategoryResourse;
use App\Http\Resources\HeroResourse;
use App\Models\Category;
use App\Models\Hero;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class HeroController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return HeroResourse::collection(
            Hero::paginate(20)
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
        public function store(HeroRequest $request)
    {
        $request->validated($request->all());
        $image_path = $request->file('image')->store('image', 'public');

        $hero = Hero::create([
            'image' =>$image_path,
            "title"=>$request["title"],
            "description"=>$request["description"]
        ]);
        return new HeroResourse($hero);

    }

    /**
     * Display the specified resource.
     */
    public function show(Hero $hero)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Hero $hero)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Hero $hero)
    {
        return $request->imageCahange;

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Hero $hero)
    {
        $image_path=$hero->image;

        if (Storage::disk('public')->exists($image_path)) {
            Storage::disk('public')->delete($image_path);
        }
        return $hero->delete();
    }
}
