<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('courses', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->string('title');
            $table->text('description');
            $table->text('course_outline');
            $table->unsignedBigInteger('training_id');
            $table->unsignedBigInteger('venue_id');
            $table->unsignedBigInteger('format_id');
            $table->integer('fee');
            $table->timestamps();
            $table->foreign('format_id')->references('id')->on('formats')->cascadeOnDelete();
            $table->foreign('user_id')->references('id')->on('users')->cascadeOnDelete();
            $table->foreign('training_id')->references('id')->on('trainings')->cascadeOnDelete();
            $table->foreign('venue_id')->references('id')->on('venues')->cascadeOnDelete();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('courses');
    }
};
