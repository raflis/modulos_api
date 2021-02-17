<?php

namespace App\Http\Controllers;

use Validator, Http;
use App\Models\Usuario;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class UsuarioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $usuarios = Usuario::all();
        return response()->json($usuarios);
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
            'dni' => 'required',
            'correo' => 'required|email',
            'clave' => 'required',
            'nombre' => 'required',
            'apellido' => 'required',
            'celular' => 'required',
            'rol' => 'required',
        ];

        $validator=Validator::make($request->all(),$rules);

        if($validator->fails()):
            return response()->json($validator->messages(), Response::HTTP_BAD_REQUEST);
        else:
            $created = Usuario::create($request->all());
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
        $usuario = Usuario::find($id);
        if($usuario):
            return response()->json($usuario, 200);
        else:
            return response()->json("Usuario no encontrado", 400);
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
            'dni' => 'required',
            'correo' => 'required|email',
            'clave' => 'required',
            'nombre' => 'required',
            'apellido' => 'required',
            'celular' => 'required',
            'rol' => 'required',
        ];

        $validator=Validator::make($request->all(),$rules);

        if($validator->fails()):
            return response()->json($validator->messages(), Response::HTTP_BAD_REQUEST);
        else:
            $usuario = Usuario::find($id);
            if($usuario):
                if($usuario->fill($request->all())->save()):
                    return response()->json("Actualizado correctamente", 200);
                else:
                    return response()->json(Response::HTTP_BAD_REQUEST);
                endif;
            else:
                return response()->json("Usuario no encontrado", 400);
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
        $usuario = Usuario::find($id);
        if($usuario):
            if($usuario->delete()):
                return response()->json("Eliminado correctamente", 200);
            else:
                return response()->json(Response::HTTP_BAD_REQUEST);
            endif;
        else:
            return response()->json("Usuario no encontrado", 400);
        endif;
    }
}
