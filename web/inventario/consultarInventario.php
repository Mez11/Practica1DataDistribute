<?php
	require_once '../db/dao/DAOInventario.php';
?>
<html>
<head>
</head>
<body>

	<?php
	
		//en el method del formulario (POST) se definien que los subsecuentes parametros
		//se enviaran por POST.
		echo "<form action='actualiza.php' method='POST'>";
	
		//por GET (mi_pagina.php?mi_parametro=valor)
		$idInventario = $_GET["idP"];
		$dao = new DAOInventario();
		$inventario = $dao->consultarUnInventario( $idInventario );
		echo "<p>Id inventario:</p><input type='hidden' name='idInventario' value='".$inventario->getIdInventario()."' />";
		echo "<p>Id catalogo:</p><input type='text' name='idCatalogo' value='".$inventario->getIdCategoria()."' />";
		echo "<p>Id imagen:</p><input type='text' name='idImagen' value='".$inventario->getIdImagen()."' />";
		echo "<p>Nombre:</p><input type='text' name='nombre' value='".$inventario->getNombre()."' />";
		echo "<p>Anio:</p><input type='text' name='anio' value=".$inventario->getAnio()." />";
		echo "<p>NumeroDePiezas:</p><input type='text' name='numPiezas' value=".$inventario->getNumPiezas()." />";
		echo "<p>PrecioCompra:</p><input type='text' name='precioCompra' value=".$inventario->getPrecioCompra()." />";
		echo "<p>precioVenta:</p><input type='text' name='precioVenta' value=".$inventario->getPrecioVenta()." />";
		echo "<br><br>";
	?>
	
		<input type="submit" name="Editar" value="Editar"/>
		<input type="submit" name="Cancelar" value="Eliminar"/>
	</form>
</body>
</html>

<?php

?>
