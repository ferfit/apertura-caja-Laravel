<div class="row">
    {{-- Auto --}}
    <div class="col-sm-6 col-md-3">
        <div class="ui_kit_select_search add_new_property mb20" wire:model="autocomprado" wire:ignore>
            <label for="auto_id" class="form-label">Auto*</label>
            <select name="auto_id" class="selectpicker @error('auto_id') is-invalid @enderror" data-live-search="true"
                data-width="100%" wire:model="autocomprado">
                <option value="{{ $venta->auto->id }}">Nro:{{ $venta->auto->id }} - {{ $venta->auto->marca }} -
                    {{ $venta->auto->modelo }} - {{ $venta->auto->version }}</option>
                @foreach ($autos as $auto)
                    <option value="{{ $auto->id }}">
                        Nro: {{ $auto->id }} - {{ $auto->marca }} - {{ $auto->modelo }} -
                        {{ $auto->version }}
                    </option>
                @endforeach
            </select>

            @error('auto_id')
                <span class="invalid-feedback d-block" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror

        </div>
    </div>

    {{-- Precio Costo --}}
    <div class="col-sm-6 col-md-3">
        <div class="ui_kit_select_search add_new_property mb20">
            <label class="form-label">Precio Costo*</label>
            <input  min="0" name="precio_costo"
                class="form-control form_control @error('precio_costo') is-invalid @enderror"
                type="number" wire:model="precio_costo">
            @error('precio_costo')
                <span class="invalid-feedback d-block" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
    </div>


    {{-- Precio Venta --}}
    <div class="col-sm-6 col-md-3">
        <div class="ui_kit_select_search add_new_property mb20">
            <label for="precio_venta"  min="0" class="form-label">Precio Venta *</label>
            <input name="precio_venta" class="form-control form_control @error('precio_venta') is-invalid @enderror"
                type="number" wire:model="precio_venta">

            @error('precio_venta')
                <span class="invalid-feedback d-block" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
    </div>

    {{-- Precio Ganancia --}}
    <div class="col-sm-6 col-md-3">
        <div class="ui_kit_select_search add_new_property mb20">
            <label for="ganancia" class="form-label">Ganancia</label>
            <input name="ganancia" min="0" class="form-control form_control @error('ganancia') is-invalid @enderror"
                type="number" wire:model="precio_ganancia" readonly>

            @error('ganancia')
                <span class="invalid-feedback d-block" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
    </div>
</div>
