<?php include './ejemplo08_encabezado.php'; ?>
<div class="text-center">
    <h2>Iniciar Sesion</h2>
    <a href="./">Ir al Inicio</a>
  </div>
<form action="./ejemplo08_login01.php" method="POST">
  <div class="mb-3 row">
    <div class="col"></div>
    <div class="col">
        <label for="exampleInputEmail1" class="form-label">Correo Electronico</label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="correo_electronico" required>
        <div id="emailHelp" class="form-text">No vamos a compartir tu correo Electronnico.</div>
    </div>
    <div class="col"></div>
  </div>
  <div class="mb-3 row">
    <div class="col"></div>
    <div class="col">
        <label for="exampleInputPassword1" class="form-label">Clave Secreta</label>
        <input type="password" class="form-control" id="exampleInputPassword1" name="clave" required>

        <button type="submit" class="btn btn-primary mb-3">Enviar</button>
        <div class="text-center">
          <a href="./ejemplo08_registrarse.php">Usuario no Registrado</a>
        </div>
    </div>
    <div class="col"></div>
  </div>
  
</form>

<?php include './ejemplo08_pie.php'; ?>