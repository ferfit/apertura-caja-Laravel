@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">AUTOS</h1>
@stop

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Crear auto</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form method="POST" action="{{ route('autos.store') }}" novalidate>
                @csrf
                <div class="card-body row">
                    {{-- condicion --}}
                    <div class="form-group col-12 col-md-4 col-xl-3">
                        <label for="condicion">Condición</label>

                        <select name="condicion" id="" class="form-control @error('condicion') is-invalid @enderror">
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
                    {{-- Marca --}}
                    <div class="form-group col-12 col-md-4 col-xl-3">
                        <label for="marca">Marca</label>

                        <select name="marca" id="" class="form-control @error('marca') is-invalid @enderror">
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
                    {{-- Modelo --}}
                    <div class="form-group col-12 col-md-4 col-xl-3">
                        <label for="modelo">Modelo</label>

                        <select name="modelo" id="" class="form-control @error('modelo') is-invalid @enderror">
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
                    {{-- Version --}}
                    <div class="form-group col-12 col-md-4 col-xl-3">
                        <label for="version">Versión</label>

                        <select name="version" id="" class="form-control @error('version') is-invalid @enderror">
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
                    {{-- año --}}
                    <div class="form-group col-12 col-md-4 col-xl-3">
                        <label for="año">Año</label>

                        <select name="año" id="" class="form-control @error('año') is-invalid @enderror">
                            <option value="">Seleccione</option>
                            @for ($i = 1925; $i < 2023; $i++)
                                <option value="{{ $i }}">{{ $i }}</option>
                            @endfor
                        </select>

                        @error('año')
                            <span class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror

                    </div>

                    {{-- Precio --}}
                    <div class="form-group col-12 col-md-4 col-xl-3">
                        <label for="precio">Precio</label>
                        <input type="number" name="precio" class="form-control @error('precio') is-invalid @enderror"
                            id="precio" value="">
                        @error('precio')
                            <span class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>


                    {{-- Ciudades --}}
                    <div class="form-group col-12 col-md-4 col-xl-3">
                        <label for="ciudad">Ciudad</label>

                        <select name="ciudad" id="" class="form-control @error('ciudad') is-invalid @enderror">
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
                    {{-- Provincia --}}
                    <div class="form-group col-12 col-md-4 col-xl-3">
                        <label for="provincia">Provincia</label>

                        <select name="provincia" id="" class="form-control @error('provincia') is-invalid @enderror">
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
                    {{-- Tipo --}}
                    <div class="form-group col-12 col-md-4 col-xl-3">
                        <label for="tipo">Tipo</label>

                        <select name="tipo" id="" class="form-control @error('tipo') is-invalid @enderror">
                            <option value="">Seleccione</option>
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
                    {{-- Kilometraje --}}
                    <div class="form-group col-12 col-md-4 col-xl-3">
                        <label for="kilometraje">Kilometraje</label>
                        <input type="number" name="kilometraje" class="form-control @error('kilometraje') is-invalid @enderror"
                            id="kilometraje" value="">
                        @error('kilometraje')
                            <span class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    {{-- Tipo --}}
                    <div class="form-group col-12 col-md-4 col-xl-3">
                        <label for="combustible">Combustible</label>

                        <select name="combustible" id="" class="form-control @error('combustible') is-invalid @enderror">
                            <option value="">Seleccione</option>
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
                    {{-- Tipo de motor--}}
                    <div class="form-group col-12 col-md-4 col-xl-3">
                        <label for="tipomotor">Tipo de motor</label>

                        <select name="tipomotor" id="" class="form-control @error('tipomotor') is-invalid @enderror">
                            <option value="">Seleccione</option>
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
                    {{-- Traccion--}}
                    <div class="form-group col-12 col-md-4 col-xl-3">
                        <label for="traccion">Tracción</label>

                        <select name="traccion" id="" class="form-control @error('traccion') is-invalid @enderror">
                            <option value="">Seleccione</option>
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
                    {{-- Traccion--}}
                    <div class="form-group col-12 col-md-4 col-xl-3">
                        <label for="cajaauto">Caja</label>

                        <select name="cajaauto" id="" class="form-control @error('cajaauto') is-invalid @enderror">
                            <option value="">Seleccione</option>
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
                    {{-- Colores--}}
                    <div class="form-group col-12 col-md-4 col-xl-3">
                        <label for="color">Color</label>

                        <select name="color" id="" class="form-control @error('color') is-invalid @enderror">
                            <option value="">Seleccione</option>
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
                    {{-- Tapizado --}}
                    <div class="form-group col-12 col-md-4 col-xl-3">
                        <label for="tapizado">tapizado</label>

                        <select name="tapizado" id="" class="form-control @error('tapizado') is-invalid @enderror">
                            <option value="">Seleccione</option>
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
                    {{-- Direccion --}}
                    <div class="form-group col-12 col-md-4 col-xl-3">
                        <label for="direccion">Dirección</label>

                        <select name="direccion" id="" class="form-control @error('direccion') is-invalid @enderror">
                            <option value="">Seleccione</option>
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
                    {{-- Valor --}}
                    <div class="form-group col-12 col-md-4 col-xl-3">
                        <label for="valor">Valor</label>

                        <select name="valor" id="" class="form-control @error('valor') is-invalid @enderror">
                            <option value="">Seleccione</option>
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
                    {{-- Permuta --}}
                    <div class="form-group col-12 col-md-4 col-xl-3">
                        <label for="permuta">Permuta</label>

                        <select name="permuta" id="" class="form-control @error('permuta') is-invalid @enderror">
                            <option value="">Seleccione</option>
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
                <!-- /.card-body -->

                <div class="card-footer">
                    <button type="submit" class="btn btn-success"><i class="far fa-check-square mr-1 "></i>Crear</button>
                    <a href="{{ route('autos.index') }}" class="ml-1 btn btn-secondary"> <i
                            class="fas fa-undo-alt mr-1"></i>Volver</a>
                </div>
            </form>
        </div>
    </div>
@stop

@section('css')
@stop

@section('js')
@stop
