<div class="row">
    {{-- Auto --}}
    <div class="col-sm-6 col-md-3">
        <div class="ui_kit_select_search add_new_property mb20" wire:ignore>
            <label for="auto_id" class="form-label">Auto*</label>
            <select name="auto_id"
                class="selectpicker @error('auto_id') is-invalid @enderror"
                data-live-search="true" data-width="100%" wire:model="carro">
                <option value="">Seleccione</option>
                @foreach ($autos as $auto)
                <option value="{{$auto->id}}">
                   Nro: {{ $auto->id}} - {{ $auto->marca->nombre}} - {{ $auto->modelo->nombre}} - {{ $auto->version}} - Dominio: {{$auto->patente}}
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
            <input name="precio_costo"
                class="form-control form_control @error('precio_costo') is-invalid @enderror"
                type="number" wire:model="costo" min="1">

            @error('precio_costo')
                <span class="invalid-feedback d-block" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
    </div>


    {{-- Precio venta --}}
    <div class="col-sm-6 col-md-3">
        <div class="ui_kit_select_search add_new_property mb20">
            <label for="precio_venta" class="form-label">Precio Venta *</label>
            <input name="precio_venta" class="form-control form_control @error('precio_venta') is-invalid @enderror"
                type="number" wire:model="venta" min="1">

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
            <input name="ganancia" class="form-control form_control @error('ganancia') is-invalid @enderror"
                type="number" wire:model="ganancia" readonly min="1">

            @error('ganancia')
                <span class="invalid-feedback d-block" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
    </div>



</div>
