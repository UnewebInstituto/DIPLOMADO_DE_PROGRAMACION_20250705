<?php
    require('../fpdf186/fpdf.php');
class PDF extends FPDF
{
    // Cabecera de página
    function Header()
    {
        // Logo
        $this->Image('../logo/logo_uneweb.png',10,8,33);
        // Arial bold 15
        $this->SetFont('Arial','B',15);
        // Movernos a la derecha
        $this->Cell(80);
        // Título
        $texto = mb_convert_encoding('Título', 'ISO-8859-1', 'UTF-8');
        $this->Cell(30,10,$texto,1,0,'C');
        // Salto de línea
        $this->Ln(20);
    }

    // Pie de página
    function Footer()
    {
        // Posición: a 1,5 cm del final
        $this->SetY(-15);
        // Arial italic 8
        $this->SetFont('Arial','I',8);
        // Número de página
        $texto = mb_convert_encoding('Página', 'ISO-8859-1', 'UTF-8');
        $this->Cell(0,10,$texto.$this->PageNo().'/{nb}',0,0,'C');
    }
}

    // Creación del objeto de la clase heredada
    $pdf = new PDF();
    $pdf->AliasNbPages();
    $pdf->AddPage();
    $pdf->SetFont('Times','',12);
    for($i=1;$i<=40;$i++){
        $texto = mb_convert_encoding('Imprimiendo línea número ', 'ISO-8859-1', 'UTF-8');

        $pdf->Cell(0,10,$texto.$i,0,1);
    }
    $pdf->Output();
    
?>