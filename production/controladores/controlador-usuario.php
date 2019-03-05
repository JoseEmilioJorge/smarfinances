
<?php
include 'controlador-config.php';



//////////////////////////////REGISTRAR/////////////////////////////////////


if(isset($_POST['tipo_accion']) && $_POST['tipo_accion']=="registrar-usuario"){

$nombres = $_POST['nombre'];
$apellidos = $_POST['apellido'];
$usuario = $_POST['usuario'];
$email = $_POST['email'];
$password = $_POST['password'];

global $con;

////INSERTANDO LOS REGISTROS
if ($con->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO usuarios (nombre, apellido, usuario, email, password)
VALUES ('$nombres', '$apellidos', '$usuario','$email','$password')";

$buscarUsuario = "SELECT * FROM usuarios WHERE usuario = '$usuario' ";
$result = $con->query($buscarUsuario);
$count = mysqli_num_rows($result);

if ($count == 1) {

echo '<script> alert("El nombre de usuario ha sido tomado!"); </script>';
echo "<script> location.href = '../plantilla.php'; </script>";
}else{

if ($con->query($sql) === TRUE) {

    echo "Proceso exitoso!";
    session_start();
    $_SESSION["user"]=$usuario;
    $_SESSION["email"]=$email;
    $_SESSION["nombre"]=$nombres;
    $_SESSION["apellidos"]=$apellidos;

    header ("Location: production/plantilla.php");

} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$con->close();
}

}


?>
