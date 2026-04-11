<?php
    include './ejemplo08_encabezado.php';
?>

<div class="text-center">
    <h2>Registrar Tema</h2>
</div>

<form action="./ejemplo08_temas01.php" method="POST">
  <div class="mb-3">
        <label for="tema" class="form-label">Titulo del Tema</label>
        <textarea name="tema" id="tema" class='form-control' rows='5' styles="rezise:none"></textarea>
  </div>
    <button type="submit" class="btn btn-primary mt-3">Enviar</button>
    </div>
</form>

<?php
    include './ejemplo08_pie.php';
?>