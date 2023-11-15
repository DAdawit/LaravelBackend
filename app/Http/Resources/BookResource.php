<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class BookResource extends JsonResource
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
                "firstName"=>$this->firstName,
                "lastName"=>$this->lastName,
                "email"=>$this->email,
                "address"=>$this->address,
                "phoneNumber"=>$this->phoneNumber,
                "course_id"=>$this->course_id,
                "schedule_id"=>$this->schedule_id,
                'course' => CourseResource::collection(optional($this->course)->first()),
            ]
        ];
    }
}
