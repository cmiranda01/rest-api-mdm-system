<?php

namespace App\Http\Controllers;

use App\Models\Patient;
use Illuminate\Http\Request;

class PatientsController extends Controller
{

    public function importCsv(Request $request)
    {
        $rutaArchivo = $rutaArchivo = storage_path('app/csv/patients.csv');

        $datos = array_map('str_getcsv', file($rutaArchivo));

        // Eliminar la primera fila del arreglo
        array_shift($datos);

        foreach ($datos as $fila) {
            $arr = explode(';', $fila[0]);

            $patient = new Patient;
            $patient->type = $arr[0];
            $patient->ptno = $arr[1];
            $patient->salutation = $arr[2];
            $patient->patientname = $arr[3];
            $patient->gender = $arr[4];
            $patient->nationality = $arr[5];
            $patient->region = $arr[6];
            $patient->registereddate = date('Y-m-d H:i:s', strtotime($arr[7]));
            $patient->edditdate = date('Y-m-d H:i:s', strtotime($arr[8]));
            $patient->save();
        }

        return response()->json(['mensaje' => 'Los datos se han importado correctamente.'], 200);
    }

}