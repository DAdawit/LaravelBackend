<?php

namespace App\Http\Controllers;

use App\Http\Requests\FormatRequest;
use App\Http\Resources\FormatResource;
use App\Http\Resources\TrainingResource;
use App\Models\Format;
use App\Models\Training;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Traits\HttpResponses;

class FormatController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return FormatResource::collection(
            Format::paginate(20)
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
    public function store(FormatRequest $request)
    {
        $request->validated($request->all());

        $format = Format::create([
            'name'=>$request["name"],
        ]);
        return new FormatResource($format);
    }

    /**
     * Display the specified resource.
     */
    public function show(Format $format)
    {
        return new FormatResource($format);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Format $format)
    {
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Format $format)
    {
        // if(Auth::user()->id !== $format->user_id){
        //     return $this->error('','you are not allowed to access this data',403);
        // }else{

        // }
        $format->update($request->all());
        return new FormatResource($format);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Format $format)
    {
        // return $this->isNotAuthorized($format) ? $this->isNotAuthorized($format) : $format->delete();
        return $format->delete();

    }

    private function isNotAuthorized($format){
        if(Auth::user()->id !== $format->user_id){
            return $this->error('','you are not allowed to access this data',403);
        }
    }
}
