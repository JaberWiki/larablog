@props(['heading'])

<section class="py-8">
    <div class="flex justify-center pb-10 bg-gray-100">
        <div
            class="container sm:mt-10 mt-10 my-auto max-w-4xl mx-auto border-2 border-gray-200 p-3 bg-white border border-black border-opacity-0 hover:border-opacity-5 rounded-xl">
            <!-- header -->
            <div class="text-center my-6 border-b">
                <h1 class="text-3xl font-semibold text-gray-700">{{ $heading }}</h1>
            </div>
            <!-- form -->
            <div class="flex">
                <x-panel>
                    <h4 class="font-semibold border-b-2">Links</h4>
                    <aside class="w-48 pt-4">
                        <ul>
                            <li>
                                <a href="{{ route('newPost') }}"
                                    class="{{ request()->is('admin/dashboard') ? 'text-blue-500' : '' }}">Dashboard</a>
                            </li>
                            <li>
                                <a href="{{ route('newPost') }}"
                                    class="{{ request()->routeIs('newPost') ? 'text-blue-500' : '' }}">New Post</a>
                            </li>
                        </ul>
                    </aside>
                </x-panel>
                <main class="flex-1">
                    {{ $slot }}
                </main>
            </div>
        </div>
    </div>
    </div>
</section>
