@extends('layouts.dashboard')

@section('pageTitle', 'Daftar Barang dan Inventaris')
@section('pageHeader', 'Daftar Barang dan Inventaris')
@section('breadcrumb', 'Barang & Inventaris')

@push('customCss')
<link rel="stylesheet" href="{{ url('plugin/datatables/datatables.min.css')}}">
@endpush

@section('content')

<div class="row">
    <div class="col-md-12 text-right">
        <a href="{{ route('barang.detail',[ 'id' => 0])  }}" class="button text-right">Tambah</a>
    </div>

    <div class="col-md-12">
        <table id="example-table" class="basic-table">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Kode</th>
                    <th>Nama</th>
                    <th>Jenis</th>
                    <th>Status</th>
                    <th>Foto</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach($data as $key => $val)
                <tr>
                    <td>{{ $key+1 }}</td>
                    <td>{{ $val->kode_barang }}</td>
                    <td>{{ $val->nama }}</td>
                    <td>{{ $val->jenis_barang }}</td>
                    <td>{{ $val->status }}</td>
                    <td><img src="{{ url('storage/'.$val->foto) }}" width="100" height="100"></td>
                    <td>
                        <a href="{{ route('barang.detail',['id'=>$val->id]) }}" class="button">Edit</a>
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
                if(process){
                    $.ajax({
                        url: "{{ route('barang.delete') }}",
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
                    swal('Data barang tidak jadi dihapus');
                }
            });
    }
</script>
@endpush
