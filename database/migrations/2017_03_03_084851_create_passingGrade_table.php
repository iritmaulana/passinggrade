<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePassingGradeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('passingGrade', function (Blueprint $table) {
            $table->integer('kode')->primary();
            $table->string('universitas');
            $table->string('jurusan');
            $table->decimal('pg');
            $table->smallInteger('dt2015');
            $table->smallInteger('pt2015');
            $table->smallInteger('dt2016');
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
      Schema::dropIfExists('passingGrade');
    }
}
