<?php

namespace App\Http\Livewire;
use Livewire\WithPagination;

use App\Models\Marca;

use Livewire\Component;

class MarcasIndex extends Component
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

        $modelos = Marca::all();

        return view('livewire.marcas-index', [
            'marcas' => Marca::where('nombre', 'like', '%'.$this->search.'%')->paginate(20)

        ]);
    }
}
