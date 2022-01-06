@props(['name', 'class' => null])
@php
    $u = "w-full px-3 py-2 placeholder-gray-300 border border-gray-300 rounded-md focus:outline-none focus:ring
    focus:ring-indigo-100 focus:border-indigo-300 dark:bg-gray-700 dark:text-white dark:placeholder-gray-500
    dark:border-gray-600 dark:focus:ring-gray-900 dark:focus:border-gray-500"
@endphp
<x-form.field>
    <x-form.label name="{{ $name }}" />
    <input name="{{ $name }}" id="{{ $name }}" placeholder="Your {{ $name }}"
        {{ $attributes(['value' => old($name)]) }} 
        @if ($class == null)
            class = "{{ $u }}"
        @else
            class = "{{$u}} {{ $class }}"
        @endif
    />
    <x-form.error name="{{ $name }}" />
</x-form.field>
