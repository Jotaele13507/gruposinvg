<!DOCTYPE html>
<?php include 'partials/head.php'; ?>
<!-- Header -->
<?php include 'partials/menu.php'; ?>
<!-- Menú de la parte superior -->
<!--===============================================================================================-->
<?php


$usuario = 'root';
$contraseña = '';
$host = 'localhost';
$base = 'g_inv';

try {
  $conexion = new PDO('mysql:host=' . $host . ';dbname=' . $base, $usuario, $contraseña);
} catch (PDOException $e) {
  print "¡Error!: " . $e->getMessage() . "<br/>";
  die();
}
?>
<!--===============================================================================================-->
<html lang="en">

<head>
  <!--===============================================================================================-->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!--    Datatables  -->
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" />
  <!--===============================================================================================-->
</head>

<br><br>

<body>
  <br><br><br><br><br><br><br><br>

  <center>
    <h4>
      <FONT COLOR="black">
        Cantidad De Grupos Registrados en la Plataforma
    </h4>
  </center>


  <div class="container">

    <?php
    $mysqli = new mysqli("localhost", "root", "", "g_inv");

    $query = $mysqli->prepare("SELECT * FROM gruposinv");
    $query->execute();
    $query->store_result();

    $rows = $query->num_rows;

    echo  'Total de Grupos :' . $rows;

    // Return 4 for example
    ?>
    <br><br>
    <div class="container">
      <table id="example" class="display" style="width:100%">
        <thead>
          <tr><br>
            <th>
              <center>
                <FONT COLOR="black">Coordinador</FONT>
                </td>
              </center>
            <th>
              <center>
                <FONT COLOR="black">Nombre del grupo</FONT>
                </td>
              </center>


          </tr>
          <!--	<th> <a href="nuevo_miembro1.php"> <button type="button" class="btn btn-info">UPGRADE</button> </a> </th> -->
        </thead>
        <!--===============================================================================================-->
        <?php

        include "conexion.php";
        $sql = $conexion->query(
          "SELECT *FROM gruposinv gr
          INNER JOIN usuarios us on gr.id_usuario = us.id
          "
        );

        while ($fila = $sql->fetch_array()) {


          echo '
              <tr>
              <td>' . $fila['nombre'] . '</td>
              <td>' . $fila['nombre_grupo'] . '</td>
              </tr>
              </center>';
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
    });
  </script>
  </script>


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