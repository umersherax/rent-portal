@extends('layouts.app')
@section('content')

<style>
    img{
        max-height: 40px;
        width:auto;
    }
    </style>


<h1 class="mt-5">Edit Post</h1>
@include('posts.editform')

  
<div style="display: none" id="m_from">

            <form method="post" action="{{ route('post_update') }}" enctype="multipart/form-data">
                @csrf
            <input type="hidden" name="post_id" value="{{$post->id}}">
                <input id="a1" type="hidden" name="check">
                <input id="a2" type="hidden" name="check2">
               
            <div class="form-row">
              <div class="form-group col-md-6">
                <label for="inputEmail4">Title</label>
                <input type="text" class="form-control" id="inputEmail4" value="{{$post->title}}" name="title" required>
              </div>
              <div class="form-group col-md-6">
                <label for="inputPassword4">Rent Price</label>
                <input type="text" class="form-control" id="inputPassword4" value="{{$post->rent_price}}" name="rent_price" required>
              </div>
            </div>
            
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="inputState">Area</label>
                    <select id="inputState" class="form-control" name="area" required>
                        <option selected>{{$post->area}}</option>
                        @include('posts.locations');
                    </select>
                  </div>
              <div class="form-group col-md-5">
                <label for="inputCity">Exact Address</label>
                <input type="text" class="form-control" id="inputCity" value="{{$post->exact_address}}" name="exact_address" required>
              </div>
              <div class="form-group col-md-3">
                <label for="inputPassword4">Contact Number</label>
                <input type="text" class="form-control" id="inputPassword4" value="{{$post->phone_no}}" name="phone" required>
              </div>  
            </div>

            <!-- property categories form -->
            <div id="main_prop">
                <div id="home_prop" style="display: none">
                    <input type="hidden" id="homess" name="homes">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            
                            <label for="inputZip">No. of beds</label>
                            <input type="text" class="form-control" id="bd" name="beds" value="{{$post->beds}}">
                          </div>
                          <div class="form-group col-md-6">
                            <label for="inputZip">No. of baths</label>
                            <input type="text" class="form-control" id="we" name="wr" value="{{$post->washroom}}">
                          </div>
                    </div>
                </div>
                <div id="hostel_prop" style="display: none">
                    <input type="hidden" id="hostelss" name="hostels">
                    <div class="form-row">
                        <div class="form-group col-md-3">
                            <label for="inputState">WIFI</label>
                            <select id="inputState" class="form-control" name="wifi">
                                <option value="">WIFI</option>
                                @if($post->wifi=="1")
                                <option value="1" selected>yes</option>
                                @elseif($post->wifi=="0")
                                <option value="0" selected>No</option>
                                @endif
                            </select>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="inputState">Washroom</label>
                            <select id="inputState" class="form-control" name="A_washroom">
                                <option value="">Washroom</option>
                                @if($post->A_washroom=="1")
                                <option value="1" selected>yes</option>
                                @elseif($post->A_washroom=="0")
                                <option value="0" selected>No</option>
                                @endif
                            </select>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="inputState">Mess</label>
                            <select id="inputState" class="form-control" name="mess">
                                <option value="">Mess</option>
                                @if($post->mess=="1")
                                <option value="1" selected>yes</option>
                                @elseif($post->mess=="0")
                                <option value="0" selected>No</option>
                                @endif
                            </select>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="inputState">Parking</label>
                            <select id="inputState" class="form-control" name="parking">
                                <option value="">Parking</option>
                                @if($post->parking=="1")
                                <option value="1" selected>yes</option>
                                @elseif($post->parking=="0")
                                <option value="0" selected>No</option>
                                @endif
                            </select>
                        </div>
                    </div>
                </div>
                
                <div id="shop_prop" style="display: none">
                    <input type="hidden" id="shopss" name="shops">
                </div>
                <div id="shop_home_prop" style="display: none">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputZip">No. of floors</label>
                            <input type="text" class="form-control" id="flor" name="nop" value="{{$post->num_of_portions}}">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputZip">Covered Area</label>
                            <input type="text" placeholder="5 marla etc" class="form-control" id="marla" name="covered_area" value="{{$post->covered_area}}">
                        </div>
                    </div>
                </div>
             </div>

           

            

             <!-- Vehicles categories form -->
             <div id="main_veh">
                <div class="form-row">
                        <label for="inputZip">Total vehicles available</label>
                <input type="text" class="form-control" id="nop" name="num_of_producs"  value="{{$post->num_of_products}}">
                </div>
                <div id="c_vehs" style="display: none">
                    <input type="hidden" name="cars" id="carss">
                </div>
                <div id="bi_vehs" style="display: none">
                    <input type="hidden" name="bikes" id="bikess">
                </div>
                <div id="bu_vehs" style="display: none">
                    <input type="hidden"  name="bus" id="buss">
                        <label for="inputZip">Seating Capacity</label>
                        <input type="text" placeholder="(e.g 1600 CC)" class="form-control" id="sc" name="SC" value="{{$post->Sitting_Cap}}">
                </div>
                
                <div id="bikes_cars" style="display: none">
                        <label for="inputZip">Engine Capacity</label>
                        <input type="text" placeholder="(e.g 1600 CC)" class="form-control" id="ec" name="CC" value="{{$post->CC}}">
                </div>

             </div>

            <div class="form-group">
                <label for="exampleFormControlTextarea3">Details</label>
                <textarea class="form-control" id="exampleFormControlTextarea3" name="body" rows="7" required>{{$post->body}}</textarea>
              </div>
              
              <img src="{{asset("images/".$post->cover_image)}}">
              <div class="form-group">
                <label for="exampleFormControlFile1">Upload Picture</label>
                <input type="file" class="form-control-file" id="exampleFormControlFile1" name="cover_image" multiple>
              </div>
              <img src="{{asset("images/".$post->cover_imag)}}">
              <div class="form-group">
                <label for="exampleFormControlFile1">Upload Picture</label>
                <input type="file" class="form-control-file" id="exampleFormControlFile1" name="cover_imag" multiple>
              </div>
              <img src="{{asset("images/".$post->cover_ima)}}">
              <div class="form-group">
                <label for="exampleFormControlFile1">Upload Picture</label>
                <input type="file" class="form-control-file" id="exampleFormControlFile1" name="cover_ima" multiple>
              </div>
        
            <button type="submit" class="btn btn-primary">EDIT AD</button>
          </form>
        </div>

@endsection
<script src="{{asset('js/forms.js')}}" type="text/javascript"></script>
