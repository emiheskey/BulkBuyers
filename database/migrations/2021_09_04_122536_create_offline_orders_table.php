<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOfflineOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('offline_orders', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->bigInteger('product_id')->unsigned();
            $table->foreign('product_id')
                ->references('productid')
                ->on('products');
            $table->string('order_id');
            $table->string('fname');
            $table->string('lname');
            $table->string('address');
            $table->string('email');
            $table->string('phone', 11);
            $table->longText('town');
            $table->string('state');
            $table->double('total');
            $table->integer('qty');
            $table->string('order_status')->nullable();
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
        Schema::dropIfExists('offline_orders');
    }
}
