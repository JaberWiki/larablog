<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Comment;
use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // User::truncate();
        // Post::truncate();
        // Category::truncate();

        //custom username provided
        $user = User::factory()->create([
            'name' => 'Jaber Bro'
        ]);
        Post::factory(10)->create([
            'user_id' => 1
        ]); 
        Comment::factory()->create([
            'user_id' => 1,
            'post_id' => 1
        ]);       
    }
}
