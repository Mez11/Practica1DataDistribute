<?php
	require_once '../db/dao/DAOInventario.php';
	$dao = new DAOInventarioDisco();
	$numCanciones = $_POST["numCanciones"];
	$interprete = $POST['interprete'];
	$disco = new Disco();
	$disco->setnumCanciones( $numCanciones );
	$disco->setInterprete($interprete);
	
	$dao->insertar($disco);
	echo "<script>alert('Disco agregado');window.location.href='formularioInventarioDisco.php';</script>";
?>