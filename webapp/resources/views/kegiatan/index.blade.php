@extends('layouts.dashboard')

@section('pageTitle', 'Daftar Kegiatan')
@section('pageHeader', 'Daftar Kegiatan')
@section('breadcrumb', 'Daftar Kegiatan')

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
        
        @if( Auth::user()->validate_status && Auth::user()->role !== 'STAFF' && Auth::user()->role !== 'ADMIN' )
        <a href="{{ route('kegiatan.create') }}" class="button aisi-datatables-button-add">Tambah</a>
        @else
        <div class="notification success closeable margin-bottom-30">
            <p>Pengajuan Kegiatan Hanya untuk Lembaga yang sudah terverifikasi, lengkapi informasi profile anda melalui halaman <a href="{{ url('user-profile') }}"><strong>profile</strong></a></p>
            <a class="close" href="#"></a>
        </div>
        @endif

        <table id="aisi-datatables" class="basic-table" style="width: 100%;">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Lembaga</th>
                    <th>Nama Kegiatan</th>
                    <th>Tgl Kegiatan</th>
                    <th>Status</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach($data as $key => $val)
                <tr>
                    <td>{{ $key+1 }}</td>
                    <td>{{ $val->lembaga->nama }}</td>
                    <td><a href="{{ route('kegiatan.detail', ['id' => $val->id] ) }}" class="tooltip bottom" title="{{ $val->deskripsi }}">{{ $val->nama }}</a></td>
                    <td>{{ $val->tgl_kegiatan }}</td>
                    <td>{{ $val->status }}</td>
                    <td>                        
                        <div class="aisi-datatables-action">
                            <a class="aisi-datatables-action-button"></a>
                            <div class="aisi-datatables-action-content">
                                <a href="{{ route('kegiatan.edit',['id' => $val->id]) }}" class="aisi-datatables-item"><i class="fa fa-pencil"></i> Ubah</a>
                                <a href="javascript:;" onclick="deleteData({{ $val->id }})" class="aisi-datatables-item"><i class="fa fa-trash"></i> Hapus</a>
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
            title: "Yakin Hapus Data Kegiatan?",
            text : "Data kegiatan akan dihapus permanen",
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
                if(process){
                    $.ajax({
                        url: "{{ route('kegiatan.delete') }}",
                        type: "POST",
                        data: {
                            '_token': '{{csrf_token()}}',
                            'id':id,
                        },
                        success: function(data) {
                            swal({
                                title: 'Berhasil Hapus Kegiatan!',
                                text: 'Kegiatan berhasil di hapus',
                                icon: 'success',
                                timer: '2000'
                            });
                            table.ajax.reload();
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
                }else{
                    swal('Data kegiatan tidak jadi dihapus');
                }
            });
    }
</script>
@endpush
