<?php
	class Inventario{
		var $idInventario;
		var $idImagen;
		var $idCategoria;
		var $nombre;
		var $anio;
		var $numPiezas;
		var $precioCompra;
		var $precioVenta;


		public function Inventario($idInventario,$idImagen,$idCategoria,$nombre,$anio,$numPiezas,$precioCompra,$precioVenta){
			$this->idInventario = $idInventario;
			$this->idImagen = $idImagen;
			$this->idCategoria = $idCategoria;
			$this->nombre = $nombre;
			$this->anio = $anio;
			$this->numPiezas = $numPiezas;
			$this->precioCompra = $precioCompra;
			$this->precioVenta = $precioVenta;
		}
		public function getIdInventario(){
			return $this->idInventario;
		}
		public function getIdImagen(){
			return $this->idImagen;
		}
		public function getIdCategoria(){
			return $this->idCategoria;
		}
		public function getnombre(){
			return $this->nombre;
		}
		public function getAnio(){
			return $this->anio;
		}
		public function getNumPiezas(){
			return $this->numPiezas;
		}
		public function getPrecioCompra(){
			return $this->precioCompra;
		}
		public function getPrecioVenta(){
			return $this->precioVenta;
		}
		//setters
		public function setIdinventario($valor){
			$this->idInventario = $valor;
		}
		public function setIdImagen($valor){
			$this->idImagen = $valor;
		}
		public function setIdCategoria($valor){
			$this->idCategoria = $valor;
		}
		public function setNombre($valor){
			$this->nombre = $valor;
		}
		public function setAnio($valor){
			$this->anio = $valor;
		}
		public function setNumPiezas($valor){
			$this->numPiezas = $valor;
		}
		public function setPrecioCompra($valor){
			$this->precioCompra = $valor;
		}
		public function setPrecioVenta($valor){
			$this->precioVenta = $valor;
		}

	}
?>
