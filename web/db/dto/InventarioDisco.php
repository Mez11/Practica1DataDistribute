<?php
	class InventarioDisco{
		var $idInventario;
		var $numCanciones;
		var $interprete;
		//Parametros opcionales (default: null)
		public function Inventario(
			$idInventario=null,
			$numCanciones=null,
			$interprete=null 
            )
		{
			$this->idInventario = $idInventario;
			$this->numCanciones = $numCanciones;
			$this->interprete = $interprete;
			
		}
        //getters
		public function getIdInventario(){
			return $this->idInventario;
		}
		public function getNumCanciones(){
			return $this->getNumCanciones;
		}
		public function getInterprete(){
			return $this->interprete; 
		}
			
		//setters
		public function setIdinventario($valor){
			$this->idInventario = $valor;
		}
		public function setnumCanciones($valor){
			$this->numCanciones = $valor;
		}
		public function setInteprete($valor){
			$this->interprete = $valor;
		}
		
	} //End funcion
?>
