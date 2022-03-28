<div class="p-2">
    @if (count($auto->files)>0)
    <div class=" bg-white mt-3">
        <ul class="row flex-wrap list-unstyled">
            @foreach ( $auto->files as $file )
            <li class="position-relative w-auto shadow m-2" wire:key="image-{{$file->id}}" > {{-- le damos una key para mejor seguimiento de livewire --}}
                <a href="{{Storage::url($file->url)}}" target="_blank" download=""><img src="{{Storage::url($file->url)}}" alt="" style="width: 250px;height:150px;object-fit:cover;" class="m-1"></a>
                <button
                wire:click ="deleteFile({{$file}})"
                class="btn btn-danger position-absolute rounded shadow" style="top:0; right:0;">x</button>
            </li>

            @endforeach

        </ul>
    </div>
    @endif


</div>
