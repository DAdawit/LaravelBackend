<?php

namespace App\Http\Controllers;

use App\Http\Requests\CourseRequest;
use App\Http\Resources\CourseResource;
use App\Http\Resources\TrainingResource;
use App\Models\Course;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CourseController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return CourseResource::collection(
            Course::paginate(20)
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
    public function store(CourseRequest $request)
    {
        $request->validated($request->all());

        $course =  Course::create([
            "user_id"=>Auth::user()->id,
            "title"=>$request["title"],
            "fee"=>$request["fee"],
            "description"=>$request["description"],
            "course_outline"=>$request["course_outline"],
            "format_id"=>$request["format_id"],
            "training_id"=>$request["training_id"],
            "venue_id"=>$request["venue_id"]
        ]);
        return new CourseResource($course);
    }

    /**
     * Display the specified resource.
     */
    public function show(Course $course)
    {
        return new CourseResource($course);

    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Course $course)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Course $course)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Course $course)
    {
        //
    }
}