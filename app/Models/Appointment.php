<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Appointment extends Model
{
    use HasFactory;
    protected $fillable = [
        'ptno', 'contact_no', 'appointment_date_and_time', 'appointment_status', 'duration_minutes', 'doctor_physio_therapist',
    ];
    public function patient()
    {
        return $this->belongsTo(Patient::class,'ptno');
    }
}
