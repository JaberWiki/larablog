<x-layout>
        @foreach ($cat as $c)
            <h1><a href="/?category={{ $c->slug }}">{{ $c->name }}</a></h1>            
        @endforeach
        <hr>
        <h1></h1>
</x-layout>