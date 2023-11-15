<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $fillable=["firstName","lastName","email","phoneNumber","address","course_id","schedule_id"];
    use HasFactory;
    public  function course(){
        return $this->belongsTo(Course::class);
    }
    public function schedule(){
        return $this->belongsTo(Schedule::class);
    }
}
