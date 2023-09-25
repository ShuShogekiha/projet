<?php
$dbh = new PDO("mysql:host=localhost;dbname=amazoone", "root", "");
if(!$_SESSION){
    header("location: ../users/views/connexUser.php");
}

//  ON VERIFIE QUE ON EST BIEN CONNECTER
if (!empty($dbh)) {
    $id = $_POST["id"];

    $requete = "DELETE FROM article WHERE id=$id";
    $exec = $dbh->query($requete);
    if($exec != false){
    //  MOYEN DE VERIFICATION QUE LA REQUETE C'EST BIEN EXECUTER
       // echo "sa marche";
    }
    $test = $exec->fetchAll(PDO::FETCH_ASSOC);

   header("location: ../../../index.php");
}
?>