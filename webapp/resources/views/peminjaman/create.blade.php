@extends('layouts.dashboard')

@section('pageTitle', 'Pinjam Barang')
@section('pageHeader', 'Pinjam Barang')
@section('breadcrumb', 'Pinjam Barang')

@push('customCss')
<link rel="stylesheet" href="{{ url('plugin/datepicker/datepicker.min.css')}}">
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

            @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
            @endif

            @if(!empty(session('error')))
                <div class="alert alert-danger" style="color: red">
                    <ul>
                        <li>{{ session('error') }}</li>
                    </ul>
                </div>
            @endif
            
            <div class="row with-forms">
                <div class="col-md-6">
                    <h5>Tanggal Peminjaman</h5>
                    <input name="tgl_peminjaman" type="text" id="date-picker-start" placeholder="Tanggal Peminjaman">
                </div>
                <div class="col-md-6">
                    <h5>Tanggal Pengembalian</h5>
                    <input name="tgl_pengembalian" type="text" id="date-picker-end" placeholder="Tanggal Pengembalian">
                </div>
            </div>

            <!-- Title -->
            <div class="row with-forms">
                <div class="col-md-12">
                    <h5 class="margin-bottom-20">Pilih Barang</h5>
                    <!-- Filters -->
                    <div id="filters">
                        <ul class="option-set margin-bottom-30">
                            <li><a href="#" class="selected" data-filter="*">SEMUA</a></li>
                            @foreach( $data['kategori_barang'] as $item )
                            <li><a href="#" data-filter=".{{ str_replace(" ", "-", strtolower( $item->nama ) ) }}">{{ $item->nama }}</a></li>
                            @endforeach
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>

            <div class="row with-forms">
                <div class="projects isotope-wrapper">
                    @foreach( $data['barang'] as $key => $val )
                        <!-- Listing Item -->
                        <div class="col-lg-4 col-md-6 isotope-item {{ str_replace(" ", "-", strtolower( $val->kategori_barang->nama ) ) }}">
                            <div class="listing-item-container compact">
                                <div class="listing-item">
                                    <img src="{{ url('storage/barang/'.$val->foto) }}" alt="{{ $val->nama }}">

                                    <div class="listing-item-content">
                                        <span class="tag">{{ $val->kategori_barang->nama }}</span>
                                        <h3>{{ $val->nama }}</h3>
                                        <span>
                                            @php
                                                echo Str::limit($val->keterangan, 50);
                                            @endphp
                                        </span>
                                    </div>
                                    <span class="like-icon">
                                        <input class="checkbox-hidden" type="checkbox" name="barang[]" value="{{ $val->kode_barang }}">
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
                {{-- <div class="col-md-12">
                    <h5>Kegiatan</h5>
                    <select class="chosen-select-no-single" >
                        <option label="blank">Pilih Kegiatan</option>
                        @foreach($data['kegiatan'] as $key => $kegiatan)
                        <option {{ @$kegiatan->id == @$data['peminjaman']->id_kegiatan ? 'selected' : '' }}>{{ $kegiatan->judul }}</option>
                        @endforeach
                    </select>
                </div> --}}
                <div class="col-md-12">
                    <h5>Keterangan</h5>
                    <textarea name="keterangan" cols="40" rows="3" placeholder="Keterangan Peminjaman"></textarea>
                </div>
                @if(Auth::user()->role === "STAFF")
                <div class="col-md-12">
                    <h5>Status</h5>
                    <select class="chosen-select-no-single" >
                        <option label="blank">Pilih status</option>
                        <option {{ @$data['peminjaman']->status == 'ACTIVE' ? 'selected' : '' }}>ACTIVE</option>
                        <option {{ @$data['peminjaman']->status == 'INACTIVE' ? 'selected' : '' }}>INACTIVE</option>
                    </select>
                </div>
                @endif
           
                <div class="col-md-6">
                    <input type="submit" class="submit button" value="Simpan">
                </div>
                <div class="col-md-6 text-right">
                    <a class="button" href="{{ route('peminjaman.index') }}">Batal</a>
                </div>
            </div>
        
        </form>
    </div>
    <!-- Section / End -->

@endsection
@push('customJs')
<!-- Masonry Filtering -->
<script src="{{ url('js/template/isotope.min.js') }}"></script>
<script src="{{ url('plugin/datepicker/datepicker.min.js ') }}"></script>
{{-- <script src="{{ url('js/template/moment.min.js') }}"></script> --}}
{{-- <script src="{{ url('js/template/daterangepicker.js') }}"></script> --}}

<script>
    /* isotope */
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

    /* custom toggle checkbox value */
    $.fn.toggleCheckbox = function() {
        this.attr('checked', !this.attr('checked'));
    }

    $(".like-icon").on('click', function(e) {
        if (e.target.tagName != 'INPUT') {
            $(this).find("input").toggleCheckbox();
            return false;
        }
    });

    /* datepicker */
    var $startDate = $('#date-picker-start');
    var $endDate = $('#date-picker-end');

    $startDate.datepicker({
        autoHide: true,
        format: 'yyyy-mm-dd'
    });

    $endDate.datepicker({
        autoHide: true,
        format: 'yyyy-mm-dd',
        startDate: $startDate.datepicker('getDate'),
    });

    $startDate.on('change', function () {
        $endDate.datepicker('setStartDate', $startDate.datepicker('getDate'));
    });

</script>

@endpush
