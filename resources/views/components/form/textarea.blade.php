@props(['name'])
<x-form.field>
    <x-form.label name="{{ $name }}" />
    <textarea name="{{ $name }}"
        class="border border-gray-500 rounded w-full text-sm focus:outline-none focus:ring text-gray-500 "
        id="{{ $name }}" rows="4" placeholder="" required></textarea>
    <x-form.error name="{{ $name }}" />
</x-form.field>
