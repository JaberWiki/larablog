@props(['name'])

<label for="{{ $name }}"
    class="block mb-2 text-sm text-gray-600 dark:text-gray-400">{{ ucwords($name) }}</label>