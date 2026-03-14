      <?php
          include "./ejemplo04_encabezado.php";
      ?>
      <div class="card text-center">
        <div class="card-header">
          Pregunta
        </div>
        <form action="./ejemplo04_registrar.php" method="POST">
        <div class="card-body">
          <h5 class="card-title">Diplomado de programación Full Stack</h5>
          <p class="card-text">De las siguientes opciones, por favor indique ¿Cuál es su lenguaje de programación preferido?</p>
          <!--
          <a href="#" class="btn btn-primary">Go somewhere</a>
          -->
          <div class="form-check">
              <input class="form-check-input" type="radio" name="opcion" id="flexRadioDefault1" value="JAVA">
              <label class="form-check-label" for="flexRadioDefault1">
                  JAVA
              </label>
          </div>
          <div class="form-check">
              <input class="form-check-input" type="radio" name="opcion" id="flexRadioDefault2" value="PYTHON">
              <label class="form-check-label" for="flexRadioDefault2">
                  PYTHON
              </label>
          </div>
          <div class="form-check">
              <input class="form-check-input" type="radio" name="opcion" id="flexRadioDefault2" value="JAVASCRIPT">
              <label class="form-check-label" for="flexRadioDefault2">
                  JAVASCRIPT
              </label>
          </div>
          <div class="form-check">
              <input class="form-check-input" type="radio" name="opcion" id="flexRadioDefault2" value="PHP">
              <label class="form-check-label" for="flexRadioDefault2">
                  PHP
              </label>
          </div>
          <div class="form-check">
              <input class="form-check-input" type="radio" name="opcion" id="flexRadioDefault2" checked value="NA">
              <label class="form-check-label" for="flexRadioDefault2">
                  NINGUNA DE LAS ANTERIORES
              </label>
          </div>
          <button class="btn btn-dark mt-3">Guardar</button>
        </div>
        </form>
        <div class="card-footer text-muted">
          UNEWEB 2026 &copy;
        </div>
      </div>
      <?php
          include "./ejemplo04_pie.php";
      ?>