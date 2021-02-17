<?php

namespace App\Http\Controllers;

use Validator, Http;
use App\Models\Usede;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class UsedeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $usede = Usede::all();
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
            'usuario_id' => 'required|integer',
            'sede_id' => 'required|integer',
            'fk_ubicacion' => 'required',
            'usuariosede_activo' => 'required|integer',
            'usuariosede_eliminado' => 'required|integer',
            'usuariosede_fechareg' => 'required|date',
            'usuario_precio' => 'required|numeric',
        ];

        $validator=Validator::make($request->all(),$rules);

        if($validator->fails()):
            return response()->json($validator->messages(), Response::HTTP_BAD_REQUEST);
        else:
            $created = Usede::create($request->all());
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
        $usede = Usede::find($id);
        if($usede):
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
            'usuario_id' => 'required|integer',
            'sede_id' => 'required|integer',
            'fk_ubicacion' => 'required',
            'usuariosede_activo' => 'required|integer',
            'usuariosede_eliminado' => 'required|integer',
            'usuariosede_fechareg' => 'required|date',
            'usuario_precio' => 'required|numeric',
        ];

        $validator=Validator::make($request->all(),$rules);

        if($validator->fails()):
            return response()->json($validator->messages(), Response::HTTP_BAD_REQUEST);
        else:
            $usede = Usede::find($id);
            if($usede):
                if($usede->fill($request->all())->save()):
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
        $usede = Usede::find($id);
        if($usede):
            if($usede->delete()):
                return response()->json("Eliminado correctamente", 200);
            else:
                return response()->json(Response::HTTP_BAD_REQUEST);
            endif;
        else:
            return response()->json("Registro no encontrado", 400);
        endif;
    }
}