<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $fillable=["firstName","lastName","email","phoneNumber","course_id","schedule_id"];
    use HasFactory;
}
