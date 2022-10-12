{{-- <div class="p-2">
    @if (count($auto->files) > 0)
        <div class=" bg-white mt-3">
            <ul class="row flex-wrap list-unstyled">
                <x-laravel-blade-sortable::sortable class="flex flex-row flex-wrap" name="dropzone" wire:onSortOrderChange="ordenar">

                    @foreach ($auto->files as $file)
                        <x-laravel-blade-sortable::sortable-item sort-key="{{$file->id}}" class="col-12 col-md-4 col-lg-2">
                            <li class="position-relative w-auto shadow m-2" wire:key="image-{{ $file->id }}">

                                <a href="{{ Storage::url($file->url) }}" target="_blank" download=""><img
                                        src="{{ Storage::url($file->url) }}" alt=""
                                        style="width: 250px;height:150px;object-fit:cover;" class="m-1"></a>
                                <button wire:click="deleteFile({{ $file }})"
                                    class="btn btn-danger position-absolute rounded shadow"
                                    style="top:0; right:0;">x</button>
                            </li>
                        </x-laravel-blade-sortable::sortable-item>
                    @endforeach
                </x-laravel-blade-sortable::sortable>
            </ul>
        </div>
    @endif


</div> --}}

@if (count($auto->files) > 0)

    <x-laravel-blade-sortable::sortable class="d-flex flex-row flex-wrap"
    name="dropzone"
    wire:onSortOrderChange="handleSortOrderChange"  >

        @foreach ($auto->files as $file)
            <x-laravel-blade-sortable::sortable-item sort-key="{{ $file->id }}" class="col-12 col-md-4 col-lg-2">
                <div class="position-relative w-auto shadow m-2" wire:key="image-{{ $file->id }}">

                    <a href="{{ Storage::url($file->url) }}" target="_blank" download=""><img
                            src="{{ Storage::url($file->url) }}" alt=""
                            style="width: 250px;height:150px;object-fit:cover;" class="m-1"></a>
                    <button wire:click="deleteFile({{ $file }})"
                        class="btn btn-danger position-absolute rounded shadow" style="top:0; right:0;">x</button>
                </div>
            </x-laravel-blade-sortable::sortable-item>
        @endforeach
    </x-laravel-blade-sortable::sortable>

@endif

