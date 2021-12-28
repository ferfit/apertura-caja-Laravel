@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">USUARIOS</h1>
@stop

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Actualizar usuario</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form method="POST" action="{{ route('users.update',$user) }}" novalidate>
                @csrf
                @method('PUT')
                <div class="card-body">
                    <div class="form-group">
                        <label for="name">Nombre</label>
                        <input type="text" autofocus name="name" class="form-control @error('name') is-invalid @enderror"
                            id="name" placeholder="Ingrese un nombre" value="{{ $user->name }}">
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
                            id="email" placeholder="Ingrese un nombre" value="{{ $user->email }}">
                        @error('email')
                            <span class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                    <button type="submit" class="btn btn-success"><i class="far fa-check-square mr-1"></i>Actualizar</button>
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
