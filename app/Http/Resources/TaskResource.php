<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class TaskResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id'=>(string)$this->id,
            'attributes'=>[
                'name'=>$this->name,
                'description'=>$this->description,
                'priority'=>$this->priority,
            ],
            'user'=>[
                'id'=>(string)$this->user->id,
                'userName'=>$this->user->name,
                'email'=>$this->user->email,
            ]
        ];
    }
}
