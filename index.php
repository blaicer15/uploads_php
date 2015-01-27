<?php
	session_start();
	include "conect.php";
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="">
</head>
<body>
	<form action="subir.php" method="post">
		<div class="form-group">
				<b><label>Tipo de Cartas</label></b><br>
					<select name="name" id="name" class="form-control">
						<option value="" selected="selected">Seleccione un tipo</option>
						<?php
							$query="Select nombre FROM proyectos ORDER BY id";
							$res=pg_query($query);
							while($tabla=pg_fetch_assoc($res)){
								$nombre = $tabla['nombre'];
								$_SESSION['user'] = $nombre; 
								$user = $_SESSION['user'];
								echo "<option value=\"$nombre\" selected=\"select\">$nombre</option>";
							}
						?>
						<!--<option value="" selected="selected">Seleccione un tipo</option>
			            <option value="Residencias">Carta de Residencias</option>
			            <option value="Servicio">Carta de Servicios</option>
			            <option value="Creditos">Carta de Creditos</option>-->
			        </select>
		        <p class="help-block"></p>
			</div>
			<button class="submit">Enviar</button>
	</form>
</body>
</html>