<?php
    require('../fpdf186/fpdf.php');

    $pdf = new FPDF();
    $pdf->AddPage();
    $pdf->SetFont('Arial','B',16);
    $texto = mb_convert_encoding('¡Hola, Mundo!', 'ISO-8859-1', 'UTF-8');
    $pdf->Cell(40,10,$texto);
    $pdf->Output();
?>
