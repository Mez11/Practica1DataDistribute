<?php
	require_once '../db/Conexion.php';
	require_once '../db/dto/InventarioDisco.php';
	class DAOInventarioDisco{
		
		const TABLA = 'disco';
		public function DAOInventarioDisco(){

		}
		public function insertar($objetoInventarioDisco){
			$con = new Conexion();
			$idInventario = $objetoInventarioDisco->getIdInventario();
			$numCanciones = $objetoInventarioDisco->getnumCanciones();
			$interprete = $objetoInventarioDisco->getInterprete();
			$stm = $con -> prepare('INSERT INTO '.self::TABLA.' (idInventario, numCanciones,interprete) 
			values (:idInventario, :numCanciones,:interprete )');
			$stm->bindParam( ":idInventario", $idInventario );
			$stm->bindParam(':numCanciones', $numCanciones);
			$stm->bindParam(':interprete', $interprete);
			$stm->execute();
		}
		public function listarDiscos(){
			$con = new Conexion();
			$stm= $con->prepare('SELECT * FROM '.self::TABLA." WHERE estatus = 1 " );
			$stm->execute();
			$i= 0;
			while( $res = $stm->fetch()){
				$disco= new InventarioDisco( );
				$disco->setIdInventario( $res["idInventario"] );
				$disco->setnumCanciones( $res["numCanciones"] );
				$disco->setInterprete( $res["interprete"] ); 
				$array[$i] = $disco;
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
				$disco= new InventarioDisco( );
				$disco->setIdInventario( $res["idInventario"] );
				$disco->setnumCanciones( $res["numCanciones"] );
				$disco->setInterprete( $res["interprete"] );
			}
			return $disco;

		}
		public function editar( $objetoInventarioDisco ){
			$con = new Conexion();
			$idInventario = $objetoInventarioDisco->getIdInventario();
			$numCanciones = $objetoInventarioDisco->getnumCanciones();
			$interprete = $objetoInventarioDisco->getInterprete();
			$stm = $con -> prepare('UPDATE '.self::TABLA.' SET numCanciones=:numCanciones,
			 interprete = :interprete  where idInventario = :idInventario');
			$stm->bindParam(':idInventario', $idInventario); 
			$stm->bindParam(':numCanciones', $numCanciones);
			$stm->bindParam(':interprete', $interprete);
			$stm->execute();
		}

		public function eliminarDisco($idInventario){
			$con = new Conexion();
			$stm = $con->prepare('UPDATE '.self::TABLA.' SET estatus = 0 WHERE idInventario = :idInventario');
			$stm->bindParam(':idInventario', $idInventario);
			$stm->execute();
		}

	}
?>
