@auth
    <x-panel>
        <form action="/posts/{{ $post->slug }}/comments" method="post">
            @csrf
            <header class="flex items-center">
                <img src="https://i.pravatar.cc/60?u={{ auth()->user()->id }}" alt="" width="40" height="40"
                    class="rounded-full">
                <textarea name="body"
                    class="ml-5 border border-gray-500 rounded-2xl w-full text-sm focus:outline-none focus:ring text-gray-500 "
                    id="" rows="5" placeholder="
                                            
                                            Quick, think to say something!" required></textarea>
            </header>
            @error('body')
                <p class="text-sm text-red-500 text-center">{{ $message }}</p>
            @enderror
            <div class="flex justify-end mt-6 pt-6 border-t border-gray-200">
                <x-submit-button>Post</x-submit-button>
            </div>
        </form>
    </x-panel>
@else
    <p class="font-semibold bg-blue-500 p-4 text-center text-white border border-gray-500 rounded-full">
        <a href="/register" class="underline">Register</a> or <a href="/login" class="underline">Login</a> to leave
        a comment.
    </p>
@endauth
