<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    protected $fillable=[
        "title",
        "description",
        "course_outline",
        "training_id",
        "venue_id",
        "certificate_id",
        "format_id",
        "start_date",
        "end_date"
        ];
    use HasFactory;

    public function training(){
        return $this->belongsTo(Training::class);
    }
    public function schedules(){
        return $this->hasMany(Schedule::class);
    }
    public function venue(){
        return $this->belongsTo(Venue::class);
    }
    public function certificate(){
        return $this->belongsTo(Certificate::class);
    }
    public function books(){
        return $this->hasMany(Book::class);
    }
    public function format(){
        return $this->belongsTo(Format::class);
    }

}
