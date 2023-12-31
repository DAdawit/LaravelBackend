<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CourseRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {
        return [
            "title"=>["required","string"],
            "description"=>["required"],
            "course_outline"=>["required"],
            "training_id"=>["required"],
            "venue_id"=>["required"],
            "certificate_id"=>["required"],
            "category_id"=>["required"],
            "format_id"=>["required"],
            "start_date"=>["required"],
            "end_date"=>["required"]
        ];
    }
}
