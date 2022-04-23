<div class="row">
    <div class="col-12 col-sm-4 col-lg-2">
        <div class="advance_search_style">
            <select class="form-control show-tick form-select" name="marca" wire:model="marca">
                <option value=""> Seleccione una marca
                </option>
                @foreach ($marcas as $marca )
                <option value="{{$marca->id}}">{{$marca->nombre}}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="col-12 col-sm-4 col-lg-2">
        <div class="advance_search_style">
            <select class="form-control show-tick form-select" name="modelo">
                <option value="" selected>Seleccione un modelo
                </option>
                @foreach ($modelos as $modelo )
                <option value="{{$modelo->id}}">{{$modelo->nombre}}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="col-12 col-sm-4 col-lg-2">
        <div class="advance_search_style">
            <select class="form-control show-tick form-select" name="condicion">
                <option value="">Seleccione una condición
                </option>
                @foreach ($condiciones as $condicion )
                <option value="{{$condicion->nombre}}">{{$condicion->nombre}}</option>
                @endforeach
            </select>
        </div>
    </div>

    <div class="col-12 col-sm-4 col-lg-2">
        <div class="advance_search_style">
            <button type="submit" class="btn btn-thm advnc_search_form_btn"><span
                    class="flaticon-magnifiying-glass"></span>Buscar <span></span></button>
        </div>
    </div>
</div>
