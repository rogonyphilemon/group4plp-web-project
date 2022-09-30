<?php
<div class="download">
  <?php include('db_connect.php') ;
require('fpdf/fpdf.php');
// Database Connection 
$conn = new mysqli('localhost', 'root', '', 'company');
//Check for connection error
if($conn->connect_error){
  die("Error in DB connection: ".$conn->connect_errno." : ".$conn->connect_error);    
}
// Select data from MySQL database
$select = "SELECT * FROM `users' ORDER BY id";
$result = $conn->query($select);
$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial','B',14);
while($row = $result->fetch_object()){
  $id = $row->id;
  $name = $row->username;
  $address = $row->password;
  $pdf->Cell(20,10,$id,1);
  $pdf->Cell(40,10,$username,1);
  $pdf->Cell(80,10,$password,1);
  $pdf->Ln();
}
$pdf->Output();
?>
<?php 
include 'connection.php';

$sql=mysqli_query($connection,"Select name,content from voter where id = (select max(id) from voter)"); 
$result=mysqli_fetch_assoc($sql);
$resu=$result['name'];
?>

<a href="http://YOUR UPLOAD FILE PATH/.<?php echo $resu?>.pdf">Download File </a>
