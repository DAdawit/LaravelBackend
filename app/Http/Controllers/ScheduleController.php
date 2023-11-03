<?php

namespace App\Http\Controllers;

use App\Http\Requests\ScheduleRequest;
use App\Http\Resources\FormatResource;
use App\Http\Resources\ProductsResource;
use App\Http\Resources\ScheduleResource;
use App\Models\Product;
use App\Models\Schedule;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ScheduleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $products = Schedule::paginate(20);
        return ScheduleResource::collection($products);
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
    public function store(ScheduleRequest $request)
    {
        $request->validated($request->all());

        $schedule= Schedule::create([
            "start_date"=>$request["start_date"],
            "end_date"=>$request["end_date"],
            "fee"=>$request["fee"],
            "venue_id"=>$request["venue_id"],
            "course_id"=>$request["course_id"],
        ]);
        return new ScheduleResource($schedule);
    }

    /**
     * Display the specified resource.
     */
    public function show(Schedule $schedule)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Schedule $schedule)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Schedule $schedule)
    {
        $schedule->update($request->all());
        return new FormatResource($schedule);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Schedule $schedule)
    {
        return $schedule->delete();

    }
}
