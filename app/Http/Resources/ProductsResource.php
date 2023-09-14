<?php

namespace App\Http\Resources;

use App\Traits\HttpResponses;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProductsResource extends JsonResource
{
    use HttpResponses;

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
                'price'=>$this->price,
            ],
            'user'=>[
                'id'=>(string)$this->user->id,
                'userName'=>$this->user->name,
                'email'=>$this->user->email,
            ]
        ];
    }
}
