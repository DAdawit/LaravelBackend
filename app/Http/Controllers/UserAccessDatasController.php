<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Course;
use App\Models\Format;
use App\Models\Schedule;
use App\Models\Training;
use App\Models\Venue;
use Illuminate\Http\Request;

class UserAccessDatasController extends Controller
{
    public function getVenueWithCourses($venueId)
    {
        $venue = Venue::find($venueId);

        if (!$venue) {
            return null; // Venue not found
        }
        $courses = Course::where('venue_id', $venueId)->paginate(20);
        $venue["courses"]=$courses;
        return response()->json(['data'=>$venue],200);
    }

    public function getAllCoursesByFormat($formatId){
        $format = Format::find($formatId);
        if (!$format){
            return null;
        }
        $courses = Course::where('format_id',$formatId)->paginate(20);
        $format["courses"]=$courses;
        return response()->json(['data',$format]);
    }
    public function getAllCategoriesWithTrainings()
        {
//            $categories = Category::with(['trainings' => function ($query) {
//                $query->select('id', 'name');
//            }])->get();
             $categories = Category::with('trainings')->get();
             return response()->json(['data' => $categories], 200);
        }

        public function getTrainingCourses($trainingId){
        $training = Training::find($trainingId);
        if (!$training){
            return null;
        }
        $courses= Course::where('training_id',$trainingId)->paginate(20);
        $training["courses"]=$courses;

        return response()->json(['data',$training]);
        }

        public function getCourseSchedules($courseId){
        $course = Course::find($courseId);
        if(!$course){
            return null;
        }
        $schedules = Schedule::where("course_id",$courseId)->paginate(20);
        $course["schedules"]= $schedules;
        return response()->json(["data",$course]);
        }
}
