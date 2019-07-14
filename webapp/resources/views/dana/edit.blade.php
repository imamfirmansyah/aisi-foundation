@extends('layouts.dashboard')

@section('pageTitle', 'Pengajuan Dana')
@section('pageHeader', empty($data['dana']->id) ? 'Tambah Pengajuan Dana' : 'Edit Pengajuan Dana')

@push('customCss')

@endpush

@section('content')

    <!-- Section -->
    <div class="add-listing-section aisi-form">
        <form method="POST" action="{{ route('dana.update', ['id' => $data->id] ) }}">
            @method('PUT')
            @csrf    
        
            <!-- Headline -->
            <div class="add-listing-headline">
                <h3><i class="sl sl-icon-doc"></i> Informasi Pengajuan Dana</h3>
            </div>

            <!-- Title -->
            <div class="row with-forms">
                <div class="col-md-6">
                    <h5>Jumlah Pengajuan</h5>
                    <input name="jumlah_pengajuan" class="search-field" type="text" value="{{ $data->jumlah_pengajuan }}">
                    @if ($errors->has('jumlah_pengajuan'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('jumlah_pengajuan') }}</strong>
                    </span>
                    @endif
                </div>
                <div class="col-md-6">
                    <h5>Jumlah Pencairan</h5>
                    <input name="jumlah_pencairan" class="search-field" type="text" value="{{ $data->jumlah_pencairan }}">
                    @if ($errors->has('jumlah_pencairan'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('jumlah_pencairan') }}</strong>
                    </span>
                    @endif
                </div>
            </div>

            <!-- Title -->
            <div class="row with-forms">
                <div class="col-md-6">
                    <h5>Tanggal Pengajuan</h5>
                    <!-- Date Range Picker - docs: http://www.daterangepicker.com/ -->
                    <input name="tgl_pengajuan" type="text" value="{{ $data->tgl_pengajuan }}" disabled>
                </div>
                <div class="col-md-6">
                    <h5>Tanggal Pencairan</h5>
                    <input name="tgl_pencairan" type="text" id="date-picker-pencairan" value="{{ $data->tgl_pencairan }}" placeholder="Date" readonly="readonly">
                    @if ($errors->has('tgl_pencairan'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('tgl_pencairan') }}</strong>
                    </span>
                    @endif
                </div>
            </div>
            
            <div class="row with-forms">    
                <div class="col-md-12">
                    <h5>Keterangan</h5>
                    <textarea name="keterangan" cols="40" rows="3">{{ $data->keterangan }}</textarea>
                    @if ($errors->has('keterangan'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('keterangan') }}</strong>
                    </span>
                    @endif
                </div>
            </div>

            <!-- Title -->
            <div class="row with-forms">
                <div class="col-md-12">
                    <h5>Status</h5>
                    <select name="status" class="chosen-select-no-single" >
                        <option value="" label="blank">Pilih status</option>
                        <option value="PROSES" {{ $data->status == 'PROSES' ? 'selected' : '' }}>PROSES</option>
                        <option value="DITOLAK" {{ $data->status == 'DITOLAK' ? 'selected' : '' }}>DITOLAK</option>
                        <option value="DISETUJUI" {{ $data->status == 'DISETUJUI' ? 'selected' : '' }}>DISETUJUI</option>
                    </select>
                    @if ($errors->has('status'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('status') }}</strong>
                    </span>
                    @endif
                </div>
            </div>
            
            <div class="row with-forms">
                <div class="col-md-6">
                    <input type="submit" class="submit button" value="Simpan">
                </div>
                <div class="col-md-6 text-right">
                    <a class="button" href="{{ route('dana.index') }}">Batal</a>
                </div>
            </div>
        
        </form>
    </div>
    <!-- Section / End -->

@endsection
@push('customJs')
<script src="{{ url('js/template/moment.min.js') }}"></script>
<script src="{{ url('js/template/daterangepicker.js') }}"></script>

<script>
// Calendar Init
$(function() {
    $('#date-picker-pencairan').daterangepicker({
        "opens": "left",
        singleDatePicker: true,
        locale: {
            format: 'YYYY-MM-DD'
        },
        // Disabling Date Ranges
        isInvalidDate: function(date) {
            // Disabling Date Range
            var disabled_start = moment('09/02/2018', 'MM/DD/YYYY');
            var disabled_end = moment('09/06/2018', 'MM/DD/YYYY');
            return date.isAfter(disabled_start) && date.isBefore(disabled_end);

            // Disabling Single Day
            // if (date.format('MM/DD/YYYY') == '08/08/2018') {
            //     return true; 
            // }
        }
    });
});

// Calendar animation
$('#date-picker-pencairan').on('showCalendar.daterangepicker', function(ev, picker) {
    $('.daterangepicker').addClass('calendar-animated');
});
$('#date-picker-pencairan').on('show.daterangepicker', function(ev, picker) {
    $('.daterangepicker').addClass('calendar-visible');
    $('.daterangepicker').removeClass('calendar-hidden');
});
$('#date-picker-pencairan').on('hide.daterangepicker', function(ev, picker) {
    $('.daterangepicker').removeClass('calendar-visible');
    $('.daterangepicker').addClass('calendar-hidden');
});
</script>
@endpush
