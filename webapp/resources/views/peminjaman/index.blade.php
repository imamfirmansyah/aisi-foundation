@extends('layouts.dashboard')

@section('pageTitle', 'Daftar Peminjaman')
@section('pageHeader', 'Daftar Peminjaman')

@push('customCss')
<link rel="stylesheet" href="{{ url('plugin/datatables/datatables.min.css')}}">
<link rel="stylesheet" href="{{ url('plugin/fullcalendar/packages/core/main.css')}}">
<link rel="stylesheet" href="{{ url('plugin/fullcalendar/packages/daygrid/main.css')}}">
<link rel="stylesheet" href="{{ url('plugin/fullcalendar/packages/list/main.css')}}">
@endpush

@section('content')

<div class="row">
    <div class="col-md-12">
        <div id='calendar'></div>
    </div>

    <div class="col-md-12 text-right">
        <a href="{{ route('peminjaman.detail',[ 'id' => 0])  }}" class="button text-right">Tambah</a>
    </div>

    <div class="col-md-12">
        <table id="example-table" class="basic-table" style="width: 100%;">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Barang</th>
                    <th>Member</th>
                    <th>Kegiatan</th>
                    <th>Tgl Pinjam</th>
                    <th>Tgl Kembali</th>
                    <th>Status</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach($data as $key => $val)
                <tr>
                    <td>{{ $key+1 }}</td>
                    <td>{{ @$val->barang->nama }}</td>
                    <td>{{ @$val->user->nama }}</td>
                    <td>{{ @$val->kegiatan->judul }}</td>
                    <td>{{ $val->tgl_pinjam }}</td>
                    <td>{{ $val->tgl_kembali }}</td>
                    <td>{{ $val->status }}</td>
                    <td>
                        <a href="{{ route('peminjaman.detail',['id'=>$val->id]) }}" class="button">Edit</a>
                        <a href="javascript:;" onclick="deleteData({{ $val->id }})" class="button">Hapus</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <th>No</th>
                    <th>Barang</th>
                    <th>Member</th>
                    <th>Kegiatan</th>
                    <th>Tgl Pinjam</th>
                    <th>Tgl Kembali</th>
                    <th>Status</th>
                    <th>Aksi</th>
                </tr>
            </tfoot>
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
        $('#example-table').DataTable({
            responsive: true,
        });

        $('div.dataTables_paginate').addClass("pagination");
    } );

    /* calendar */
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');

        var calendar = new FullCalendar.Calendar(calendarEl, {
            plugins: [ 'interaction', 'dayGrid', 'list' ],
            header: {
                left: 'prev,next, today',
                center: 'title',
                right: 'dayGridMonth,dayGridWeek,dayGridDay,listDay,listWeek'
            },
            views: {
                listDay: { buttonText: 'list day' },
                listWeek: { buttonText: 'list week' }
            },

            defaultDate: '2019-06-12',
            navLinks: true, 
            editable: false,
            eventLimit: true,
            events: [
            {
                title: 'All Day Event',
                start: '2019-06-01'
            },
            {
                title: 'Long Event',
                start: '2019-06-07',
                end: '2019-06-10'
            },
            {
                groupId: 999,
                title: 'Repeating Event',
                start: '2019-06-09T16:00:00'
            },
            {
                groupId: 999,
                title: 'Repeating Event',
                start: '2019-06-16T16:00:00'
            },
            {
                title: 'Conference',
                start: '2019-06-11',
                end: '2019-06-13'
            },
            {
                title: 'Meeting',
                start: '2019-06-12T10:30:00',
                end: '2019-06-12T12:30:00'
            },
            {
                title: 'Lunch',
                start: '2019-06-12T12:00:00'
            },
            {
                title: 'Meeting',
                start: '2019-06-12T14:30:00'
            },
            {
                title: 'Happy Hour',
                start: '2019-06-12T17:30:00'
            },
            {
                title: 'Dinner',
                start: '2019-06-12T20:00:00'
            },
            {
                title: 'Birthday Party',
                start: '2019-06-13T07:00:00'
            },
            {
                title: 'Click for Google',
                url: 'http://google.com/',
                start: '2019-06-28'
            }
            ]
        });

        calendar.render();
    });
    /* calendar end here */
    
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
                swal('Data peminjaman tidak jadi dihapus');
            }
        });
    }
</script>
@endpush
