<?php

namespace App\Http\Controllers;

use App\Http\Requests\BookRequest;
use App\Http\Requests\ContactUsRequest;
use App\Http\Resources\CategoryResourse;
use App\Http\Resources\ContactUsResource;
use App\Http\Resources\FormatResource;
use App\Http\Resources\VenuesResource;
use App\Models\Book;
use App\Models\Category;
use App\Models\Contact;
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
        $courses= Course::where('training_id',$trainingId)->with(['venue'])->paginate(20);
        $training["courses"]=$courses;

        return response()->json(['data'=>$training]);
        }

        public function getCourseSchedules($courseId){
        $course = Course::find($courseId);
        if(!$course){
            return null;
        }
        $schedules = Schedule::where("course_id",$courseId)->with(['venue'])->paginate(20);
        $course["schedules"]= $schedules;
        return response()->json(["data"=>$course]);
        }

        public function getUpcomingCourses(){
        $courses = Course::latest()->take(10)->with(['venue'])->get();
        return response()->json(["data"=>$courses]);
        }

        public function getCoursesWithVenue(){
            $courses = Course::latest()->with(['venue'])->paginate(15);
            return response()->json(["data"=>$courses]);
        }

        public function getCategories(){
            return CategoryResourse::collection(
                Category::paginate(20)
            );
        }

    public function getFormats(){
        return FormatResource::collection(
            Format::paginate(20)
        );
    }

    public function getVenues(){
        return VenuesResource::collection(
            Venue::paginate(20)
        );
    }

    public function getClassroomTraining(){
        $format=Format::where('id',1)->get();
        $courses = Course::where('format_id', 1)->with(['venue','training'])->paginate(20);
        $format[0]["courses"]= $courses;
        return response()->json(["data"=>$format[0]]);
    }
    public function getOnlineTraining(){
        $format=Format::where('id',2)->get();
        $courses = Course::where('format_id', 2)->with(['venue'])->paginate(20);
        $format[0]["courses"]= $courses;
        return response()->json(["data"=>$format[0]]);
    }
    public function getInHouseTraining(){
        $format=Format::where('id',3)->get();
        $courses = Course::where('format_id', 3)->with(['venue'])->paginate(20);
        $format[0]["courses"]= $courses;
        return response()->json(["data"=>$format[0]]);
    }


    public function PostContactus(ContactUsRequest $request)
    {
        $request->validated($request->all());
        $contact=Contact::create([
            "fullName"=>$request["fullName"],
            "location"=>$request["location"],
            "phoneNumber"=>$request["phoneNumber"],
            "email"=>$request["email"],
        ]);
        return new ContactUsResource($contact);
    }

    public function BookCourse(BookRequest $request)
    {
        $request->validated($request->all());
        $contact=Book::create([
            "firstName"=>$request["firstName"],
            "lastName"=>$request["lastName"],
            "email"=>$request["email"],
            "phoneNumber"=>$request["phoneNumber"],
            "course_id"=>$request["course_id"],
            "schedule_id"=>$request["schedule_id"],
        ]);
        return new ContactUsResource($contact);
    }


    public function BookedCourses(){
        $books = Book::where('status','pending')->with('course.venue','schedule.course.venue','schedule.venue')->paginate(20);
        return response()->json(["data"=>$books]);
    }
    public function ApprovedBookedCourses(){
        $books = Book::where('status','approved')->with('course.venue','schedule.course.venue','schedule.venue')->paginate(20);
        return response()->json(["data"=>$books]);
    }

    public function RejectedBookedCourses(){
        $books = Book::where('status','rejected')->with('course.venue','schedule.course.venue','schedule.venue')->paginate(20);
        return response()->json(["data"=>$books]);
    }
}
