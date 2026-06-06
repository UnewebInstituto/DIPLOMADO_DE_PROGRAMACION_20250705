<?php

    require_once "Model/Persona.php";
    require_once "Controller/PersonaController.php";
    

    Model\Persona::saludo("Kaira");
    Controller\PersonaController::saludo("Kaira");

?>