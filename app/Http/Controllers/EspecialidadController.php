<?php

namespace App\Http\Controllers;

use Validator, Http;
use App\Models\Especialidad;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class EspecialidadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $especialidad = Especialidad::all();
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
            'especialidad_nombre' => 'required',
            'especialidad_codigoexterno' => 'required',
            'especialidad_img' => 'required',
            'especialidad_activo' => 'required|integer',
            'especialidad_eliminado' => 'required|integer',
            'especialidad_fechareg' => 'required|date',
            'especialidad_consede' => 'required|integer',
        ];

        $validator=Validator::make($request->all(),$rules);

        if($validator->fails()):
            return response()->json($validator->messages(), Response::HTTP_BAD_REQUEST);
        else:
            $created = Especialidad::create($request->all());
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
        $especialidad = Especialidad::find($id);
        if($especialidad):
            return response()->json($especialidad, 200);
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
            'especialidad_nombre' => 'required',
            'especialidad_codigoexterno' => 'required',
            'especialidad_img' => 'required',
            'especialidad_activo' => 'required|integer',
            'especialidad_eliminado' => 'required|integer',
            'especialidad_fechareg' => 'required|date',
            'especialidad_consede' => 'required|integer',
        ];

        $validator=Validator::make($request->all(),$rules);

        if($validator->fails()):
            return response()->json($validator->messages(), Response::HTTP_BAD_REQUEST);
        else:
            $especialidad = Especialidad::find($id);
            if($especialidad):
                if($especialidad->fill($request->all())->save()):
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
        $especialidad = Especialidad::find($id);
        if($especialidad):
            if($especialidad->delete()):
                return response()->json("Eliminado correctamente", 200);
            else:
                return response()->json(Response::HTTP_BAD_REQUEST);
            endif;
        else:
            return response()->json("Registro no encontrado", 400);
        endif;
    }
}