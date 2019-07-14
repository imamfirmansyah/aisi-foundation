@extends('layouts.dashboard')

@section('pageTitle', 'Grafik Dana')
@section('pageHeader', 'Grafik Dana')
@section('breadcrumb', 'Grafik Dana')

@push('customCss')

@endpush

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div id="chart-dana"></div>
            <a class="button" href="{{ route('kegiatan.index', ['type'=>'ALL']) }}">Kembali</a>
        </div>
    </div>
    
@endsection
@push('customJs')
<script src="{{ url('plugin/highchart/highcharts.js') }}"></script>
<script src="{{ url('plugin/highchart/series-label.js') }}"></script>
<script src="{{ url('plugin/highchart/exporting.js') }}"></script>
<script src="{{ url('plugin/highchart/export-data.js') }}"></script>

<script>
    var label = [];
    var value = [];

    @foreach($data as $crt)
        label.push('{{ $crt['tgl_pengajuan'] }}');
        value.push({{ $crt['jumlah_pengajuan']}} );
    @endforeach


    Highcharts.chart('chart-dana', {
        chart: {
            type: 'line'
        },
        title: {
            text: 'Grafik Jumlah Pengajuan Dana'
        },
        subtitle: {
            text: 'Dalam Satu Tahun Terakhir'
        },
        xAxis: {
            categories: label
        },
        yAxis: {
            title: {
                text: 'Jumlah Dana'
            }
        },
        plotOptions: {
            line: {
                dataLabels: {
                    enabled: true
                },
                enableMouseTracking: true
            }
        },
        /*tooltip: {
            pointFormat: "Rp {point.y:.2f}"
        },*/
        series: [{
            name: 'Pengajuan Dana',
            data: value,
        }]
    });
</script>
@endpush
