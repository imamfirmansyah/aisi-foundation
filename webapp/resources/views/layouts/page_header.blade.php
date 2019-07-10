<div id="titlebar">
    <div class="row">
        <div class="col-md-12">
            <h2>@yield('pageHeader')</h2>
            <!-- Breadcrumbs -->
            <nav id="breadcrumbs">
                <ul>
                    <li><a href="{{ url('/') }}">Dashboard</a></li>
                    @if(View::hasSection('breadcrumb'))
                    <li>@yield('breadcrumb')</li>
                    @endif
                </ul>
            </nav>
        </div>
    </div>
</div>