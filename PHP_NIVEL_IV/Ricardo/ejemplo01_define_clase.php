<?php
    class Libro{
        // atributos
        public $id = 0;
        public $titulo = '';
      public  $contenido = '';
      public  $fecha = '';
      public  $autor = '';

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
            echo $this->autor . "<br>";
        }
    }
    // Instancia de la clase Libro 
    $el_naufrago = new Libro();
    $maria = new Libro();
    $los_miserables = new Libro();

    /**
     * Se accede a las operaciones y atributos,  
     * a través del objeto que se instancia a partir 
     * de la clase
     */
    $el_naufrago->id = 1;
    $el_naufrago->titulo = 'EL NAUFRAGO';
    $el_naufrago->contenido = 'NOVELA BIOGRÁFICA';
    $el_naufrago->fecha = '1970-08-15';
    $el_naufrago->autor = 'GABRIEL GARCÍA MARQUEZ';

    $maria->id = 2;
    $maria->titulo = 'MARIA';
    $maria->contenido = 'NOVELA BIOGRÁFICA';
    $maria->fecha = '1970-08-15';
    $maria->autor = 'JORGE ISAAC';

    
    $los_miserables->id = 3;
    $los_miserables->titulo = 'Los Miserables';
    $los_miserables->contenido = 'NOVELA ROMANTICA';
    $los_miserables->fecha = '1960-08-15';
    $los_miserables->autor = 'VICTOR HUGO';

    //Llamado al metodo ver de cada una de las
    $el_naufrago->ver();
    echo "<hr>";
    $los_miserables->ver();
    echo "<hr>";
    $maria->ver();


?>