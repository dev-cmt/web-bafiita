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
        Schema::create('info_companies', function (Blueprint $table) {
            $table->id();
            $table->string('companyName')->nullable();
            $table->string('addressOrganization')->nullable();
            $table->integer('typeOwnership')->nullable();
            $table->integer('typeBusiness')->nullable();
            
            $table->string('tradeLicenseNo')->nullable();
            $table->date('tradeLicenseDate')->nullable();
            $table->string('eTinNo')->nullable();
            $table->date('eTinDate')->nullable();
            $table->string('vatRegistrationNo')->nullable();
            $table->date('vatRegistrationDate')->nullable();
            $table->string('ircCertificateNo')->nullable();
            $table->date('ircCertificateDate')->nullable();
            $table->string('rjscIncorporationNo')->nullable();
            $table->date('rjscIncorporationDate')->nullable();
            
            $table->integer('poultryDairyFisheries')->nullable();
            $table->string('tradingBrandOthers')->nullable();
            
            $table->string('contactCompanyName')->nullable();
            $table->string('contactCompanyAddress')->nullable();
            $table->string('contactCompanyNumber')->nullable();
            $table->string('contactCompanyEmail')->nullable();

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
        Schema::dropIfExists('info_companies');
    }
};
