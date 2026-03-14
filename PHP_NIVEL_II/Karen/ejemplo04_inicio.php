<?php
    include "./ejemplo04_header.php";
?>
<div class="card text-center">
  <div class="card-header">
    Pregunta
  </div>
  <form action="./ejemplo04_registrar.php" method="POST">
    <div class="card-body">
        <h5 class="card-title">Diplomado de programación Full-Stack</h5>
        <p class="card-text">De las siguientes opciones indique cuál es su favorito:</p>
        <!--
        <a href="#" class="btn btn-primary">Go somewhere</a>
        -->

        <div class="form-check">
            <input class="form-check-input" type="radio" name="opcion" id="flexRadioDefault1" value="python" checked>
            <label class="form-check-label" for="flexRadioDefault1">
                Python
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="opcion" id="flexRadioDefault1" value="PHP">
            <label class="form-check-label" for="flexRadioDefault1">
                PHP
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="opcion" id="flexRadioDefault1" value="js">
            <label class="form-check-label" for="flexRadioDefault1">
                javascript
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="opcion" id="flexRadioDefault1" value="NA">
                Ninguna de las anteriores
            </label>
        </div>
        <button class= "btn btn-dark">Guardar</button>
    </div>
</form>
  <div class="card-footer text-muted">
    UNEWEB 2026 &copy;
  </div>
</div>
<?php
    include "./ejemplo04_footer.php";
?>