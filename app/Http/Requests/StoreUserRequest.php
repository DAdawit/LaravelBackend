<?php

namespace App\Http\Requests;

use Illuminate\Contracts\Validation\ValidationRule;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rules;
class StoreUserRequest extends FormRequest
{
    public mixed $name;
    public mixed $email;
    public mixed $password;

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
     * @return array<string, ValidationRule|array|string>
     */
    public function rules(): array
    {
        return [
            'name'=>['required','string','max:255'],
            'email'=>['required','string','unique:users','email'],
            'password'=>['required','confirmed',Rules\Password::defaults()]
        ];
    }
}
