<?php
$host = "localhost"; //endereço do servidor
$username = "root";
$password = "";
$port = 3306;
$db_name = "projetosmile";

$connect = new PDO("mysql:host=$host;port=$port;dbname=" .$db_name, $username, $password);


?>