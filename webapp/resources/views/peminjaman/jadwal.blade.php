@extends('layouts.dashboard')

@section('pageTitle', 'Jadwal Peminjaman')
@section('pageHeader', 'Jadwal Peminjaman')
@section('breadcrumb', 'Jadwal Peminjaman')

@push('customCss')
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
        <div id='calendar'></div>
    </div>
    
</div>

@endsection
@push('customJs')
<script src='{{ url('plugin/fullcalendar/packages/core/main.js') }}'></script>
<script src='{{ url('plugin/fullcalendar/packages/interaction/main.js') }}'></script>
<script src='{{ url('plugin/fullcalendar/packages/daygrid/main.js') }}'></script>
<script src='{{ url('plugin/fullcalendar/packages/list/main.js') }}'></script>

<script>

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

            // defaultDate: '2019-06-12',
            navLinks: true, 
            editable: false,
            eventLimit: true,
            events: 
            [
                @php
                foreach($data as $key => $val) {
                    $arrayBarangCalendar = [];
                    foreach ($val->barang as $barang) {
                        $arrayBarangCalendar[] = $barang->nama;
                    };

                    echo '{';
                        echo 'title: "'. implode($arrayBarangCalendar,',') . '",';
                        echo 'start: "'. $val->tgl_pinjam . '",';
                        echo 'end: "'. $val->tgl_kembali. '",';
                    echo '},';
                }
                @endphp
            ]
        });

        calendar.render();
    });
    /* calendar end here */

    @if (session('success'))
        swal({
            title: "Sukses simpan data peminjaman",
            text : "Data peminjaman berhasil disimpan",
            icon: "success",
            timer: 3000
        })
    @endif

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
