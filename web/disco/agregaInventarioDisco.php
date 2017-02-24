<?php
	require_once '../db/dao/DAOInventarioDisco.php';
	$dao = new DAOInventarioDisco();
	$numCanciones = $_POST["numCanciones"];
	$interprete = $_POST["interprete"];
	$idInventario = $_POST['idInventario'];
	$disco = new InventarioDisco();
	$disco->setnumCanciones( $numCanciones );
	$disco->setInterprete($interprete);
	$disco->setIdInventario( $idInventario );
	
	$dao->insertar($disco);
	echo "<script>alert('Disco agregado');window.location.href='formularioInventarioDisco.php';</script>";
?>