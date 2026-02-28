<?php 
include './ejemplo08_encabezado.php';
?>
<form action="./ejemplo08_con01.php" method="POST">
<div class="row">
  <div class="mb-3 mt-3 col-6">
    <label for="cedula" class="form-label">Cedula de Identidad:</label>
    <div class="input-group">
      <select name="tipo" id="tipo" class="form-control">
        <option value="V">V</option>
        <option value="E">E</option>
      </select>
      <span class="input-group-text">-</span>
      <input type="text" class="form-control" id="numero" placeholder="Ingresar Cedula de Identidad" name="numero" require>
    </div>
  </div>
</div>
  <button type="submit" class="btn btn-primary">Consultar</button>
  <button type="reset" class="btn btn-warning">Limpiar</button>
</form>
<?php
include './ejemplo08_pie.php';
?>