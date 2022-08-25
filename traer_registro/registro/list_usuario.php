<?php 


 include('../../home/registro/Proyecto-main/Registro/conexion.php');


 ?>
 <!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Lista de Resgistro</title>
	<link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>


	<div class="CONTENEDOR">
	<?php 

	require('../../home/inicio 2.0/header.php')

	 ?>

	
	<section id="container">
		<h1>Lista de Usuarios</h1>
		<a href="../../home/registro/Proyecto-main/Registro/grt.html" class="href">crear usuario</a>
		<table> 
			<tr>

				<th>ID</th>
				<th>Nombre</th>
				<th>Correo</th>
				<th>curso</th>
				<th>turno</th>
				


			</tr>

		<?php 

			$query= mysqli_query( $con,"SELECT a.id, a.nombre, a.correo, a.curso, t.turno FROM `alumnos` a INNER JOIN turno t ON a.turno = t.idturnos");

			$result = mysqli_num_rows($query);
			if ($result > 0) {

				while ($data= mysqli_fetch_array($query)) {
					
				
				?>		 
			<tr>
				<td><?php echo $data["id"]; ?></td>
				<td><?php echo $data["nombre"]; ?></td>
				<td><?php echo $data["correo"]; ?></td>
				<td><?php echo $data["curso"]; ?></td>
				<td><?php echo $data["turno"]; ?></td>



			</tr>

		<?php 
			 
				}
				 
			}


		 ?>	
				
		</table>
	</section>
	</div>
</body>
</html>

