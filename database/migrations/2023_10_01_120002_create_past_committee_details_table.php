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
        Schema::create('past_committee_details', function (Blueprint $table) {
            $table->id();
            $table->string("name")->nullable();
            $table->string("designation")->nullable();
            $table->string("represent")->nullable();
            $table->string("represent_url")->nullable();
            $table->string("image_path")->nullable();
            $table->text("description")->nullable();
            $table->integer("index")->nullable();

            $table->unsignedBigInteger('past_committee_id');
            $table->foreign('past_committee_id')->references('id')->on('past_committees')->onDelete('cascade');
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
        Schema::dropIfExists('past_committee_details');
    }
};
