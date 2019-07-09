@extends('layouts.dashboard')

@section('pageTitle', 'Dashboard')
@section('pageHeader', 'Hallo '. Auth::user()->nama.', Selamat Datang!')

@section('content')

<div class="row">
    <!-- Item -->
    <div class="col-lg-3 col-md-6">
        <div class="dashboard-stat color-1">
            <div class="dashboard-stat-content">
                <h4>19</h4>
                <span>Kegiatan Berjalan</span>
            </div>
            <div class="dashboard-stat-icon"><i class="im im-icon-Map2"></i></div>
        </div>
    </div>
    <!-- Item -->
    <div class="col-lg-3 col-md-6">
        <div class="dashboard-stat color-2">
            <div class="dashboard-stat-content">
                <h4>27</h4>
                <span>Pengajuan Dana</span>
            </div>
            <div class="dashboard-stat-icon"><i class="im im-icon-Line-Chart"></i></div>
        </div>
    </div>
    <!-- Item -->
    <div class="col-lg-3 col-md-6">
        <div class="dashboard-stat color-3">
            <div class="dashboard-stat-content">
                <h4>87</h4>
                <span>Total Member</span>
            </div>
            <div class="dashboard-stat-icon"><i class="im im-icon-Add-UserStar"></i></div>
        </div>
    </div>
    <!-- Item -->
    <div class="col-lg-3 col-md-6">
        <div class="dashboard-stat color-4">
            <div class="dashboard-stat-content">
                <h4>23</h4>
                <span>Total Peminjaman</span>
            </div>
            <div class="dashboard-stat-icon"><i class="im im-icon-Heart"></i></div>
        </div>
    </div>
</div>

<div class="row">
    <!-- Recent Activity -->
    <div class="col-lg-6 col-md-12">
        <div class="dashboard-list-box with-icons margin-top-20">
            <h4>Daftar Kegiatan</h4>
            <ul>
                @foreach($data['kegiatan'] as $key => $kegiatan)
                <li>
                    <i class="list-box-icon sl sl-icon-layers"></i> {!! @$kegiatan->judul . ' diselenggarakan oleh <b>'.@$kegiatan->lembaga->nama.'</b> pada tanggal '.@$kegiatan->tgl_kegiatan !!}
                    <br>
                    <a href="{{ route('kegiatan.detail',['id'=>@$kegiatan->id]) }}" class="button gray">View</a>
                </li>
                @endforeach
            </ul>
        </div>
    </div>

    <!-- Invoices -->
    <div class="col-lg-6 col-md-12">
        <div class="dashboard-list-box with-icons margin-top-20">
            <h4>Daftar Peminjaman</h4>
            <ul>
                @foreach($data['peminjaman'] as $key => $peminjaman)
                    <li>
                        <i class="list-box-icon sl sl-icon-layers"></i> {!! @$peminjaman->barang->nama . ' dipinjam oleh <b>'.@$peminjaman->user->nama.'</b> pada tanggal '.@$peminjaman->tgl_pinjam !!}
                        <br>
                        <a href="{{ route('peminjaman.detail',['id'=>@$peminjaman->id]) }}" class="button gray">View</a>
                    </li>
                @endforeach
            </ul>
        </div>
    </div>
</div>
@endsection
