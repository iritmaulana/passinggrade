<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PassingGrade extends Model
{
	protected $table = 'passingGrade';
    protected $primaryKey = 'kode';
	protected $fillable = array(
		'kode',
		'universitas',
		'jurusan',
		'pg',
		'dt2015',
		'pt2015',
		'dt2016'
		);
}
