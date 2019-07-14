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
                <!-- Wrapper -->
                <div id="wrapper">
                    <!-- Header Container -->
                    <header id="header-container" class="fixed fullwidth dashboard">
                        <!-- Header -->
                        <div id="header" class="not-sticky">
                            <div class="container">
                                <!-- Left Side Content -->
                                <div class="left-side">
                                    <!-- Logo -->
                                    <div id="logo">
                                        <a href="{{ url('/') }}" class="aisi-logo-dashboard">
                                            <span>{{ config('app.name', 'Laravel') }}</span>
                                        </a>
                                        <a href="{{ url('/') }}" class="dashboard-logo aisi-logo-dashboard">
                                            <span>{{ config('app.name', 'Laravel') }}</span>
                                        </a>
                                    </div>
                                    <!-- Mobile Navigation -->
                                    <div class="mmenu-trigger">
                                        <button class="hamburger hamburger--collapse" type="button">
                                            <span class="hamburger-box">
                                                <span class="hamburger-inner"></span>
                                            </span>
                                        </button>
                                    </div>
                                    
                                    <!-- Main Navigation -->
                                    <nav id="navigation" class="style-1">
                                        <ul id="responsive">
                                            
                                            <li><a href="#">Home</a>
                                                <ul>
                                                    <li><a href="index.html">Home 1</a></li>
                                                    <li><a href="index-2.html">Home 2</a></li>
                                                    <li><a href="index-3.html">Home 3</a></li>
                                                    <li><a href="index-4.html">Home 4</a></li>
                                                    <li><a href="index-5.html">Home 5</a></li>
                                                </ul>
                                            </li>
                                            
                                            <li><a href="#">Listings</a>
                                                <ul>
                                                    <li><a href="#">List Layout</a>
                                                        <ul>
                                                            <li><a href="listings-list-with-sidebar.html">With Sidebar</a></li>
                                                            <li><a href="listings-list-full-width.html">Full Width</a></li>
                                                            <li><a href="listings-list-full-width-with-map.html">Full Width + Map</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Grid Layout</a>
                                                        <ul>
                                                            <li><a href="listings-grid-with-sidebar-1.html">With Sidebar 1</a></li>
                                                            <li><a href="listings-grid-with-sidebar-2.html">With Sidebar 2</a></li>
                                                            <li><a href="listings-grid-full-width.html">Full Width</a></li>
                                                            <li><a href="listings-grid-full-width-with-map.html">Full Width + Map</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Half Screen Map</a>
                                                        <ul>
                                                            <li><a href="listings-half-screen-map-list.html">List Layout</a></li>
                                                            <li><a href="listings-half-screen-map-grid-1.html">Grid Layout 1</a></li>
                                                            <li><a href="listings-half-screen-map-grid-2.html">Grid Layout 2</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Single Listings</a>
                                                        <ul>
                                                            <li><a href="listings-single-page.html">Single Listing 1</a></li>
                                                            <li><a href="listings-single-page-2.html">Single Listing 2</a></li>
                                                            <li><a href="listings-single-page-3.html">Single Listing 3</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            
                                            <li><a class="current" href="#">User Panel</a>
                                                <ul>
                                                    <li><a href="dashboard.html">Dashboard</a></li>
                                                    <li><a href="dashboard-messages.html">Messages</a></li>
                                                    <li><a href="dashboard-bookings.html">Bookings</a></li>
                                                    <li><a href="dashboard-wallet.html">Wallet</a></li>
                                                    <li><a href="dashboard-my-listings.html">My Listings</a></li>
                                                    <li><a href="dashboard-reviews.html">Reviews</a></li>
                                                    <li><a href="dashboard-bookmarks.html">Bookmarks</a></li>
                                                    <li><a href="dashboard-add-listing.html">Add Listing</a></li>
                                                    <li><a href="dashboard-my-profile.html">My Profile</a></li>
                                                    <li><a href="dashboard-invoice.html">Invoice</a></li>
                                                </ul>
                                            </li>
                                            
                                            <li><a href="#">Pages</a>
                                                <div class="mega-menu mobile-styles three-columns">
                                                    
                                                    <div class="mega-menu-section">
                                                        <ul>
                                                            <li class="mega-menu-headline">Pages #1</li>
                                                            <li><a href="pages-user-profile.html"><i class="sl sl-icon-user"></i> User Profile</a></li>
                                                            <li><a href="pages-booking.html"><i class="sl sl-icon-check"></i> Booking Page</a></li>
                                                            <li><a href="pages-add-listing.html"><i class="sl sl-icon-plus"></i> Add Listing</a></li>
                                                            <li><a href="pages-blog.html"><i class="sl sl-icon-docs"></i> Blog</a></li>
                                                        </ul>
                                                    </div>
                                                    
                                                    <div class="mega-menu-section">
                                                        <ul>
                                                            <li class="mega-menu-headline">Pages #2</li>
                                                            <li><a href="pages-contact.html"><i class="sl sl-icon-envelope-open"></i> Contact</a></li>
                                                            <li><a href="pages-coming-soon.html"><i class="sl sl-icon-hourglass"></i> Coming Soon</a></li>
                                                            <li><a href="pages-404.html"><i class="sl sl-icon-close"></i> 404 Page</a></li>
                                                            <li><a href="pages-masonry-filtering.html"><i class="sl sl-icon-equalizer"></i> Masonry Filtering</a></li>
                                                        </ul>
                                                    </div>
                                                    
                                                    <div class="mega-menu-section">
                                                        <ul>
                                                            <li class="mega-menu-headline">Other</li>
                                                            <li><a href="pages-elements.html"><i class="sl sl-icon-settings"></i> Elements</a></li>
                                                            <li><a href="pages-pricing-tables.html"><i class="sl sl-icon-tag"></i> Pricing Tables</a></li>
                                                            <li><a href="pages-typography.html"><i class="sl sl-icon-pencil"></i> Typography</a></li>
                                                            <li><a href="pages-icons.html"><i class="sl sl-icon-diamond"></i> Icons</a></li>
                                                        </ul>
                                                    </div>
                                                    
                                                </div>
                                            </li>
                                            
                                        </ul>
                                    </nav>
                                    <!-- <div class="clearfix"></div> -->
                                    <!-- Main Navigation / End -->
                                </div>
                                <!-- Left Side Content / End -->
                                <!-- Right Side Content / End -->
                                <div class="right-side">
                                    <!-- Header Widget -->
                                    <div class="header-widget">
                                        <!-- User Menu -->
                                        <div class="user-menu {{ Auth::user()->validate_status ? 'verified' : '' }}">
                                            <div class="user-name"><span><img src="{{ Auth::user()->foto !== '' ? asset( 'storage/avatar/'. Auth::user()->foto ) : asset( 'storage/avatar/avatar-boy.png' ) }}" alt="{{ Auth::user()->nama }}"></span>{{ Auth::user()->nama }}</div>
                                            <ul>
                                                {{-- <li><a href="dashboard.html"><i class="sl sl-icon-settings"></i> Dashboard</a></li> --}}
                                                {{-- <li><a href="dashboard-messages.html"><i class="sl sl-icon-envelope-open"></i> Kegiatan</a></li> --}}
                                                <li><a href="{{ route('user.profile') }}"><i class="sl sl-icon-user"></i> My Profile</a></li>
                                                <li>
                                                    <a href="{{ route('logout') }}"
                                                    onclick="event.preventDefault();
                                                    document.getElementById('logout-form').submit();">
                                                    <i class="sl sl-icon-power"></i> {{ __('Logout') }}
                                                </a>

                                                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                                    @csrf
                                                </form>
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- <a href="dashboard-add-listing.html" class="button border with-icon">Add Listing <i class="sl sl-icon-plus"></i></a> -->
                                </div>
                                <!-- Header Widget / End -->
                            </div>
                            <!-- Right Side Content / End -->
                        </div>
                    </div>
                    <!-- Header / End -->
                </header>
                <div class="clearfix"></div>
                <!-- Header Container / End -->

                <!-- Dashboard -->
                <div id="dashboard">
                    @include('layouts.navigation')

                    <div class="dashboard-content">
                        <!-- page header -->
                        @include('layouts.page_header')
                        <!-- page header end here -->

                        <!-- Notice -->
                        <!-- <div class="row">
                            <div class="col-md-12">
                                <div class="notification success closeable margin-bottom-30">
                                    <p>Your listing <strong>Hotel Govendor</strong> has been approved!</p>
                                    <a class="close" href="#"></a>
                                </div>
                            </div>
                        </div> -->

                        <!-- content -->
                        @yield('content')
                        <!-- content end here -->

                        <div class="row">
                            <!-- Copyrights -->
                            <div class="col-md-12">
                                <div class="copyrights">
                                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Sistem Informasi Yayasan {{ config('app.name', 'Laravel') }}
                                </div>
                            </div>
                        </div>

                        <!-- Content / End -->
                    </div>
                    <!-- Dashboard / End -->
                </div>
                <!-- Wrapper / End -->
            </div>
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
        <script src="{{ asset('js/sweetalert.min.js') }}"></script>
        @stack('customJs')
        <script src="{{ asset('js/template/custom.js') }}"></script>
    </body>
</html>
