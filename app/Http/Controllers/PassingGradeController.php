<?php

namespace App\Http\Controllers;

use App\PassingGrade;
use Illuminate\Http\Request;

class PassingGradeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $passinggrades = PassingGrade::all();
        return view('passinggrade.index',compact('passinggrades'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('passinggrade.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $passinggrade = new PassingGrade;
        $passinggrade->kode = $request->kode;
        $passinggrade->universitas = $request->universitas;
        $passinggrade->jurusan = $request->jurusan;
        $passinggrade->pg = $request->pg;
        $passinggrade->dt2015 = $request->dt2015;
        $passinggrade->pt2015 = $request->pt2015;
        $passinggrade->dt2016 = $request->dt2016;
        $passinggrade->save();
        return redirect()->action('PassingGradeController@index')->with('status', 'Data telah berhasil di simpan.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\PassingGrade  $passingGrade
     * @return \Illuminate\Http\Response
     */
    public function show(PassingGrade $passingGrade)
    {
        $passinggrades = PassingGrade::all();
        return view('welcome',compact('passinggrades'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\PassingGrade  $passingGrade
     * @return \Illuminate\Http\Response
     */
    public function edit($kode)
    {
        $passinggrade = PassingGrade::find($kode);
        return view('passinggrade.edit',compact('passinggrade'));
       
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\PassingGrade  $passingGrade
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $kode)
    {
        $passinggrade = PassingGrade::find($kode);
        $passinggrade->universitas = $request->universitas;
        $passinggrade->jurusan = $request->jurusan;
        $passinggrade->pg = $request->pg;
        $passinggrade->dt2015 = $request->dt2015;
        $passinggrade->pt2015 = $request->pt2015;
        $passinggrade->dt2016 = $request->dt2016;
        $passinggrade->save();
        return redirect()->action('PassingGradeController@index')->with('status', 'Data telah berhasil di perbarui.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\PassingGrade  $passingGrade
     * @return \Illuminate\Http\Response
     */
    public function destroy($kode)
    {
        $passinggrade = PassingGrade::find($kode);
        $passinggrade->delete();
        return redirect()->action('PassingGradeController@index')->with('status', 'Data telah berhasil dihapus.');
    }
}
