<?php
	require_once 'db/dao/DAOInventario.php';
	require_once 'db/dto/Inventario.php';
	$dao = new DAOInventario();
	$idInventario = $_GET["idP"];
	
    $dao->eliminarProducto( $idInventario );
	echo "<script>alert('Inventario eliminado');window.location.href='formularioInventario.php';</script>";
?>
