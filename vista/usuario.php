<?php include 'partials/head.php';?>
<?php include 'partials/menu.php';?>
<?php
if (isset($_SESSION["usuario"])) {
    if ($_SESSION["usuario"]["privilegio"] == 1) {
        header("location:admin.php");
    }
} else {
    header("location:login.php");
}

?>

<!DOCTYPE html>
<head>

  <title>Vicerrectoría de Investigación & Postgrado</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="images/icons/favicon.ico">
  <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
	<link rel="stylesheet" href="ecss/style2.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">



  </head>
  <body>

	<div class="container-contact100" style="background-image: url('img/blanco.png');">
    <br><br><br><br><br>
		<div class="container">
      <br><br><br><br><br>
			<div class="starter-template">
				<br>
				<br>
				<br>
				<div class="jumbotron">
					<div class="container text-center">
						<h1><strong><FONT COLOR="black">Bienvenido</strong></FONT><FONT COLOR="black"> <?php echo $_SESSION["usuario"]["nombre"]; ?></FONT></h1>
						<p>Rol | <span class="label label-info"><?php echo $_SESSION["usuario"]["privilegio"] == 1 ? 'Coordinador' : 'Miembro'; ?></span></p>
            <p>
              <a href="proy_ejecu.php" class="btn btn-primary btn-lg">Lista de Proyecto</font></a><br>
                </p>
                <p>
                  <a href="lista.php" class="btn btn-primary btn-lg">Grupos a los que pertenece</font></a><br>
                    </p>
					</div>
				</div>
			</div>
		</div><!-- /.container -->
	</div>
</html>
<?php include 'partials/footer.php';?>
