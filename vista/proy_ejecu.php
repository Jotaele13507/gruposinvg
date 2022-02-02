<?php include 'partials/head.php'; ?> <!-- Header -->
<?php include 'partials/menu.php'; ?> <!-- Menú de la parte superior -->

<!-- Validación de que existe un usuario en sesión -->
<!--===============================================================================================-->
<?php
if (isset($_SESSION["usuario"])) {
    if ($_SESSION["usuario"]["privilegio"] == 1) {
        header("location:proy_ejecu.php");
    }
} else {
    header("location:login.php");
}?>
<?php


$usuario='root';
$contraseña='';
$host='localhost';
$base='g_inv';

try {
   		$conexion = new PDO('mysql:host='.$host.';dbname='.$base, $usuario, $contraseña);
	}
	catch (PDOException $e)
	{
	    print "¡Error!: " . $e->getMessage() . "<br/>";
	    die();
	}
?>


<head>
	<!--===============================================================================================-->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!--    Datatables  -->
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css"/>

  <title>Vicerrectoría de Investigación y Postgrado</title>
	<!--===============================================================================================-->
</head>
<body>
  <br><br><br><br><br><br><br><br><br><br>
	<center><h4><FONT COLOR="black">Lista de Proyectos</h4></center>
    <div class="container">
  <table id="example" class="display" style="width:100%">
              <thead>
                <tr>
                    <th> Id Coordinador  </td>
          					<th>Nombre </td>
          					<th>Correo </td>
                    <th>Investigación </td>
                    <th>Estado </td>
          				</tr>
                  </thead>
						<!-- Consulta de información de los miembros del grupo de investigación -->
          <?php


            $query="SELECT Us.id, Us.nombre, Us.email,
                     Pro.tit_inv, Pro.estado
                FROM usuarios Us
                INNER JOIN proyegi Pro ON Us.id = Pro.id_usuariot";

            $consulta=$conexion->query($query);
            while ($fila=$consulta->fetch(PDO::FETCH_ASSOC))
              {
                echo'
                <tr>
                <td>'.$fila['id'].'</td>
                <td>'.$fila['nombre'].'</td>
                <td>'.$fila['email'].'</td>
                <td>'.$fila['tit_inv'].'</td>
                <td>'.$fila['estado'].'</td>
                </tr>
                ';
              }
            ?>
					</table>
				</div>
			</form>
		</div>

	</div>

  <script src="https://code.jquery.com/jquery-3.3.1.js"></script>


  <!--    Datatables-->
  <script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

  <script>
  $(document).ready(function() {
      $('#example').DataTable();
  } );
  </script></script>

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
