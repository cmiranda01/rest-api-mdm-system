<?php

namespace App\Http\Controllers;

use App\Models\Appointment;
use App\Models\Patient;
use Illuminate\Http\Request;

class AppointmentsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $end = $request->input('end');
        $start = $request->input('start');
        $appointments = Appointment::join('patients', 'appointments.ptno', '=', 'patients.ptno')
            ->whereBetween('appointment_date_and_time', [$start, $end])
            ->get(['appointments.appointment_date_and_time', 'patients.patientname']);
    
        return response()->json($appointments, 200);
    }

    public function importCsv(Request $request)
    {
        $rutaArchivo = $rutaArchivo = storage_path('app/csv/appointments.csv');

        $datos = array_map('str_getcsv', file($rutaArchivo));

        // Eliminar la primera fila del arreglo
        array_shift($datos);

        foreach ($datos as $fila) {
            $arr = explode(';', $fila[0]);
            $appointment = new Appointment;
            $appointment->ptno = $arr[0];
            $appointment->contact_no = $arr[1];
            $appointment->appointment_date_and_time = date('Y-m-d H:i:s', strtotime($arr[2]));
            $appointment->appointment_status = $arr[3];
            $appointment->duration_minutes = $arr[4];
            $appointment->doctor_physio_therapist = $arr[5];
            $appointment->save();
        }

        return response()->json(['mensaje' => 'Los datos se han importado correctamente.'], 200);
    }


}