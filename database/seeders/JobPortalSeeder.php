<?php

namespace Database\Seeders;

use App\Models\JobPortal;
use Illuminate\Database\Seeder;

class JobPortalSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        JobPortal::factory()->count(50)->create();
    }
}
