@extends('layouts.app')
@section('content')
<form id="form">
    <div class="form-group">
        <label>Tes Kemampuan dan Potensi Akademik (TKPA) :</label> <br>
        <input class="form-control form-welcome" type="text" id="TKPABenar" placeholder="Jml Soal Bnr">
        <input class="form-control form-welcome" type="text" id="TKPASalah" placeholder="Jml Soal Slh">
        <input class="form-control form-welcome" type="text" id="TKPA" placeholder="Jml Soal">
    </div>
    <br>
    <div class="form-group">
        <label>Tes Kemampuan Dasar (TKD) : </label> <br>
        <input class="form-control form-welcome" type="text" id="TKDBenar" placeholder="Jml Soal Bnr">
        <input class="form-control form-welcome" type="text" id="TKDSalah" placeholder="Jml Soal Slh">
        <input class="form-control form-welcome" type="text" id="TKD" placeholder="Jml Soal">
    </div>
</form>

<input id="hitung" type="button" onclick="hitungps()" class="btn btn-primary" value="Hitung Passing Grade"></input>
<button onclick="reset()" class="btn btn-danger">Reset</button>  
<br><br>

<div id="resultAndTable">
    <span id="result">Nilai Passing Grade Anda Adalah : <span id="ps"></span> %</span>
    <br>
    <div >      
        <!-- <table  class="table table-hover table-striped" id="table_ps"> -->
        <table  class="display nowrap" cellspacing="0" width="100%" id="table_ps">
            <thead>
                <tr>
                    <th>Kode</th>
                    <th>Universitas</th>
                    <th>Jurusan</th>
                    <th>Passing Grade</th>
                    <th>Daya Tampung Thn 2015</th>
                    <th>Peminat Thn 2015</th>
                    <th>Daya Tampung Thn 2016</th>
                </tr>
            </thead>
            <tbody >
                @foreach($passinggrades as $passinggrade)
                <tr >
                    <td >{{$passinggrade->kode}}</td>
                    <td >{{$passinggrade->universitas}}</td>
                    <td >{{$passinggrade->jurusan}}</td>
                    <td >{{$passinggrade->pg}}</td>
                    <td >{{$passinggrade->dt2015}}</td>
                    <td >{{$passinggrade->pt2015}}</td>
                    <td >{{$passinggrade->dt2016}}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>

<script>
    function hitungps()
    {
        //TKPA
        TKPABenar = document.getElementById("TKPABenar").value;
        TKPASalah = document.getElementById("TKPASalah").value;
        TKPA = document.getElementById("TKPA").value;

        //TKD
        TKDBenar = document.getElementById("TKDBenar").value;
        TKDSalah = document.getElementById("TKDSalah").value;
        TKD = document.getElementById("TKD").value;

        //Hasil
        hasilTKPA=((4*TKPABenar-TKPASalah)/(4*TKPA))*100;
        hasilTKD=((4*TKDBenar-TKDSalah)/(4*TKD))*100;
        hasil = ((0.3*hasilTKPA)+(0.7*hasilTKD));

        //Display Hasil
        document.getElementById("ps").innerHTML = hasil.toFixed(2);

        //Change display properties from non to block;
        document.getElementById("resultAndTable").style.display = "block";

        table = $('#table_ps').DataTable();
        table.destroy();

        //Filtering data table 
        table = $('#table_ps').DataTable({
            responsive: true
        });

        $.fn.dataTable.ext.search.push(
            function( settings, data, dataIndex ) 
            {
                return parseFloat(data[3])<hasil
                ? true
                : false
            });
        table.draw();


        
    }
    function reset() {
        var x= document.getElementById("resultAndTable");
        if (x.style.display==="block")
        {
            x.style.display="none";
        }
        document.getElementById("form").reset();
    }
</script>
<script type="text/javascript">


</script>
@endsection

