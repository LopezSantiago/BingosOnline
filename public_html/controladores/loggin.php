<?php

include 'controllerConfig.php';

$usuario=filter_input(INPUT_POST,'USR');
$password=filter_input(INPUT_POST,'PW');



define('BD_SERVIDOR', 'localhost');
define('BD_PORT','3306');
define('BD_NOMBRE', 'bingosonline');
define('BD_USUARIO', 'root');
define('BD_PASSWORD', 'J9u7@5n3');


try{
$myconn='mysql:host='.BD_SERVIDOR.';port='.BD_PORT.';dbname='.BD_NOMBRE.';charset=utf8';
$bd=new PDO($myconn,BD_USUARIO,BD_PASSWORD);
$myparam=$bd->prepare("SELECT u.Id FROM usuarios u WHERE u.Usuario='".$usuario."' AND u.Contraseña='".$password."'");
$myparam->execute();
$respuesta=$myparam->fetchAll();
if(is_null($respuesta) ||  empty($respuesta)){
    //header("Location: ../index.html");
    //echo '<script type="text/javascript">alert("contraseña invalida");</script>';
    echo $sv.$dir.$nokpage;
}
else{
    //header("Location: ../configuracion.html");
   // echo '<script type="text/javascript">alert("contraseña valida");</script>';
    echo $sv.$dir.$okpage;
    }
}
catch (Exception $ex){
    echo 'ha ocurrido un problema. contacte al administrador';
    $handler=fopen('./controllerlog/.txt','a');
    fwrite($handler, $ex->getMessage());
    
}

