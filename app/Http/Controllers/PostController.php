<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Category;
use Illuminate\Http\Request;

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
}
