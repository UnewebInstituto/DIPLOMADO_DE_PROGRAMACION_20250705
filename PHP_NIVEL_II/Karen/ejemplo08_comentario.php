<?php
    include './ejemplo08_encabezado.php';
?>
<div class="text-center">
    <h2>Registrar comentario</h2>
</div>
<form action="./ejemplo08_comentario01.php" method="POST">
  <div class="mb-3">
        <label for="comentario" class="form-label">Comentario</label>
        <textarea name="comentario" id="comentario" class="form-control" rows="5" style="resize:none" required></textarea>
  </div>
  <button type="submit" class="btn btn-primary mt-3">Enviar</button>
  <input type="hidden" name="id_tema" value="<?php echo $_GET['id_tema'] ?>">
</form>
<?php
    include './ejemplo08_pie.php';
?>