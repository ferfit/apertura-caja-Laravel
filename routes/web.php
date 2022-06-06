<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\EmpleadoController;
use App\Http\Controllers\ServicioController;
use App\Http\Controllers\VentaController;
use App\Http\Controllers\CajaController;
use App\Http\Controllers\ReporteController;
use App\Http\Controllers\ClienteController;
use App\Http\Controllers\AutoController;
use App\Http\Controllers\CoincidenciaController;
use App\Http\Controllers\ModeloController;
use App\Http\Controllers\VersionController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\DatoController;
use App\Http\Controllers\GastoController;
use App\Http\Controllers\FileController;
use App\Http\Controllers\MarcaController;
use App\Http\Controllers\InicioController;
use App\Http\Controllers\Controller;

use App\Models\Coincidencia;
use Barryvdh\DomPDF\Facade as PDF;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [InicioController::class, 'index'] )->name('inicio');
Route::get('/lista-de-autos', [InicioController::class, 'buscador'] )->name('lista-de-autos');
Route::get('/contacto', [InicioController::class, 'contacto'] )->name('contacto');
Route::get('/lista-de-autos/auto/{auto}', [InicioController::class, 'verAuto'] )->name('ver-auto');

Route::get('/dashboard', [DashboardController::class,'dashboard'])->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';



/*
|--------------------------------------------------------------------------
| Empleados
|--------------------------------------------------------------------------
*/
//Route::resource('empleados', EmpleadoController::class)->names('empleados');
/*
|--------------------------------------------------------------------------
| Servicios
|--------------------------------------------------------------------------
*/
//Route::resource('servicios', ServicioController::class)->names('servicios');
/*
|--------------------------------------------------------------------------
| Ventas
|--------------------------------------------------------------------------
*/
//Route::resource('ventas', VentaController::class)->names('ventas');
/*
|--------------------------------------------------------------------------
| Cajas
|--------------------------------------------------------------------------
*/
//Route::resource('cajas', CajaController::class)->names('cajas');
/*
|--------------------------------------------------------------------------
| Clientes
|--------------------------------------------------------------------------
*/
Route::resource('clientes', ClienteController::class)->names('clientes')->middleware('auth');
/*
|--------------------------------------------------------------------------
| Autos
|--------------------------------------------------------------------------
*/
Route::resource('autos', AutoController::class)->names('autos')->middleware('auth');
/*
|--------------------------------------------------------------------------
| Modelos
|--------------------------------------------------------------------------
*/
Route::resource('modelos', ModeloController::class)->names('modelos')->middleware(['auth','soloadmin']);
/*
|--------------------------------------------------------------------------
| Versiones
|--------------------------------------------------------------------------
*/
Route::resource('versiones', VersionController::class)->names('versiones')->middleware(['auth','soloadmin']);
/*
|--------------------------------------------------------------------------
| Datos Generales
|--------------------------------------------------------------------------
*/
Route::resource('datos', DatoController::class)->names('datos')->middleware(['auth','soloadmin']);
/*
|--------------------------------------------------------------------------
| Users
|--------------------------------------------------------------------------
*/
Route::resource('users', UserController::class)->names('users')->middleware(['auth','soloadmin']);
Route::get('/users/password/{user}',  [UserController::class,'password'])->name('password')->middleware(['auth','soloadmin']);
Route::put('/users/updatePassword/{user}',  [UserController::class,'updatePassword'])->name('updatePassword')->middleware(['auth','soloadmin']);

/*
|--------------------------------------------------------------------------
| Reportes
|--------------------------------------------------------------------------
*/
//Route::get('/reportes', [ReporteController::class,'reportePorFecha'])->name('reporte');
//Route::post('/reportes-por-fecha', [ReporteController::class,'filtrarRangoFecha'])->name('filtrarRangoFecha');

Route::get('/pdf/{auto}',  [AutoController::class,'pdf'])->name('autoPdf')->middleware('auth');

/*
|--------------------------------------------------------------------------
| Gastos
|--------------------------------------------------------------------------
*/
Route::get('/gastos/{auto}', [GastoController::class,'index'])->name('gastos.index')->middleware('auth');
Route::get('/gastos/{gasto}/edit/{auto}', [GastoController::class,'edit'])->name('gastos.edit')->middleware('auth');
Route::put('/gastos/{gasto}/{auto}', [GastoController::class,'update'])->name('gastos.update')->middleware('auth');
Route::delete('/gastos/{gasto}/{auto}', [GastoController::class,'destroy'])->name('gastos.destroy')->middleware('auth');
Route::get('/crear/{auto}', [GastoController::class,'create'])->name('gastos.create')->middleware('auth');
Route::post('/gastos/{auto}', [GastoController::class,'store'])->name('gastos.store')->middleware('auth');
/*
|--------------------------------------------------------------------------
| Storage link
|--------------------------------------------------------------------------
*/
Route::get('/storage-link',function(){

    if(file_exists(public_path('storage'))){
        return 'el directorio ya existe';
    }

    app('files')->link(
        storage_path('app/public'), public_path('storage')
    );

    return 'directorio creado correctamente.';
});
/*
|--------------------------------------------------------------------------
| Files
|--------------------------------------------------------------------------
*/
//Route::resource('files', FileController::class)->names('files');

Route::get('/crear/{auto}/files', [FileController::class,'create'])->name('files.create')->middleware('auth');
Route::post('/files/{auto}', [FileController::class,'store'])->name('files.store')->middleware('auth');
/*
|--------------------------------------------------------------------------
| Ventas
|--------------------------------------------------------------------------
*/
Route::resource('ventas', VentaController::class)->names('ventas')->middleware(['auth','soloadmin']);
/*
/*
|--------------------------------------------------------------------------
| Marcas
|--------------------------------------------------------------------------
*/
Route::resource('marcas', MarcaController::class)->names('marcas')->middleware(['auth','soloadmin']);

Route::get('coincidencias',[CoincidenciaController::class,'index'])->name('coincidencias.index')->middleware(['auth','soloadmin']);
Route::get('coincidencias/{id}', [CoincidenciaController::class,'show'])->name('coincidencias.show')->middleware(['auth','soloadmin']);
Route::delete('coincidencias/{id}', [CoincidenciaController::class,'destroy'])->name('coincidencias.destroy')->middleware(['auth','soloadmin']);


