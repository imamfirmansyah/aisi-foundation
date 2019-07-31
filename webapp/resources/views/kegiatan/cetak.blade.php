<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Cetak Laporan Kegiatan</title>
    <link rel="stylesheet" href="{{ url('css/laporan.css') }}">
</head> 

<body>
    <div class="container">        
        <div class="row">
            <div class="col-md-12 text-center">
                <!-- Print Button -->
                <a class="print-button back" href="{{ route('kegiatan.detail', ['id' => $data->id]) }}">Kembali</a>
                <a href="javascript:window.print()" class="print-button colored">Cetak Laporan Ini</a>
            </div>
        </div>
    </div>

<!-- Invoice -->
<div id="laporan">

    <!-- Header -->
    <div class="row">
        <div class="col-md-6">
            <div id="logo"><img src="{{ url('images/logo-aisi.png') }}" alt=""></div>
        </div>

        <div class="col-md-6">  

            <p id="details">
                <strong>Order:</strong> #00124 <br>
                <strong>Issued:</strong> 20/07/2019 <br>
                Due 7 days from date of issue
            </p>
        </div>
    </div>


    <!-- Client & Supplier -->
    <div class="row">
        <div class="col-md-12">
            <h2>Laporan Kegiatan</h2>
        </div>

        <div class="col-md-12">  
            <p>
                <strong class="margin-bottom-5">Nama Lembaga : </strong> {{ $data->lembaga->nama }} <br>
                <strong class="margin-bottom-5">Tanggal Kegiatan : </strong> {{ $data->tgl_kegiatan }} <br>
                <strong class="margin-bottom-5">Deskripsi Kegiatan : </strong> {{ $data->deskripsi }}
            </p>
        </div>
    </div>


    <!-- Invoice -->
    <div class="row">
        <div class="col-md-12">
            <strong>Detail Bantuan Dana Kegiatan</strong>
            <table class="margin-top-10">
                <tr>
                    <th>Nama Kegiatan</th>
                    <th>Status</th>
                    <th>Jumlah Bantuan Dana</th>
                    <th>Total</th>
                </tr>

                <tr>
                    <td>{{ $data->nama }}</td> 
                    <td>{{ $data->dana->status }}</td>
                    <td>Rp {{ number_format($data->dana->jumlah_pencairan) }}</td>
                    <td>Rp {{ number_format($data->dana->jumlah_pencairan) }}</td>
                </tr>
            </table>
        </div>
        
        <div class="col-md-4 col-md-offset-8">  
            <table id="totals">
                <tr>
                    <th>Total</th> 
                    <th><span>Rp {{ number_format($data->dana->jumlah_pencairan) }}</span></th>
                </tr>
            </table>
        </div>
    </div>


    <!-- Footer -->
    <div class="row">
        <div class="col-md-12">
            <ul id="footer">
                <li><span>www.aisifoundation.org</span></li>
                <li>aisifoundation@gmail.com</li>
                <li>0896-1052-2031</li>
            </ul>
        </div>
    </div>
        
</div>
</body>
</html>