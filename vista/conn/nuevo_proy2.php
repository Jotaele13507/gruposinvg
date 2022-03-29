<?php
error_reporting(E_ALL ^ E_NOTICE);
session_start();

// variable declaration
$tit_inv = "";
$obj_inv = "";
$id_usuariot = "";
$estado = "";

// Sentencia para conectarse a la base de datos
$db = mysqli_connect('localhost', 'root', '', 'g_inv');
//echo  "Se conecto";

//Extraer el Id de grupo por el Id de usuario
$ret = mysqli_query($db, "select gruposinv.* from gruposinv join usuarios on usuarios.id=gruposinv.id_usuario");
while ($row = mysqli_fetch_array($ret)) // $row es un array con todos los campos existentes en la tabla
{
	$id_grupo = $row['id_grupo']; //guardamos el id del gruopo en una variable
}

// FORMULARIO DE REGISTRO DE USUARIO
if (isset($_POST['reg_proy'])) {
	// RECIBE TODOS LOS VALORES INGRESADOS EN EL FORMULARIO DE REGISTRO
	$tit_inv = mysqli_real_escape_string($db, $_POST['tit_inv']);
	$obj_inv = mysqli_real_escape_string($db, $_POST['obj_inv']);
	$id_usuariot = $_SESSION["usuario"]['id'];
	$estado = mysqli_real_escape_string($db, $_POST['estado']);

	$query = "INSERT INTO proyegi (id_usuariot,id_grupo,tit_inv,obj_inv,estado)
					  VALUES('$id_usuariot','$id_grupo','$tit_inv','$obj_inv','$estado')";
	mysqli_query($db, $query); // realizamos el query para que se conecte a la base de datos, e ingrese la información
	//echo " se guardo";
	header('location: proyectos.php');
}
