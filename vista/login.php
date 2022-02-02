<?php include 'partials/head.php';?>
<?php include 'partials/menu.php';?>
<!DOCTYPE html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!--    Datatables  -->
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css"/>

  <title>Vicerrectoría de Investigación y Postgrado</title>
</head>

<br>

      <br>
			<div class="starter-template">

				<div class="row">
					<div class="col-md-4 col-md-offset-4">


							<div class="panel-body">
								<form id="loginForm" action="validarCode.php" method="POST" role="form">
                  <br><br><br><br><br><br><br><br>
                  <center> <img src="img/pngegg.png" width="150" height="150"/></center>
									<center><legend>Iniciar sesión</legend></center>
									<div class="form-group">
										<label for="usuario">Usuario</label>
										<input type="text" name="txtUsuario" class="form-control" id="usuario" autofocus required placeholder="usuario">
									</div>
									<div class="form-group">
										<label for="password">Password</label>
										<input type="password" name="txtPassword" class="form-control" required id="password" placeholder="**********">
									</div>
									<button type="submit" class="btn btn-success">Ingresar</button>
								</form>
                <div class="col-12 forgot">
                    <a href="recordar.php">Recordar contraseña?</a>
                </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div><!-- /.container -->
	</div>
</html>
<?php include 'partials/footer.php';?>
