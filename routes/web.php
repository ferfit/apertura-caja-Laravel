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
use App\Http\Controllers\ModeloController;
use App\Http\Controllers\VersionController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\DatoController;
use App\Http\Controllers\GastoController;
use App\Http\Controllers\FileController;
use App\Http\Controllers\Controller;
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

Route::get('/', function () {
    return view('welcome');
});

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
Route::resource('clientes', ClienteController::class)->names('clientes');
/*
|--------------------------------------------------------------------------
| Autos
|--------------------------------------------------------------------------
*/
Route::resource('autos', AutoController::class)->names('autos');
/*
|--------------------------------------------------------------------------
| Modelos
|--------------------------------------------------------------------------
*/
Route::resource('modelos', ModeloController::class)->names('modelos');
/*
|--------------------------------------------------------------------------
| Versiones
|--------------------------------------------------------------------------
*/
Route::resource('versiones', VersionController::class)->names('versiones');
/*
|--------------------------------------------------------------------------
| Datos Generales
|--------------------------------------------------------------------------
*/
Route::resource('datos', DatoController::class)->names('datos');
/*
|--------------------------------------------------------------------------
| Users
|--------------------------------------------------------------------------
*/
Route::resource('users', UserController::class)->names('users');
Route::get('/users/password/{user}',  [UserController::class,'password'])->name('password');
Route::put('/users/updatePassword/{user}',  [UserController::class,'updatePassword'])->name('updatePassword');

/*
|--------------------------------------------------------------------------
| Reportes
|--------------------------------------------------------------------------
*/
//Route::get('/reportes', [ReporteController::class,'reportePorFecha'])->name('reporte');
//Route::post('/reportes-por-fecha', [ReporteController::class,'filtrarRangoFecha'])->name('filtrarRangoFecha');

Route::get('/pdf/{auto}',  [AutoController::class,'pdf'])->name('autoPdf');

/*
|--------------------------------------------------------------------------
| Gastos
|--------------------------------------------------------------------------
*/
Route::get('/gastos/{auto}', [GastoController::class,'index'])->name('gastos.index');
Route::get('/gastos/{gasto}/edit/{auto}', [GastoController::class,'edit'])->name('gastos.edit');
Route::put('/gastos/{gasto}/{auto}', [GastoController::class,'update'])->name('gastos.update');
Route::delete('/gastos/{gasto}/{auto}', [GastoController::class,'destroy'])->name('gastos.destroy');
Route::get('/crear/{auto}', [GastoController::class,'create'])->name('gastos.create');
Route::post('/gastos/{auto}', [GastoController::class,'store'])->name('gastos.store');
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

Route::get('/crear/{auto}/files', [FileController::class,'create'])->name('files.create');
Route::post('/files/{auto}', [FileController::class,'store'])->name('files.store');
/*
|--------------------------------------------------------------------------
| Vnetas
|--------------------------------------------------------------------------
*/
Route::resource('ventas', VentaController::class)->names('ventas');
/*

