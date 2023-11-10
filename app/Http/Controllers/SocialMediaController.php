<?php

namespace App\Http\Controllers;

use App\Http\Requests\SocialMediaRequest;
use App\Http\Resources\HeroResourse;
use App\Http\Resources\SocialMediaResource;
use App\Http\Resources\TrainingResource;
use App\Models\Hero;
use App\Models\SocialMedia;
use Illuminate\Http\Request;

class SocialMediaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return SocialMediaResource::collection(
            SocialMedia::get()
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
    public function store(SocialMediaRequest $request)
    {
        $request->validated($request->all());

        $socialMedia = SocialMedia::create([
            "facebook"=>$request["facebook"],
            "linkedin"=>$request["linkedin"],
            "instagram"=>$request["instagram"],
            "whatsUp"=>$request["whatsUp"]
        ]);

        return new SocialMediaResource($socialMedia);
    }

    /**
     * Display the specified resource.
     */
    public function show(SocialMedia $socialMedia)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(SocialMedia $socialMedia)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, SocialMedia $socialMedia)
    {
        $data=SocialMedia::find($request->id);
        $data->update($request->all());
        return new SocialMediaResource($socialMedia);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request,SocialMedia $socialMedia)
    {
//        return $request;
        $data=SocialMedia::find($request->id);
        return $data->delete();
//       return $socialMedia->delete();
    }
}
