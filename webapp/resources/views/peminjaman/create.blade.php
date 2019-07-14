@extends('layouts.dashboard')

@section('pageTitle', 'Pinjam Barang')
@section('pageHeader', 'Pinjam Barang')
@section('breadcrumb', 'Pinjam Barang')

@push('customCss')

@endpush

@section('content')

    <!-- Section -->
    <div class="add-listing-section">
        <form method="POST" action="{{ route('peminjaman.save') }}" enctype="multipart/form-data">
            @csrf
            <!-- Headline -->
            <div class="add-listing-headline">
                <h3><i class="sl sl-icon-doc"></i> Informasi Peminjaman</h3>
            </div>
            
            <div class="row with-forms">
                <div class="col-md-12">
                    <h5>Tanggal Peminjaman</h5>
                    <input type="text" id="date-picker" placeholder="Tanggal Peminjaman" readonly="readonly">
                </div>
            </div>

            <!-- Title -->
            <div class="row with-forms">
                <div class="col-md-12">
                    <h5 class="margin-bottom-20">Pilih Barang</h5>
                    <!-- Filters -->
                    <div id="filters">
                        <ul class="option-set margin-bottom-30">
                            <li><a href="#filter" class="selected" data-filter="*">SEMUA</a></li>
                            <li><a href="#filter" data-filter=".atk">ATK</a></li>
                            <li><a href="#filter" data-filter=".elektronik">ELEKTRONIK</a></li>
                            <li><a href="#filter" data-filter=".ruangan">RUANGAN</a></li>
                            <li><a href="#filter" data-filter=".lain-lain">LAIN-LAIN</a></li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>

            <div class="row with-forms">
                <div class="projects isotope-wrapper">
                    @foreach($data['barang'] as $key => $val)
                        <!-- Listing Item -->
                        <div class="col-lg-4 col-md-6 isotope-item{{ strtolower($val->jenis_barang) }}">
                            <div class="listing-item-container compact">
                                <div class="listing-item">
                                    <img src="{{ url('storage/barang/'.$val->foto) }}" alt="{{ $val->nama }}">

                                    <div class="listing-item-content">
                                        <span class="tag">{{ $val->jenis_barang }}</span>
                                        <h3>{{ $val->nama }}</h3>
                                        <span>{{ $val->keterangan }}</span>
                                    </div>
                                    <span class="like-icon">
                                        <input class="checkbox-hidden" type="checkbox" name="barang" value="{{ $val->id }}">
                                    </span>
                                </div>
                            </div>
                        </div>
                        <!-- Listing Item / End -->
                    @endforeach
                </div>
            </div>


            

        <!-- Title -->
        <div class="row with-forms">
            <div class="col-md-6">
                <h5>Kegiatan</h5>
                <select class="chosen-select-no-single" >
                    <option label="blank">Pilih Kegiatan</option>
                    @foreach($data['kegiatan'] as $key => $kegiatan)
                        <option {{ @$kegiatan->id == @$data['peminjaman']->id_kegiatan ? 'selected' : '' }}>{{ $kegiatan->judul }}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-md-6">
                <h5>Keterangan</h5>
                <textarea class="WYSIWYG" name="summary" cols="40" rows="3" id="summary" spellcheck="true">{{ @$data['peminjaman']->keterangan }}</textarea>
            </div>
        </div>

        <!-- Title -->
        <div class="row with-forms">
            <div class="col-md-6">
                <h5>Status</h5>
                <select class="chosen-select-no-single" >
                    <option label="blank">Pilih status</option>
                    <option {{ @$data['peminjaman']->status == 'ACTIVE' ? 'selected' : '' }}>ACTIVE</option>
                    <option {{ @$data['peminjaman']->status == 'INACTIVE' ? 'selected' : '' }}>INACTIVE</option>
                </select>
            </div>
        </div>

        <a class="button margin-top-15">Simpan</a>
        <a class="button margin-top-15" href="{{ route('peminjaman.index') }}">Batal</a>
        
        </form>
    </div>
    <!-- Section / End -->

@endsection
@push('customJs')
<!-- Masonry Filtering -->
<script src="{{ url('js/template/isotope.min.js') }}"></script>
<script src="{{ url('js/template/moment.min.js') }}"></script>
<script src="{{ url('js/template/daterangepicker.js') }}"></script>

<script>
    $(window).load(function(){
      var $container = $('.isotope-wrapper');
      $container.isotope({ itemSelector: '.isotope-item', layoutMode: 'masonry' });
    });

    $('#filters a').click(function(e){
      e.preventDefault();

      var selector = $(this).attr('data-filter');
      $('.projects.isotope-wrapper').isotope({ filter: selector });

      $(this).parents('ul').find('a').removeClass('selected');
      $(this).addClass('selected');
    });

    $('#date-picker').daterangepicker({
        "opens": "left",
        // singleDatePicker: true,

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

    $.fn.toggleCheckbox = function() {
        this.attr('checked', !this.attr('checked'));
    }

    $(".like-icon").on('click', function(e) {
        if (e.target.tagName != 'INPUT') {
            $(this).find("input").toggleCheckbox();
            return false;
        }
    });

</script>

@endpush
