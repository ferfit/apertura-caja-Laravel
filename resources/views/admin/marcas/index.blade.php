@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    {{-- <h1 class="text-center">PANEL DE CONTROL DE MARCAS</h1> --}}
@stop

@section('content')
    {{-- <div class="container">
        <div class="card">
            <div class="card-header d-flex justify-content-start align-items-center">
                <h3 class="card-title mr-3">Modelos</h3>
                <a href="{{ route('marcas.create') }}" class="btn btn-success mr-2"><i
                        class="far fa-plus-square mr-1"></i>Crear</a>

            </div>
            <!-- /.card-header -->
            <div class="card-body">


             @livewire('marcas-index')



            </div>
        </div>
    </div> --}}
    <div class="row p-5 contenedor-principal ">
        <div class="col-md-6 cont-table">
            <table class="table bg-white">
                <thead class="">
                    <tr>
                        <th>#</th>
                        <th>Descripción</th>
                        <th>Stock</th>
                        <th>Precio uni</th>
                        <th>Precio alt</th>
                        <th>Cant</th>
                        <th>Subtotal</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                    <tr>
                        <td>#</td>
                        <td>descripcion del producto</td>
                        <td>10</td>
                        <td>8000</td>
                        <td>10000</td>
                        <td>100000</td>
                        <td>1000000</td>
                    </tr>
                </tbody>
            </table>

            <div class="cont-btns">
                <div class="row">
                    <div class="col-md-3 cont-btn bg-success p-4 text-center">pay</div>
                    <div class="col-md-3 cont-btn bg-danger p-4 text-center">pay</div>
                    <div class="col-md-3 cont-btn bg-primary p-4 text-center">pay</div>
                    <div class="col-md-3 cont-btn bg-success p-4 text-center">pay</div>
                </div>
            </div>

        </div>

        <div class="col-md-6 cont-images">
            <form class="form-inline">
                <div class="form-group">
                    <label class="sr-only" for="exampleInputAmount"></label>
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-search" aria-hidden="true"></i></div>
                        <div class="input-group-addon"><i class="fa fa-barcode" aria-hidden="true"></i></div>
                        <input type="text" class="form-control" id="exampleInputAmount" placeholder="">
                    </div>
                </div>
            </form>

            <div class="row images">
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                        <p>$10000</p>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                        <p>$10000</p>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                        <p>$10000</p>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                        <p>$10000</p>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                        <p>$10000</p>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                        <p>$10000</p>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                        <p>$10000</p>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                        <p>$10000</p>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                        <p>$10000</p>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                    </div>
                </div>
                <div class="col-md-2 cont-image">
                    <img src="images/img.jpg" alt="">
                    <div class="cont-text">
                        <h3>furnitures</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>

@stop

@section('css')
<link rel="stylesheet" href="{{asset('css/whatsapp.css')}}">
    @livewireStyles

@stop

@section('js')
    @livewireScripts
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>


    @if (session('Creado'))
        <script>
            Swal.fire(
                'Creado!',
                '{{ session('Creado') }}',
                'success'
            )
        </script>
    @endif

    @if (session('Actualizado'))
        <script>
            Swal.fire(
                'Actualizado!',
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
