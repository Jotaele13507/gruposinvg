<!DOCTYPE html>
<?php include 'partials/head.php'; ?>
<!-- Header -->
<?php include 'partials/menu.php'; ?>
<!-- Menú de la parte superior -->

<!--===============================================================================================-->

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
  <div class="product-info text-left">
    <center>
      <h3 class="name">Catálogo De Grupos Registrados en la Plataforma</h3>
    </center>
  </div><!-- /.product-info -->

  <div class="container">
    <div class="row">
      <?php
      include 'conexion.php';
      $ret = mysqli_query($conexion, "select * from gruposinv");
      $num = mysqli_num_rows($ret);
      if ($num > 0) {
        while ($row = mysqli_fetch_assoc($ret)) {
          $logogru = $row['dir_logo'] ?>
          <div class="col-sm-4 col-md-4 ">
            <div class="products">
              <div class="product">
                <div class="product-image">
                  <div class="image">
                    <?php if (empty($logogru)) { ?>
                      <img class="img mb-4" src="img/logogrupo.png" alt="" width="300" heigth="400">
                    <?php } else { ?>
                      <img class="img mb-4" src="<?php echo ($row['dir_logo']) ?>" alt="" width="200" heigth="200">
                    <?php } ?>
                  </div><!-- /.image -->
                </div><!-- /.product-image -->
                <div class="product-info text-left">
                  <h4 class="name"><?php echo htmlentities($row['nombre_grupo']); ?></h4>
                  <div class="description"></div>
                </div><!-- /.product-info -->
                <div class="cart clearfix animate-effect">
                  <div class="action">
                    <ul class="list-unstyled">
                      <li class="add-cart-button btn-group">
                        <a href="catalogoview.php?gid=<?php echo htmlentities($row['id_grupo']); ?>">
                          <button class="btn btn-primary" type="button">Ver</button></a>
                      </li>
                    </ul>
                  </div><!-- /.action -->
                </div><!-- /.cart -->
              </div>
            </div>
          </div>
        <?php }
      } else { ?>

        <div class="col-sm-6 col-md-4 wow fadeInUp">
          <h3>No se encontraron grupos</h3>
        </div>

      <?php } ?>
    </div><!-- /.row -->
  </div><!-- /.category-product -->

  <script src="https://code.jquery.com/jquery-3.3.1.js"></script>


  <!--    Datatables-->
  <script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

  <script>
    $(document).ready(function() {
      $(' #example').DataTable();
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