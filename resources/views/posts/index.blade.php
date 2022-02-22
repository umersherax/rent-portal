@extends('layouts.app')
@section('content')
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-171052867-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-171052867-1');
</script>
<meta name="google-site-verification" content="zpp7v8Rzm6n6rXO-LZJg1TaH4gJ_509xE06pD5DwBo8" />
<style>

</style> 


<div class="container">
    <div class="row align-items-center my-2 jumbotron jbx">
        <div class="col-lg-6">
            <img class="img-fluid rounded mb-4 mb-lg-0" src="{{asset("images/"."final.png")}}" alt="">
        </div>
        <div class="col-lg-6 ">
            <center> 
                <br><h5 class="txt">First website in Pakistan on which you can rent anything </h5>
            </center>
            <br>
            <form action="{{route('cat',$id ?? '')}}" autocomplete="off">
                <div class="autocomplete form-group xxx" >
                        <input class="form-control" id="myInput" type="search" name="q" placeholder="Find Hostels, Bikes and more..." value="{{ $q ?? '' }}">
                </div>
                <div class="my">
                    <select class="form-control x1" name="loc" >
                    <option>Filter Location</option>
                        @include('posts.locations'); 
                    </select>
                    <br>
                    <select class="form-control x2" name="cati">
                        <option value="Category" disabled selected> Categories</option>
                        <option value="2" >Homes</option>
                        <option value="3" >Shops</option>
                        <option value="10" >Hostels</option>
                        <option value="6" >Cars</option>
                        <option value="8" >Bikes</option>
                        <option value="9" >Bus</option>
                        <option value="11" >Catering</option>
                        <option value="12" >Dresses</option>
                        <option value="13" >Events</option>
                    </select>
                </div>
                <br>
                <button type="submit" class="btn btn-success btn-lg btn-block"><i class="fa fa-search fa-10x"></i>  Search</button>
            </form>
        </div>
    </div>
</div>


<div class="d-lg-block d-none mt-5 container">
    <h3 class="d-flex justify-content-center"><i class="fa fa-list-alt mt-1 mr-2" aria-hidden="true"></i>Top Categories</h3>
    <hr>
    <div class="row justify-content-between">
        @php ($ids = ['6','8','9','2','10','11'])
        @php ($names = ['Cars','Bikes','Buses','Homes','Hostels','Others'])
        @php ($icons = ['fa-car','fa-bicycle', 'fa-bus', 'fa-home', 'fa-bed', 'fa-heart'])
        @for ($i = 0; $i < sizeof($ids); $i++)
            <a class="btxx prod-names" href="/categories?q=&loc=Filter+Location&cati={{ $ids[$i] }}"><h5 class="mt-4">{{ $names[$i] }}<br><i class="fa {{ $icons[$i] }} fa-0x"></i></h5></a>
        @endfor
    </div>
        
</div>
    

<!-- Content Row --><br>
<div class="fx mt-5">
   <h3><i class="fa fa-refresh" aria-hidden="true"></i> Fresh Recommendations</h3>
</div>

<hr>
<div class="">
    <div class="row">
        @if(count($posts)>0)
            @foreach ($posts as $post)
                <a href="/posts/{{$post->id}}">
                    <div class="col-12 col-md-6 col-lg-3" style="margin-bottom:10px">
                        <div class="card category-cards">
                            <img class="px" src="{{asset("images/".$post->cover_image)}}"  alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title"><a  style="color:#30c234;" href="/posts/{{$post->id}}" title="View Product">{{$post->title}}</a></h4>
                                <p class="card-text"><i class="fa fa-map-marker" aria-hidden="true"></i> {{$post->area}}</p>
                                <div class="row">
                                    <div class="col">
                                        <h4 >Rs {{$post->rent_price}}</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
             @endforeach
         @else()
            <p>No post found</p>
        @endif()
    </div>
</div>

<script>
    var countries = [
        @foreach($posts as $post)
        "{{$post->title}}",
        @endforeach
    ];
</script>
           
@endsection
