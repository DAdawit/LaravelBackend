<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ScheduleResource extends JsonResource
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
                "start_date"=>$this->start_date,
                "end_date"=>$this->end_date,
                "venue"=>[
                    "id"=>(string)$this->venue->id,
                    "name"=>$this->venue->name,
                ],
                "course"=>[
                    "id"=>(string)$this->course->id,
                    "title"=>$this->course->title
                ]
            ],
        ];
    }
}
