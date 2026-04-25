        <?php
            if (!empty($_GET['mensaje'])){
                if ($_GET['severidad']==1){
                    echo "<div class='p-4 mb-4 text-sm text-green-800 rounded-lg bg-green-50 border border-green-200'><strong>Atención: </strong>$_GET[mensaje] </div>";
                }else if ($_GET['severidad']==3) {
                    echo "<div class='p-4 mb-4 text-sm text-yellow-800 rounded-lg bg-yellow-50 border border-yellow-200'><strong>Alerta: </strong>$_GET[mensaje] </div>";
                }else{
                    echo "<div><strong>Error: </strong>$_GET[mensaje] </div>";
                }
            }
        ?>
    </div>
</body>
</html>