
<?php
    include './ejemplo08_encabezado.php';
?>
<!-- Formulario para captura de
 los datos personales
 https://www.w3schools.com/bootstrap5/bootstrap_forms.php
 
 -->
<form action="./ejemplo08_ing01.php" method="POST">

<div class="row">
        <div class="mb-3 mt-3 col">
            <label for="cedula" class="form-label">Cédula de identidad:</label>
            <div class="input-group">
                <select name="tipo" id="tipo" class="form-control">
                    <option value="V">V</option>
                    <option value="E">E</option>
                </select>
                <span class="input-group-text">-</span>
                <input type="text" class="form-control" id="numero" placeholder="Ingrese cédula de identidad" name="numero" require>
            </div>
        </div>
        <div class="mb-3 mt-3 col">
            <label for="nombre" class="form-label">Nombre:</label>
            <input type="text" class="form-control" id="nombre" placeholder="Ingrese el nombre" name="nombre" require>
        </div>
    </div>

     <div class="row">
        <div class="mb-3 col">
            <label for="apellido" class="form-label">Apellido:</label>
            <input type="text" class="form-control" id="apellido" placeholder="Ingrese el apellido" name="apellido" require>
        </div>
        <div class="mb-3 col">
            <label for="fechanac" class="form-label">Fecha de nacimiento:</label>
            <input type="date" class="form-control" id="fechanac"  name="fechanac" require>
        </div>
    </div>

<div class="row">
        <div class="mb-3 col">
            <label for="sexo" class="form-label">Sexo:</label>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="sexo" id="sexo" value="F" checked>
                <label class="form-check-label" for="flexRadioDefault1">Femenino</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="sexo" id="sexo" value="M">
                <label class="form-check-label" for="flexRadioDefault2">Masculino</label>
            </div>
        </div>
        <div class="mb-3 col">
            <label for="telefono" class="form-label">Teléfono:</label>
            <input type="text" class="form-control" id="telefono" placeholder="Ingrese el teléfono" name="telefono" require>
        </div>
    </div>


 <div class="row">
        <div class="mb-3 col">
            <label for="correoelectronico" class="form-label">Correo electrónico:</label>
            <input type="email" class="form-control" id="correoelectronico" placeholder="Ingrese el correo electrónico" name="correoelectronico" require>
        </div>
        <div class="mb-3 col">
            <label for="direccion" class="form-label">Dirección</label> 
            <textarea name="direccion" id="direccion" class="form-control" rows="3" placeholder="Ingrese la dirección"></textarea>
        </div>
    </div>

  <button type="submit" class="btn btn-primary">Guardar</button>
  <button type="reset" class="btn btn-warning">Limpiar</button>

</form>


<?php
    include './ejemplo08_pie.php';
?>

