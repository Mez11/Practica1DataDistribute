<html>
<head>
</head>
<body>

	<?php
		echo "<form action='actualiza.php?idP=".$_GET["idP"]."' method='POST'>";
		require_once 'DAOInventario.php';
		$idInventario = $_GET["idP"];
		$idImagen = $_GET["idIm"];
		$idCategoria = $_GET["idCat"];
		$dao = new DAOProducto();
		$inventario = $dao->consultarUnInventario($idInventario,$idImagen,$idCategoria);
		echo "<p>Nombre:</p><input type='text' name='nombre' value=".$inventario->getNombre()." />";
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
