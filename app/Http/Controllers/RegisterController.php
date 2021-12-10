<?php

namespace App\Http\Controllers;

// use auth;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function create()
    {
        return view('register.create');
    }

    public function store(Request $request)
    {
        $data = request()->validate([
            'name' => 'required|max:255',
            'username' => 'required|max:255|min:3|unique:users,username',
            'email' => 'required|max:255|email|unique:users,email',
            'password' => 'required|max:255|min:7',
        ]);
        // $data['password'] = Hash::make($request->password);
        // dd($request->all());
        $user = User::create($data);        
        Auth::login($user);
        return redirect('/')->with('success', 'You are loggin as a new user!');
    }
}
