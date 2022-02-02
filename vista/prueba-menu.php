<!-- Estas Librerias ya deberían estar en tu proyecto, ignóralas -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">


<!-- Este es tu código -->
<ul class="nav nav-pills metismenu" id="side-menu">
  <li class="nav-header centertxt">
    <div class="dropdown profile-element">

      <a data-toggle="dropdown" class="dropdown-toggle" href="#">
        <strong class="font-bold"><?php echo $_COOKIE["usuario"]; ?></strong>
      </a>
    </div>
  </li>
  <li>
    <a href="index.php"><i class="fa fa-th-large"></i> Inicio</a>
  </li>

  <li class="dropdown">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user"></i> Clientes <span class="caret"></span></a>
    <ul class="dropdown-menu nav nav-second-level">
      <li><a href="clientes.php">Todos los clientes</a></li>
      <li><a href="nuevo-cliente.php">Nuevo cliente</a></li>
    </ul>
  </li>


  <li>
    <a href="usuarios.php"><i class="fa fa-user"></i> <i class="nav-label"> Usuarios</i></a>
  </li>
  <li>

    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-line-chart"></i> Reportes <span class="caret"></span></a>
      <ul class="dropdown-menu nav nav-second-level">
        <li><a href="reportes.php">Reporte general</a></li>
        <li><a href="reportes-detallado.php">Reporte detallado</a></li>
      </ul>
    </li>


    <li>
      <a href="contacto.php"><i class="fa fa-book"></i> <i class="nav-label">Contacto</i></a>
    </li>
    <li>
      <a href="inc/logout.php"><i class="fa fa-sign-out"></i> <i class="nav-label">Cerrar sesi&oacute;n</i></a>
    </li>
</ul>
