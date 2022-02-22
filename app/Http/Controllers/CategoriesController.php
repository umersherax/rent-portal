<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
Use App\Category;
Use App\User;
Use App\post;
use DB;

class CategoriesController extends Controller
{
    public function __construct()
    {
       
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $sortBy = 'id';
        $orderBy = 'desc';
        $perPage = 20;
        $q = null;
        $location=$request->input('loc');
       
        $category=$request->input('cati');
       
        

 

       // return view('categories.index')->with('posts',$posts)->with($id);
        if ($request->has('orderBy')) $orderBy = $request->query('orderBy');
        if ($request->has('sortBy')) $sortBy = $request->query('sortBy');
        if ($request->has('perPage')) $perPage = $request->query('perPage');
        if ($request->has('q')) $q = $request->query('q');

    if (($location==null||$location=="Filter Location") &&  ($category==null||$category=="Category"))
    {
    
        $posts = Post::search($q)->orderBy($sortBy, $orderBy)->paginate($perPage);
        return view('categories.index', compact('posts', 'orderBy', 'sortBy', 'q', 'perPage'))->with('id',$category)->with('loc',$location);

    }
    elseif(($location!=null||$location!="Filter Location")&&($category==null||$category=="Category"))
    {
       
        $posts = Post::search($q)->orderBy($sortBy, $orderBy)->where('area','like',$location)->paginate($perPage);
        return view('categories.index', compact('posts', 'orderBy', 'sortBy', 'q', 'perPage'))->with('id',$category)->with('loc',$location);

    }
    elseif(($location==null||$location=="Filter Location")&&($category!=null||$category!="Category"))
    {
    
        $posts = Post::search($q)->orderBy($sortBy, $orderBy)->where('category_id','like',$category)->paginate($perPage);
        return view('categories.index', compact('posts', 'orderBy', 'sortBy', 'q', 'perPage'))->with('id',$category)->with('loc',$location);

    }
    else
    {
       
        $posts = Post::search($q)->orderBy($sortBy, $orderBy)->where('category_id','like',$category)->where('area','like',$location)->paginate($perPage);
        return view('categories.index', compact('posts', 'orderBy', 'sortBy', 'q', 'perPage'))->with('id',$category)->with('loc',$location);

    }
        
            
        
        
        
    
       // $categories=Category::all();
        //return view ('categories.index')->with('categories',$categories);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       
            return view('categories.create');
        
            
           
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //

        $this->validate($request,[
            'name'=>'required',
        ]);
        $category=new Category;
        $category->name=$request->input('name');
        $category->parent=$request->input('parent');
        $category->save();
        return redirect('/categories')->with('success','category Created');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $posts=Post::where('category_id','like',$id)->paginate(2);
 

            return view('category.index')->with('posts',$category->posts);
        
        
        
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function search(Request $request)
    {
        
               
    }
}
