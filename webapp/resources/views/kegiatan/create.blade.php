@extends('layouts.dashboard')

@section('pageTitle', 'Tambah Kegiatan')
@section('pageHeader', 'Pengajuan Kegiatan')
@section('breadcrumb', 'Pengajuan Kegiatan')

@push('customCss')

@endpush

@section('content')

    <!-- Section -->
    <div class="add-listing-section aisi-form">
        <form method="POST" action="{{ route('kegiatan.save') }}" enctype="multipart/form-data">
            @csrf

            <input type="hidden" name="id_lembaga" value="{{ Auth::user()->lembaga->id }}">
            <!-- Headline -->
            <div class="add-listing-headline">
                <h3><i class="sl sl-icon-doc"></i> Informasi Kegiatan</h3>
            </div>
            
            <!-- Title -->
            <div class="row with-forms">
                <div class="col-md-12">
                    <h5>Nama Kegiatan</h5>
                    <input type="text" name="nama" value="{{ old('nama') }}" placeholder="Nama Kegiatan">
                    @if ($errors->has('nama'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('nama') }}</strong>
                    </span>
                    @endif
                </div>
                <div class="col-md-12">
                    <h5>Tanggal Kegiatan</h5>
                    <!-- Date Range Picker - docs: http://www.daterangepicker.com/ -->
                    <input name="tgl_kegiatan" type="text" id="date-picker" value="{{ old('tgl_kegiatan') }}" placeholder="Date" readonly="readonly">
                    
                    @if ($errors->has('tgl_kegiatan'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('tgl_kegiatan') }}</strong>
                    </span>
                    @endif
                </div> 
                <div class="col-md-12">
                    <h5>Desksripsi Singkat Kegiatan</h5>
                    <textarea name="deskripsi" cols="40" rows="3" placeholder="Desksripsi Singkat Kegiatan">{{ old('deskripsi') }}</textarea>
                    @if ($errors->has('deskripsi'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('deskripsi') }}</strong>
                    </span>
                    @endif
                </div>
                <div class="col-md-12">
                    <h5>Proposal Kegiatan</h5>
                    <small><em>Proposal harus berformat .pdf dan maksimal 5Mb</em></small>
                    <input type="file" name="proposal_kegiatan" class="aisi-input-file">
                    @if ($errors->has('proposal_kegiatan'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('proposal_kegiatan') }}</strong>
                    </span>
                    @endif
                </div>  
                <div class="col-md-6">
                    <input type="submit" class="submit button" value="Simpan">
                </div>
                <div class="col-md-6 text-right">
                    <a class="button" href="{{ route('kegiatan.index', ['type'=>'ALL']) }}">Batal</a>
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
    $('#date-picker').daterangepicker({
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
$('#date-picker').on('showCalendar.daterangepicker', function(ev, picker) {
    $('.daterangepicker').addClass('calendar-animated');
});
$('#date-picker').on('show.daterangepicker', function(ev, picker) {
    $('.daterangepicker').addClass('calendar-visible');
    $('.daterangepicker').removeClass('calendar-hidden');
});
$('#date-picker').on('hide.daterangepicker', function(ev, picker) {
    $('.daterangepicker').removeClass('calendar-visible');
    $('.daterangepicker').addClass('calendar-hidden');
});
</script>
@endpush
