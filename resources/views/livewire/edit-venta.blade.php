<div>
    {{-- Auto --}}
    <div class="form-group">
        <label for="auto_id">Auto</label>

        <select name="auto_id" id="" class="form-control @error('auto_id') is-invalid @enderror"   wire:model="autocomprado" >
            <option value="{{$venta->auto->id}}">Nro:{{ $venta->auto->id}} - {{ $venta->auto->marca}} - {{ $venta->auto->modelo}} - {{ $venta->auto->version}}</option>
            @foreach ($autos as $auto)
                <option value="{{$auto->id}}">
                   Nro: {{ $auto->id}} - {{ $auto->marca}} - {{ $auto->modelo}} - {{ $auto->version}}
                </option>
            @endforeach
        </select>

        @error('cliente_id')
            <span class="invalid-feedback d-block" role="alert">
                <strong>{{ $message }}</strong>
            </span>
        @enderror

    </div>

    {{-- Precio Costo --}}
    <div class="form-group my-5 mx-2">
        <label for="precio_costo">Precio Costo</label>
        <input type="number" min="0"
        name="precio_costo"
        class="form-control @error('precio_costo') is-invalid @enderror" id="precio_costo"
        value=""  wire:model="precio_costo" >
        @error('precio_costo')
        <span class="invalid-feedback d-block" role="alert">
            <strong>{{ $message }}</strong>
        </span>
        @enderror
    </div>


    {{-- Precio Venta --}}
    <div class="form-group my-5 mx-2">
        <label for="precio_venta">Precio Venta</label>
        <input type="number" min="0"
        name="precio_venta"
        class="form-control @error('precio_venta') is-invalid @enderror" id="precio_venta"
        value="" wire:model="precio_venta">
        @error('precio_venta')
        <span class="invalid-feedback d-block" role="alert">
            <strong>{{ $message }}</strong>
        </span>
        @enderror
    </div>

    {{-- Precio Ganancia --}}
    <div class="form-group my-5 mx-2">
        <label for="ganancia">Ganancia</label>
        <input type="number" min="0"
        name="ganancia"
        class="form-control @error('ganancia') is-invalid @enderror" id="ganancia"
        value="" wire:model="precio_ganancia" readonly>
        @error('ganancia')
        <span class="invalid-feedback d-block" role="alert">
            <strong>{{ $message }}</strong>
        </span>
        @enderror
    </div>
</div>
