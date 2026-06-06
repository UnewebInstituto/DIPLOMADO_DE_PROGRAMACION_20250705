<?php
    require_once "Controller/PersonaController.php";
    require_once "Model/Persona.php";

    //Uso de dependencias a traves de su name space 
    Model\Persona::saludo();
    Controller\PersonaController::saludo();


?>