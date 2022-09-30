<?php
require("fpdf/fpdf.php");
include_once "connectdb.php";
$pdf = new FPDF ('P','mm',array(80,145));
$pdf->AddPage();
$pdf->SetFont('Arial','B',16);
$pdf->Cell(60,8,'AmmadMaf POS',1,1,'C');
$pdf->SetFont('Arial','B',8);
$pdf->Cell(60,5,'Block 5 Saadi Town, Karachi',0,1,'C');
$pdf->Cell(60,5,'Contact : +92 3222563301',0,1,'C');
$pdf->Cell(60,5,'E-mail Address : ammadfarooqengr@gmail.com',0,1,'C');
$pdf->Cell(60,5,'fb.com/ammadmaf',0,1,'C');
. bla . .
. bla . .
. bla . .
$pdf->Output();
?>