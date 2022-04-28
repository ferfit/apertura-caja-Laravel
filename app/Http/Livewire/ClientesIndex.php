<?php

namespace App\Http\Livewire;

use App\Models\Auto;
use Livewire\Component;
use App\Models\Cliente;
use Livewire\WithPagination;


class ClientesIndex extends Component
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

        $clientes = Cliente::all();
        //return view('livewire.clientes-index',compact('clientes'));

        $user= auth()->user()->id;

        return view('livewire.clientes-index', [
            'clientes' => Cliente::orderBy('id','DESC')->where('nota', 'like', '%'.$this->search.'%')
            ->where('estadocliente','Activado')
            ->where('user_id',$user)
            ->paginate(10)

        ]);
    }
}
