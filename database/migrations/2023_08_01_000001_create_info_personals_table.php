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
        Schema::create('info_personals', function (Blueprint $table) {
            $table->id();
            $table->string('memebrName')->nullable();
            $table->integer('memebrDesignation')->nullable();
            $table->string('memebrNID')->nullable();
            $table->date('memebrDOB')->nullable();
            $table->string('memebrMotherName')->nullable();
            $table->string('memebrLifePartner')->nullable();
            $table->integer('memebrGender')->nullable();
            $table->integer('memebrBloodGroup')->nullable();
            $table->string('memberPhoneNo')->nullable();
            $table->string('memberEmail')->nullable();
            
            $table->string('qualificationName')->nullable();
            
            $table->string('nomineeName')->nullable();
            $table->string('nomineeNID')->nullable();
            $table->string('nomineeFather')->nullable();
            $table->string('nomineeMother')->nullable();
            $table->string('nomineeRelation')->nullable();
            $table->string('nomineeDesignation')->nullable();
            
            $table->string('kOneCompanyName')->nullable();
            $table->string('kOneMemberName')->nullable();
            $table->string('kOneMembershipNo')->nullable();
            
            $table->string('kTwoCompanyName')->nullable();
            $table->string('kTwoMemberName')->nullable();
            $table->string('kTwoMembershipNo')->nullable();
            $table->text('description')->nullable();

            $table->tinyInteger('status')->default(false);
            $table->unsignedBigInteger('member_id');
            $table->foreign('member_id')->references('id')->on('users')->onDelete('cascade');
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
        Schema::dropIfExists('info_personals');
    }
};
