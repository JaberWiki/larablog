<x-dropdown>
    <x-slot name="trigger">
        <button class="py-2 pl-3 pr-9 text-sm font-semibold lg:w-32 flex lg:inline-flex w-full">
            {{ isset($currentCat) ? ucwords($currentCat->name) : 'Categories' }}
            <x-icon name='down-arrow' class="absolute pointer-events-none" style="right: 12px;" />
        </button>
    </x-slot>
    <x-dropdown-item href="/?{{ http_build_query(request()->except('category','page')) }}" :active="request()->routeIs('posts')">All</x-dropdown-item>
    @foreach ($cat as $c)
        <x-dropdown-item href="/?category={{ $c->slug }}&{{ http_build_query(request()->except('category','page')) }}"
            :active='request()->is("?category=".$c->slug)'
            >{{ ucwords($c->name) }}</x-dropdown-item>
    @endforeach
</x-dropdown>