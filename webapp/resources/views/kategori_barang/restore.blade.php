@extends('layouts.dashboard')

@section('pageTitle', 'Restore Daftar Kategori')
@section('pageHeader', 'Restore Data Kategori')
@section('breadcrumb', 'Restore Kategori')

@push('customCss')
<link rel="stylesheet" href="{{ url('plugin/datatables/datatables.min.css')}}">
@endpush

@section('content')

<div class="row">
    <div class="col-md-12">
        @if( session()->has('message') )
        <div class="notification success closeable margin-bottom-30">
            <p>{{ session()->get('message') }}</p>
            <a class="close" href="#"></a>
        </div>
        @endif

        {{-- <a href="{{ route('barang.create')  }}" class="button aisi-datatables-button-add">Tambah</a> --}}
        
        <table id="aisi-datatables" class="basic-table" style="width:100%">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach($data as $key => $val)
                <tr>
                    <td>{{ $key+1 }}</td>
                    <td>{{ $val->nama }}</td>
                    <td>                        
                        <div class="aisi-datatables-action extra-width">
                            <a class="aisi-datatables-action-button"></a>
                            <div class="aisi-datatables-action-content">
                                <a href="{{ route('kategori_barang.restore', ['id' => $val->id]) }}" class="aisi-datatables-item"><i class="fa fa-refresh"></i> Restore</a>
                                <a href="javascript:;" onclick="deleteData({{ $val->id }})" class="aisi-datatables-item"><i class="fa fa-trash"></i> Hapus Permanen</a>
                            </div>
                        </div>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>    
</div>

@endsection
@push('customJs')
<script src="{{ url('plugin/datatables/datatables.min.js') }}"></script>
<script>
    $(document).ready(function() {
        $('#aisi-datatables').DataTable({
            responsive: true,
            "dom" : '<"aisi-datatables"<"aisi-datatables-header"lf>t<"aisi-datatables-footer"ip>>',
        });

        $('div.dataTables_paginate').addClass("pagination");
        $(".aisi-datatables-button-add").prependTo(".aisi-datatables-header");
    } );

    function deleteData(id) {
        swal({
            title: "Yakin Hapus Data Barang?",
            text : "Data barang akan dihapus permanen",
            icon: "warning",
            buttons: {
                cancel:true,
                confirm: {
                    text:'Hapus!',
                    closeModal: false,
                },
            },
        })
        .then((process) => {
            if(process) {
                $.ajax({
                    url: "{{ route('kategori_barang.force.delete') }}", 
                    type: "POST",
                    data: {
                        '_token': '{{csrf_token()}}',
                        'id':id,
                    },
                    success: function(data) {
                        swal({
                            title: 'Berhasil Hapus Barang!',
                            text: 'Barang berhasil di hapus',
                            icon: 'success',
                            timer: '2000'
                        });
                        setTimeout(function() {
                            location.reload()
                        }, 750);
                    },
                    error: function(jqXHR, textStatus, errorThrown){
                        swal({
                            title: 'System Error',
                            text: errorThrown,
                            icon: 'error',
                            timer: '2000'
                        });
                    }
                });
            } else {
                swal('Data barang tidak jadi dihapus');
            }
        });
    }
</script>
@endpush