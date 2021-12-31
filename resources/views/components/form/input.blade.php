@props(['name', 'type' => 'text'])
<x-form.field>
    <x-form.label name="{{ $name }}" />    
    <input type="{{ $type }}" value="{{ old($name) }}" name="{{ $name }}" required
        id="{{ $name }}" placeholder="Your {{ $name }}"
        class="w-full px-3 py-2 placeholder-gray-300 border border-gray-300 rounded-md focus:outline-none focus:ring focus:ring-indigo-100 focus:border-indigo-300 dark:bg-gray-700 dark:text-white dark:placeholder-gray-500 dark:border-gray-600 dark:focus:ring-gray-900 dark:focus:border-gray-500" />
    <x-form.error name="{{ $name }}" />
</x-form.field>