<?php
    $conexion=mysql_connect("localhost","root","helado11");
    if( $conexion == null ){
        die ("no puedo conectar con la bd ");
    } 
    else{
        printf( "Correcto" );
    }

    //ñaja 
    //Viste los pasos para checar cual fue el error?
    //1- Determinar si habia conexion entre PHP y MySQL a traves del phpinfo
    //2- Leer los logs de apache (/var/log/apache2/error.log)
    //3-Ver en especifico que causaba
    //PD: Ya viste que VSCode trae muchas instrucciones de php?
    //PD2: Cuack
?>


