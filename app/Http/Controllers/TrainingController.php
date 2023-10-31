<?php

namespace App\Http\Controllers;

use App\Http\Requests\TrainingRequest;
use App\Http\Resources\TaskResource;
use App\Http\Resources\TrainingResource;
use App\Models\Training;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TrainingController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return TrainingResource::collection(
            Training::paginate(20)
        );
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
    public function store(TrainingRequest $request)
    {
        $request->validated($request->all());

        $training = Training::create([
           'user_id'=>Auth::user()->id,
           'name'=>$request["name"],
        ]);
        return new TrainingResource($training);
    }

    /**
     * Display the specified resource.
     */
    public function show(Training $training)
    {
        return new TrainingResource($training);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Training $training)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Training $training)
    {
        if(Auth::user()->id !== $training->user_id){
            return $this->error('','you are not allowed to access this data',403);
        }else{
            $training->update($request->all());
            return new TrainingResource($training);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Training $training)
    {
        return $this->isNotAuthorized($training) ? $this->isNotAuthorized($training) : $training->delete();
    }

    private function isNotAuthorized($task){
        if(Auth::user()->id !== $task->user_id){
            return $this->error('','you are not allowed to access this data',403);
        }
    }
}
