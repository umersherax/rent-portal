@extends('layouts.app')

@section('content')   



<script async src="https://www.googletagmanager.com/gtag/js?id=UA-171052867-1"></script>
<script>
window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
gtag('js', new Date());

gtag('config', 'UA-171052867-1');
</script>
      
<style>



.btn-success {
background-color: #30c234;
}
body {
overflow-x: hidden; 
}

img {
max-width: 100%;
}

.preview {
display: -webkit-box;
display: -webkit-flex;
display: -ms-flexbox;
display: flex;
-webkit-box-orient: vertical;
-webkit-box-direction: normal;
-webkit-flex-direction: column;
-ms-flex-direction: column;
flex-direction: column; }
@media screen and (max-width: 996px) {
.preview {
margin-bottom: 20px; } }

.preview-pic {
-webkit-box-flex: 1;
-webkit-flex-grow: 1;
-ms-flex-positive: 1;
flex-grow: 1; }

.preview-thumbnail.nav-tabs {
border: none;
margin-top: 15px; }
.preview-thumbnail.nav-tabs li {
width: 18%;
margin-right: 2.5%; }
.preview-thumbnail.nav-tabs li img {
max-width: 100%;
display: block; }
.preview-thumbnail.nav-tabs li a {
padding: 0;
margin: 0; }
.preview-thumbnail.nav-tabs li:last-of-type {
margin-right: 0; }

.tab-content {
overflow: hidden; }
.tab-content img {

width: 100%;
max-height: 400px;
-webkit-animation-name: opacity;
animation-name: opacity;
-webkit-animation-duration: .3s;
animation-duration: .3s; }

.card {
  padding: 30px;
margin-top: 50px;
line-height: 1.5em; 
background-color:#fff;
border : 1px solid lightgray;
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);    
}

@media screen and (min-width: 997px) {
.wrapper {
display: -webkit-box;
display: -webkit-flex;
display: -ms-flexbox;
display: flex; } }

.details {
display: -webkit-box;
display: -webkit-flex;
display: -ms-flexbox;
display: flex;
-webkit-box-orient: vertical;
-webkit-box-direction: normal;
-webkit-flex-direction: column;
-ms-flex-direction: column;
flex-direction: column; }

.colors {
-webkit-box-flex: 1;
-webkit-flex-grow: 1;
-ms-flex-positive: 1;
flex-grow: 1; }

.product-title, .price, .sizes, .colors {
text-transform: UPPERCASE;
font-weight: bold; }

.checked, .price span {
color: #ff9f1a; }

.product-title, .rating, .product-description, .price, .vote, .sizes {
margin-bottom: 15px; }

.product-title {
margin-top: 0; }

.size {
margin-right: 10px; }
.size:first-of-type {
margin-left: 40px; }

.color {
display: inline-block;
vertical-align: middle;
margin-right: 10px;
height: 2em;
width: 2em;
border-radius: 2px; }
.color:first-of-type {
margin-left: 20px; }

.add-to-cart, .like {
background: #ff9f1a;
padding: 1.2em 1.5em;
border: none;
text-transform: UPPERCASE;
font-weight: bold;
color: #fff;
-webkit-transition: background .3s ease;
transition: background .3s ease; }
.add-to-cart:hover, .like:hover {
background: #b36800;
color: #fff; }

.not-available {
text-align: center;
line-height: 2em; }
.not-available:before {
font-family: fontawesome;
content: "\f00d";
color: #fff; }

.orange {
background: #ff9f1a; }

.green {
background: #85ad00; }

.blue {
background: #0076ad; }

.tooltip-inner {
padding: 1.3em; }

@-webkit-keyframes opacity {
0% {
opacity: 0;
-webkit-transform: scale(3);
transform: scale(3); }
100% {
opacity: 1;
-webkit-transform: scale(1);
transform: scale(1); } }

@keyframes opacity {
0% {
opacity: 0;
-webkit-transform: scale(3);
transform: scale(3); }
100% {
opacity: 1;
-webkit-transform: scale(1);
transform: scale(1); } }

/*# sourceMappingURL=style.css.map */

  </style>








    <div class="n mt-5">
        <form action="{{route('cat',$id ?? '')}}">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <input type="search" class="form-control" id="inputCity" placeholder="Search.." name="q" value="{{ $q }}">
                </div>
                <div class="form-group col-md-3">
                    <select id="inputState" class="form-control" name="loc">
                        <option>Filter Location</option>
                        @include('posts.locations'); 
                    </select>
                </div>
                <div class="form-group col-md-3">
                    <select id="inputState" class="form-control"  name="cati">
                        <option value="Category" disabled selected>Categories</option>
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
            </div>
            <button type="submit" class="btn btn-success"><i class="fa fa-search"></i> SEARCH</button>
        </form>
    </div><br>
        

<!------ Include the above in your HEAD tag ---------->

	
	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img class="main-img" src="{{asset("images/".$post->cover_image)}}" /></div>
						  <div class="tab-pane" id="pic-2"><img class="main-img" src="{{asset("images/".$post->cover_imag)}}" /></div>
						  <div class="tab-pane" id="pic-3"><img class="main-img" src="{{asset("images/".$post->cover_ima)}}" /></div>
						
						</div>
						<ul class="preview-thumbnail nav nav-tabs">
						  <li class="active"><a data-target="#pic-1" data-toggle="tab"><img class="img-thumbnails" src="{{asset("images/".$post->cover_image)}}" /></a></li>
						  <li><a data-target="#pic-2" data-toggle="tab"><img class="img-thumbnails" src="{{asset("images/".$post->cover_imag)}}" /></a></li>
						  <li><a data-target="#pic-3" data-toggle="tab"><img class="img-thumbnails" src="{{asset("images/".$post->cover_ima)}}" /></a></li>
			
						</ul>
						
					</div>
					
					<div class="details col-md-6">
					    
    					  <br>
                          <h3 class="product-title">{{$post->title}}</h3>
                          
                          <table class="table ">
                          <thead>
                            <tr class="bg-light">
                              <th scope="col"><i class="fa fa-money"></i> Price</th>
                              <th scope="col"><i class="fa fa-phone"></i> Contact</th>
                              <th scope="col"><i class="fa fa-map-marker"></i> Location</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              
                              <td>RS {{$post->rent_price}}</td>
                              <td>{{$post->phone_no}}</td>
                              <td>{{$post->area}} {{$post->exact_address}}</td>
                            </tr>
                           
                          </tbody>
                        </table>
                						
                         
                           @if($post->category_id==6|| $post->category_id==8 )
                                <br>
                                <table class="table ">
                                  <thead>
                                    <tr class="bg-light">
                                      <th scope="col"><i class="fa fa-list-ol" ></i> Total Vehicles available</th>
                                      <th scope="col"><i class="fa fa-bolt" ></i> CC</th>

                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      
                                      <td>{{$post->num_of_products}}</td>
                                      <td>{{$post->CC}}</td>

                                    </tr>
                                   
                                  </tbody>
                                </table>
                              
                          @endif
                        
                          <!-- BUS -->
                          @if($post->category_id==9)
                                <br>
                                <table class="table">
                                  <thead>
                                    <tr class="bg-light">
                                      <th scope="col"><i class="fa fa-bed" ></i> Total Vehicles available</th>
                                      <th scope="col">Sitting Capacity</th>
                                      
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <tr>
                                      
                                      <td>{{$post->num_of_products}}</td>
                                      <td>{{$post->Sitting_Cap}}</td>
                                     
                                    </tr>
                                   
                                  </tbody>
                                </table>
                          @endif
                          <!-- homes-->
                          @if($post->category_id==2 )
                          
                          <br>
                            <table class="table">
                              <thead>
                                <tr class="bg-light">
                                  <th scope="col"><i class="fa fa-bed" ></i> Beds</th>
                                  <th scope="col"><i class="fa fa-bath" ></i> Baths</th>
                                  <th scope="col"><i class="fa fa-building" ></i> Portions</th>
                                  <th scope="col"><i class="fa fa-area-chart" ></i> Total Area</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  
                                  <td>{{$post->beds}}</td>
                                  <td>{{$post->washroom}}</td>
                                  <td>{{$post->num_of_portions}}</td>
                                  <td>{{$post->covered_area}}</td>
                                </tr>
                               
                              </tbody>
                            </table>
                        
                                
                             
                                @endif
                        
                          <!-- hostels-->
                          @if($post->category_id==10)
                          <br>
                            <table class="table">
                              <thead>
                                <tr class="bg-light">
                                  <th scope="col"><i class="fa fa-wifi"></i> Wifi</th>
                                  <th scope="col"><i class="fa fa-car"></i> Parking</th>
                                  <th scope="col"><i class="fa fa-cutlery"></i> Mess</th>
                                  <th scope="col"><i class="fa fa-bath"></i> Attach bath</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  @if($post->wifi==0)
                                  <td>No</td>
                                  @endif
                                  @if($post->wifi==1)
                                  <td>Yes</td>
                                  @endif
                                  
                                  @if($post->parking==0)
                                  <td>No</td>
                                  @endif
                                  @if($post->parking==1)
                                  <td>Yes</td>
                                  @endif
                                  
                                  @if($post->mess==0)
                                  <td>No</td>
                                  @endif
                                  @if($post->mess==1)
                                  <td>Yes</td>
                                  @endif
                                  
                                  @if($post->A_washroom==0)
                                  <td>No</td>
                                  @endif
                                  @if($post->A_washroom==1)
                                  <td>Yes</td>
                                  @endif


                                </tr>
                               
                              </tbody>
                            </table>
                               
                             
                               @endif
                        <!--shops-->
                         @if($post->category_id==3)
                         <br>
                            <table class="table">
                              <thead>
                                <tr class="bg-light">
                                  <th scope="col"><i class="fa fa-building" ></i> No. of portions</th>
                                  <th scope="col"><i class="fa fa-area-chart" > Covered area</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  
                                  <td>{{$post->num_of_portions}}</td>
                                  <td>{{$post->covered_area}}</td>

                                </tr>
                               
                              </tbody>
                            </table>

                        @endif
                        <br>
                        <h4><strong><i class="fa fa-info-circle"></i> Description</strong></h4>
                        <br>
                        <h6><light>{{$post->body}}</light></h6>
  </div>

@if(!Auth::guest())
@if(Auth::user()->id==$post->user_id or Auth::user()->credentials=="admin")
  
  <button type="button" class="btn btn-dark ml-4 mt-4">  <a href="/posts/{{$post->id}}/edit" >Edit</a></button>
  <center>  {!!Form::open(['action'=>['PostsController@destroy',$post->id],'method'=>'POST', 'class'=>'pull-md-right pull-xl-right pull-lg-right pull-sm-right pull-xs-right'])!!}
    {{Form::hidden('_method','DELETE')}}
    {{Form::submit('Delete',['class'=>"btn btn-danger ml-3 mt-4"])}}
    {!!Form::close()!!}</center>
    @endif
@endif
@endsection
