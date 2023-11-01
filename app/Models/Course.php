<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    protected $fillable=[
        "user_id",
        "title",
        "description",
        "course_outline",
        "training_id",
        "venue_id",
        "fee",
        "format_id"
        ];
    use HasFactory;

    public function training(){
        return $this->belongsTo(Training::class);
    }
    public function schedules(){
        return $this->hasMany(Schedule::class);
    }
}
