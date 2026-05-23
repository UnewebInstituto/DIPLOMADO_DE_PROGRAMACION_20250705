<?php
  class Instituto{
    //atributos
    public $nombre = 'UNEWEB';
    public static $URL = 'www.uneweb.edu';

    //metodos
    public function obtener_url(){
      echo 'URL' . $this->url . "br";
    }

    
    public function obtener_nombre(){
      echo 'NOMBRE' . self::$nombre . "br";
    }
  }
  
  $curso = new Instituto();
  //Accediendo a los atributos
  echo $curso->nombre . "<br>";
  //Dado que el atributo url esta declarado como estatico se puede acceder a traves del objeto de la clase o a traves del nombre de la clase, usando el nombre seguido de :: y el nombre del atributo
  //echo $curso->url . "<br>";
  echo Instituto::$url . "<br>";

  //Accediendo a los metodos
  $curso->obtener_nombre();
    Instituto::obtener_nombre();
    
    $curso->obtener_url();


?>