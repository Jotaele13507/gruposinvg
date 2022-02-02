<!DOCTYPE html>
<?php include 'partials/head.php'; ?> <!-- Header -->


<!-- Validación de que existe un usuario en sesión -->
<?php
if (isset($_SESSION["usuario"])) {
    if ($_SESSION["usuario"]["privilegio"] == 2) {
        header("location:proyectos.php");
    }
} else {
    header("location:login.php");
}?>
<!--===============================================================================================-->

<html lang="en">
<head>
	<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
	<link rel="stylesheet" href="ecss/style2.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<!--===============================================================================================-->
</head>
<body>
	<div class="container-contact100" style="background-image: url('img/verde.jpg');">

      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
      <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
      <script src="js/jquery.min.js"></script>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.11.2/css/bootstrap-select.min.css'>
      <style>
      .navbar {
      	position: relative;
      	min-height: 50px;
      	margin-bottom: 5px;
      }
      </style>

      <script type="text/javascript">
              $(document).ready(function() {
                  $(".dropdown img.flag").addClass("flagvisibility");

                  $(".dropdown dt a").click(function() {
                      $(".dropdown dd ul").toggle();
                  });

                  $(".dropdown dd ul li a").click(function() {
                      var text = $(this).html();
                      $(".dropdown dt a span").html(text);
                      $(".dropdown dd ul").hide();
                      $("#result").html("Selected value is: " + getSelectedValue("sample"));
                  });

                  function getSelectedValue(id) {
                      return $("#" + id).find("dt a span.value").html();
                  }

                  $(document).bind('click', function(e) {
                      var $clicked = $(e.target);
                      if (! $clicked.parents().hasClass("dropdown"))
                          $(".dropdown dd ul").hide();
                  });


                  $("#flagSwitcher").click(function() {
                      $(".dropdown img.flag").toggleClass("flagvisibility");
                  });
              });
           </script>
       </head>
       <body>
         <div role="navigation" class="navbar navbar-inverse navbar-static-top">
           <div class="container">
             <div class="navbar-header">
               <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>

             <div class="navbar-collapse collapse">
               <ul class="nav navbar-nav">
               </ul>
             </div>
             <!--/.nav-collapse -->
           </div>
         </div>

         <div class="container">
           <div class="row">
             <hr style="margin-top:5px;margin-bottom: 5px;">
             <div class="content"> </div>
             <div class="panel panel-primary">
               <div class="panel-heading">
                 <h3 class="panel-title">Cargar Archivos</h3>
               </div>
               <div class="panel-body">
                 <div class="col-lg-6">
                   <form method="POST" action="cargar.php" enctype="multipart/form-data">
         <div class="form-group">
                       <label class="btn btn-primary" for="my-file-selector">
                         <input required="" type="file" name="file" id="exampleInputFile">
                       </label>

         </div>
                   <button class="btn btn-primary" type="submit">Cargar Archivos</button>
                   </form>
                 </div>
                 <div class="col-lg-6"> </div>
               </div>
             </div>

         <!--tabla-->
             <div class="panel panel-primary">
               <div class="panel-heading">
                 <h3 class="panel-title">Descargas Disponibles</h3>
               </div>
               <div class="panel-body">

         <table class="table">
           <thead>
             <tr>
               <th width="7%">#</th>
               <th width="70%">Nombre del Archivo</th>
               <th width="13%">Descargar</th>
               <th width="10%">Eliminar</th>
             </tr>
           </thead>
           <tbody>
         <?php
         $archivos = scandir("subidas");
         $num=0;
         for ($i=2; $i<count($archivos); $i++)
         {$num++;
         ?>
         <p>
          </p>

             <tr>
               <th scope="row"><?php echo $num;?></th>
               <td><?php echo $archivos[$i]; ?></td>
               <td><a title="Descargar Archivo" href="subidas/<?php echo $archivos[$i]; ?>" download="<?php echo $archivos[$i]; ?>" style="color: blue; font-size:18px;"> <span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span> </a></td>
               <td><a title="Eliminar Archivo" href="Eliminar.php?name=subidas/<?php echo $archivos[$i]; ?>" style="color: red; font-size:18px;" onclick="return confirm('Esta seguro de eliminar el archivo?');"> <span class="glyphicon glyphicon-trash" aria-hidden="true"></span> </a></td>
             </tr>
          <?php }?>

           </tbody>
         </table>
         </div>
         </div>
         <!-- Fin tabla-->
           </div>
         </div>
         <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.3/js/bootstrap-select.min.js"></script>

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
