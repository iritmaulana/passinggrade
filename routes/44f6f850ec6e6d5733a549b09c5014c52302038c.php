<?php $__env->startSection('content'); ?>
<form id="form">
    <div class="form-group">
        <label>Tes Kemampuan dan Potensi Akademik (TKPA) :</label> <br>
        <input class="form-control" type="text" id="TKPABenar" placeholder="Jml Soal Benar">
        <input class="form-control" type="text" id="TKPASalah" placeholder="Jml Soal Salah">
        <input class="form-control" type="text" id="TKPA" placeholder="Jml Soal">
    </div>
    <br>
    <div class="form-group">
        <label>Tes Kemampuan Dasar (TKD) : </label> <br>
        <input class="form-control" type="text" id="TKDBenar" placeholder="Jml Soal Benar">
        <input class="form-control" type="text" id="TKDSalah" placeholder="Jml Soal Salah">
        <input class="form-control" type="text" id="TKD" placeholder="Jml Soal">
    </div>
</form>

<input id="hitung" type="button" onclick="hitungps()" class="btn btn-primary" value="Hitung Passing Grade"></input>
<button onclick="reset()" class="btn btn-danger">Reset</button>  
<br><br>

<div id="resultAndTable">
    <span id="result">Nilai Passing Grade Anda Adalah : <span id="ps"></span> %</span>
    <br>
    <div style="font-family: 'Roboto', sans-serif;">      
        <table  class="table table-hover table-striped" id="table_ps">
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
                <?php $__currentLoopData = $passinggrades; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $passinggrade): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr >
                    <td ><?php echo e($passinggrade->kode); ?></td>
                    <td ><?php echo e($passinggrade->universitas); ?></td>
                    <td ><?php echo e($passinggrade->jurusan); ?></td>
                    <td ><?php echo e($passinggrade->pg); ?></td>
                    <td ><?php echo e($passinggrade->dt2015); ?></td>
                    <td ><?php echo e($passinggrade->pt2015); ?></td>
                    <td ><?php echo e($passinggrade->dt2016); ?></td>
                </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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
        document.getElementById("ps").innerHTML = hasil;

        //Change display properties from non to block;
        document.getElementById("resultAndTable").style.display = "block";

        //Filtering data table 
        table = $('#table_ps').DataTable();
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
<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>