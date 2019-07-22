<?php
//Iz svoje baze izvu─çi sve nazive entiteta koji nemaju vanjski klju─Ź


$veza = new PDO("mysql:dbname=hotel; host=localhost",
"edunova","edunova");

$izraz = $veza->query("select * soba;");
$izraz->execute();
$rezultati = $izraz->fetchAll(PDO::FETCH_OBJ);

echo "<pre>";
//var_dump($rezultati);
echo "</pre>";

foreach($rezultati as $red){
    echo $red->opissobe, "<br />";
}