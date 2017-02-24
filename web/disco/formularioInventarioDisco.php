<?php
	require_once '../db/dao/DAOInventarioDisco.php';
 ?>
<html>
<head>
	<title>Formulario de disco</title>
	<link rel="stylesheet" type="text/css" href="../css/index.css" />
	<link rel="stylesheet" type="text/css" href="../css/font-awesome.min.css" />
	<link rel="stylesheet" type="text/css" href="../css/iziModal.min.css" />

	<script type="text/javascript" src="../js/jquery-3.1.1.min.js" ></script>
	<script type="text/javascript" src="../js/iziModal.min.js" ></script>
	<script type="text/javascript">
		$( document ).ready( function( ){
			$( "#addInventarioPopup" ).iziModal( );
		} );
	</script>
</head>
<body>

	<div id="addInventarioPopup" >
		<form action="agregaInventarioDisco.php" method="POST">
			<p>*ID inventario:</p><input type="text" name="idInventario"/>
			<p>*Numero de canciones:</p><input type="text" name="numCanciones"/>
			<p>*Interprete:</p><input type="text" name="interprete"/>
			<input type="submit" value="Agregar disco"/>
		</form>
	</div>
	
	<a data-izimodal-open="addInventarioPopup" style="cursor: pointer" >
		Agregar disco
		<i class="fa fa-plus" aria-hidden="true"></i>
	</a>

	<?php
		$dao = new DAOInventarioDisco();
		$arrayP = $dao->listarDiscos();
		$numRegistros = count($arrayP);
		echo"<table class='responstable'>";
			echo "<tr>";
			echo "<th>ID</th>";
			echo "<th>numero de canciones</th>";
			echo "<th>interprete</th>";
			echo "<th>acciones</th>";
			echo "</tr>";
			for($i = 0; $i < $numRegistros; $i++){
				echo "<tr>";
					echo "<td>";
						echo $arrayP[$i]->getIdInventario();
					echo "</td>";
					echo "<td>";
						echo $arrayP[$i]->getnumCanciones();
					echo "</td>";
					echo "<td>";
						echo $arrayP[$i]->getInterprete();
					echo "</td>";
			
					echo "<td>";
						echo "<a href='consultarInventarioDisco.php?idP=".
							$arrayP[$i]->getIdInventario()."'><i class='fa fa-pencil-square-o' title='Editar'></i></a>";
						echo "<a href='borraDisco.php?idP=".$arrayP[$i]->getIdInventario( )."'><i class='fa fa-trash' title='Eliminar' ></i></a>";
					echo "</td>";
				echo "</tr>";

			}

		echo"</table>";

	?>
</body>
</html>

