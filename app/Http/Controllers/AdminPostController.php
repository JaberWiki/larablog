<?php

namespace App\Http\Controllers;
use Illuminate\Validation\Rule;
use Symfony\Component\HttpFoundation\Response;
use App\Models\Post;
use Illuminate\Support\Str;
use Illuminate\Http\Request;

class AdminPostController extends Controller
{
    public function index()
    {
        return view('admin.posts.index', [
            'posts' => Post::paginate(50)
        ]);
    }

    public function create()
    {
        if (auth()->user()?->username != 'jaberphpdev') {
            abort(Response::HTTP_FORBIDDEN);
        }
        return view('admin.posts.create');
    }
    public function store(Request $request)
    {
        // dd($request->all());
        // $slugUnified = Str::slug($request->get('title'));
        // dd($attributes['slug']);
        $attributes = request()->validate([
            'title' => 'required',
            'image' => 'required|image',
            'excerpt' => 'required',
            'slug' => ['required', Rule::unique('posts', 'slug')],
            'body' => 'required',
            'category_id' => ['required', Rule::exists('categories', 'id')]
        ]);
        $attributes['user_id'] = auth()->id();
        $attributes['image'] = request()->file('image')->store('images');
        Post::create($attributes);
        return redirect('/');
    }

    public function edit(Post $post)
    {
        return view('admin.posts.edit', compact('post'));
    }
}
