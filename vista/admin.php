<?php include 'partials/head.php'; ?>
<!-- Header -->
<?php include 'partials/menu.php'; ?>
<!-- Menú de la parte superior -->
<!-- Validación de que existe un usuario en sesión -->
<?php
if (isset($_SESSION["usuario"])) {
	if ($_SESSION["usuario"]["privilegio"] == 2) {
		header("location:usuario.php");
	}
} else {
	header("location:login.php");
}
?>
<!--===============================================================================================-->
<!DOCTYPE html>

<head>
	<link rel="icon" href="images/icons/favicon.ico">
	<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
	<link rel="stylesheet" href="ecss/style2.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<div class="container-contact100" style="background-image: url('img/blanco.png');">
	<br><br><br><br><br><br><br>
	<div class="container">
		<br><br><br><br><br><br><br>
		<div class="starter-template">

			<div class="jumbotron">

				<div class="container text-center">

					<h1><strong>
							<FONT COLOR="black">Bienvenido
						</strong></FONT>
						<FONT COLOR="black"> <?php echo $_SESSION["usuario"]["nombre"]; ?></FONT>
					</h1>
					<p>
						<FONT COLOR="black">Rol | <span class="label label-info"><?php echo $_SESSION["usuario"]["privilegio"] == 1 ? 'Coordinador' : 'Miembro'; ?></span>
					</p>
					<p>
						<a href="reg_grupo.php" class="btn btn-primary btn-lg">Registro de Grupo</a>
						<a href="proyectos.php" class="btn btn-primary btn-lg">Proyectos </a>
						<a href="cargar_logo.php" class="btn btn-primary btn-lg">Cargar Logo</a>
						<a href="cargar_fotogrupo.php" class="btn btn-primary btn-lg">Cargar Foto de Grupo</a>
					</p>
				</div>
			</div>
		</div>
	</div><!-- /.container -->
</div>

</html>
<?php include 'partials/footer.php'; ?>