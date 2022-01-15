<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Post;
use Illuminate\Http\Request;

class apiPostController extends Controller
{
    public function show($id = null)
    {
        $data['post'] = $id ? Post::find($id) : Post::all();
        return response()->json($data);
    }
    public function find(Request $request)
    {
        $data = Post::where('id', $request->id)->get();
        return response()->json($data);
    }
}
