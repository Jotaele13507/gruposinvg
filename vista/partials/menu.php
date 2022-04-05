<nav class="navbar navbar-inverse navbar-fixed-top">

  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <br>
      <raight><img src="img/portfolio/up.jpg" width="150" height="150" /></raight>
      <br><br></a>
    </div>

    <!-- <a class="navbar-brand" href="#">Bienvenido</a> -->

    <div id="navbar" background="black" class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <strong class="font-bold"><?php if (!isset($_SESSION["usuario"])) { ?></strong>
        <br><br><br>
        <li><a href="login.php">Iniciar Sesion</a></li>
        <li><a href="registro.php">Registrarse</a></li>
        <li><a href="consulta_proyecto.php">Consulta de proyecto</a></li>
        <li><a href="catalogo.php">Catálogo</a></li>
        <strong class="font-bold"><?php } else {
                                  ?></strong>
        <strong class="font-bold"><?php if ($_SESSION["usuario"]["privilegio"] == 1) { ?></strong>
        <!-- <li><a href="index.php">Inicio</a></li> -->
        <li><a href="mi_grupo.php"><br><br>Mi Grupo</a></li>
        <li><a href="adm_miembros.php"><br><br>Adm. Miembros</a></li>
        <li><a href="admin.php"><br><br>Coordinador</a></li>
        <li><a href="catalogo.php"><br><br>Catálogo</a></li>
        <li><a href="consulta_proyecto.php"><br><br>Consulta de proyecto</a></li>
        <li><a href="cerrar-sesion.php"><br><br>Cerrar Sesión</a></li>
        <strong class="font-bold"><?php } else { ?></strong>
        <br><br>
        <li><a href="usuario.php">Miembro</a></li>
        <li><a href="https://vicinvestigacion.up.ac.pa/">Vicerrectoría de Investigación y postgrado</a></li>
        <li><a href="catalogo.php">Catálogo</a></li>
        <li><a href="consulta_proyecto.php">Consulta de proyecto</a></li>
        <li><a href="cerrar-sesion.php">Cerrar Sesión</a></li>
        <!--<li><a href="usuario.php">Miembro </a></li><br>
            <li><a  href="cerrar-sesion.php">Vicerrectoría de Investigación y postgrado </a></li>
            <li><a href="cerrar-sesion.php">Cerrar Sesión</a></li>-->
    <?php }
                                  } ?>
      </ul>
    </div>

    <!--/.nav-collapse -->
  </div>
</nav>