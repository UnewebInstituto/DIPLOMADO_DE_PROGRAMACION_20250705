
<?php
    if (!empty($_GET['mensaje'])) {
        echo "<div class='alert alert-dark mt-3' role='alert'>";
            echo $_GET['mensaje'];
        echo "</div>";
    }
?>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>