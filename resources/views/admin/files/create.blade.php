@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">IMÁGENES</h1>
@stop

@section('content')

<div class="container">
<form action="{{route('files.store',$auto)}}" class="dropzone shadow" id="my-great-dropzone" method="POST"></form>
</div>

@livewire('create-file',['auto' => $auto])

<div class="container mt-3">
      <a href="{{ route('autos.index') }}" class="ml-1 btn btn-secondary"> <i
                class="fas fa-undo-alt mr-1"></i>Volver</a>

</div>

@stop

@section('css')
@livewireStyles
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.9.2/dropzone.min.css" integrity="sha512-jU/7UFiaW5UBGODEopEqnbIAHOI8fO6T99m7Tsmqs2gkdujByJfkCbbfPSN4Wlqlb9TGnsuC0YgUgWkRBK7B9A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
@stop

@section('js')
@livewireScripts
<script src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.9.2/min/dropzone.min.js" integrity="sha512-VQQXLthlZQO00P+uEu4mJ4G4OAgqTtKG1hri56kQY1DtdLeIqhKUp9W/lllDDu3uN3SnUNawpW7lBda8+dSi7w==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script>
    Dropzone.options.myGreatDropzone = { // camelized version of the `id`
      headers:{
        'X-CSRF-TOKEN' : "{{csrf_token()}}"
      },
      dictDefaultMessage: "Seleccionar imagenes",
      acceptedFiles : "image/*",
      complete:function(file){
        this.removeFile(file);
      },
      queuecomplete:function(){
          Livewire.emit('refreshFiles')
      },
      paramName: "file", // The name that will be used to transfer the file
      maxFilesize: 3, // MB
      accept: function(file, done) {
        if (file.name == "justinbieber.jpg") {
          done("Naha, you don't.");
        }
        else { done(); }
      }
    };
  </script>

@stop
