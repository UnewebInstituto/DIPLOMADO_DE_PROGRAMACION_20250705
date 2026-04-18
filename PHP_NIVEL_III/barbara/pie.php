        <?php
            if (!empty($_GET['mensaje'])){
                if ($_GET['severidad']==1){
                    echo "<div><strong>Atención: </strong>$_GET[mensaje] </div>";
                }else if ($_GET['severidad']==3) {
                    echo "<div><strong>Alerta: </strong>$_GET[mensaje] </div>";
                }else{
                    echo "<div><strong>Error: </strong>$_GET[mensaje] </div>";
                }
            }
        ?>
    </div>
</body>
</html>