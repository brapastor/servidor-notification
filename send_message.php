<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
if (isset($_GET["regId"]) && isset($_GET["titulo"])) {
    $regId = $_GET["regId"];
    $message = $_GET["titulo"];

    //noticia
    $categoria_id = $_GET["categoria_id"];
    $imagen = $_GET["imagen"];
    $titulo = $_FILES["titulo"];
    $descripcion = $_GET["descripcion"];

    include_once './GCM.php';
    
    $gcm = new GCM();

    $registatoin_ids = array($regId);
    $message = array("price" => $message);

    include_once './db_functions.php';
    $db = new DB_Functions();
    $noti= $db->storeNoticias($categoria_id, $titulo, $descripcion);

   // var_dump($noti);
   // exit;

    $result = $gcm->send_notification($registatoin_ids, json_encode($noti));
    echo $result;
}
?>
