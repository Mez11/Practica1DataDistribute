<?php
	require_once '../db/dao/DAOInventarioDisco.php';
	require_once '../db/dto/InventarioDisco.php';
	$dao = new DAOInventarioDisco();
	$idInventario = $_GET["idP"];
	
    $dao->eliminarDisco( $idInventario );
	echo "<script>alert('Disco eliminado');window.location.href='formularioInventarioDisco.php';</script>";
?>
