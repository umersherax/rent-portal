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

.search-bar{
    border:1px solid gray !important;
    border-radius : 3px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.select-filters{
    border:1px solid gray !important;
    border-radius : 3px;
    width: 100%;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

 </style>
            
          

                              
              <br> <br> <br> 
              <div>
              <form action="{{route('cat',$id ?? '')}}">
                <div class="n">
              <div class="form-row">
            <div class="form-group col-md-6">
              
              <input type="search" class="form-control search-bar" id="inputCity" placeholder="Search.." name="q" value="{{ $q }}">
            </div>
            <div class="form-group col-md-3">
             
              <select id="inputState" class="form-control select-filters" name="loc">
                <option>Filter Location</option>
                <option selected>{{$loc}}</option>
                      @include('posts.locations'); 
              </select>
            </div>
            <div class="form-group col-md-3">
             
              <select id="inputState" class="form-control select-filters"  name="cati">
                <option value="Category" disabled selected>Categories</option>
                        
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
            
          </div>
    

   
<button type="submit" class="btn btn-success"><i class="fa fa-search"></i> Search</button>
</div>

  <br><br>
    <!-- MODAL-->
        <div class="container">
 
          <!-- Trigger the modal with a button -->
          <button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal" style="float:right"><i class="fa fa-filter"></i> Filters</button>
        
          <!-- Modal -->
          <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog modal-lg">
              <div class="modal-content">
                <div class="modal-header">
                  
                  <h4 class="modal-title">Filters</h4>
                </div>
                <div class="modal-body">
                 

                        <label for="inputStatess">Choose Filter</label>
                       <select id="inputStatess" class="form-control" name="sortBy" value="{{ $sortBy }}">
                          @foreach(['created_at', 'rent_price'] as $col)
                              <option @if($col == $sortBy) selected @endif value="{{ $col }}">{{ ucfirst($col) }}</option>
                            @endforeach
                        </select><br><br>
                  
                       <label for="inputStatesss">Choose Filter</label>
                        <select id="inputStatesss" class="form-control" name="orderBy" value="{{ $orderBy }}">
                          @foreach(['asc', 'desc'] as $order)
                              <option @if($order == $orderBy) selected @endif value="{{ $order }}">{{ ucfirst($order) }}</option>
                            @endforeach
                        </select><br><br>
                      
        
                      <label for="inputStatessss">Ads Per Page</label>
                      <select id="inputStatessss" name="perPage" class="form-control "   value="{{ $perPage }}">
                        @foreach(['20','50','100','250'] as $page)
                          <option @if($page == $perPage) selected @endif value="{{ $page }}">{{ $page }}</option>
                        @endforeach
                      </select>
                     
                        <br><br>
       
       
       
       
     
                    <button type="submit" class="btn btn-success btn-lg btn-block">FILTER</button>
                  </form>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
        <br>
        @if ($id ?? '')
        @if ($id==2)
          <h3>Homes for rent</h3>
        @elseif ($id==3)
        <h3>Shops for rent</h3>
        @elseif ($id==6)
        <h3>Cars for rent</h3>
        @elseif ($id==8)
        <h3>Bikes for rent</h3>
        @elseif ($id==9)
        <h3>Buses for rent</h3>
        @elseif ($id==10)
        <h3>Hostels for rent</h3>
        @elseif ($id==11)
        <h3>Catering for rent</h3>
        @elseif ($id==12)
        <h3>Dresses for rent</h3>
        @elseif ($id==13)
        <h3>Events for rent</h3>
        @endif
      @endif
      <br>
      <hr> 
    </div>
  <br>
    </form>
               
            

            
              
                      
    <div class="container">
        <div class="row">
           
                      <div class="col">
                        <div class="row">
               @if(count($posts)>0)
                        
               
               @foreach ($posts as $post)
                   <a href="/posts/{{$post->id}}">
                   <div class="col-12 col-md-6 col-lg-4" style="margin-bottom:10px">
                    <div class="card category-cards" style="width:20rem">
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
                   </div>
                </div>
               @else()
               <p>No post found</p>
               <br><br><br><br><br><br><br><br><br><br>
          @endif()
        
            </div>
            {{ $posts->appends($_GET)->links() }}
            
@endsection