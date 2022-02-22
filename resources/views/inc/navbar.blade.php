

      <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    <img  style="float:left;max-width:28px;" class="img-fluid rounded mb-4 mb-lg-0" src="{{asset("images/"."lo2.png")}}" alt="">
                    {{ config(' Kiradas', 'Kiradas') }}
                </a>
      
               
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>
                
                

<div class="collapse navbar-collapse" id="navbarSupportedContent">
                  
<!-- Right Side Of Navbar -->
<ul class="navbar-nav ml-auto">
   
   
    <!-- Authentication Links -->
    @guest
        <li class="nav-item">
            <a class="nav-link" href="{{ route('login') }}"style="color:white;"><i class="fa fa-user"></i>{{ __(' Login') }}</a>
        </li>
        @if (Route::has('register'))
            <li class="nav-item">
                <a class="nav-link" href="{{ route('register') }}" style="color:white;"><i class="fa fa-sign-in"></i>{{ __(' Register') }}</a>
            </li>
        @endif
    @else
        <li class="nav-item dropdown">
            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre><i class="fa fa-user"></i>
                {{ Auth::user()->name }} <span class="caret"></span>
            </a>

            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="/home"><i class="fa fa-home"></i> Home</a>
                <a class="dropdown-item" href="{{ route('logout') }}"
                   onclick="event.preventDefault();
                                 document.getElementById('logout-form').submit();"><i class="fa fa-sign-out"></i>
                    {{ __(' Logout') }}
                </a>

                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    @csrf
                </form>
            </div>
        </li>
        
    @endguest
     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
     <form class="form-inline">
         
         
     <a href="/posts/create" style="text-decoration: none; color: white" ><button type="button" id="btn_nav" class="btn btn-success"><i class="fa fa-camera"></i> RENT</button></a>
        
    </form>
</ul>


</div>
</div>
</nav>




   
        
        

        

   
     
        
        