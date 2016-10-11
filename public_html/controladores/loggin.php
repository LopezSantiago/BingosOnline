<?php

$usuario=filter_input(INPUT_GET,'usuario');
$password=filter_input(INPUT_GET,'password');

try{
$bd=new PDO('mysql:host=localhost;port=3306;dbname=bingosonline','root','');
$consult=$bd->prepare("SELECT Id FROM `usuarios` AS u WHERE u.Usuario='".$usuario."'AND u.Contraseña='".$password."'");
$consult->execute();
$res=$consult->fetchAll();
echo $res['Id'];
}
catch (Exception $ex){
    echo $ex;
 }