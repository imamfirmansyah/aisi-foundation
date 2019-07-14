@extends('layouts.dashboard')

@section('pageTitle', 'Daftar Member')
@section('pageHeader', 'Daftar Member')

@push('customCss')
<link rel="stylesheet" href="{{ url('plugin/datatables/datatables.min.css')}}">
@endpush

@section('content')
<div class="row">
    <div class="col-md-12">
        {{-- <a href="{{ route('user.detail',[ 'id' => 0])  }}" class="button aisi-datatables-button-add">Tambah</a> --}}
        
        <table id="aisi-datatables" class="basic-table" style="width:100%">
            <thead>
                <tr>
                    <th>Nama</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Tanggal</th>
                    <th>Status</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @foreach($data as $key => $val)
                <tr>
                    <td>
                        @php
                            if ( $val->role === "LEMBAGA" ) {
                                $circle_class = "color-yellow";
                            } elseif ( $val->role === "UMUM" ) {
                                $circle_class = "color-red";
                            } elseif ( $val->role === "STAFF" ) {
                                $circle_class = "color-green";
                            } else {
                                $circle_class = "color-blue";
                            }
                        @endphp

                        <span class="datatables-circle-character color-gradient-green {{ $circle_class }}">{{ substr($val->nama, 0, 1) }}</span>
                        {{ $val->nama }}
                    </td>
                    <td>{{ $val->email }}</td>
                    <td>{{ $val->role }}</td>
                    <td>{{ $val->created_at }}</td>
                    <td>                       
                        {!! $val->validate_status === 1 ? '<div class="datatables-hexagon-character tooltip bottom" title="Verified"><i class="fa fa-check"></i></div>' : '<div class="datatables-hexagon-character unverified tooltip bottom" title="Belum Terverifikasi"><i class="fa fa-close"></i></div>' !!}
                    </td>
                    <td>
                        <div class="aisi-datatables-action">
                            <a class="aisi-datatables-action-button"></a>
                            <div class="aisi-datatables-action-content">
                                <a href="{{ route('user.detail',['id'=>$val->id]) }}" class="aisi-datatables-item"><i class="fa fa-pencil"></i> Ubah</a>
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
            title: "Yakin Hapus Data Member?",
            text : "Data member akan dihapus permanen",
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
                    url: "{{ route('user.delete') }}",
                    type: "POST",
                    data: {
                        '_token': '{{csrf_token()}}',
                        'id':id,
                    },
                    success: function(data) {
                        swal({
                            title: 'Berhasil Hapus Member!',
                            text: 'Member berhasil di hapus',
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
                swal({
                    title : 'Data member tidak jadi dihapus',
                    icon: 'info',
                    position: 'center',
                });
            }
        });
    }
</script>
@endpush
