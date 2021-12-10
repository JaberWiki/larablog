<x-layout>
    @foreach ($authors as $author)
        <h1><a href="/author/{{ $author->username }}">{{ $author->name }}</a></h1>            
    @endforeach
    <hr>
    <h1></h1>
</x-layout>