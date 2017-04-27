<?php
header('Content-Type: application/json');
include "koneksi.php";
ini_set('display_errors', '0');


$del = $_GET['ID'];

$sql = "DELETE FROM saldo_gh WHERE ID = '$del'";

//echo json_encode($sql);
//exit;

$hasil = mysqli_query($mysqli, $sql);

if($hasil){

   $akhire = 'berhasil';

}
else{

    $akhire = 'gagal';

}

   echo json_encode($akhire);
//   header('Location: index.html');




?>