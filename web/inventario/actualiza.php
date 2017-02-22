<?php
	require_once '../db/dao/DAOInventario.php';
	require_once '../db/dto/Inventario.php';
	$dao = new DAOInventario();
	$inventario = new Inventario(
		$_POST["idInventario"],
		$_POST["idImagen"],
		$_POST["idCatalogo"],
		$_POST["nombre"],
		$_POST["anio"],
		$_POST["numPiezas"],
		$_POST["anio"],
		$_POST["precioCompra"],
		$_POST["precioVenta"]
	);

	if (isset($_POST['Editar'])) {
		$dao->editar( $inventario );
		echo "<script>alert('Inventario editado');window.location.href='formularioInventario.php';</script>";
	}else{
		$dao->eliminarProducto( $inventario->getIdInventario( ) );
		echo "<script>alert('Inventario Eliminado');window.location.href='formularioInventario.php';</script>";
		
	}
?>
