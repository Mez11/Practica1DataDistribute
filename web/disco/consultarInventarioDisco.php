<?php
	require_once '../db/dao/DAOInventarioDisco.php';
?>
<html>
<head>
</head>
<body>

	<?php
		
		echo "<form action='actualizaDisco.php' method='POST'>";
	
		//por GET (mi_pagina.php?mi_parametro=valor)
		$idInventario = $_GET["idP"];
		$dao = new DAOInventarioDisco();
		$disco = $dao->consultarUnInventarioDisco( $idInventario );
		echo "<p>Id inventario:</p><input type='hidden' name='idInventario' value='".$disco->getIdInventario()."' />";
		echo "<p>Numero de canciones:</p><input type='text' name='numCanciones' value='".$disco->getnumCanciones()."' />";
		echo "<p>Interprete:</p><input type='text' name='interprete' value='".$disco->getInterprete()."' />";
		echo "<br><br>";
	?>
	
		<input type="submit" name="Editar" value="Editar"/>
		<input type="submit" name="Cancelar" value="Eliminar"/>
	</form>
</body>
</html>

<?php

?>
