<?php

//declaracion de dependencias o librerias

include './libreria_funciones.php';

//declaracion de funciones

//declaracion de variables

//cuerpo principal del programa

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <title>Ejemplo calculadora</title>
</head>
<body>
    <div class="container">
        <h1>calculadora Simple </h1>

        <form method="POST">
        <div class="mb-3">
            <label for="n1" class="form-label">Primer valor</label>
            <input type="text" class="form-control" id="n1" aria-describedby="n1help" name="n1">
            <div id="n1help" class="form-text">Ingrese el primer valor.</div>
        </div>
        <div class="mb-3">
            <label for="n2" class="form-label">Segundo valor</label>
            <input type="text" class="form-control" id="n2" aria-describedby="n2help" name="n2">
            <div id="n2help" class="form-text">Ingrese el segundo valor.</div>
        </div>
        <input type="submit" class="btn btn-primary" value="Sumar" name="op">
        <input type="submit" class="btn btn-secondary" value="Restar" name="op">
        <input type="submit" class="btn btn-success"  value="Multiplicar" name="op">
        <input type="submit" class="btn btn-danger" value="Dividir" name="op">
        <input type="submit" class="btn btn-info" value="Residuo" name="op">
        <input type="reset" class="btn btn-warning" value="Limpiar">

        <div class="mt-3 mb-3">
            <label for="r" class="form-label">Resultado</label>
            <input type="text" class="form-control" id="r" aria-describedby="rhelp" readonly value="<?php
                    /**
                     * Se verifica que se hayan ingresado valores para 
                     * efectuar la operación !empty() NO VACÍAS
                     */
                    if (
                        (!empty($_POST['n1']) && !empty($_POST['n2'])) || 
                        ((!empty($_POST['n1']) && $_POST['n2'] == '0'))
                        ) {
                        switch ($_POST['op']) {
                            case 'Sumar':
                                echo sumar($_POST['n1'],$_POST['n2']);
                                break;
                            case 'Restar':
                                echo restar($_POST['n1'],$_POST['n2']);
                                break;
                            case 'Multiplicar':
                                echo multiplicar($_POST['n1'],$_POST['n2']);
                                break;
                            case 'Dividir':
                                echo dividir($_POST['n1'],$_POST['n2']);
                                break;
                            case 'Residuo':
                                echo resto_dividir($_POST['n1'],$_POST['n2']);
                                break;
                            default:
                                echo "Operación no válida";
                                break;
                        }
                    }else{
                        echo 'Ingrese valores';
                    }
            
            ?>">
            <div id="rhelp" class="form-text">Resultado de la operacion.</div>
        </div>
        </form>
    </div>    

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>