<?php
	class Conexion extends PDO{
		private $tipo_de_base = 'mysql';
		private $host = "localhost";
		private $usuario = "root";
		private $contrasena = "helado11";
		private $nombre_de_base = "tienda";

		public function __construct() {
			try{
				parent::__construct($this->tipo_de_base.':host='.$this->host.';dbname='.$this->nombre_de_base, $this->usuario, $this->contrasena);
				parent::setAttribute(parent::ATTR_ERRMODE, parent::ERRMODE_EXCEPTION);
			}catch(PDOException $e){
				 echo 'Ha surgido un error y no se puede conectar a la base de datos. Detalle: ' . $e->getMessage();
				 exit;
			}
		}

	}
?>
