<?php
error_reporting(E_ALL ^ E_NOTICE);
session_start();

include "conexion.php";
$ret = mysqli_query($conexion, "select gruposinv.* from gruposinv join usuarios on usuarios.id=gruposinv.id_usuario");
while ($row = mysqli_fetch_array($ret)) // $row es un array con todos los campos existentes en la tabla
{
    $id_grupo = $row['id_grupo']; //guardamos el id del gruopo en una variable
}
$id_usuariof = $_SESSION["usuario"]['id'];
//echo "id de usuario $id_usuariof";

$fotogrupo = $_FILES["file"]["name"];

$dir = "foto_grupos/$id_grupo";
//echo "Direccion de la imagen  / id del grupo = $dir";
if (!is_dir($dir)) {
    mkdir("foto_grupos/" . $id_grupo);
}

$tipoArchivo = strtolower(pathinfo($fotogrupo, PATHINFO_EXTENSION));

// valida que es imagen
$checarSiImagen = getimagesize($_FILES["file"]["tmp_name"]);

if ($checarSiImagen != false) {

    //validando tamaño del archivo
    $size = $_FILES["file"]["size"];

    if ($size > 15000000) {
        include "scripts/error_tamano_foto.php";
        //echo "El archivo tiene que ser menor a 1.5 mb";
    } else {
        //validar tipo de imagen
        if ($tipoArchivo == "jpg" || $tipoArchivo == "jpeg" || $tipoArchivo == "png") {
            //Se validó que la extensión del archivo sean jpg, jepg y png.
            if (move_uploaded_file($_FILES["file"]["tmp_name"], "foto_grupos/$id_grupo/" . $_FILES["file"]["name"])) {
                $query = "INSERT INTO fotogrupo (id_usuariof,id_grupo,dir_foto) VALUES('$id_usuariof','$id_grupo','$fotogrupo')";
                $quero = mysqli_query($conexion, "update gruposinv set dir_fotogrupo='$fotogrupo' where id_usuario='$id_usuariof'");
                mysqli_query($conexion, $query);
                //El archivo se subió correctamente;
                include "scripts/subido_exitosamente.php";
            } else {
                include "scripts/error_subida_foto.php";
                //echo "Hubo un error en la subida del archivo";
            }
        } else {
            include "scripts/error_jpg_foto.php";
            //echo "Solo se admiten archivos jpg, jpeg o png";
        }
    }
} else {
    include "scripts/error_tipo_archivo_foto.php";
    //echo "El archivo no es una imagen";
}
