<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\JobPortal;
class JobPortalFactory extends Factory
{
    protected $model = JobPortal::class;

    public function definition()
    {
        return [
            'job_title' => $this->faker->jobTitle(),
            'job_location' => $this->faker->city(),
            'company_name' => $this->faker->company(),
            'job_salary' => $this->faker->numberBetween(20000, 80000),
            'job_deadline' => $this->faker->dateTimeBetween('now', '+1 year')->format('Y-m-d'),
            'job_details' => $this->faker->paragraphs(3, true),
            'status' => $this->faker->randomElement([0, 1]),
        ];
    }
}
