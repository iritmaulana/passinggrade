@extends('layouts.app')
@section('content')

<form style="text-align: left;" method="POST" action="{{ action('PassingGradeController@update',['kode'=>$passinggrade->kode]) }}">
	<input type="hidden" name="_method" value="PUT" />
	<input type="hidden" name="_token" value="{{ csrf_token() }}">
	<div class="form-group">
		<label>Universitas </label><input class="form-control form-control2" type="text" name="universitas" value="{{$passinggrade->universitas}}"></input>
	</div><br>
	<div class="form-group">
		<label>Jurusan </label><input class="form-control form-control2" type="text" name="jurusan" value="{{$passinggrade->jurusan}}"></input>
	</div><br>
	<div class="form-group">
		<label>Passing Grade</label><input class="form-control form-control2 type="text" name="pg" value="{{$passinggrade->pg}}"></input>
	</div><br>
	<div class="form-group">
		<label>Daya Tampung 2015 </label><input class="form-control form-control2" type="text" name="dt2015" value="{{$passinggrade->dt2015}}"></input>
	</div><br>
	<div class="form-group">
		<label>Peminat 2015 </label><input class="form-control form-control2" type="text" name="pt2015" value="{{$passinggrade->pt2015}}"></input>
	</div><br>
	<div class="form-group">
		<label>Daya Tampung 2016 </label><input class="form-control form-control2" type="text" name="dt2016" value="{{$passinggrade->dt2016}}"></input>
	</div><br>

	<button class="btn btn-primary">Save</button>

</form>

@endsection