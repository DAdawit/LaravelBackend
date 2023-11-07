<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;

use App\Http\Controllers\ProductController;
use App\Http\Controllers\TaskController;
use App\Http\Controllers\TrainingController;
use App\Http\Controllers\VenueController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\FormatController;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\ScheduleController;
use App\Http\Controllers\UserAccessDatasController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\StatisticsController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::post('/login',[AuthController::class,'login']);
Route::post('/register',[AuthController::class,'register']);
Route::post('/verify-token',[AuthController::class,'verifyToken']);

Route::get('/venue-courses/{id}', [UserAccessDatasController::class, 'getVenueWithCourses']);
Route::get('/format-courses/{id}', [UserAccessDatasController::class, 'getAllCoursesByFormat']);
Route::get('/category-trainings', [UserAccessDatasController::class, 'getAllCategoriesWithTrainings']);
Route::get('/training-courses/{id}', [UserAccessDatasController::class, 'getTrainingCourses']);
Route::get('/course-schedules/{id}', [UserAccessDatasController::class, 'getCourseSchedules']);
Route::get('/latest-courses', [UserAccessDatasController::class, 'getUpcomingCourses']);
Route::get('/courses-with-schedule', [UserAccessDatasController::class, 'getCoursesWithVenue']);
Route::get('/get-trainings',[UserAccessDatasController::class,'getTrainings']);
Route::get('/get-formats',[UserAccessDatasController::class,'getFormats']);
Route::get('/get-venues',[UserAccessDatasController::class,'getVenues']);
Route::get('/get-classroom-training',[UserAccessDatasController::class,'getClassroomTraining']);
Route::get('/get-online-training',[UserAccessDatasController::class,'getOnlineTraining']);
Route::get('/get-in-house-training',[UserAccessDatasController::class,'getInHouseTraining']);
Route::post('/contact',[UserAccessDatasController::class,'PostContactus']);
Route::post('/bookCourse',[UserAccessDatasController::class,'BookCourse']);
Route::get('/booked-courses',[UserAccessDatasController::class,'BookedCourses']);
Route::get('/approved-booked-courses',[UserAccessDatasController::class,'ApprovedBookedCourses']);
Route::get('/rejected-booked-courses',[UserAccessDatasController::class,'RejectedBookedCourses']);
Route::get('/search-courses',[UserAccessDatasController::class,'searchCourse']);
Route::get('/all-courses-this-month',[UserAccessDatasController::class,"AllCoursesThisMonth"]);
Route::get('/get-course-by-venue/{id}',[UserAccessDatasController::class,"GetCoursesByVenue"]);
Route::get('/get-course-by-format/{id}',[UserAccessDatasController::class,"GetCoursesByFormat"]);

//In-House Solution
Route::group(['middleware'=>['auth:sanctum']],function(){
    Route::post('/logout',[AuthController::class,'logout']);
    Route::resource('/tasks',TaskController::class);
    Route::resource('/products',ProductController::class);
    Route::resource('/venues',VenueController::class);
    Route::resource('/categories',CategoryController::class);
    Route::resource('/formats',FormatController::class);
    Route::post('/change-password',[AuthController::class,"changePassword"]);
    Route::resource('/contactus',ContactController::class);
    Route::get('/statistics',[StatisticsController::class,"index"]);
    Route::get('/deleteContact/{id}',[ContactController::class,"deletecontact"]);

});
Route::resource('/courses',CourseController::class);
Route::resource('/schedules',ScheduleController::class);
Route::resource('/trainings',TrainingController::class);
Route::resource('/books',BookController::class);
