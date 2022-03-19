<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\EmpleadoController;
use App\Http\Controllers\ServicioController;
use App\Http\Controllers\VentaController;
use App\Http\Controllers\CajaController;
use App\Http\Controllers\ReporteController;
use App\Http\Controllers\GastoController;
use App\Http\Controllers\Controller;


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
Route::resource('empleados', EmpleadoController::class)->middleware(['auth'])->names('empleados');
/*
|--------------------------------------------------------------------------
| Servicios
|--------------------------------------------------------------------------
*/
Route::resource('servicios', ServicioController::class)->middleware(['auth'])->names('servicios');
/*
|--------------------------------------------------------------------------
| Ventas
|--------------------------------------------------------------------------
*/
Route::resource('ventas', VentaController::class)->middleware(['auth'])->names('ventas');
/*
|--------------------------------------------------------------------------
| Caja
|--------------------------------------------------------------------------
*/
Route::resource('cajas', CajaController::class)->middleware(['auth'])->names('cajas');
/*
|--------------------------------------------------------------------------
| Reporte
|--------------------------------------------------------------------------
*/
Route::get('/reportes', [ReporteController::class,'reportePorFecha'])->middleware(['auth'])->name('reporte');
Route::post('/reportes-por-fecha', [ReporteController::class,'filtrarRangoFecha'])->middleware(['auth'])->name('filtrarRangoFecha');
/*
|--------------------------------------------------------------------------
| Gastos
|--------------------------------------------------------------------------
*/
Route::resource('gastos', GastoController::class)->middleware(['auth'])->names('gastos');
