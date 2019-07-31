@extends('layouts.dashboard')

@section('pageTitle', 'Ubah Kegiatan')
@section('pageHeader', 'Ubah Kegiatan')
@section('breadcrumb', 'Ubah Kegiatan')

@push('customCss')

@endpush

@section('content')
    
    <!-- Section -->
    <div class="add-listing-section aisi-form">
        <form method="POST" action="{{ route('kegiatan.update', ['id' => $data['kegiatan']->id]) }}" enctype="multipart/form-data">
            @method('PUT')
            @csrf

            <input type="hidden" name="id_lembaga" value="{{ $data['kegiatan']->id_lembaga }}">
            <!-- Headline -->
            <div class="add-listing-headline">
                <h3><i class="sl sl-icon-doc"></i> Informasi Kegiatan</h3>
            </div>
            
            <!-- Title -->
            <div class="row with-forms">
                <div class="col-md-12">
                    <h5>Nama Kegiatan</h5>
                    <input type="text" name="nama" value="{{ $data['kegiatan']->nama }}" placeholder="Nama Kegiatan" {{ Auth::user()->role !== 'LEMBAGA' ? 'readonly=readonly' : '' }}>
                    @if ($errors->has('nama'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('nama') }}</strong>
                    </span>
                    @endif
                </div>
                <div class="col-md-12">
                    <h5>Tanggal Kegiatan</h5>
                    <!-- Date Range Picker - docs: http://www.daterangepicker.com/ -->
                    <input name="tgl_kegiatan" type="text" {{ Auth::user()->role !== 'LEMBAGA' ? 'id="date-picker"' : '' }} value="{{ $data['kegiatan']->tgl_kegiatan }}" placeholder="Date" readonly="readonly" {{ Auth::user()->role !== 'LEMBAGA' ? 'readonly="readonly"' : '' }}>
                    @if ($errors->has('tgl_kegiatan'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('tgl_kegiatan') }}</strong>
                    </span>
                    @endif
                </div> 
                <div class="col-md-12">
                    <h5>Desksripsi Singkat Kegiatan</h5>
                    <textarea name="deskripsi" cols="40" rows="3" placeholder="Desksripsi Singkat Kegiatan" {{ Auth::user()->role !== 'LEMBAGA' ? 'readonly=readonly' : '' }}>{{ $data['kegiatan']->deskripsi }}</textarea>
                    @if ($errors->has('deskripsi'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('deskripsi') }}</strong>
                    </span>
                    @endif
                </div>
                <div class="col-md-12">
                    <h5>Proposal Kegiatan</h5>
                    <small><em><a href="{{ url( 'storage/proposal/'. $data['kegiatan']->proposal_kegiatan ) }}">{{ $data['kegiatan']->proposal_kegiatan }}</a></em></small>
                    <input type="file" name="proposal_kegiatan" class="aisi-input-file" {{ Auth::user()->role !== 'LEMBAGA' ? 'disabled' : '' }}>
                    @if ($errors->has('proposal_kegiatan'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('proposal_kegiatan') }}</strong>
                    </span>
                    @endif
                </div>

                @if ( $data['kegiatan']->status === "DITERIMA" && Auth::user()->role === 'LEMBAGA')
                <div class="col-md-12">
                    <h5>Dokumentasi Kegiatan</h5>
                    <small><em>Sertakan link google drive yang berisi foto-foto kegiatan dan laporan kegiatan berupa file dokumen pada kolom dibawah ini</em></small>
                    <input type="text" name="link_file" value="{{ $data['dokumentasi'][0]->file }}" placeholder="Link Dokumentasi Kegiatan">
                </div>
                <div class="col-md-12">
                <h5>Keterangan Dokumentasi</h5>
                    <textarea name="keterangan" cols="40" rows="3" placeholder="Keterangan Dokumentasi Kegiatan">{{ $data['dokumentasi'][0]->keterangan }}</textarea>
                </div>
                @endif

                @if ( Auth::user()->role === 'ADMIN')
                <div class="col-md-12">
                    <h5>Status Pengajuan</h5>
                    @if( $data['kegiatan']->status === "DITERIMA" )
                        <input type="status" name="status" value="{{ $data['kegiatan']->status }}" placeholder="Pilih Status" readonly="readonly">
                    @else
                    <select name="status" class="chosen-select-no-single" }}>
                        <option value="" label="blank">Pilih status</option>
                        <option value="DITERIMA" {{ $data['kegiatan']->status === "DITERIMA" ? 'selected' : '' }}>DITERIMA</option>
                        <option value="DITOLAK" {{ $data['kegiatan']->status === "DITOLAK" ? 'selected' : '' }}>DITOLAK</option>
                        <option value="PENGAJUAN" {{ $data['kegiatan']->status === "PENGAJUAN" ? 'selected' : '' }}>PENGAJUAN</option>
                    </select>
                    @endif
                    @if ($errors->has('status'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('status') }}</strong>
                    </span>
                    @endif
                </div>
                <div class="col-md-12">
                    <h5>Pesan / Catatan</h5>
                    <textarea name="pesan" cols="40" rows="3" placeholder="Pesan">{{ $data['kegiatan']->pesan }}</textarea>
                    @if ($errors->has('pesan'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('pesan') }}</strong>
                    </span>
                    @endif
                </div>
                @endif

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
