<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Auth;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "user_id"=>User::all()->random()->id,
            "name"=>$this->faker->sentence(3),
            'description'=>$this->faker->text(),
            'price'=>$this->faker->numberBetween(200,200000),
            'discount'=>$this->faker->numberBetween(0,0),
            'quantity'=>$this->faker->numberBetween(1,1000),
            'hidden'=>$this->faker->boolean(false)
        ];
    }
}
