<?php
    include './ejemplo08_encabezado.php';
?>
<div class="text-center">
    <h2>Registar tema</h2>
</div>
<form action="./ejemplo08_tema01.php" method="POST">
  <div class="mb-3">
        <label for="Tema" class="form-label">Título del tema</label>
        <textarea name="tema" id="tema" class="form-control" rows="5" style="resize:none" required></textarea>
    </div>
    <button type="submit" class="btn btn-primary mt-3">Enviar</button>
</form>
<?php
    include './ejemplo08_pie.php';
?>