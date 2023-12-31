<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ContactUsResource extends JsonResource
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
                "fullName"=>$this->fullName,
                "location"=>$this->location,
                "phoneNumber"=>$this->phoneNumber,
                "email"=>$this->email,
                'created_at'=>$this->created_at
            ]
        ];
    }
}
