<x-layout>
    <x-setting :heading="'Edit Post: ' . $post->title">
        <x-panel>
            <div class="m-6">
                <form class="mb-4" method="POST" action="/admin/posts/{{ $post->id }}" enctype="multipart/form-data">
                    @csrf
                    @method('PATCH')
                    <x-form.input name='title' :value="old('title', $post->title)" />
                    <x-form.input name='slug' :value="old('slug', $post->slug)" />
                    <div class="flex">
                        <x-form.input name='image' type='file' :value="old('image', $post->image)" class='my-10' />
                            <img src="{{ asset('storage/' . $post->image) }}" alt="" class="rounded-xl mb-6 mx-auto ml-4"
                                width="200px">
                    </div>
                    <x-form.textarea name='excerpt'>{{ old('excerpt', $post->excerpt) }}</x-form.textarea>
                    <x-form.textarea name='body'>{{ old('body', $post->body) }}</x-form.textarea>
                    <x-form.field>
                        <x-form.label name='category' />
                        <select name="category_id" id="category" class="border border-gray-500 focus:ring w-full">
                            @foreach (\App\Models\Category::all() as $category)
                                <option value="{{ $category->id }}" class="text-center"
                                    {{ old('category_id', $post->category_id) == $category->id ? 'selected' : '' }}>
                                    {{ ucwords($category->name) }}
                                </option>
                            @endforeach
                        </select>
                        <x-form.error name="category_id" />
                    </x-form.field>
                    <x-form.field>
                        <x-form.button name="update" />
                    </x-form.field>
                </form>
                <!-- seperator -->
            </div>
        </x-panel>
    </x-setting>
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
