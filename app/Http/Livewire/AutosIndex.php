<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Auto;
use Livewire\WithPagination;

class AutosIndex extends Component
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

        $autos = Auto::all();
        //return view('livewire.clientes-index',compact('clientes'));

        return view('livewire.autos-index', [
            //'clientes' => Cliente::paginate(3),
            'autos' => Auto::where('modelo', 'like', '%'.$this->search.'%')->paginate(20),

        ]);
    }
}
