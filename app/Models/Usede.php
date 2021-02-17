<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Usede extends Model
{
    use HasFactory;

    public $timestamps = false;
    protected $table = 'usuariosede';
    protected $primaryKey = 'usuariosede_id';
    protected $fillable = [
        'usuario_id', 
        'sede_id', 
        'fk_ubicacion', 
        'usuariosede_activo', 
        'usuariosede_eliminado', 
        'usuariosede_fechareg', 
        'usuario_precio',
    ];
}
