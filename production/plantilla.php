<?php
include 'controladores/controlador-config.php';
////INICIO DE SESSION
if(isset($_POST['tipo_accion']) && $_POST['tipo_accion']=="ingresar"){

  $password = $_POST['password'];
  $usuario = $_POST['usuario'];

global $con;

  $sql = "SELECT * FROM usuarios";
  $result = $con->query($sql);

  if ($result->num_rows > 0) {
      // output data of each row
      while($row = $result->fetch_assoc()) {
          if($row['password'] == $password && $row['usuario'] == $usuario){

            session_start();
            $_SESSION["user"]=$row['usuario'];
            $_SESSION["email"]=$row['email'];
            $_SESSION["nombre"]=$row['nombre'];
            $_SESSION["apellidos"]=$row['apellido'];

            header ("Location: plantilla.php");
          }
      }
  } else {
    echo '<script> alert("El nombre de usuario ha sido tomado!"); </script>';
    echo "<script> location.href = '../index.php'; </script>";
  }
}

?>




<?php include 'vistas/header.php'; ?>
          <?php include 'vistas/menu.php'; ?>
<?php include 'vistas/barra-navegation.php'; ?>


        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>SmartFinances</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Buscar...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Buscar</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Bienvenido</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      Tablero ...
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->


        <?php include 'vistas/footer.php';?>
