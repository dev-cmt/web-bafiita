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
        Schema::create('info_banks', function (Blueprint $table) {
            $table->id();
            $table->string('bankBranceName')->nullable();
            $table->string('modePayment')->nullable();
            $table->decimal('totalAmount', 10, 2)->nullable();
            $table->date('paymentDate')->nullable();
            $table->string('moneyReceiptNo')->nullable();
            $table->string('slip')->nullable();

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
        Schema::dropIfExists('info_banks');
    }
};
