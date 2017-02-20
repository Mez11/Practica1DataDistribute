<?php
	require_once 'DAOInventario.php';
	$dao = new DAOInventario();
	$idNuevo = $dao->obtieneIdNuevo();
	$nombre = $_POST["nombre"];
	$precio = $_POST["precio"];
	$producto = new Inventario($idInventario,$idImagen,$idCategoria,$nombre,$anio,$numPiezas,$precioCompra,$precioVenta);
	$dao->insertar($inventario);


	echo "<script>alert('Producto agregado');window.location.href='formularioProducto.php';</script>";
?>
