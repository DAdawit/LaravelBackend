<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Course;
use App\Models\Format;
use App\Models\Training;
use App\Models\Venue;
use Illuminate\Http\Request;

class StatisticsController extends Controller
{
    public function index(){
        $counts = [
            'formats' => Format::count(),
            'categories' => Category::count(),
            'trainings' => Training::count(),
            'courses' => Course::count(),
            'venues' => Venue::count(),
        ];


        return response()->json(['data'=>$counts]);
//        return $formats;
    }
}
