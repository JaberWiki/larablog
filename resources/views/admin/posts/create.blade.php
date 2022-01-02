<x-layout>
    <x-setting heading="Publish New Post">
        <x-panel>
            <div class="m-6">
                <form class="mb-4" method="POST" action="/admin/posts" enctype="multipart/form-data">
                    @csrf
                    <x-form.input name='title' />
                    <x-form.input name='slug' />
                    <x-form.input name='image' type='file' />
                    <x-form.textarea name='excerpt' />
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
                        <x-form.button name="publish" />
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
