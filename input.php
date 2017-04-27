<?php

include "koneksi.php";

//include "koneksi.php";

//print_r($_POST);

   $tgl    = $_POST['tgl'];
   $item   = $_POST['item'];
   $harga  = $_POST['harga'];
   $ongkir = $_POST['ongkir'];
   $total  = $_POST['total'];
   
   
   
   
   
   
   
     $sql = "INSERT INTO saldo_gh SET TGL_ORDER = '$tgl',
	                                  ITEM = '$item',
                                      HARGA = '$harga',
								  ONGKIR = '$ongkir',
								  TOTAL = '$total'";
								  
								     
     $sql2 = "INSERT INTO saldo_history SET TGL_ORDER = '$tgl',
	                                  ITEM = '$item',
                                      HARGA = '$harga',
								  ONGKIR = '$ongkir',
								  TOTAL = '$total'";
				  
				  
				  
		
				  



    $hasil = mysqli_query($mysqli, $sql);
    
	$hasil2 = mysqli_query($mysqli, $sql2);
    
    

     	
		
	 if($hasil) {
		echo "sukses";

	} else {
		echo "gagal";

	}	
		
		
   
   
   echo json_encode($hasil);




?>