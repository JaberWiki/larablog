<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Symfony\Component\HttpFoundation\Response;

class PostController extends Controller
{
    public function index()
    {
        return view('posts.index', [
            'posts' => Post::latest('id', 'desc')
                ->filter(request(['search', 'category', 'author']))
                ->paginate(6)->withQueryString()
        ]);
    }
    public function show(Post $post)
    {
        return view('posts.show', compact('post'));
    }
    public function create()
    {
        if (auth()->user()?->username != 'jaberphpdev') {
            abort(Response::HTTP_FORBIDDEN);
        }
        return view('posts.create');
    }
    public function store()
    {
        // $slugUnified = Str::slug($request->get('title'));
        // dd($attributes['slug']);
        $attributes = request()->validate([
            'title' => 'required',
            'excerpt' => 'required',
            'slug' => ['required', Rule::unique('posts', 'slug')],
            'body' => 'required',
            'category_id' => ['required', Rule::exists('categories', 'id')]
        ]);
        $attributes['user_id'] = auth()->id();

        Post::create($attributes);
        return redirect('/');
    }
}
