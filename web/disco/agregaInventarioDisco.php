<?php
	require_once '../db/dao/DAOInventarioDisco.php';
	$dao = new DAOInventarioDisco();
	$numCanciones = $_POST["numCanciones"];
	$interprete = $_POST["interprete"];
	$disco = new InventarioDisco();
	$disco->setnumCanciones( $numCanciones );
	$disco->setInterprete($interprete);
	
	$dao->insertar($disco);
	echo "<script>alert('Disco agregado');window.location.href='formularioInventarioDisco.php';</script>";
?>