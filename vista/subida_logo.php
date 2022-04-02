<?php

error_reporting(E_ALL ^ E_NOTICE);
session_start();

$id_usuariol = "";

$directorio = "logo_grupos/";

$archivo = $directorio . basename($_FILES["file"]["name"]);

$tipoArchivo = strtolower(pathinfo($archivo, PATHINFO_EXTENSION));

// valida que es imagen
$checarSiImagen = getimagesize($_FILES["file"]["tmp_name"]);

if ($checarSiImagen != false) {

    //validando tamaño del archivo
    $size = $_FILES["file"]["size"];

    if ($size > 500000) {
        include "scripts/error_tamano_logo.php";
        //echo "El archivo tiene que ser menor a 500kb";
    } else {

        //validar tipo de imagen
        if ($tipoArchivo == "jpg" || $tipoArchivo == "jpeg" || $tipoArchivo == "png") {
            // se validó el archivo correctamente
            if (move_uploaded_file($_FILES["file"]["tmp_name"], $archivo)) {
                //Aquí debe ir un query para guardar $archivo en la base de datos
                $db = mysqli_connect('localhost', 'root', '', 'g_inv');
                $id_usuariol = $_SESSION["usuario"]['id'];
                //Extraer el Id de grupo por el Id de usuario
                $ret = mysqli_query($db, "select gruposinv.* from gruposinv join usuarios on usuarios.id=gruposinv.id_usuario");
                while ($row = mysqli_fetch_array($ret)) // $row es un array con todos los campos existentes en la tabla
                {
                    $id_grupo = $row['id_grupo']; //guardamos el id del gruopo en una variable
                }
                $query = "INSERT INTO logogi (id_usuariol,id_grupo,dir_logo) 
					  VALUES('$id_usuariol','$id_grupo','$archivo')";
                mysqli_query($db, $query);
                $quero = mysqli_query($db, "update gruposinv set dir_logo='$archivo' where id_usuario='$id_usuariol'");

                //El archivo se subió correctamente;
                include "scripts/subido_exitosamente.php";
            } else {
                include "scripts/error_subida_logo.php";
                //echo "Hubo un error en la subida del archivo";
            }
        } else {
            include "scripts/error_jpg.php";
            //echo "Solo se admiten archivos jpg/jpeg";
        }
    }
} else {
    include "scripts/error_tipo_archivo.php";
    //echo "El archivo no es una imagen";
}
