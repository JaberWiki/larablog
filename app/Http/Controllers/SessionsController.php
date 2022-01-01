<?php

namespace App\Http\Controllers;

use GrahamCampbell\ResultType\Success;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\ValidationException;

class SessionsController extends Controller
{
    public function create()
    {
        return view('sessions.create');
    }
    public function store()
    {
        $attributes = request()->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);
        if(!Auth::attempt($attributes)){
            throw ValidationException::withMessages([                
                'email' => 'Your credentianls could not verified!'
            ]);
        }
        session()->regenerate();
        return redirect('/')->with('success', "Welcome back! " . ucwords(auth()->user()->name));
    }
    public function destroy()
    {
        $user = auth()->user()->name;
        Auth::logout();
        return redirect('/')->with('success', 'See you soon, Goodbye! ' . $user);
    }
}
