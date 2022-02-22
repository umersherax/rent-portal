<style>
.hx{
    margin-right:30px;
}


</style>

      <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        
                <a class="navbar-brand" href="{{ url('/') }}">
                    <img  style="float:left;max-width:28px;" class="img-fluid rounded mb-4 mb-lg-0" src="{{asset("images/"."lo2.png")}}" alt="">
                    {{ config(' Kiradas', 'Kiradas') }}
                </a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      
               
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>
                
                <form class="form-inline" style="width: 550px;" action="{{route('cat',$id ?? '' ?? '')}}" autocomplete="off">
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
            <div class="navbar-nav">
                <div class="nav-item dropdown x">
                  <select class="custom-select" style="width:200px;" name="loc"> 
                    <option>Filter Location</option>
                    <option selected>{{$loc}}</option>
                    @include('posts.locations'); 
                 
                  </select>
                </div>

            </div>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
           <div class="navbar-nav">
                <div class="nav-item dropdown y">
                  <select class="custom-select " style="width:200px;" name="cati" > 
                    <option value="Category" disabled selected> Categories</option>
        
                   <option value="2" @if ($id==2) selected @endif >Homes</option>
                      <option value="3" @if ($id==3) selected @endif >Shops</option>
                      <option value="10" @if ($id==10) selected @endif>Hostels</option>
                  
                      <option value="6"  @if ($id==6) selected @endif>Cars</option>
                      <option value="8"  @if ($id==8) selected @endif>Bikes</option>
                      <option value="9"  @if ($id==9) selected @endif>Bus</option>
                     
                      <option value="11" @if ($id==11) selected @endif >Catering</option>
                      <option value="12" @if ($id==12) selected @endif>Dresses</option>
                      <option value="13" @if ($id==13) selected @endif >Events</option>
                  </select>
                </div>

            </div>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <div>
            
                <div class="autocomplete input-group" style="width: 550px;">                    
                    <input type="search" id="myInput" class="form-control hx" name="q" placeholder="search" value="{{ $q ?? '' }}">
                    <button type="submit" class="btn btn-success"><i class="fa fa-search"></i> Search</button>
                </div>
            </form>
            </div>
          
        </div>
                
                

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
         
         
        <button type="button" id="btn_nav" class="btn btn-success"><i class="fa fa-camera"></i><a href="/posts/create" style="text-decoration: none; color: white" > RENT</a></button>
        
    </form>
</ul>


</div>

</nav>


   
        
        

        

   
     
        
        