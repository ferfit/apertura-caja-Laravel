<?php

namespace App\Http\Controllers;

use App\Models\Gasto;
use App\Models\Auto;


use Illuminate\Http\Request;

class GastoController extends Controller
{
    public function index (Auto $auto){

        $gastos = $auto->gastos;
        $total = $gastos->sum('monto');

        return view('admin.autos.gastos.index',compact('gastos','auto','total'));
    }


    public function create(Auto $auto){
        return view('admin.autos.gastos.create',compact('auto'));
    }

    public function store(Request $request, Gasto $gasto,Auto $auto){
        //Validación
        $data = request()->validate([
            'nombre' => 'required',
            'monto' => 'required',
        ]);

        //Actualización
        try {
            Gasto::create([
                'nombre' => $data['nombre'],
                'monto' => $data['monto'],
                'auto_id'=>$auto->id
            ]);

            return redirect()->route('gastos.index',$auto)->with('Creado','Gasto creado exitosamente.');
        } catch (\Throwable $th) {
            return redirect()->route('gastos.index',$auto)->with('Error','Hubo un problema al crear el gasto, vuelva a intentarlo.');
        }
    }

    public function edit(Gasto $gasto,Auto $auto){
        return view('admin.autos.gastos.edit',compact('gasto','auto'));
    }

    public function update(Request $request, Gasto $gasto,Auto $auto){

        //Validación
        $data = request()->validate([
            'nombre' => 'required',
            'monto' => 'required',
        ]);

        //Actualización
        try {
            $gasto->nombre = $data['nombre'];
            $gasto->monto = $data['monto'];
            $gasto->auto_id = $auto->id;
            $gasto->save();

            return redirect()->route('gastos.index',$auto)->with('Actualizado','Gasto actualizado exitosamente.');
        } catch (\Throwable $th) {
            return redirect()->route('gastos.index',$auto)->with('Error','Hubo un problema al actualizar el gasto, vuelva a intentarlo.');
        }
    }

    public function destroy(Gasto $gasto,$auto)
    {
        $gasto = Gasto::find($gasto);

        try {
            $gasto->first()->delete();

            return redirect()->route('gastos.index',$auto)->with('Borrado','El gasto se borró exitosamente.');

        } catch (\Throwable $th) {

            return redirect()->route('users.index')->with('Error','Hubo un problema, vuelva a intentarlo.');
        }
    }

    public function crearauto(){
        return "hola";
    }

}
