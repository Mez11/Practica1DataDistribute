<?php
	require_once 'db/Conexion.php';
	require_once 'db/dto/Inventario.php';
	class DAOInventario{
		//var $con;
		const TABLA = 'inventario';
		public function DAOInventario(){

		}
		public function insertar($objetoInventario){
			$con = new Conexion();
			$idInventario = $objetoInventario->getIdInventario();
			$idImagen = $objetoInventario->getIdImagen();
			$idCategoria = $objetoInventario->getidCategoria();
			$nombre = $objetoInventario->getNombre();
			$anio = $objetoInventario->getAnio();
			$numPiezas = $objetoInventario->getNumPiezas();
			$precioCompra = $objetoInventario->getPrecioCompra();
			$precioVenta = $objetoInventario->getPrecioVenta();
			//Dejaremos que el ID lo genere en automatico MySQL
			$stm = $con -> prepare('INSERT INTO '.self::TABLA.' (idImagen,idCategoria,nombre,anio,numPiezas,precioCompra,precioVenta) 
			values (:idImagen,:idCategoria,:nombre,:anio,:numPiezas,:precioCompra,:precioVenta)');
			$stm->bindParam(':idImagen', $idImagen);
			$stm->bindParam(':idCategoria', $idCategoria);
			$stm->bindParam(':nombre',$nombre);
			$stm->bindParam(':anio',$anio);
			$stm->bindParam(':numPiezas',$numPiezas);
			$stm->bindParam(':precioCompra',$precioCompra);
			$stm->bindParam(':precioVenta',$precioVenta);
			$stm->execute();
		}
		public function listarProductos(){
			$con = new Conexion();
			//Recomendacion: Listar todos los campos dentro del SELECT
			//SELECT (campo1, campo2, campo3... campon) FROM tabl
			$stm= $con->prepare('SELECT * FROM '.self::TABLA);
			$stm->execute();
			$i= 0;
			while( $res = $stm->fetch()){
				$inventario = new Inventario($res["idInventario"],$res["idImagen"],$res["nombre"],$res["anio"],$res["numPiezas"],$res["precioCompra"],$res["precioVenta"]);
				$array[$i] = $inventario;
				$i++;
			}
			return $array;

		}
		public function consultarUnInventario($idInventario){
			$con = new Conexion();
			$stm = $con->prepare('SELECT * FROM '.self::TABLA.' WHERE idInventario = :idInventario');
			$stm->bindParam(':idInventario', $idInventario );
			$stm->execute();
			$inventario;
			if($res = $stm->fetch()){
				$inventario = new Inventario($res["idInventario"],$res["idImagen"],$res["nombre"],$res["anio"],$res["numPiezas"],$res["precioCompra"],$res["precioVenta"]);
			}
			return $inventario;

		}
		public function editar( $objetoInventario ){
			$con = new Conexion();
			$nombre = $objetoInventario->getNombre( );
			$anio = $objetoInventario->getAnio( );
			$numPiezas = $objetoInventario->getNumPiezas();
			$precioCompra = $objetoInventario->getPrecioCompra();
			$precioVenta = $objetoInventario->getPrecioVenta();
			$idImagen = $objetoInventario->getIdImagen( );
			$idInventario = $objetoInventario->getIdInventario();
			$stm = $con -> prepare('UPDATE '.self::TABLA.' SET idImagen=:idImagen, nombre = :nombre,anio = :anio, numPiezas = :numPiezas,precioCompra = :precioCompra, precioVenta = :precioVenta,where idInventario = :idInventario');
			$stm->bindParam( ':idImagen', $idImagen );
			$stm->bindParam(':nombre', $nombre);
			$stm->bindParam(':anio',$anio);
			$stm->bindParam(':numPiezas',$numPiezas);
			$stm->bindParam(':precioCompra',$precioCompra);
			$stm->bindParam(':precioVenta',$precioVenta);
			$stm->bindParam(':idInventario', $idInventario);
			$stm->execute();
		}

		public function eliminarProducto($idInventario){
			$con = new Conexion();
			$stm = $con->prepare('DELETE FROM '.self::TABLA.' WHERE idInventario = :idInventario');
			$stm->bindParam(':idInventario', $idInventario);
			$stm->execute();
		}

		//TODO: Borrar comentario
		/**
		 * El metodo falla cuando hay dos clientes que agregan un item al mismo tiempo
		 * (se les daria el mismo ID a ambos, y el constraint de UNIQUE de una llave primaria fallaria.)
		*/
		/*public function obtieneIdNuevo(){
			$con = new Conexion();
			//ESTO NO debe hacerse entonces se actualiza solo oh ¿COmo?
			//Sip, para eso es el AUTO_INCREMENT que pusimos en la definicion de las tablas 0h ok l
			//o borro
			//Si, borra todo el metodo.
			$stm = $con -> prepare('Select MAX(idInventario)+1 as idInventario FROM '.self::TABLA);
			$stm->execute();
			$idNuevo;
			if($res = $stm->fetch()){
				$idNuevo = $res["idInventario"];
			}
			return $idNuevo;*/
		//}


	}
?>
