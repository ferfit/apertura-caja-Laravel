<div class="row">
    {{-- Marca --}}
    <div class="col-sm-6 col-md-3">
        <div class="ui_kit_select_search add_new_property mb20" wire:ignore>
            <label class="form-label">Marca*</label>
            <select id="marca" name="marca" class="selectpicker  @error('marca') is-invalid @enderror" wire:model="marca"
                data-live-search="true" data-width="100%">

                @if ($auto->marca_id)
                    <option value="{{ $auto->marca_id }}">{{ $auto->marca->nombre }}</option>
                @else
                    <option value="">Seleccione</option>
                @endif

                @foreach ($marcas as $marca)
                    <option value="{{ $marca->id }}">{{ $marca->nombre }}</option>
                @endforeach
            </select>

            @error('marca')
                <span class="invalid-feedback d-block" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
    </div>

    {{-- Modelo --}}
    <div class="col-sm-6 col-md-3">
        <div class="ui_kit_select_search add_new_property mb20">
            <label name="modelo" class="form-label">Modelo*</label>
            <select id="modelo" name="modelo" class="form-control @error('modelo') is-invalid @enderror"
                data-live-search="true" data-width="100%" style="font-size:14px !important;">

                @if ($auto->modelo_id)
                    <option value="{{ $auto->modelo_id }}">{{ $auto->modelo->nombre }}</option>
                @else
                    <option value="" selected>Seleccione</option>
                @endif

                @foreach ($modelos as $modelo)
                    <option value="{{ $modelo->id }}">{{ $modelo->nombre }}</option>
                @endforeach
            </select>

            @error('modelo')
                <span class="invalid-feedback d-block" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
    </div>

    <script>
        document.addEventListener('livewire:load', function() {
            $('#marca').on('change', function() {
                @this.set('marca', this.value)

            })

        })

        /* window.livewire.hook('afterDomUpdate', () => {
            $('select').selectpicker();
        }); */
    </script>


</div>
