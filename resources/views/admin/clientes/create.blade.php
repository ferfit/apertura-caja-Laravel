@extends('layouts.dashboard')

@section('contenido')
    <div class="row">
        <div class="col-xl-8">
            <div class="col-lg-12 mb50">
                <div class="breadcrumb_content">
                    <h2 class="breadcrumb_title">Crear cliente</h2>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="new_property_form">
                <form method="POST" action="{{ route('clientes.store') }}" class="contact_form" novalidate>
                    @csrf
                    <div class="row">
                        {{-- Nombre --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label for="nombre" class="form-label">Nombre*</label>
                                <input name="nombre" class="form-control form_control @error('nombre') is-invalid @enderror"
                                    type="text" placeholder="" value="{{ old('nombre') }}">

                                @error('nombre')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        {{-- Email --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label for="email" class="form-label">Email
                                </label>
                                <input name="email" class="form-control form_control @error('email') is-invalid @enderror"
                                    type="email" placeholder="" value="{{ old('email') }}">

                                @error('email')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        {{-- Ciudad --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label for="ciudad" class="form-label">Ciudad*</label>
                                <input name="ciudad" class="form-control form_control @error('ciudad') is-invalid @enderror"
                                    type="text" placeholder="" value="{{ old('ciudad') }}">

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
                                <label for="provincia" class="form-label">Provincia*</label>
                                <input name="provincia"
                                    class="form-control form_control @error('provincia') is-invalid @enderror" type="text"
                                    placeholder="" value="{{ old('provincia') }}">

                                @error('provincia')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        {{-- Celular --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label for="celular" class="form-label">Celular* (escribir sin guiones, paréntesis, ni
                                    ningún carácter
                                    especial.</label>
                                <input name="celular"
                                    class="form-control form_control @error('celular') is-invalid @enderror" type="text"
                                    placeholder="" value="{{ old('celular') }}">

                                @error('celular')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        {{-- Nota --}}
                        <div class="col-md-12">
                            <div class="mb20">
                                <label class="form-label">Nota*</label>
                                <textarea name="nota" class="form-control" rows="10" placeholder=""></textarea>
                            </div>
                            @error('nota')
                                <span class="invalid-feedback d-block" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>


                        {{-- Estado --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label for="estado" class="form-label">Estado*</label>
                                <select name="estado" id="estado" class="selectpicker @error('estado') is-invalid @enderror"
                                    data-live-search="true" data-width="100%">
                                    <option value="">Seleccione</option>
                                    <option value="compra">compra</option>
                                    <option value="venta">venta</option>
                                    <option value="compra-venta">compra-venta</option>
                                </select>

                                @error('estado')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

                            </div>
                        </div>

                        {{-- Origen cliente --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label for="origencliente" class="form-label">Metodo de captación*</label>
                                <select name="origencliente"
                                    class="selectpicker @error('origencliente') is-invalid @enderror"
                                    data-live-search="true" data-width="100%">
                                    <option value="">Seleccione</option>
                                    <option value="facebook">Facebook</option>
                                    <option value="instagram">Instagram</option>
                                    <option value="google">Google</option>
                                    <option value="directo">Directo</option>
                                </select>

                                @error('origencliente')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

                            </div>
                        </div>
                        <!-- /.card-body -->

                        <br>

                        <div class="row mt-3" id="cont-campos-compra">
                            <hr>
                            @livewire('marca-modelo')

                            {{-- Tipo --}}
                            <div class="col-sm-6 col-md-3">
                                <div class="ui_kit_select_search add_new_property mb20">
                                    <label class="form-label">Tipo</label>
                                    <select name="tipo" class="selectpicker @error('tipo') is-invalid @enderror"
                                        data-live-search="true" data-width="100%">
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
                            </div>
                            {{-- Precio estimado --}}
                            <div class="col-sm-6 col-md-3">
                                <div class="ui_kit_select_search add_new_property mb20">
                                    <label for="precioEstimado" class="form-label">Precio estimado</label>
                                    <input name="precioEstimado"
                                        class="form-control form_control @error('precioEstimado') is-invalid @enderror"
                                        type="number" min="0" placeholder="" value="{{ old('precioEstimado') }}">

                                    @error('precioEstimado')
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
                                <button type="submit" id="btnForm" class="botonAmarillo">Crear</button>
                                <a class="botonAzul" href="{{ route('clientes.index') }}"> Volver</a>
                            </div>
                        </div>
                </form>
            </div>
        </div>
    </div>
@stop

@section('css')
    @livewireStyles()
@stop

@section('js')
    @livewireScripts()
    @include('includes.btnForm')
    <script>
         $('#cont-campos-compra').hide();

         $('#estado').change(()=>{
            console.log($('#estado').val())

            if($('#estado').val() == 'compra'){
                $('#cont-campos-compra').show();
            } else {
                $('#cont-campos-compra').hide();
            }
        })
    </script>
@stop
