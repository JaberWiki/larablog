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
                    <form class="mb-4" method="POST" action="/admin/posts" enctype="multipart/form-data">
                        @csrf
                        <x-form.input name='title' />
                        <x-form.input name='slug' />
                        <x-form.input name='image' type='file' />
                        <x-form.textarea name='exerpt' />
                        <x-form.textarea name='body' />
                        <x-form.field>
                            <x-form.label name='category' />
                            <select name="category_id" id="category" class="border border-gray-500 focus:ring w-full">
                                @foreach (\App\Models\Category::all() as $category)
                                    <option value="{{ $category->id }}" class="text-center"
                                        {{ old('category_id') == $category->id ? 'selected' : '' }}>
                                        {{ ucwords($category->name) }}
                                    </option>
                                @endforeach
                            </select>
                            <x-form.error name="category_id" />
                        </x-form.field>
                        <x-form.field>
                            <button type="submit"
                                class="w-full px-3 py-4 text-white bg-indigo-500 rounded-md hover:bg-indigo-600 focus:outline-none duration-100 ease-in-out">
                                Publish
                            </button>
                        </x-form.field>
                    </form>
                    <!-- seperator -->
                </div>
            </div>
        </div>
        </div>
    </section>
</x-layout>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
    $(function() {
        $('#title').keyup(function() {
            var value = $(this).val().toLowerCase();
            $('#slug').val(value.replace(/ /g, "-"));
        }).keyup();
    });
</script>
