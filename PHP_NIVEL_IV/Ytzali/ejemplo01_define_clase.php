<?php
  class Libro {
    // Atributos de la clase Libro
  public $id = 0;
  public $titulo = '';
  public $contenido = '';
  public $fecha = '';

    // Metodos (operaciones)
    function crear(){
      return "El libro fue creado";
    }
    function eliminar(){
      return "El libro fue eliminado";
    }
    function editar(){
      return "El libro fue editado";
    }
    function ver(){
      echo "Estos son los datos del libro" . "<br>";
      echo $this->id . "<br>";
      echo $this->titulo . "<br>";
      echo $this->contenido . "<br>";
      echo $this->fecha . "<br>";
      echo $this->autor . "<br>";
    }
  }
  //Instancia de la clase libro 
  $contradicciones = new Libro();
  $damian = new Libro();
  $el_corazon_del_rey = new Libro();


  /**
   * Se accede a las operaciones y atributos, es a traves del objeto que se instancia a partir de la clase.  
   */

  $contradicciones->id = 1;
  $contradicciones->titulo ='Contradicciones';
  $contradicciones->contenido = 'Suspenso';
  $contradicciones->fecha = '2024-03-24';
  $contradicciones->autor = 'Darlis Steff';


  $damian->id = 2;
  $damian->titulo ='Damian';
  $damian->contenido = 'Dark-Romance';
  $damian->fecha = '2024-03-26';
  $damian->autor = 'Alex Mirez';

  $el_corazon_del_rey->id = 3;
  $el_corazon_del_rey->titulo ='El Perfume del Rey';
  $el_corazon_del_rey->contenido = 'Romance';
  $el_corazon_del_rey->fecha = '2024-04-24';
  $el_corazon_del_rey->autor = 'Karibe Bernal';

  // Llamado al metodo ver de cada una de las clases
  $contradicciones->ver();
  echo "<hr>";
  $damian->ver();
  echo "<hr>";
  $el_corazon_del_rey->ver();

?>