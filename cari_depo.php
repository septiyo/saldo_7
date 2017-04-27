<?php
header('Content-Type: application/json');
include "koneksi.php";
ini_set('display_errors', '0');

/*  $sisa = $_GET['SISA_SALDO'];
 

   $sql_update = "UPDATE deposit SET DEPO = '$sisa' WHERE ID = '1'";
   $hasil_update = mysqli_query($mysqli, $sql_update); */
   
   



$sql = "SELECT DEPO FROM deposit;";
$hasil = mysqli_query($mysqli, $sql);
//$results = array();


/* foreach($hasil as $row){ */

while($row=mysqli_fetch_assoc($hasil)){
	
			$results= array(
					'DEPO'=> $row[DEPO],
					/* 'TOT_TOTAL' => $row[TOTAL], */
			

			);
			
	
}

//var_dump($results);

 $json = json_encode($results);
 //$json = json_encode("teasasdads");

echo $json; 



?>


