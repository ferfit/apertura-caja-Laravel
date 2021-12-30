<?php

namespace App\Http\Livewire;
use Livewire\WithPagination;
use App\Models\Version;
use Livewire\Component;

class VersionesIndex extends Component
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

        $versiones = Version::all();

        return view('livewire.versiones-index', [
            'versiones' => Version::where('nombre', 'like', '%'.$this->search.'%')->paginate(20)

        ]);
    }
}
