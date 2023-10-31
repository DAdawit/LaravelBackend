<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Training extends Model
{
    use HasFactory;
    protected $fillable=['user_id','name','category_id','description'];

    public function category(){
        return $this->belongsTo(Category::class);
    }
}
