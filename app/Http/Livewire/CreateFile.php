<?php

namespace App\Http\Livewire;

use App\Models\Auto;
use App\Models\File;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Livewire\Component;

class CreateFile extends Component
{
    protected $listeners=['render','refreshFiles'];// "1","2"

    public $auto;

    public function render()
    {
        return view('livewire.create-file');
    }


    public function deleteFile(File $file){
        //Eliminar el archivo del servidor
        Storage::delete($file->url);
        //eliminamos el registro de la bd
        $file->delete();

        $this->emit('render'); // "1"

    }


    public function refreshFiles(){//"2" , este metodo se ejecuta desde dropzone
        $this->emit('render');
    }

}
