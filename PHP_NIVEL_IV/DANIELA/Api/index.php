<?php


    # Inclusión de dependencias
    require_once "Model/Persona.php";
    require_once "Controller/PersonaController.php";
    
    # Uso de las dependencias a través de su name space
    #
    # +-- Nombre de espacio
    # !
    # v
    Model\Persona::saludo();
    Controller\PersonaController::saludo();

?>