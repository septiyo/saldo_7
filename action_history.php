<?php
header('Content-Type: application/json');
include "koneksi.php";
ini_set('display_errors', '0');

/* $res = $_GET['res'];

echo json_encode($res); */


$sql = "SELECT * FROM saldo_history";

$hasil = mysqli_query($mysqli, $sql);
//$results = array();


//foreach($hasil as $row){

while($row=mysqli_fetch_assoc($hasil)){
	
			$results[] = array(
					'ID'=> $row[ID],
					'TGL_ORDER' => $row[TGL_ORDER],
					'ITEM' => $row[ITEM],
					'HARGA' => $row[HARGA],
					'ONGKIR' => $row[ONGKIR],
					'TOTAL' => $row[TOTAL],

			);
			
	
}

//var_dump($results);

 $json = json_encode($results);
 //$json = json_encode("teasasdads");

echo $json; 



?>