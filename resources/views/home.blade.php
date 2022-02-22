@extends('layouts.app')


@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Home</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <a href="/posts/create" class="btn btn-success"><i class="fa fa-plus" aria-hidden="true"></i> Create Add</a>
                    <br>
                    <br>
                    <h3>Your ads</h3>
                    <table class="table table-light">
                        <tr>
                            <th>Title</th>
                            <th></th>
                            <th></th>
                        </tr>
                            @foreach($posts as $post)
                           
                            <tr>
                                <td><a href="/posts/{{$post->id}}">{{$post->title}}</a></td>
                                <td><a href="/posts/{{$post->id}}"><img src="{{asset("images/".$post->cover_image)}}" alt="Responsive image" class="img-fluid"></a></td>
                         
                                <td><a href="posts/{{$post->id}}/edit" class="btn btn-primary">Edit</a></td>
                                <td>{!!Form::open(['action'=>['PostsController@destroy',$post->id],'method'=>'POST', 'class'=>'pull-md-right pull-xl-right pull-lg-right pull-sm-right pull-xs-right'])!!}
                                        {{Form::hidden('_method','DELETE')}}
                                        {{Form::submit('Delete',['class'=>"btn btn-danger"])}}
                                    {!!Form::close()!!}</td>
                            </tr>
                        
                            
                            @endforeach
                        </table>
                        
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
