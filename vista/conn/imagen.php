<!-- Consulta de Logo del grupo de investigación -->
<?php
include "conexion.php"; //Conexión a la base de datos

$id_usuariol     = $_SESSION["usuario"]['id']; // Guardamos el id del usuario en sesión dentro de una variable
$querylogo         = "SELECT dir_logo FROM logogi where id_usuariol ='" . $id_usuariol . "'"; //Realizamos el query a la base de datos
// comienza un bucle que leerá todos los registros existentes
$logo             = mysqli_query($conexion, $querylogo); // Ejecuta el Query
while ($fil = mysqli_fetch_assoc($logo)) { // $fil es un array con todos los campos existentes en la tabla
    $imagen = '<img class="img mb-4" src="' . $fil["dir_logo"] .  '" alt="image"  width="400" heigth="400" >'; // Guardamos la dirección del logo dentro de una variable
} ?>