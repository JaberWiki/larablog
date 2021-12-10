<x-layout>
    @include('posts._post-header')
    <main class="max-w-6xl mx-auto mt-6 lg:mt-20 space-y-6">
        @if ($posts->count())
            <x-featured-post-card :fpost="$posts[0]" />
            <x-posts-grid :posts="$posts" />
            {{ $posts->links() }}
        @else
            <p class="text-center">No posts are published yet. Please come back later.</p>
        @endif
    </main>
</x-layout>
