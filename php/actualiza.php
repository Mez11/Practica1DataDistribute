<?php
	require_once 'DAOInventario.php';
	require_once 'Inventario.php';
	$dao = new DAOInventario();
	$inventario = new Inventario($_GET["idP"],$_GET["idIm"],$_GET["idCat"],$_POST["nombre"],$_POST["anio"],$_POST["numPiezas"],$_POST["anio"],$_POST["precioCompra"],$_POST["precioVenta"]);
	if (isset($_POST['Editar'])) {
		$dao->editarInventario($inventario,$_GET["idP"],$_GET["idIm"],$_GET["idCat"]);
		echo "<script>alert('Inventario editado');window.location.href='formularioInventario.php';</script>";
	}else{
		$dao->eliminarInventario($_GET["idP"],$_GET["idIm"],$_GET["idCat"]);
		echo "<script>alert('Inventario Eliminado');window.location.href='formularioInventario.php';</script>";
	}





?>
