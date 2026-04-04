        <?php
            if (!empty($_GET['mensaje'])){
                if ($_GET['severidad']==1){
                    echo "<div class='alert alert-success mt-3' role='alert'><strong>Atención: </strong>$_GET[mensaje] </div>";
                }else if ($_GET['severidad']==3) {
                    echo "<div class='alert alert-warning mt-3' role='alert'><strong>Alerta: </strong>$_GET[mensaje] </div>";
                }else{
                    echo "<div class='alert alert-danger mt-3' role='alert'><strong>Error: </strong>$_GET[mensaje] </div>";
                }
            }
        ?>
    </div>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">    
</body>
</html>