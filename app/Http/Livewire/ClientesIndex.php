<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Cliente;
use Livewire\WithPagination;


class ClientesIndex extends Component
{
    use WithPagination;

    protected $paginationTheme = 'bootstrap';

    public function render()
    {

        $clientes = Cliente::all();
        return view('livewire.clientes-index',compact('clientes'));
    }
}
