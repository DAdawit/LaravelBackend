<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Training extends Model
{
    use HasFactory;
    protected $fillable=['name','category_id','description'];

    public function category(){
        return $this->belongsTo(Category::class);
    }
    public function courses(){
        return $this->hasMany(Course::class);
    }
}
