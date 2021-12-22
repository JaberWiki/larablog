<?php

use App\Http\Controllers\PostCommentController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\SessionsController;
use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Route;
use Spatie\YamlFrontMatter\YamlFrontMatter;

Route::get('/', [PostController::class, 'index'])->name('posts');
Route::get('post/{post:slug}', [PostController::class, 'show']);
Route::post('posts/{post:slug}/comments', [PostCommentController::class, 'store']);

// Register
Route::get('/register', [RegisterController::class, 'create'])->middleware('guest');
Route::post('/register', [RegisterController::class, 'store'])->middleware('guest');

Route::get('/login', [SessionsController::class, 'create'])->middleware('guest');
Route::post('/login', [SessionsController::class, 'store'])->middleware('guest');
Route::post('/logout', [SessionsController::class, 'destroy'])->middleware('auth');

Route::post('/newsletter', function () {
	$mailchimp = new \MailchimpMarketing\ApiClient();
	request()->validate(['email' => 'required|email']);
	$mailchimp->setConfig([
		'apiKey' => config('services.mailchimp.key'),
		'server' => 'us20'
	]);
	try {
		$mailchimp->lists->addListMember("8d0e4ee54d", [
			"email_address" => request('email'),
			"full_name" => "Redoan Ahmed",
			"status" => "subscribed",
		]);
	} catch (\Exception $e) {
		throw \Illuminate\Validation\ValidationException::withMessages([
			'email' => 'Email is unable to add in our newsletter.'
		]);
	}
	return redirect('/')->with('success', 'You are signed up for our newsletter!');
});
