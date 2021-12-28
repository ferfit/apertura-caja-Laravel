<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;


class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $usuarios = User::paginate(10);
        return view('admin.users.index',compact('usuarios'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.users.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //Validación
        $data = request()->validate([
            'name' => 'required',
            'email' => 'required',
            'password' => 'required'
        ]);



        try {
            //Crear empleado
            User::create([
                'name' => $data['name'],
                'email' => $data['email'],
                'password'=>hash::make($data['password'])    
            ]);

            //Redirección
            return redirect()->route('users.index')->with('Creado', 'Usuario creado exitosamente.');

        } catch (\Throwable $th) {
            return redirect()->route('users.index')->with('Error', 'Hubo un problema al crear el usuario, vuelta a intentarlo.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit( User $user)
    {
        return view('admin.users.edit',compact('user'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        //Validación
        $data = request()->validate([
            'name' => 'required',
            'email' => 'required'
        ]);



        try {
            //Actualiza usuario
            $user->name = $data['name'];
            $user->email = $data['email'];
            $user->save();

            //Redirección
            return redirect()->route('users.index')->with('Actualizado', 'El usuario se actualizó exitosamente.');

        } catch (\Throwable $th) {
            return redirect()->route('users.index')->with('Error', 'Hubo un problema al actualizar el usuario, vuelta a intentarlo.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        $user = User::find($user);

        try {
            $user->first()->delete();
    
            return redirect()->route('users.index')->with('Borrado','El usuario se borró exitosamente.');
            
        } catch (\Throwable $th) {
            
            return redirect()->route('users.index')->with('Error','Hubo un problema, vuelva a intentarlo.');
        }
    }

    public function password(User $user){
        return view('admin.users.password',compact('user'));
        
    }

    public function updatePassword(Request $request, User $user)
    {
        //Validación
        $data = request()->validate([
            'password' => 'required'
        ]);



        try {
            //Actualiza usuario
            $user->password = hash::make( $data['password'])   ;
            $user->save();

            //Redirección
            return redirect()->route('users.index')->with('Actualizado', 'La contraseña se actualizó exitosamente.');

        } catch (\Throwable $th) {
            return redirect()->route('users.index')->with('Error', 'Hubo un problema al actualizar la contraseña, vuelta a intentarlo.');
        }
    }
}
