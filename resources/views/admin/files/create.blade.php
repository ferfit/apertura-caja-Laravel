@extends('layouts.dashboard')




@section('contenido')

<div class="row">

    <div class="col-lg-12">
        <div class="col-xl-8">
            <div class="col-lg-12 mb50">
                <div class="breadcrumb_content">
                    <h2 class="breadcrumb_title">Imágenes</h2>
                    <p>{{$auto->marca}} - {{$auto->modelo}}</p>
                </div>
            </div>
            <p class="btn btn-danger text-white">La imagén debe pesar menos de 500 kb, de lo contrario, no se cargará.</p>
        </div>

        <div class="new_property_form">
            <form action="{{route('files.store',$auto)}}" class="dropzone shadow" id="my-great-dropzone" method="POST"></form>
            @livewire('create-file',['auto' => $auto])

            <div class="col-lg-12 my-3">
                <!-- Nav tabs -->
                <div class="nav justify-content-start" role="tablist">
                    <a class="botonAzul" href="{{ route('autos.index') }}"> Volver</a>
                </div>
            </div>
        </div>


    </div>



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
      dictDefaultMessage: "Seleccionar imágenes",
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
