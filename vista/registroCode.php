<?php

include '../controlador/UsuarioControlador.php';
include '../helps/helps.php';

session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST["txtNombre"]) && isset($_POST["txtEmail"]) && isset($_POST["txtCedula"])  && isset($_POST["txtUsuario"]) && isset($_POST["txtPassword"])) {

        $txtNombre     = validar_campo($_POST["txtNombre"]);
        $txtEmail      = validar_campo($_POST["txtEmail"]);
        $txtCedula   = validar_campo($_POST["txtCedula"]);
        $txtUsuario    = validar_campo($_POST["txtUsuario"]);
        $txtPassword   = validar_campo($_POST["txtPassword"]);
        $txtPrivilegio = 2;

        if (UsuarioControlador::registrar($txtNombre, $txtEmail, $txtUsuario, $txtCedula, $txtPassword, $txtPrivilegio)) {
            $usuario             = UsuarioControlador::getUsuario($txtUsuario, $txtPassword);
            $_SESSION["usuario"] = array(
                "id"         => $usuario->getId(),
                "nombre"     => $usuario->getNombre(),
                "usuario"    => $usuario->getUsuario(),
                "cedula"     => $usuario->getCedula(),
                "email"      => $usuario->getEmail(),
                "privilegio" => $usuario->getPrivilegio(),
            );

            header("location:admin.php");
        }

    }
} else {
    header("location:registro.php?error=1");
}
