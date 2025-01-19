<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('past_committees', function (Blueprint $table) {
            $table->id();
            $table->string("member_name")->nullable();
            $table->string("member_designation")->nullable();
            $table->string("representative")->nullable();
            $table->string("member_period")->nullable();
            
            $table->unsignedBigInteger('user_id')->nullable(); // Allow NULL values
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
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
        Schema::dropIfExists('past_committees');
    }
};
