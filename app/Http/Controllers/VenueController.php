<?php

namespace App\Http\Controllers;

use App\Http\Requests\TrainingRequest;
use App\Http\Requests\VenuesRequest;
use App\Http\Resources\TrainingResource;
use App\Http\Resources\VenuesResource;
use App\Models\Course;
use App\Models\Training;
use App\Models\Venue;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Traits\HttpResponses;

class VenueController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return VenuesResource::collection(
            Venue::paginate(20)
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
    public function store(VenuesRequest $request)
    {
        $request->validated($request->all());

        $venue = Venue::create([
            'name'=>$request["name"],
        ]);
        return new VenuesResource($venue);
    }
    /**
     * Display the specified resource.
     */
    public function show(Venue $venue)
    {
        return new TrainingResource($venue);

    }


    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Venue $venue)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Venue $venue)
    {
//        if(Auth::user()->id !== $venue->user_id){
//            return $this->error('','you are not allowed to access this data',403);
//        }else{
//            $venue->update($request->all());
//            return new TrainingResource($venue);
//        }
        $venue->update($request->all());
        return new VenuesResource($venue);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Venue $venue)
    {
        return $venue->delete();
    }

    private function isNotAuthorized($venue){
        if(Auth::user()->id !== $venue->user_id){
            return $this->error('','you are not allowed to access this data',403);
        }
    }
}
