<?php
	require_once 'db/Conexion.php';
	require_once 'db/dto/InventarioDisco.php';
	class DAOInventarioDisco{
		//var $con;
		const TABLA = 'inventarioDisco';
		public function DAOInventarioDisco(){

		}
		public function insertar($objetoInventarioDisco){
			$con = new Conexion();
			$idInventario = $objetoInventarioDisco->getIdInventario();
			$numCanciones = $objetoInventarioDisco->getnumCanciones();
			$interprete = $objetoInventarioDisco->getInterprete();
			
			//Dejaremos que el ID lo genere en automatico MySQL
			$stm = $con -> prepare('INSERT INTO '.self::TABLA.' (numCanciones,interprete) 
			values (:numCanciones,:interprete)');
			$stm->bindParam(':numCanciones', $numCanciones);
			$stm->bindParam(':interprete', $interprete);
			$stm->execute();
		}
		public function listarProductos(){
			$con = new Conexion();
			//Recomendacion: Listar todos los campos dentro del SELECT
			//SELECT (campo1, campo2, campo3... campon) FROM tabl
			$stm= $con->prepare('SELECT * FROM '.self::TABLA." WHERE estatus = 1 " );
			$stm->execute();
			$i= 0;
			while( $res = $stm->fetch()){
				$inventario = new Inventario($res["idInventario"],$res["numCanciones"],$res["interprete"]);
				$array[$i] = $inventario;
				$i++;
			}
			return $array;

		}
		public function consultarUnInventarioDisco($idInventario){
			$con = new Conexion();
			$stm = $con->prepare('SELECT * FROM '.self::TABLA.' WHERE idInventario = :idInventario AND estatus = 1');
			$stm->bindParam(':idInventario', $idInventario );
			$stm->execute();
			$inventario;
			if($res = $stm->fetch()){
				$inventarioD = new InventarioDisco();
				$inventarioD->setIdInventario( $res["idInventario"] );
				$inventarioD->setNumCanciones( $res["numCanciones"] );
				$inventarioD->setInterprete($res["interprete"]);
			
			}
			return $inventarioD;

		}
		public function editar( $objetoInventarioDisco ){
			$con = new Conexion();
			$numCanciones = $objetoInventarioDisco->getNumCanciones( );
			$interprete = $objetoInventarioDisco->getInterprete( );
			$stm = $con -> prepare('UPDATE '.self::TABLA.' SET numCanciones=:numCanciones, interprete = :interprete, where idInventario = :idInventario');
			$stm->bindParam( ':numCanciones', $numCanciones );
			$stm->bindParam(':interprete', $interprete);
			$stm->execute();
		}

		public function eliminarDisco($idInventario){
			$con = new Conexion();
			//$stm = $con->prepare('DELETE FROM '.self::TABLA.' WHERE idInventario = :idInventario');
			$stm = $con->prepare('UPDATE '.self::TABLA.' SET estatus = 0 WHERE idInventario = :idInventario');
			$stm->bindParam(':idInventario', $idInventario);
			$stm->execute();
		}
	}
?>
