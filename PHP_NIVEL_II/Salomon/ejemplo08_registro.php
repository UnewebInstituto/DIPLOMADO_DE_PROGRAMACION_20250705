<?php
    include './ejemplo08_encabezado.php';
?>
<div class="text-center">
    <h2>Registro de Usuario</h2>
    <a href="./">Ir al incio</a>
</div>

<form action="./ejemplo08_registro01.php" method="POST">
  <div class="mb-3 row">
    <div class="col">
    </div>
    <div class="col">
        <label for="nombre" class="form-label">Nombre</label>
        <input type="text" class="form-control" id="nombre" name="nombre" required>
    </div>
    <div class="col">
    </div>
  </div>
  <div class="mb-3 row">
    <div class="col">
    </div>
    <div class="col">
        <label for="apellido" class="form-label">Apellido</label>
        <input type="text" class="form-control" id="apellido" name="apellido" required>
    </div>
    <div class="col">
    </div>
  </div>
    <div class="mb-3 row">
    <div class="col">
    </div>
    <div class="col">
        <label for="avatar" class="form-label">Avatar</label>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="foto" id="foto" value="./img/perfil1.png" checked>
                <img width="40px" height="40px" src="./img/perfil1.png">
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="foto" id="foto" value="./img/perfil2.png">
                <img width="40px" height="40px" src="./img/perfil2.png">
            </div>
    </div>
    <div class="col">
    </div>
  </div>
  <div class="mb-3 row">
    <div class="col">
    </div>
    <div class="col">
        <label for="exampleInputEmail1" class="form-label">Correo electrónico</label>
        <input type="email" class="form-control" id="correo_electronico" aria-describedby="emailHelp" name="correo_electronico" required>
        <div id="emailHelp" class="form-text">No vamos a compartir tu correo electrónico.</div>
    </div>
    <div class="col">
    </div>
  </div>
  <div class="mb-3 row">
    <div class="col"></div>
    <div class="col">
        <label for="exampleInputPassword1" class="form-label">Clave secreta</label>
        <input type="password" class="form-control" id="exampleInputPassword1" name="clave" required>
    <button type="submit" class="btn btn-primary mt-3">Enviar</button>
    </div>
    <div class="col"></div>
   </div>
</form>
<?php
    include './ejemplo08_pie.php';
?>