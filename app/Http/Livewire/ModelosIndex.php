<?php

namespace App\Http\Livewire;
use Livewire\WithPagination;
use App\Models\Modelo;

use Livewire\Component;

class ModelosIndex extends Component
{
    use WithPagination;

    public $search = '';

    protected $paginationTheme = 'bootstrap';

    //Resetea pagina cuando se escribe en el input search
    public function updatingSearch()
    {
        $this->resetPage();
    }

    public function render()
    {

        $modelos = Modelo::all();

        return view('livewire.modelos-index', [
            'modelos' => Modelo::where('nombre', 'like', '%'.$this->search.'%')->paginate(20)

        ]);
    }
}
