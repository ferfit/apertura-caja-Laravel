<?php

namespace App\Http\Livewire;

use App\Models\Auto;
use App\Models\File;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Livewire\Component;

class CreateFile extends Component
{
    protected $listeners = ['render', 'refreshFiles']; // "1","2"

    public $auto;



    public function render()
    {
        return view('livewire.create-file');
    }


    public function deleteFile(File $file)
    {
        //Eliminar el archivo del servidor
        Storage::delete($file->url);
        //eliminamos el registro de la bd
        $file->delete();

        $this->emit('render'); // "1"

    }


    public function refreshFiles()
    { //"2" , este metodo se ejecuta desde dropzone
        $this->emit('render');
    }

    public function handleSortOrderChange($sortOrder, $previousSortOrder, $name, $from, $to)
    {

        foreach ($sortOrder as $key => $value) {
            $file = File::find($value);
            $file->orden = $key;
            //$file->orden = $key;
            $file->save();
        }

        $this->emit('render');

        //dd($sortOrder);
        // $sortOrder = new keys order
        // $previousSortOrder = keys previous order
        // $name = drop target name
        // $from = name of drop target from where the dragged/sorted item came from
        // $to = name of drop target to where the dragged/sorted item was placed
    }
}
