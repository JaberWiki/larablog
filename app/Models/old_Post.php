<?php

namespace App\Models;

use Exception;
use Illuminate\Support\Facades\File;
use Illuminate\Database\Eloquent\Model;
use Spatie\YamlFrontMatter\YamlFrontMatter;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class Post extends Model
{
    public $title;
    public $slug;
    public $excerpt;
    public $date;
    public $body;

    function __construct( $title,$slug,$excerpt,$date,$body)
    {
        $this->title = $title;
        $this->slug = $slug;
        $this->excerpt = $excerpt;
        $this->date = $date;        
        $this->body = $body;

    }

    use HasFactory;
    public static function showAll()
    {        
        return collect(File::files(resource_path("posts")))
                ->map(fn ($f) => YamlFrontMatter::parseFile($f))
                ->map(fn ($doc) => new Post(
                    $doc->title,
                    $doc->slug,
                    $doc->excerpt,
                    $doc->date,
                    $doc->body()
            ))
            ->sortByDesc('date');
        
        //or
        // $files = File::files(resource_path("posts"));
        // $post = [];
        // foreach ($files as $file) {
        //     $doc = YamlFrontMatter::parseFile($file);
        //     $post[] = new Post(
        //         $doc->title,
        //         $doc->slug,
        //         $doc->excerpt,
        //         $doc->date,
        //         $doc->body()
        //     );
        // }
        // return $doc;
        // $d = YamlFrontMatter::parseFile(resource_path("posts/1st-post.html"));
        // ddd($d->slug);
        // $p = Post::showAll();
        
        //or

        // $files = File::files(resource_path("posts/"));
        // return array_map(fn ($file) => $file->getContents(), $files);

        //or
        // $a = [];
        // foreach($files as $file){
        //     array_push($a, $file->getContents());
        // }
        // return $a;

    }
    public static function find($slug)
    {
        return static::showAll()->firstWhere('slug',$slug);
        // return cache()->rememberForever('allpost',function() use ($slug){
        //     return static::showAll()->firstWhere('slug',$slug);
        // });
        
        //or
        // if (!file_exists($path = resource_path("posts/{$slug}.html"))) {
        //     throw new ModelNotFoundException();
        // }
        // return cache()->remember('post/{post}', now()->addSeconds(5), function () use ($path) {
        //     return file_get_contents($path);
        // });
    }
    public static function findOrFail($slug)
    {
        $post = static::find($slug);
        if(!$post){
            throw new ModelNotFoundException();
        }
        return $post;
    }
}
