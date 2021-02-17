<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rol extends Model
{
    use HasFactory;

    public $timestamps = false;
    protected $table = 'roles';
    protected $primaryKey = '_pk_roles';
    protected $fillable = [
        'z_timestamp_create', 
        'z_timestamp_mod', 
        'name', 
        'description', 
        'fechadesde', 
        'fechahasta', 
        'horadesde',
        'horahasta',
        'imagen',
        'activado',
    ];
}
