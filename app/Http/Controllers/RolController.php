<?php

namespace App\Http\Controllers;

use Validator, Http;
use App\Models\Rol;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class RolController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $rol = Rol::all();
        return response()->json($especialidad);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $rules=[
            'z_timestamp_create' => 'required|date',
            'z_timestamp_mod' => 'required|date',
            'name' => 'required',
            'description' => 'required',
            'fechadesde' => 'required|date',
            'fechahasta' => 'required|date',
            'horadesde' => 'required|date_format:H:i:s',
            'horahasta' => 'required|date_format:H:i:s',
            'imagen' => 'required',
            'activado' => 'required|integer',
        ];

        $validator=Validator::make($request->all(),$rules);

        if($validator->fails()):
            return response()->json($validator->messages(), Response::HTTP_BAD_REQUEST);
        else:
            $created = Rol::create($request->all());
            if($created):
                return response()->json("Creado correctamente", 201);
            else:
                return response()->json('Error', 400);
            endif;
        endif;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $rol = Rol::find($id);
        if($rol):
            return response()->json($rol, 200);
        else:
            return response()->json("No encontrado", 400);
        endif;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $rules=[
            'z_timestamp_create' => 'required|date',
            'z_timestamp_mod' => 'required|date',
            'name' => 'required',
            'description' => 'required',
            'fechadesde' => 'required|date',
            'fechahasta' => 'required|date',
            'horadesde' => 'required|date_format:H:i:s',
            'horahasta' => 'required|date_format:H:i:s',
            'imagen' => 'required',
            'activado' => 'required|integer',
        ];

        $validator=Validator::make($request->all(),$rules);

        if($validator->fails()):
            return response()->json($validator->messages(), Response::HTTP_BAD_REQUEST);
        else:
            $rol = Rol::find($id);
            if($rol):
                if($rol->fill($request->all())->save()):
                    return response()->json("Actualizado correctamente", 200);
                else:
                    return response()->json(Response::HTTP_BAD_REQUEST);
                endif;
            else:
                return response()->json("Registro no encontrado", 400);
            endif;
        endif;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $rol = Rol::find($id);
        if($rol):
            if($rol->delete()):
                return response()->json("Eliminado correctamente", 200);
            else:
                return response()->json(Response::HTTP_BAD_REQUEST);
            endif;
        else:
            return response()->json("Registro no encontrado", 400);
        endif;
    }
}