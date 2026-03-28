<?php
    #1- Declaracion de dependencias o librerias 
    include './libreria_funciones.php';

    #2- Declaracion de funciones
    #N/A

    #3- Declaracion de variables

    #4- Cuerpo principal 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>.:Ejemplo07 - Calculadora:.</title>
</head>
<body>
    <div class="container">
        <h1>Calculadora Basica</h1>
        <!--
            Atención: Si el formulario no tiene declarado el atributo action="",
            la acción será al transmitir, llamarse así mismo. En cuanto al atributo
            method="" (método), por omisión va por GET, a menos que se indique POST,
            es decir <form method="POST">
        -->
        <form method="POST">
            <div class="mb-3">
                <label for="n1" class="form-label">Primer valor</label>
                <input type="text" class="form-control" id="n1" aria-describedby="n1Help" name="n1">
                <div id="n1Help" class="form-text">Ingrese el Primer valor</div>
            </div>
            <div class="mb-3">
                <label for="n2" class="form-label">Segundo valor</label>
                <input type="text" class="form-control" id="n2" aria-describedby="n2Help" name="n2">
                <div id="n2Help" class="form-text">Ingrese el Segundo valor</div>
            </div>
            <input type="submit" class="btn btn-primary" value="Sumar" name="op">
            <input type="submit" class="btn btn-secondary" value="Restar" name="op">
            <input type="submit" class="btn btn-success" value="Multiplicar" name="op">
            <input type="submit" class="btn btn-danger" value="Dividir" name="op">
            <input type="submit" class="btn btn-info" value="Residuo" name="op">
            <input type="reset" class="btn btn-warning" value="Limpiar" name="op"> 
            <div class="mb-3 mt-3">
                <label for="r" class="form-label">Resultado</label>
                <input type="text" class="form-control" id="r" aria-describedby="rHelp" readonly value="<?php 
                /**
                * Se verifica que se hayan ingresado valores para 
                * efectuar la operación !empty() NO VACÍAS
                *
                * && AND "Y"
                * || OR "O", VALOR ASCII ALT + 124
                * ! NOT "NO"
                */
                if (!empty($_POST['n1']) && !empty($_POST['n2']) || ((!empty($_POST['n1']) && $_POST['n2'] == '0'))) {
                    switch ($_POST['op'] ) {
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
                            echo 'Operacion no valida';
                            break;
                    }
                }else{
                    echo 'Ingrese Valores';
                }?>">
                <div id="rHelp" class="form-text">Resultado de la operacion</div>
            </div>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>