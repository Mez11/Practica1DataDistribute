<?php
	require_once '../db/dao/DAOInventario.php';
 ?>
<html>
<head>
	<title>Formulario de inventario</title>
	<link rel="stylesheet" type="text/css" href="css/index.css" />
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
	<link rel="stylesheet" type="text/css" href="css/iziModal.min.css" />

	<script type="text/javascript" src="js/jquery-3.1.1.min.js" ></script>
	<script type="text/javascript" src="js/iziModal.min.js" ></script>
	<script type="text/javascript">
		$( document ).ready( function( ){
			$( "#addInventarioPopup" ).iziModal( );
		} );
	</script>
</head>
<body>

	<div id="addInventarioPopup" >
		<form action="agregaInventario.php" method="POST">
			<p>*Nombre:</p><input type="text" name="nombre"/>
			<p>*Anio:</p><input type="text" name="anio"/>
			<p>*Numero de piezas:</p><input type="text" name="numPiezas">
			<p>*Precio de compra:</p><input type="text" name="precioCompra"/>
			<p>*Precio de venta:</p><input type="text" name="precioVenta"/>
			<p><label>Imagen:</label> </p>

			<input type="text" name="id_imagen"/>
			<p><label>*Categoria:</label></p>
			<input type="text" name="id_categoria"/>
			<br><br>
			<input type="submit" value="Agregar producto"/>
		</form>
	</div>
	
	<a data-izimodal-open="addInventarioPopup" style="cursor: pointer" >
		Agregar inventario
		<i class="fa fa-plus" aria-hidden="true"></i>
	</a>

	<?php
		$dao = new DAOInventario();
		$arrayP = $dao->listarProductos();
		$numRegistros = count($arrayP);
		echo"<table class='responstable'>";
			echo "<tr>";
			echo "<th>ID</th>";
			echo "<th>idImagen</th>";
			echo "<th>idCategoria</th>";
			echo "<th>Nombre</th>";
			echo "<th>A&ntilde;o</th>";
			echo "<th>Num. piezas</th>";
			echo "<th>Precio de compra</th>";
			echo "<th>Precio de venta</th>";
			echo "<th>Acciones</th>";
			echo "</tr>";
			for($i = 0; $i < $numRegistros; $i++){
				echo "<tr>";
					echo "<td>";
						echo $arrayP[$i]->getIdInventario();
					echo "</td>";
					echo "<td>";
						echo $arrayP[$i]->getidImagen();
					echo "</td>";
					echo "<td>";
						echo $arrayP[$i]->getidCategoria();
					echo "</td>";
					echo "<td>";
						echo $arrayP[$i]->getNombre();
					echo "</td>";
					echo "<td>";
						echo $arrayP[$i]->getAnio();
					echo "</td>";
					echo "<td>";
						echo $arrayP[$i]->getNumPiezas();
					echo "</td>";
					echo "<td>";
						echo $arrayP[$i]->getPrecioCompra();
					echo "</td>";
					echo "<td>";
						echo $arrayP[$i]->getPrecioVenta();
					echo "</td>";
					echo "<td>";
						echo "<a href='consultarInventario.php?idP=".
							$arrayP[$i]->getIdInventario()."'><i class='fa fa-pencil-square-o' title='Editar'></i></a>";
						echo "<a href='borra.php?idP=".$arrayP[$i]->getIdInventario( )."'><i class='fa fa-trash' title='Eliminar' ></i></a>";
					echo "</td>";
				echo "</tr>";

			}

		echo"</table>";

	?>
</body>
</html>
