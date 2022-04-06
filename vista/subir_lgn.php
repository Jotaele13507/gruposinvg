<?php
error_reporting(E_ALL ^ E_NOTICE);
session_start();

include "conexion.php";
$ret = mysqli_query($conexion, "select gruposinv.* from gruposinv join usuarios on usuarios.id=gruposinv.id_usuario");
while ($row = mysqli_fetch_array($ret)) // $row es un array con todos los campos existentes en la tabla
{
    $id_grupo = $row['id_grupo']; //guardamos el id del gruopo en una variable
}
$id_usuariol = $_SESSION["usuario"]['id'];
//echo "id de usuario $id_usuariof";

$logogrupo = $_FILES["file"]["name"];

$dir = "logo_grupos/$id_grupo";
//echo "Direccion de la imagen  / id del grupo = $dir";
if (!is_dir($dir)) {
    mkdir("logo_grupos/" . $id_grupo);
}

$tipoArchivo = strtolower(pathinfo($logogrupo, PATHINFO_EXTENSION));

// valida que es imagen
$checarSiImagen = getimagesize($_FILES["file"]["tmp_name"]);

if ($checarSiImagen != false) {

    //validando tamaño del archivo
    $size = $_FILES["file"]["size"];

    if ($size > 15000000) {
        include "scripts/error_tamano_logo.php";
        //echo "El archivo tiene que ser menor a 1.5 mb";
    } else {
        //validar tipo de imagen
        if ($tipoArchivo == "jpg" || $tipoArchivo == "jpeg") {
            //Se validó que la extensión del archivo sean jpg, jepg y png.
            if (move_uploaded_file($_FILES["file"]["tmp_name"], "logo_grupos/$id_grupo/" . $_FILES["file"]["name"])) {
                $query = "INSERT INTO logogi (id_usuariol,id_grupo,dir_logo) VALUES('$id_usuariol','$id_grupo','$logogrupo')";
                $quero = mysqli_query($conexion, "update gruposinv set dir_logo='$logogrupo' where id_usuario='$id_usuariol'");
                mysqli_query($conexion, $query);
                //El archivo se subió correctamente;
                include "scripts/subido_exitosamente.php";
            } else {
                include "scripts/error_subida_logo.php";
                //echo "Hubo un error en la subida del archivo";
            }
        } else {
            include "scripts/error_jpg.php";
            //echo "Solo se admiten archivos jpg, jpeg o png";
        }
    }
} else {
    include "scripts/error_tipo_archivo.php";
    //echo "El archivo no es una imagen";
}
