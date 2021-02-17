<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Especialidad extends Model
{
    use HasFactory;

    public $timestamps = false;
    protected $table = 'especialidad';
    protected $primaryKey = 'especialidad_id';
    protected $fillable = [
        'especialidad_nombre', 
        'especialidad_codigoexterno', 
        'especialidad_img', 
        'especialidad_activo', 
        'especialidad_eliminado', 
        'especialidad_fechareg', 
        'especialidad_consede'
    ];
}
