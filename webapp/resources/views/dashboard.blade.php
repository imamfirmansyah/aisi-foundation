@extends('layouts.dashboard')

@section('pageTitle', 'Dashboard')
@section('pageHeader', 'Hallo, Selamat Datang!')

@section('content')
{{-- <div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard file</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    You are logged in!
                </div>
            </div>
        </div>
    </div>
</div> --}}

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
                <span>Kegiatan Selesai</span>
            </div>
            <div class="dashboard-stat-icon"><i class="im im-icon-Heart"></i></div>
        </div>
    </div>
</div>

<div class="row">
    <!-- Recent Activity -->
    <div class="col-lg-6 col-md-12">
        <div class="dashboard-list-box with-icons margin-top-20">
            <h4>Panduan Penggunaan</h4>
            <ul>
                <li>
                    <i class="list-box-icon sl sl-icon-layers"></i> Menu <strong><a href="#">List Kegiatan </a></strong> berisi Informasi Seluruh Kegiatan Yayasan
                    <a href="#" class="close-list-item"><i class="fa fa-close"></i></a>
                </li>
                <li>
                    <i class="list-box-icon sl sl-icon-plus"></i> Menu <strong><a href="#">Peminjaman</a></strong> berisi Informasi Seluruh Data Peminjaman Baik oleh Lembaga maupun oleh Pelajar
                    <a href="#" class="close-list-item"><i class="fa fa-close"></i></a>
                </li>
                <li>
                    <i class="list-box-icon sl sl-icon-user"></i> Menu <strong><a href="#">My Profile</a></strong> untuk melakukan perubahan informasi profil akun
                </li>
                <li>
                    <i class="list-box-icon sl sl-icon-wallet"></i> Menu <strong><a href="#">Bantuan Dana</a></strong> memberikan informasi penggunaan dana yang dialokasikan untuk menunjang kegiatan
                    <a href="#" class="close-list-item"><i class="fa fa-close"></i></a>
                </li>
                <li>
                    <i class="list-box-icon sl sl-icon-heart"></i> Someone bookmarked your <strong><a href="#">Burger House</a></strong> listing!
                    <a href="#" class="close-list-item"><i class="fa fa-close"></i></a>
                </li>
                <li>
                    <i class="list-box-icon sl sl-icon-star"></i> John Doe left a review 
                    <div class="numerical-rating" data-rating="4.0"></div>
                    on <strong><a href="#">Burger House</a></strong>
                    <a href="#" class="close-list-item"><i class="fa fa-close"></i></a>
                </li>
                <li>
                    <i class="list-box-icon sl sl-icon-star"></i> Jack Perry left a review 
                    <div class="numerical-rating" data-rating="2.5"></div>
                    on <strong><a href="#">Tom's Restaurant</a></strong>
                    <a href="#" class="close-list-item"><i class="fa fa-close"></i></a>
                </li>
            </ul>
        </div>
    </div>

    <!-- Invoices -->
    <div class="col-lg-6 col-md-12">
        <div class="dashboard-list-box invoices with-icons margin-top-20">
            <h4>Invoices</h4>
            <ul>
                <li>
                    <i class="list-box-icon sl sl-icon-doc"></i>
                    <strong>Professional Plan</strong>
                    <ul>
                        <li class="unpaid">Unpaid</li>
                        <li>Order: #00124</li>
                        <li>Date: 20/07/2019</li>
                    </ul>
                    <div class="buttons-to-right">
                        <a href="dashboard-invoice.html" class="button gray">View Invoice</a>
                    </div>
                </li>
                <li>
                    <i class="list-box-icon sl sl-icon-doc"></i>
                    <strong>Extended Plan</strong>
                    <ul>
                        <li class="paid">Paid</li>
                        <li>Order: #00108</li>
                        <li>Date: 14/07/2019</li>
                    </ul>
                    <div class="buttons-to-right">
                        <a href="dashboard-invoice.html" class="button gray">View Invoice</a>
                    </div>
                </li>
                <li>
                    <i class="list-box-icon sl sl-icon-doc"></i>
                    <strong>Extended Plan</strong>
                    <ul>
                        <li class="paid">Paid</li>
                        <li>Order: #00097</li>
                        <li>Date: 10/07/2019</li>
                    </ul>
                    <div class="buttons-to-right">
                        <a href="dashboard-invoice.html" class="button gray">View Invoice</a>
                    </div>
                </li>
                <li>
                    <i class="list-box-icon sl sl-icon-doc"></i>
                    <strong>Basic Plan</strong>
                    <ul>
                        <li class="paid">Paid</li>
                        <li>Order: #00091</li>
                        <li>Date: 30/06/2019</li>
                    </ul>
                    <div class="buttons-to-right">
                        <a href="dashboard-invoice.html" class="button gray">View Invoice</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <p class="margin-top-20">

        <a href="{{ route('barang.index') }}">Barang</a>
        <a href="{{ url('barang') }}">lewat url</a>
        </p>
    </div>
</div>
@endsection
