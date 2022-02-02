<?php

include '../datos/UsuarioDao.php';

class UsuarioControlador
{

    public static function login($usuario, $password)
    {
        $obj_usuario = new Usuario();
        $obj_usuario->setUsuario($usuario);
        $obj_usuario->setPassword($password);

        return UsuarioDao::login($obj_usuario);
    }

    public static function getUsuario($usuario, $password)
    {
        $obj_usuario = new Usuario();
        $obj_usuario->setUsuario($usuario);
        $obj_usuario->setPassword($password);

        return UsuarioDao::getUsuario($obj_usuario);
    }


    public static function registrar($nombre, $email, $usuario, $cedula, $password, $privilegio)
    {
        $obj_usuario = new Usuario();
        $obj_usuario->setNombre($nombre);
          $obj_usuario->setEmail($email);
        $obj_usuario->setUsuario($usuario);
        $obj_usuario->setCedula($cedula);
  $obj_usuario->setPassword($password);

        $obj_usuario->setPrivilegio($privilegio);


        return UsuarioDao::registrar($obj_usuario);
    }

}
