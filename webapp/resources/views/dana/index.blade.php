@extends('layouts.dashboard')

@section('pageTitle', 'Daftar Pengajuan Dana')
@section('pageHeader', 'Daftar Pengajuan Dana')

@push('customCss')
<link rel="stylesheet" href="{{ url('plugin/datatables/datatables.min.css')}}">
@endpush

@section('content')

<div class="row">
    {{-- <div class="col-md-12">
        <a href="{{ route('dana.detail',[ 'id' => 0])  }}" class="button text-right">Tambah</a>
    </div> --}}

    <div class="col-md-12">
        @if( session()->has('message') )
        <div class="notification success closeable margin-bottom-30">
            <p>{{ session()->get('message') }}</p>
            <a class="close" href="#"></a>
        </div>
        @endif

        {{-- <a href="{{ route('dana.create')  }}" class="button aisi-datatables-button-add">Tambah</a> --}}

        <table id="aisi-datatables" class="basic-table" style="width:100%;">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Kegiatan</th>
                    <th>Pengajuan</th>
                    <th>Pencairan</th>
                    <th>Tgl Pengajuan</th>
                    <th>Tgl Pencairan</th>
                    <th>Status</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach($data as $key => $val)
                <tr>
                    <td>{{ $key+1 }}</td>
                    <td>{{ $val->kegiatan->nama }}</td>
                    <td>{{ number_format($val->jumlah_pengajuan) }}</td>
                    <td>{{ number_format($val->jumlah_pencairan) }}</td>
                    <td>{{ $val->tgl_pengajuan }}</td>
                    <td>{{ $val->tgl_pencairan }}</td>
                    <td>{{ $val->status }}</td>
                    <td>                        
                        <div class="aisi-datatables-action">
                            <a class="aisi-datatables-action-button"></a>
                            <div class="aisi-datatables-action-content">
                                <a href="{{ route('dana.edit',['id' => $val->id]) }}" class="aisi-datatables-item"><i class="fa fa-pencil"></i> Ubah</a>
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
            title: "Yakin Hapus Data Dana?",
            text : "Data dana akan dihapus permanen",
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
                        url: "{{ route('dana.delete') }}",
                        type: "POST",
                        data: {
                            '_token': '{{csrf_token()}}',
                            'id':id,
                        },
                        success: function(data) {
                            swal({
                                title: 'Berhasil Hapus Dana!',
                                text: 'Dana berhasil di hapus',
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
                    swal('Data dana tidak jadi dihapus');
                }
            });
    }
</script>
@endpush
