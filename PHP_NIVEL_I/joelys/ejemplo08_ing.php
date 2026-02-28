<?php 
include './ejemplo08_encabezado.php';
?>
<form action="./ejemplo08_ing01.php" method="POST">
<div class="row">
  <div class="mb-3 mt-3 col">
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
  <div class="mb-3 mt-3 col">
    <label for="nombre" class="form-label">Nombre:</label>
    <input type="text" class="form-control" id="nombre" placeholder="Ingrese el nombre" name="nombre" require>
  </div>
</div>

<div class="row">
  <div class="mb-3 mt-3 col">
    <label for="apellido" class="form-label">Apellido:</label>
    <input type="text" class="form-control" id="apellido" placeholder="Ingrese el apellido" name="apellido" require>
  </div>
   <div class="mb-3 mt-3 col">
    <label for="fechanac" class="form-label">Fecha de Nacimiento:</label>
    <input type="date" class="form-control" id="fechanac" name="fechanac" require>
  </div>
</div>

<div class="row">
  <div class="mb-3 mt-3 col">  
    <label for="sexo" class="form-label">Sexo:</label>
    <div class="form-check">
      <input class="form-check-input" type="radio" name="sexo" id="sexo" checked>
      <label class="form-check-label" for="radioDefault1" value="f">
        Fememino
      </label>
    </div>
    <div class="form-check">
      <input class="form-check-input" type="radio" name="sexo" id="sexo">
      <label class="form-check-label" for="radioDefault2" value="m">
        Masculino
      </label>
    </div>
  </div>
  <div class="mb-3 mt-3 col">
    <label for="telefono" class="form-label">Telefono:</label>
    <input type="text" class="form-control" id="telefono" placeholder="Ingrese el Telefono" name="telefono" require>
  </div>
  </div>
<div class="row">
  <div class="mb-3 mt-3 col">
    <label for="correoelectronico" class="form-label">Correo Electronico:</label>
    <input type="email" class="form-control" id="correoelectronico" placeholder="Ingrese el Correo Electronico" name="correoelectronico" require>
  </div>
  
  <div class="mb-3 mt-3 col">
    <label for="direccion" class="form-label">Direccion:</label>
    <textarea name="direccion" id="direccion" class="form-control" rows="3" placeholder="Ingrese la Direccion"></textarea>
  </div>
  </div>

  <button type="submit" class="btn btn-primary">Guardar</button>
  <button type="reset" class="btn btn-warning">Limpiar</button>
</form>
<?php
include './ejemplo08_pie.php';
?>