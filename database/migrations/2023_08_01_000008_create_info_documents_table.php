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
        Schema::create('info_documents', function (Blueprint $table) {
            $table->id();
            $table->string('fileNomineePhoto')->nullable();
            $table->string('fileNomineeSignature')->nullable();
            $table->string('fileApplicantSignature')->nullable();
            
            $table->string('fileEducationCertificate')->nullable();
            $table->string('fileTradeLicense')->nullable();
            $table->string('fileTaxCertificate')->nullable();
            $table->string('fileImportCertificate')->nullable();
            $table->string('fileVatRegistration')->nullable();
            $table->string('fileMemberNID')->nullable();
            $table->string('fileApplicantPhoto')->nullable();
            $table->string('fileNomineeNID')->nullable();
            $table->string('fileVisitingCard')->nullable();
            $table->string('fileIncorporationCertificate')->nullable();
            $table->string('filePartnershipDeed')->nullable();
            $table->string('fileIndentingLicense')->nullable();
            
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
        Schema::dropIfExists('info_documents');
    }
};
