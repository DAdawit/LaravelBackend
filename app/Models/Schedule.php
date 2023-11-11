<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Schedule extends Model
{
    protected $fillable=[
        "start_date",
        "end_date",
        "venue_id",
        "course_id"
    ];


    public function venue(){
        return $this->belongsTo(Venue::class);
    }
    public function course(){
        return $this->belongsTo(Course::class);
    }
    use HasFactory;
}
