<?php

namespace App\Http\Controllers;
use App\Models\Cliente;
use App\Models\Auto;
use App\Models\User;


use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function dashboard()
    {
        $clientes = Cliente::all();
        $autos = Auto::all();
        $usuarios = User::all();
        return view('admin/dashboard',compact('clientes','autos','usuarios'));
    }
}
