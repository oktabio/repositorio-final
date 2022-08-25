<?php 

/*require 'database.php';

$message = '';

  if (!empty($_POST['email']) && !empty($_POST['contraseña'])) {
    $sql = "INSERT INTO usuarios (email, contraseña) VALUES (:email, :contraseña)";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':email', $_POST['email']);
    $contraseña = password_hash($_POST['contraseña'], PASSWORD_BCRYPT);
    $stmt->bindParam(':contraseña', $contraseña);

    if ($stmt->execute()) {
      $message = 'Successfully created new user';
    } else {
      $message = 'Sorry there must have been an issue creating your account';
    }
  }
*/
 ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>registro</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>
<body>
	<h1>registrate</h1>
		<span>o <a href="login.php">ingresa</a></span>
<form action="registro.php" method="post">

	<input type="text" name="nombre" placeholder="ingrese su nombre">
	<input type="text" name="apellido" placeholder="indrese su Apellido">
	<input type="email" name="correo" placeholder="ingrese su correo electronico">
	<input type="password" name="contraseña" placeholder="cree su contraseña">
	<input type="password" name="confirma_contraseña" placeholder="confirme su contraseña">
	<label for=""></label>
	<input type="text" name="turno" placeholder="turno">
	<input type="submit" value="send">

</form>

</body>
</html>