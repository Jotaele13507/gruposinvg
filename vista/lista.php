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
	<center><h4><FONT COLOR="black"><b> Grupo al que pertenece</b><br><br></FONT>
<?php
  include "conexion.php";  // Using database connection file here
 $cedula = mysqli_query($conexion, "SELECT cedula From usuarios WHERE id={$_SESSION['usuario']['id']}");  // Use select query here
//$query ="SELECT cedula From usuarios WHERE id=11";
// $cedula = mysqli_query($conexion, $query);
  echo 'El miembro: '.$cedula2 = $_SESSION['usuario']['nombre'];
  echo ' con cédula: '.$cedula2 = $_SESSION['usuario']['cedula'];
  ?>

  <br>
    <div class="container">
  <table id="example" class="display" style="width:100%">
              <thead>
                <tr><br>
                  <th><center><FONT COLOR="black">Coordinador</FONT></td></center>
                    <th><center><FONT COLOR="black">Nombre del grupo</FONT></td></center>


          				</tr>
                  </thead>
						<!-- Consulta de información de los miembros del grupo de investigación -->
          <?php
          include "conexion.php";
          $sql = $conexion->query("SELECT *FROM miembroginv gr
            INNER JOIN usuarios us on gr.id_usuario = us.id
            INNER JOIN gruposinv gi on gr.id_grupo = gi.id_grupo"
            );

            while ($fila=$sql->fetch_array())
              {
                if($fila['cedula_int']==$_SESSION['usuario']['cedula'])
              {

                echo'
                <tr>
                <td>'.$fila['nombre'].'</td>
                <td>'.$fila['nombre_grupo'].'</td>
                </tr>
                </center>';
              }

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
