<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CourseResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            "id"=>(string)$this->id,
            "attributes"=>[
                "title"=>$this->title,
                "description"=>$this->description,
                "course_outline"=>$this->course_outline
            ],
            "training"=>[
                "id"=>(string)$this->training->id,
                "name"=>$this->training->name,
                "description"=>$this->training->description
            ],
            "venue"=>[
                "id"=>(string)$this->venue->id,
                "name"=>$this->venue->name,
            ]
        ];
    }
}
