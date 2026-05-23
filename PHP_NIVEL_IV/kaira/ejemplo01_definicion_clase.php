<?php
    class Libro{
        // atributos
    public $id = 0;
    public $titulo = '';
    public $contenido = '';
    public $fecha = '';

        // métodos (operaciones)
        function crear(){
            return "Libro fue creado";
        }
        function eliminar(){
            return "Libro fue borrado";
        }
        function editar(){
            return "Libro se encuentra editado";
        }
        function ver(){
            echo  "Estos son los datos del libro:<br>";
            echo $this->id . "<br>";
            echo $this->titulo . "<br>";
            echo $this->contenido . "<br>";
            echo $this->fecha . "<br>";
        }
    }
    // Instancia de la clase Libro 
    $el_naufrago = new Libro();
    $maria = new Libro();
    $los_miserables = new Libro();



    $el_naufrago->id = 1;
    $el_naufrago->titulo = 'El Naufrago';
    $el_naufrago->contenido = 'Novela Biografica';
    $el_naufrago->fecha = '1970-08-15';
    $el_naufrago->autor = 'Gabriel Garcia Marquez';

    $maria->id = 2;
    $maria->titulo = 'LOS MISERABLES';
    $maria->contenido = 'NOVELA ROMANTICA E HISTÓRICA';
    $maria->fecha = '1950-08-15';
    $maria->autor = 'VICTOR HUGO';

    $los_miserables->id = 3;
    $los_miserables->titulo = 'LOS MISERABLES';
    $los_miserables->contenido = 'NOVELA ROMANTICA E HISTÓRICA';
    $los_miserables->fecha = '1950-08-15';
    $los_miserables->autor = 'VICTOR HUGO';

    //Llamado al metodo ver de cada una de las clases
    $el_naufrago->ver();
    echo "<hr>";
    $maria->ver();
    echo "<hr>";
    $los_miserables->ver();
    echo "<hr>";

?>