<?php  

include("conexion.php");


$nombre=$_REQUEST['nombre'];
$correo=$_REQUEST['correo'];
$telefono=$_REQUEST['telefono'];
$direccion=$_REQUEST['direccion'];
$dni=$_REQUEST['dd'];
$nacimiento=$_REQUEST['nn'];
$curso=$_REQUEST['curso'];
$turno=$_REQUEST['turno'];



$inset="INSERT INTO alumnos(nombre,correo,telefono,direccion,DNI,nacimiento,curso,turno) values('$nombre','$correo','$telefono','$direccion','$dni','$nacimiento','$curso','$turno')";
$con->query($inset);
?>