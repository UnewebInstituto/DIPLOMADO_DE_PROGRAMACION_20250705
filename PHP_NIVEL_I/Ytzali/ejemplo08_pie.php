    <?php
        if (!empty($_GET['mensaje'])){
            if ($_GET['severidad']==1){
             echo "<div class='alert alert-success mt-3' role='alert'>
  <strong>Atención: </strong>$_GET[mensaje] </div>";

             }else if ($_GET['severidad']==3){ echo "<div class='alert alert-warning mt-3' role='alert'><strong>Alerta: </strong>$_GET[mensaje] </div>";

            }else{
                 echo "<div class='alert alert-danger mt-3' role='alert'><strong>Error: </strong>$_GET[mensaje] </div>";
            }
        }
    ?>




</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>