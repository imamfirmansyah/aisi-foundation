@extends('layouts.dashboard')

@section('pageTitle', 'Daftar Peminjaman')
@section('pageHeader', 'Daftar Peminjaman')
@section('breadcrumb', 'Daftar Peminjaman')

@push('customCss')
<link rel="stylesheet" href="{{ url('plugin/datatables/datatables.min.css')}}">
<link rel="stylesheet" href="{{ url('plugin/fullcalendar/packages/core/main.css')}}">
<link rel="stylesheet" href="{{ url('plugin/fullcalendar/packages/daygrid/main.css')}}">
<link rel="stylesheet" href="{{ url('plugin/fullcalendar/packages/list/main.css')}}">
@endpush

@section('content')

<div class="row">

    @if (session('success'))
        <div class="alert alert-success">
            <ul>
                <li>{{ session('success') }}</li>
            </ul>
        </div>
    @endif

    <div class="col-md-12">
        {{-- <a href="{{ route('peminjaman.detail',[ 'id' => 0])  }}" class="button aisi-datatables-button-add">Tambah</a> --}}

        <table id="aisi-datatables" class="basic-table" style="width:100%">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Member</th>
                    <th>Barang</th>
                    <th>Kegiatan</th>
                    <th>Tgl Pinjam</th>
                    <th>Tgl Kembali</th>
                    <th>Keterangan</th>
                    <th>Status</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                {{-- {{ dd($data) }} --}}
                @foreach($data as $key => $val)
                <tr>
                    <td>{{ $key+1 }}</td>
                    <td>{{ $val->user->nama }}</td>
                    <td>
                        <?php
                            $arrayBarang = [];

                            foreach ($val->barang as $barang){
                                $arrayBarang[] = $barang->nama;
                            }

                            echo '<a href="'. route('peminjaman.detail',['id' => $val->id ]).'">'.implode($arrayBarang,',').'</a>';
                        ?>
                    </td>
                    <td>{{ @$val->kegiatan->judul }}</td>
                    <td>{{ $val->tgl_pinjam }}</td>
                    <td>{{ $val->tgl_kembali }}</td>
                    <td>{{ $val->keterangan }}</td>
                    <td>{{ $val->status }}</td>
                    <td>                        
                        @if ( Auth::user()->id === $val->user->id || Auth::user()->role === 'STAFF' )
                        <div class="aisi-datatables-action">
                            <a class="aisi-datatables-action-button"></a>
                            <div class="aisi-datatables-action-content">
                                @if ( $val->status === 'DIPINJAM' && Auth::user()->role === 'STAFF' )
                                <a href="javascript:;" onclick="dataSelesai({{ $val->id }})" class="aisi-datatables-item"><i class="fa fa-inbox" aria-hidden="true"></i>Selesai</a>
                                @endif
                                <a href="{{ route('peminjaman.edit',['id' => $val->id ]) }}" class="aisi-datatables-item"><i class="fa fa-pencil"></i> Ubah</a>
                                <a href="javascript:;" onclick="deleteData({{ $val->id }})" class="aisi-datatables-item"><i class="fa fa-trash"></i> Hapus</a>
                            </div>
                        </div>
                        @endif
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
<script src='{{ url('plugin/fullcalendar/packages/core/main.js') }}'></script>
<script src='{{ url('plugin/fullcalendar/packages/interaction/main.js') }}'></script>
<script src='{{ url('plugin/fullcalendar/packages/daygrid/main.js') }}'></script>
<script src='{{ url('plugin/fullcalendar/packages/list/main.js') }}'></script>

<script>
    $(document).ready(function() {
        $('#aisi-datatables').DataTable({
            responsive: true,
            "dom" : '<"aisi-datatables"<"aisi-datatables-header"lf>t<"aisi-datatables-footer"ip>>',
        });

        $('div.dataTables_paginate').addClass("pagination");
        $(".aisi-datatables-button-add").prependTo(".aisi-datatables-header");
    } );

    @if (session('success'))
        swal({
            title: "Sukses simpan data peminjaman",
            text : "Data peminjaman berhasil disimpan",
            icon: "success",
            timer: 3000
        })
    @endif

    function dataSelesai(id) {
        swal({
            title: "Data Peminjaman Telah Selesai",
            text : "Pastikan Barang yang dipinjam sudah dikembalikan",
            icon: "warning",
            buttons: {
                cancel:true,
                confirm: {
                    text:'Ya',
                    closeModal: false,
                },
            },
        })
        .then((process) => {
            if(process){
                $.ajax({
                    url: "{{ route('peminjaman.selesai') }}",
                    type: "POST",
                    data: {
                        '_token': '{{csrf_token()}}',
                        'id':id,
                    },
                    success: function(data) {
                        swal({
                            title: 'Berhasil Mengubah Data Peminjaman!',
                            text: 'Peminjaman Telah Selesai',
                            icon: 'success',
                            timer: '2000'
                        });
                        location.reload();
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
                swal('Data peminjaman tidak jadi dihapus');
            }
        });
    }

    function deleteData(id) {
        swal({
            title: "Yakin Hapus Data Peminjaman?",
            text : "Data peminjaman akan dihapus permanen",
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
                    url: "{{ route('peminjaman.delete') }}",
                    type: "POST",
                    data: {
                        '_token': '{{csrf_token()}}',
                        'id':id,
                    },
                    success: function(data) {
                        swal({
                            title: 'Berhasil Hapus Peminjaman!',
                            text: 'Peminjaman berhasil di hapus',
                            icon: 'success',
                            timer: '2000'
                        });
                        location.reload();
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
                swal('Data peminjaman tidak jadi dihapus');
            }
        });
    }
</script>
@endpush
