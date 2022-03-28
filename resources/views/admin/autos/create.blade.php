@extends('layouts.dashboard')

@section('contenido')
    <div class="row">
        <div class="col-xl-8">
            <div class="col-lg-12 mb50">
                <div class="breadcrumb_content">
                    <h2 class="breadcrumb_title">Crear auto</h2>
                </div>
            </div>
        </div>
    </div>
    <div class="row">

        <div class="col-lg-12">
            <div class="new_property_form">
                <form class="contact_form" name="contact_form" method="POST" action="{{ route('autos.store') }}"
                    novalidate>
                    @csrf
                    <div class="row">

                        {{-- condicion --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label class="form-label">Año*</label>
                                <select name="condicion" class="selectpicker @error('condicion') is-invalid @enderror"
                                    data-live-search="true" data-width="100%">
                                    <option value="">Seleccione</option>
                                    @foreach ($condiciones as $condicion)
                                        <option value="{{ $condicion->nombre }}">{{ $condicion->nombre }}</option>
                                    @endforeach
                                </select>

                                @error('condicion')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        {{-- Marca --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label class="form-label">Marca*</label>
                                <select name="marca" class="selectpicker  @error('marca') is-invalid @enderror"
                                    data-live-search="true" data-width="100%" name="marca">
                                    <option value="">Seleccione</option>
                                    @foreach ($marcas as $marca)
                                        <option value="{{ $marca->nombre }}">{{ $marca->nombre }}</option>
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
                                <select name="modelo" class="selectpicker @error('modelo') is-invalid @enderror"
                                    data-live-search="true" data-width="100%">
                                    <option value="">Seleccione</option>
                                    @foreach ($modelos as $modelo)
                                        <option value="{{ $modelo->nombre }}">{{ $modelo->nombre }}</option>
                                    @endforeach
                                </select>

                                @error('modelo')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        {{-- Version --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label class="form-label">Versión*</label>
                                <select name="version" class="selectpicker @error('version') is-invalid @enderror"
                                    data-live-search="true" data-width="100%">
                                    <option value="">Seleccione</option>
                                    @foreach ($versiones as $version)
                                        <option value="{{ $version->nombre }}">{{ $version->nombre }}</option>
                                    @endforeach
                                </select>

                                @error('version')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        {{-- año --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label class="form-label">Año*</label>
                                <select name="año" class="selectpicker @error('año') is-invalid @enderror"
                                    data-live-search="true" data-width="100%">
                                    <option value="">Seleccione</option>
                                    @for ($i = 1925; $i < 2050; $i++)
                                        <option value="{{ $i }}">{{ $i }}</option>
                                    @endfor
                                </select>

                                @error('año')
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
                                <input name="preciocosto"
                                    class="form-control form_control @error('preciocosto') is-invalid @enderror"
                                    type="number" placeholder="">

                                @error('preciocosto')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        {{-- Precio venta --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label class="form-label">Precio Venta *</label>
                                <input name="precio" class="form-control form_control @error('precio') is-invalid @enderror"
                                    type="number" placeholder="">

                                @error('precio')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        {{-- Ciudades --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label class="form-label">Ciudad*</label>
                                <select name="ciudad" class="selectpicker @error('provincia') is-invalid @enderror"
                                    data-live-search="true" data-width="100%">
                                    <option value="">Seleccione</option>
                                    @foreach ($ciudades as $ciudad)
                                        <option value="{{ $ciudad->nombre }}">{{ $ciudad->nombre }}</option>
                                    @endforeach
                                </select>

                                @error('ciudad')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        {{-- Provincia --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label class="form-label">Provincia*</label>
                                <select name="provincia" class="selectpicker @error('provincia') is-invalid @enderror"
                                    data-live-search="true" data-width="100%">
                                    <option value="">Seleccione</option>
                                    @foreach ($provincias as $provincia)
                                        <option value="{{ $provincia->nombre }}">{{ $provincia->nombre }}</option>
                                    @endforeach
                                </select>

                                @error('provincia')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        {{-- Tipo --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label class="form-label">Tipo</label>
                                <select name="tipo" class="selectpicker @error('tipo') is-invalid @enderror"
                                    data-live-search="true" data-width="100%">
                                    <option>Seleccione</option>
                                    @foreach ($tipos as $tipo)
                                        <option value="{{ $tipo->nombre }}">{{ $tipo->nombre }}</option>
                                    @endforeach
                                </select>

                                @error('tipo')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        {{-- Kilometraje --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label class="form-label">Kilometraje</label>
                                <input name="kilometraje"
                                    class="form-control form_control @error('kilometraje') is-invalid @enderror"
                                    type="number" placeholder="">

                                @error('kilometraje')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        {{-- combustible --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label class="form-label">Combustible</label>
                                <select name="combustible" class="selectpicker @error('combustible') is-invalid @enderror"
                                    data-live-search="true" data-width="100%">
                                    <option>Seleccione</option>
                                    @foreach ($combustibles as $combustible)
                                        <option value="{{ $combustible->nombre }}">{{ $combustible->nombre }}</option>
                                    @endforeach
                                </select>

                                @error('combustible')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        {{-- Tipo de motor --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label class="form-label">Tipo de motor</label>
                                <select name="tipomotor" class="selectpicker @error('tipomotor') is-invalid @enderror"
                                    data-live-search="true" data-width="100%">
                                    <option>Seleccione</option>
                                    @foreach ($tipomotores as $tipomotor)
                                        <option value="{{ $tipomotor->nombre }}">{{ $tipomotor->nombre }}</option>
                                    @endforeach
                                </select>

                                @error('tipomotor')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        {{-- Traccion --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label class="form-label">Tracción</label>
                                <select name="traccion" class="selectpicker @error('traccion') is-invalid @enderror"
                                    data-live-search="true" data-width="100%">
                                    <option>Seleccione</option>
                                    @foreach ($tracciones as $traccion)
                                        <option value="{{ $traccion->nombre }}">{{ $traccion->nombre }}</option>
                                    @endforeach
                                </select>

                                @error('traccion')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        {{-- Caja --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label class="form-label">Caja</label>
                                <select name="cajaauto" class="selectpicker @error('cajaauto') is-invalid @enderror"
                                    data-live-search="true" data-width="100%">
                                    <option>Seleccione</option>
                                    @foreach ($cajaautos as $cajaauto)
                                        <option value="{{ $cajaauto->nombre }}">{{ $cajaauto->nombre }}</option>
                                    @endforeach
                                </select>

                                @error('cajaauto')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        {{-- Colores --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label class="form-label">Color</label>
                                <select name="color" class="selectpicker @error('color') is-invalid @enderror"
                                    data-live-search="true" data-width="100%">
                                    <option>Seleccione</option>
                                    @foreach ($colores as $color)
                                        <option value="{{ $color->nombre }}">{{ $color->nombre }}</option>
                                    @endforeach
                                </select>

                                @error('color')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        {{-- Tapizado --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label class="form-label">Tapizado</label>
                                <select name="tapizado" class="selectpicker @error('tapizado') is-invalid @enderror"
                                    data-live-search="true" data-width="100%">
                                    <option>Seleccione</option>
                                    @foreach ($tapizados as $tapizado)
                                        <option value="{{ $tapizado->nombre }}">{{ $tapizado->nombre }}</option>
                                    @endforeach
                                </select>

                                @error('tapizado')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        {{-- Direccion --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label class="form-label">Dirección</label>
                                <select name="direccion" class="selectpicker @error('direccion') is-invalid @enderror"
                                    data-live-search="true" data-width="100%">
                                    <option>Seleccione</option>
                                    @foreach ($direcciones as $direccion)
                                        <option value="{{ $direccion->nombre }}">{{ $direccion->nombre }}</option>
                                    @endforeach
                                </select>

                                @error('direccion')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        {{-- Valor --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label class="form-label">Valor</label>
                                <select name="valor" class="selectpicker @error('valor') is-invalid @enderror"
                                    data-live-search="true" data-width="100%">
                                    <option>Seleccione</option>
                                    @foreach ($valores as $valor)
                                        <option value="{{ $valor->nombre }}">{{ $valor->nombre }}</option>
                                    @endforeach
                                </select>

                                @error('valor')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        {{-- Permuta --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label class="form-label">Permuta</label>
                                <select name="permuta" class="selectpicker @error('permuta') is-invalid @enderror"
                                    data-live-search="true" data-width="100%">
                                    <option>Seleccione</option>
                                    @foreach ($permutas as $permuta)
                                        <option value="{{ $permuta->nombre }}">{{ $permuta->nombre }}</option>
                                    @endforeach
                                </select>

                                @error('permuta')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-12 my-3">
                        <!-- Nav tabs -->
                        <div class="nav justify-content-start" role="tablist">
                            <button type="submit" class="botonAmarillo">Crear</button>
                            <a href="{{ route('autos.index') }}"><button class="botonAzul"> Volver</button></a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@stop

@section('css')

@stop

@section('js')
@stop