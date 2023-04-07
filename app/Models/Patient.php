<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Patient extends Model
{
    use HasFactory;
    protected $fillable = [
        'type', 'ptno', 'salutation', 'patientname', 'gender', 'nationality', 'region', 'registereddate', 'edditdate',
    ];
    public function appointment()
    {
        return $this->hasOne(Appointment::class);
    }

}
