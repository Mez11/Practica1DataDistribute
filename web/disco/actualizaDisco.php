
<?php
	require_once '../db/dao/DAOInventarioDisco.php';
	require_once '../db/dto/InventarioDisco.php';
	$dao = new DAOInventarioDisco();
	$disco = new InventarioDisco(
		$_POST["idInventario"],
		$_POST["numCanciones"],
		$_POST["interprete"]
		
	);

	if (isset($_POST['Editar'])) {
		$dao->editar( $disco );
		echo "<script>alert('Disco editado');window.location.href='formularioInventarioDisco.php';</script>";
	}else{
		$dao->eliminarDisco( $disco->getIdInventario( ) );
		echo "<script>alert('Disco Eliminado');window.location.href='formularioInventarioDisco.php';</script>";
		
	}
?>