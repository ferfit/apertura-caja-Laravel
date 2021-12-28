@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">USUARIOS</h1>
@stop

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Crear usuario</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form method="POST" action="{{ route('users.store') }}" novalidate>
                @csrf
                <div class="card-body">
                    <div class="form-group">
                        <label for="name">Nombre</label>
                        <input type="text" autofocus name="name" class="form-control @error('name') is-invalid @enderror"
                            id="name" placeholder="Ingrese un nombre" value="{{ old('name') }}">
                        @error('name')
                            <span class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                {{-- Email --}}
                <div class="card-body">
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" autofocus email="email" name="email" class="form-control @error('email') is-invalid @enderror"
                            id="email" placeholder="Ingrese un nombre" value="{{ old('email') }}">
                        @error('email')
                            <span class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                {{-- contraseña --}}
                <div class="card-body">
                    <div class="form-group">
                        <label for="password">Contraseña</label>
                        <input type="password" autofocus password="password" name="password" class="form-control @error('password') is-invalid @enderror"
                            id="password" placeholder="Ingrese una contraseña" value="{{ old('password') }}">
                        @error('password')
                            <span class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                    <button type="submit" class="btn btn-success"><i class="far fa-check-square mr-1"></i>Crear</button>
                    <a href="{{ route('users.index') }}" class="ml-1 btn btn-secondary"> <i
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
