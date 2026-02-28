 <?php
  if (!empty($_GET['mensaje'])) {
    if ($_GET['severidad']==1) {
      echo "<div class='alert alert-success mt-3' role='alert'>
              <strong>Atencion:</strong> $_GET[mensaje]
            </div>";
    } else if ($_GET['severidad']==3)  {
      echo "<div class='alert alert-warning mt-3' role='alert'>
              <strong>Alerta:</strong> $_GET[mensaje]
            </div>";       
    } else {
      echo "<div class='alert alert-danger mt-3' role='alert'>
              <strong>Atencion:</strong> Error: $_GET[mensaje]
            </div>";
    }
  }
 ?>
 
 </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>