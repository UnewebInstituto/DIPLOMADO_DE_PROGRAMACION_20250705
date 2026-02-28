<?php
  include './ejemplo08_encabezado.php'
?>

<!-- Formulario para captura de los datos personales 
https://www.w3schools.com/bootstrap5/tryit.asp?filename=trybs_form&stacked=h  
-->

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
      <input type="text" class="form-control" id="numero" placeholder="Ingrese Cedula de Identidad" name="numero" require>
      </div>
  </div>
  <div class="mb-3 mt-3 col">
    <label for="nombre" class="form-label">Nombre:</label>
    <input type="text" class="form-control" id="nombre" placeholder="Ingrese su Nombre" name="nombre" require>
  </div>
</div>


<div class="row">
    <div class="mb-3 mt-3 col">
      <label for="apellido" class="form-label">Apellido:</label>
      <input type="text" class="form-control" id="apellido" placeholder="Ingrese su Apellido" name="apellido" require>
    </div>
    <div class="mb-3 mt-3 col">
      <label for="fechanac" class="form-label">Fecha de Nacimiento:</label>
      <input type="date" class="form-control" id="fechanac" placeholder="Ingrese Fecha de Nacimiento" name="fechanac" require>
    </div>
  </div>


  <div class="mb-3">
    <label for="sexo" class="form-label">Sexo:</label>
  <div class="form-check">
    <input class="form-check-input" type="radio" name="sexo" id="sexo" value="F" checked>
    <label class="form-check-label" for="flexRadioDefault1">
      Femenino
    </label>
  </div>
  <div class="form-check">
    <input class="form-check-input" type="radio" name="sexo" id="sexo" value="M">
    <label class="form-check-label" for="flexRadioDefault2">
      Masculino
    </label>
  </div>


  <div class="row">
    <div class="mb-3 mt-3 col">
      <label for="telefono" class="form-label">Telefono:</label>
      <input type="text" class="form-control" id="telefono" placeholder="Ingrese su Numero Telefono" name="telefono" require>
    </div>
      <div class="mb-3 mt-3 col">
      <label for="correo" class="form-label">Correo Electronico:</label>
      <input type="email" class="form-control" id="correo" placeholder="Ingrese el correo electronico" name="correo" require>
    </div>
  </div>


  <div class="mb-3">
    <label for="direccion" class="form-label">Direccion:</label>
    <textarea name="direccion" id="direccion" class="form-control" rows="3" placeholder="Ingrese la direccion"></textarea>
  </div>
  
  <button type="submit" class="btn btn-primary">Guardar</button>
  <button type="RESET" class="btn btn-warning">Limpiar</button>
</form>

<?php
  include './ejemplo08_pie.php'
?>