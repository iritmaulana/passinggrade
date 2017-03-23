@extends('layouts.app')
@section('content')
<div style="font-family: 'Roboto', sans-serif;">
    <a class="btn btn-info" href="{{url('passinggrade/create')}}">
        <span >Tambah Baru</span>
    </a>

    <div style="margin-top: 20px;">
        @if (session('status'))
        <div class="alert alert-success" >
            {{ session('status') }}
        </div>
        @endif
    </div>
    <div style="overflow-x: auto;">
        <!-- <table  class="table  table-hover table-striped" id="table_id"> -->
        <table  class="table table-striped table-bordered dt-responsive nowrap" id="table_id">
            <thead>
                <tr>
                    <th>Kode</th>
                    <th>Universitas</th>
                    <th>Jurusan</th>
                    <th>Passing Grade</th>
                    <th>Daya Tampung Thn 2015</th>
                    <th>Peminat Thn 2015</th>
                    <th>Daya Tampung Thn 2016</th>
                    <th><span style="visibility: hidden;">Daya Tampung Thn 2016</span></th>
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
                    <td >

                        <a  class="btn btn-info" href="{{ action('PassingGradeController@edit',['kode'=>$passinggrade->kode]) }}">
                            <i class="glyphicon glyphicon-edit icon-white"></i>
                        </a>
                        <a data-method="delete" data-confirm="Are you sure?" class="btn btn-danger" href="{{ action('PassingGradeController@destroy',['kode'=>$passinggrade->kode]) }}">
                            <i class="glyphicon glyphicon-trash icon-white"></i>
                        </a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
<script type="text/javascript">
    $(document).ready( function () {
        $('#table_id').DataTable({
            responsive: true
        });

    } );
</script>
<script>
    window.csrfToken = '<?php echo csrf_token(); ?>';
    (function() {

        var laravel = {
            initialize: function() {
                this.registerEvents();
            },

            registerEvents: function() {
                $('body').on('click', 'a[data-method]', this.handleMethod);
            },

            handleMethod: function(e) {
                var link = $(this);
                var httpMethod = link.data('method').toUpperCase();
                var form;

            // If the data-method attribute is not PUT or DELETE,
            // then we don't know what to do. Just ignore.
            if ( $.inArray(httpMethod, ['PUT', 'DELETE']) === - 1 ) {
                return;
            }

            // Allow user to optionally provide data-confirm="Are you sure?"
            if ( link.data('confirm') ) {
                if ( ! laravel.verifyConfirm(link) ) {
                    return false;
                }
            }

            form = laravel.createForm(link);
            form.submit();

            e.preventDefault();
        },

        verifyConfirm: function(link) {
            return confirm(link.data('confirm'));
        },

        createForm: function(link) {
            var form =
            $('<form>', {
                'method': 'POST',
                'action': link.attr('href')
            });

            var token =
            $('<input>', {
                'name': '_token',
                'type': 'hidden',
                'value': window.csrfToken
            });

            var hiddenInput =
            $('<input>', {
                'name': '_method',
                'type': 'hidden',
                'value': link.data('method')
            });

            return form.append(token, hiddenInput)
            .appendTo('body');
        }
    };

    laravel.initialize();

})();
</script>
@endsection