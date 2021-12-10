@props(['trigger'])
<div x-data="{show : false}" @click.away="show = false">
    <div @click="show = ! show">
        {{ $trigger }}
    </div>
    <div x-show="show" class="py-2 absolute bg-gray-100 w-full mt-2 rounded-xl z-50 overflow-auto max-h-52" style="display: none">
        {{ $slot }}
    </div>
</div>
