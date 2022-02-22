<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
Use App\Category;
Use App\post;


class PagesController extends Controller
{
    public function index(){
      $cq=null;
      $sortBy = 'created_at';
      $orderBy = 'desc';
      $perPage = 20;
      $q = null;
        $title='Welcome to laravel';
       // return view('pages.index',compact('title'));
       $posts=Post::orderBy('created_at','desc')->take(3)->get();
        return view('pages.index',)->with('posts',$posts);
    }
    
      public function about()
    {
    $items = Category::all(['id', 'name','parent']);
    return view('pages.about', compact('items',$items));
    }   
    public function services(){
        $items = Category::all(['id', 'name','parent']);
    return view('pages.services', compact('items',$items));
    }

    public function search(Request $request)
    {

        $a = $request->input('a');
       // $posts=
       $posts=Post::where('title','like','%'.$a.'%')->paginate(3)->setpath('');
      
       // return view ('posts.index', ['posts' => $posts]);
        return view ('posts.index',['posts'=>$posts]);
      //  return redirect ('/posts', $posts);
        
            
    }
    
}
