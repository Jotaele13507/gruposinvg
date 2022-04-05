<!DOCTYPE html>
<?php include 'partials/head.php'; ?>
<!-- Header -->
<?php include 'partials/menu.php'; ?>
<!-- Menú de la parte superior -->
<!-- Cargamos el action -->
<?php
if (isset($_SESSION["usuario"])) {
	if ($_SESSION["usuario"]["privilegio"] == 2) {
		header("location:reg_grupo.php");
	}
} else {
	header("location:login.php");
}
?>
<!--===============================================================================================-->

<!-- Validación de que existe un grupo de investigación registrado -->
<?php
include "conexion.php"; //Conexión a la base de datos
$id_usuario_grupo	= $_SESSION["usuario"]['id']; // Guardamos el id del usuario en sesión dentro de una variable
$consulta_existe 	= "SELECT * FROM gruposinv where id_usuario = '" . $id_usuario_grupo . "'"; //Realizamos el query a la base de datos
$resultado_consulta = mysqli_query($conexion, $consulta_existe); // Ejecuta el Query
$number_of_rows		= mysqli_num_rows($resultado_consulta); // Guardamos el resultado de nuestra consulta en una variable

if ($number_of_rows == 1) { // Comparamos el resultado de nuestra consulta.
	//echo "Ya existe un grupo";
	include "scripts/error_mas_grupo.php";
} else {
}
?>
<!--===============================================================================================-->

<!-- Insertar Registro de Grupo a la Base de Datos -->
<?php

error_reporting(E_ALL ^ E_NOTICE);
session_start();

// Sentencia para conectarse a la base de datos
include "conexion.php";

if (isset($_POST['submit'])) {

	$unidad_acad = $_POST['unidad_acad'];
	$nombre_grupo = $_POST['nombre_grupo'];
	$nombre_coor = $_POST['nombre_coor'];
	$acronimo = $_POST['acronimo'];
	$fecha_creacion = $_POST['fecha_creacion'];
	$obj_grupo = $_POST['obj_grupo'];
	$id_usuario = $_SESSION["usuario"]['id'];

	//Query para insertar
	$sql = mysqli_query($conexion, "INSERT INTO gruposinv(id_usuario,unidad_acad,nombre_grupo,acronimo,fecha_creacion,obj_grupo) VALUES ('$id_usuario','$unidad_acad','$nombre_grupo','$acronimo','$fecha_creacion','$obj_grupo')");
	header('location: adm_miembros.php');
}
?>


<!--===============================================================================================-->

<html lang="en">

<head>
	<title>REGISTRO DE GRUPO DE INVESTIGACIÓN</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
	<link rel="stylesheet" href="ecss/style2.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<!--===============================================================================================-->
</head>

<br>

<body>
	<div class="container-contact100" style="background-image: url('img/verde.jpg');">
		<br><br><br>
		<div class="wrap-contact100">
			<br><br><br>
			<form class="contact100-form validate-form" method="post" enctype="multipart/form-data">
				<span class="contact100-form-title">
					REGISTRO DE GRUPO DE INVESTIGACIÓN
				</span>

				<div class="wrap-input100">
					<span class="label-input100">Unidad Académica</span>
					<input class="input100" type="text" name="unidad_acad" required>
				</div>

				<div class="wrap-input100">
					<span class="label-input100">Nombre del Grupo</span>
					<input class="input100" type="text" name="nombre_grupo" required>
				</div>

				<div class="wrap-input100 rs1-wrap-input100 ">
					<span class="label-input100">Acrónimo</span>
					<input class="input100" type="text" name="acronimo" required>
				</div>

				<div class="wrap-input100 rs1-wrap-input100 validate-input">
					<span class="label-input100">Año de Creación</span>
					<input class="input100" type="text" name="fecha_creacion" required>
				</div>

				<div class="wrap-input100 validate-input">
					<span class="label-input100">Objetivos de Investigación</span>
					<textarea class="input100" name="obj_grupo" required></textarea>
				</div>

				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button class="contact100-form-btn" type="submit" class="btn" name="submit">
							REGISTRAR
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<div id="dropDownSelect1"></div>
	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
		window.dataLayer = window.dataLayer || [];

		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-23581568-13');
	</script>

</body>

</html>