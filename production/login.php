

<?php include 'controladores/controlador-config.php'; ?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>SmartFinances! | </title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="../vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>
<!--============================INICIAR SESSION===============================-->
      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form method="post" action="plantilla.php">
              <h1>SmartFinances</h1>
              <input type="hidden" name="tipo_accion" value="ingresar">
              <div>
                <input type="text" class="form-control" placeholder="Username" name="usuario" required="" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" name="password" required="" />
              </div>
              <div>
                <button class="btn btn-default submit" type="submit">Ingresar</button>
                <a class="reset_pass" href="#">Olvidaste tu contraseña?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Nuevo en el sitio?
                  <a href="#signup" class="to_register"> Crear cuenta </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> SmartFinances!</h1>
                  <p>©2019 Derechos reservados. SamrtFinances! Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>

<!--============================REGISTRO DE USUARIO===============================-->
        <div id="register" class="animate form registration_form">
          <section class="login_content">
            <form method="post" action="controladores/controlador-usuario.php">
              <h1>Crear cuenta</h1>
              <input type="hidden" class="form-control" value="registrar-usuario"  required=""  name="tipo_accion" />
              <div>
                <input type="text" class="form-control" placeholder="Nombre(s)" required="" name="nombre" required pattern="[A-Za-z \sáéíóú]+" title="Sólo letras permitidas"  />
              </div>
              <div>
                <input type="text" class="form-control" placeholder="Apellido(s)" required=""name="apellido"  pattern="[A-Za-z \sáéíóú]+" title="Sólo letras permitidas" />
              </div>
              <div>
                <input type="text" class="form-control" placeholder="Usuario" required="" name="usuario"/>
              </div>
              <div>
                <input type="email" class="form-control" placeholder="Email" required="" name="email" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Password" minlength="6" required="" title="Digite 6 o mas caracteres"  name="password"/>
              </div>
              <div>
                <button class="btn btn-default submit" type="submit">Registrar</button>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Eres miembro ?
                  <a href="#signin" class="to_register"> Inicia Sesion </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> SmartFinances!</h1>
                  <p>©2019 Derechos reservados. SamrtFinances! Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
    <script src="js/usuarios.js"></script>
    <!---Alertas lindas --->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  </body>
</html>
