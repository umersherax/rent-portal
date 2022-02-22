<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <title>Kiradas- rent property, vehicles and much more</title>
    <meta name=”description” content=”First website in Pakistan on which you can rent anything (property, Vehicles, Catering and other services)”>
    <meta name="google-site-verification" content="zpp7v8Rzm6n6rXO-LZJg1TaH4gJ_509xE06pD5DwBo8" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="{{ asset('js/my.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/my.css') }}" rel="stylesheet">
    <link rel="shortcut icon" href="{{ asset("images/"."lo.png") }}" >
</head>

<body>
    <div id="app">
            @include('inc.navbar')
        <main class="py-4">
            <div class="ml-5 mr-5">
                @include('inc.messages')
                @yield('content')
            </div>
        </main>
    </div>

    <a href="http://127.0.0.1:8000/posts/create" class="float">
        <i class="fa fa-plus my-float"></i>
    </a>
    <br><br><br>
    <footer class="text-light">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-lg-4 col-xl-3">
                    <h5>About</h5>
                    <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                    <p class="mb-0">
                        A web portal on which you can rent everything.
                    </p>
                </div>
    
                <div class="col-md-2 col-lg-2 col-xl-2 mx-auto">
                </div>
    
                <div class="col-md-3 col-lg-2 col-xl-2 mx-auto">
                    <h5>Contact Us</h5>
                    <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                    <ul class="list-unstyled">
                        <li><a href="mailto: everythingkiradas@gmail.com"><i class="fa fa-envelope-o"></i> everythingkiradas@gmail.com</a></li>
                        <li><a href=""><i class="fa fa-phone"></i> +923344035183</a></li>
                        <li><a href=""><i class="fa fa-phone"></i> +923117872746</a></li>
                    </ul>
                </div>
            
                <div class="col-12 copyright mt-3">
                    <p class="float-left">
                        <a href="#"><i class="fa fa-arrow-up" aria-hidden="true"></i>Back to top</a>
                    </p>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>
