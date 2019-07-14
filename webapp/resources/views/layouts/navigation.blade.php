<!-- Navigation -->

<!-- Responsive Navigation Trigger -->
<a href="{{ route('dashboard') }}" class="dashboard-responsive-nav-trigger">
    <i class="fa fa-reorder"></i> Dashboard Navigation
</a>

<div class="dashboard-nav">
    <div class="dashboard-nav-inner">
        <ul data-submenu-title="Menu Utama">
            <li class="{{ Request::is('dashboard*') ? 'active' : '' }}">
                <a href="{{ route('dashboard') }}"><i class="sl sl-icon-home"></i> Dashboard</a>
            </li>
            @if( Auth::user()->role === 'STAFF' )
            <li class="{{ Request::is('barang*') ? 'active' : '' }}">
                <a href="{{ route('barang.index') }}"><i class="fa fa-calendar-check-o"></i> Barang & Inventaris</a>
                <ul>
                    <li><a href="{{ route('barang.trash') }}"><i class="fa fa-trash-o"></i> Restore Data</a></li>
                </ul>
            </li>
            @endif
            @if( Auth::user()->role !== 'ADMIN' )
            <li class="{{ Request::is('peminjaman*') ? 'active' : '' }}">
                <a><i class="sl sl-icon-plus"></i>Peminjaman</a>
                <ul>
                    <li><a href="{{ route('peminjaman.index') }}"> Daftar Peminjaman</a></li>
                    <li><a href="{{ route('peminjaman.create') }}"> Pinjam Barang</a></li>
                </ul>
            </li>
            @endif
        </ul>
        @if( Auth::user()->role !== 'UMUM' )
        <ul data-submenu-title="Kegiatan">
            <li class="{{ Request::is('kegiatan*') ? 'active' : '' }}">
                <a><i class="sl sl-icon-layers"></i> List Kegiatan</a>
                <ul>
                    <li><a href="{{ route('kegiatan.index',['type'=>'ALL']) }}">Semua {!! Auth::user()->role === 'STAFF' ? '<span class="nav-tag green">'. $jml_semua_kegiatan . '</span>' : '' !!}</a></li>
                    <li><a href="{{ route('kegiatan.index',['type'=>'DITERIMA']) }}">Diterima {!! Auth::user()->role === 'STAFF' ? '<span class="nav-tag yellow">'. $jml_kegiatan_diterima . '</span>' : '' !!}</a></li>
                    <li><a href="{{ route('kegiatan.index',['type'=>'DITOLAK']) }}">Ditolak {!! Auth::user()->role === 'STAFF' ? '<span class="nav-tag red">'. $jml_kegiatan_ditolak . '</span>' : '' !!}</a></li>
                    <li><a href="{{ route('kegiatan.index',['type'=>'PENGAJUAN']) }}">Pengajuan {!! Auth::user()->role === 'STAFF' ? '<span class="nav-tag blue">'. $jml_pengajuan_kegiatan . '</span>' : '' !!}</a></li>
                </ul>
            </li>
            @if( Auth::user()->role === 'STAFF' )
            <li class="{{ Request::is('dana*') ? 'active' : '' }}">
                <a href="{{ route('dana.index') }}"><i class="sl sl-icon-wallet"></i> Bantuan Dana</a>
                <ul>
                    <li><a href="{{ route('dana.grafik') }}"> Grafik</a></li>
                </ul>
            </li>
            @endif
        </ul>
        @endif
        <ul data-submenu-title="Member">
            @if( Auth::user()->role === 'STAFF' )
            <li class="{{ Request::is('user*') ? 'active' : '' }}">
                <a><i class="sl sl-icon-people"></i> List Member</a>
                <ul>
                    <li><a href="{{ route('user.index',['type'=>'ALL']) }}">Semua <span class="nav-tag green">{{ $jml_semua_user }}</span></a></li>
                    <li><a href="{{ route('user.index',['type'=>'LEMBAGA']) }}">Lembaga <span class="nav-tag yellow">{{ $jml_user_lembaga }}</span></a></li>
                    <li><a href="{{ route('user.index',['type'=>'UMUM']) }}">Umum <span class="nav-tag red">{{ $jml_user_umum }}</span></a></li>
                </ul>
            </li>
            @endif
            <li class="{{ Request::is('user-detail*') || Request::is('user-profile*') ? 'active' : '' }}"><a href="{{ route('user.profile') }}"><i class="sl sl-icon-user"></i> My Profile</a></li>
            <li><a href="index.html"><i class="sl sl-icon-power"></i> Logout</a></li>
        </ul>
    </div>
</div>

<!-- Navigation / End -->
