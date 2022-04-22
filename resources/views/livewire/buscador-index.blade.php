
<div class="home1_advance_search_wrapper px-4">
        <ul class="mb0 text-center row">
            <li class="list-inline-item col-12 col-md-3">
                <div class="select-boxes">
                    <div class="car_brand">
                        <h6 class="title">Marca
                        </h6>
                        <select class="form-control" name="marca" wire:model="marca">
                            <option value=""> Seleccione una marca
                            </option>
                            @foreach ($marcas as $marca )
                                <option value="{{$marca->id}}">{{$marca->nombre}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </li>
            <li class="list-inline-item col-12 col-md-3">
                <div class="select-boxes">
                    <div class="car_models" >
                        <h6 class="title">Modelo
                        </h6>
                        <select class="form-control" name="modelo">
                            <option value="" selected>Seleccione un modelo
                            </option>
                            @foreach ($modelos as $modelo )
                                <option value="{{$modelo->id}}">{{$modelo->nombre}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </li>
            <li class="list-inline-item col-12 col-md-3">
                <div class="select-boxes">
                    <div class="car_prices">
                        <h6 class="title">
                            Condición</h6>
                        <select class="form-control" name="condicion">
                            <option value="">Seleccione una condición
                            </option>
                            @foreach ($condiciones as $condicion )
                            <option value="{{$condicion->nombre}}">{{$condicion->nombre}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </li>
            <li class="list-inline-item col-12 col-md-2">
                <div class="d-block">
                    <button type="submit" style="margin-top: 24px;"
                        class="btn btn-thm advnc_search_form_btn"><span
                            class="flaticon-magnifiying-glass"></span>Buscar</button>
                </div>
            </li>
        </ul>
    </div>
