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
Route::get('/get-categories',[UserAccessDatasController::class,'getCategories']);
Route::get('/get-formats',[UserAccessDatasController::class,'getFormats']);
Route::get('/get-venues',[UserAccessDatasController::class,'getVenues']);
Route::get('/get-classroom-training',[UserAccessDatasController::class,'getClassroomTraining']);
Route::get('/get-online-training',[UserAccessDatasController::class,'getOnlineTraining']);
Route::get('/get-in-house-training',[UserAccessDatasController::class,'getInHouseTraining']);
Route::post('/contact',[UserAccessDatasController::class,'PostContactus']);

//In-House Solution
Route::group(['middleware'=>['auth:sanctum']],function(){
    Route::post('/logout',[AuthController::class,'logout']);
    Route::resource('/tasks',TaskController::class);
    Route::resource('/products',ProductController::class);
    Route::resource('/venues',VenueController::class);
    Route::resource('/categories',CategoryController::class);
    Route::resource('/formats',FormatController::class);

});
Route::resource('/courses',CourseController::class);
Route::resource('/schedules',ScheduleController::class);

Route::resource('/trainings',TrainingController::class);

