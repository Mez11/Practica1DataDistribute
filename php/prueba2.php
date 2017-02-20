<?php
	require_once 'DAOInventario.php';
	$dao = new DAOInventario();
	//El ID NO DEBE SER OBTENIDO por medios de programacion (en el caso de ID nuevo)
	//$idNuevo = $dao->obtieneIdNuevo();
	$nombre = $_POST["nombre"];
	$precio = $_POST["precio"];
	//No estoy seguro de como funcionen los errores en PHP
	//Pero si PHP es un poco estricto, el codigo de abajo va a tronar
	//Dado que no se define en ningun lado a idImagen, idCategoria, precioVenta...
	//aunque si es como JS, entonces no tronaria
	//No estoy seguro si esta bien o esta mal.
	$producto = new Inventario($idInventario,$idImagen,$idCategoria,$nombre,$anio,$numPiezas,$precioCompra,$precioVenta);
	$dao->insertar($inventario);


	echo "<script>alert('Producto agregado');window.location.href='formularioProducto.php';</script>";
?>