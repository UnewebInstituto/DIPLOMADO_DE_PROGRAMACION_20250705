<?php
    include './ejemplo08_encabezado.php';
?>
<div class="text-center">
    <h2>Iniciar Sesion</h2>
    <a href="./">Ir al inicio</a>
</div>
<form  action="./ejemplo08_login01.php" method="post">
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
    <div class="text-center">
    <A href="./ejemplo08_registrarse.php">Usuario no registrado</A><br>
    </div>
  <button type="submit" class="btn btn-primary mt-3">Enviar</button>
  </div>  
  <div class="col"></div>
</form>
<?php
    include './ejemplo08_pie.php';
?>