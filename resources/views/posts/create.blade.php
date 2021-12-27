<x-layout>
    <section class="py-8">
        <div class="flex justify-center pb-10 bg-gray-100">
            <div class="container sm:mt-10 mt-10 my-auto max-w-md border-2 border-gray-200 p-3 bg-white">
                <!-- header -->
                <div class="text-center my-6">
                    <h1 class="text-3xl font-semibold text-gray-700">Create Post</h1>
                </div>
                <!-- sign-in -->
                <div class="m-6">
                    <form class="mb-4" method="POST" action="/admin/posts">
                        @csrf
                        <div class="mb-6">
                            <label for="title" class="block mb-2 text-sm text-gray-600 dark:text-gray-400">Title</label>
                            <input type="text" value="{{ old('title') }}" name="title" required id="title"
                                placeholder="Your title"
                                class="w-full px-3 py-2 placeholder-gray-300 border border-gray-300 rounded-md focus:outline-none focus:ring focus:ring-indigo-100 focus:border-indigo-300 dark:bg-gray-700 dark:text-white dark:placeholder-gray-500 dark:border-gray-600 dark:focus:ring-gray-900 dark:focus:border-gray-500" />
                            @error('title')
                                <div class="text-red-500 text-xs mt-1">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="mb-6">
                            <label for="slug" class="block mb-2 text-sm text-gray-600 dark:text-gray-400">Slug</label>
                            <input type="text" value="{{ old('slug') }}" name="slug" required id="slug"
                                placeholder="Your slug"
                                class="w-full px-3 py-2 placeholder-gray-300 border border-gray-300 rounded-md focus:outline-none focus:ring focus:ring-indigo-100 focus:border-indigo-300 dark:bg-gray-700 dark:text-white dark:placeholder-gray-500 dark:border-gray-600 dark:focus:ring-gray-900 dark:focus:border-gray-500" />
                            @error('slug')
                                <div class="text-red-500 text-xs mt-1">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="mb-6">
                            <label for="excerpt"
                                class="block mb-2 text-sm text-gray-600 dark:text-gray-400">Excerpt</label>
                            <textarea name="excerpt"
                                class="border border-gray-500 rounded w-full text-sm focus:outline-none focus:ring text-gray-500 "
                                id="excerpt" rows="4" placeholder="" required></textarea>
                            @error('excerpt')
                                <div class="text-red-500 text-xs mt-1">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="mb-6">
                            <label for="body" class="block mb-2 text-sm text-gray-600 dark:text-gray-400">Body</label>
                            <textarea name="body"
                                class="border border-gray-500 rounded w-full text-sm focus:outline-none focus:ring text-gray-500 "
                                id="body" rows="4" placeholder="" required></textarea>
                            @error('body')
                                <div class="text-red-500 text-xs mt-1">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="mb-6">
                            <label for="category_id"
                                class="block mb-2 text-sm text-gray-600 dark:text-gray-400">Category</label>
                            <select name="category_id" id="category_id"
                                class="border border-gray-500 focus:ring w-full">
                                @foreach (\App\Models\Category::all() as $category)
                                    <option value="{{ $category->id }}" class="text-center"
                                        {{ old('category_id') == $category->id ? 'selected' : '' }}>
                                        {{ ucwords($category->name) }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="">
                            <button type="submit"
                                class="w-full px-3 py-4 text-white bg-indigo-500 rounded-md hover:bg-indigo-600 focus:outline-none duration-100 ease-in-out">Publish</button>
                        </div>
                    </form>
                    <!-- seperator -->
                </div>
            </div>
        </div>
        </div>
    </section>
</x-layout>
