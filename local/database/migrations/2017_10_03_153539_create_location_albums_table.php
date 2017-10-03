<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLocationAlbumsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('locations', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->longText('content')->nullable();
            $table->string('image_cover');
            $table->string('image_avata');
            $table->string('image_background');
            $table->string('image_mota_1');
            $table->string('title_mota_1');
            $table->longText('content_mota_1');
            $table->string('image_mota_2');
            $table->string('title_mota_2');
            $table->longText('content_mota_2');
            $table->string('image_mota_3');
            $table->string('title_mota_3');
            $table->longText('content_mota_3');
            $table->boolean('isActive')->default(0);
            $table->integer('order')->default(1);
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
        Schema::dropIfExists('location_albums');
    }
}
