<?php
    include './ejemplo08_encabezado.php';
?>
<!-- Formulario para captura de datos personales -->
<form action="/ejemplo08_ing01.php" method='POST'>
  
<div class='row'>
  <div class="mb-3 mt-3 col">
    <label for="cedula" class="form-label">Cedula de identidad:</label>
    <div class='input-group'>
      <select name="tipo" id="tipo" class= "form-control">
        <option value="V">V</option>
        <option value="E">E</option>
      </select>
      <span class='input-group-text'>-</span>
      <input type="text" class="form-control" id="numero" placeholder="Ingrese cedula de identidad" name="numero" require>
    </div>


  </div>
  <div class="mb-3 mt-3 col">
    <label for="nomnbre" class="form-label">Nombre:</label>
    <input type="text" class="form-control" id="nombre" placeholder="Ingrese el nombre" name="nombre" require>
  </div>
</div> 
  <div class="mb-3">
    <label for="apellido" class="form-label">Apellido:</label>
    <input type="text" class="form-control" id="apellido" placeholder="Ingrese el apellido" name="apellido" require>
  </div>
  <div class="mb-3">
    <label for="fechanac" class="form-label">Fecha de nacimiento:</label>
    <input type="date" class="form-control" id="fechanac" placeholder="Ingrese fecha de nacimiento" name="fechanac" require>
  </div>
  <div mb-3>
    <div class="form-check">
    <input class="form-check-input" type="radio" name='sexo' value="sexo" id="sexo">
    <label class="form-check-label" for="flexCheckDefault">
    Masculino
    </label>
  </div>
    <div class="form-check">
      <input class="form-check-input" type="radio" name='sexo' value="sexo" id="sexo" checked>
      <label class="form-check-label" for="flexCheckChecked">
        Femenino
      </label>
    </div>
  </div>
  <div class="mb-3">
    <label for="telefono" class="form-label">Telefono:</label>
    <input type="text" class="form-control" id="telefono" placeholder="Ingrese el telefono" name="telefono" require>
  </div>
  
  <div class="mb-3">
    <label for="correlectronico" class="form-label">Correo Electronico:</label>
    <input type="email" class="form-control" id="correoelectronico" placeholder="Ingrese el correo electronico" name="correoelectronico" require>
  </div>

  <div class='mb-3'>
    <label for="direccion" class='form-label'>Direccion</label>
    <textarea name="direccion" id="direccion" class='form-control' rows='3' placeholder='Ingrese la direccion'></textarea>
  </div>
  
  <button type="submit" class="btn btn-primary">Guardar</button>
  <button type="reset" class="btn btn-warning">Limpiar</button>
</form>


<?php
    include './ejemplo08_pie.php';
?>