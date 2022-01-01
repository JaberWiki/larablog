@props(['name'])
<div class="mb-6">
    <button type="submit"
        class="w-full px-3 py-4 text-white bg-indigo-500 rounded-md hover:bg-indigo-600 focus:outline-none duration-100 ease-in-out">{{ ucwords($name) }}</button>
</div>