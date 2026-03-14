<?php include "./ejemplo04_encabezado.php"; ?>

<div class="card text-center">
  <div class="card-header">
    Pregunta
  </div>

  <form method="POST" action="ejemplo04_registrar.php">
  <div class="card-body">
    <h5 class="card-title">Diplomado de Programacion Full Stack</h5>
    <p class="card-text">De las siguientes opciones por favor indique ¿Cual es su lenguaje de programacion preferido?</p>
    
    <div class="form-check">
    <input class="form-check-input" type="radio" name="radioDefault" id="opcion" value="java">
    <label class="form-check-label" for="radioDefault1">
        Java
    </label>
    </div>
    <div class="form-check">
    <input class="form-check-input" type="radio" name="radioDefault" id="opcion" value="python">
    <label class="form-check-label" for="radioDefault2">
        Python
    </label>
    </div>
    <div class="form-check">
    <input class="form-check-input" type="radio" name="opcion" id="radioDefault1" value="javascript">
    <label class="form-check-label" for="radioDefault1">
        Javascript
    </label>
    </div>
    <div class="form-check">
    <input class="form-check-input" type="radio" name="opcion" id="radioDefault1" value="php">
    <label class="form-check-label" for="radioDefault1">
        PHP
    </label>
    </div>
    <div class="form-check">
    <input class="form-check-input" type="radio" name="opcion" id="radioDefault1" checked value="na">
    <label class="form-check-label" for="radioDefault1">
        Ninguna de las Anteriores
    </label>
    </div>
  </div>
  <button class="btn btn-dark mb-3">Guardar</button>
  </form>  

  <div class="card-footer text-body-secondary">
    UNEWEB 2026 &copy;
  </div>
</div>

<?php include "./ejemplo04_pie.php"; ?>