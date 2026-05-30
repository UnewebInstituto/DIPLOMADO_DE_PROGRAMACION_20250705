<?php
class Pagina{
    // atributos
    public $nombre = "UNEWEB";
    public static $url = "www.uneweb.edu.ve";

    // Métodos
    public function bienvenida(){
        echo "Bienvenido a <b>" . $this->nombre . "</b>, la página es: <b>" . self::$url . "</b>"; 
        echo "<br>";
        echo "Bienvenido a <b> {$this->nombre} </b>, la página es: <b> " . self::$url . "</b>"; 
    }

    public static function bienvenida2(){
        echo "El sitio web oficial es : " . self::$url;
    }
}  

// Se hace una sub clase a partir de página
class Web extends Pagina{}

// Pruebas de Instancia
$mi_pagina = new Pagina();
// llamado al método bienvenida
$mi_pagina->bienvenida();
echo "<hr>";
Pagina::bienvenida2();


?>