@extends('layouts.dashboard')

@section('pageTitle', 'Daftar Pengajuan Dana')
@section('pageHeader', 'Daftar Pengajuan Dana')

@push('customCss')
<link rel="stylesheet" href="{{ url('plugin/datatables/datatables.min.css')}}">
@endpush

@section('content')

<div class="row">
    <div class="col-md-12 text-right">
        <a href="{{ route('dana.detail',[ 'id' => 0])  }}" class="button text-right">Tambah</a>
    </div>

    <div class="col-md-12">
        <table id="example-table" class="basic-table">
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
                    <td>{{ $val->kegiatan->judul }}</td>
                    <td>{{ number_format($val->jumlah_pengajuan) }}</td>
                    <td>{{ number_format($val->jumlah_pencairan) }}</td>
                    <td>{{ $val->tgl_pengajuan }}</td>
                    <td>{{ $val->tgl_pencairan }}</td>
                    <td>{{ $val->status }}</td>
                    <td>
                        <a href="{{ route('dana.detail',['id'=>$val->id]) }}" class="button">Edit</a>
                        <a href="javascript:;" onclick="deleteData({{ $val->id }})" class="button">Hapus</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <th>No</th>
                    <th>Kode</th>
                    <th>Nama</th>
                    <th>Jenis</th>
                    <th>Status</th>
                    <th>Foto</th>
                    <th>Aksi</th>
                </tr>
            </tfoot>
        </table>
    </div>    
</div>

@endsection
@push('customJs')
<script src="{{ url('plugin/datatables/datatables.min.js') }}"></script>
<script>
    $(document).ready(function() {
        $('#example-table').DataTable({
            responsive: true,
        });

        $('div.dataTables_paginate').addClass("pagination");
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
