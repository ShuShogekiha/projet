<?php
//  ON CONVERTIE LES CHARACTERS SPECIAL EN ENTITER HTML, EXEMPLE: "&nbps;", "&eacute;"
htmlspecialchars($_POST["test"]);
/**
 *  @param mixed $user : Nom d'utilisateur 
 *  @param mixed $email : Email 
 *  @param mixed $pass : Mot de passe 
 *  @param mixed $desi : Désignation
 *  @param mixed $prix : Prix donner 
 *  @param mixed $url : Lien  
 *  FONCTION QUI VAS VERIFIER CE QUI EST TRANSMIS AFIN DE LE CONTROLER
 */
function verify($user,$email,$pass,$desi,$prix,$url)
{
    //htmlentities();
    if (!empty($_POST)) {

        $userPtrn = "/^[a-zA-ZÀ-ÿ]+$/";
        $passPtrn = "/^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z])().{0,}$/";

        $userName = $_POST[$user];
        $mail = $_POST[$email];
        $somethingFishy = $_POST[$pass];
        $fName = $_POST[$desi];
        $price = $_POST[$prix];
        $img = $_POST[$url];


        if (empty(trim($fName)) || strlen($fName) < 1 || strlen($fName) > 26 || !preg_match($userPtrn, trim($fName))) {
            //si c'est pas bon
        } 

        if (!filter_var($mail, FILTER_VALIDATE_EMAIL)) {
            //si c'est pas bon
        } 

        if (!filter_var($img, FILTER_VALIDATE_URL)) {
            //si c'est pas bon
        }

        if (strlen($somethingFishy) < 7 || !preg_match($passPtrn, $somethingFishy)) {
            //si c'est pas bon
        } 
    }
}
?>