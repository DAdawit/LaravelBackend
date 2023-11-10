<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class SocialMediaResource extends JsonResource
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
                "facebook"=>$this->facebook,
                "linkedin"=>$this->linkedin,
                "instagram"=>$this->instagram,
                "whatsUp"=>$this->whatsUp,
            ]
        ];
    }
}
