<?php
    $conexion=mysql_connect("localhost","root","helado11");
    if( $conexion == null ){
        die ("no puedo conectar con la bd ");
    } 
    else{
        printf( "Correcto" );
    }

?>


