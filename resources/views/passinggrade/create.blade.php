@extends('layouts.app')
@section('content')
<div>
	@if (session('status'))
	<div class="alert alert-success" style="font-weight: bold;">
		{{ session('status') }}
	</div>
	@endif
</div>
<form style="text-align: left;" method="POST" action="{{ action('PassingGradeController@store') }}">
	<input type="hidden" name="_token" value="{{ csrf_token() }}">
	<div class="form-group">
		<label>Kode </label><input class="form-control form-control2" type="text" name="kode"></input>
	</div><br>
	<div class="form-group">
		<label>Universitas </label><input class="form-control form-control2" type="text" name="universitas"></input>
	</div><br>
	<div class="form-group">
		<label>Jurusan </label><input class="form-control form-control2" type="text" name="jurusan"></input>
	</div><br>
	<div class="form-group">
		<label>Passing Grade</label><input class="form-control form-control2 type="text" name="pg"></input>
	</div><br>
	<div class="form-group">
		<label>Daya Tampung 2015 </label><input class="form-control form-control2" type="text" name="dt2015"></input>
	</div><br>
	<div class="form-group">
		<label>Peminat 2015 </label><input class="form-control form-control2" type="text" name="pt2015"></input>
	</div><br>
	<div class="form-group">
		<label>Daya Tampung 2016 </label><input class="form-control form-control2" type="text" name="dt2016"></input>
	</div><br>

	<button class="btn btn-primary">Submit</button>

</form>

@endsection