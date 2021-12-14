@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">PANEL DE CONTROL DE REPORTES</h1>
@stop

@section('content')
    <div class="container">
        <div class="card">

            <!-- /.card-header -->
            <div class="card-body">
                <form method="POST" action="{{ route('filtrarRangoFecha') }}" novalidate>
                    @csrf
                    
                        <div class="row">
                            {{-- inicio --}}
                            <div class="form-group col-4">
                                <label for="inicio">Fecha inicio</label>
                                <input type="date" autofocus name="inicio"
                                    class="form-control @error('inicio') is-invalid @enderror"
                                    placeholder="Ingrese un inicio" value="{{ old('inicio') }}">
                                @error('inicio')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>

                            {{-- fin --}}
                            <div class="form-group  col-4">
                                <label for="fin">Fecha fin</label>
                                <input type="date" min="0" name="fin"
                                    class="form-control @error('fin') is-invalid @enderror" value="">
                                @error('fin')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>

                            {{-- Empleado --}}
                            <div class="form-group col-4">
                                <label for="empleado_id">Empleada</label>

                                <select name="empleado_id" id=""
                                    class="form-control @error('empleado_id') is-invalid @enderror">
                                    <option value="">Seleccione</option>
                                    @foreach ($empleados as $empleado)
                                        <option value="{{ $empleado->id }}">
                                            {{ $empleado->nombre }}
                                        </option>
                                    @endforeach
                                </select>

                                @error('empleado_id')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

                            </div>
                        </div>

                    
                    <!-- /.card-body -->

                    <div >
                        <button type="submit" class="btn btn-success"><i
                                class="far fa-check-square mr-1"></i>Filtrar</button>

                    </div>
                </form>

            </div>
        
        </div>
    </div>
@stop

@section('css')

@stop

@section('js')
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>


    @if (session('Creado'))
        <script>
            Swal.fire(
                'Caja abierta!',
                '{{ session('Creado') }}',
                'success'
            )
        </script>
    @endif

    @if (session('Actualizado'))
        <script>
            Swal.fire(
                'Caja cerrada!',
                '{{ session('Actualizado') }}',
                'success'
            )
        </script>
    @endif

    @if (session('Borrado'))
        <script>
            Swal.fire(
                'Borrado!',
                '{{ session('Borrado') }}',
                'success'
            )
        </script>
    @endif


    @if (session('Error'))
        <script>
            Swal.fire({
                title: 'Error!',
                text: '{{ session('Error') }}',
                icon: 'error',
                confirmButtonText: 'OK'
            })
        </script>
    @endif


    <script>
        $('.formulario-eliminar').submit(function(e) {
            e.preventDefault();

            Swal.fire({
                title: 'Estas seguro?',
                text: "No podras revertir esto.",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Si, Borrar!',
                cancelButtonText: 'Cancelar'
            }).then((result) => {
                if (result.isConfirmed) {
                    /* Swal.fire(
                        'Deleted!',
                        'Your file has been deleted.',
                        'success'
                    ) */

                    this.submit();
                }

            })

        });
    </script>





@stop
