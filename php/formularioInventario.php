<?php
	require_once 'DAOInventario.php';
 ?>
<html>
<head>
</head>
<body>
	<form action="prueba2.php" method="POST">
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
	<?php
		$dao = new DAOInventario();
		$arrayP = $dao->listarProductos();
		$numRegistros = count($arrayP);
		echo"<table>";
			for($i = 0; $i < $numRegistros; $i++){
				echo "<tr>";
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
						echo "<a href='consultarInventario.php?idP=".$arrayP[$i]->getIdInventario()."'>Editar</a>";
					echo "</td>";
				echo "</tr>";

			}

		echo"</table>";

	?>
</body>
</html>
