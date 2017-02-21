<?php
	require_once 'DAOInventario.php';
	require_once 'Inventario.php';
	$dao = new DAOInventario();
	//$_GET["unParametro"]; // = request.getParameter( "unParametro" ) en java (en el metodo doGet).
	//$_POST["UnParametro"]; // = request.getParameter( "unParametro" ) en java (en el metodo doPost)
	//Idealmente si, aunque supongo que es posible (aunque no recomendable) combinar 
	//los metodos (como lo estabas haciendo)
	//$_GET y $_POST son para obtener parametros del usuario. Solo que nos son por medio del
	//metodo GET, y otros son del metodo POST (de acuerdo con el protocolo HTTP)
	//En ningun momento estos metodos te serviran para obtener valores de la BD.

	$inventario = new Inventario(
		$_POST["idP"],
		$_POST["idIm"],
		$_POST["idCat"],
		$_POST["nombre"],
		$_POST["anio"],
		$_POST["numPiezas"],
		$_POST["anio"],
		$_POST["precioCompra"],
		$_POST["precioVenta"]
	);
	//Seria mejor tener una variable bandera que te indique si editar (true) o eliminar (false)
	//en vz de comprobar si una variable esta en null. Esto puede llevar a 
	//falsos positivos. osea que debo crear un metodo para ello
	//Nope. Deberias de checar si existe 
	//o sea, algo asi:
/*	$editar = $_POST["editar"];
	if( isset( $editar ) ){
		if( $editar == true ){
			//hacer cosas para editar
		}
		else{
			//Hacer cosas para agregar
		}
	}
	else{
		//ERROR: la variable "editar" no fue enviada por el cliente
		//Informarle del error.
	}
*/
	if (isset($_POST['Editar'])) {
		$dao->editarInventario($inventario->getIdInventario());
		echo "<script>alert('Inventario editado');window.location.href='formularioInventario.php';</script>";
	}else{
		$dao->eliminarInventario( $inventario->getIdInventario( ) );
		echo "<script>alert('Inventario Eliminado');window.location.href='formularioInventario.php';</script>";
		
	}
?>
