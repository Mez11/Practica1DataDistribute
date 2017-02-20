<?php
	require_once 'DAOInventario.php';
	$dao = new DAOInventario();
	//El ID NO DEBE SER OBTENIDO por medios de programacion (en el caso de ID nuevo)
	//$idNuevo = $dao->obtieneIdNuevo();
	$nombre = $_POST["nombre"];
	$precioCompra = $_POST["precio"];
	$imagenId = $_POST["id_imagen"];
	$categoId = $_POST["id_categoria"];
	//falta crear un constructo vacio ese es
	//Ahi se esta haciendo uso de un constructor vacio. Pero falta crearlo ahh no se m..
	//(en inventario.php)
	$inventario = new Inventario();
	$inventario->setNombre( $nombre );
	$inventario->setPrecioCompra( $precioCompra );
	$inventario->setIdImagen( $imagenId );
	$inventario->setIdCategoria( $categoId );
	//$inventario = new Inventario($idInventario,$idImagen,$idCategoria,$nombre,$anio,$numPiezas,$precioCompra,$precioVenta);
	$dao->insertar($inventario);


	echo "<script>alert('Producto agregado');window.location.href='formularioProducto.php';</script>";
?>