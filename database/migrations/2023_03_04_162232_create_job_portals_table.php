<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobPortalsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('job_portals', function (Blueprint $table) {
            $table->id();
            $table->string('job_title');
            $table->string('job_location');
            $table->string('company_name');
            $table->string('job_salary')->nullable();
            $table->date('job_deadline')->nullable();
            $table->text('job_details')->nullable();
            $table->integer('status')->default(1);
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('job_portals');
    }
}
