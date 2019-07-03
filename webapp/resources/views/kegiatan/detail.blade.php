@extends('layouts.dashboard')

@section('pageTitle', 'Detail Kegiatan')
@section('pageHeader', empty($data['kegiatan']->id) ? 'Tambah Kegiatan' : 'Edit Kegiatan')

@push('customCss')

@endpush

@section('content')

    <!-- Section -->
    <div class="add-listing-section">

        <!-- Headline -->
        <div class="add-listing-headline">
            <h3><i class="sl sl-icon-doc"></i> Informasi Kegiatan</h3>
        </div>

        <!-- Title -->
        <div class="row with-forms">
            <div class="col-md-6">
                <h5>Lembaga</h5>
                <select class="chosen-select-no-single" >
                    <option label="blank">Pilih Lembaga</option>
                    @foreach($data['lembaga'] as $key => $lembaga)
                    <option {{ @$lembaga->id == @$data['kegiatan']->id_lembaga ? 'selected' : '' }}>{{ $lembaga->nama }}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-md-6">
                <h5>Judul</h5>
                <input class="search-field" type="text" value="{{ @$data['kegiatan']->judul }}"/>
            </div>
        </div>

        <!-- Title -->
        <div class="row with-forms">
            <div class="col-md-6">
                <h5>Deskripsi</h5>
                <textarea class="WYSIWYG" name="summary" cols="40" rows="3" id="summary" spellcheck="true">{{ @$data['kegiatan']->deskripsi }}</textarea>
            </div>
            <div class="col-md-6">
                <h5>Tanggal Kegiatan</h5>
                <input class="search-field" type="text" value="{{ @$data['kegiatan']->tgl_kegiatan }}"/>
            </div>
        </div>

        <!-- Title -->
        <div class="row with-forms">
            <div class="col-md-6">
                <h5>Proposal Kegiatan</h5>
                <input type="file" class="upload" />
                @if(!empty(@$data['kegiatan']->proposal_kegiatan))
                <a href="{{ url('storage/'.@$data['kegiatan']->proposal_kegiatan) }}" target="_blank">Download Proposal</a>
                @endif
            </div>
            <div class="col-md-6">
                <h5>Status</h5>
                <select class="chosen-select-no-single" >
                    <option label="blank">Pilih status</option>
                    <option {{ @$data['kegiatan']->status == 'PENGAJUAN' ? 'selected' : '' }}>PENGAJUAN</option>
                    <option {{ @$data['kegiatan']->status == 'DITOLAK' ? 'selected' : '' }}>DITOLAK</option>
                    <option {{ @$data['kegiatan']->status == 'DITERIMA' ? 'selected' : '' }}>DITERIMA</option>
                </select>
            </div>
        </div>

    </div>
    <!-- Section / End -->

    <!-- Section -->
    <div class="add-listing-section margin-top-45">

        <!-- Headline -->
        <div class="add-listing-headline">
            <h3><i class="sl sl-icon-book-open"></i> Dokumentasi</h3>
            <!-- Switcher -->
            <label class="switch"><input type="checkbox" checked><span class="slider round"></span></label>
        </div>

        <!-- Switcher ON-OFF Content -->
        <div class="switcher-content">

            <div class="row">
                <div class="col-md-12">
                    <table id="pricing-list-container">
                        <tr class="pricing-list-item pattern">
                            @if(!empty(@$data['kegiatan']->dokumentasi))
                            @foreach(@$data['kegiatan']->dokumentasi as $key => $dokumentasi)
                            <td>
                                <div class="fm-move"><i class="sl sl-icon-cursor-move"></i></div>
                                <div class="fm-input pricing-name"><input type="file" placeholder="Title" /></div>
                                <div class="fm-input pricing-ingredients"><input type="text" placeholder="Description" value="{{ $dokumentasi->keterangan }}" /></div>
                                <div class="fm-input pricing-price"><a href="{{ url('storage/'.$dokumentasi->file) }}" target="_blank">Preview</a></div>
                                <div class="fm-close"><a class="delete" href="#"><i class="fa fa-remove"></i></a></div>
                            </td>
                            @endforeach
                            @endif
                        </tr>
                    </table>
                    <a href="#" class="button add-pricing-list-item">Add Item</a>
                </div>
            </div>

        </div>
        <!-- Switcher ON-OFF Content / End -->

        <a class="button margin-top-15">Simpan</a>
        <a class="button margin-top-15" href="{{ route('kegiatan.index',['type'=>'ALL']) }}">Batal</a>

    </div>
    <!-- Section / End -->

@endsection
@push('customJs')

@endpush
