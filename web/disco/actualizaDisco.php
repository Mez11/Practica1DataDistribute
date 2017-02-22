
<?php
	require_once '../db/dao/DAOInventarioDisco.php';
	require_once '../db/dto/InventarioDisco.php';
	$dao = new DAOInventarioDisco();
	$disco = new Disco(
		$_POST["idInventario"],
		$_POST["numCanciones"],
		$_POST["interprete"]
		
	);

	if (isset($_POST['EditarDisco'])) {
		$dao->editar( $disco );
		echo "<script>alert('Disco editado');window.location.href='formularioInventarioDisco.php';</script>";
	}else{
		$dao->eliminarDisco( $disco->getIdInventario( ) );
		echo "<script>alert('Disco Eliminado');window.location.href='formularioInventarioDisco.php';</script>";
		
	}
?>