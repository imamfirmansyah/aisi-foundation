<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>{{ config('app.name', 'Laravel') }} - @yield('pageTitle')</title>

        <!-- Styles -->
        <link rel="stylesheet" href="{{ asset('css/style.css') }}">
        <link rel="stylesheet" href="{{ asset('css/colors/orange.css') }}">
        @stack('customCss')
        <link rel="stylesheet" href="{{ asset('css/custom.css') }}">

        <!-- favicon -->
        <link rel="shortcut icon" href="{{ asset('images/favicon.png') }}">

    </head>
    <body>
        <div id="app">
            <!-- content -->
            @yield('content')
            <!-- content end here -->
        </div>

        <!-- Scripts -->
        <script src="{{ asset('js/template/jquery-2.2.0.min.js') }}"></script>
        <script src="{{ asset('js/template/mmenu.min.js') }}"></script>
        <script src="{{ asset('js/template/chosen.min.js') }}"></script>
        <script src="{{ asset('js/template/slick.min.js') }}"></script>
        <script src="{{ asset('js/template/rangeslider.min.js') }}"></script>
        <script src="{{ asset('js/template/magnific-popup.min.js') }}"></script>
        <script src="{{ asset('js/template/waypoints.min.js') }}"></script>
        <script src="{{ asset('js/template/counterup.min.js') }}"></script>
        <script src="{{ asset('js/template/jquery-ui.min.js') }}"></script>
        <script src="{{ asset('js/template/tooltips.min.js') }}"></script>
        @stack('customJs')
        <script src="{{ asset('js/template/custom.js') }}"></script>
    </body>
</html>