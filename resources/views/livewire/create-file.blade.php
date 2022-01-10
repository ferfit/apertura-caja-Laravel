<div>
    <div class="container p-2 bg-white shadow mt-3">
        <ul class="row flex-wrap list-unstyled">
            @foreach ( $auto->files as $file )
            <li class="position-relative" wire:key="image-{{$file->id}}" > {{-- le damos una key para mejor seguimiento de livewire --}}
                <img src="{{Storage::url($file->url)}}" alt="" style="width: 150px;" class="m-1">
                <button
                wire:click ="deleteFile({{$file}})"
                class="btn btn-danger position-absolute rounded shadow" style="top:0; right:0;">x</button>
            </li>

            @endforeach

        </ul>
    </div>

</div>
